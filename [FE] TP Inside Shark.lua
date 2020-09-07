local Player = game.Players.LocalPlayer.Name

for index, child in pairs(game.workspace.Sharks:GetChildren()) do
    shark = tostring(child.Name)
end

game.workspace.Sharks[shark].Body.Weld.Part1 = game.workspace[Player].Torso
game.workspace.Sharks[shark].Body.Transparency = 1

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