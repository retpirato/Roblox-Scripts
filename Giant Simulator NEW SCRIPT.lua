spawn(function()
while wait(1) do
local hum = game.Players.LocalPlayer.Character.HumanoidRootPart
for i,v in pairs(workspace.Scene.ResourceNodes:GetChildren()) do 
v.CFrame = hum.CFrame
end
end
end)