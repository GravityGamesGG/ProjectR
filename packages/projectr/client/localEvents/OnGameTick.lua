AddEvent("OnGameTick", function(DeltaSeconds)
    --[[if IsPlayerTargeting() then
        local scalar = 1000000
        local x, y, z, dirx, diry, dirz = DeprojectMouseLocationToWorld()
        DrawLine3D(x, y, z, x+(dirx*scalar), y+(diry*scalar), z+(dirz*scalar))
        local hittype, hitid = LineTrace(x, y, z, x+(dirx*scalar), y+(diry*scalar), z+(dirz*scalar), false)
        AddPlayerChat(hittype.."   "..hitid)
        if hitType == HIT_PLAYER then
            targetPlayer(hitId)
        end
        if hitType == HIT_NPC then
            targetNpc(hitId)
        end
        
    end]]
end)

local function targetPlayer(playerId)
    
end

local function targetNpc(npcId)
    
end