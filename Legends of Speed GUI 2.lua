-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local TextButton_6 = Instance.new("TextButton")
local Label = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.Position = UDim2.new(0.0314787589, 0, 0.147135422, 0)
Frame.Size = UDim2.new(0, 331, 0, 353)

TextButton.Parent = ScreenGui
TextButton.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton.Position = UDim2.new(0.0307467058, 0, 0.236979187, 0)
TextButton.Size = UDim2.new(0, 138, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Gain Step ON"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14

TextButton_2.Parent = ScreenGui
TextButton_2.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton_2.Position = UDim2.new(0.172767192, 0, 0.236979187, 0)
TextButton_2.Size = UDim2.new(0, 138, 0, 50)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "Gain Steps OFF"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14

TextButton_3.Parent = ScreenGui
TextButton_3.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton_3.Position = UDim2.new(0.0307467058, 0, 0.384114593, 0)
TextButton_3.Size = UDim2.new(0, 138, 0, 50)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Gain Gems ON"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14

TextButton_4.Parent = ScreenGui
TextButton_4.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton_4.Position = UDim2.new(0.172767192, 0, 0.384114593, 0)
TextButton_4.Size = UDim2.new(0, 138, 0, 50)
TextButton_4.Font = Enum.Font.SourceSans
TextButton_4.Text = "Gain Gems OFF"
TextButton_4.TextColor3 = Color3.new(0, 0, 0)
TextButton_4.TextSize = 14

TextButton_5.Parent = ScreenGui
TextButton_5.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton_5.Position = UDim2.new(0.0307467058, 0, 0.541666627, 0)
TextButton_5.Size = UDim2.new(0, 138, 0, 50)
TextButton_5.Font = Enum.Font.SourceSans
TextButton_5.Text = "Gain EXP ON"
TextButton_5.TextColor3 = Color3.new(0, 0, 0)
TextButton_5.TextSize = 14

TextButton_6.Parent = ScreenGui
TextButton_6.BackgroundColor3 = Color3.new(0, 0, 1)
TextButton_6.Position = UDim2.new(0.172767192, 0, 0.541666627, 0)
TextButton_6.Size = UDim2.new(0, 138, 0, 50)
TextButton_6.Font = Enum.Font.SourceSans
TextButton_6.Text = "Gain EXP OFF"
TextButton_6.TextColor3 = Color3.new(0, 0, 0)
TextButton_6.TextSize = 14

Label.Name = "Label"
Label.Parent = ScreenGui
Label.BackgroundColor3 = Color3.new(0, 0, 1)
Label.Position = UDim2.new(0.0556368828, 0, 0.147135422, 0)
Label.Size = UDim2.new(0, 265, 0, 50)
Label.Font = Enum.Font.SourceSans
Label.Text = "Made by Link on NOVO (Be sure to vouch and rep!)"
Label.TextColor3 = Color3.new(0, 0, 0)
Label.TextSize = 14
-- Scripts:
function SCRIPT_VUXK79_FAKESCRIPT() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton
	script.Parent.MouseButton1Click:connect(function()
		_G.StepFarm = true
	while _G.StepFarm == true do 
	local A_1 = "collectOrb"
	local A_2 = "Red Orb"
	local A_3 = "City"
	local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
	Event:FireServer(A_1, A_2, A_3)
	wait()	
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_VUXK79_FAKESCRIPT))
function SCRIPT_FPSF76_FAKESCRIPT() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_2
	script.Parent.MouseButton1Click:Connect(function()
		_G.StepFarm = false
	while _G.StepFarm == true do 
	local A_1 = "collectOrb"
	local A_2 = "Red Orb"
	local A_3 = "City"
	local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
	Event:FireServer(A_1, A_2, A_3)
	wait()	
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_FPSF76_FAKESCRIPT))
function SCRIPT_PTUP75_FAKESCRIPT() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_3
	script.Parent.MouseButton1Click:Connect(function()
		_G.GemFarm = true
	while _G.GemFarm == true do 
		local A_1 = "collectOrb"
	local A_2 = "Gem"
	local A_3 = "City"
	local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
	Event:FireServer(A_1, A_2, A_3)
	wait()
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_PTUP75_FAKESCRIPT))
function SCRIPT_KBDS79_FAKESCRIPT() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_4
	script.Parent.MouseButton1Click:Connect(function()
		_G.GemFarm = false
	while _G.GemFarm == true do 
		local A_1 = "collectOrb"
	local A_2 = "Gem"
	local A_3 = "City"
	local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
	Event:FireServer(A_1, A_2, A_3)
	wait()
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_KBDS79_FAKESCRIPT))
function SCRIPT_PLAH83_FAKESCRIPT() -- TextButton_5.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_5
	script.Parent.MouseButton1Click:Connect(function()
		_G.EXPFarm = true
	while _G.EXPFarm == true do 
	local A_1 = "collectOrb"
	local A_2 = "Yellow Orb"
	local A_3 = "City"
	local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
	Event:FireServer(A_1, A_2, A_3)
	wait()
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_PLAH83_FAKESCRIPT))
function SCRIPT_BOOI79_FAKESCRIPT() -- TextButton_6.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_6
	script.Parent.MouseButton1Click:Connect(function()
		_G.EXPFarm = false
	while _G.EXPFarm == true do 
	local A_1 = "collectOrb"
	local A_2 = "Yellow Orb"
	local A_3 = "City"
	local Event = game:GetService("ReplicatedStorage").rEvents.orbEvent
	Event:FireServer(A_1, A_2, A_3)
	wait()
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BOOI79_FAKESCRIPT))