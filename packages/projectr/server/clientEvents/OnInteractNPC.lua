AddRemoteEvent("OnInteractNPC", function (player, npcId)
    local npc = dialogNPC[npcId]
    if npc then
        CallRemoteEvent(player, "dialogNPC", npc)
    end
end )