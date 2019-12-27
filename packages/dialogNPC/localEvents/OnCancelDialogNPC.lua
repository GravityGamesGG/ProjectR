AddEvent("OnCancelDialogNPC", function ()
    CallEvent("ui:OnCancelDialogNPC")
    SetCameraLocation(LastCameraX, LastCameraY, LastCameraZ, true)
    SetCameraRotation(LastCameraRX, LastCameraRY, 0, true)

    SetIgnoreLookInput(false)
    SetIgnoreMoveInput(false)
end)
