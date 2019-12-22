AddEvent("OnKeyPress", function(key)
    AddPlayerChat(key)
    if key == "G" then
        if freeMouse == false then
            local x, y = GetScreenSize()
            SetMouseLocation(x/2, y/2)
            SetIgnoreLookInput(true)
            ShowMouseCursor(true)
            SetInputMode(INPUT_GAMEANDUI)
            freeMouse = true;
        else
            SetIgnoreLookInput(false)
            ShowMouseCursor(false)
            SetInputMode(INPUT_GAME)
            freeMouse = false;
        end

    end

    if key == "E" then
        local scalar = 100
        local x1, y1, z1 = GetPlayerLocation(GetPlayerId())
        local x2, y2, z2 = GetPlayerForwardVector(GetPlayerId())
        DrawLine3D(x1, y1, z1, x1 + (x2 * scalar), y1 + (y2 * scalar),
                   z1 + (z2 * scalar))
        local type, id, x, y, z = LineTrace(x1, y1, z1, x1 + (x2 * scalar),
                                            y1 + (y2 * scalar),
                                            z1 + (z2 * scalar))
        AddPlayerChat(
            "Type: " .. type .. " id: " .. id .. " x: " .. x .. " y: " .. y ..
                " z: " .. z)

        local sizeX, sizeY, sizeZ = GetObjectSize(id)
        if (sizeX ~= nil and sizeY ~= nil and sizeZ ~= nil) then
            AddPlayerChat("Size X: " .. sizeX .. "Size Y: " .. sizeY ..
                              "Size Z:" .. sizeZ)
        end
        SetObjectOutline(id)
    end

    if key == "Tab" then
        ExecuteWebJS(webui,
                     "window.vm.showCharaCustom = !window.vm.showCharaCustom")
    end
end)
