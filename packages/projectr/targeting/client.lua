local utils = ImportPackage("utils")

AddEvent("OnKeyPress", function(key)
    if key == "G" then
        utils.ToggleTargeting()
    end
end)
