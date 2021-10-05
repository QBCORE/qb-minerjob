RegisterServerEvent('qb-minerjob:getItem')
AddEventHandler('qb-minerjob:getItem', function()
    local xPlayer, randomItem = QBCore.Functions.GetPlayer(source), Config.Items[math.random(1, #Config.Items)]
    if math.random(0, 100) <= Config.ChanceToGetItem then
        xPlayer.Functions.AddItem(randomItem, 1)
        TriggerClientEvent("inventory:client:ItemBox", source, QBCore.Shared.Items[randomItem], "add")
        TriggerClientEvent("QBCore:Notify", source, "You mined some ".. randomItem .." ", "success", 10000)
    end
end)



RegisterServerEvent("qb-minerjob:sell")
AddEventHandler("qb-minerjob:sell", function()
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local price = 0
    if Player.PlayerData.items ~= nil and next(Player.PlayerData.items) ~= nil then 
        for k, v in pairs(Player.PlayerData.items) do 
            if Player.PlayerData.items[k] ~= nil then 
                if Player.PlayerData.items[k].name == "diamond" then 
                    price = price + (Config.MinedItems["diamond"]["price"] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem("diamond", Player.PlayerData.items[k].amount, k)
				elseif Player.PlayerData.items[k].name == "emerald" then 
                    price = price + (Config.MinedItems["emerald"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("emerald", Player.PlayerData.items[k].amount, k)
                elseif Player.PlayerData.items[k].name == "refinedgold" then 
                    price = price + (Config.MinedItems["refinedgold"]["price"] * Player.PlayerData.items[k].amount)
					Player.Functions.RemoveItem("refinedgold", Player.PlayerData.items[k].amount, k)
                end
            end
        end
        Player.Functions.AddMoney("cash", price, "sold-gems")
		TriggerClientEvent('QBCore:Notify', src, "If you had any gems, you sold them!")
	end
end)
