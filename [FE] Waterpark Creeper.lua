-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.75456202, 0, 0.561264813, 0)
Frame.Size = UDim2.new(0, 193, 0, 204)
Frame.Active = true
Frame.Draggable = true
Frame.Selectable = true

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.580392, 0.580392, 0.580392)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 193, 0, 25)

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(0.435294, 0.435294, 0.435294)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0, 0, 0.124604687, 0)
Frame_3.Size = UDim2.new(0, 193, 0, 15)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.270588, 0.690196, 0.176471)
TextButton.BackgroundTransparency = 0.0099999997764826
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.108808294, 0, 0.416666657, 0)
TextButton.Size = UDim2.new(0, 150, 0, 50)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Creeper (Q to explode)"
TextButton.TextSize = 14

TextButton.MouseButton1Click:connect(function()
	local Char = game.Players.LocalPlayer.Character
	Char.LeftHand:Destroy()
	Char.LeftLowerArm:Destroy()
	Char.LeftUpperArm:Destroy()
	Char.RightHand:Destroy()
	Char.RightLowerArm:Destroy()
	Char.RightUpperArm:Destroy()
	Char.Humanoid.WalkSpeed = 40
	
	local m = game.Players.LocalPlayer:GetMouse()
db = true
m.KeyDown:connect(function(k)
	k = k:lower()
	if k == "q" then
		if db == true then
			game.ReplicatedStorage.ClothingService:FireServer("Hat", 001527622 )
			db = false
			wait(.5)
			db = true
		end
	end
end)
end)