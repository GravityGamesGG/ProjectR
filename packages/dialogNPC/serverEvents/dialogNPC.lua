local Camera = ImportPackage('camera')
local utils = ImportPackage("utils")

AddRemoteEvent("dialogNPC", function (npc)
    SetIgnoreLookInput(true)
    SetIgnoreMoveInput(true)

    StartCameraFade(0.0, 1.0, 0.5, "#000")

    Delay(450, function ()
        StartCameraFade(1.0, 0.0, 0.5, "#000")
        local camx, camy, camz = GetCameraLocation()
        local camrx, camry, camrz = GetCameraRotation()
        
        LastCameraX = camx
        LastCameraY = camy
        LastCameraZ = camz
        LastCameraRX = camrx
        LastCameraRY = camry

        local ux, uy = utils.GetForwardVectorFromHeading2D(npc.h)
        local dist = 150

        SetCameraLocation(npc.x+(ux*dist), npc.y+(uy*dist), npc.z+70, true)
        Camera.LookAt(npc.x, npc.y, npc.z+70)
    end)
    

    
    
end)