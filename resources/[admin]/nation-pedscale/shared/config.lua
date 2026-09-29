Config = {
    Debug = false, -- For Discord logs
    EnablePreview = false, -- Displays your character on the screen
    SetScaleCommand = 'setscale', -- Command to set scale
    ResetScaleCommand = 'resetscale', -- Command to reset scale
    ScaleMenuCommand = 'scalemenu', -- Command to open scale menu
    Permissions = {
        Enable = true, -- When false, the menu is accessible to all players.
        Aces = {"command"},
        Groups = {"admin", "staff", "god"}, -- QB/QBOX/ESX Command Permissions
        Customs = {"license:xxx", "citizenid", "discord:xxx"}, -- Custom permissions
        DiscordRoles = {"xxx"} -- Discord Role IDs
    },
    DefaultScale = 1.0, -- Replacement is not recommended.
    MinScale = 0.8, -- Replacement is not recommended.
    MaxScale = 1.1, -- Replacement is not recommended.
    ScenarioPeds = false, -- NPCs react based on your character size.
    GiveScaleMenu = {
        Enable = true, -- If true, you can open the menu by entering the player ID with the command.
        Command = "givescalemenu", -- Open menu command
        Description = "Opens scale menu to player", -- Open menu command description
        Group = "admin" -- Open menu command permission
    },
    HideWhen = {
        MaxDistance = 20.0, -- Scale is applied to players within this distance (metres). Main
                            -- performance dial: cost scales with how many players are inside it.
                            -- Beyond it they render at native size. Use 30.0 for the old radius.
        Invisible = true, -- If the character is not visible, scale is deactivated.
        CollisionDisabled = true, -- If the character's collision is disabled, scale is deactivated.
        Attached = false, -- If the character is attached to a entity or a player, scale is deactivated.
        Alpha = true, -- If the alpha value is not 255,
        AnyCamActive = true, -- If any cam is active
        Frozen = true, -- If character position is frozen scale is deactivated.
        Interior = false,
        Customs = function(ped, scale)
            -- Example
            -- if scale <= 0.5 then
            --     SetEntityInvincible(ped, true)
            -- else
            --     SetEntityInvincible(ped, false)
            -- end
        end
    },
    AutoDoor = false, -- Automatically opens doors when scaled characters approach and closes them when they walk away (false = disabled)
    GarageDoorModels = {
        GetHashKey("prop_com_gar_door_01"),
        GetHashKey("prop_com_gar_door_02"),
        GetHashKey("prop_sc1_21_g_door_01"),
        GetHashKey("prop_sm1_11_doorl"),
        GetHashKey("prop_sm1_11_doorr"),
        GetHashKey("prop_lrggate_01c_l"),
        GetHashKey("prop_lrggate_01c_r"),
        GetHashKey("prop_lrggate_02"),
        GetHashKey("prop_lrggate_05a"),
        GetHashKey("prop_lrggate_06a"),
        GetHashKey("prop_facgate_01"),
        GetHashKey("prop_facgate_02_l"),
        GetHashKey("prop_facgate_02_r"),
        GetHashKey("prop_facgate_03_l"),
        GetHashKey("prop_facgate_03_r"),
        GetHashKey("prop_facgate_07"),
        GetHashKey("prop_gate_airport_01"),
        GetHashKey("prop_gate_airport_02"),
        GetHashKey("prop_gate_docks_ld"),
        GetHashKey("prop_gate_docks02_l"),
        GetHashKey("prop_gate_docks02_r"),
        GetHashKey("prop_gate_military_01"),
        GetHashKey("prop_gate_military_02"),
        GetHashKey("prop_gate_prison_01"),
        GetHashKey("prop_gate_prison_01_l"),
        GetHashKey("prop_gate_prison_01_r"),
        GetHashKey("prop_gate_cult_01_l"),
        GetHashKey("prop_gate_cult_01_r"),
        GetHashKey("prop_gate_farm_01a")
    },
Combat = {
    ShotDebounceMs = 100,
    DefaultDamage = {
        head = 78,
        virtual_head = 78,
        chest = 24,
        pelvis = 20,
        left_leg = 15,
        right_leg = 15
    },
         WeaponDamage = {
            [`WEAPON_PISTOL`] = { head = 82, virtual_head = 82, chest = 25, pelvis = 21, left_leg = 16, right_leg = 16 },
            [`WEAPON_COMBATPISTOL`] = { head = 85, virtual_head = 85, chest = 26, pelvis = 22, left_leg = 16, right_leg = 16 },
            [`WEAPON_APPISTOL`] = { head = 70, virtual_head = 70, chest = 20, pelvis = 17, left_leg = 12, right_leg = 12 },
            [`WEAPON_HEAVYPISTOL`] = { head = 92, virtual_head = 92, chest = 29, pelvis = 24, left_leg = 18, right_leg = 18 },
            [`WEAPON_SNSPISTOL`] = { head = 76, virtual_head = 76, chest = 22, pelvis = 19, left_leg = 14, right_leg = 14 },
            [`WEAPON_VINTAGEPISTOL`] = { head = 80, virtual_head = 80, chest = 24, pelvis = 20, left_leg = 15, right_leg = 15 },
            [`WEAPON_MICROSMG`] = { head = 64, virtual_head = 64, chest = 18, pelvis = 15, left_leg = 11, right_leg = 11 },
            [`WEAPON_MINISMG`] = { head = 66, virtual_head = 66, chest = 19, pelvis = 16, left_leg = 11, right_leg = 11 },
            [`WEAPON_SMG`] = { head = 70, virtual_head = 70, chest = 20, pelvis = 17, left_leg = 12, right_leg = 12 },
            [`WEAPON_ASSAULTSMG`] = { head = 72, virtual_head = 72, chest = 21, pelvis = 18, left_leg = 13, right_leg = 13 },
            [`WEAPON_ASSAULTRIFLE`] = { head = 98, virtual_head = 98, chest = 29, pelvis = 24, left_leg = 17, right_leg = 17 },
            [`WEAPON_CARBINERIFLE`] = { head = 100, virtual_head = 100, chest = 30, pelvis = 25, left_leg = 18, right_leg = 18 },
            [`WEAPON_SPECIALCARBINE`] = { head = 104, virtual_head = 104, chest = 31, pelvis = 26, left_leg = 18, right_leg = 18 },
            [`WEAPON_BULLPUPRIFLE`] = { head = 98, virtual_head = 98, chest = 29, pelvis = 24, left_leg = 17, right_leg = 17 },
            [`WEAPON_PUMPSHOTGUN`] = { head = 105, virtual_head = 105, chest = 38, pelvis = 31, left_leg = 21, right_leg = 21 },
            [`WEAPON_SAWNOFFSHOTGUN`] = { head = 98, virtual_head = 98, chest = 35, pelvis = 29, left_leg = 20, right_leg = 20 },
            [`WEAPON_MARKSMANRIFLE`] = { head = 125, virtual_head = 125, chest = 44, pelvis = 36, left_leg = 24, right_leg = 24 },
            [`WEAPON_SNIPERRIFLE`] = { head = 165, virtual_head = 165, chest = 60, pelvis = 48, left_leg = 30, right_leg = 30 },
            [`WEAPON_HEAVYSNIPER`] = { head = 200, virtual_head = 200, chest = 75, pelvis = 60, left_leg = 36, right_leg = 36 },
        }
   }
}