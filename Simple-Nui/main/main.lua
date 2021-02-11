local display = true
local guiEnabled = false

AddEventHandler('playerSpawned', function()
    display = true
end)


RegisterCommand("help", function()
    Citizen.CreateThread(function()
	  TriggerEvent("nui:on", true)
	end)
end)


RegisterCommand("close", function()
    Citizen.CreateThread(function()
	  TriggerEvent("nui:off", true)
	end)
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool
    })
end


RegisterNetEvent("nui:on")
AddEventHandler("nui:on", function(value)
    SendNUIMessage({
	    type = "ui",
	    display = true
	})
end)


RegisterNetEvent("nui:off")
AddEventHandler("nui:off", function(value)
    SendNUIMessage({
	    type = "ui",
		display = false
	})
end)

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
        --DisableControlAction(0, 1, true) -- Look Left/Right
       -- DisableControlAction(0, 2, true) -- Look Up/Down
        --DisableControlAction(0, 142, true) -- Melee Attack
       -- DisableControlAction(0, 18, true) -- Enter
        --DisableControlAction(0, 322, true) -- ESC
       -- DisableControlAction(0, 106, true) -- Mouse Click
        --DisableControlAction(0, 199, true) -- Pause Menu (P)
    end
end)


