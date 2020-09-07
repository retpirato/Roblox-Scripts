Target = "NAMEHERE"

game:GetService('RunService').Stepped:connect(function()
  game.Players.LocalPlayer.Character.Head.CanCollide = false
  game.Players.LocalPlayer.Character.Torso.CanCollide = false
  game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
  game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
end)
b = Instance.new("RocketPropulsion")
b.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
b.Target = game.Players[Target].Character["Left Leg"]
b.TurnP = 2500
b.MaxThrust = 50000
b.MaxSpeed = 1000
b.ThrustP = 50000
b.CartoonFactor = 1
b:Fire()