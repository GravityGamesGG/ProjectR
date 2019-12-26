AddEvent("OnNPCStreamIn", function(npcid, player)
    
    if dialogNPC[npcid] then
        CallRemoteEvent(player, "setupNPC", dialogNPC[npcid])
    end
end)