-- Si le joueur est en train de cibler avec la souris
local targeting = false


function ToggleTargetingMode()
    if targeting == true then
        SetIgnoreLookInput(false)
        ShowMouseCursor(false)
        SetInputMode(INPUT_GAME)
        targeting = false;
    else
        local x, y = GetScreenSize()
        SetMouseLocation(x/2, y/2)
        SetIgnoreLookInput(true)
        ShowMouseCursor(true)
        SetInputMode(INPUT_GAME)
        targeting = true;
    end
end

function IsPlayerTargeting()
    return targeting;
end

function GetNearestNPC()
    local x, y, z = GetPlayerLocation()
    local nearestNPC = {id=nil, dist=100000}

	for k,v in pairs(GetStreamedNPC()) do
        local x2, y2, z2 = GetNPCLocation(v)

        local dist = GetDistance3D(x, y, z, x2, y2, z2)
		if dist < nearestNPC.dist then
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