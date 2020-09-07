button              = workspace.Button
button.CanCollide   = false
button.Transparency = 1

game:GetService("RunService").Heartbeat:connect(function(step)
button.CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position)
button.Size   = Vector3.new(math.random(0,0), math.random(0,0), math.random(1,5))
wait()
button.CFrame=CFrame.new(game.Players.LocalPlayer.Character["Right Arm"].Position)
button.Size=Vector3.new(math.random(0,0), math.random(0,0), math.random(0,0))
wait()
button.CFrame=CFrame.new(game.Players.LocalPlayer.Character.Torso.Position)
button.Size=Vector3.new(math.random(0,0), math.random(0,0), math.random(0,0))
wait()
button.CFrame=CFrame.new(game.Players.LocalPlayer.Character["Left Arm"].Position)
button.Size=Vector3.new(math.random(0,0), math.random(0,0), math.random(0,0))
wait()
button.Size=Vector3.new(math.random(0,0), math.random(0,0), math.random(0,0))
button.CFrame=CFrame.new(game.Players.LocalPlayer.Character["Left Leg"].Position)
wait()
button.Size   = Vector3.new(math.random(0,0), math.random(0,0), math.random(0,0))
button.CFrame = CFrame.new(game.Players.LocalPlayer.Character["Right Leg"].Position)
end)