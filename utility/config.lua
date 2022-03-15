Config = {}

-- NPC
Config.npc                  = false

-- Title    
Config.customtitle          = true
Config.title                = '~r~Your Server'

-- Indicators   
Config.indicators           = true
Config.indicatorL           = 43
Config.indicatorR           = 42

-- Hud Components   
Config.hudcontrol           = true
--[[    
1 : WANTED_STARS
2 : WEAPON_ICON
3 : CASH
4 : MP_CASH
5 : MP_MESSAGE
6 : VEHICLE_NAME
7 : AREA_NAME
8 : VEHICLE_CLASS
9 : STREET_NAME
10 : HELP_TEXT
11 : FLOATING_HELP_TEXT_1
12 : FLOATING_HELP_TEXT_2
13 : CASH_CHANGE
14 : RETICLE
15 : SUBTITLE_TEXT
16 : RADIO_STATIONS
17 : SAVING_GAME
18 : GAME_STREAM
19 : WEAPON_WHEEL
20 : WEAPON_WHEEL_STATS
21 : HUD_COMPONENTS
22 : HUD_WEAPONS
23 : HUD_AMMO
]]--
Config.hiddenValues         = {
        [1] = {
                display = false
        },
        [2] = {
                display = false
        },
        [3] = {
                display = false
        },
        [4] = {
                display = false
        },
        [5] = {
                display = false
        },
        [6] = {
                display = false
        },
        [7] = {
                display = false
        },
        [8] = {
                display = false
        },
        [9] = {
                display = false
        },
        [10] = {
                display = false
        },
        [11] = {
                display = false
        },
        [12] = {
                display = false
        },
        [13] = {
                display = false
        },
        [14] = {
                display = false
        },
        [15] = {
                display = false
        },
        [16] = {
                display = false
        },
        [17] = {
                display = false
        },
        [18] = {
                display = false
        },
        [19] = {
                display = false
        },
        [20] = {
                display = false
        },
        [21] = {
                display = false
        },
        [22] = {
                display = false
        },
        [23] = {
                display = false
        },
}

-- Ambientsound 
Config.ambientsound         = false

-- Anti Gunwhip
Config.antiGunwhip          = true

-- No Motorcyclehelmet
Config.motorcyclehelmet     = false

-- Vector & Coords
Config.enableCommands       = true 
Config.enableVector3Command = true -- Command: /vector3
Config.enableVector4Command = true -- Command: /vector4
Config.enableCoordsCommand  = true -- Command: /coords
Config.enableCoordsHeading  = true
Config.copySuccessNotify    = '~g~Successfully copied to Clipboard!~s~'

-- Blipcontroller   
Config.customblips          = true
Config.blips                = {
        {title="~p~Vanilla Unicorn", colour=27, id=279, display=4, shortrange=true, scale=0.8, x = 111.2862, y = -1287.5208, z = 28.2602}
}