local oxInventory = exports.ox_inventory
local qbxCore = exports.qbx_core

local STASH_PREFIX = 'nokey_storage_box_'
local boxes = {}
local authorizations = {}
local pinAttempts = {}

local function notify(source, description, notifyType)
    TriggerClientEvent('ox_lib:notify', source, {
        title = 'NoKey Storage',
        description = description,
        type = notifyType or 'inform'
    })
end

local function isAdmin(source)
    if source == 0 then return true end

    -- `group.admin` is an ACE principal, not an ACE object. Checking it directly
    -- with IsPlayerAceAllowed will normally return false. Qbox grants the `admin`
    -- ACE object to players in the admin principal, while ox_lib commands grant a
    -- command.* ACE to that same principal. Check both so UI permissions match
    -- the staff commands reliably across Qbox/ox_lib setups.
    local src = tostring(source)
    local permission = Config.AdminPermission or 'admin'

    if permission ~= '' and IsPlayerAceAllowed(src, permission) then
        return true
    end

    if IsPlayerAceAllowed(src, 'command.vehiclecomp') then
        return true
    end

    -- Backwards-compatible Qbox fallback.
    local ok, allowed = pcall(function()
        return qbxCore:HasPermission(source, permission)
    end)

    return ok and allowed == true
end

local function normalizeDigits(value)
    if value == nil then return nil end
    local str = tostring(value):gsub('%s+', '')
    if str == '' or not str:match('^%d+$') then return nil end
    return str
end

local function trim(value)
    if value == nil then return '' end
    return tostring(value):match('^%s*(.-)%s*$')
end

local function clamp(value, minValue, maxValue, fallback)
    value = tonumber(value)
    if not value then return fallback end
    value = math.floor(value)
    if value < minValue then return minValue end
    if value > maxValue then return maxValue end
    return value
end

local function stashId(boxNumber)
    return STASH_PREFIX .. boxNumber
end

local function stashCoords()
    local coords = {}
    for i = 1, #Config.Locations do
        coords[#coords + 1] = Config.Locations[i].interactCoords or Config.Locations[i].coords
    end
    return coords
end

local function registerBox(row)
    local number = tostring(row.box_number)
    boxes[number] = row

    oxInventory:RegisterStash(
        stashId(number),
        row.label,
        tonumber(row.slots),
        tonumber(row.max_weight),
        false,
        nil,
        stashCoords()
    )
end

local function loadBoxes()
    local rows = MySQL.query.await([[
        SELECT box_number, label, slots, max_weight
        FROM nokey_storage_boxes
        WHERE active = 1
    ]]) or {}

    boxes = {}
    for i = 1, #rows do
        registerBox(rows[i])
    end

    print(('[nokey_storage] Registered %d storage box(es).'):format(#rows))
end

local function isNearStorageLocation(source)
    if source == 0 then return true end

    local ped = GetPlayerPed(source)
    if ped == 0 then return false end

    local playerCoords = GetEntityCoords(ped)
    for i = 1, #Config.Locations do
        local locationCoords = Config.Locations[i].interactCoords or Config.Locations[i].coords
        if #(playerCoords - locationCoords) <= Config.ServerAccessDistance then
            return true
        end
    end

    return false
end

local function checkRateLimit(source)
    local now = os.time()
    local state = pinAttempts[source]

    if not state then
        state = { windowStart = now, count = 0, blockedUntil = 0 }
        pinAttempts[source] = state
    end

    if state.blockedUntil > now then
        return false, state.blockedUntil - now
    end

    if now - state.windowStart >= Config.Pin.attemptWindowSeconds then
        state.windowStart = now
        state.count = 0
    end

    if state.count >= Config.Pin.maxAttempts then
        state.blockedUntil = now + Config.Pin.lockoutSeconds
        state.count = 0
        return false, Config.Pin.lockoutSeconds
    end

    return true
end

local function recordFailedPin(source)
    local now = os.time()
    local state = pinAttempts[source] or { windowStart = now, count = 0, blockedUntil = 0 }

    if now - state.windowStart >= Config.Pin.attemptWindowSeconds then
        state.windowStart = now
        state.count = 0
    end

    state.count = state.count + 1
    pinAttempts[source] = state
end

local function clearPinAttempts(source)
    pinAttempts[source] = nil
end

local function grantAuthorization(source, id)
    authorizations[source] = authorizations[source] or {}
    authorizations[source][id] = os.time() + Config.AuthorizationSeconds
end

local function hasAuthorization(source, id)
    local playerAuth = authorizations[source]
    if not playerAuth then return false end

    local expires = playerAuth[id]
    if not expires then return false end

    if expires < os.time() then
        playerAuth[id] = nil
        return false
    end

    return true
end

local function clearAuthorization(source, id)
    if authorizations[source] then
        authorizations[source][id] = nil
        if not next(authorizations[source]) then authorizations[source] = nil end
    end
end

lib.callback.register('nokey_storage:server:getUiData', function(source)
    if not isNearStorageLocation(source) then return nil end
    return { admin = isAdmin(source) }
end)

lib.callback.register('nokey_storage:server:authorizeLocker', function(source, data)
    if not isNearStorageLocation(source) then
        return { success = false, message = 'You must be at a NoKey storage terminal.' }
    end

    local allowed, remaining = checkRateLimit(source)
    if not allowed then
        return {
            success = false,
            message = ('Too many incorrect attempts. Try again in %d second(s).'):format(remaining)
        }
    end

    local boxNumber = normalizeDigits(data and data.boxNumber)
    local pin = normalizeDigits(data and data.pin)

    if not boxNumber or #boxNumber < Config.Box.minNumberLength or #boxNumber > Config.Box.maxNumberLength then
        return { success = false, message = 'Enter a valid storage box number.' }
    end

    if not pin or #pin < Config.Pin.minLength or #pin > Config.Pin.maxLength then
        return { success = false, message = ('PIN must be %d-%d digits.'):format(Config.Pin.minLength, Config.Pin.maxLength) }
    end

    local row = MySQL.single.await([[
        SELECT box_number, label, slots, max_weight
        FROM nokey_storage_boxes
        WHERE box_number = ?
          AND pin_hash = SHA2(?, 256)
          AND active = 1
        LIMIT 1
    ]], { boxNumber, pin })

    if not row then
        recordFailedPin(source)
        return { success = false, message = 'Storage box number or PIN is incorrect.' }
    end

    clearPinAttempts(source)

    if not boxes[boxNumber] then
        registerBox(row)
    end

    local id = stashId(boxNumber)
    grantAuthorization(source, id)

    return {
        success = true,
        stashId = id,
        label = row.label,
        message = 'Locker authorised.'
    }
end)

lib.callback.register('nokey_storage:server:createLocker', function(source, data)
    if not isAdmin(source) then
        return { success = false, message = 'You do not have permission to create lockers.' }
    end

    if not isNearStorageLocation(source) then
        return { success = false, message = 'You must be at a NoKey storage terminal.' }
    end

    local boxNumber = normalizeDigits(data and data.boxNumber)
    local pin = normalizeDigits(data and data.pin)

    if not boxNumber or #boxNumber < Config.Box.minNumberLength or #boxNumber > Config.Box.maxNumberLength then
        return {
            success = false,
            message = ('Box number must contain %d-%d digits.'):format(Config.Box.minNumberLength, Config.Box.maxNumberLength)
        }
    end

    if not pin or #pin < Config.Pin.minLength or #pin > Config.Pin.maxLength then
        return {
            success = false,
            message = ('PIN must contain %d-%d digits.'):format(Config.Pin.minLength, Config.Pin.maxLength)
        }
    end

    local label = trim(data and data.label)
    if label == '' then label = ('NoKey Storage Box #%s'):format(boxNumber) end
    if #label > 64 then label = label:sub(1, 64) end

    local slots = clamp(data and data.slots, Config.Box.minSlots, Config.Box.maxSlots, Config.Box.defaultSlots)
    local weightKg = clamp(data and data.weightKg, Config.Box.minWeightKg, Config.Box.maxWeightKg, Config.Box.defaultWeightKg)
    local maxWeight = weightKg * 1000

    local player = source > 0 and qbxCore:GetPlayer(source) or nil
    local createdBy = player and player.PlayerData.citizenid or 'console'

    local success, insertId = pcall(MySQL.insert.await, [[
        INSERT INTO nokey_storage_boxes
            (box_number, pin_hash, label, slots, max_weight, created_by, active)
        VALUES
            (?, SHA2(?, 256), ?, ?, ?, ?, 1)
    ]], { boxNumber, pin, label, slots, maxWeight, createdBy })

    if not success then
        return { success = false, message = 'That storage box number already exists.' }
    end

    if not insertId then
        return { success = false, message = 'The locker could not be created.' }
    end

    local row = {
        box_number = boxNumber,
        label = label,
        slots = slots,
        max_weight = maxWeight,
    }

    registerBox(row)

    print(('[nokey_storage] %s created storage box %s (%s).'):format(createdBy, boxNumber, label))

    return {
        success = true,
        boxNumber = boxNumber,
        label = label,
        slots = slots,
        weightKg = weightKg,
        message = ('Storage box #%s created successfully.'):format(boxNumber)
    }
end)

-- ox_inventory access control: knowing/guessing the internal stash ID is not enough.
-- A successful PIN challenge is required immediately before the stash can be opened.
oxInventory:registerHook('openInventory', function(payload)
    if payload.inventoryType ~= 'stash' then return end

    local id = tostring(payload.inventoryId or '')
    if not id:find('^' .. STASH_PREFIX) then return end

    if not isNearStorageLocation(payload.source) then return false end
    if not hasAuthorization(payload.source, id) then return false end

    return true
end, {
    inventoryFilter = { '^' .. STASH_PREFIX }
})

AddEventHandler('ox_inventory:closedInventory', function(playerId, inventoryId)
    if type(inventoryId) ~= 'string' or not inventoryId:find('^' .. STASH_PREFIX) then return end
    clearAuthorization(playerId, inventoryId)
end)

AddEventHandler('playerDropped', function()
    authorizations[source] = nil
    pinAttempts[source] = nil
end)

local function vehicleTypeLabel(vehicleType)
    if vehicleType == 'air' then return 'Air' end
    if vehicleType == 'sea' then return 'Sea' end
    return 'Car'
end

local function inferTypeFromCategory(category)
    if type(category) ~= 'string' then return nil end
    category = category:lower()

    if category == 'boats' or category:find('boat', 1, true) or category:find('sea', 1, true) then
        return 'sea'
    end

    if category == 'planes'
        or category == 'helicopters'
        or category:find('plane', 1, true)
        or category:find('air', 1, true)
        or category:find('heli', 1, true)
    then
        return 'air'
    end

    return 'car'
end

local function getDealershipVehicle(model)
    if not Config.VehicleComp.useDealershipVehicleCategories then return nil end

    local ok, row = pcall(MySQL.single.await, [[
        SELECT spawn_code, brand, model, category
        FROM dealership_vehicles
        WHERE LOWER(spawn_code) = LOWER(?)
        LIMIT 1
    ]], { model })

    if not ok then return nil end
    return row
end

local function resolveVehicle(model)
    model = model:lower()

    local override = Config.VehicleComp.typeOverrides[model]
    if override == 'car' or override == 'air' or override == 'sea' then
        return {
            model = model,
            vehicleType = override,
            displayName = model,
            category = 'override'
        }
    end

    local dealershipVehicle = getDealershipVehicle(model)
    if dealershipVehicle then
        local displayName = trim(('%s %s'):format(dealershipVehicle.brand or '', dealershipVehicle.model or ''))
        if displayName == '' then displayName = model end

        return {
            model = model,
            vehicleType = inferTypeFromCategory(dealershipVehicle.category),
            displayName = displayName,
            category = dealershipVehicle.category
        }
    end

    local ok, vehicles = pcall(function()
        return qbxCore:GetVehiclesByName()
    end)

    local sharedVehicle = ok and vehicles and vehicles[model] or nil
    if sharedVehicle then
        return {
            model = model,
            vehicleType = inferTypeFromCategory(sharedVehicle.category),
            displayName = sharedVehicle.name or model,
            category = sharedVehicle.category
        }
    end

    return nil
end

local function findConfiguredJgGarageType(garageId)
    if GetResourceState('jg-advancedgarages') ~= 'started' then
        return nil, 'jg-advancedgarages is not started.'
    end

    local configText = LoadResourceFile('jg-advancedgarages', 'config/config.lua')
    if not configText then
        return nil, 'Could not read jg-advancedgarages/config/config.lua.'
    end

    local anchors = {
        '["' .. tostring(garageId) .. '"]',
        "['" .. tostring(garageId) .. "']"
    }

    local startPos
    for i = 1, #anchors do
        startPos = configText:find(anchors[i], 1, true)
        if startPos then break end
    end

    if not startPos then
        return nil, ('Garage "%s" was not found in your JG Advanced Garages config.'):format(garageId)
    end

    -- `type` is near the top of every JG garage definition. Restricting the search
    -- to a small slice prevents us accidentally matching a later garage.
    local slice = configText:sub(startPos, math.min(#configText, startPos + 2500))
    local registeredType = slice:match("type%s*=%s*[\"']([%a]+)[\"']")

    if registeredType ~= 'car' and registeredType ~= 'air' and registeredType ~= 'sea' then
        return nil, ('Could not determine the type for JG garage "%s".'):format(garageId)
    end

    return registeredType
end

local function validateJgGarage(garageId, vehicleType)
    if not Config.VehicleComp.validateGarage then return true end

    local registeredType, errorMessage = findConfiguredJgGarageType(garageId)
    if not registeredType then return false, errorMessage end

    if registeredType ~= vehicleType then
        return false, ('Garage "%s" is configured as %s, expected %s.'):format(garageId, registeredType, vehicleType)
    end

    return true
end

local function randomToken()
    local template = 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
    return (template:gsub('x', function()
        return ('%x'):format(math.random(0, 15))
    end))
end

local function randomPlate()
    local prefix = tostring(Config.VehicleComp.platePrefix or 'NK'):upper():gsub('[^A-Z0-9]', '')
    prefix = prefix:sub(1, 4)
    if prefix == '' then prefix = 'NK' end

    local chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    local needed = 8 - #prefix

    for _ = 1, 50 do
        local plate = prefix
        for _i = 1, needed do
            local pos = math.random(1, #chars)
            plate = plate .. chars:sub(pos, pos)
        end

        local exists = MySQL.scalar.await('SELECT 1 FROM player_vehicles WHERE plate = ? LIMIT 1', { plate })
        if not exists then return plate end
    end

    return nil
end

local function createOwnedVehicle(player, model, garageId)
    local playerData = player and player.PlayerData
    if not playerData or not playerData.citizenid or not playerData.license then
        return nil, 'Player data is missing citizen ID or license.'
    end

    local plate = randomPlate()
    if not plate then
        return nil, 'Could not generate a unique vehicle plate.'
    end

    -- Matches the Qbox insert used by your uploaded jg-dealerships and explicitly
    -- sets the JG Advanced Garages fields so the vehicle appears as stored immediately.
    local props = json.encode({
        model = joaat(model),
        plate = plate
    })

    local ok, vehicleId = pcall(MySQL.insert.await, [[
        INSERT INTO player_vehicles
            (license, citizenid, vehicle, hash, mods, plate,
             financed, finance_data, in_garage, garage_id,
             job_vehicle, job_vehicle_rank, gang_vehicle, gang_vehicle_rank,
             impound, impound_retrievable, impound_data, nickname)
        VALUES
            (?, ?, ?, ?, ?, ?,
             0, ?, 1, ?,
             0, 0, 0, 0,
             0, 0, '', '')
    ]], {
        playerData.license,
        playerData.citizenid,
        model,
        joaat(model),
        props,
        plate,
        json.encode({}),
        garageId
    })

    if not ok or not vehicleId then
        return nil, 'Could not create the owned vehicle in player_vehicles.'
    end

    return vehicleId, plate
end

local function createVoucher(source, target, model)
    model = trim(model):lower()

    if model == '' or #model > 64 or not model:match('^[%w_%-]+$') then
        return false, 'Enter a valid vehicle spawn model.'
    end

    local vehicleData = resolveVehicle(model)
    if not vehicleData or not vehicleData.vehicleType then
        return false, ('Vehicle "%s" was not found in jg-dealerships/Qbox vehicle data. Add it to Config.VehicleComp.typeOverrides if it is an addon.'):format(model)
    end

    local vehicleType = vehicleData.vehicleType
    local garageId = Config.VehicleComp.garages[vehicleType]
    if not garageId or garageId == '' then
        return false, ('No %s compensation garage is configured.'):format(vehicleType)
    end

    local garageOk, garageError = validateJgGarage(garageId, vehicleType)
    if not garageOk then return false, garageError end

    local staff = source > 0 and qbxCore:GetPlayer(source) or nil
    local staffId = staff and staff.PlayerData.citizenid or 'console'

    local token
    repeat
        token = randomToken()
    until not MySQL.scalar.await('SELECT 1 FROM nokey_vehicle_vouchers WHERE token = ? LIMIT 1', { token })

    local inserted = MySQL.insert.await([[
        INSERT INTO nokey_vehicle_vouchers
            (token, model, vehicle_type, garage, status, issued_by)
        VALUES
            (?, ?, ?, ?, 'issued', ?)
    ]], { token, model, vehicleType, garageId, staffId })

    if not inserted then
        return false, 'Could not create the compensation voucher.'
    end

    local metadata = {
        token = token,
        vehicleModel = model,
        vehicleName = vehicleData.displayName,
        vehicleType = vehicleType,
        vehicleTypeLabel = vehicleTypeLabel(vehicleType),
        garageLabel = garageId,
        label = ('Vehicle Compensation: %s'):format(vehicleData.displayName or model),
        description = ('Redeem this NoKey compensation voucher to add %s to your %s garage.'):format(vehicleData.displayName or model, vehicleTypeLabel(vehicleType)),
    }

    if not oxInventory:CanCarryItem(target, Config.VehicleComp.item, 1, metadata) then
        MySQL.update.await('UPDATE nokey_vehicle_vouchers SET status = ? WHERE token = ?', { 'revoked', token })
        return false, 'The target player does not have enough inventory space.'
    end

    local added, response = oxInventory:AddItem(target, Config.VehicleComp.item, 1, metadata)
    if not added then
        MySQL.update.await('UPDATE nokey_vehicle_vouchers SET status = ? WHERE token = ?', { 'revoked', token })
        return false, ('Could not give the voucher: %s'):format(response or 'unknown error')
    end

    return true, ('Created %s vehicle voucher for player %d.'):format(vehicleData.displayName or model, target)
end

lib.addCommand('vehiclecomp', {
    help = 'Create a NoKey vehicle compensation voucher.',
    restricted = Config.AdminPrincipal or 'group.admin',
    params = {
        { name = 'model', type = 'string', help = 'Vehicle spawn model' },
        { name = 'target', type = 'playerId', help = 'Player ID to receive the voucher (defaults to you)', optional = true },
    }
}, function(source, args)
    local target = args.target or source

    if target == 0 or not qbxCore:GetPlayer(target) then
        if source > 0 then notify(source, 'Target player is not online.', 'error') end
        return
    end

    local ok, message = createVoucher(source, target, args.model)

    if source > 0 then
        notify(source, message, ok and 'success' or 'error')
    else
        print(('[nokey_storage] %s'):format(message))
    end

    if ok and target ~= source then
        notify(target, 'You received a vehicle compensation voucher.', 'success')
    end
end)

local voucherRedeemLocks = {}

local function getVoucherSlot(source, slot)
    slot = tonumber(slot)
    if not slot then return nil end

    local slotData = oxInventory:GetSlot(source, slot)
    if not slotData or slotData.name ~= Config.VehicleComp.item then return nil end
    return slotData
end

local function fetchVoucher(token)
    return MySQL.single.await([[
        SELECT token, model, vehicle_type, garage, status
        FROM nokey_vehicle_vouchers
        WHERE token = ?
        LIMIT 1
    ]], { token })
end

local function validateVoucherSlot(source, slot)
    local slotData = getVoucherSlot(source, slot)
    if not slotData then
        return nil, nil, 'That compensation voucher is no longer in this inventory slot.'
    end

    local metadata = slotData.metadata or {}
    local token = metadata.token

    if type(token) ~= 'string' or #token ~= 32 then
        return nil, nil, 'This vehicle voucher is invalid.'
    end

    local voucher = fetchVoucher(token)
    if not voucher then
        return nil, nil, 'This vehicle voucher does not exist in the compensation database.'
    end

    if voucher.status ~= 'issued' then
        return nil, nil, 'This vehicle voucher has already been redeemed or is no longer valid.'
    end

    return slotData, voucher
end

local function redeemVehicleVoucher(source, slot)
    if voucherRedeemLocks[source] then
        return { success = false, message = 'A vehicle voucher is already being processed.' }
    end

    voucherRedeemLocks[source] = true

    local function finish(result)
        voucherRedeemLocks[source] = nil
        return result
    end

    local slotData, voucher, validationError = validateVoucherSlot(source, slot)
    if not slotData then
        return finish({ success = false, message = validationError })
    end

    local token = slotData.metadata.token
    local player = qbxCore:GetPlayer(source)
    if not player then
        return finish({ success = false, message = 'Your player data is not available.' })
    end

    local garageOk, garageError = validateJgGarage(voucher.garage, voucher.vehicle_type)
    if not garageOk then
        return finish({ success = false, message = garageError })
    end

    -- Claim the voucher atomically before creating the owned vehicle. This prevents
    -- double-clicks or two clients redeeming the same voucher at the same time.
    local claimed = MySQL.update.await([[
        UPDATE nokey_vehicle_vouchers
        SET status = 'redeeming', redeemed_by = ?
        WHERE token = ? AND status = 'issued'
    ]], { player.PlayerData.citizenid, token })

    if not claimed or claimed < 1 then
        return finish({ success = false, message = 'This vehicle voucher is already being redeemed.' })
    end

    local vehicleId, plateOrError = createOwnedVehicle(player, voucher.model, voucher.garage)
    if not vehicleId then
        MySQL.update.await("UPDATE nokey_vehicle_vouchers SET status = 'issued', redeemed_by = NULL WHERE token = ?", { token })
        return finish({ success = false, message = plateOrError or 'The vehicle could not be added to your garage.' })
    end

    MySQL.update.await([[
        UPDATE nokey_vehicle_vouchers
        SET status = 'redeemed', vehicle_id = ?, redeemed_at = CURRENT_TIMESTAMP
        WHERE token = ?
    ]], { vehicleId, token })

    -- The ox item uses consume = 0 so the server removes the exact voucher slot only
    -- after the vehicle has been written successfully.
    local removed, removeError = oxInventory:RemoveItem(
        source,
        Config.VehicleComp.item,
        1,
        nil,
        tonumber(slot),
        false,
        false
    )

    if not removed then
        print(('[nokey_storage] WARNING: voucher %s redeemed for player %d but item removal failed (%s). The token is permanently non-redeemable.'):format(
            token,
            source,
            tostring(removeError)
        ))
    end

    return finish({
        success = true,
        vehicleId = vehicleId,
        plate = plateOrError,
        garage = voucher.garage,
        vehicleType = voucher.vehicle_type,
        model = voucher.model,
        message = ('%s [%s] has been added to your %s garage (%s).'):format(
            voucher.model,
            plateOrError,
            vehicleTypeLabel(voucher.vehicle_type),
            voucher.garage
        )
    })
end

-- Primary redemption path used by the ox_inventory client export. Keeping the
-- actual award/removal entirely server-side prevents metadata spoofing.
lib.callback.register('nokey_storage:server:redeemVehicleComp', function(source, slot)
    return redeemVehicleVoucher(source, slot)
end)

-- Backwards-compatible server item export for installs still using the old item
-- definition. New installs should use client.export = 'nokey_storage.useVehicleComp'.
exports('vehicleComp', function(event, item, inventory, slot)
    local source = tonumber(inventory and inventory.id)
    if not source then return false end

    -- Compatibility path for the v1.3 item definition. Redeem during usingItem
    -- and return false so ox_inventory cancels its own consume/use sequence; this
    -- resource has already handled the exact-slot removal on success.
    if event == 'usingItem' then
        local result = redeemVehicleVoucher(source, slot)
        notify(source, result.message, result.success and 'success' or 'error')
        return false
    end

    return false
end)

MySQL.ready(function()
    loadBoxes()
end)

AddEventHandler('onServerResourceStart', function(resource)
    if resource ~= 'ox_inventory' then return end
    Wait(500)
    loadBoxes()
end)
