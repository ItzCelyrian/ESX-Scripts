-- Define ESX Object
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterNetEvent('esx_foodsystem:prepare2way')
AddEventHandler('esx_foodsystem:prepare2way', function(val1, val2, val3, val4, val5, val6, val7)
    -- Define xPlayer
	local xPlayer             = ESX.GetPlayerFromId(source)
    -- All Items required in if clause
	if 
    xPlayer.getInventoryItem(val1).count >= val2 
    and 
    xPlayer.getInventoryItem(val3).count >= val4 
    and
    xPlayer.canCarryItem(val5, val6)
    then
        -- Remove Items first to avoid exploitation
        xPlayer.removeInventoryItem(val1, val2)
        xPlayer.removeInventoryItem(val3, val4)
        -- Notify the player that progress is being done
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), 'You ~g~started~s~ preparing the ~g~recipe~s~.', 'CHAR_MINOTAUR', 1)
        -- Wait the time it takes for the dish
        Citizen.Wait(val7)
        -- Give the Player his dish
        xPlayer.addInventoryItem(val5, val6)	
    else
        -- Notify the Player Ingridients are missing
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), '~r~One~s~ or ~r~more~s~ ingridients ~r~are missing~s~ from your inventory.', 'CHAR_MINOTAUR', 1)
	end
end)

RegisterNetEvent('esx_foodsystem:prepare3way')
AddEventHandler('esx_foodsystem:prepare3way', function(val1, val2, val3, val4, val5, val6, val7, val8, val9)
    -- Define xPlayer
	local xPlayer             = ESX.GetPlayerFromId(source)
    -- All Items required in if clause
	if 
    xPlayer.getInventoryItem(val1).count >= val2 
    and 
    xPlayer.getInventoryItem(val3).count >= val4 
    and
    xPlayer.getInventoryItem(val8).count >= val9
    and
    xPlayer.canCarryItem(val5, val6)
    then
        -- Remove Items first to avoid exploitation
        xPlayer.removeInventoryItem(val1, val2)
        xPlayer.removeInventoryItem(val3, val4)
        -- Notify the player that progress is being done
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), 'You ~g~started~s~ preparing the ~g~recipe~s~.', 'CHAR_MINOTAUR', 1)
        -- Wait the time it takes for the dish
        Citizen.Wait(val7)
        -- Give the Player his dish
        xPlayer.addInventoryItem(val5, val6)	
    else
        -- Notify the Player Ingridients are missing
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), '~r~One~s~ or ~r~more~s~ ingridients ~r~are missing~s~ from your inventory.', 'CHAR_MINOTAUR', 1)
	end
end)

RegisterNetEvent('esx_foodsystem:prepare4way')
AddEventHandler('esx_foodsystem:prepare4way', function(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11)
    -- Define xPlayer
	local xPlayer             = ESX.GetPlayerFromId(source)
    -- All Items required in if clause
	if 
    xPlayer.getInventoryItem(val1).count >= val2 
    and 
    xPlayer.getInventoryItem(val3).count >= val4 
    and
    xPlayer.getInventoryItem(val8).count >= val9
    and
    xPlayer.getInventoryItem(val10).count >= val11 
    and
    xPlayer.canCarryItem(val5, val6)
    then
        -- Remove Items first to avoid exploitation
        xPlayer.removeInventoryItem(val1, val2)
        xPlayer.removeInventoryItem(val3, val4)
        -- Notify the player that progress is being done
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), 'You ~g~started~s~ preparing the ~g~recipe~s~.', 'CHAR_MINOTAUR', 1)
        -- Wait the time it takes for the dish
        Citizen.Wait(val7)
        -- Give the Player his dish
        xPlayer.addInventoryItem(val5, val6)	
    else
        -- Notify the Player Ingridients are missing
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), '~r~One~s~ or ~r~more~s~ ingridients ~r~are missing~s~ from your inventory.', 'CHAR_MINOTAUR', 1)
	end
end)

RegisterNetEvent('esx_foodsystem:prepare5way')
AddEventHandler('esx_foodsystem:prepare5way', function(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11, val12, val13)
    -- Define xPlayer
	local xPlayer             = ESX.GetPlayerFromId(source)
    -- All Items required in if clause
	if 
    xPlayer.getInventoryItem(val1).count >= val2 
    and 
    xPlayer.getInventoryItem(val3).count >= val4 
    and
    xPlayer.getInventoryItem(val8).count >= val9
    and
    xPlayer.getInventoryItem(val10).count >= val11 
    and
    xPlayer.getInventoryItem(val12).count >= val13
    and
    xPlayer.canCarryItem(val5, val6)
    then
        -- Remove Items first to avoid exploitation
        xPlayer.removeInventoryItem(val1, val2)
        xPlayer.removeInventoryItem(val3, val4)
        -- Notify the player that progress is being done
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), 'You ~g~started~s~ preparing the ~g~recipe~s~.', 'CHAR_MINOTAUR', 1)
        -- Wait the time it takes for the dish
        Citizen.Wait(val7)
        -- Give the Player his dish
        xPlayer.addInventoryItem(val5, val6)	
    else
        -- Notify the Player Ingridients are missing
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), '~r~One~s~ or ~r~more~s~ ingridients ~r~are missing~s~ from your inventory.', 'CHAR_MINOTAUR', 1)
	end
end)

RegisterNetEvent('esx_foodsystem:prepare6way')
AddEventHandler('esx_foodsystem:prepare6way', function(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11, val12, val13, val14, val15)
    -- Define xPlayer
	local xPlayer             = ESX.GetPlayerFromId(source)
    -- All Items required in if clause
	if 
    xPlayer.getInventoryItem(val1).count >= val2 
    and 
    xPlayer.getInventoryItem(val3).count >= val4 
    and
    xPlayer.getInventoryItem(val8).count >= val9
    and
    xPlayer.getInventoryItem(val10).count >= val11 
    and
    xPlayer.getInventoryItem(val12).count >= val13
    and
    xPlayer.getInventoryItem(val14).count >= val15
    and
    xPlayer.canCarryItem(val5, val6)
    then
        -- Remove Items first to avoid exploitation
        xPlayer.removeInventoryItem(val1, val2)
        xPlayer.removeInventoryItem(val3, val4)
        -- Notify the player that progress is being done
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), 'You ~g~started~s~ preparing the ~g~recipe~s~.', 'CHAR_MINOTAUR', 1)
        -- Wait the time it takes for the dish
        Citizen.Wait(val7)
        -- Give the Player his dish
        xPlayer.addInventoryItem(val5, val6)	
    else
        -- Notify the Player Ingridients are missing
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), '~r~One~s~ or ~r~more~s~ ingridients ~r~are missing~s~ from your inventory.', 'CHAR_MINOTAUR', 1)
	end
end)

RegisterNetEvent('esx_foodsystem:prepare7way')
AddEventHandler('esx_foodsystem:prepare7way', function(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11, val12, val13, val14, val15, val16, val17)
    -- Define xPlayer
	local xPlayer             = ESX.GetPlayerFromId(source)
    -- All Items required in if clause
	if 
    xPlayer.getInventoryItem(val1).count >= val2 
    and 
    xPlayer.getInventoryItem(val3).count >= val4 
    and
    xPlayer.getInventoryItem(val8).count >= val9
    and
    xPlayer.getInventoryItem(val10).count >= val11 
    and
    xPlayer.getInventoryItem(val12).count >= val13
    and
    xPlayer.getInventoryItem(val14).count >= val15
    and
    xPlayer.getInventoryItem(val16).count >= val17
    and
    xPlayer.canCarryItem(val5, val6)
    then
        -- Remove Items first to avoid exploitation
        xPlayer.removeInventoryItem(val1, val2)
        xPlayer.removeInventoryItem(val3, val4)
        -- Notify the player that progress is being done
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), 'You ~g~started~s~ preparing the ~g~recipe~s~.', 'CHAR_MINOTAUR', 1)
        -- Wait the time it takes for the dish
        Citizen.Wait(val7)
        -- Give the Player his dish
        xPlayer.addInventoryItem(val5, val6)	
    else
        -- Notify the Player Ingridients are missing
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), '~r~One~s~ or ~r~more~s~ ingridients ~r~are missing~s~ from your inventory.', 'CHAR_MINOTAUR', 1)
	end
end)

RegisterNetEvent('esx_foodsystem:prepare8way')
AddEventHandler('esx_foodsystem:prepare8way', function(val1, val2, val3, val4, val5, val6, val7, val8, val9, val10, val11, val12, val13, val14, val15, val16, val17, val18, val19)
    -- Define xPlayer
	local xPlayer             = ESX.GetPlayerFromId(source)
    -- All Items required in if clause
	if 
    xPlayer.getInventoryItem(val1).count >= val2 
    and 
    xPlayer.getInventoryItem(val3).count >= val4 
    and
    xPlayer.getInventoryItem(val8).count >= val9
    and
    xPlayer.getInventoryItem(val10).count >= val11 
    and
    xPlayer.getInventoryItem(val12).count >= val13
    and
    xPlayer.getInventoryItem(val14).count >= val15
    and
    xPlayer.getInventoryItem(val16).count >= val17
    and
    xPlayer.getInventoryItem(val18).count >= val19
    and
    xPlayer.canCarryItem(val5, val6)
    then
        -- Remove Items first to avoid exploitation
        xPlayer.removeInventoryItem(val1, val2)
        xPlayer.removeInventoryItem(val3, val4)
        -- Notify the player that progress is being done
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), 'You ~g~started~s~ preparing the ~g~recipe~s~.', 'CHAR_MINOTAUR', 1)
        -- Wait the time it takes for the dish
        Citizen.Wait(val7)
        -- Give the Player his dish
        xPlayer.addInventoryItem(val5, val6)	
    else
        -- Notify the Player Ingridients are missing
		TriggerClientEvent('esx:showAdvancedNotification', source, 'Recipe Market', os.date('%H:%M:%S'), '~r~One~s~ or ~r~more~s~ ingridients ~r~are missing~s~ from your inventory.', 'CHAR_MINOTAUR', 1)
	end
end)
