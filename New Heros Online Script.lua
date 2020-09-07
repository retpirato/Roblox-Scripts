-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local ImageLabel = Instance.new("ImageLabel")
local TextButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local Frame_4 = Instance.new("Frame")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
--Properties:
ScreenGui.Parent = game.CoreGui

ImageLabel.Parent = ScreenGui
ImageLabel.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
ImageLabel.BorderColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
ImageLabel.Position = UDim2.new(0.527415812, 0, 0.238774195, 0)
ImageLabel.Size = UDim2.new(0, 278, 0, 284)
ImageLabel.Image = "rbxassetid://585867512"
ImageLabel.ImageColor3 = Color3.new(0.117647, 0.117647, 0.117647)

ImageLabel.Active = true
ImageLabel.Draggable = true
TextButton.Parent = ImageLabel
TextButton.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
TextButton.BorderColor3 = Color3.new(0.235294, 0.235294, 0.235294)
TextButton.Size = UDim2.new(0, 277, 0, 33)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "My Hero Online"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextSize = 24

Frame.Parent = ImageLabel
Frame.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame.BorderColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Frame.Position = UDim2.new(0.0177889504, 0, 0.138507694, 0)
Frame.Size = UDim2.new(0, 266, 0, 236)

Frame_2.Parent = ImageLabel
Frame_2.BackgroundColor3 = Color3.new(0.152941, 0.152941, 0.152941)
Frame_2.BorderColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Frame_2.Position = UDim2.new(0.0322381966, 0, 0.152592197, 0)
Frame_2.Size = UDim2.new(0, 256, 0, 228)

Frame_3.Parent = ImageLabel
Frame_3.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame_3.BorderColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Frame_3.Position = UDim2.new(0.0547355823, 0, 0.1666767, 0)
Frame_3.Size = UDim2.new(0, 246, 0, 11)

Frame_4.Parent = ImageLabel
Frame_4.BackgroundColor3 = Color3.new(0.235294, 0.235294, 0.235294)
Frame_4.BorderColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Frame_4.Position = UDim2.new(0.047541339, 0, 0.895549953, 0)
Frame_4.Size = UDim2.new(0, 246, 0, 11)

TextButton_2.Parent = ImageLabel
TextButton_2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_2.BorderColor3 = Color3.new(0, 0, 0)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.129496396, 0, 0.281690121, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 32)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Quest Npc"
TextButton_2.TextColor3 = Color3.new(1, 1, 1)
TextButton_2.TextSize = 24

TextButton_2.MouseButton1Down:connect(function()
	local char = game.Players.LocalPlayer.Character.HumanoidRootPart

char.CFrame = CFrame.new(994.317, 144.22, 409.306)
wait(0.5)
	
end)

TextButton_3.Parent = ImageLabel
TextButton_3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
TextButton_3.BorderColor3 = Color3.new(0, 0, 0)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0.129496396, 0, 0.443661958, 0)
TextButton_3.Size = UDim2.new(0, 200, 0, 32)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Infinite Level /  Coins"
TextButton_3.TextColor3 = Color3.new(1, 1, 1)
TextButton_3.TextSize = 24
TextButton_3.MouseButton1Down:connect(function()
	
	 while true do
wait()
local A_1 = game:GetService("Players").LocalPlayer.Backpack["Defeat Brett"]
local A_2 = 1000000
local A_3 = 1000000
local Event = game:GetService("ReplicatedStorage").Events.Character.QuestComplete
Event:FireServer(A_1, A_2, A_3)
end

end)


TextButton_4.Parent = ImageLabel
TextButton_4.BackgroundColor3 = Color3.new(0.27451, 0.27451, 0.27451)
TextButton_4.BackgroundTransparency = 1
TextButton_4.BorderColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
TextButton_4.Position = UDim2.new(0.129496396, 0, 0.616197169, 0)
TextButton_4.Size = UDim2.new(0, 200, 0, 56)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Tp To Quest Get The Quest // Go To Brutte Kill Him // and you should get your level"
TextButton_4.TextColor3 = Color3.new(1, 1, 1)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14
TextButton_4.TextWrapped = true
-- Scripts: