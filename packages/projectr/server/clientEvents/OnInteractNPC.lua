AddRemoteEvent("OnInteractNPC", function (player, npcId)
    local npc = dialogNPC[npcId]
    if npc then
        CallRemoteEvent(player, "OnDialogNPC", npc)
    end
end )