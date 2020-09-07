-- reav
local ok = false
local player = game.Players.LocalPlayer

-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
-- Properties

ScreenGui.Parent = game:GetService("CoreGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.301961, 0.301961, 0.301961)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0.172302201, 0, 0.29214862, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 299, 0, 233)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextButton.Position = UDim2.new(0.0327655859, 0, 0.337103128, 0)
TextButton.Size = UDim2.new(0, 279, 0, 74)
TextButton.Font = Enum.Font.SciFi
TextButton.Text = "FARM = OFF"
TextButton.TextColor3 = Color3.new(0.541176, 0, 0)
TextButton.TextSize = 50

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(-0.00161084533, 0, -0.00398874283, 0)
TextLabel.Size = UDim2.new(0, 299, 0, 25)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "| Rebirth Farm and Sell | by reav"
TextLabel.TextColor3 = Color3.new(0.439216, 0.709804, 0)
TextLabel.TextSize = 14

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
TextLabel_2.BackgroundTransparency = 100
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.Position = UDim2.new(-0.00572396815, 0, 0.843203187, 0)
TextLabel_2.Size = UDim2.new(0, 299, 0, 25)
TextLabel_2.Font = Enum.Font.SciFi
TextLabel_2.Text = "⛏ DESTRUCTION SIMULATOR ⛏"
TextLabel_2.TextColor3 = Color3.new(1, 1, 0)
TextLabel_2.TextSize = 20

TextButton.MouseButton1Down:connect(function()
	if ok then
		TextButton.Text = "FARM = OFF"
		TextButton.TextColor3 = Color3.new(0.541176, 0, 0)
	else
		TextButton.Text = "FARM = ON"
		TextButton.TextColor3 = Color3.fromRGB(0, 134, 0)
	end
	ok = not ok
end)

while wait() do 
	if ok then
		for u,z in pairs(workspace.Interactives:GetChildren()) do 
			if z.Name == "Sell" then 
				z.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame+Vector3.new(0,0,0)
			end
		end
		for i,v in pairs(workspace.Clickable.Rebirth1:GetDescendants()) do 
			if v.ClassName == "MeshPart" or v.ClassName == "UnionOperation" or v.ClassName == "Part" then
				game:GetService("ReplicatedStorage").Resources.RemoteEvents.Click:FireServer(workspace[player.Name]:FindFirstChildWhichIsA("Tool"), v)
			end
		end
		for i,v in pairs(workspace.Clickable.Rebirth:GetDescendants()) do 
			if v.ClassName == "MeshPart" or v.ClassName == "Part" then
				game:GetService("ReplicatedStorage").Resources.RemoteEvents.Click:FireServer(workspace[player.Name]:FindFirstChildWhichIsA("Tool"), v)
			end
		end
		for i,v in pairs(workspace.Clickable.Tenth:GetDescendants()) do 
			if v.ClassName == "MeshPart" then
				game:GetService("ReplicatedStorage").Resources.RemoteEvents.Click:FireServer(workspace[player.Name]:FindFirstChildWhichIsA("Tool"), v)
			end
		end
	end
end



-- reav