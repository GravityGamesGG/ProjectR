AddEvent("OnPackageStart", function()
    local npcId = CreateNPC(126773.000000, 79046.000000, 1572.500000,
    90.0)
    print(npcId)
    DialogNPC[npcId] = {}
    DialogNPC[npcId].id = npcId
    DialogNPC[npcId].dialogText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida vel sapien non rhoncus. Morbi aliquam risus at arcu luctus luctus. Nam ut elit et eros condimentum sagittis. Aenean erat mauris, pulvinar ac lorem id, sagittis pellentesque nulla. In pretium velit rutrum tellus finibus, sed dignissim leo ornare. Quisque lacinia sodales tortor quis ullamcorper. Aliquam scelerisque, lacus et malesuada egestas, massa mi rutrum erat, et vulputate est nulla id massa. Fusce viverra tempus nisl vel euismod."
    DialogNPC[npcId].name = "Carlos Delarue"
    DialogNPC[npcId].clothingPreset = 12
    DialogNPC[npcId].x = 126773.000000
    DialogNPC[npcId].y = 79046.000000
    DialogNPC[npcId].z = 1572.500000
    DialogNPC[npcId].h = 90.0

    SetNPCAnimation(npcId, "CALLME", true)
end)

AddEvent("OnNPCStreamIn", function(npcid, player)
    if DialogNPC[npcid] then
        CallRemoteEvent(player, "setupNPC", DialogNPC[npcid])
    end
end)