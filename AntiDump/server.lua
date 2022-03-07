local name = GetCurrentResourceName()
local antidump ={}

RegisterServerEvent("sendclient-"..name, function()
    local code = LoadResourceFile(name, "test.lua")
    if antidump[source] == nil then
            antidump[source] = true
        TriggerClientEvent("getclient-"..name, source, code)
    else
        DropPlayer(source, "?")
    end
end)
