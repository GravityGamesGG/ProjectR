local utils = ImportPackage("utils")

AddEvent("OnKeyPress", function(key)
    --AddPlayerChat(key)
    if key == "G" then
        ToggleTargetingMode()
    end

    if key == "E" then
        local npcId = utils.GetNearestNPC()
        if npcId then CallRemoteEvent("OnInteractNPC", npcId) end
    end

    if key == "Middle Mouse Button" then
        CallEvent("OnCancelDialogNPC", webui)
    end

    if key == "Tab" then
        ExecuteWebJS(webui, "window.vm.showCharaCustom = !window.vm.showCharaCustom")
    end
end)
