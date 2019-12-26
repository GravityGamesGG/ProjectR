AddEvent("OnKeyPress", function(key)
    --AddPlayerChat(key)
    if key == "G" then
        ToggleTargetingMode()
    end

    if key == "E" then
        local npcId = GetNearestNPC()
        if(GetNearestNPC()) then CallRemoteEvent("OnInteractNPC", npcId) end
    end

    if key == "Middle Mouse Button" then
        CallEvent("OnCancelDialogNPC")
    end

    if key == "Tab" then
        ExecuteWebJS(webui, "window.vm.showCharaCustom = !window.vm.showCharaCustom")
    end
end)
