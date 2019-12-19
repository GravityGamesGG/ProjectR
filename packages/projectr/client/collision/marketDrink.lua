--[[x1, y1, z1 = 128673.0, 79531.0, 1472.0
local x2, y2, z2 = 80, 82, 251

local marketDrink = CreateCollisionBox( x1, y1, z1, x2, y2, z2,true)
AddPlayerChat(x1.. y1.. z1)
local px, py, pz = GetPlayerForwardVector(GetPlayerId())
local test = CreateCollisionBox(128400.0, 79250.0, 1566.0, 128400, 79500, 1676, true)]]