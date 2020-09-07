--made by pomegranate on v3rm
local walkspeed = 64
local bodypos = Instance.new("BodyPosition",game.Players.LocalPlayer.Character.HumanoidRootPart)
bodypos.maxForce = Vector3.new(12500,12500,12500)
spawn(function()
game:GetService("RunService").RenderStepped:connect(function()
wait()
if game.Players.LocalPlayer.Character.Humanoid.FloorMaterial == Enum.Material.Air then
bodypos.Parent = game.Players.LocalPlayer.Character
game:GetService("RunService").RenderStepped:Wait()
else
game:GetService("RunService").RenderStepped:Wait()
bodypos.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
end
end)
end)

spawn(function()
game:GetService("RunService").RenderStepped:connect(function()
game:GetService("RunService").RenderStepped:Wait()
bodypos.Position = Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X+game.Players.LocalPlayer.Character.Humanoid.MoveDirection.X*(1+walkspeed*0.05*5.4),game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z+game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Z*(1+walkspeed*0.05*5.4))
end)
end)