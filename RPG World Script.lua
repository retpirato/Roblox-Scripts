-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local RPGWorld = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local AutoFarm = Instance.new("TextButton")
local afinfo = Instance.new("TextButton")
local AutoEgg = Instance.new("TextButton")
local aginfo = Instance.new("TextButton")
local afinfof = Instance.new("Frame")
local Attacking = Instance.new("TextLabel")
local teleporting = Instance.new("TextLabel")
local aginfof = Instance.new("Frame")
local Egg = Instance.new("TextBox")
local tp = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local template = Instance.new("TextButton")
--Properties:
RPGWorld.Name = "RPG World"
RPGWorld.Parent = game.CoreGui
RPGWorld.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = RPGWorld
Frame.BackgroundColor3 = Color3.new(0.305882, 0.180392, 0.580392)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.533227086, 0, 0.52522254, 0)
Frame.Size = UDim2.new(0.138457105, 0, 0.161721066, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.00137399475, 0, 0, 0)
TextLabel.Size = UDim2.new(1.00365174, 0, 0.210970461, 0)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "RPG World"
TextLabel.TextColor3 = Color3.new(0.529412, 0.313726, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Frame
AutoFarm.BackgroundColor3 = Color3.new(0.396078, 0.231373, 0.745098)
AutoFarm.BorderSizePixel = 0
AutoFarm.Position = UDim2.new(0.00137399475, 0, 0.316455662, 0)
AutoFarm.Size = UDim2.new(0.344487697, 0, 0.210970461, 0)
AutoFarm.Font = Enum.Font.Cartoon
AutoFarm.Text = "AutoFarm"
AutoFarm.TextColor3 = Color3.new(0.517647, 0.309804, 1)
AutoFarm.TextScaled = true
AutoFarm.TextSize = 14
AutoFarm.TextStrokeColor3 = Color3.new(0.517647, 0.309804, 1)
AutoFarm.TextWrapped = true

afinfo.Name = "afinfo"
afinfo.Parent = Frame
afinfo.BackgroundColor3 = Color3.new(0.396078, 0.231373, 0.745098)
afinfo.BorderSizePixel = 0
afinfo.Position = UDim2.new(0.00137399475, 0, 0.527426064, 0)
afinfo.Size = UDim2.new(0.125870496, 0, 0.164556965, 0)
afinfo.Font = Enum.Font.Cartoon
afinfo.Text = "<"
afinfo.TextColor3 = Color3.new(0.517647, 0.309804, 1)
afinfo.TextScaled = true
afinfo.TextSize = 14
afinfo.TextStrokeColor3 = Color3.new(0.517647, 0.309804, 1)
afinfo.TextWrapped = true

AutoEgg.Name = "AutoEgg"
AutoEgg.Parent = Frame
AutoEgg.BackgroundColor3 = Color3.new(0.396078, 0.231373, 0.745098)
AutoEgg.BorderSizePixel = 0
AutoEgg.Position = UDim2.new(0.660538197, 0, 0.316455662, 0)
AutoEgg.Size = UDim2.new(0.344487697, 0, 0.210970461, 0)
AutoEgg.Font = Enum.Font.Cartoon
AutoEgg.Text = "AutoEgg"
AutoEgg.TextColor3 = Color3.new(0.517647, 0.309804, 1)
AutoEgg.TextScaled = true
AutoEgg.TextSize = 14
AutoEgg.TextStrokeColor3 = Color3.new(0.517647, 0.309804, 1)
AutoEgg.TextWrapped = true

aginfo.Name = "aginfo"
aginfo.Parent = Frame
aginfo.BackgroundColor3 = Color3.new(0.396078, 0.231373, 0.745098)
aginfo.BorderSizePixel = 0
aginfo.Position = UDim2.new(0.879155099, 0, 0.527426064, 0)
aginfo.Size = UDim2.new(0.125870496, 0, 0.164556965, 0)
aginfo.Font = Enum.Font.Cartoon
aginfo.Text = ">"
aginfo.TextColor3 = Color3.new(0.517647, 0.309804, 1)
aginfo.TextScaled = true
aginfo.TextSize = 14
aginfo.TextStrokeColor3 = Color3.new(0.517647, 0.309804, 1)
aginfo.TextWrapped = true

afinfof.Name = "afinfof"
afinfof.Parent = Frame
afinfof.BackgroundColor3 = Color3.new(0.305882, 0.180392, 0.580392)
afinfof.BorderSizePixel = 0
afinfof.Position = UDim2.new(-0.376237601, 0, 0, 0)
afinfof.Size = UDim2.new(0.377611518, 0, 1, 0)

Attacking.Name = "Attacking"
Attacking.Parent = afinfof
Attacking.BackgroundColor3 = Color3.new(1, 1, 1)
Attacking.BackgroundTransparency = 1
Attacking.Position = UDim2.new(5.133478e-07, 0, 0, 0)
Attacking.Size = UDim2.new(0.996321619, 0, 0.333333343, 0)
Attacking.Font = Enum.Font.Cartoon
Attacking.Text = "Attacking..."
Attacking.TextColor3 = Color3.new(0.529412, 0.313726, 1)
Attacking.TextScaled = true
Attacking.TextSize = 14
Attacking.TextWrapped = true

teleporting.Name = "teleporting"
teleporting.Parent = afinfof
teleporting.BackgroundColor3 = Color3.new(1, 1, 1)
teleporting.BackgroundTransparency = 1
teleporting.Position = UDim2.new(5.133478e-07, 0, 0.666666865, 0)
teleporting.Size = UDim2.new(0.996321619, 0, 0.333333343, 0)
teleporting.Font = Enum.Font.Cartoon
teleporting.Text = "Health"
teleporting.TextColor3 = Color3.new(0.529412, 0.313726, 1)
teleporting.TextScaled = true
teleporting.TextSize = 14
teleporting.TextWrapped = true

aginfof.Name = "aginfof"
aginfof.Parent = Frame
aginfof.BackgroundColor3 = Color3.new(0.305882, 0.180392, 0.580392)
aginfof.BorderSizePixel = 0
aginfof.Position = UDim2.new(1.0017134, 0, 0, 0)
aginfof.Size = UDim2.new(0.374299139, 0, 1, 0)
aginfof.Visible = false

Egg.Name = "Egg"
Egg.Parent = aginfof
Egg.BackgroundColor3 = Color3.new(0.388235, 0.227451, 0.729412)
Egg.BorderSizePixel = 0
Egg.Position = UDim2.new(-0.0135407709, 0, 0, 0)
Egg.Size = UDim2.new(0.996321678, 0, 0.995780587, 0)
Egg.Font = Enum.Font.Cartoon
Egg.PlaceholderText = "Egg Name ( Do not include 'Egg'  e.g 'Space' )"
Egg.Text = ""
Egg.TextColor3 = Color3.new(0.505882, 0.301961, 0.976471)
Egg.TextScaled = true
Egg.TextSize = 14
Egg.TextWrapped = true

tp.Name = "tp"
tp.Parent = Frame
tp.BackgroundColor3 = Color3.new(0.396078, 0.231373, 0.745098)
tp.BorderSizePixel = 0
tp.Position = UDim2.new(0.657199502, 0, 0.691982985, 0)
tp.Size = UDim2.new(0.344487697, 0, 0.210970461, 0)
tp.Font = Enum.Font.Cartoon
tp.Text = "Teleport Menu"
tp.TextColor3 = Color3.new(0.517647, 0.309804, 1)
tp.TextScaled = true
tp.TextSize = 14
tp.TextStrokeColor3 = Color3.new(0.517647, 0.309804, 1)
tp.TextWrapped = true

ScrollingFrame.Parent = Frame
ScrollingFrame.BackgroundColor3 = Color3.new(0.305882, 0.180392, 0.580392)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(1.00199997, 0, 0, 0)
ScrollingFrame.Size = UDim2.new(0.374000013, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 2

UIListLayout.Parent = ScrollingFrame

template.Name = "template"
template.Parent = UIListLayout
template.BackgroundColor3 = Color3.new(0.396078, 0.231373, 0.745098)
template.BorderSizePixel = 0
template.Size = UDim2.new(1, 0,0.064, 0)
template.Font = Enum.Font.Cartoon
template.Text = "Teleport Menu"
template.TextColor3 = Color3.new(0.517647, 0.309804, 1)
template.TextScaled = true
template.TextSize = 14
template.TextStrokeColor3 = Color3.new(0.517647, 0.309804, 1)
template.TextWrapped = true
-- Scripts:
Frame.Active = true
Frame.Draggable = true
afinfo.MouseButton1Click:Connect(function()
	afinfof.Visible = not afinfof.Visible
end)
local starter = true
auton = false
local highhealth = 0
local a =0 
local att = nil
local areas = game.Workspace.Areas:Clone()
areas.Name = 'teleportation'

AutoFarm.MouseButton1Click:Connect(function()
	auton = not auton
	Attacking.Text = ''
	teleporting.Text = ''
	if auton == true then
				repeat
					wait()
					
					for _,v in pairs(game.Workspace.Areas:GetChildren()) do 
						if v:FindFirstChild("Door") ~= nil then
							starter = false
							if v.Door.Touch.Transparency == 1 then 
									a = a + 1 

									if a > 100 then 
										for _,v in pairs(game.Workspace.Areas:GetChildren()) do 
											if v.Name ~= att then 
												v.Parent = game.workspace
											end
									end
								end
								local en = v.NPCs:FindFirstChildOfClass("Model")
								game.ReplicatedStorage.Events.Npc:FireServer("Click")
								if en.Humanoid.MaxHealth > highhealth then 
									highhealth = en.Humanoid.Health
									att = en.Parent.Parent.Name
								end
								if en.Humanoid.Health > game.Players.LocalPlayer.Character.Humanoid.MaxHealth / 50 and en.Parent.Parent.Name == att then 
									repeat
										if en:FindFirstChild("Weapon") ~= nil then 
											en.Weapon:Destroy()
											en.Target:Destroy()
										end

										wait()
										
										game.ReplicatedStorage.Events.Npc:FireServer("Click")
										game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.NPCs:FindFirstChildOfClass("Model").HumanoidRootPart.CFrame + - v.NPCs:FindFirstChildOfClass("Model").HumanoidRootPart.CFrame.lookVector * 3.5		
										Attacking.Text = 'Attacking '..v.NPCs:FindFirstChildOfClass("Model").Name
										teleporting.Text = en.Name.."s' Health: "..en.Humanoid.Health..'/'..en.Humanoid.MaxHealth
						until en.Humanoid.Health == 0 or auton == false 
					end
				else
				Attacking.Text = 'Searching for best alive enemy'
				teleporting.Text = 'Searching for best alive enemy'
				end
			else
				if starter == true then
					game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.NPCs:FindFirstChildOfClass("Model").HumanoidRootPart.CFrame + - v.NPCs:FindFirstChildOfClass("Model").HumanoidRootPart.CFrame.lookVector * 3.5
					wait()
					Attacking.Text = 'Attacking '..v.NPCs:FindFirstChildOfClass("Model").Name
					teleporting.Text = 'Teleporting to '..v.NPCs:FindFirstChildOfClass("Model").Name
		end
	end
end

	until auton == false
end
end)
agon = false
AutoEgg.MouseButton1Click:Connect(function()
	agon = not agon
	if game.Workspace.Eggs:FindFirstChild(Egg.Text) ~= nil then
		
		local A_1 = "Buy"
		local A_2 = 
		{
			[1] = "Egg", 
			[2] = Egg.Text
		}
		local Event = game:GetService("ReplicatedStorage").Events.RemoteEvent
		Event:FireServer(A_1, A_2)
	else
		auton = false
		AutoEgg.Text = Egg.Text..' not found in game.Workspace.Eggs please input a real egg name.'
		wait(3)
		AutoEgg.Text = 'AutoEgg'

	end
end)
aginfo.MouseButton1Click:Connect(function()
	aginfof.Visible = not aginfof.Visible
end)
for _,v in pairs(areas:GetChildren()) do
	local copy = template:Clone()
	copy.Text = v.Name
	copy.Name = v.Name
	copy.Parent = ScrollingFrame
	copy.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Teleporter.CFrame
	end)
end

	
tp.MouseButton1Click:Connect(function()
	ScrollingFrame.Visible = not ScrollingFrame.Visible
end)