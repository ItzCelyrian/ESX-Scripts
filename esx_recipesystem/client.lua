-- Define ESX Object
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

-- Config
twoway = {
}

threeway = {
    [1] = { 
        ['ingridient1']         = "raw_steak",
        ['ingridient1name']     = "Raw Steak",
        ['ingridient1amount']   = 1,
        ['ingridient2']         = "salt",
        ['ingridient2name']     = "Salt",
        ['ingridient2amount']   = 1, 
        ['outputItem']          = "cooked_steak", 
        ['outputItemAmount']    = 1,
        ['recipe_name']         = "Steak",
        ['recipe_description']  = "Prepare a fresh steak!",
        ['recipe_time']         = 15000,
        ['ingridient3']         = 'seasoning',
        ['ingridient3name']     = 'Seasoning',
        ['ingridient3amount']   = 1
    }
}

fourway = {

    -- After the Third stage ingridients get added: ingridient4, ingridient4name, ingridient4amount, ingridient5, ingridient5name, ingridient5amount, ... etc.

}

fiveway = {
}

sixway = {
}

sevenway = {
}

eightway = {
}

enable2 = true
enable3 = true
enable4 = true
enable5 = true
enable6 = false
enable7 = false
enable8 = false

-- Client

-- Define Main RageUI Menu
RMenu.Add('cooking', 'main', RageUI.CreateMenu("Recipe List", "Prepare any sort of meal here!"))

-- Define Ingridient Menus
RMenu.Add('cooking', '2way', RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), "Recipes", "Recipes with 2 Ingridients."))
RMenu.Add('cooking', '3way', RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), "Recipes", "Recipes with 3 Ingridients."))
RMenu.Add('cooking', '4way', RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), "Recipes", "Recipes with 4 Ingridients."))
RMenu.Add('cooking', '5way', RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), "Recipes", "Recipes with 5 Ingridients."))
RMenu.Add('cooking', '6way', RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), "Recipes", "Recipes with 6 Ingridients."))
RMenu.Add('cooking', '7way', RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), "Recipes", "Recipes with 7 Ingridients."))
RMenu.Add('cooking', '8way', RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), "Recipes", "Recipes with 8 Ingridients."))

for key, value in pairs(twoway) do
    RMenu.Add('cooking', value.recipe_name, RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), value.recipe_name, value.recipe_description))
end
for key, value in pairs(threeway) do
    RMenu.Add('cooking', value.recipe_name, RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), value.recipe_name, value.recipe_description))
end
for key, value in pairs(fourway) do
    RMenu.Add('cooking', value.recipe_name, RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), value.recipe_name, value.recipe_description))
end
for key, value in pairs(fiveway) do
    RMenu.Add('cooking', value.recipe_name, RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), value.recipe_name, value.recipe_description))
end
for key, value in pairs(sixway) do
    RMenu.Add('cooking', value.recipe_name, RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), value.recipe_name, value.recipe_description))
end
for key, value in pairs(sevenway) do
    RMenu.Add('cooking', value.recipe_name, RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), value.recipe_name, value.recipe_description))
end
for key, value in pairs(eightway) do
    RMenu.Add('cooking', value.recipe_name, RageUI.CreateSubMenu(RMenu:Get('cooking', 'main'), value.recipe_name, value.recipe_description))
end

-- Start Thread
Citizen.CreateThread(function()
    -- Start Loop
    while true do
        -- Make Main Cooking Menu visible
        RageUI.IsVisible(RMenu:Get('cooking', 'main'), true, true, true, function()
            -- Direct player from Main to Steak sub Menu
            RageUI.Separator("↓ Recipe Liste ↓")
            RageUI.Separator("")

            if enable2 == true then
                RageUI.ButtonWithStyle("2-Ingridient Recipe's", nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', '2way'))
            else end

            if enable3 == true then
                RageUI.ButtonWithStyle("3-Ingridient Recipe's", nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', '3way'))
            else end

            if enable4 == true then
                RageUI.ButtonWithStyle("4-Ingridient Recipe's", nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', '4way'))
            else end

            if enable5 == true then
                RageUI.ButtonWithStyle("5-Ingridient Recipe's", nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', '5way'))
            else end

            if enable6 == true then
                RageUI.ButtonWithStyle("6-Ingridient Recipe's", nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', '6way'))
            else end

            if enable7 == true then
                RageUI.ButtonWithStyle("7-Ingridient Recipe's", nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', '7way'))
            else end

            if enable8 == true then
                RageUI.ButtonWithStyle("8-Ingridient Recipe's", nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', '8way'))
            else end


        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('cooking', '2way'), true, true, true, function()
            -- Loop
            for key, value in pairs(twoway) do
                RageUI.ButtonWithStyle(value.recipe_name, nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', value.recipe_name))
            end
        end, function()
	    end)
        
        for key, value in pairs(twoway) do
            RageUI.IsVisible(RMenu:Get('cooking', value.recipe_name), true, true, true, function()
                -- Now we can add requirements

                RageUI.Separator("↓ Recipe Ingridients ↓")
                RageUI.Separator(value.ingridient1amount .. "x - " .. value.ingridient1name)
                RageUI.Separator(value.ingridient2amount .. "x - " .. value.ingridient2name)
                RageUI.Separator("")
                -- Final Event for crafting the Item
                RageUI.ButtonWithStyle("Prepare",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                    -- What happens if the Recipe is selected
                    if Selected then
                        -- Trigger the Crafting process event
                        TriggerServerEvent('esx_foodsystem:prepare2way', value.ingridient1, value.ingridient1amount, value.ingridient2, value.ingridient2amount, value.outputItem, value.outputItemAmount, value.recipe_time)
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
        end
        
        RageUI.IsVisible(RMenu:Get('cooking', '3way'), true, true, true, function()
            -- Loop
            for key, value in pairs(threeway) do
                RageUI.ButtonWithStyle(value.recipe_name, nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', value.recipe_name))
            end
        end, function()
	    end)
        
        for key, value in pairs(threeway) do
            RageUI.IsVisible(RMenu:Get('cooking', value.recipe_name), true, true, true, function()
                -- Now we can add requirements

                RageUI.Separator("↓ Recipe Ingridients ↓")
                RageUI.Separator(value.ingridient1amount .. "x - " .. value.ingridient1name)
                RageUI.Separator(value.ingridient2amount .. "x - " .. value.ingridient2name)
                RageUI.Separator(value.ingridient3amount .. "x - " .. value.ingridient3name)
                RageUI.Separator("")
                -- Final Event for crafting the Item
                RageUI.ButtonWithStyle("Prepare",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                    -- What happens if the Recipe is selected
                    if Selected then
                        -- Trigger the Crafting process event
                        TriggerServerEvent('esx_foodsystem:prepare3way', value.ingridient1, value.ingridient1amount, value.ingridient2, value.ingridient2amount, value.outputItem, value.outputItemAmount, value.recipe_time, value.ingridient3, value.ingridient3amount)
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
        end
        
        RageUI.IsVisible(RMenu:Get('cooking', '4way'), true, true, true, function()
            -- Loop
            for key, value in pairs(fourway) do
                RageUI.ButtonWithStyle(value.recipe_name, nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', value.recipe_name))
            end
        end, function()
	    end)
        
        for key, value in pairs(fourway) do
            RageUI.IsVisible(RMenu:Get('cooking', value.recipe_name), true, true, true, function()
                -- Now we can add requirements

                RageUI.Separator("↓ Recipe Ingridients ↓")
                RageUI.Separator(value.ingridient1amount .. "x - " .. value.ingridient1name)
                RageUI.Separator(value.ingridient2amount .. "x - " .. value.ingridient2name)
                RageUI.Separator(value.ingridient3amount .. "x - " .. value.ingridient3name)
                RageUI.Separator(value.ingridient4amount .. "x - " .. value.ingridient4name)
                RageUI.Separator("")
                -- Final Event for crafting the Item
                RageUI.ButtonWithStyle("Prepare",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                    -- What happens if the Recipe is selected
                    if Selected then
                        -- Trigger the Crafting process event
                        TriggerServerEvent('esx_foodsystem:prepare4way', value.ingridient1, value.ingridient1amount, value.ingridient2, value.ingridient2amount, value.outputItem, value.outputItemAmount, value.recipe_time, value.ingridient3, value.ingridient3amount, value.ingridient4, value.ingridient4amount)
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
        end
        
        RageUI.IsVisible(RMenu:Get('cooking', '5way'), true, true, true, function()
            -- Loop
            for key, value in pairs(fiveway) do
                RageUI.ButtonWithStyle(value.recipe_name, nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', value.recipe_name))
            end
        end, function()
	    end)
        
        for key, value in pairs(fiveway) do
            RageUI.IsVisible(RMenu:Get('cooking', value.recipe_name), true, true, true, function()
                -- Now we can add requirements

                RageUI.Separator("↓ Recipe Ingridients ↓")
                RageUI.Separator(value.ingridient1amount .. "x - " .. value.ingridient1name)
                RageUI.Separator(value.ingridient2amount .. "x - " .. value.ingridient2name)
                RageUI.Separator(value.ingridient3amount .. "x - " .. value.ingridient3name)
                RageUI.Separator(value.ingridient4amount .. "x - " .. value.ingridient4name)
                RageUI.Separator(value.ingridient5amount .. "x - " .. value.ingridient5name)
                RageUI.Separator("")
                -- Final Event for crafting the Item
                RageUI.ButtonWithStyle("Prepare",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                    -- What happens if the Recipe is selected
                    if Selected then
                        -- Trigger the Crafting process event
                        TriggerServerEvent('esx_foodsystem:prepare5way', value.ingridient1, value.ingridient1amount, value.ingridient2, value.ingridient2amount, value.outputItem, value.outputItemAmount, value.recipe_time, value.ingridient3, value.ingridient3amount, value.ingridient4, value.ingridient4amount, value.ingridient5, value.ingridient5amount)
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
        end
        
        RageUI.IsVisible(RMenu:Get('cooking', '6way'), true, true, true, function()
            -- Loop
            for key, value in pairs(sixway) do
                RageUI.ButtonWithStyle(value.recipe_name, nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', value.recipe_name))
            end
        end, function()
	    end)
        
        for key, value in pairs(sixway) do
            RageUI.IsVisible(RMenu:Get('cooking', value.recipe_name), true, true, true, function()
                -- Now we can add requirements

                RageUI.Separator("↓ Recipe Ingridients ↓")
                RageUI.Separator(value.ingridient1amount .. "x - " .. value.ingridient1name)
                RageUI.Separator(value.ingridient2amount .. "x - " .. value.ingridient2name)
                RageUI.Separator(value.ingridient3amount .. "x - " .. value.ingridient3name)
                RageUI.Separator(value.ingridient4amount .. "x - " .. value.ingridient4name)
                RageUI.Separator(value.ingridient5amount .. "x - " .. value.ingridient5name)
                RageUI.Separator(value.ingridient6amount .. "x - " .. value.ingridient6name)
                RageUI.Separator("")
                -- Final Event for crafting the Item
                RageUI.ButtonWithStyle("Prepare",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                    -- What happens if the Recipe is selected
                    if Selected then
                        -- Trigger the Crafting process event
                        TriggerServerEvent('esx_foodsystem:prepare6way', value.ingridient1, value.ingridient1amount, value.ingridient2, value.ingridient2amount, value.outputItem, value.outputItemAmount, value.recipe_time, value.ingridient3, value.ingridient3amount, value.ingridient4, value.ingridient4amount, value.ingridient5, value.ingridient5amount, value.ingridient6, value.ingridient6amount)
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
        end
        
        RageUI.IsVisible(RMenu:Get('cooking', '7way'), true, true, true, function()
            -- Loop
            for key, value in pairs(sevenway) do
                RageUI.ButtonWithStyle(value.recipe_name, nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', value.recipe_name))
            end
        end, function()
	    end)
        
        for key, value in pairs(sevenway) do
            RageUI.IsVisible(RMenu:Get('cooking', value.recipe_name), true, true, true, function()
                -- Now we can add requirements

                RageUI.Separator("↓ Recipe Ingridients ↓")
                RageUI.Separator(value.ingridient1amount .. "x - " .. value.ingridient1name)
                RageUI.Separator(value.ingridient2amount .. "x - " .. value.ingridient2name)
                RageUI.Separator(value.ingridient3amount .. "x - " .. value.ingridient3name)
                RageUI.Separator(value.ingridient4amount .. "x - " .. value.ingridient4name)
                RageUI.Separator(value.ingridient5amount .. "x - " .. value.ingridient5name)
                RageUI.Separator(value.ingridient6amount .. "x - " .. value.ingridient6name)
                RageUI.Separator(value.ingridient7amount .. "x - " .. value.ingridient7name)
                RageUI.Separator("")
                -- Final Event for crafting the Item
                RageUI.ButtonWithStyle("Prepare",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                    -- What happens if the Recipe is selected
                    if Selected then
                        -- Trigger the Crafting process event
                        TriggerServerEvent('esx_foodsystem:prepare7way', value.ingridient1, value.ingridient1amount, value.ingridient2, value.ingridient2amount, value.outputItem, value.outputItemAmount, value.recipe_time, value.ingridient3, value.ingridient3amount, value.ingridient4, value.ingridient4amount, value.ingridient5, value.ingridient5amount, value.ingridient6, value.ingridient6amount, value.ingridient7, value.ingridient7amount)
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
        end
        
        RageUI.IsVisible(RMenu:Get('cooking', '8way'), true, true, true, function()
            -- Loop
            for key, value in pairs(eightway) do
                RageUI.ButtonWithStyle(value.recipe_name, nil, {RightLabel = "→→"},true, function()
                end, RMenu:Get('cooking', value.recipe_name))
            end
        end, function()
	    end)
        
        for key, value in pairs(eightway) do
            RageUI.IsVisible(RMenu:Get('cooking', value.recipe_name), true, true, true, function()
                -- Now we can add requirements

                RageUI.Separator("↓ Recipe Ingridients ↓")
                RageUI.Separator(value.ingridient1amount .. "x - " .. value.ingridient1name)
                RageUI.Separator(value.ingridient2amount .. "x - " .. value.ingridient2name)
                RageUI.Separator(value.ingridient3amount .. "x - " .. value.ingridient3name)
                RageUI.Separator(value.ingridient4amount .. "x - " .. value.ingridient4name)
                RageUI.Separator(value.ingridient5amount .. "x - " .. value.ingridient5name)
                RageUI.Separator(value.ingridient6amount .. "x - " .. value.ingridient6name)
                RageUI.Separator(value.ingridient7amount .. "x - " .. value.ingridient7name)
                RageUI.Separator(value.ingridient8amount .. "x - " .. value.ingridient8name)
                RageUI.Separator("")
                -- Final Event for crafting the Item
                RageUI.ButtonWithStyle("Prepare",nil, {RightLabel = "→→"}, true, function(Hovered, Active, Selected)
                    -- What happens if the Recipe is selected
                    if Selected then
                        -- Trigger the Crafting process event
                        TriggerServerEvent('esx_foodsystem:prepare8way', value.ingridient1, value.ingridient1amount, value.ingridient2, value.ingridient2amount, value.outputItem, value.outputItemAmount, value.recipe_time, value.ingridient3, value.ingridient3amount, value.ingridient4, value.ingridient4amount, value.ingridient5, value.ingridient5amount, value.ingridient6, value.ingridient6amount, value.ingridient7, value.ingridient7amount, value.ingridient8, value.ingridient8amount)
                        RageUI.CloseAll()
                    end
                end)
            end, function()
            end)
        end
        
        Citizen.Wait(0)
    end
end)       

-- Start Thread
Citizen.CreateThread(function()
    -- Start Loop
    while true do
        Citizen.Wait(0)
        -- Define the player Coordinates
        local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
        -- Define the Distance from Player to desired spot
        local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, 386.3621, -325.3054, 46.8648)
        -- Draw Marker in the desired location (386.3621, -325.3054, 46.8648) (RGB = 84, 104, 135)
        DrawMarker(2, 386.3621, -325.3054, 46.8648, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.5, 0.5, 0.5, 84, 104, 135, 255, 0, 1, 2, 0, nil, nil, 0)
        -- Entire desired draw distance of the help option
        if dist <= 2.5 then
            -- Notify of menu opening option
            ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to open the Recipe Menu.")
            -- Check if the INPUT_CONTEXT Button is pressed
            if IsControlJustPressed(1,51) then
                -- Make the main RageUI for cooking visible
                RageUI.Visible(RMenu:Get('cooking', 'main'), not RageUI.Visible(RMenu:Get('cooking', 'main')))
            end
        end 
    end
end)