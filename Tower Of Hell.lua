--finish obby
local endzone = game.Workspace.tower.sections.finish.Finish.CFrame

local player = game.Players.LocalPlayer.Character

player.HumanoidRootPart.CFrame = endzone

--rejoin
local ts = game:GetService("TeleportService")
local p = game:GetService("Players").LocalPlayer
wait(3) 
ts:Teleport(game.PlaceId, p)