 --sexy lego women oh yes
 --CrazyExploitz made this shit in -0.5 seconds.
if game.CoreGui:FindFirstChild("waterparkhax") then
game.CoreGui:FindFirstChild("waterpackhax"):Destroy()
end
 -- Objects

local waterparkhax = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")

-- Properties

waterparkhax.Name = "waterpark hax"
waterparkhax.Parent = game.CoreGui
waterparkhax.ResetOnSpawn = false

Frame.Parent = waterparkhax
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BackgroundTransparency = 0.30000001192093
Frame.Position = UDim2.new(0.0185873602, 0, 0.406779647, 0)
Frame.Size = UDim2.new(0, 319, 0, 239)
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 0.172549, 0.172549)
TextButton.BackgroundTransparency = 0.89999997615814
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.184952989, 0, 0.274094671, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Creeper"
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true
TextButton.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Head.Mesh:Destroy()
game.Players.LocalPlayer.Character.LeftHand:Destroy()
game.Players.LocalPlayer.Character.LeftLowerArm:Destroy()
game.Players.LocalPlayer.Character.LeftUpperArm:Destroy()
game.Players.LocalPlayer.Character.RightHand:Destroy()
game.Players.LocalPlayer.Character.RightLowerArm:Destroy()
game.Players.LocalPlayer.Character.RightUpperArm:Destroy()
end)

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(1, 0.172549, 0.172549)
TextButton_2.BackgroundTransparency = 0.89999997615814
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0.184952989, 0, 0.614864409, 0)
TextButton_2.Size = UDim2.new(0, 200, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Explode"
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true
TextButton_2.MouseButton1Click:connect(function()
    game.ReplicatedStorage.ClothingService:FireServer("Hat", 001527622 )
end)
TextLabel.Parent = Frame
TextLabel.Active = true
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 0.5
TextLabel.Size = UDim2.new(0, 319, 0, 50)
TextLabel.Font = Enum.Font.Highway
TextLabel.Text = "Waterpark Hax Basic         CrazyExploitz and JMMouse"
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextTransparency = 0.10000000149012
TextLabel.TextWrapped = true

-- Scripts