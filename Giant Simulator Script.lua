--Teleports all powerups and shit to you in giant simulator
local plrh = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(game.workspace.Scene.ResourceNodes:GetChildren()) do 
    v.CFrame = plrh.CFrame
    end