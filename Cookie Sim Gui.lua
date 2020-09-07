-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local CookieSim = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextButton_4 = Instance.new("TextButton")
local TextButton_5 = Instance.new("TextButton")
local a = Instance.new("TextBox")
local n = Instance.new("TextBox")
local TextButton_6 = Instance.new("TextButton")
local TextButton_7 = Instance.new("TextButton")
--Properties:
CookieSim.Name = "CookieSim"
CookieSim.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
CookieSim.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = CookieSim
Frame.BackgroundColor3 = Color3.new(0.0862745, 0.682353, 0.929412)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.510976553, 0, 0.431750745, 0)
Frame.Size = UDim2.new(0.302800894, 0, 0.296735913, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Size = UDim2.new(1, 0, 0.25, 0)
TextLabel.Font = Enum.Font.Cartoon
TextLabel.Text = "Cookie Simulator"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0, 0, 0.25, 0)
TextButton.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
TextButton.Font = Enum.Font.Cartoon
TextButton.Text = "Auto-Farm Cookies"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.75, 0)
TextButton_2.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
TextButton_2.Font = Enum.Font.Cartoon
TextButton_2.Text = "Auto-Farm Gems"
TextButton_2.TextColor3 = Color3.new(1, 1, 1)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14
TextButton_2.TextWrapped = true

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
TextButton_3.BorderSizePixel = 0
TextButton_3.Position = UDim2.new(0, 0, 0.5, 0)
TextButton_3.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
TextButton_3.Font = Enum.Font.Cartoon
TextButton_3.Text = "Auto-Rebirth"
TextButton_3.TextColor3 = Color3.new(1, 1, 1)
TextButton_3.TextScaled = true
TextButton_3.TextSize = 14
TextButton_3.TextWrapped = true

TextButton_4.Parent = Frame
TextButton_4.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
TextButton_4.BorderSizePixel = 0
TextButton_4.Position = UDim2.new(0.300000012, 0, 0.5, 0)
TextButton_4.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
TextButton_4.Font = Enum.Font.Cartoon
TextButton_4.Text = "Spawn Coins"
TextButton_4.TextColor3 = Color3.new(1, 1, 1)
TextButton_4.TextScaled = true
TextButton_4.TextSize = 14
TextButton_4.TextWrapped = true

TextButton_5.Parent = Frame
TextButton_5.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
TextButton_5.BorderSizePixel = 0
TextButton_5.Position = UDim2.new(0.300000012, 0, 0.25, 0)
TextButton_5.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
TextButton_5.Font = Enum.Font.Cartoon
TextButton_5.Text = "Spawn  Gems"
TextButton_5.TextColor3 = Color3.new(1, 1, 1)
TextButton_5.TextScaled = true
TextButton_5.TextSize = 14
TextButton_5.TextWrapped = true

a.Name = "a"
a.Parent = Frame
a.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
a.BorderSizePixel = 0
a.Position = UDim2.new(0.600000024, 0, 0.25, 0)
a.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
a.Font = Enum.Font.SourceSans
a.PlaceholderText = "Amount Of Eggs to open"
a.Text = ""
a.TextColor3 = Color3.new(0, 0, 0)
a.TextScaled = true
a.TextSize = 14
a.TextWrapped = true

n.Name = "n"
n.Parent = Frame
n.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
n.BorderSizePixel = 0
n.Position = UDim2.new(0.600000024, 0, 0.5, 0)
n.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
n.Font = Enum.Font.SourceSans
n.PlaceholderText = "Egg Name"
n.Text = ""
n.TextColor3 = Color3.new(0, 0, 0)
n.TextScaled = true
n.TextSize = 14
n.TextWrapped = true

TextButton_6.Parent = Frame
TextButton_6.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
TextButton_6.BorderSizePixel = 0
TextButton_6.Position = UDim2.new(0.600000024, 0, 0.75, 0)
TextButton_6.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
TextButton_6.Font = Enum.Font.Cartoon
TextButton_6.Text = "Auto-Egg"
TextButton_6.TextColor3 = Color3.new(1, 1, 1)
TextButton_6.TextScaled = true
TextButton_6.TextSize = 14
TextButton_6.TextWrapped = true

TextButton_7.Parent = Frame
TextButton_7.BackgroundColor3 = Color3.new(0.0588235, 0.513726, 0.690196)
TextButton_7.BorderSizePixel = 0
TextButton_7.Position = UDim2.new(0.300000012, 0, 0.75, 0)
TextButton_7.Size = UDim2.new(0.25999999, 0, 0.194999993, 0)
TextButton_7.Font = Enum.Font.Cartoon
TextButton_7.Text = "Auto Collect Achievements"
TextButton_7.TextColor3 = Color3.new(1, 1, 1)
TextButton_7.TextScaled = true
TextButton_7.TextSize = 14
TextButton_7.TextWrapped = true
-- Scripts:
local max = 0 
local sell = nil
for _,v in pairs(game.Workspace.SellParts:GetChildren()) do 
	if v.Multiplier.Value > max then 
		max = v.Multiplier.Value
		sell = v
	end
end

function SCRIPT_NZGG67_FAKESCRIPT() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton
	local on = false
	script.Parent.MouseButton1Click:Connect(function()
		on = not on 
		repeat
			wait()

			sell.CanCollide = false
			sell.CFrame = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).UpperTorso.CFrame
			game.Workspace:WaitForChild(game.Players.LocalPlayer.Name).Humanoid.Jump = true
			local A_1 = "c44ff05805c1a282cb852411fb39f08e"
			local Event = game:GetService("ReplicatedStorage").Events.ActivatedTool
			Event:FireServer(A_1)
		until on == false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_NZGG67_FAKESCRIPT))
function SCRIPT_XVYO90_FAKESCRIPT() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_2
	local on = false
	script.Parent.MouseButton1Click:Connect(function()
		on = not on 
		repeat
			wait(1)
	
			for _,v in pairs(game.Workspace.Orbs:GetDescendants()) do 
				if v.Name == 'MeshPart' then 
					v.CFrame = game.Players.LocalPlayer.Character.UpperTorso.CFrame
					wait()
				end
			end
		until on == false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XVYO90_FAKESCRIPT))
function SCRIPT_UTND68_FAKESCRIPT() -- TextButton_3.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_3
	script.Parent.MouseButton1Click:Connect(function()
		on = not on 
		repeat
			wait()
	
			local Event = game:GetService("ReplicatedStorage").Events.PurchaseRebirth
			Event:FireServer()
	
		until on == false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_UTND68_FAKESCRIPT))
function SCRIPT_KTZW87_FAKESCRIPT() -- TextButton_4.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_4

	script.Parent.MouseButton1Click:Connect(function()
		local A_1 = "Icy Egg"
		local A_2 = -3000000
		local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
		Event:InvokeServer(A_1, A_2)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_KTZW87_FAKESCRIPT))
function SCRIPT_BFZV80_FAKESCRIPT() -- TextButton_5.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_5
	script.Parent.MouseButton1Click:Connect(function()
		local A_1 = "Ancient Egg"
		local A_2 = -3000000
		local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
		Event:InvokeServer(A_1, A_2)
	
	end)
	local on = false


end
coroutine.resume(coroutine.create(SCRIPT_BFZV80_FAKESCRIPT))
function SCRIPT_AATS85_FAKESCRIPT() -- TextButton_6.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_6
	local on = false
	script.Parent.MouseButton1Click:Connect(function()
		on = not on 
		repeat
			wait()
			local A_1 = script.Parent.Parent.n.Text
			local A_2 = tonumber(script.Parent.Parent.a.Text)
			local Event = game:GetService("ReplicatedStorage").Events.PurchaseEgg
			Event:InvokeServer(A_1, A_2)
	
		until on == false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_AATS85_FAKESCRIPT))
function SCRIPT_KGEQ72_FAKESCRIPT() -- TextButton_7.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = TextButton_7
	local on = false
	script.Parent.MouseButton1Click:Connect(function()
		on = not on
		repeat
			wait()
	
			local A_1 = "Crumbs Eater"
			local Event = game:GetService("ReplicatedStorage").Events.CollectAchievement
			Event:FireServer(A_1)
	
			local A_1 = "Coin Collector"
			local Event = game:GetService("ReplicatedStorage").Events.CollectAchievement
			Event:FireServer(A_1)
	
			local A_1 = "Gem Collector"
			local Event = game:GetService("ReplicatedStorage").Events.CollectAchievement
			Event:FireServer(A_1)
	
			local A_1 = "Egg Hatcher"
			local Event = game:GetService("ReplicatedStorage").Events.CollectAchievement
			Event:FireServer(A_1)
	
		until on == false
	end)

end
coroutine.resume(coroutine.create(SCRIPT_KGEQ72_FAKESCRIPT))
function SCRIPT_DWDQ87_FAKESCRIPT() -- Frame.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = Frame
	script.Parent.Active =true
	script.Parent.Draggable = true

end
coroutine.resume(coroutine.create(SCRIPT_DWDQ87_FAKESCRIPT))