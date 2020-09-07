Target = "NAMEHERE"

game:GetService('RunService').Stepped:connect(function()
   game.Players.LocalPlayer.Character.Head.CanCollide = false
   game.Players.LocalPlayer.Character.Torso.CanCollide = false
   game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
   game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)
b = Instance.new("RocketPropulsion")
b.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
b.Target = game.Players[Target].Character.HumanoidRootPart
b.TurnP = 20000
b.MaxThrust = 20000
b.MaxSpeed = 1000
b.ThrustP = 13000
b:Fire()