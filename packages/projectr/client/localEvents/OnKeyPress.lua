local waetherId = 1

AddEvent("OnKeyPress", function(key)
    if key == "G" then
        ToggleTargetingMode()
    end

    if key == "E" then
        AddPlayerChat("Set weather : "..waetherId)
        SetWeather(waetherId)
        if waetherId == 10 then
            waetherId = 1
        else
            waetherId = waetherId + 1
        end
    end

    if key == "Tab" then
        ExecuteWebJS(webui,
                     "window.vm.showCharaCustom = !window.vm.showCharaCustom")
    end
end)
