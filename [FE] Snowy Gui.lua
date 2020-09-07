-- Objects

local SnowyMenu = Instance.new("ScreenGui")
local Opener = Instance.new("Frame")
local Open = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local BlackBottom = Instance.new("Frame")
local BlueTop = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local FEBtools = Instance.new("TextButton")
local FEDab = Instance.new("TextButton")
local FEDance = Instance.new("TextButton")
local FESpamBricks = Instance.new("TextButton")
local FESpasm = Instance.new("TextButton")
local FEBToolsWarning = Instance.new("TextLabel")
local FEDabWarning = Instance.new("TextLabel")
local FEDabWarning_2 = Instance.new("TextLabel")
local FESpasmWarning = Instance.new("TextLabel")
local SnowMenu = Instance.new("TextLabel")
local SpamBricksWarning = Instance.new("TextLabel")
local Closer = Instance.new("Frame")
local Close = Instance.new("TextButton")

-- Properties

SnowyMenu.Name = "SnowyMenu"
SnowyMenu.Parent = game.CoreGui

Opener.Name = "Opener"
Opener.Parent = SnowyMenu
Opener.BackgroundColor3 = Color3.new(1, 1, 1)
Opener.BackgroundTransparency = 1
Opener.Size = UDim2.new(0, 100, 0, 100)

Open.Name = "Open"
Open.Parent = Opener
Open.BackgroundColor3 = Color3.new(0, 1, 0)
Open.BackgroundTransparency = 0.5
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 4.19999981, 0)
Open.Size = UDim2.new(0, 95, 0, 35)
Open.Font = Enum.Font.SourceSansBold
Open.FontSize = Enum.FontSize.Size14
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14
Open.TextTransparency = 0.5
Open.TextWrapped = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = SnowyMenu
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Size = UDim2.new(0, 1238, 0, 704)
MainFrame.Visible = false

BlackBottom.Name = "BlackBottom"
BlackBottom.Parent = MainFrame
BlackBottom.Active = true
BlackBottom.BackgroundColor3 = Color3.new(0, 0, 0)
BlackBottom.BackgroundTransparency = 0.5
BlackBottom.BorderSizePixel = 0
BlackBottom.ClipsDescendants = true
BlackBottom.Draggable = true
BlackBottom.Position = UDim2.new(0.0993537977, 0, 0.390625, 0)
BlackBottom.Selectable = true
BlackBottom.Size = UDim2.new(0, 245, 0, 322)

BlueTop.Name = "BlueTop"
BlueTop.Parent = BlackBottom
BlueTop.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
BlueTop.BackgroundTransparency = 0.5
BlueTop.BorderSizePixel = 0
BlueTop.Position = UDim2.new(0.00139461458, 0, 0.000477999449, 0)
BlueTop.Size = UDim2.new(0, 245, 0, 63)

Frame.Parent = BlackBottom
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.117124394, 0, 0.159514412, 0)
Frame.Size = UDim2.new(0, 200, 0, 5)

Frame_2.Parent = BlackBottom
Frame_2.BackgroundColor3 = Color3.new(0, 0, 0)
Frame_2.BackgroundTransparency = 0.5
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.117124394, 0, 0.03721416, 0)
Frame_2.Size = UDim2.new(0, 200, 0, 5)

FEBtools.Name = "FEBtools"
FEBtools.Parent = BlackBottom
FEBtools.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
FEBtools.BackgroundTransparency = 0.5
FEBtools.BorderSizePixel = 0
FEBtools.Position = UDim2.new(0.0299660433, 0, 0.260604918, 0)
FEBtools.Size = UDim2.new(0, 100, 0, 34)
FEBtools.Font = Enum.Font.SourceSansBold
FEBtools.FontSize = Enum.FontSize.Size14
FEBtools.Text = "FE Btools"
FEBtools.TextColor3 = Color3.new(1, 1, 1)
FEBtools.TextScaled = true
FEBtools.TextSize = 14
FEBtools.TextTransparency = 0.5
FEBtools.TextWrapped = true

FEDab.Name = "FEDab"
FEDab.Parent = BlackBottom
FEDab.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
FEDab.BackgroundTransparency = 0.5
FEDab.BorderSizePixel = 0
FEDab.Position = UDim2.new(0.0299660414, 0, 0.579571962, 0)
FEDab.Size = UDim2.new(0, 100, 0, 34)
FEDab.Font = Enum.Font.SourceSansBold
FEDab.FontSize = Enum.FontSize.Size14
FEDab.Text = "Local Dab"
FEDab.TextColor3 = Color3.new(1, 1, 1)
FEDab.TextScaled = true
FEDab.TextSize = 14
FEDab.TextTransparency = 0.5
FEDab.TextWrapped = true

FEDance.Name = "FEDance"
FEDance.Parent = BlackBottom
FEDance.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
FEDance.BackgroundTransparency = 0.5
FEDance.BorderSizePixel = 0
FEDance.Position = UDim2.new(0.0299660414, 0, 0.727705061, 0)
FEDance.Size = UDim2.new(0, 100, 0, 34)
FEDance.Font = Enum.Font.SourceSansBold
FEDance.FontSize = Enum.FontSize.Size14
FEDance.Text = "Local Dance"
FEDance.TextColor3 = Color3.new(1, 1, 1)
FEDance.TextScaled = true
FEDance.TextSize = 14
FEDance.TextTransparency = 0.5
FEDance.TextWrapped = true

FESpamBricks.Name = "FESpamBricks"
FESpamBricks.Parent = BlackBottom
FESpamBricks.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
FESpamBricks.BackgroundTransparency = 0.5
FESpamBricks.BorderSizePixel = 0
FESpamBricks.Position = UDim2.new(0.0299660414, 0, 0.414852172, 0)
FESpamBricks.Size = UDim2.new(0, 100, 0, 34)
FESpamBricks.Font = Enum.Font.SourceSansBold
FESpamBricks.FontSize = Enum.FontSize.Size14
FESpamBricks.Text = "Spam Bricks"
FESpamBricks.TextColor3 = Color3.new(1, 1, 1)
FESpamBricks.TextScaled = true
FESpamBricks.TextSize = 14
FESpamBricks.TextTransparency = 0.5
FESpamBricks.TextWrapped = true

FESpasm.Name = "FESpasm"
FESpasm.Parent = BlackBottom
FESpasm.BackgroundColor3 = Color3.new(0.333333, 0.333333, 1)
FESpasm.BackgroundTransparency = 0.5
FESpasm.BorderSizePixel = 0
FESpasm.Position = UDim2.new(0.0299660414, 0, 0.895265758, 0)
FESpasm.Size = UDim2.new(0, 100, 0, 34)
FESpasm.Font = Enum.Font.SourceSansBold
FESpasm.FontSize = Enum.FontSize.Size14
FESpasm.Text = "Local Spasm"
FESpasm.TextColor3 = Color3.new(1, 1, 1)
FESpasm.TextScaled = true
FESpasm.TextSize = 14
FESpasm.TextTransparency = 0.5
FESpasm.TextWrapped = true

FEBToolsWarning.Name = "FEBToolsWarning"
FEBToolsWarning.Parent = BlackBottom
FEBToolsWarning.BackgroundColor3 = Color3.new(1, 1, 1)
FEBToolsWarning.BackgroundTransparency = 1
FEBToolsWarning.Position = UDim2.new(0.457680285, 0, 0.259978473, 0)
FEBToolsWarning.Size = UDim2.new(0, 133, 0, 35)
FEBToolsWarning.Font = Enum.Font.SourceSansBold
FEBToolsWarning.FontSize = Enum.FontSize.Size14
FEBToolsWarning.Text = "The FE Btools Only work in some Cafe games."
FEBToolsWarning.TextColor3 = Color3.new(1, 1, 1)
FEBToolsWarning.TextScaled = true
FEBToolsWarning.TextSize = 14
FEBToolsWarning.TextWrapped = true

FEDabWarning.Name = "FEDabWarning"
FEDabWarning.Parent = BlackBottom
FEDabWarning.BackgroundColor3 = Color3.new(1, 1, 1)
FEDabWarning.BackgroundTransparency = 1
FEDabWarning.Position = UDim2.new(0.454363495, 0, 0.726284564, 0)
FEDabWarning.Size = UDim2.new(0, 133, 0, 35)
FEDabWarning.Font = Enum.Font.SourceSansBold
FEDabWarning.FontSize = Enum.FontSize.Size14
FEDabWarning.Text = "Dance Till you're dead :v"
FEDabWarning.TextColor3 = Color3.new(1, 1, 1)
FEDabWarning.TextScaled = true
FEDabWarning.TextSize = 14
FEDabWarning.TextWrapped = true

FEDabWarning_2.Name = "FEDabWarning"
FEDabWarning_2.Parent = BlackBottom
FEDabWarning_2.BackgroundColor3 = Color3.new(1, 1, 1)
FEDabWarning_2.BackgroundTransparency = 1
FEDabWarning_2.Position = UDim2.new(0.458445162, 0, 0.578151464, 0)
FEDabWarning_2.Size = UDim2.new(0, 133, 0, 35)
FEDabWarning_2.Font = Enum.Font.SourceSansBold
FEDabWarning_2.FontSize = Enum.FontSize.Size14
FEDabWarning_2.Text = "DAB ON THEM HATERS!!!111"
FEDabWarning_2.TextColor3 = Color3.new(1, 1, 1)
FEDabWarning_2.TextScaled = true
FEDabWarning_2.TextSize = 14
FEDabWarning_2.TextWrapped = true

FESpasmWarning.Name = "FESpasmWarning"
FESpasmWarning.Parent = BlackBottom
FESpasmWarning.BackgroundColor3 = Color3.new(1, 1, 1)
FESpasmWarning.BackgroundTransparency = 1
FESpasmWarning.Position = UDim2.new(0.437633127, 0, 0.890739679, 0)
FESpasmWarning.Size = UDim2.new(0, 133, 0, 35)
FESpasmWarning.Font = Enum.Font.SourceSansBold
FESpasmWarning.FontSize = Enum.FontSize.Size14
FESpasmWarning.Text = "Too much cringe!!"
FESpasmWarning.TextColor3 = Color3.new(1, 1, 1)
FESpasmWarning.TextScaled = true
FESpasmWarning.TextSize = 14
FESpasmWarning.TextWrapped = true

SnowMenu.Name = "SnowMenu"
SnowMenu.Parent = BlackBottom
SnowMenu.BackgroundColor3 = Color3.new(1, 1, 1)
SnowMenu.BackgroundTransparency = 1
SnowMenu.Position = UDim2.new(0.0967162326, 0, 0.0179542005, 0)
SnowMenu.Size = UDim2.new(0, 200, 0, 50)
SnowMenu.Font = Enum.Font.SourceSansBold
SnowMenu.FontSize = Enum.FontSize.Size14
SnowMenu.Text = "Snowy Menu"
SnowMenu.TextColor3 = Color3.new(0, 0, 0)
SnowMenu.TextScaled = true
SnowMenu.TextSize = 14
SnowMenu.TextTransparency = 0.5
SnowMenu.TextWrapped = true

SpamBricksWarning.Name = "SpamBricksWarning"
SpamBricksWarning.Parent = BlackBottom
SpamBricksWarning.BackgroundColor3 = Color3.new(1, 1, 1)
SpamBricksWarning.BackgroundTransparency = 1
SpamBricksWarning.Position = UDim2.new(0.455639422, 0, 0.416537285, 0)
SpamBricksWarning.Size = UDim2.new(0, 133, 0, 35)
SpamBricksWarning.Font = Enum.Font.SourceSansBold
SpamBricksWarning.FontSize = Enum.FontSize.Size14
SpamBricksWarning.Text = "The Spam Bricks Will Spam Bricks Eveyerwhere 20 Times"
SpamBricksWarning.TextColor3 = Color3.new(1, 1, 1)
SpamBricksWarning.TextScaled = true
SpamBricksWarning.TextSize = 14
SpamBricksWarning.TextWrapped = true

Closer.Name = "Closer"
Closer.Parent = SnowyMenu
Closer.BackgroundColor3 = Color3.new(1, 1, 1)
Closer.BackgroundTransparency = 1
Closer.Size = UDim2.new(0, 100, 0, 100)
Closer.Visible = false

Close.Name = "Close"
Close.Parent = Closer
Close.BackgroundColor3 = Color3.new(1, 0, 0)
Close.BackgroundTransparency = 0.5
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0, 0, 4.61999989, 0)
Close.Size = UDim2.new(0, 95, 0, 35)
Close.Font = Enum.Font.SourceSansBold
Close.FontSize = Enum.FontSize.Size14
Close.Text = "Close"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextTransparency = 0.5
Close.TextWrapped = true

Open.MouseButton1Click:connect(function()
	game.CoreGui.SnowyMenu.Opener.Visible = false
	game.CoreGui.SnowyMenu.MainFrame.Visible = true
	game.CoreGui.SnowyMenu.Closer.Visible = true
end)

Close.MouseButton1Click:connect(function()
	game.CoreGui.SnowyMenu.Opener.Visible = true
	game.CoreGui.SnowyMenu.MainFrame.Visible = false
	game.CoreGui.SnowyMenu.Closer.Visible = false
end)

FEDance.MouseButton1Click:connect(function()
	Player = "LocalPlayer"
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.
end)

FEBtools.MouseButton1Click:connect(function()
	--fe cafe hammertool script cuz im gay--
maind = nil
if workspace:FindFirstChild'GiveSystem' then
	if workspace.GiveSystem:FindFirstChild'GiveItem' then
		maind = workspace.GiveSystem.GiveItem
	end
end
if workspace:FindFirstChild'HandToCentre' then
	if workspace.HandToCentre:FindFirstChild'SendItem' then
		maind = workspace.HandToCentre.SendItem
	end
end
if maind == nil then
	print'could not find give event :('
	return
end
tool = Instance.new'Tool'
me = game:GetService'Players'.LocalPlayer
tool.RequiresHandle = false
tool.TextureId = 'http://www.roblox.com/asset/?id=12223874'
tool.Name = 'ya like jazz?'
tool.Parent = me.Backpack
buttonf = nil
tool.Equipped:connect(function()
	local m = game:GetService'Players'.LocalPlayer:GetMouse()
	m.Icon = 'rbxasset://textures/HammerCursor.png'
	buttonf = m.Button1Down:connect(function()
		if m.Target == nil then return end
		local ob = m.Target
		if ob:IsA'BasePart' or ob:IsA'WedgePart' then
			if ob:IsDescendantOf(me.Character) then return end
			m.Icon = 'rbxasset://textures/HammerOverCursor.png'
			local ex = Instance.new'Explosion'
			ex.BlastRadius = 0
			ex.Position = ob.Position
			ex.Parent = workspace
			maind:FireServer(workspace, ob)
			wait(0.3)
			m.Icon = 'rbxasset://textures/HammerCursor.png'
		end
	end)
end)
tool.Unequipped:connect(function()
	if buttonf ~= nil then
		buttonf:Disconnect()
		buttonf = nil
	end
	local m = game:GetService'Players'.LocalPlayer:GetMouse()
	m.Icon = ''
end)
end)

FESpamBricks.MouseButton1Click:connect(function()
	for i=1,20 do
wait(1)
        for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA'Accoutrement' then
v.Parent=game.Players.LocalPlayer.Character
v.Parent = workspace.Terrain
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA'Accoutrement' then
for ape,hax in pairs(v.Handle:GetChildren()) do
hax:Destroy()
end
wait'.1'
v.Parent=game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt=Instance.new("Model", workspace);
        Instance.new("Part", prt).Name="Torso";
        Instance.new("Part", prt).Name="Head";
        Instance.new("Humanoid", prt).Name="Humanoid";
        game.Players.LocalPlayer.Character=prt

repeat wait(1) until game.Players.LocalPlayer.Character:FindFirstChild'Head'
for lol,dad in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if dad:IsA'Accoutrement' then
dad.Parent = game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt2=Instance.new("Model", workspace);
        Instance.new("Part", prt).Name="Torso";
        Instance.new("Part", prt).Name="Head";
        Instance.new("Humanoid", prt).Name="Humanoid";
        game.Players.LocalPlayer.Character=prt
end
end)

FEDab.MouseButton1Click:connect(function()
	Player = "LocalPlayer"
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.
end)

FESpasm.MouseButton1Click:connect(function()
	Player = "LocalPlayer"
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
k:Play() --Play the animation
k:AdjustSpeed(99) --Set '1' to any value you want to adjust the animation speed.
end)

--================--
--================--
--End Of Script :P--
--================--
--================--

--=======================--
--=======================--
--Snxwwy Made this GUI :V--
--=======================--
--=======================--