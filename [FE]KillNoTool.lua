local ScreenGui = Instance.new("ScreenGui")
local ui = Instance.new("Frame")
local title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Username = Instance.new("TextBox")
local Kill = Instance.new("TextButton")
local cred = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Parent = ScreenGui
ui.Active = true
ui.BackgroundColor3 = Color3.new(1, 1, 1)
ui.BackgroundTransparency = 0.20000000298023
ui.BorderSizePixel = 3
ui.Position = UDim2.new(0.254972845, 0, 0.419703096, 0)
ui.Size = UDim2.new(0, 535, 0, 283)

title.Name = "title"
title.Parent = ui
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.BorderSizePixel = 2
title.Position = UDim2.new(0, 0, 0.0199999996, 0)
title.Size = UDim2.new(1, 0, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "FE KILL"
title.TextColor3 = Color3.new(0, 0, 0)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

Frame.Parent = title
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.25, 0, 0.860000014, 0)
Frame.Size = UDim2.new(0.5, 0, 0, 3)

Username.Name = "Username"
Username.Parent = ui
Username.BackgroundColor3 = Color3.new(1, 1, 1)
Username.BorderSizePixel = 0
Username.Position = UDim2.new(0.100000001, 0, 0.300000012, 0)
Username.Size = UDim2.new(0.800000012, 0, 0, 50)
Username.Font = Enum.Font.SourceSans
Username.PlaceholderText = "Name"
Username.Text = ""
Username.TextColor3 = Color3.new(0, 0, 0)
Username.TextScaled = true
Username.TextSize = 14
Username.TextWrapped = true

Kill.Name = "Kill"
Kill.Parent = ui
Kill.BackgroundColor3 = Color3.new(1, 1, 1)
Kill.BackgroundTransparency = 0.20000000298023
Kill.BorderSizePixel = 2
Kill.Position = UDim2.new(0.25, 0, 0.529999971, 0)
Kill.Size = UDim2.new(0.5, 0, 0, 50)
Kill.Font = Enum.Font.Gotham
Kill.Text = "KILL"
Kill.TextColor3 = Color3.new(0, 0, 0)
Kill.TextScaled = true
Kill.TextSize = 14
Kill.TextWrapped = true

cred.Name = "cred"
cred.Parent = ui
cred.BackgroundColor3 = Color3.new(1, 1, 1)
cred.BackgroundTransparency = 1
cred.BorderSizePixel = 2
cred.Position = UDim2.new(0.0500000007, 0, 0.769999981, 0)
cred.Size = UDim2.new(0.899999976, 0, 0, 50)
cred.Font = Enum.Font.SourceSans
cred.Text = "Credits to Cyclically, Thunder Mods"
cred.TextColor3 = Color3.new(0, 0, 0)
cred.TextScaled = true
cred.TextSize = 14
cred.TextWrapped = true
ui.Draggable = true

-- creds to Hamiii for the plr finder
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local function RemoveSpaces(String)
	return String:gsub("%s+", "") or String
end

local function FindPlayer(String)
	String = RemoveSpaces(String)
	for _, _Player in pairs(Players:GetPlayers()) do
		if _Player.Name:lower():match('^'.. String:lower()) then
			return _Player
		end
	end
	return nil
end

Kill.MouseButton1Click:Connect(function()
	local Target = FindPlayer(Username.Text)
	if Target and Target.Character then
		local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
		local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("UpperTorso")
		
		local savepos = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
	    Torso.Anchored = true
	    local tool = Instance.new("Tool", LocalPlayer.Backpack)
	    local hat = LocalPlayer.Character:FindFirstChildOfClass("Accessory")
	    local hathandle = hat.Handle
	    hathandle.Parent = tool
	    hathandle.Massless = true
	    tool.GripPos = Vector3.new(0, 9e99, 0)
	    tool.Parent = LocalPlayer.Character
	    repeat wait() until LocalPlayer.Character:FindFirstChildOfClass("Tool") ~= nil
	    tool.Grip = CFrame.new(Vector3.new(0, 0, 0))
		Torso.Anchored = false
	    repeat LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Target.Character:FindFirstChild("HumanoidRootPart").CFrame wait()
	    until Target.Character == nil or Target.Character:FindFirstChild("Humanoid").Health <= 0 or LocalPlayer.Character == nil or LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0 or (Target.Character:FindFirstChild("HumanoidRootPart").Velocity.magnitude - Target.Character:FindFirstChild("Humanoid").WalkSpeed) > (Target.Character:FindFirstChild("Humanoid").WalkSpeed + 20)
	    LocalPlayer.Character:FindFirstChild("Humanoid"):UnequipTools()
	    hathandle.Parent = hat
	    hathandle.Massless = false
	    tool:Destroy()
	    LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = savepos
	else
		warn'no player found named like that or he has no char'
	end
end)