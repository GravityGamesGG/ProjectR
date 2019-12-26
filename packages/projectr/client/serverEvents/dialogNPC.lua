local Camera = ImportPackage('camera')

AddRemoteEvent("dialogNPC", function (npc)
    SetIgnoreLookInput(true)
    SetIgnoreMoveInput(true)
    
    local camx, camy, camz = GetCameraLocation()
    local camrx, camry, camrz = GetCameraRotation()
    
    LastCameraX = camx
    LastCameraY = camy
    LastCameraZ = camz
    LastCameraRX = camrx
    LastCameraRY = camry

    local ux, uy = GetForwardVectorFromHeading2D(npc.h)
    local dist = 150

    SetCameraLocation(npc.x+(ux*dist), npc.y+(uy*dist), npc.z+80, true)
    Camera.LookAt(npc.x, npc.y, npc.z+70)
    
end)