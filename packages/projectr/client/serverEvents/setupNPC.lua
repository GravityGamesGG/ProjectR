AddRemoteEvent("setupNPC", function (npc)
    for key, value in pairs(GetStreamedNPC()) do
        if value == npc.id then
            SetNPCClothingPreset(value, npc.clothingPreset)
        end
    end
end)