local function createDialogNPC()
    local npcId = CreateNPC(126773.000000, 79046.000000, 1572.500000,
    90.0)
    print(npcId)
    dialogNPC[npcId] = {}
    dialogNPC[npcId].id = npcId
    dialogNPC[npcId].dialogText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus gravida vel sapien non rhoncus. Morbi aliquam risus at arcu luctus luctus. Nam ut elit et eros condimentum sagittis. Aenean erat mauris, pulvinar ac lorem id, sagittis pellentesque nulla. In pretium velit rutrum tellus finibus, sed dignissim leo ornare. Quisque lacinia sodales tortor quis ullamcorper. Aliquam scelerisque, lacus et malesuada egestas, massa mi rutrum erat, et vulputate est nulla id massa. Fusce viverra tempus nisl vel euismod."
    dialogNPC[npcId].name = "Carlos Delarue"
    dialogNPC[npcId].clothingPreset = 12
    dialogNPC[npcId].x = 126773.000000
    dialogNPC[npcId].y = 79046.000000
    dialogNPC[npcId].z = 1572.500000
    dialogNPC[npcId].h = 90.0

    --SetNPCAnimation(npcId, "CROSSARMS", true)
end

AddEvent("OnPackageStart", function()
    createDialogNPC()
end)

