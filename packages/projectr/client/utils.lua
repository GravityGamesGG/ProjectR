-- Si le joueur est en train de cibler avec la souris
local targeting = false


function ToggleTargetingMode()
    if targeting == true then
        SetIgnoreLookInput(false)
        ShowMouseCursor(false)
        SetInputMode(INPUT_GAME)
        targeting = false;
    else
        local x, y = GetScreenSize()
        SetMouseLocation(x/2, y/2)
        SetIgnoreLookInput(true)
        ShowMouseCursor(true)
        SetInputMode(INPUT_GAME)
        targeting = true;
    end
end

function IsPlayerTargeting()
    return targeting;
end