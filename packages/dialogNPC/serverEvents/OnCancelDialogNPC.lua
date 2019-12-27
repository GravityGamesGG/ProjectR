AddRemoteEvent("OnCancelDialogNPC", function ()

    --Debut du fondu au noir
    StartCameraFade(0.0, 1.0, 0.5, "#000")

    --Juste avant que le fondu finisse on commence le deuxieme qui part du noir au normal et on deplace la camera au tout debut pendant que l'écran est noir
    Delay(450, function ()
        StartCameraFade(1.0, 0.0, 0.5, "#000")
        CallEvent("ui:OnCancelDialogNPC")

        SetCameraLocation(LastCameraX, LastCameraY, LastCameraZ, true)
        SetCameraRotation(LastCameraRX, LastCameraRY, 0, true)

        SetIgnoreLookInput(false)
        SetIgnoreMoveInput(false)
    end)
end)
