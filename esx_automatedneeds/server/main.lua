for key, value in pairs(Config.Needs) do
	ESX.RegisterUsableItem(value.item, function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem(value.item, 1)

		TriggerClientEvent('esx_status:add', source, value.type, value.rate)
		if value.type == 'thirst' then
			TriggerClientEvent('esx_basicneeds:onDrink', source, value.prop)
		elseif value.type == 'hunger' then
			TriggerClientEvent('esx_basicneeds:onEat', source, value.prop)
		else
			print('Requested Value Type: ' .. value.type .. ', does not exist.')
		end
	end)
end

ESX.RegisterCommand('heal', 'admin', function(xPlayer, args, showError)
	args.playerId.triggerEvent('esx_basicneeds:healPlayer')
	args.playerId.triggerEvent('chat:addMessage', {args = {'^5HEAL', 'You have been healed.'}})
end, true, {help = 'Heal a player, or yourself - restores thirst, hunger and health.', validate = true, arguments = {
	{name = 'playerId', help = 'the player id', type = 'player'}
}})