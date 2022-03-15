if Config.indicators == true then
    local playerIndicators = {source}

    RegisterServerEvent('IndicatorL')
    AddEventHandler('IndicatorL', function(IndicatorL)
    	local netID = source
    	TriggerClientEvent('updateIndicators', -1, netID, 'left', IndicatorL)
    end)

    RegisterServerEvent('IndicatorR')
    AddEventHandler('IndicatorR', function(IndicatorR)
    	local netID = source
    	TriggerClientEvent('updateIndicators', -1, netID, 'right', IndicatorR)
    end)
else
end