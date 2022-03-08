function getMoney(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    local getmoney = xPlayer.getMoney()
    return getmoney
end

function removeMoney(source, amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeMoney(amount)
end

function addMoney(source, amount)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addMoney(amount)
end

function getName(source)
    return GetPlayerName(source)
end

function notifyPlayer(source, msg)  
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx:showAdvancedNotification', xPlayer.source, 'Straßenrennen', os.date("%y/%m/%d %X"), msg, 'CHAR_DEFAULT', 9)
end

local playersData = nil
local playersDataFile = "./StreetRaces_saveData.txt"

-- Helper function for loading saved player data
function loadPlayerData(source)
    -- Load data from file if not already initialized
    if playersData == nil then
        playersData = {}
        local file = io.open(playersDataFile, "r")
        if file then
            local contents = file:read("*a")
            playersData = json.decode(contents);
            io.close(file)
        end
    end

    -- Get player steamID from source and use as key to get player data
    local playerId = string.sub(GetPlayerIdentifier(source, 0), 7, -1)
    local playerData = playersData[playerId]

    -- Return saved player data
    if playerData == nil then
        playerData = {}
    end
    return playerData
end

-- Helper function for saving player data
function savePlayerData(source, data)
    -- Load data from file if not already initialized
    if playersData == nil then
        playersData = {}
        local file = io.open(playersDataFile, "r")
        if file then
            local contents = file:read("*a")
            playersData = json.decode(contents);
            io.close(file)
        end
    end

    -- Get player steamID from source and use as key to save player data
    local playerId = string.sub(GetPlayerIdentifier(source, 0), 7, -1)
    playersData[playerId] = data

    -- Save file
    local file = io.open(playersDataFile, "w+")
    if file then
        local contents = json.encode(playersData)
        file:write(contents)
        io.close(file)
    end
end
