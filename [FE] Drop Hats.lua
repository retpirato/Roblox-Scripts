game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
if (key=="=") then
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if (v:IsA("Accessory")) then
v.Parent = workspace
end
end
end
end)