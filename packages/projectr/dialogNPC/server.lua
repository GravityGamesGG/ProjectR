AddRemoteEvent("OnInteractNPC", function (player, npcId)
    local npc = DialogNPC[npcId]
    if npc then
        if PlayerData[player].state == PLAYER_STATE_IN_DIALOG then
            CallRemoteEvent(player, "OnCancelDialogNPC")
            PlayerData[player].state = PLAYER_STATE_FREE
        else
            CallRemoteEvent(player, "OnDialogNPC", npc)
            PlayerData[player].state = PLAYER_STATE_IN_DIALOG
        end
    end
end)