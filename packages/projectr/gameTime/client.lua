AddRemoteEvent("OnSetTime", function (gameTime)
    AddPlayerChat(gameTime)
    SetTime(gameTime)
end)