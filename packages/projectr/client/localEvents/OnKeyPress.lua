AddEvent("OnKeyPress", function(key)
    if key == "G" then
        ToggleTargetingMode()
    end

    if key == "E" then
        
    end

    if key == "Tab" then
        ExecuteWebJS(webui,
                     "window.vm.showCharaCustom = !window.vm.showCharaCustom")
    end
end)
