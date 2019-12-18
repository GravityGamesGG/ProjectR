AddEvent("OnKeyPress", function(key)
    if key == "Left Alt" then
        ShowMouseCursor(true)
    end
end)

AddEvent("OnKeyRelease", function(key)
    if key == "Left Alt" then
        ShowMouseCursor(false)
    end
end)

AddEvent("OnKeyPress", function (key)
    if key == "E" then
        local scalar = 100
        local x1, y1, z1 = GetPlayerLocation(GetPlayerId())
        local x2, y2, z2 = GetPlayerForwardVector(GetPlayerId())
        DrawLine3D(x1, y1, z1, x1+(x2*scalar), y1+(y2*scalar), z1+(z2*scalar))
        local type, id, x, y, z = LineTrace(x1, y1, z1, x1+(x2*scalar), y1+(y2*scalar), z1+(z2*scalar))
        AddPlayerChat("Type: "..type.." id: "..id.." x: "..x.." y: "..y.." z: "..z)

        local sizeX, sizeY, sizeZ = GetObjectSize(id)
        if(sizeX ~= nil and sizeY ~= nil and sizeZ ~= nil) then
            AddPlayerChat("X: " ..sizeX.. "Y: " ..sizeY.. "Z:" ..sizeZ)
        end
        SetObjectOutline(id)

    end
end)
