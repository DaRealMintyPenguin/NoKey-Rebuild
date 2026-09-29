-- 919ADMIN Classic Admin Panel Permissions
-- Here is where you can assign permissions to players based on their license
-- as well as add permission groups and set what they have access to.
Config.PermissionedUsers = {
    -- Get licenses from txAdmin by clicking on the user and then navigating to "IDs" tab.
    -- Make sure to take the one that is prefixed with "license:"
    -- "license2:", "fivem:", "live:" etc are not valid.
    -- ["LICENSE"] = "god",
     ["license:cc3073a566393d182c031731c4dea3f2b04470b8"] = "god", -- Owen
  --   ["license:9359d4c5668cf6fd2496062e66240b186a5b99a1"] = "god",  -- Nick
    ["license:a862f391d191412058787f126789fb7c23e87b52"] = "god", -- Brooke
    ["license:3da13082d9d43e5f0940fc1a0bfcaf329afdfd19"] = "admin", -- chris
    ["license:600e3ec59a0c1900c279a53e9eb3acd67c45e39e"] = "admin", 
    ["license:6fc10e3a4285af8c3f25c571d6baf540caa1dd03"] = "admin", --ron 
    ["license:b7bfcf8b6a0abfdec55a42984ed70e2d278d24a2"] = "admin", -- Johnny
    ["license:e22f911236b3556644805922cb8a94c2c8bcce01"] = "admin", -- Finn
    ["license:972f035636318dd1ed010a9a3c495d24a736970b"] = "admin",-- Ct
    ["license:263395d8fcf3492c9f192fe7a247a35be86f6f87"] = "admin", -- Reflex
     

     ["license:81cc55fcc74432dca95249e465a4582205be37f6"] = "admin",
     ["license:60f812049f5c793e50ae20d7f4cabdd034c4ca8c"] = "orgmanager",
}

-- Discord Roles
-- Here is where you can enable the discord roles feature and set the bot token, guild id, and role ids.
Config.DiscordRoles = {
    Enabled = false,

    -- This is your discord server ID, to get the server id, make sure you have Discord in developer mode, and right click the server, and click "Copy ID".
    GuildID = "1254550795391729775",

    -- SET THE BOT TOKEN IN config_server.lua

    -- Here you can set which discord roles map to which permission groups.
    -- Make sure the value (ie. "god") matches permission groups that exist in Config.Permissions below.
    -- To get the role ids, make sure you have Discord in developer mode, and right click the role, and click "Copy ID".
    Roles = {
        ["1254552468818493521"] = "god",
        ["1528153384455110737"] = "god",          
        ["1444422711441887282"] = "admin",         
        ["1444422815875989758"] = "admin", 
        ["1500200787899449394"] = "admin",              
        ["1444423269108154459"] = "mod",                 
    }
}

-- Role Priority System
-- When a player has multiple Discord roles, the system will use the role with the highest priority
-- This is also used to determine inheritance of permissions.
-- Higher numbers = higher priority (god > admin > mod)
Config.RolePriority = {
    ["god"] = 100,
    ["admin"] = 50,
    ["orgmanager"] = 45,
    ["mod"] = 10,

    -- Add custom roles here with their priority values
    -- ["custom_role"] = 75,
}

Config.RoleColors = { -- The colors for the different roles in the admin panel's player list. You can use hex codes or predefined css colors.
    ["god"] = "OrangeRed",
    ["admin"] = "Orange",
    ["mod"] = "CornflowerBlue",
    ["orgmanager"] = "Lime",
}

Config.Permissions = {
    ["god"] = {
        AllowedActions = {
            -- Exclusive High-Level Pages
            "resourcepage", -- Access the Resource control page
            "servermetrics", -- Access the server metrics page

            --------------------------------- Server Actions Group ---------------------------------
            "reviveall", -- Revive all players
            "messageall", -- Message all players
            "setweather", -- Change the server weather
            "settime", -- Change the server time

            --------------------------------- Developer Actions Group ---------------------------------
            "vec3", -- Get vector3 position
            "vec4", -- Get vector4 position
            "heading", -- Get your heading
            "loadipl", -- Load an IPL (map section)
            "unloadipl", -- Unload an IPL (map section)
            "setViewDistance", -- Set view distance
            "copyEntityInfo", -- Copy entity information
            "freeaimMode", -- Enable free aim mode
            "displayVehicles", -- Display vehicle dev mode
            "displayPeds", -- Display peds dev mode
            "displayObjects", -- Display objects dev mode

            --------------------------------- Mass Entity Actions Group ---------------------------------
            "massdv", -- Delete all spawned vehicles, even population ones
            "massdp", -- Delete all peds, even population ones

            --------------------------------- Management Actions Group ---------------------------------
            "clearreports", -- Clear reports
            "clearadminchat", -- Clear adminchat
            "clearlogs", -- Clear logslist

            --------------------------------- Highest Level Player Actions ---------------------------------
            "kill", -- Kill yourself, others
            "ban", -- Ban a player from the server
            "unban", -- Unban a player
            "screenshot",
        },
    },
    ["admin"] = {
        AllowedActions = {
            -- Page Permissions
            "characterspage", -- Access the All Characters page
            "serverlogs", -- Access the server logs page
            "jobpage", -- Access the jobs page
            "gangpage", -- Access the gangs page
            "banspage", -- Access the bans page
            "vehiclesinfo", -- Access the vehicle spawn code list page
            "leaderboardinfo", -- Check the leaderboards
            "mapinfo", -- Access the map page

            -- Advanced Report Management
            "deletereport", -- Delete a report
            "deletecharacter", -- Delete a character

            --------------------------------- Self Actions Group ---------------------------------
            "revives", -- Revive yourself
            "feeds", -- Feed yourself
            "uncuffSelf", -- Uncuff yourself
            "sclothing", -- Give yourself the skin menu
            "invisibility", -- Toggle invisibility
            "playerblips", -- Toggles player blips on the map
            "fastrun", -- Toggles fast run
            "godmode", -- Toggles godmode
            "forceradar", -- Force minimap on
            "superjump", -- Toggles super jump
            "noragdoll", -- Toggles ragdoll
            "infinitestam", -- Toggles infinite stamina
            "clearblood", -- Clears your ped of blood and visual damage
            "wetclothes", -- Makes your clothes wet
            "dryclothes", -- Dries off your clothes

            --------------------------------- Vehicle Actions Group ---------------------------------
            "repairvehicle", -- Repair a vehicle
            "fillgastank", -- Fills the gas tank of the vehicle you're in
            "washvehicle", -- Washes the vehicle you're in
            "maxperformanceupgrades", -- Max performance upgrades (vehicle)
            "randomvisualparts", -- Random visual parts (vehicle)
            "setcolor", -- Set color (vehicle)
            "setlivery", -- Set livery (vehicle)
            "setmedriver", -- Teleport into nearest vehicle as driver
            "setmepassenger", -- Teleport into nearest vehicle as passenger
            "lockvehicle", -- Lock a vehicle
            "unlockvehicle", -- Unlock a vehicle

            --------------------------------- Entity Actions Group ---------------------------------
            "spawncar", -- Spawn a vehicle
            "deleteclosestvehicle", -- Delete closest vehicle
            "deleteclosestped", -- Delete closest ped
            "deleteclosestobject", -- Delete closest object

            --------------------------------- Player Actions Group ---------------------------------
            "revive", -- Revive a player
            "foodandwater", -- Feed a player
            "relievestress", -- Relieve stress of a player
            "repairplayervehicle", -- Repair a player's vehicle
            "setpedmodel", -- Set a player's ped model
            "clothing", -- Give a player the skin menu
            "savecar", -- Add a player's current vehicle to their garage
            "savedata", -- Save player data
            "sendback", -- Send a player back to their location (requires teleport permission)
            "sendto", -- Send a player to a location (requires teleport permission)
            "givetakemoney", -- Give or take money from a player
            "givecash", -- Give cash to a player (requires givetakemoney permission)
            "removecash", -- Remove cash from a player (requires givetakemoney permission)
            "givebank", -- Give bank money to a player (requires givetakemoney permission)
            "removebank", -- Remove bank money from a player (requires givetakemoney permission)
            "setjob", -- Set job of a player
            "firejob", -- Fire a player from their job
            "setgang", -- Set gang of a player
            "firegang", -- Fire a player from their gang
            "openinventory", -- Open a player's inventory
            "clearinventory", -- Clear inventory
            "cuff", -- Cuff/uncuff a player
            "freeze", -- Freeze a player
            "kick", -- Kick a player from the server
            "checkwarns", -- Check the warnings of a player
            "warn", -- Warn a player
            "bring", -- Bring a player to you (requires teleport permission)
            "giveitem", -- Give a player an item, or several thousand  
            "itemsinfo", -- Access the item spawn code list page  
            "playernames", -- Toggle player names                                
        },
    },
        ["orgmanager"] = {
        AllowedActions = {
            -- Page Permissions
            "characterspage", -- Access the All Characters page
            "serverlogs", -- Access the server logs page
            "jobpage", -- Access the jobs page
            "gangpage", -- Access the gangs page
            "banspage", -- Access the bans page
            "vehiclesinfo", -- Access the vehicle spawn code list page

            -- Advanced Report Management
            "deletereport", -- Delete a report

            --------------------------------- Self Actions Group ---------------------------------
            "revives", -- Revive yourself
            "feeds", -- Feed yourself
            "sclothing", -- Give yourself the skin menu
            "invisibility", -- Toggle invisibility
            "playerblips", -- Toggles player blips on the map
            "godmode", -- Toggles godmode
            "forceradar", -- Force minimap on
            "superjump", -- Toggles super jump
            "infinitestam", -- Toggles infinite stamina
            "clearblood", -- Clears your ped of blood and visual damage
            "wetclothes", -- Makes your clothes wet
            "dryclothes", -- Dries off your clothes

            --------------------------------- Vehicle Actions Group ---------------------------------
            "repairvehicle", -- Repair a vehicle
            "fillgastank", -- Fills the gas tank of the vehicle you're in
            "washvehicle", -- Washes the vehicle you're in
            "randomvisualparts", -- Random visual parts (vehicle)
            "setcolor", -- Set color (vehicle)
            "setlivery", -- Set livery (vehicle)
            "setmedriver", -- Teleport into nearest vehicle as driver
            "setmepassenger", -- Teleport into nearest vehicle as passenger
            "lockvehicle", -- Lock a vehicle
            "unlockvehicle", -- Unlock a vehicle

            --------------------------------- Entity Actions Group ---------------------------------
            "spawncar", -- Spawn a vehicle
            "deleteclosestvehicle", -- Delete closest vehicle
            "deleteclosestped", -- Delete closest ped
            "deleteclosestobject", -- Delete closest object

            --------------------------------- Player Actions Group ---------------------------------
            "revive", -- Revive a player
            "foodandwater", -- Feed a player
            "relievestress", -- Relieve stress of a player
            "repairplayervehicle", -- Repair a player's vehicle
            "setpedmodel", -- Set a player's ped model
            "clothing", -- Give a player the skin menu
            "savecar", -- Add a player's current vehicle to their garage
            "savedata", -- Save player data
            "sendback", -- Send a player back to their location (requires teleport permission)
            "sendto", -- Send a player to a location (requires teleport permission)
            "setgang", -- Set gang of a player
            "firegang", -- Fire a player from their gang
            "openinventory", -- Open a player's inventory
            "cuff", -- Cuff/uncuff a player
            "freeze", -- Freeze a player
            "kick", -- Kick a player from the server
            "checkwarns", -- Check the warnings of a player
            "warn", -- Warn a player
            "bring", -- Bring a player to you (requires teleport permission)
            "giveitem", -- Give a player an item, or several thousand  
            "itemsinfo", -- Access the item spawn code list page  
            "playernames", -- Toggle player names                       
        },
    },

    ["mod"] = {
        AllowedActions = {
            "adminmenu", -- Open the admin menu
            "adminchat", -- Access the admin chat

            -- Basic Report Management
            "viewreports", -- Access the reports list
            "claimreport", -- Claim a report

            -- Basic Self Actions
            "tpm", -- Teleport to marker
            "noclip", -- Noclip

            -- Basic Player Actions
            "spectate", -- Spectate a player
            "teleport", -- Teleport yourself, others, to location
            "warn", -- Warn a player 
            "kick", -- Kick a player from the server                       
        },
    }   
}

-- If you want to use ace permissions instead of the default, set this to true.
-- No support will be given if you use ace permissions. We will not help you set it up.
Config.UseAcePermissions = false