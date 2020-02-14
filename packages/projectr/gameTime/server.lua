--local dayHoursInMinutes = 4
--local intervalCount = (dayHoursInMinutes * 60 * 1000) / 24 / 60
GameTime = 12.0
local hoursPerMin = 1.0
local updateRate = 100
local valuePerUpdate = (hoursPerMin / 60000) * updateRate

CreateTimer(function()
    for id, player in pairs(GetAllPlayers()) do
        CallRemoteEvent(player, "OnSetTime", GameTime)
    end
    if GameTime + valuePerUpdate > 24.0 then
        GameTime = (GameTime + valuePerUpdate) - 24.0
    else
        GameTime = GameTime + valuePerUpdate
    end
end, updateRate)
