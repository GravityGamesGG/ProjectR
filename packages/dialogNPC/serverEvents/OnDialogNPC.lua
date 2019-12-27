local Camera = ImportPackage('camera')
local utils = ImportPackage("utils")

AddRemoteEvent("OnDialogNPC", function (npc)
    --Freeze le joueur pendant le dialogue
    SetIgnoreLookInput(true)
    SetIgnoreMoveInput(true)

    --Enregistrement de la position de la camera avant de la bouger pour y revenir une fois le dialogue fini
    local camx, camy, camz = GetCameraLocation()
    local camrx, camry, camrz = GetCameraRotation()

    LastCameraX = camx
    LastCameraY = camy
    LastCameraZ = camz
    LastCameraRX = camrx
    LastCameraRY = camry

    --Debut du fondu au noir
    StartCameraFade(0.0, 1.0, 0.5, "#000")

    --Juste avant que le fondu finisse on commence le deuxieme qui part du noir au normal et on deplace la camera au tout debut pendant que l'écran est noir
    Delay(450, function ()
        StartCameraFade(1.0, 0.0, 0.5, "#000")
        CallEvent("ui:OnDialogNPC", npc)

        local ux, uy = utils.GetForwardVectorFromHeading2D(npc.h)
        local dist = 150

        SetCameraLocation(npc.x+(ux*dist), npc.y+(uy*dist), npc.z+70, true)

        Camera.LookAt(npc.x, npc.y, npc.z+70)
    end)
    

    
    
end)