AddEvent("ui:OnDialogNPC", function (npc)
    ExecuteWebJS(webui, "window.vm.showDialogNPC('"..npc.name.."', '"..npc.dialogText.."')")
end)

AddEvent("ui:OnCancelDialogNPC", function ()
    ExecuteWebJS(webui, "window.vm.showDialogNPC(false)")
end)