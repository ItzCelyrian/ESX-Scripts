-- NPC Toggle
if Config.npc == false then
    DisableVehicleDistantlights(true)
    SetPedPopulationBudget(0)
    SetVehiclePopulationBudget(0)
    SetRandomEventFlag(false)

    local scenarios = {
        'WORLD_VEHICLE_ATTRACTOR',
        'WORLD_VEHICLE_AMBULANCE',
        'WORLD_VEHICLE_BICYCLE_BMX',
        'WORLD_VEHICLE_BICYCLE_BMX_BALLAS',
        'WORLD_VEHICLE_BICYCLE_BMX_FAMILY',
        'WORLD_VEHICLE_BICYCLE_BMX_HARMONY',
        'WORLD_VEHICLE_BICYCLE_BMX_VAGOS',
        'WORLD_VEHICLE_BICYCLE_MOUNTAIN',
        'WORLD_VEHICLE_BICYCLE_ROAD',
        'WORLD_VEHICLE_BIKE_OFF_ROAD_RACE',
        'WORLD_VEHICLE_BIKER',
        'WORLD_VEHICLE_BOAT_IDLE',
        'WORLD_VEHICLE_BOAT_IDLE_ALAMO',
        'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
        'WORLD_VEHICLE_BOAT_IDLE_MARQUIS',
        'WORLD_VEHICLE_BROKEN_DOWN',
        'WORLD_VEHICLE_BUSINESSMEN',
        'WORLD_VEHICLE_HELI_LIFEGUARD',
        'WORLD_VEHICLE_CLUCKIN_BELL_TRAILER',
        'WORLD_VEHICLE_CONSTRUCTION_SOLO',
        'WORLD_VEHICLE_CONSTRUCTION_PASSENGERS',
        'WORLD_VEHICLE_DRIVE_PASSENGERS',
        'WORLD_VEHICLE_DRIVE_PASSENGERS_LIMITED',
        'WORLD_VEHICLE_DRIVE_SOLO',
        'WORLD_VEHICLE_FIRE_TRUCK',
        'WORLD_VEHICLE_EMPTY',
        'WORLD_VEHICLE_MARIACHI',
        'WORLD_VEHICLE_MECHANIC',
        'WORLD_VEHICLE_MILITARY_PLANES_BIG',
        'WORLD_VEHICLE_MILITARY_PLANES_SMALL',
        'WORLD_VEHICLE_PARK_PARALLEL',
        'WORLD_VEHICLE_PARK_PERPENDICULAR_NOSE_IN',
        'WORLD_VEHICLE_PASSENGER_EXIT',
        'WORLD_VEHICLE_POLICE_BIKE',
        'WORLD_VEHICLE_POLICE_CAR',
        'WORLD_VEHICLE_POLICE',
        'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
        'WORLD_VEHICLE_QUARRY',
        'WORLD_VEHICLE_SALTON',
        'WORLD_VEHICLE_SALTON_DIRT_BIKE',
        'WORLD_VEHICLE_SECURITY_CAR',
        'WORLD_VEHICLE_STREETRACE',
        'WORLD_VEHICLE_TOURBUS',
        'WORLD_VEHICLE_TOURIST',
        'WORLD_VEHICLE_TANDL',
        'WORLD_VEHICLE_TRACTOR',
        'WORLD_VEHICLE_TRACTOR_BEACH',
        'WORLD_VEHICLE_TRUCK_LOGS',
        'WORLD_VEHICLE_TRUCKS_TRAILERS',
        'WORLD_VEHICLE_DISTANT_EMPTY_GROUND'
    }

    for index, value in pairs(scenarios) do
        SetScenarioTypeEnabled(value, false)
    end
end

-- Custom Pause Menu Title
if Config.customtitle == true then
    Citizen.CreateThread(function()
        AddTextEntry('FE_THDR_GTAO', Config.title)
    end)
end

-- Custom Blips
if Config.customblips == true then
    local blips = Config.blips
    
    Citizen.CreateThread(function()
       for _, info in pairs(blips) do
         info.blip = AddBlipForCoord(info.x, info.y, info.z)
         SetBlipSprite(info.blip, info.id)
         SetBlipDisplay(info.blip, info.display)
         SetBlipScale(info.blip, info.scale)
         SetBlipColour(info.blip, info.colour)
         SetBlipAsShortRange(info.blip, info.shortrange)
         BeginTextCommandSetBlipName("STRING")
         AddTextComponentString(info.title)
         EndTextCommandSetBlipName(info.blip)
       end
    end)
end

-- Indicators
if Config.indicators == true then
    local IndicatorL = false
    local IndicatorR = false

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    		if IsControlJustPressed(1, Config.indicatorL) then
    			if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
    				TriggerEvent('Indicator', 'left')
    			end
    		end

    		if IsControlJustPressed(1, Config.indicatorR) then
    			if IsPedInAnyVehicle(GetPlayerPed(-1), true) then
    				TriggerEvent('Indicator', 'right')
    			end
    		end
        end
    end)

    AddEventHandler('Indicator', function(dir)
    	Citizen.CreateThread(function()
    		local Ped = GetPlayerPed(-1)
    		if IsPedInAnyVehicle(Ped, true) then
    			local Veh = GetVehiclePedIsIn(Ped, false)
    			if GetPedInVehicleSeat(Veh, -1) == Ped then
    				if dir == 'left' then
    					IndicatorL = not IndicatorL
    					TriggerServerEvent('IndicatorL', IndicatorL)
    				elseif dir == 'right' then
    					IndicatorR = not IndicatorR
    					TriggerServerEvent('IndicatorR', IndicatorR)
    				end
    			end
    		end
    	end)
    end)

    RegisterNetEvent('updateIndicators')
    AddEventHandler('updateIndicators', function(PID, dir, Toggle)
    	local Veh = GetVehiclePedIsIn(GetPlayerPed(GetPlayerFromServerId(PID)), false)
    	if dir == 'left' then
    		SetVehicleIndicatorLights(Veh, 1, Toggle)
    	elseif dir == 'right' then
    		SetVehicleIndicatorLights(Veh, 0, Toggle)
    	end
    end)
end

-- Hud Components
if Config.hudcontrol == true then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            for key, value in pairs(Config.hiddenValues) do
                if value.display == false then
                    HideHudComponentThisFrame(key)
                end
            end
        end
    end)
end

-- Ambient Sounds
if Config.ambientsound == false then
    Citizen.CreateThread(function()
        StartAudioScene('CHARACTER_CHANGE_IN_SKY_SCENE')
        SetAudioFlag("PoliceScannerDisabled", true)
    end)
end

-- Anti Gunwhip
if Config.antiGunwhip == true then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5)
            if not IsPedArmed(PlayerPedId(), 1) and (GetSelectedPedWeapon(PlayerPedId()) ~= GetHashKey('weapon_unarmed')) then
                DisableControlAction(0, 140, true) 
                DisableControlAction(0, 141, true)
                DisableControlAction(0, 142, true) 
            end
        end
    end)
end

-- No Motorcyclehelmet
if Config.motorcyclehelmet == false then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(5) -- Increase if you want to
            SetPedConfigFlag(PlayerPedId(), 35, false)
        end
    end)
end

-- Coords Commands
if Config.enableCommands == true then
    if Config.enableVector3Command == true then
        RegisterCommand('vector3', function()
            local coords = GetEntityCoords(GetPlayerPed(-1))
            SendNUIMessage({type='clipboard', data=''..vec(coords.x, coords.y, coords.z)})
            BeginTextCommandThefeedPost('STRING')
            AddTextComponentSubstringPlayerName(Config.copySuccessNotify)
            EndTextCommandThefeedPostTicker(0, 1)
        end, true)
    end
    if Config.enableVector4Command == true then
        RegisterCommand('vector4', function()
            local coords = GetEntityCoords(GetPlayerPed(-1))
            local heading = GetEntityHeading(GetPlayerPed(-1))
            SendNUIMessage({type='clipboard', data=''..vec(coords.x, coords.y, coords.z, heading)})
            BeginTextCommandThefeedPost('STRING')
            AddTextComponentSubstringPlayerName(Config.copySuccessNotify)
            EndTextCommandThefeedPostTicker(0, 1)
        end, true)
    end
    if Config.enableCoordsCommand == true then
        RegisterCommand('coords', function()
            local coords = GetEntityCoords(GetPlayerPed(-1))
            local heading = GetEntityHeading(GetPlayerPed(-1))
                if Config.enableCoordsHeading == true then
                    SendNUIMessage({type='clipboard', data=''.. coords.x .. ', y = ' .. coords.y .. ', z = ' .. coords.z .. ', h = ' .. heading})
                else
                    SendNUIMessage({type='clipboard', data=''.. coords.x .. ', y = ' .. coords.y .. ', z = ' .. coords.z})
                end
            BeginTextCommandThefeedPost('STRING')
            AddTextComponentSubstringPlayerName(Config.copySuccessNotify)
            EndTextCommandThefeedPostTicker(0, 1)
        end, true)
    end
end
