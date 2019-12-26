AddEvent("OnPlayerSpawn", function()
    webui = CreateWebUI(0, 0, 0, 0, 0, 60)
    SetWebURL(webui, "http://asset/projectr/client/html/index.html")
    SetWebAlignment(webui, 0.0, 0.0)
    SetWebAnchors(webui, 0.0, 0.0, 1.0, 1.0)
    SetWebVisibility(webui, WEB_VISIBLE)

    SetPlayerClothingPreset(GetPlayerId(), 7)
end)
