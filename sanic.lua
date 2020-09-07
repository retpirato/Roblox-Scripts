local userInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local boost = false
local running = false
local waitmusic = Instance.new("Sound",script)
waitmusic.SoundId = "rbxassetid://152120846"
--waitmusic:Play()
wait(5)
local run = Instance.new("Animation")
run.AnimationId = "rbxassetid://843348945"
local run = player.Character.Humanoid:LoadAnimation(run)
greenhill = Instance.new("Sound",script)
Instance.new("FlangeSoundEffect",greenhill)
greenhill.Looped = true
greenhill.FlangeSoundEffect.Enabled = false
Instance.new("PitchShiftSoundEffect",greenhill)
greenhill.PitchShiftSoundEffect.Enabled = false
greenhill.SoundId = "rbxassetid://354909309"
waitmusic:Stop()
greenhill:Play()
for i,v in pairs(player.Character:GetChildren()) do
	if v.ClassName == "Accessory" then
		v:Destroy()
	end
end
function transparent(value, object)
	if object == nil then return end
	object = object:children()
	if #object < 1 then return end
	for i = 1, #object do
		if object[i].className == "Part" and object[i].Name ~= "Spin" then object[i].Transparency = value else transparent(value, object[i]) end
	end
end

local spin = Instance.new("Part")
spin.Name = "Spin"
spin.Anchored = true
spin.CanCollide = false
spin.Shape = 0
spin.Size = Vector3.new(4, 4, 4)
speed = 50
jump = false
--jumpmesh = Instance.new("SpecialMesh",spin)
--jumpmesh.MeshId = "rbxassetid://471554809"
--jumpmesh.TextureId = "rbxassetid://471554822"
--jumpmesh.Scale = Vector3.new(0.02, 0.015, 0.018)

local BPos = Instance.new("BodyPosition",player.Character.HumanoidRootPart)
BPos.MaxForce = Vector3.new(0,0,0)
BPos.P = 0
local moveVector = Vector3.new(0,0,0)
DashLeft = -100 -- side step
DashRight = 100
local youretooslow = Instance.new("Sound",player.Character.HumanoidRootPart)
youretooslow.SoundId = "rbxassetid://135557803"
youretooslow.Volume = 5
local Music = Instance.new("Sound",player.Character.HumanoidRootPart)
Music.SoundId = "rbxassetid://152373715"
Music.Volume = 10
Music.Looped = true

--[Sonic creaton]--
local velocity = Instance.new("BodyVelocity")
--velocity.Parent = player.Character:FindFirstChild("HumanoidRootPart")
local sidedash = Instance.new("Sound",player.Character.HumanoidRootPart)
sidedash.SoundId = "rbxassetid://278445103"
sidedash.Volume = 3
local boostsound = Instance.new("Sound",player.Character.HumanoidRootPart)
boostsound.SoundId = "rbxassetid://273734478"
boostsound.Looped = false
boostsound.Volume = 3
player.Character.Head.Mesh.MeshId = "rbxassetid://430064078"
player.Character.Head.Mesh.TextureId = "rbxassetid://430064079"
player.Character.Head.face:Destroy()
player.Character.Head.Mesh.Offset = Vector3.new(0, 0.2, 0.6)
player.Character.Head.Mesh.Scale = Vector3.new(0.55,0.55,0.65)
Boost = Instance.new("Part",player.Character)
Boost.Name = "Boost"
Boost.CanCollide = false
Boost.Transparency = 1
BoostMesh = Instance.new("SpecialMesh",Boost)
BoostMesh.MeshId = "rbxassetid://474948577"
BoostMesh.TextureId = "rbxassetid://474948588"
BoostMesh.Offset = Vector3.new(0, 0, 4)
BoostMesh.Scale = Vector3.new(6.00, 6.00, 6.5)
Velocity2 = Instance.new("BodyPosition",Boost)
Velocity2.Position = player.Character.HumanoidRootPart.Position
Velocity2.MaxForce = Vector3.new(999999,999999,999999)
Velocity2.P = 20000
bodyparts = {player.Character.HumanoidRootPart}

--[[
presentage depending on rotation [this wasn't efficiant enough]
while wait() do
	RotationOfCharacter = player.Character.HumanoidRootPart.Orientation.Y/360*100
	RotationConvert = RotationOfCharacter*2
	print(RotationConvert,",0,",100-RotationConvert)
	print()
end
--]]
-- Handle inputBegan event (when player first presses a key)
userInputService.InputBegan:connect(function(inputObject)
	if player.Character then
		if inputObject.KeyCode == Enum.KeyCode.G then
			youretooslow:Play()
		end
		if inputObject.KeyCode == Enum.KeyCode.M then
			if Music.Playing == false then
				Music:Play()
				greenhill.FlangeSoundEffect.Enabled = true
			else
				Music:Stop()
				greenhill.FlangeSoundEffect.Enabled = false

			end
		end
		if inputObject.KeyCode == Enum.KeyCode["LeftShift"] then
			player.Character.Animate.Disabled = true
			run:Play()
			greenhill.PitchShiftSoundEffect.Enabled = true
			boostsound.PlaybackSpeed = 1
			boostsound.TimePosition = 0
			boostsound:Play()
			boost = true
			FF = Instance.new("ForceField",player.Character)
			FF.Visible = false
			while boost do	
			if boostsound.Playing == false or boostsound.TimePosition >= 6 then
				if boostsound.PlaybackSpeed < 2.5 then
					boostsound.PlaybackSpeed = boostsound.PlaybackSpeed *1.1
				end
			boostsound.TimePosition = 2
			boostsound:Play()
			end
			wait()
			Boost.RotVelocity = Vector3.new(0,0,0)
			Boost.Transparency = 0.9
			BPos.MaxForce = Vector3.new(99999,0,99999)
			BPos.P = 20000
			Velocity2.Position =player.Character.HumanoidRootPart.CFrame:pointToWorldSpace(Vector3.new(0, 0, -50))
			Boost.CFrame = player.Character.HumanoidRootPart.CFrame
			BPos.Position = player.Character.HumanoidRootPart.CFrame:pointToWorldSpace(Vector3.new(0, 0, -50))
			end
		end
		if inputObject.KeyCode == Enum.KeyCode.Q then
			sidedash:Play()
			BPos.MaxForce = Vector3.new(999999,0,999999)
			BPos.P = 99999
			BPos.Position = player.Character.HumanoidRootPart.CFrame:pointToWorldSpace(Vector3.new(-20, 0, 0))
			player.Character.Humanoid.WalkSpeed  = 16
			end
			if inputObject.KeyCode == Enum.KeyCode.E then
			sidedash:Play()
			BPos.MaxForce = Vector3.new(999999,0,999999)
			BPos.P = 99999
			BPos.Position = player.Character.HumanoidRootPart.CFrame:pointToWorldSpace(Vector3.new(20, 0, 0))
			player.Character.Humanoid.WalkSpeed  = 16
			end
		if inputObject.KeyCode == Enum.KeyCode.W then
			player.Character.Humanoid.WalkSpeed  = 16
			running = true
			moveVector = Vector3.new(0,0,-1)
			while running do
				wait()
				if player.Character.Humanoid.WalkSpeed <= 100 then
					player.Character.Humanoid.WalkSpeed = player.Character.Humanoid.WalkSpeed * 1.025
				else
					player.Character.Humanoid.WalkSpeed = player.Character.Humanoid.WalkSpeed / 1.05
				end
			end
		end
		--player.Character.HumanoidRootPart.Orientation.Y
		if inputObject.KeyCode == Enum.KeyCode.Space then
		if jump == false then
			jump = true
		spin.BrickColor = player.Character.HumanoidRootPart.BrickColor
		for i = 1, 15 do
			if  jump == false then break end
			spin.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.fromEulerAnglesXYZ(-.5 * i, 0, 0)
			if spin.Parent == nil then spin.Parent = player.Character end
			wait()
			transparent(1, player.Character)
		end
		speed = 50
		velocity.Parent = nil
		spin.Parent = nil
		if player.Character:FindFirstChild("Chest") then
			transparent(1, player.Character)
		else
			transparent(0, player.Character)
		end
		player.Character.HumanoidRootPart.Transparency = 1
		Boost.Transparency = 1
		jump = false
		wait(.25)
		end
		else
			print("Dash/Target")
		end
	end
end)
 
-- Handle inputEnded event (when player releases a key)
userInputService.InputEnded:connect(function(inputObject)
	if player.Character then
		if inputObject.KeyCode == Enum.KeyCode.Q then
			BPos.P = 0
			BPos.MaxForce = Vector3.new(0,0,0)
		end
		if inputObject.KeyCode == Enum.KeyCode.E then
			BPos.P = 0
			BPos.MaxForce = Vector3.new(0,0,0)
		end
		if inputObject.KeyCode == Enum.KeyCode.W then
			moveVector = Vector3.new(0,0,0)
			BPos.MaxForce = Vector3.new(999999,0,999999)
			BPos.P = 99999
			BPos.Position = player.Character.HumanoidRootPart.Position
			wait()
			BPos.MaxForce = Vector3.new(0,0,0)
			BPos.P = 0
		end
		if inputObject.KeyCode == Enum.KeyCode.A then
			--
		end
		if inputObject.KeyCode == Enum.KeyCode.D then
			--
		end
		if inputObject.KeyCode == Enum.KeyCode["LeftShift"] then
			player.Character.Animate.Disabled = false
			run:Stop()
			boost = false
			boostsound:Stop()
			if wait() then
			Boost.Transparency = 1
			player.Character.Humanoid.WalkSpeed = 200
			BPos.P = 0
			BPos.MaxForce = Vector3.new(0,0,0)
			player.Character.Humanoid.Sit = false
			FF:Destroy()
			greenhill.PitchShiftSoundEffect.Enabled = false
			end
		end
	end
end)
 
-- On renderstepped update the character's motion based on what keys
-- are currently being pressed
runService.RenderStepped:connect(function()
	if player.Character then
		--player.Character.Humanoid:Move(moveVector)
	end
end)