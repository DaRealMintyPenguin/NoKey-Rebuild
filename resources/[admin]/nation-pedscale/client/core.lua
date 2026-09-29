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
function TriggerCallback(name, cb, ...)
    Config.ServerCallbacks[name] = cb
    TriggerServerEvent('nation-pedscale:server:triggerCallback', name, ...)
end

RegisterNetEvent('nation-pedscale:client:triggerCallback', function(name, ...)
    if Config.ServerCallbacks[name] then
        Config.ServerCallbacks[name](...)
        Config.ServerCallbacks[name] = nil
    end
end)

function Notify(text, length, type)
    if CoreName == "qb-core" or CoreName == "qbx_core" then
        Core.Functions.Notify(text, type, length)
    elseif CoreName == "es_extended" then
        Core.ShowNotification(text)
    else
        -- Standalone: basic GTA feed notification so feedback isn't silently lost
        BeginTextCommandThefeedPost("STRING")
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandThefeedPostTicker(false, false)
    end
end

function GetPlayerData()
    if CoreName == "qb-core" or CoreName == "qbx_core" then
        local player = Core.Functions.GetPlayerData()
        return player
    elseif CoreName == "es_extended" then
        local player = Core.GetPlayerData()
        return player
    end
end

Citizen.CreateThread(function()
    -- Wait briefly for a framework; standalone servers have none — fall through after timeout
    -- so the saved scale and the existing players' scales still load on join.
    local deadline = GetGameTimer() + 10000
    while not CoreReady and GetGameTimer() < deadline do Citizen.Wait(100) end
    if CoreName == "es_extended" then
        RegisterNetEvent('esx:playerLoaded', function(player, xPlayer, isNew)
            TriggerCallback('nation-pedscale:getPlayerScale:server', function(scaleVal, zOffsetVal)
                if zOffsetVal ~= nil then
                    myZOffset = tonumber(zOffsetVal) or 0.0
                end
                if tonumber(scaleVal) ~= 1.0 and tonumber(scaleVal) ~= 1 then
                    print("Scale loaded. ESX")
                    setScale(tonumber(scaleVal))
                end
            end)
            Citizen.Wait(500)
            TriggerCallback('nation-pedscale:getScales:server', function(data)
                playerScales = data
            end)
        end)
    elseif CoreReady then
        while not next(GetPlayerData()) do Citizen.Wait(0) end
        TriggerCallback('nation-pedscale:getPlayerScale:server', function(scaleVal, zOffsetVal)
            if zOffsetVal ~= nil then
                myZOffset = tonumber(zOffsetVal) or 0.0
            end
            if tonumber(scaleVal) ~= 1.0 and tonumber(scaleVal) ~= 1 then
                print("Scale loaded. QB/QBOX")
                setScale(tonumber(scaleVal))
            end
        end)
        Citizen.Wait(500)
        TriggerCallback('nation-pedscale:getScales:server', function(data)
            playerScales = data
        end)
    else
        -- Standalone: no framework load event — wait until the session/ped is up, then load.
        while not NetworkIsSessionStarted() or not DoesEntityExist(PlayerPedId()) do
            Citizen.Wait(250)
        end
        Citizen.Wait(1000)
        TriggerCallback('nation-pedscale:getPlayerScale:server', function(scaleVal, zOffsetVal)
            if zOffsetVal ~= nil then
                myZOffset = tonumber(zOffsetVal) or 0.0
            end
            if tonumber(scaleVal) ~= 1.0 and tonumber(scaleVal) ~= 1 then
                print("Scale loaded. Standalone")
                setScale(tonumber(scaleVal))
            end
        end)
        Citizen.Wait(500)
        TriggerCallback('nation-pedscale:getScales:server', function(data)
            playerScales = data
        end)
    end
end)