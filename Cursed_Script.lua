--[[ Created by Vizev, Thank you for using this f c ing script! XD
Keys:
]]

local Game=game
local Workspace=Game:GetService("Workspace")
player=Game.Players.LocalPlayer
mouse=player:GetMouse()
char=player.Character
laugh = "rbxassetid:///8059878721"
laugh2 = "rbxassetid://861942173"
local LeftLeg = char:WaitForChild("Left Leg")
local RightLeg = char:WaitForChild("Right Leg")
local LeftArm = char:WaitForChild("Left Arm")
local RightArm = char:WaitForChild("Right Arm")
local Head = char:WaitForChild("Head")
local Torso = char:WaitForChild("Torso")
Humanoid = char:WaitForChild("Humanoid")
crashpart=false
crash = "rbxassetid://6324841214"
Humanoid.Name = "Monster"
local Tween = game.TweenService
local pose = "Stand"

function CrashPart()
for i,v in pairs(Game.Workspace:GetDescendants()) do
	if v.Name == "Part" and v:IsA("Part") then
		v.Touched:Connect(function()
			if laugh or laugh2 then
				v:Destroy()
						local Sound = Instance.new("Sound")
						Sound.Parent = Humanoid
						Sound.Name = "Crash Sound"
						Sound.SoundId = crash
					if v:Destroy() then
						Sound:Play()
						wait(0.1)
					end
				end
			end)
		end
	end
end

Head.Mesh.Scale = Vector3.new(6.25, 6.25, 6.25)

local ParticleLeftArm = Instance.new("ParticleEmitter")
ParticleLeftArm.Parent = LeftArm
ParticleLeftArm.Name = "Left Arm Particle"
ParticleLeftArm.Size = NumberSequence.new(1.9)
ParticleLeftArm.Color = ColorSequence.new(Color3.new(0.129412, 0.129412, 0.129412))
ParticleLeftArm.TimeScale = 0.1
ParticleLeftArm.Rotation = NumberRange.new(3.8)

local LeftArmHand = Instance.new("SpecialMesh")
LeftArmHand.Parent = LeftArm
LeftArmHand.MeshId = "http://www.roblox.com/asset/?id=32054761"
LeftArmHand.Scale = Vector3.new(5.735, 4.636, 5.615)
LeftArmHand.MeshType = "FileMesh"

local RightArmHand = Instance.new("SpecialMesh")
RightArmHand.Parent = RightArm
RightArmHand.MeshId = "http://www.roblox.com/asset/?id=32054761"
RightArmHand.Scale = Vector3.new(5.735, 4.636, 5.615)
RightArmHand.MeshType = "FileMesh"

local ParticleRightArm = ParticleLeftArm:Clone()
ParticleRightArm.Parent = RightArm
ParticleRightArm.Name = "Right Arm Particle"
ParticleRightArm.Size = NumberSequence.new(1.4)
ParticleRightArm.Color = ColorSequence.new(Color3.new(0.117647, 0.117647, 0.117647))
ParticleRightArm.TimeScale = 0.1
ParticleRightArm.Rotation = NumberRange.new(3.9)

if crashpart == false then
	CrashPart()
	crashpart = false
end

if script and Game then
	Torso.Transparency = 1
	LeftLeg.Transparency = 1
	RightLeg.Transparency = 1
	char.HumanoidRootPart.Transparency = 1
		local Sound = Instance.new("Sound")
		Sound.Parent = Humanoid
		Sound.Name = "Laugh"
		Sound.SoundId = laugh
		Sound.Pitch = 2.0
		Sound:Play()
		wait(0.3)
		local Sound2 = Sound:Clone()
		Sound2.Parent = Humanoid
		Sound2.Name = "Laugh 2"
		Sound2.SoundId = laugh2
		Sound2.Pitch = 2.1
		Sound2:Play()
		wait(0.7)
end

Game["Run Service"].Stepped:Connect(function()
		local Motor = Instance.new("Motor6D")
					Motor.Parent = LeftArm
					Motor.Part1 = LeftArm
					Motor.Part0 = RightArm
					Motor.C0 = CFrame.new(0,100,0) * CFrame.Angles(0,300,1).Position
					Motor.C1 = CFrame.new(0,200,1) * CFrame.Angles(0,200,0).Position
	while true do
		wait()
			Motor.C0:Lerp(CFrame.Angles(0,400,0 * CFrame.Angles(0,200,1)*math.pow(1,9))*CFrame.Angles(3,100,0),100)
		wait()
			Motor.C1:Lerp(CFrame.Angles(0,200,1 * CFrame.Angles(0,300,0)*math.min(3,9))*CFrame.Angles(3,100,1),90)
	end
end)

if Head:FindFirstChild("face") then
	local face = Head:WaitForChild("face")
	if face:IsA("Decal") then
		face.Texture = "http://www.roblox.com/asset/?id=893052423"
	end
end

Tween:Create(ParticleLeftArm, TweenInfo.new(0.1,Enum.EasingStyle.Sine,Enum.EasingDirection.In,0.3,true,0.2),{ParticleRightArm.Rotation}):Play()
Tween:Create()

if pose == "Standing" then
	local BodyVelocity = Instance.new("BodyVelocity")
	BodyVelocity.Parent = Torso
	BodyVelocity.Velocity = Vector3.new(9e9,0e1,100)
	BodyVelocity.MaxForce = Vector3.new(0e4,10e1,0e1)
	while true do
		wait()
		BodyVelocity.Velocty = Vector3.new(9e9,9e9,0e1)
		wait()
		BodyVelocity.MaxForce = Vector3.new(9e9,9e1,9e1)
	end
end

if pose == "Nothing" then
	return
end

function Nothing()
	pose = "Nothing"
end

function Standing()
	pose = "Standing"
end

if pose == "Laughing" then
	local Sound = Instance.new("Sound")
	Sound.Parent = Humanoid
	Sound.SoundId = laugh
	Sound:Play()
	wait(0.1)
end

function Laughing()
	pose = "Laughing"
end

if pose == "Follow" then
	coroutine.wrap(function()
		local list = Game.Players
		for i=1, #list do
			local randchild = list[i]
			list[i]=Game.Players[i]
			player:Move(list[i].Character.Torso.Position,false)
		end
	end)
end

function Follow()
	pose = "Follow"
end

if pose == "Running" then
	Humanoid.Walkspeed = 50
end

function Running()
	pose = "Running"
end

function GetPlayerName()
	local list = game.Players
	for i=1, #list do
		local Message = Instance.new("Message")
		Message.Parent = Workspace
		Message.Text = "All Childs Health:" .. " " .. list[i].Name .. ": " .. list[i].Character.Humanoid.Health
	end
end
coroutine.create(GetPlayerName)

local poses = function()
	mouse.KeyDown:Connect(function(key)
		if key:lower() == "f" then
			Laughing()
		end
		if key:lower() == "n" then
			Nothing()
		end
		if key:lower() == "y" then
			Standing()
		end
		if key:lower() == "k" then
			Follow()
		end
		if key:lower() == "x" then
			Running()
		end
	end)
end
coroutine.wrap(poses())

RightArm.BrickColor = BrickColor.new("White")
LeftArm.BrickColor = BrickColor.new("White")
Head.BrickColor = BrickColor.new("Black metallic")

