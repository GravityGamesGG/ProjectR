AddEvent("OnPlayerSpawn", function()
    local web = CreateWebUI(0, 0, 0, 0, 0, 30)
    SetWebURL(web, "http://asset/projectr/client/html/index.html")
    SetWebAlignment(web, 0.0, 0.0)
    SetWebAnchors(web, 0.0, 0.0, 1.0, 1.0)
    SetWebVisibility(web, WEB_HITINVISIBLE)

    --SetPlayerOutline(GetPlayerId(), true)
    SetPlayerClothingPreset(GetPlayerId(), 11)

end)
