local player = game.Players.LocalPlayer
local FUNTAIN = workspace.Levels.Forest.SpawnPoint
local LEVEL = player.Level.Value

while wait() do 
	if player.Character then
		player.Character.Humanoid.WalkSpeed = 40
		for i,v in pairs(workspace.Levels[LEVEL].Enemies:GetChildren()) do 
			if v.ClassName == "Model" and v:FindFirstChild("HumanoidRootPart") and (player.Character.HumanoidRootPart.Position-v.HumanoidRootPart.Position).Magnitude < 50 then 
				game:GetService("ReplicatedStorage").Remote.CastSpell:FireServer(1, v)
				game:GetService("ReplicatedStorage").Remote.CastSpell:FireServer(2, v)
				FUNTAIN.CFrame=player.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,0)
			end
		end
		for i,v in pairs(workspace.BossArenas:GetDescendants()) do 
			if v.ClassName == "Model" and v:FindFirstChild("HumanoidRootPart") then 
				game:GetService("ReplicatedStorage").Remote.CastSpell:FireServer(1, v)
				game:GetService("ReplicatedStorage").Remote.CastSpell:FireServer(2, v)
				FUNTAIN.CFrame=player.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,0)
			end
		end
	end
end