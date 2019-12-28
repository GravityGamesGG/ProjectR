isTargeting = false

function ToggleTargeting()
    if isTargeting then
        ShowMouseCursor(false)
        SetInputMode(INPUT_GAME)
        SetIgnoreLookInput(false)
        isTargeting = false
    else
        SetIgnoreLookInput(true)
        SetInputMode(INPUT_GAMEANDUI)
        local x, y = GetScreenSize()
        SetMouseLocation(x/2, y/2)
        ShowMouseCursor(true)
        isTargeting = true
    end
end
AddFunctionExport("ToggleTargeting", ToggleTargeting)

function IsPlayerTargeting()
    return targeting;
end

function GetNearestNPC(distValue)
    local maxDist = distValue or 100000

    local x, y, z = GetPlayerLocation()
    local nearestNPC = {id=nil, dist=maxDist}

	for k,v in pairs(GetStreamedNPC()) do
        local x2, y2, z2 = GetNPCLocation(v)

        local dist = GetDistance3D(x, y, z, x2, y2, z2)
		if dist < nearestNPC.dist and dist < maxDist then
            nearestNPC.id = v
            nearestNPC.dist = dist
        end
	end

	return nearestNPC.id
end
AddFunctionExport("GetNearestNPC", GetNearestNPC)

function GetForwardVectorFromHeading2D(h)
    local x2 = math.cos(math.rad(h))
    local y2 = math.sin(math.rad(h))
    return x2, y2
end
AddFunctionExport("GetForwardVectorFromHeading2D", GetForwardVectorFromHeading2D)