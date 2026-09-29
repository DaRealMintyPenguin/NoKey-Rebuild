Core = nil
CoreName = nil
CoreReady = false
Citizen.CreateThread(function()
    for k, v in pairs(Cores) do
        if GetResourceState(v.ResourceName) == "starting" or GetResourceState(v.ResourceName) == "started" then
            CoreName = v.ResourceName
            Core = v.GetFramework()
            CoreReady = true
        end
    end
end)

Config.ServerCallbacks = {}
function CreateCallback(name, cb)
    Config.ServerCallbacks[name] = cb
end

function TriggerCallback(name, source, cb, ...)
    if not Config.ServerCallbacks[name] then return end
    Config.ServerCallbacks[name](source, cb, ...)
end

RegisterNetEvent('nation-pedscale:server:triggerCallback', function(name, ...)
    local src = source
    TriggerCallback(name, src, function(...)
        TriggerClientEvent('nation-pedscale:client:triggerCallback', src, name, ...)
    end, ...)
end)

function HasPermission(src)
    if CoreName == "qb-core" or CoreName == "qbx_core" then
        for _, perm in pairs(Config.Permissions.Groups) do
            if Core.Functions.HasPermission(src, perm) then
                return true
            end
        end
        return false
    elseif CoreName == "es_extended" then
        local playerGroup = Core.GetPlayerFromId(src).getGroup()
        for _, perm in pairs(Config.Permissions.Groups) do
            if perm == playerGroup then
                return true
            end
        end
        return false
    else
        return true
    end
end

function HasPermission2(src)
    for k, v in ipairs(GetPlayerIdentifiers(src)) do
        for a, b in pairs(Config.Permissions.Customs) do
            if string.match(v, b) then
                return true
            end
        end
    end
end

function HasPermissionCid(src, cid)
    local player = Core.Functions.GetPlayer(src)
    if player.PlayerData.citizenid == cid then
        return true
    end
    return false
end

function HasPermissionAce(src)
    for k, v in pairs(Config.Permissions.Aces) do
        if IsPlayerAceAllowed(src, v) then
            return true
        end
    end
    return false
end

function GetPlayer(source)
    if CoreName == "qb-core" or CoreName == "qbx_core" then
        local player = Core.Functions.GetPlayer(source)
        return player
    elseif CoreName == "es_extended" then
        local player = Core.GetPlayerFromId(source)
        return player
    end
end

function GetPlayerCid(source)
    if CoreName == "qb-core" or CoreName == "qbx_core" then
        local player = Core.Functions.GetPlayer(source)
        if not player then return end
        return player.PlayerData.citizenid
    elseif CoreName == "es_extended" then
        local player = Core.GetPlayerFromId(source)
        if not player then return end
        return player.getIdentifier()
    end
end

if Config.GiveScaleMenu.Enable then
    Citizen.CreateThread(function()
        -- Wait briefly for a framework; standalone falls through to a plain restricted command.
        local deadline = GetGameTimer() + 10000
        while not CoreReady and GetGameTimer() < deadline do Citizen.Wait(500) end
        if CoreName == "qb-core" or CoreName == "qbx_core" then
            Core.Commands.Add(Config.GiveScaleMenu.Command, Config.GiveScaleMenu.Description, {{name = "Player ID", help = "Write player id here"}}, false, function(source, args)
                local player = GetPlayer(tonumber(args[1]))
                if player then
                    TriggerClientEvent('nation-pedscale:openMenu:client', tonumber(args[1]), GetPlayerName(source) .. " | ID: " .. source)
                end
            end, Config.GiveScaleMenu.Group)
        elseif CoreName == "es_extended" then
            Core.RegisterCommand(Config.GiveScaleMenu.Command, Config.GiveScaleMenu.Group, function(xPlayer, args, _)
                local targetId = tonumber(args.playeridnumber)
                if not targetId then return end
                local player = GetPlayer(targetId)
                if player then
                    TriggerClientEvent('nation-pedscale:openMenu:client', targetId, GetPlayerName(xPlayer.source) .. " | ID: " .. xPlayer.source)
                end
            end, true, {
                help = Config.GiveScaleMenu.Description,
                arguments = {
                    {name = "playeridnumber", help = "Player ID", type = "number"}
                }
            })
        else
            -- Standalone (no framework): restricted native command — requires the ace
            -- "command.<name>" (grant via server.cfg: add_ace group.admin command.givescalemenu allow)
            RegisterCommand(Config.GiveScaleMenu.Command, function(source, args)
                local targetId = tonumber(args[1])
                if not targetId or not GetPlayerName(targetId) then return end
                local opener = source == 0 and "Console" or (GetPlayerName(source) .. " | ID: " .. source)
                TriggerClientEvent('nation-pedscale:openMenu:client', targetId, opener)
            end, true)
        end
    end)
end

function SendWebhook(title, senderName, scale, menuOpener)
    local embed = {{
        author = {
            name = "nation-pedscale logs"
        },
        title = title,
        fields = { -- array of fields
            {
                name = "Player Name",
                value = senderName,
                inline = false
            },
            {
                name = "Scale",
                value = scale,
                inline = false
            },
            {
                name = "menu Opener",
                value = menuOpener,
                inline = false
            },
            {
                name = "Date",
                value = os.date(),
                inline = false
            }
        },
        footer = {
            text = ConfigSV.Settings.Footer .. os.date(),
            icon_url = ConfigSV.Settings.Logo
        },
        color = 0x000000 -- hex color code
    }}
    PerformHttpRequest(ConfigSV.Settings.Webhook, function(err, text, headers) end, 'POST', json.encode({username = ConfigSV.Settings.Title, embeds = embed, avatar_url = ConfigSV.Settings.Logo}), { ['Content-Type'] = 'application/json' })
end

Citizen.CreateThread(function()
    -- No oxmysql → JSON file storage handles persistence (server/main.lua); skip DB migration.
    -- Wait briefly in case oxmysql is still starting.
    local deadline = GetGameTimer() + 10000
    while GetResourceState('oxmysql') == 'starting' and GetGameTimer() < deadline do
        Citizen.Wait(250)
    end
    if MySQL == nil or GetResourceState('oxmysql') ~= 'started' then
        print("^3[nation-pedscale] oxmysql not found — using JSON file storage (scales.json)^0")
        return
    end
    local table = MySQL.query.await("SHOW TABLES LIKE 'nation_ped_scale'", {}, function(rowsChanged) end)
    if not next(table) then
        MySQL.query.await([[CREATE TABLE IF NOT EXISTS `nation_ped_scale` (
        `id` int(11) NOT NULL AUTO_INCREMENT,
        `identifier` varchar(50) DEFAULT NULL,
        `scale` float DEFAULT NULL,
        `z_offset` float NOT NULL DEFAULT 0,
        PRIMARY KEY (`id`),
        UNIQUE KEY `uniq_identifier` (`identifier`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;]], {}, function(rowsChanged) end)
    else
        -- Auto-add z_offset column on existing installations
        local cols = MySQL.query.await("SHOW COLUMNS FROM `nation_ped_scale` LIKE 'z_offset'", {})
        if not cols or not next(cols) then
            MySQL.query.await("ALTER TABLE `nation_ped_scale` ADD COLUMN `z_offset` float NOT NULL DEFAULT 0", {})
            print("^2[nation-pedscale] Added z_offset column to nation_ped_scale table^0")
        end
        -- Auto-add UNIQUE constraint on identifier (fixes race-condition duplicate rows)
        local uniq = MySQL.query.await("SHOW INDEX FROM `nation_ped_scale` WHERE Key_name = 'uniq_identifier'", {})
        if not uniq or not next(uniq) then
            -- Dedup first — keep only the highest-id row per identifier
            MySQL.query.await([[DELETE t1 FROM `nation_ped_scale` t1
                INNER JOIN `nation_ped_scale` t2
                WHERE t1.identifier = t2.identifier AND t1.id < t2.id]], {})
            MySQL.query.await("ALTER TABLE `nation_ped_scale` ADD UNIQUE KEY `uniq_identifier` (`identifier`)", {})
            print("^2[nation-pedscale] Deduplicated and added UNIQUE constraint on identifier^0")
        end
    end
end)

local DiscordAPI = 'https://discord.com/api/v10/guilds/%s/members/%s'
local error_codes_defined = {
    [200] = 'OK - Request successful',
    [401] = '^1[Discord Error] Invalid bot token or missing permissions',
    [403] = '^1[Discord Error] Bot has no permission for this guild/member',
    [404] = '^1[Discord Error] Member or guild not found',
    [429] = '^1[Discord Error] Rate limited by Discord',
    [502] = '^1[Discord Error] Discord API might be down'
}

local function HttpRequestAwait(url, method, data, headers)
    local p = promise.new()
    PerformHttpRequest(url, function(status, body, headers)
        p:resolve({ status = status, body = body, headers = headers })
    end, method, data, headers)
    local result = Citizen.Await(p)
    return result.status, result.body, result.headers
end

-- Discord role cache: { [discordId] = { result = bool, expiry = time } }
local discordRoleCache = {}
local CACHE_TTL = 300 -- 5 minutes cache
local RATE_LIMIT_TTL = 30 -- 30 seconds backoff on rate limit

function CheckDiscordRole(discordId)
    if discordId == 'undefined' then
        if Config.Debug then print("^1[DISCORD]^0 Discord ID not found") end
        return false
    end
    if ConfigSV.BotToken == "xxx" or ConfigSV.ServerId == "xxx" then
        print("^1[DISCORD CONFIG ERROR]^0 Token or Guild ID missing in config")
        return false
    end

    -- Check cache first
    local cached = discordRoleCache[discordId]
    if cached and os.time() < cached.expiry then
        if Config.Debug then print("^2[DISCORD]^0 Using cached result for " .. discordId) end
        return cached.result
    end

    local status, body = HttpRequestAwait(DiscordAPI:format(ConfigSV.ServerId, discordId), 'GET', '',{['Content-Type'] = 'application/json', ['Authorization'] = ('Bot %s'):format(ConfigSV.BotToken)})

    -- Rate limited: cache as false with short TTL and back off
    if status == 429 then
        print(error_codes_defined[429])
        discordRoleCache[discordId] = { result = false, expiry = os.time() + RATE_LIMIT_TTL }
        return false
    end

    if status ~= 200 then
        print(error_codes_defined[status] or "^1Unknown Discord HTTP Error")
        return false
    end
    if not body or body == '' then
        if Config.Debug then print("^1[DISCORD]^0 Empty response body") end
        return false
    end
    local ok, data = pcall(json.decode, body)
    if not ok or not data then
        print("^1[DISCORD]^0 Failed to parse Discord response")
        return false
    end
    local memberRoles = data.roles or {}
    local hasRole = false
    for _, roleId in ipairs(memberRoles) do
        for _, allowedRole in ipairs(Config.Permissions.DiscordRoles) do
            if tostring(roleId) == tostring(allowedRole) then
                if Config.Debug then
                    print("^2[DISCORD]^0 Required role found:", roleId)
                end
                hasRole = true
                break
            end
        end
        if hasRole then break end
    end
    if not hasRole and Config.Debug then
        print("^3[DISCORD]^0 User does not have required role")
    end

    -- Cache the result
    discordRoleCache[discordId] = { result = hasRole, expiry = os.time() + CACHE_TTL }
    return hasRole
end