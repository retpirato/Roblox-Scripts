-- made by xFunnieuss
-- Script (do not modify)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Off = Instance.new("TextButton")
local On = Instance.new("TextButton")
ScreenGui.Parent = game:GetService('CoreGui')
ScreenGui.Name = "blinkgui"
Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0.027451, 0.823529, 1)
Frame.BorderSizePixel = 5
Frame.Draggable = true
Frame.Position = UDim2.new(0.0222392641, 0, 0.790732443, 0)
Frame.Size = UDim2.new(0, 343, 0, 106)
TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.183673471, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 217, 0, 40)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "FE Blink GUI By xFunnieuss"
TextLabel.TextSize = 16
Off.Parent = Frame
Off.BackgroundColor3 = Color3.new(1, 1, 1)
Off.BackgroundTransparency = 1
Off.Position = UDim2.new(0.548104942, 0, 0.377358496, 0)
Off.Size = UDim2.new(0, 138, 0, 49)
Off.Font = Enum.Font.Code
Off.Text = "Off"
Off.TextSize = 20
On.Parent = Frame
On.BackgroundColor3 = Color3.new(1, 1, 1)
On.BackgroundTransparency = 1
On.Position = UDim2.new(0.0612244904, 0, 0.377358496, 0)
On.Size = UDim2.new(0, 134, 0, 49)
On.Font = Enum.Font.Code
On.Text = "On"
On.TextSize = 20
On.MouseButton1Down:connect(function()
local fat = Instance.new'Animation'
fat.AnimationId = 'rbxassetid://218504594'
game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(fat):Play(0,0,0)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Anchored = true
fat:Destroy()
game:GetService('StarterGui'):SetCore("SendNotification", {Title = "Blink GUI Notification", Text = "Blink Is On, Press OFF to return to normal!"})
end)
Off.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.Anchored = false
        game:GetService('StarterGui'):SetCore("SendNotification", {Title = "Blink GUI Notification", Text = "Blink Is Off, You have returned back to normal"})
end)