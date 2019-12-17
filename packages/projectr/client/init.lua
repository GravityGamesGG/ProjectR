AddEvent("OnScriptError", function(message)
    AddPlayerChat('<span color="#ff0000bb" style="bold" size="20">' .. message .. '</>')
end)

AddEvent("OnPackageStart", function()
    ShowWeaponHUD(false)
    ShowHealthHUD(false)
end)

