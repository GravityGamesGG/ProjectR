local utils = ImportPackage("utils")
local Camera = ImportPackage('camera')

AddEvent("OnKeyPress", function(key)
    if key == "E" then
        local npcId = utils.GetNearestNPC(300)
        if npcId then CallRemoteEvent("OnInteractNPC", npcId) end
    end
end)

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

        ExecuteWebJS(webui, "window.vm.showDialogNPC = true")
        ExecuteWebJS(webui, "window.vm.setupDialogNPC('"..npc.name.."', '"..npc.dialogText.."')")

        local ux, uy = utils.GetForwardVectorFromHeading2D(npc.h)
        local dist = 150

        SetCameraLocation(npc.x+(ux*dist), npc.y+(uy*dist), npc.z+70, true)

        Camera.LookAt(npc.x, npc.y, npc.z+70)
    end)
end)

AddRemoteEvent("OnCancelDialogNPC", function ()

    --Debut du fondu au noir
    StartCameraFade(0.0, 1.0, 0.5, "#000")

    --Juste avant que le fondu finisse on commence le deuxieme qui part du noir au normal et on deplace la camera au tout debut pendant que l'écran est noir
    Delay(450, function ()
        StartCameraFade(1.0, 0.0, 0.5, "#000")
        
        ExecuteWebJS(webui, "window.vm.showDialogNPC = false")

        SetCameraLocation(LastCameraX, LastCameraY, LastCameraZ, true)
        SetCameraRotation(LastCameraRX, LastCameraRY, 0, true)

        SetIgnoreLookInput(false)
        SetIgnoreMoveInput(false)
    end)
end)