RDX = nil
TriggerEvent('rdx:getSharedObject', function(obj) RDX = obj end)

RegisterServerEvent('Blueberry:Add')
AddEventHandler('Blueberry:Add', function() 
	local xPlayer = RDX.GetPlayerFromId(source)	
	local item = math.random(1,3)
	local amount = 1

	xPlayer.addInventoryItem(Config.ItemSet[item],amount)
	TriggerClientEvent('rdx:alert',source,''..Config.MsgSet[item]..'',2)
	item = 0
end)

RDX.RegisterUsableItem('item_blueberry', function(source)
   local xPlayer = RDX.GetPlayerFromId(source)   
   xPlayer.removeInventoryItem('item_blueberry',1)   
   TriggerClientEvent('Blueberry:Eat', source)
   TriggerClientEvent('rdx:alert',source,"You ate a blueberry", 3)	
end)

