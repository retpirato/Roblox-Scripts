-- illremember's cool fe teleport script
-- enter person you want to be teleported in TP1
-- enter person TP1 should teleport to in TP2
-- (you'll also tp with them)
TP1 = "USERNAME"
TP2 = "USERNAME"

game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
local function tp(player,player2)
local char1,char2=player.Character,player2.Character
if char1 and char2 then
char1:MoveTo(char2.Head.Position)
end
end
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TP1].Character.HumanoidRootPart.CFrame
wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[TP2].Character.HumanoidRootPart.CFrame
wait(0.2)
tp(game.Players.LocalPlayer,game.Players[TP2])