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