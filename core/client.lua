ESX = exports["es_extended"]:getSharedObject()
local resource = GetCurrentResourceName()
local freeze = false

RegisterKeyMapping("ar_freezecancel"..Config["SETTING"]["UNFREEZEKEY"], "[BASE] Unfreeze", "keyboard", Config["SETTING"]["UNFREEZEKEY"])

RegisterCommand("ar_freezecancel"..Config["SETTING"]["UNFREEZEKEY"],function()
	if freeze then
		freezeplayer(false)
	end
end)

function freezeplayer(value)
    freeze = value
    if freeze then
        FreezeEntityPosition(PlayerPedId(), true)
    else
        FreezeEntityPosition(PlayerPedId(), false)
    end
end
