--	 _____             __ _       
--	/ ____|           / _(_)      
-- | |     ___  _ __ | |_ _  __ _ 
-- | |    / _ \| '_ \|  _| |/ _` |
-- | |___| (_) | | | | | | | (_| |
--  \_____\___/|_| |_|_| |_|\__, |
--							 __/ |
--							|___/ 

-- Whitelisted Jobs that can access the CCTV Menu --
Job1 						= 'police'
Job2 						= 'sherriff'
Job3 						= 'fbi'
Job4 						= 'ranger'
Job5 						= 'cia'

-- RageUI Settings
MenuText 					= "CCTV"
MenuDescription 			= "Closed-Circuit TV-System"
RageUIEnableColor 			= false 									-- Enables custom colored Backgrounds
RageUIColor 				= 255, 255, 255 							-- RGB Values for RageUI Background

-- Notify Settings
NotifyEnabled				= true										-- Enable Notifications

-- Camera Locations
CameraLocations 			= {
	[1] =  { ['x'] = 24.18,['y'] = -1347.35,['z'] = 29.5,['h'] = 271.32, ['info'] = ' Store Camera 1', ["recent"] = false },
	[2] =  { ['x'] = -46.56,['y'] = -1757.98,['z'] = 29.43,['h'] = 48.68, ['info'] = ' Store Camera 2', ["recent"] = false },
	[3] =  { ['x'] = -706.02,['y'] = -913.61,['z'] = 19.22,['h'] = 85.61, ['info'] = ' Store Camera 3', ["recent"] = false },
	[4] =  { ['x'] = -1221.97,['y'] = -908.42,['z'] = 12.33,['h'] = 31.1, ['info'] = ' Store Camera 4', ["recent"] = false },
	[5] =  { ['x'] = 1164.99,['y'] = -322.78,['z'] = 69.21,['h'] = 96.91, ['info'] = ' Store Camera 5', ["recent"] = false },
	[6] =  { ['x'] = 372.25,['y'] = 326.43,['z'] = 103.57,['h'] = 252.9, ['info'] = ' Store Camera 6', ["recent"] = false },
	[7] =  { ['x'] = -1819.98,['y'] = 794.57,['z'] = 138.09,['h'] = 126.56, ['info'] = ' Store Camera 7', ["recent"] = false },
	[8] =  { ['x'] = -2966.24,['y'] = 390.94,['z'] = 15.05,['h'] = 84.58, ['info'] = ' Store Camera 8', ["recent"] = false },
	[9] =  { ['x'] = -3038.92,['y'] = 584.21,['z'] = 7.91,['h'] = 19.43, ['info'] = ' Store Camera 9', ["recent"] = false },
	[10] =  { ['x'] = -3242.48,['y'] = 999.79,['z'] = 12.84,['h'] = 351.35, ['info'] = ' Store Camera 10', ["recent"] = false },
	[11] =  { ['x'] = 2557.14,['y'] = 380.64,['z'] = 108.63,['h'] = 353.01, ['info'] = ' Store Camera 11', ["recent"] = false },
	[12] =  { ['x'] = 1166.02,['y'] = 2711.15,['z'] = 38.16,['h'] = 175.0, ['info'] = ' Store Camera 12', ["recent"] = false },
	[13] =  { ['x'] = 549.32,['y'] = 2671.3,['z'] = 42.16,['h'] = 94.96, ['info'] = ' Store Camera 13', ["recent"] = false },
	[14] =  { ['x'] = 1959.96,['y'] = 3739.99,['z'] = 32.35,['h'] = 296.38, ['info'] = ' Store Camera 14', ["recent"] = false },
	[15] =  { ['x'] = 2677.98,['y'] = 3279.28,['z'] = 55.25,['h'] = 327.81, ['info'] = ' Store Camera 15', ["recent"] = false },
	[16] =  { ['x'] = 1392.88,['y'] = 3606.7,['z'] = 34.99,['h'] = 201.69, ['info'] = ' Store Camera 16', ["recent"] = false },
	[17] =  { ['x'] = 1697.8,['y'] = 4922.69,['z'] = 42.07,['h'] = 322.95, ['info'] = ' Store Camera 17', ["recent"] = false },
	[18] =  { ['x'] = 1728.82,['y'] = 6417.38,['z'] = 35.04,['h'] = 233.94, ['info'] = ' Store Camera 18', ["recent"] = false },
	[19] =  { ['x'] = 733.45,['y'] = 127.58,['z'] = 80.69,['h'] = 285.51, ['info'] = ' Cam Power' },
	[20] =  { ['x'] = 1846.32,['y'] = 2597.93,['z'] = 45.64,['h'] = 311.88, ['info'] = ' Cam Jail Front' },
	[21] =  { ['x'] = 1807.71,['y'] = 2590.62,['z'] = 45.64,['h'] = 143.41, ['info'] = ' Cam Jail Prisoner Drop Off' },
	[22] =  { ['x'] = -644.24,['y'] = -241.11,['z'] = 37.97,['h'] = 282.81, ['info'] = ' Cam Jewelry Store' },
	[23] =  { ['x'] = -115.3,['y'] = 6441.41,['z'] = 31.53,['h'] = 341.95, ['info'] = ' Cam Paleto Bank Outside' },
	[24] =  { ['x'] = 240.07,['y'] = 218.97,['z'] = 106.29,['h'] = 276.14, ['info'] = ' Cam Main Bank 1' }
}






 
--   _____ _ _            _   
--  / ____| (_)          | |  
-- | |    | |_  ___ _ __ | |_ 
-- | |    | | |/ _ \ '_ \| __|
-- | |____| | |  __/ | | | |_ 
--  \_____|_|_|\___|_| |_|\__|
-- 						  						  

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local myspawns = {}
inCam = false
cctvCam = 0
scanId = 0
cityRobbery = false
CCTVCamLocations = CameraLocations


-- Camera Event:
-- 
-- You Can trigger this from other scripts example: 
-- TriggerEvent('cctv:camera', camnumber) / TriggerClientEvent('cctv:camera', camnumber)
RegisterNetEvent("cctv:camera")
AddEventHandler("cctv:camera", function(camNumber)
	camNumber = tonumber(camNumber)
	if inCam then
		inCam = false
		PlaySoundFrontend(-1, "HACKING_SUCCESS", false)
		Wait(250)
		ClearPedTasks(GetPlayerPed(-1))
	else
		if camNumber == nil then
			Citizen.Wait(1)
		elseif camNumber > 0 and camNumber < #CCTVCamLocations+1 then
			PlaySoundFrontend(-1, "HACKING_SUCCESS", false)
			-- Freeze Player to avoid him falling through the map
			FreezeEntityPosition(PlayerPedId(), true)
			if NotifyEnabled == true then
				TriggerEvent('esx:showAdvancedNotification', source, '~p~Co~b~nn~g~ec~y~ti~o~ng~r~...', '~h~Closed-Circuit TV~h~', 'Accessing Security Camera...', 'CHAR_IMG', 3)
			else
			end
			TriggerEvent("cctv:startcamera",camNumber)
		else
		end
	end
end)

-- Starting the Camera for the Player
RegisterNetEvent("cctv:startcamera")
AddEventHandler("cctv:startcamera", function(camNumber)

	local camNumber = tonumber(camNumber)
	local x = CCTVCamLocations[camNumber]["x"]
	local y = CCTVCamLocations[camNumber]["y"]
	local z = CCTVCamLocations[camNumber]["z"]
	local h = CCTVCamLocations[camNumber]["h"]
	inCam = true

	SetTimecycleModifier("heliGunCam")
	SetTimecycleModifierStrength(1.0)
	local scaleform = RequestScaleformMovie("TRAFFIC_CAM")
	while not HasScaleformMovieLoaded(scaleform) do
		Citizen.Wait(0)
	end

	local lPed = GetPlayerPed(-1)
	cctvCam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
	SetCamCoord(cctvCam,x,y,z+1.2)						
	SetCamRot(cctvCam, -15.0,0.0,h)
	SetCamFov(cctvCam, 110.0)
	RenderScriptCams(true, false, 0, 1, 0)
	PushScaleformMovieFunction(scaleform, "PLAY_CAM_MOVIE")
	SetFocusArea(x, y, z, 0.0, 0.0, 0.0)
	PopScaleformMovieFunctionVoid()

	while inCam do
		SetCamCoord(cctvCam,x,y,z+1.2)
		PushScaleformMovieFunction(scaleform, "SET_ALT_FOV_HEADING")
		PushScaleformMovieFunctionParameterFloat(GetEntityCoords(h).z)
		PushScaleformMovieFunctionParameterFloat(1.0)
		PushScaleformMovieFunctionParameterFloat(GetCamRot(cctvCam, 2).z)
		PopScaleformMovieFunctionVoid()
		DrawScaleformMovieFullscreen(scaleform, 255, 255, 255, 255)
		Citizen.Wait(1)
	end
	-- Unfreeze Player, make him movable again
	FreezeEntityPosition(PlayerPedId(), false)
	ClearFocus()
	ClearTimecycleModifier()
	RenderScriptCams(false, false, 0, 1, 0)
	SetScaleformMovieAsNoLongerNeeded(scaleform)
	DestroyCam(cctvCam, false)
	SetNightvision(false)
	SetSeethrough(false)

end)

-- Camera Movement Function [Default Controls are Numpad]
Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		if inCam then

			local rota = GetCamRot(cctvCam, 2)

			if IsControlPressed(1, 108) then
				SetCamRot(cctvCam, rota.x, 0.0, rota.z + 0.7, 2)
			end

			if IsControlPressed(1, 107) then
				SetCamRot(cctvCam, rota.x, 0.0, rota.z - 0.7, 2)
			end

			if IsControlPressed(1, 61) then
				SetCamRot(cctvCam, rota.x + 0.7, 0.0, rota.z, 2)
			end

			if IsControlPressed(1, 60) then
				SetCamRot(cctvCam, rota.x - 0.7, 0.0, rota.z, 2)
			end
		end
	end
end)

-- Define the RageUI
RMenu.Add('CCTV', 'main', RageUI.CreateMenu(MenuText, MenuDescription))
if RageUIEnableColor == true then
	RMenu:Get('CCTV', 'main'):SetRectangleBanner(RageUIColor)
else
end

-- Function for RageUI and Automatic Button generation
Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('CCTV', 'main'), true, true, true, function()
			RageUI.ButtonWithStyle('Disconnect',nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
				if Selected then
					TriggerEvent('cctv:camera', nil)
					RageUI.CloseAll()
				end
			end)

			RageUI.Separator()

			for key, value in pairs(CameraLocations) do
				RageUI.ButtonWithStyle(value.info,nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
					if Selected then
						TriggerEvent('cctv:camera', key)
						RageUI.CloseAll()
					end
				end)
			end
    end, function()
	end)
		
	Citizen.Wait(0)
	
	end
end)

-- Allow usage of the RageUI if player has the Job 
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if ESX.PlayerData.job and ESX.PlayerData.job.name == Job1 or Job2 or Job3 or Job4 or Job5  then 
		if IsControlJustReleased(0 ,118) then
			RageUI.Visible(RMenu:Get('CCTV', 'main'), not RageUI.Visible(RMenu:Get('CCTV', 'main')))
		end
	end
	end
end)