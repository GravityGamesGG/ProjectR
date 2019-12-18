function cmd_spawnveh(player, model)
    if(model == nil) then
        return AddPlayerChat(player, "Usage: /spawnVeh <model>")
    end

    model = tonumber(model)

	if (model < 1 or model > 25) then
		return AddPlayerChat(player, "Vehicle model "..model.." does not exist.")
	end

	local x, y, z = GetPlayerLocation(player)
	local h = GetPlayerHeading(player)

	local vehicle = CreateVehicle(model, x, y+1000, z, h)
	if (vehicle == false) then
		return AddPlayerChat(player, "Failed to spawn your vehicle")
	end

	SetVehicleLicensePlate(vehicle, "GravityGames")
	AttachVehicleNitro(vehicle, false)

	AddPlayerChat(player, "Vehicle spawned! (New ID: "..vehicle..")")
end
AddCommand("spawnveh", cmd_spawnveh)