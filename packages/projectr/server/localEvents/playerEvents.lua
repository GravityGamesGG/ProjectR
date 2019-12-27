AddEvent("OnPlayerJoin", function(player)
    if PlayerData[player] == nil then PlayerData[player] = {} end
    PlayerData[player].state = PLAYER_STATE_FREE
    SetPlayerSpawnLocation(player, 125773.000000, 80246.000000, 1645.000000, 90.0)
end)