local uiOpen = false
local activePoint
local points = {}
local spawnedLockers = {}
local storageBlips = {}

-- Door offsets supplied with BzZz Shop Locker V2.
-- The main locker shell and each door are separate props.
local lockerDoors = {
    { model = 'bzzz_parcel_door_a1', x = -1.445, y = -0.326, z = 1.751 },
    { model = 'bzzz_parcel_door_a2', x = -1.445, y = -0.326, z = 1.447 },
    { model = 'bzzz_parcel_door_a3', x = -1.445, y = -0.326, z = 1.284 },
    { model = 'bzzz_parcel_door_a4', x = -1.445, y = -0.326, z = 1.122 },
    { model = 'bzzz_parcel_door_a5', x = -1.445, y = -0.326, z = 0.960 },
    { model = 'bzzz_parcel_door_a5', x = -1.445, y = -0.326, z = 0.797 },
    { model = 'bzzz_parcel_door_a5', x = -1.445, y = -0.326, z = 0.635 },
    { model = 'bzzz_parcel_door_a5', x = -1.445, y = -0.326, z = 0.473 },
    { model = 'bzzz_parcel_door_a9', x = -1.445, y = -0.326, z = 0.229 },

    { model = 'bzzz_parcel_door_b1', x = -0.901, y = -0.326, z = 1.751 },
    { model = 'bzzz_parcel_door_b2', x = -0.901, y = -0.326, z = 1.447 },
    { model = 'bzzz_parcel_door_b3', x = -0.901, y = -0.326, z = 1.284 },
    { model = 'bzzz_parcel_door_b4', x = -0.901, y = -0.326, z = 1.122 },
    { model = 'bzzz_parcel_door_b5', x = -0.901, y = -0.326, z = 0.960 },
    { model = 'bzzz_parcel_door_b5', x = -0.901, y = -0.326, z = 0.797 },
    { model = 'bzzz_parcel_door_b5', x = -0.901, y = -0.326, z = 0.635 },
    { model = 'bzzz_parcel_door_b5', x = -0.901, y = -0.326, z = 0.473 },
    { model = 'bzzz_parcel_door_a9', x = -0.901, y = -0.326, z = 0.229 },

    { model = 'bzzz_parcel_door_c1', x = -0.357, y = -0.326, z = 1.708 },
    { model = 'bzzz_parcel_door_c2', x = -0.357, y = -0.326, z = 0.411 },

    { model = 'bzzz_parcel_door_d1', x = 0.188, y = -0.326, z = 1.751 },
    { model = 'bzzz_parcel_door_d2', x = 0.188, y = -0.326, z = 1.447 },
    { model = 'bzzz_parcel_door_d2', x = 0.188, y = -0.326, z = 1.284 },
    { model = 'bzzz_parcel_door_d2', x = 0.188, y = -0.326, z = 1.122 },
    { model = 'bzzz_parcel_door_d2', x = 0.188, y = -0.326, z = 0.960 },
    { model = 'bzzz_parcel_door_d2', x = 0.188, y = -0.326, z = 0.797 },
    { model = 'bzzz_parcel_door_d2', x = 0.188, y = -0.326, z = 0.635 },
    { model = 'bzzz_parcel_door_d2', x = 0.188, y = -0.326, z = 0.473 },
    { model = 'bzzz_parcel_door_d3', x = 0.188, y = -0.326, z = 0.229 },

    { model = 'bzzz_parcel_door_e1', x = 0.371, y = -0.326, z = 1.751 },
    { model = 'bzzz_parcel_door_e2', x = 0.371, y = -0.326, z = 1.447 },
    { model = 'bzzz_parcel_door_e3', x = 0.371, y = -0.326, z = 1.284 },
    { model = 'bzzz_parcel_door_e4', x = 0.371, y = -0.326, z = 1.122 },
    { model = 'bzzz_parcel_door_a5', x = 0.371, y = -0.326, z = 0.960 },
    { model = 'bzzz_parcel_door_b5', x = 0.371, y = -0.326, z = 0.797 },
    { model = 'bzzz_parcel_door_e2', x = 0.371, y = -0.326, z = 0.635 },
    { model = 'bzzz_parcel_door_e8', x = 0.371, y = -0.326, z = 0.310 },

    { model = 'bzzz_parcel_door_f1', x = 0.915, y = -0.326, z = 1.751 },
    { model = 'bzzz_parcel_door_a5', x = 0.915, y = -0.326, z = 1.447 },
    { model = 'bzzz_parcel_door_f3', x = 0.915, y = -0.326, z = 1.284 },
    { model = 'bzzz_parcel_door_f4', x = 0.915, y = -0.326, z = 1.122 },
    { model = 'bzzz_parcel_door_e2', x = 0.915, y = -0.326, z = 0.960 },
    { model = 'bzzz_parcel_door_a5', x = 0.915, y = -0.326, z = 0.797 },
    { model = 'bzzz_parcel_door_f7', x = 0.915, y = -0.326, z = 0.635 },
    { model = 'bzzz_parcel_door_f8', x = 0.915, y = -0.326, z = 0.310 },
}

local function notify(description, notifyType)
    lib.notify({
        title = 'NoKey Storage',
        description = description,
        type = notifyType or 'inform'
    })
end

local vehicleCompBusy = false

-- Recommended ox_inventory client item export. ox_inventory performs its normal
-- use-item validation first; the voucher is then redeemed securely on the server.
exports('useVehicleComp', function(data, slotData)
    if vehicleCompBusy then
        return notify('A vehicle voucher is already being processed.', 'error')
    end

    local slot = slotData and slotData.slot or data and data.slot
    slot = tonumber(slot)

    if not slot then
        return notify('This vehicle voucher has an invalid inventory slot.', 'error')
    end

    vehicleCompBusy = true

    exports.ox_inventory:useItem(data, function(usedItem)
        if not usedItem then
            vehicleCompBusy = false
            return
        end

        local result = lib.callback.await('nokey_storage:server:redeemVehicleComp', false, slot)
        vehicleCompBusy = false

        if not result then
            return notify('The compensation server did not respond.', 'error')
        end

        notify(result.message or (result.success and 'Vehicle compensation redeemed.' or 'Vehicle compensation failed.'), result.success and 'success' or 'error')
    end)
end)

local function getInteractCoords(location)
    return location.interactCoords or location.coords
end

local function loadModel(model)
    local hash = joaat(model)

    if not IsModelInCdimage(hash) or not IsModelValid(hash) then
        print(('[nokey_storage] Missing integrated locker model: %s. Check the nokey_storage/stream files and restart the resource.'):format(model))
        return nil
    end

    RequestModel(hash)
    local timeoutAt = GetGameTimer() + 5000

    while not HasModelLoaded(hash) do
        if GetGameTimer() >= timeoutAt then
            print(('[nokey_storage] Timed out loading model: %s'):format(model))
            return nil
        end
        Wait(0)
    end

    return hash
end

local function deleteLockerProp(index)
    local data = spawnedLockers[index]
    if not data then return end

    if data.doors then
        for i = 1, #data.doors do
            local entity = data.doors[i]
            if entity and DoesEntityExist(entity) then
                DeleteEntity(entity)
            end
        end
    end

    if data.base and DoesEntityExist(data.base) then
        DeleteEntity(data.base)
    end

    spawnedLockers[index] = nil
end

local function spawnLockerProp(index, location)
    if not Config.Prop or Config.Prop.enabled == false or location.spawnProp == false then return end
    if spawnedLockers[index] then return end

    local model = location.propModel or Config.Prop.model or 'bzzz_parcel_locker_a'
    local modelHash = loadModel(model)
    if not modelHash then return end

    local coords = location.coords
    local base = CreateObjectNoOffset(modelHash, coords.x, coords.y, coords.z, false, false, false)
    if base == 0 then
        SetModelAsNoLongerNeeded(modelHash)
        return
    end

    SetEntityHeading(base, location.heading or 0.0)
    SetEntityCollision(base, true, true)

    if Config.Prop.groundSnap ~= false and location.groundSnap ~= false then
        PlaceObjectOnGroundProperly(base)
    end

    FreezeEntityPosition(base, true)
    SetEntityAsMissionEntity(base, true, true)
    SetEntityLodDist(base, 500)
    SetModelAsNoLongerNeeded(modelHash)

    local data = { base = base, doors = {} }
    spawnedLockers[index] = data

    if Config.Prop.includeDoors == false or location.includeDoors == false then return end

    local baseCoords = GetEntityCoords(base)

    for i = 1, #lockerDoors do
        local doorData = lockerDoors[i]
        local doorHash = loadModel(doorData.model)

        if doorHash then
            local door = CreateObjectNoOffset(doorHash, baseCoords.x, baseCoords.y, baseCoords.z, false, false, false)

            if door ~= 0 then
                SetEntityCollision(door, true, true)
                SetEntityAsMissionEntity(door, true, true)
                SetEntityLodDist(door, 500)

                AttachEntityToEntity(
                    door,
                    base,
                    0,
                    doorData.x,
                    doorData.y,
                    doorData.z,
                    0.0,
                    0.0,
                    0.0,
                    false,
                    false,
                    true,
                    false,
                    2,
                    true
                )

                data.doors[#data.doors + 1] = door
            end

            SetModelAsNoLongerNeeded(doorHash)
        end
    end
end

local function closeUi()
    if not uiOpen then return end
    uiOpen = false
    SetNuiFocus(false, false)
    SetNuiFocusKeepInput(false)
    SendNUIMessage({ action = 'close' })
end

local function openUi(locationLabel)
    if uiOpen then return end

    local data = lib.callback.await('nokey_storage:server:getUiData', false)
    if not data then
        return notify('The storage network is unavailable.', 'error')
    end

    uiOpen = true
    SetNuiFocus(true, true)
    SetNuiFocusKeepInput(false)
    SendNUIMessage({
        action = 'open',
        admin = data.admin == true,
        location = locationLabel or 'NoKey Storage'
    })
end

RegisterNUICallback('close', function(_, cb)
    closeUi()
    cb({ ok = true })
end)

RegisterNUICallback('openLocker', function(data, cb)
    local result = lib.callback.await('nokey_storage:server:authorizeLocker', false, {
        boxNumber = data and data.boxNumber,
        pin = data and data.pin,
    })

    cb(result or { success = false, message = 'No response from server.' })

    if not result or not result.success then return end

    closeUi()
    Wait(100)

    local opened = exports.ox_inventory:openInventory('stash', result.stashId)
    if opened == false then
        notify('The locker could not be opened. Please try again.', 'error')
    end
end)

RegisterNUICallback('createLocker', function(data, cb)
    local result = lib.callback.await('nokey_storage:server:createLocker', false, {
        boxNumber = data and data.boxNumber,
        pin = data and data.pin,
        label = data and data.label,
        slots = data and data.slots,
        weightKg = data and data.weightKg,
    })

    cb(result or { success = false, message = 'No response from server.' })
end)

CreateThread(function()
    exports.ox_inventory:displayMetadata({
        { 'vehicleName', 'Vehicle' },
        { 'vehicleModel', 'Spawn Code' },
        { 'vehicleTypeLabel', 'Type' },
        { 'garageLabel', 'Garage' },
    })

    local propDistance = (Config.Prop and Config.Prop.streamDistance) or Config.DrawDistance
    local pointDistance = math.max(Config.DrawDistance, propDistance)

    for i = 1, #Config.Locations do
        local location = Config.Locations[i]
        local interactCoords = getInteractCoords(location)

        if Config.Blip and Config.Blip.enabled then
            local settings = Config.Blip
            local blip = AddBlipForCoord(interactCoords.x, interactCoords.y, interactCoords.z)
            SetBlipSprite(blip, settings.sprite)
            SetBlipColour(blip, settings.colour)
            SetBlipScale(blip, settings.scale)
            SetBlipAsShortRange(blip, settings.shortRange)
            SetBlipDisplay(blip, settings.display)
            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName(settings.label or location.label)
            EndTextCommandSetBlipName(blip)
            storageBlips[#storageBlips + 1] = blip
        end

        points[i] = lib.points.new({
            coords = interactCoords,
            distance = pointDistance,
            location = location,
            locationIndex = i,
        })

        points[i].onEnter = function(self)
            activePoint = self
            spawnLockerProp(self.locationIndex, self.location)
        end

        points[i].onExit = function(self)
            if self.promptVisible then
                self.promptVisible = false
                lib.hideTextUI()
            end

            if activePoint == self then
                activePoint = nil
            end

            if uiOpen then
                closeUi()
            end

            deleteLockerProp(self.locationIndex)
        end

        points[i].nearby = function(self)
            if Config.DrawMarker and self.currentDistance <= Config.DrawDistance then
                local marker = Config.Marker
                DrawMarker(
                    marker.type,
                    self.coords.x, self.coords.y, self.coords.z - 0.90,
                    0.0, 0.0, 0.0,
                    0.0, 0.0, 0.0,
                    marker.scale.x, marker.scale.y, marker.scale.z,
                    marker.colour.r, marker.colour.g, marker.colour.b, marker.colour.a,
                    false, true, 2, false, nil, nil, false
                )
            end

            local canInteract = self.currentDistance <= Config.InteractDistance

            if canInteract and not self.promptVisible and not uiOpen then
                self.promptVisible = true
                lib.showTextUI(('[E] %s'):format(self.location.label), {
                    position = 'right-center',
                    icon = 'box-archive'
                })
            elseif (not canInteract or uiOpen) and self.promptVisible then
                self.promptVisible = false
                lib.hideTextUI()
            end

            if canInteract and not uiOpen and IsControlJustReleased(0, 38) then
                openUi(self.location.label)
            elseif uiOpen and self.currentDistance > (Config.InteractDistance + 1.0) then
                closeUi()
            end
        end
    end
end)

AddEventHandler('onResourceStop', function(resource)
    if resource ~= cache.resource then return end

    if uiOpen then closeUi() end
    lib.hideTextUI()

    for i = 1, #storageBlips do
        RemoveBlip(storageBlips[i])
    end

    for i = 1, #Config.Locations do
        deleteLockerProp(i)
    end
end)
