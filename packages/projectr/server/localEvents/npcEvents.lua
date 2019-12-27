AddEvent("OnNPCStreamIn", function(npcid, player)
    if DialogNPC[npcid] then
        CallRemoteEvent(player, "setupNPC", DialogNPC[npcid])
    end
end)