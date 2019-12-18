AddEvent("OnGameTick", function(DeltaSeconds)
    local scalar = 100
    local x1, y1, z1 = GetPlayerLocation(GetPlayerId())
    local x2, y2, z2 = GetPlayerForwardVector(GetPlayerId())
    DrawLine3D(x1, y1, z1, x1+(x2*scalar), y1+(y2*scalar), z1+(z2*scalar))
    local type, id, x, y, z = LineTrace(x1, y1, z1, x1+(x2*scalar), y1+(y2*scalar), z1+(z2*scalar))
    -- AddPlayerChat("Type: "..type.." id: "..id.." x: "..x.." y: "..y.." z: "..z)
end)
