hu = game.Players.LocalPlayer.Character.Humanoid
local l = Instance.new("Humanoid")
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
hu.Parent = game.Players.LocalPlayer
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
while wait(3) do
game.Players.LocalPlayer.Character.Humanoid.Parent = game.Pl