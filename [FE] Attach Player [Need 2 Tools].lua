--Yep, needs 2 tools. Sorry guys...
TARGET = "THEVICTIM"

lplayer = game:GetService("Players").LocalPlayer
for i,v in pairs(lplayer.Backpack:GetChildren())do
lplayer.Character.Humanoid:EquipTool(v)
end
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetDescendants()) do
if v:IsA("Tool") then
v.Parent = lplayer.Character
wait()
v.Parent = game:GetService("Players")[TARGET].Character
end
end