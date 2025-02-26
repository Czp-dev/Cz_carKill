Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local players = GetActivePlayers()

        for _, player in ipairs(players) do
            local playerPed = GetPlayerPed(player)
            if playerPed ~= ped then
                local veh = GetVehiclePedIsUsing(playerPed)
                if veh and veh ~= 0 then
                    SetEntityProofs(ped, false, true, false, false, false, false, false, false)
                end
            end
        end

        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_RUN_OVER_BY_CAR"), 0.0) 
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_RAMMED_BY_CAR"), 0.0) 

        Wait(25)
    end
end)