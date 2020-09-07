wait(0.5)
local DBZFS = Instance.new("ScreenGui")
local dragon = Instance.new("Frame")
local dbpress = Instance.new("TextButton")
local Block2 = Instance.new("TextLabel")
local Block1 = Instance.new("TextLabel")
local line1 = Instance.new("TextLabel")
local line2 = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
--Properties:
DBZFS.Name = "DBZ:FS"
DBZFS.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

dragon.Name = "dragon"
dragon.Parent = DBZFS
dragon.BackgroundColor3 = Color3.new(1, 1, 1)
dragon.BorderSizePixel = 0
dragon.Position = UDim2.new(0.00658857962, 0, 0.0479233228, 0)
dragon.Size = UDim2.new(0, 241, 0, 36)

dbpress.Name = "dbpress"
dbpress.Parent = dragon
dbpress.BackgroundColor3 = Color3.new(0, 0, 0)
dbpress.BackgroundTransparency = 0.30000001192093
dbpress.BorderSizePixel = 0
dbpress.Position = UDim2.new(0.100800917, 0, -0.0270270277, 0)
dbpress.Size = UDim2.new(0, 194, 0, 38)
dbpress.Font = Enum.Font.Code
dbpress.Text = "TP To Dragon Ball Locations"
dbpress.TextColor3 = Color3.new(1, 1, 1)
dbpress.TextScaled = true
dbpress.TextSize = 14
dbpress.TextWrapped = true

Block2.Name = "Block2"
Block2.Parent = dragon
Block2.BackgroundColor3 = Color3.new(0.27451, 0.721569, 1)
Block2.BorderSizePixel = 0
Block2.Position = UDim2.new(0, 0, -0.0270270277, 0)
Block2.Size = UDim2.new(0, 24, 0, 38)
Block2.Font = Enum.Font.SourceSans
Block2.Text = ""
Block2.TextColor3 = Color3.new(0, 0, 0)
Block2.TextSize = 14

Block1.Name = "Block1"
Block1.Parent = dragon
Block1.BackgroundColor3 = Color3.new(0.27451, 0.721569, 1)
Block1.BorderSizePixel = 0
Block1.Position = UDim2.new(0.900414944, 0, -0.027777778, 0)
Block1.Size = UDim2.new(0, 24, 0, 37)
Block1.Font = Enum.Font.SourceSans
Block1.Text = ""
Block1.TextColor3 = Color3.new(0, 0, 0)
Block1.TextSize = 14

line1.Name = "line1"
line1.Parent = dragon
line1.BackgroundColor3 = Color3.new(1, 1, 1)
line1.BorderSizePixel = 0
line1.Position = UDim2.new(0, 0, -0.027777778, 0)
line1.Size = UDim2.new(0, 241, 0, 1)
line1.Font = Enum.Font.SourceSans
line1.Text = ""
line1.TextColor3 = Color3.new(0, 0, 0)
line1.TextSize = 14

line2.Name = "line2"
line2.Parent = dragon
line2.BackgroundColor3 = Color3.new(1, 1, 1)
line2.BorderSizePixel = 0
line2.Position = UDim2.new(0, 0, 0.972222209, 0)
line2.Size = UDim2.new(0, 241, 0, 1)
line2.Font = Enum.Font.SourceSans
line2.Text = ""
line2.TextColor3 = Color3.new(0, 0, 0)
line2.TextSize = 14

Frame.Parent = DBZFS
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 0.30000001192093
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.360907763, 0, 0.333865821, 0)
Frame.Size = UDim2.new(0, 349, 0, 175)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.89999997615814
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0171919763, 0, 0.034285713, 0)
TextLabel.Size = UDim2.new(0, 337, 0, 163)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "Welcome to my DBZ:FS Gui! This will teleport you to the dragon ball locations, remember to be aware they may be taken already."
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
-- Scripts:
function SCRIPT_PNUC71_FAKESCRIPT() -- dbpress.dbsc 
	getfenv().script = Instance.new('Script', dbpress)

	script.Parent.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1140.90027, -23.1800003, -2040.11353))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2524.91138, 193.692795, 429.584412))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-6556.34424, 60.1363754, -854.043396))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1495.04956, -22.9246483, 601.3479))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2331.55298, 27.1572895, -2123.86572))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-3184.27783, 41.3880043, 623.789795))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2587.06812, 21.0628529, -4127.20459))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-477.929626, 389.398285, -7238.94092))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-4428.46875, 18.5274315, -3126.84277))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(768.047485, 21.1128502, -2355.19165))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(457.984253, 282.424072, 506.205688))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(2643.48047, 4007.99658, -2273.48022))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2074.33813, 33.9032097, -2085.66821))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1123.45776, -229246483, -2031.03894))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-667.833435, 22.6658115, -3406.04028))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-3455.88843, 23.591814, -7706.979))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1552.49622, 40.3661537, -3372.01318))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(891.342957, 133.485794, 861.494141))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-6221.97266, 21.0628529, -4201.08594))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-5628.59277, 41.7720947, 206.396606))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-5146.2334, -23.4094143, -185.846024))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-4056.19995, 36.1602745, 1575.13562))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-3579.63599, 30.1973209, 1697.7334))
	wait(10)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(105.88678, 173.891296, 408.767792))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(61.5796089, 251.681992, 1191.1394))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-3080.59668, 60.2102852, -917677368))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-1927.53015, 309.072052, -3873.96582))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-2042.13916, 23.0597382, -6796.07275))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-708.184509, 25.6628914, -6526.2790))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(418.316925, 21.0628529, -1663.07666))
	wait(8)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(1229.698, 23.0632572, -2695.86792))
	end)

end
coroutine.resume(coroutine.create(SCRIPT_PNUC71_FAKESCRIPT))
function SCRIPT_BWFH78_FAKESCRIPT() -- Frame.scripty 
	getfenv().script = Instance.new('Script', Frame)

	wait(2)
	script.Parent.Transparency =  0.1
	script.Parent.TextLabel.Transparency = 0.1
	wait(0.1)
	script.Parent.Transparency =  0.2
	script.Parent.TextLabel.Transparency = 0.2
	wait(0.1)
	script.Parent.Transparency =  0.3
	script.Parent.TextLabel.Transparency = 0.3
	wait(0.1)
	script.Parent.Transparency =  0.4
	script.Parent.TextLabel.Transparency = 0.4
	wait(0.1)
	script.Parent.Transparency =  0.5
	script.Parent.TextLabel.Transparency = 0.5
	wait(0.1)
	script.Parent.Transparency =  0.6
	script.Parent.TextLabel.Transparency = 0.6
	wait(0.1)
	script.Parent.Transparency =  0.7
	script.Parent.TextLabel.Transparency = 0.7
	wait(0.1)
	script.Parent.Transparency =  0.8
	script.Parent.TextLabel.Transparency = 0.8
	wait(0.1)
	script.Parent.Transparency =  0.9
	script.Parent.TextLabel.Transparency = 0.9
	wait(0.1)
	script.Parent.Transparency =  1
	script.Parent.TextLabel.Transparency = 1

end
coroutine.resume(coroutine.create(SCRIPT_BWFH78_FAKESCRIPT))