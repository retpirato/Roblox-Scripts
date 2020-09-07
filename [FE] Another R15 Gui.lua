-- Objects

local FEGui = Instance.new("ScreenGui")
local mainWindow = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local PlayerName = Instance.new("TextBox")
local Teleport = Instance.new("TextButton")
local Invisible = Instance.new("TextButton")
local Cut = Instance.new("TextButton")
local Drop = Instance.new("TextButton")

-- Properties

FEGui.Name = "FE Gui"
FEGui.Parent = game.CoreGui

mainWindow.Name = "mainWindow"
mainWindow.Parent = FEGui
mainWindow.BackgroundColor3 = Color3.new(0.380392, 0.380392, 0.380392)
mainWindow.BackgroundTransparency = 0.34999999403954
mainWindow.BorderSizePixel = 0
mainWindow.Position = UDim2.new(0, 0, 0, 290)
mainWindow.Size = UDim2.new(0, 281, 0, 148)

Title.Name = "Title"
Title.Parent = FEGui
Title.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Title.BackgroundTransparency = 0.34999999403954
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0, 0, 0, 290)
Title.Size = UDim2.new(0, 245, 0, 21)
Title.Font = Enum.Font.SourceSans
Title.FontSize = Enum.FontSize.Size18
Title.Text = "    FE Gui By Phemzyx"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left

CloseButton.Name = "CloseButton"
CloseButton.Parent = FEGui
CloseButton.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
CloseButton.BackgroundTransparency = 0.34999999403954
CloseButton.BorderSizePixel = 0
CloseButton.Position = UDim2.new(0, 249, 0, 290)
CloseButton.Size = UDim2.new(0, 32, 0, 21)
CloseButton.FontSize = Enum.FontSize.Size14
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 0, 0)
CloseButton.TextScaled = true
CloseButton.TextSize = 14
CloseButton.TextStrokeTransparency = 0
CloseButton.TextWrapped = true

PlayerName.Name = "PlayerName"
PlayerName.Parent = FEGui
PlayerName.BackgroundColor3 = Color3.new(0.709804, 0.709804, 0.709804)
PlayerName.BackgroundTransparency = 0.60000002384186
PlayerName.BorderSizePixel = 0
PlayerName.Position = UDim2.new(0, 5, 0, 320)
PlayerName.Size = UDim2.new(0, 199, 0, 19)
PlayerName.Font = Enum.Font.SourceSans
PlayerName.FontSize = Enum.FontSize.Size14
PlayerName.Text = ""
PlayerName.TextSize = 14
PlayerName.TextColor3 = Color3.new(1, 1, 1)
PlayerName.PlaceholderText = "PlayerName"
PlayerName.PlaceholderColor3 = Color3.new(1, 1, 1)

Teleport.Name = "Teleport"
Teleport.Parent = FEGui
Teleport.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Teleport.BackgroundTransparency = 0.34999999403954
Teleport.BorderSizePixel = 0
Teleport.Position = UDim2.new(0, 210, 0, 320)
Teleport.Size = UDim2.new(0, 64, 0, 19)
Teleport.FontSize = Enum.FontSize.Size10
Teleport.Text = "tp to"
Teleport.TextColor3 = Color3.new(1, 1, 1)
Teleport.TextSize = 10
Teleport.TextWrapped = true

Invisible.Name = "Invisible"
Invisible.Parent = FEGui
Invisible.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Invisible.BackgroundTransparency = 0.34999999403954
Invisible.BorderSizePixel = 0
Invisible.Position = UDim2.new(0, 5, 0, 345)
Invisible.Size = UDim2.new(0, 269, 0, 27)
Invisible.FontSize = Enum.FontSize.Size14
Invisible.Text = "Invisible"
Invisible.TextColor3 = Color3.new(1, 1, 1)
Invisible.TextSize = 13
Invisible.TextStrokeTransparency = 0.58999997377396
Invisible.TextWrapped = true

Cut.Name = "Cut"
Cut.Parent = FEGui
Cut.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Cut.BackgroundTransparency = 0.34999999403954
Cut.BorderSizePixel = 0
Cut.Position = UDim2.new(0, 5, 0, 375)
Cut.Size = UDim2.new(0, 269, 0, 27)
Cut.FontSize = Enum.FontSize.Size14
Cut.Text = "Cut yourself in half"
Cut.TextColor3 = Color3.new(1, 1, 1)
Cut.TextSize = 13
Cut.TextStrokeTransparency = 0.58999997377396
Cut.TextWrapped = true

Drop.Name = "Drop"
Drop.Parent = FEGui
Drop.BackgroundColor3 = Color3.new(0.294118, 0.294118, 0.294118)
Drop.BackgroundTransparency = 0.34999999403954
Drop.BorderSizePixel = 0
Drop.Position = UDim2.new(0, 5, 0, 405)
Drop.Size = UDim2.new(0, 269, 0, 27)
Drop.FontSize = Enum.FontSize.Size14
Drop.Text = "Spam Hats"
Drop.TextColor3 = Color3.new(1, 1, 1)
Drop.TextSize = 13
Drop.TextStrokeTransparency = 0.58999997377396
Drop.TextWrapped = true

--Functions

Drop.MouseButton1Click:connect(function()
while true do

local j=game.Players.LocalPlayer
for k,l in pairs(j.Character:GetChildren())do 
	if l:IsA'Accoutrement'then 
		l.Parent=game.Workspace 
		end 
end
wait(0.1)


plr = game.Players.LocalPlayer
	pcall(function()
		local Pos = plr.Character:GetPrimaryPartCFrame()
		plr:LoadCharacter()
		plr.Character:SetPrimaryPartCFrame(Pos)
		if plr.Character:FindFirstChild("ForceField")		
			then
			wait(0.2)	-- the Number "(0.2)" its the time to Make The Forcefield Being Removed.		 
			plr.Character["ForceField"]:Destroy()
		end
	end)
wait(3)
	end


end)

Cut.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.UpperTorso.Waist:Destroy()
end)

Invisible.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.LowerTorso.Root:Destroy()
end)

CloseButton.MouseButton1Click:connect(function()
	FEGui:Destroy()
end)

Teleport.MouseButton1Click:connect(function()
	local me = game.Players.LocalPlayer.Name

	game.Workspace[me].HumanoidRootPart.CFrame = CFrame.new(game.Players[PlayerName.Text].Character.Head.Position)
end)