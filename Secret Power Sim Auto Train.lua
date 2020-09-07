local char = game.Players.LocalPlayer.Character
for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v.ClassName == "Tool" then
v.Parent = char
game:GetService("RunService").RenderStepped:Connect(function()
char.Train:Activate()
char.Meditation:Activate()
char.Punch:Activate()
end)
end
end