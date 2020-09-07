-- illremember's cool new kill script for fe
-- requires 2 tools, replace TARGET name with person you want
-- NO FE GODMODE!!
TARGET = "PUT PLAYER NAME HERE"

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
wait(1)
lplayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000, 0, 100000))