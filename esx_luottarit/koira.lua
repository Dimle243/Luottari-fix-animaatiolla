ESX               = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('luottarit', function(luottari)
    TriggerClientEvent('esx_luotiliivi:pue', luottari)
    local xPlayer = ESX.GetPlayerFromId(luottari)
    local drill = xPlayer.getInventoryItem('luottarit')

    xPlayer.removeInventoryItem('luottarit', 1)
    TriggerClientEvent('esx_luotiliivi:pukee', luottari)
end)