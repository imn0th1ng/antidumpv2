local name = GetCurrentResourceName()

RegisterServerEvent("sendclient-"..name, function()
    local code = LoadResourceFile(name, "test.lua")
    TriggerClientEvent("getclient-"..name, source)
end)