-- Check GUI Already Open. --
for  _, a in pairs(game.CoreGui:children'') do if a.Name == "FameSimGUI" then a:Destroy'' end end --Should work.
--Anti Afk--
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)
-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local FameSimGUI = Instance.new("ScreenGui")
local MainThing = Instance.new("Frame")
local Top = Instance.new("TextLabel")
local AutoUnlock = Instance.new("TextButton")
local BuyStar = Instance.new("TextButton")
local Gamepasses = Instance.new("TextButton")
local AutoClick = Instance.new("TextButton")
local AutoBuy = Instance.new("TextButton")
local TierSelect = Instance.new("TextButton")
local TeleportsFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local World1Stage1 = Instance.new("TextButton")
local World1Stage2 = Instance.new("TextButton")
local World1Shop = Instance.new("TextButton")
local World1Stage3 = Instance.new("TextButton")
local World1Stage4 = Instance.new("TextButton")
local World1Stage5 = Instance.new("TextButton")
local World1Stage6 = Instance.new("TextButton")
local World2Shop = Instance.new("TextButton")
local World2Stage1 = Instance.new("TextButton")
local World2Stage2 = Instance.new("TextButton")
local World2Stage3 = Instance.new("TextButton")
local World2Stage4 = Instance.new("TextButton")
local World2Stage5 = Instance.new("TextButton")
local World2Stage6 = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local Minimise = Instance.new("TextButton")
local FarmFollowers = Instance.new("TextButton")
local Teleports = Instance.new("TextButton")
local TiersFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Tier13 = Instance.new("TextButton")
local Tier12 = Instance.new("TextButton")
local Tier11 = Instance.new("TextButton")
local Tier10 = Instance.new("TextButton")
local Tier09 = Instance.new("TextButton")
local Tier08 = Instance.new("TextButton")
local Tier07 = Instance.new("TextButton")
local Tier06 = Instance.new("TextButton")
local Tier05 = Instance.new("TextButton")
local Tier04 = Instance.new("TextButton")
local Tier03 = Instance.new("TextButton")
local Tier02 = Instance.new("TextButton")
local Tier01 = Instance.new("TextButton")
local SettingsButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local SettingsFrame = Instance.new("Frame")
local RainbowSetting = Instance.new("TextButton")
local NumberOfStars = Instance.new("TextBox")
local Minlevel = Instance.new("TextBox")
local DeleteMember = Instance.new("TextButton")
local EquipBest = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local Nothing1 = Instance.new("TextButton")
local plr = game.Players.LocalPlayer -- find you in "Players"

TierToOpen = nil
AutoClickOn = false
FarmTheFollowers = false
UnlockTheStages = false
BuyThePhones = false

--Properties:
FameSimGUI.Name = "FameSimGUI"
FameSimGUI.Parent = game.CoreGui

MainThing.Name = "MainThing"
MainThing.Parent = FameSimGUI
MainThing.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
MainThing.BorderColor3 = Color3.new(0, 0, 0)
MainThing.BorderSizePixel = 2
MainThing.Position = UDim2.new(0.343617201, 0, 0.261025012, 0)
MainThing.Size = UDim2.new(0, 400, 0, 400)
MainThing.Draggable = true
MainThing.Active = true

Top.Name = "Top"
Top.Parent = MainThing
Top.BackgroundColor3 = Color3.new(1, 1, 1)
Top.BackgroundTransparency = 1
Top.Position = UDim2.new(0.145009756, 0, -0.00271352124, 0)
Top.Size = UDim2.new(0, 282, 0, 28)
Top.Font = Enum.Font.Code
Top.Text = "Fame Simulator OP Gui <3 by: Gerard#6969"
Top.TextColor3 = Color3.new(0, 0, 0)
Top.TextSize = 14

AutoUnlock.Name = "AutoUnlock"
AutoUnlock.Parent = MainThing
AutoUnlock.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
AutoUnlock.BorderColor3 = Color3.new(0, 0, 0)
AutoUnlock.BorderSizePixel = 2
AutoUnlock.Position = UDim2.new(0.563000023, 0, 0.235981598, 0)
AutoUnlock.Size = UDim2.new(0, 150, 0, 51)
AutoUnlock.Font = Enum.Font.Code
AutoUnlock.Text = "Auto Unlock Stages: Off"
AutoUnlock.TextColor3 = Color3.new(1, 1, 1)
AutoUnlock.TextSize = 12

BuyStar.Name = "Buy Star"
BuyStar.Parent = MainThing
BuyStar.BackgroundColor3 = Color3.new(1, 0.54902, 0)
BuyStar.BorderColor3 = Color3.new(0, 0, 0)
BuyStar.BorderSizePixel = 2
BuyStar.Position = UDim2.new(0.563000023, 0, 0.541999996, 0)
BuyStar.Size = UDim2.new(0, 150, 0, 51)
BuyStar.Font = Enum.Font.Code
BuyStar.Text = "Buy Star"
BuyStar.TextColor3 = Color3.new(1, 1, 1)
BuyStar.TextSize = 14

Gamepasses.Name = "Gamepasses"
Gamepasses.Parent = MainThing
Gamepasses.BackgroundColor3 = Color3.new(0.670588, 0.231373, 0.662745)
Gamepasses.BorderColor3 = Color3.new(0, 0, 0)
Gamepasses.BorderSizePixel = 2
Gamepasses.Position = UDim2.new(0.561999977, 0, 0.694999993, 0)
Gamepasses.Size = UDim2.new(0, 150, 0, 51)
Gamepasses.Font = Enum.Font.Code
Gamepasses.Text = "Gamepasses"
Gamepasses.TextColor3 = Color3.new(1, 1, 1)
Gamepasses.TextSize = 14

AutoClick.Name = "Auto Click"
AutoClick.Parent = MainThing
AutoClick.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
AutoClick.BorderColor3 = Color3.new(0, 0, 0)
AutoClick.BorderSizePixel = 2
AutoClick.Position = UDim2.new(0.0630000308, 0, 0.0825000033, 0)
AutoClick.Size = UDim2.new(0, 150, 0, 51)
AutoClick.Font = Enum.Font.Code
AutoClick.Text = "Auto Click: Off"
AutoClick.TextColor3 = Color3.new(1, 1, 1)
AutoClick.TextSize = 14

AutoBuy.Name = "AutoBuy"
AutoBuy.Parent = MainThing
AutoBuy.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
AutoBuy.BorderColor3 = Color3.new(0, 0, 0)
AutoBuy.BorderSizePixel = 2
AutoBuy.Position = UDim2.new(0.0630000308, 0, 0.235981598, 0)
AutoBuy.Size = UDim2.new(0, 150, 0, 51)
AutoBuy.Font = Enum.Font.Code
AutoBuy.Text = "Auto Buy Phones: Off"
AutoBuy.TextColor3 = Color3.new(1, 1, 1)
AutoBuy.TextSize = 14

TierSelect.Name = "Tier Select"
TierSelect.Parent = MainThing
TierSelect.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
TierSelect.BorderColor3 = Color3.new(0, 0, 0)
TierSelect.BorderSizePixel = 2
TierSelect.Position = UDim2.new(0.0624999963, 0, 0.38544479, 0)
TierSelect.Size = UDim2.new(0, 150, 0, 51)
TierSelect.Font = Enum.Font.Code
TierSelect.Text = "Tier Select"
TierSelect.TextColor3 = Color3.new(1, 1, 1)
TierSelect.TextSize = 14

TeleportsFrame.Name = "TeleportsFrame"
TeleportsFrame.Parent = MainThing
TeleportsFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
TeleportsFrame.BorderColor3 = Color3.new(0, 0, 0)
TeleportsFrame.BorderSizePixel = 2
TeleportsFrame.Position = UDim2.new(1.01600409, 0, 0, 0)
TeleportsFrame.Size = UDim2.new(0, 150, 0, 400)
TeleportsFrame.ScrollBarThickness = 7

UIListLayout.Parent = TeleportsFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Padding = UDim.new(0.00999999978, 0)

World1Shop.Name = "World 1, Shop"
World1Shop.Parent = TeleportsFrame
World1Shop.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World1Shop.BorderColor3 = Color3.new(0, 0, 0)
World1Shop.BorderSizePixel = 2
World1Shop.Position = UDim2.new(-0.162500009, 0, 0.819999993, 0)
World1Shop.Size = UDim2.new(0, 125, 0, 50)
World1Shop.Font = Enum.Font.Code
World1Shop.Text = "World 1, Shop"
World1Shop.TextColor3 = Color3.new(0, 0, 0)
World1Shop.TextSize = 14

World1Stage1.Name = "World 1, Stage 1"
World1Stage1.Parent = TeleportsFrame
World1Stage1.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World1Stage1.BorderColor3 = Color3.new(0, 0, 0)
World1Stage1.BorderSizePixel = 2
World1Stage1.Position = UDim2.new(-0.0225000083, 0, 0.819999993, 0)
World1Stage1.Size = UDim2.new(0, 125, 0, 50)
World1Stage1.Font = Enum.Font.Code
World1Stage1.Text = "World 1, Stage 1"
World1Stage1.TextColor3 = Color3.new(0, 0, 0)
World1Stage1.TextSize = 14

World1Stage2.Name = "World 1, Stage 2"
World1Stage2.Parent = TeleportsFrame
World1Stage2.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World1Stage2.BorderColor3 = Color3.new(0, 0, 0)
World1Stage2.BorderSizePixel = 2
World1Stage2.Position = UDim2.new(0.117500007, 0, 0.819999993, 0)
World1Stage2.Size = UDim2.new(0, 125, 0, 50)
World1Stage2.Font = Enum.Font.Code
World1Stage2.Text = "World 1, Stage 2"
World1Stage2.TextColor3 = Color3.new(0, 0, 0)
World1Stage2.TextSize = 14

World1Stage3.Name = "World 1, Stage 3"
World1Stage3.Parent = TeleportsFrame
World1Stage3.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World1Stage3.BorderColor3 = Color3.new(0, 0, 0)
World1Stage3.BorderSizePixel = 2
World1Stage3.Position = UDim2.new(0.257548213, 0, 0.819999993, 0)
World1Stage3.Size = UDim2.new(0, 125, 0, 50)
World1Stage3.Font = Enum.Font.Code
World1Stage3.Text = "World 1, Stage 3"
World1Stage3.TextColor3 = Color3.new(0, 0, 0)
World1Stage3.TextSize = 14

World1Stage4.Name = "World 1, Stage 4"
World1Stage4.Parent = TeleportsFrame
World1Stage4.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World1Stage4.BorderColor3 = Color3.new(0, 0, 0)
World1Stage4.BorderSizePixel = 2
World1Stage4.Position = UDim2.new(0.397500038, 0, 0.819999993, 0)
World1Stage4.Size = UDim2.new(0, 125, 0, 50)
World1Stage4.Font = Enum.Font.Code
World1Stage4.Text = "World 1, Stage 4"
World1Stage4.TextColor3 = Color3.new(0, 0, 0)
World1Stage4.TextSize = 14

World1Stage5.Name = "World 1, Stage 5"
World1Stage5.Parent = TeleportsFrame
World1Stage5.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World1Stage5.BorderColor3 = Color3.new(0, 0, 0)
World1Stage5.BorderSizePixel = 2
World1Stage5.Position = UDim2.new(0.537499964, 0, 0.819999993, 0)
World1Stage5.Size = UDim2.new(0, 125, 0, 50)
World1Stage5.Font = Enum.Font.Code
World1Stage5.Text = "World 1, Stage 5"
World1Stage5.TextColor3 = Color3.new(0, 0, 0)
World1Stage5.TextSize = 14

World1Stage6.Name = "World 1, Stage 6"
World1Stage6.Parent = TeleportsFrame
World1Stage6.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World1Stage6.BorderColor3 = Color3.new(0, 0, 0)
World1Stage6.BorderSizePixel = 2
World1Stage6.Position = UDim2.new(0.67750001, 0, 0.819999993, 0)
World1Stage6.Size = UDim2.new(0, 125, 0, 50)
World1Stage6.Font = Enum.Font.Code
World1Stage6.Text = "World 1, Stage 6"
World1Stage6.TextColor3 = Color3.new(0, 0, 0)
World1Stage6.TextSize = 14

World2Shop.Name = "World 2, Shop"
World2Shop.Parent = TeleportsFrame
World2Shop.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World2Shop.BorderColor3 = Color3.new(0, 0, 0)
World2Shop.BorderSizePixel = 2
World2Shop.Position = UDim2.new(-0.162500009, 0, 0.819999993, 0)
World2Shop.Size = UDim2.new(0, 125, 0, 50)
World2Shop.Font = Enum.Font.Code
World2Shop.Text = "World 2, Shop"
World2Shop.TextColor3 = Color3.new(0, 0, 0)
World2Shop.TextSize = 14

World2Stage1.Name = "World 2, Stage 1"
World2Stage1.Parent = TeleportsFrame
World2Stage1.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World2Stage1.BorderColor3 = Color3.new(0, 0, 0)
World2Stage1.BorderSizePixel = 2
World2Stage1.Position = UDim2.new(0.67750001, 0, 0.819999993, 0)
World2Stage1.Size = UDim2.new(0, 125, 0, 50)
World2Stage1.Font = Enum.Font.Code
World2Stage1.Text = "World 2, Stage 1"
World2Stage1.TextColor3 = Color3.new(0, 0, 0)
World2Stage1.TextSize = 14

World2Stage2.Name = "World 2, Stage 2"
World2Stage2.Parent = TeleportsFrame
World2Stage2.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World2Stage2.BorderColor3 = Color3.new(0, 0, 0)
World2Stage2.BorderSizePixel = 2
World2Stage2.Position = UDim2.new(0.67750001, 0, 0.819999993, 0)
World2Stage2.Size = UDim2.new(0, 125, 0, 50)
World2Stage2.Font = Enum.Font.Code
World2Stage2.Text = "World 2, Stage 2"
World2Stage2.TextColor3 = Color3.new(0, 0, 0)
World2Stage2.TextSize = 14

World2Stage3.Name = "World 1, Stage 6"
World2Stage3.Parent = TeleportsFrame
World2Stage3.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World2Stage3.BorderColor3 = Color3.new(0, 0, 0)
World2Stage3.BorderSizePixel = 2
World2Stage3.Position = UDim2.new(0.67750001, 0, 0.819999993, 0)
World2Stage3.Size = UDim2.new(0, 125, 0, 50)
World2Stage3.Font = Enum.Font.Code
World2Stage3.Text = "World 2, Stage 3"
World2Stage3.TextColor3 = Color3.new(0, 0, 0)
World2Stage3.TextSize = 14

World2Stage4.Name = "World 2, Stage 4"
World2Stage4.Parent = TeleportsFrame
World2Stage4.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World2Stage4.BorderColor3 = Color3.new(0, 0, 0)
World2Stage4.BorderSizePixel = 2
World2Stage4.Position = UDim2.new(0.67750001, 0, 0.819999993, 0)
World2Stage4.Size = UDim2.new(0, 125, 0, 50)
World2Stage4.Font = Enum.Font.Code
World2Stage4.Text = "World 2, Stage 4"
World2Stage4.TextColor3 = Color3.new(0, 0, 0)
World2Stage4.TextSize = 14

World2Stage5.Name = "World 2, Stage 5"
World2Stage5.Parent = TeleportsFrame
World2Stage5.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World2Stage5.BorderColor3 = Color3.new(0, 0, 0)
World2Stage5.BorderSizePixel = 2
World2Stage5.Position = UDim2.new(0.67750001, 0, 0.819999993, 0)
World2Stage5.Size = UDim2.new(0, 125, 0, 50)
World2Stage5.Font = Enum.Font.Code
World2Stage5.Text = "World 2, Stage 5"
World2Stage5.TextColor3 = Color3.new(0, 0, 0)
World2Stage5.TextSize = 14

World2Stage6.Name = "World 2, Stage 6"
World2Stage6.Parent = TeleportsFrame
World2Stage6.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
World2Stage6.BorderColor3 = Color3.new(0, 0, 0)
World2Stage6.BorderSizePixel = 2
World2Stage6.Position = UDim2.new(0.67750001, 0, 0.819999993, 0)
World2Stage6.Size = UDim2.new(0, 125, 0, 50)
World2Stage6.Font = Enum.Font.Code
World2Stage6.Text = "World 2, Stage 6"
World2Stage6.TextColor3 = Color3.new(0, 0, 0)
World2Stage6.TextSize = 14

Exit.Name = "Exit"
Exit.Parent = MainThing
Exit.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Exit.BackgroundTransparency = 1
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.865463316, 0, -0.00271353126, 0)
Exit.Size = UDim2.new(0, 53, 0, 27)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.new(0, 0, 0)
Exit.TextSize = 14

Minimise.Name = "Minimise"
Minimise.Parent = MainThing
Minimise.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Minimise.BackgroundTransparency = 1
Minimise.BorderSizePixel = 0
Minimise.Position = UDim2.new(0, 0, 0, 0)
Minimise.Size = UDim2.new(0, 53, 0, 27)
Minimise.Font = Enum.Font.SourceSans
Minimise.Text = "-"
Minimise.TextColor3 = Color3.new(0, 0, 0)
Minimise.TextSize = 25

Open.Parent = FameSimGUI
Open.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Open.BorderColor3 = Color3.new(0, 0, 0)
Open.Position = UDim2.new(0.019500792, 0, 0.910607874, 0)
Open.Size = UDim2.new(0, 100, 0, 50)
Open.Visible = false
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 14

FarmFollowers.Name = "FarmFollowers"
FarmFollowers.Parent = MainThing
FarmFollowers.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
FarmFollowers.BorderColor3 = Color3.new(0, 0, 0)
FarmFollowers.BorderSizePixel = 2
FarmFollowers.Position = UDim2.new(0.563000023, 0, 0.0825000033, 0)
FarmFollowers.Size = UDim2.new(0, 150, 0, 51)
FarmFollowers.Font = Enum.Font.Code
FarmFollowers.Text = "Auto Farm Followers:Off"
FarmFollowers.TextColor3 = Color3.new(1, 1, 1)
FarmFollowers.TextSize = 12

Teleports.Name = "Teleports"
Teleports.Parent = MainThing
Teleports.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teleports.BorderColor3 = Color3.new(0, 0, 0)
Teleports.BorderSizePixel = 2
Teleports.Position = UDim2.new(0.563000023, 0, 0.388999999, 0)
Teleports.Size = UDim2.new(0, 150, 0, 51)
Teleports.Font = Enum.Font.Code
Teleports.Text = "Teleports"
Teleports.TextColor3 = Color3.new(0, 0, 0)
Teleports.TextSize = 14

TiersFrame.Name = "TiersFrame"
TiersFrame.Parent = MainThing
TiersFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
TiersFrame.BorderColor3 = Color3.new(0, 0, 0)
TiersFrame.BorderSizePixel = 2
TiersFrame.Position = UDim2.new(-0.391496122, 0, -0.000190705061, 0)
TiersFrame.Size = UDim2.new(0, 150, 0, 400)
TiersFrame.ScrollBarThickness = 7

UIListLayout_2.Parent = TiersFrame
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.Padding = UDim.new(0.00999999978, 0)

Tier13.Name = "Tier 13"
Tier13.Parent = TiersFrame
Tier13.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier13.BorderColor3 = Color3.new(0, 0, 0)
Tier13.BorderSizePixel = 2
Tier13.Position = UDim2.new(0.126666665, 0, -0.818750083, 0)
Tier13.Size = UDim2.new(0, 125, 0, 50)
Tier13.Font = Enum.Font.SourceSans
Tier13.Text = "Tier 13"
Tier13.TextColor3 = Color3.new(0, 0, 0)
Tier13.TextSize = 14

Tier12.Name = "Tier 12"
Tier12.Parent = TiersFrame
Tier12.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier12.BorderColor3 = Color3.new(0, 0, 0)
Tier12.BorderSizePixel = 2
Tier12.Position = UDim2.new(0.126666665, 0, -0.818750083, 0)
Tier12.Size = UDim2.new(0, 125, 0, 50)
Tier12.Font = Enum.Font.SourceSans
Tier12.Text = "Tier 12"
Tier12.TextColor3 = Color3.new(0, 0, 0)
Tier12.TextSize = 14

Tier11.Name = "Tier 11"
Tier11.Parent = TiersFrame
Tier11.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier11.BorderColor3 = Color3.new(0, 0, 0)
Tier11.BorderSizePixel = 2
Tier11.Position = UDim2.new(0.126666665, 0, -0.818750083, 0)
Tier11.Size = UDim2.new(0, 125, 0, 50)
Tier11.Font = Enum.Font.SourceSans
Tier11.TextColor3 = Color3.new(0, 0, 0)
Tier11.Text = "Tier 11"
Tier11.TextSize = 14

Tier10.Name = "Tier 10"
Tier10.Parent = TiersFrame
Tier10.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier10.BorderColor3 = Color3.new(0, 0, 0)
Tier10.BorderSizePixel = 2
Tier10.Position = UDim2.new(0.126666665, 0, -0.818750083, 0)
Tier10.Size = UDim2.new(0, 125, 0, 50)
Tier10.Font = Enum.Font.SourceSans
Tier10.Text = "Tier 10"
Tier10.TextColor3 = Color3.new(0, 0, 0)
Tier10.TextSize = 14

Tier09.Name = "Tier 09"
Tier09.Parent = TiersFrame
Tier09.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier09.BorderColor3 = Color3.new(0, 0, 0)
Tier09.BorderSizePixel = 2
Tier09.Position = UDim2.new(0.126666665, 0, -0.818750083, 0)
Tier09.Size = UDim2.new(0, 125, 0, 50)
Tier09.Font = Enum.Font.SourceSans
Tier09.Text = "Tier 09"
Tier09.TextColor3 = Color3.new(0, 0, 0)
Tier09.TextSize = 14

Tier08.Name = "Tier 08"
Tier08.Parent = TiersFrame
Tier08.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier08.BorderColor3 = Color3.new(0, 0, 0)
Tier08.BorderSizePixel = 2
Tier08.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Tier08.Size = UDim2.new(0, 125, 0, 50)
Tier08.Font = Enum.Font.SourceSans
Tier08.Text = "Tier 08"
Tier08.TextColor3 = Color3.new(0, 0, 0)
Tier08.TextSize = 14

Tier07.Name = "Tier 07"
Tier07.Parent = TiersFrame
Tier07.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier07.BorderColor3 = Color3.new(0, 0, 0)
Tier07.BorderSizePixel = 2
Tier07.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Tier07.Size = UDim2.new(0, 125, 0, 50)
Tier07.Font = Enum.Font.SourceSans
Tier07.Text = "Tier 07"
Tier07.TextColor3 = Color3.new(0, 0, 0)
Tier07.TextSize = 14

Tier06.Name = "Tier 06"
Tier06.Parent = TiersFrame
Tier06.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier06.BorderColor3 = Color3.new(0, 0, 0)
Tier06.BorderSizePixel = 2
Tier06.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Tier06.Size = UDim2.new(0, 125, 0, 50)
Tier06.Font = Enum.Font.SourceSans
Tier06.Text = "Tier 06"
Tier06.TextColor3 = Color3.new(0, 0, 0)
Tier06.TextSize = 14

Tier05.Name = "Tier 05"
Tier05.Parent = TiersFrame
Tier05.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier05.BorderColor3 = Color3.new(0, 0, 0)
Tier05.BorderSizePixel = 2
Tier05.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Tier05.Size = UDim2.new(0, 125, 0, 50)
Tier05.Font = Enum.Font.SourceSans
Tier05.Text = "Tier 05"
Tier05.TextColor3 = Color3.new(0, 0, 0)
Tier05.TextSize = 14

Tier04.Name = "Tier 04"
Tier04.Parent = TiersFrame
Tier04.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier04.BorderColor3 = Color3.new(0, 0, 0)
Tier04.BorderSizePixel = 2
Tier04.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Tier04.Size = UDim2.new(0, 125, 0, 50)
Tier04.Font = Enum.Font.SourceSans
Tier04.Text = "Tier 04"
Tier04.TextColor3 = Color3.new(0, 0, 0)
Tier04.TextSize = 14

Tier03.Name = "Tier 03"
Tier03.Parent = TiersFrame
Tier03.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier03.BorderColor3 = Color3.new(0, 0, 0)
Tier03.BorderSizePixel = 2
Tier03.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Tier03.Size = UDim2.new(0, 125, 0, 50)
Tier03.Font = Enum.Font.SourceSans
Tier03.Text = "Tier 03"
Tier03.TextColor3 = Color3.new(0, 0, 0)
Tier03.TextSize = 14

Tier02.Name = "Tier 02"
Tier02.Parent = TiersFrame
Tier02.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier02.BorderColor3 = Color3.new(0, 0, 0)
Tier02.BorderSizePixel = 2
Tier02.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Tier02.Size = UDim2.new(0, 125, 0, 50)
Tier02.Font = Enum.Font.SourceSans
Tier02.Text = "Tier 02"
Tier02.TextColor3 = Color3.new(0, 0, 0)
Tier02.TextSize = 14

Tier01.Name = "Tier 01"
Tier01.Parent = TiersFrame
Tier01.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Tier01.BorderColor3 = Color3.new(0, 0, 0)
Tier01.BorderSizePixel = 2
Tier01.Position = UDim2.new(0.166666672, 0, 0.0199998971, 0)
Tier01.Size = UDim2.new(0, 125, 0, 50)
Tier01.Font = Enum.Font.SourceSans
Tier01.Text = "Tier 01"
Tier01.TextColor3 = Color3.new(0, 0, 0)
Tier01.TextSize = 14

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = MainThing
SettingsButton.BackgroundColor3 = Color3.new(0, 0, 0)
SettingsButton.BorderColor3 = Color3.new(0, 0, 0)
SettingsButton.BorderSizePixel = 2
SettingsButton.Position = UDim2.new(0.0599999987, 0, 0.690999985, 0)
SettingsButton.Size = UDim2.new(0, 150, 0, 51)
SettingsButton.Font = Enum.Font.Code
SettingsButton.Text = "Settings"
SettingsButton.TextColor3 = Color3.new(1, 1, 1)
SettingsButton.TextSize = 14

TextLabel.Parent = MainThing
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.460000008, 0, 1.15352416, 0)
TextLabel.Size = UDim2.new(0, 52, 0, 30)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Member Level To Keep"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14

SettingsFrame.Name = "SettingsFrame"
SettingsFrame.Parent = MainThing
SettingsFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
SettingsFrame.BorderColor3 = Color3.new(0, 0, 0)
SettingsFrame.BorderSizePixel = 2
SettingsFrame.Position = UDim2.new(-0.00100621581, 0, 1.01374257, 0)
SettingsFrame.Size = UDim2.new(0, 400, 0, 100)

RainbowSetting.Name = "Rainbow Setting"
RainbowSetting.Parent = SettingsFrame
RainbowSetting.BackgroundColor3 = Color3.new(1, 1, 1)
RainbowSetting.BackgroundTransparency = 1
RainbowSetting.Position = UDim2.new(0.564006209, 0, 0, 0)
RainbowSetting.Size = UDim2.new(0, 175, 0, 100)
RainbowSetting.Font = Enum.Font.SourceSans
RainbowSetting.Text = "Rainbow: Off"
RainbowSetting.TextColor3 = Color3.new(0, 0, 0)
RainbowSetting.TextSize = 25
RainbowSetting.TextStrokeColor3 = Color3.new(1, 1, 1)
RainbowSetting.TextStrokeTransparency = 0.5

NumberOfStars.Name = "Number Of Stars"
NumberOfStars.Parent = SettingsFrame
NumberOfStars.BackgroundColor3 = Color3.new(1, 0.54902, 0)
NumberOfStars.Position = UDim2.new(0.000500033144, 0, 0.198742628, 0)
NumberOfStars.Size = UDim2.new(0, 150, 0, 30)
NumberOfStars.Font = Enum.Font.SourceSans
NumberOfStars.Text = "Number Of Stars To Open"
NumberOfStars.TextColor3 = Color3.new(1, 1, 1)
NumberOfStars.TextSize = 14

Minlevel.Name = "Min level"
Minlevel.Parent = SettingsFrame
Minlevel.BackgroundColor3 = Color3.new(1, 1, 0.12549)
Minlevel.Position = UDim2.new(0.000500033144, 0, 0.553524137, 0)
Minlevel.Size = UDim2.new(0, 150, 0, 30)
Minlevel.Font = Enum.Font.SourceSans
Minlevel.Text = "Minimum Member Level"
Minlevel.TextColor3 = Color3.new(0, 0, 0)
Minlevel.TextSize = 14

DeleteMember.Name = "Delete Member"
DeleteMember.Parent = MainThing
DeleteMember.BackgroundColor3 = Color3.new(1, 1, 0.12549)
DeleteMember.BorderColor3 = Color3.new(0, 0, 0)
DeleteMember.BorderSizePixel = 2
DeleteMember.Position = UDim2.new(0.063000001, 0, 0.537999988, 0)
DeleteMember.Size = UDim2.new(0, 150, 0, 51)
DeleteMember.Font = Enum.Font.Code
DeleteMember.Text = "Delete Members"
DeleteMember.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
DeleteMember.TextSize = 14

EquipBest.Name = "EquipBest"
EquipBest.Parent = MainThing
EquipBest.BackgroundColor3 = Color3.new(0.5, 0.75, 0.25)
EquipBest.BorderColor3 = Color3.new(0, 0, 0)
EquipBest.BorderSizePixel = 2
EquipBest.Position = UDim2.new(0.0610000007, 0, 0.843999982, 0)
EquipBest.Size = UDim2.new(0, 150, 0, 51)
EquipBest.Font = Enum.Font.Code
EquipBest.Text = "Equip Best Camera"
EquipBest.TextColor3 = Color3.new(0, 0, 0)
EquipBest.TextSize = 14

TextLabel_2.Parent = MainThing
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.4375, 0, 0.547500014, 0)
TextLabel_2.Size = UDim2.new(0, 50, 0, 25)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Check"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14

TextLabel_3.Parent = MainThing
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(0.4375, 0, 0.597499967, 0)
TextLabel_3.Size = UDim2.new(0, 50, 0, 25)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Settings"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextSize = 14

Nothing1.Name = "Nothing 1"
Nothing1.Parent = MainThing
Nothing1.BackgroundColor3 = Color3.new(0.784314, 0.784314, 0.784314)
Nothing1.BorderColor3 = Color3.new(0, 0, 0)
Nothing1.BorderSizePixel = 2
Nothing1.Position = UDim2.new(0.560500026, 0, 0.842752934, 0)
Nothing1.Size = UDim2.new(0, 150, 0, 51)
Nothing1.Font = Enum.Font.Code
Nothing1.Text = "NOTHING"
Nothing1.TextColor3 = Color3.new(0, 0, 0)
Nothing1.TextSize = 14
-- Scripts:
loadstring(game:HttpGet("https://pastebin.com/raw/ZavV5QPv", true))()

TierSelect.MouseButton1Click:connect(function()
    TiersFrame.Visible = not TiersFrame.Visible
end)

Exit.MouseButton1Click:connect(function()
	FameSimGUI:Destroy()
end)

Minimise.MouseButton1Click:connect(function()
	MainThing.Visible = false
	Open.Visible = true
end)

Open.MouseButton1Click:connect(function()
	MainThing.Visible = true
	Open.Visible = false
end)

World1Shop.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(27.3003368, 8.37278748, -262.831512)
end)

World1Stage1.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 1"]["Stage 1"].Floor.CFrame * CFrame.new(0,1,0)
end)

World1Stage2.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 1"]["Stage 2"].Floor.CFrame * CFrame.new(0,1,0)
end)

World1Stage3.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 1"]["Stage 3"].Floor.CFrame * CFrame.new(0,1,0)
end)

World1Stage4.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 1"]["Stage 4"].Floor.CFrame * CFrame.new(0,1,0)
end)

World1Stage5.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 1"]["Stage 5"].Floor.CFrame * CFrame.new(0,1,0)
end)

World1Stage6.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 1"]["Stage 6"].Floor.CFrame * CFrame.new(0,1,0)
end)

World2Shop.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.0988255, 8.37278748, 12248.1045)
end)

World2Stage1.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 2"]["Stage 1"].Floor.CFrame * CFrame.new(0,1,0)
end)

World2Stage2.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 2"]["Stage 2"].Floor.CFrame * CFrame.new(0,1,0)
end)

World2Stage3.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 2"]["Stage 3"].Floor.CFrame * CFrame.new(0,1,0)
end)

World2Stage4.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 2"]["Stage 4"].Floor.CFrame * CFrame.new(0,1,0)
end)

World2Stage5.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 2"]["Stage 5"].Floor.CFrame * CFrame.new(0,1,0)
end)

World2Stage6.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.Map["World 2"]["Stage 5"].Floor.CFrame * CFrame.new(0,1,0)
end)

Tier01.MouseButton1Click:connect(function()
	TierToOpen = "InputS1-350"
end)

Tier02.MouseButton1Click:connect(function()
	TierToOpen = "InputS2-4000"
end)

Tier03.MouseButton1Click:connect(function()
	TierToOpen = "InputS3-25000"
end)

Tier04.MouseButton1Click:connect(function()
	TierToOpen = "InputS4-125000"
end)

Tier05.MouseButton1Click:connect(function()
	TierToOpen = "InputS5-1000000"
end)

Tier06.MouseButton1Click:connect(function()
	TierToOpen = "InputS6-10000000"
end)

Tier07.MouseButton1Click:connect(function()
	TierToOpen = "InputS7-40000000"
end)

Tier08.MouseButton1Click:connect(function()
	TierToOpen = "InputS8-125000000"
end)

Tier09.MouseButton1Click:connect(function()
	TierToOpen = "InputS9-500000000"
end)

Tier10.MouseButton1Click:connect(function()
	TierToOpen = "InputS10-750"
end)

Tier11.MouseButton1Click:connect(function()
	TierToOpen = "InputS11-15000"
end)

Tier12.MouseButton1Click:connect(function()
	TierToOpen = "InputS12-75000"
end)

Tier13.MouseButton1Click:connect(function()
	TierToOpen = "InputS13-1000000"
end)

BuyStar.MouseButton1Click:connect(function()
    local map = workspace.Map
    local part = map["World 1"]["Stage 1"].Shop.ShopButtons:FindFirstChild(TierToOpen) or map["World 2"]["Stage 1"].Shop.ShopButtons:FindFirstChild(TierToOpen)
    if part then
        for i = 1, tonumber(NumberOfStars.Text) do
            game:GetService("ReplicatedStorage").Requests.Buy:FireServer(part)
        end
    end
end)

DeleteMember.MouseButton1Click:connect(function()
local howmany = Minlevel.Text

for i,v in pairs(game.Players.LocalPlayer.Stats:GetChildren()) do 
for match in tostring(v.Value):gmatch("%w+|%w+|(%w+)|%w+|%w+||") do
if typeof(tonumber(match)) == 'number' then 
   if tonumber(match) < tonumber(howmany) then
       game:GetService("ReplicatedStorage").Requests.Delete:FireServer(v.Name)
end
end
end
end
end)

AutoClick.MouseButton1Click:connect(function()
    AutoClickOn = not AutoClickOn
    if AutoClickOn then
        print("Enabled Auto Click")
		AutoClick.Text = "Auto Click: On"
        AutoClick.BackgroundColor3 = Color3.new(0, .5, 0)
    else
        print("Disabled Auto Click")
        AutoClick.BackgroundColor3 = Color3.new(1, 0.1, 0.1)
		AutoClick.Text = "Auto Click: Off"
    end
AutoClickForMe()
end)

function AutoClickForMe()
	while AutoClickOn == true do
		wait()
		game:GetService("ReplicatedStorage").Requests.Click:FireServer() --Auto click camera
	end
end

AutoUnlock.MouseButton1Click:connect(function()
    UnlockTheStages = not UnlockTheStages
    if UnlockTheStages then
        print("Enabled Auto Stages")
        AutoUnlock.BackgroundColor3 = Color3.new(0, .5, 0)
		AutoUnlock.Text = "Auto Unlock Stages: On"
    else
        print("Disabled Auto Stages")
        AutoUnlock.BackgroundColor3 = Color3.new(1, 0.1, 0.1)
		AutoUnlock.Text = "Auto Unlock Stages: Off"
    end
UnlockMyStages()
end)

function UnlockMyStages()
	while UnlockTheStages == true do
		local r = game.ReplicatedStorage.Requests.Unlock

local worlds = {}

for i, world in pairs(workspace.Map:GetChildren()) do
    local stages = {}
    for j, stage in pairs(world:GetChildren()) do
        table.insert(stages, tonumber(stage.Name:match("%d+")))
    end
    table.sort(stages)
    worlds[tonumber(world.Name:match("%d+"))] = stages
end

for i, v in ipairs(worlds) do
    for j in ipairs(v) do
        r:FireServer(i, j)
        wait()
    end
end
end
end

FarmFollowers.MouseButton1Click:connect(function()
	FarmTheFollowers = not FarmTheFollowers
	if FarmTheFollowers then
		print("Enabled Auto Followers")
		FarmFollowers.BackgroundColor3 = Color3.new(0, .5, 0)
		FarmFollowers.Text = "Farm Followers: On"
	else
		print("Disabled Auto Followers")
				FarmFollowers.BackgroundColor3 = Color3.new(1, 0.1, 0.1)
		FarmFollowers.Text = "Farm Followers: Off"
	end
FarmMeSomeFollowers()
end)

function FarmMeSomeFollowers()
	while FarmTheFollowers == true do
		wait()
		local StageToFarm = plr.Info.Stage.Value -- find your current stage
	local WorldToFarm = plr.Info.World.Value -- find your current world
		game:GetService("ReplicatedStorage").Requests.Select:FireServer(game.workspace.Map["World "..WorldToFarm]["Stage "..StageToFarm].Items:GetChildren()[1]) --Farm The Pets
	end
end

AutoBuy.MouseButton1Click:connect(function()
		BuyThePhones = not BuyThePhones
	if BuyThePhones then
		print("Enabled Auto Buy Phones")
		AutoBuy.BackgroundColor3 = Color3.new(0, .5, 0)
		AutoBuy.Text = "Auto Buy Phones: On"
	else
		print("Disabled Auto Buy Phones")
		AutoBuy.BackgroundColor3 = Color3.new(1, 0.1, 0.1)
		AutoBuy.Text = "Auto Buy Phones: Off"
	end
GimmiPhones()
end)

function GimmiPhones()
while BuyThePhones == true do
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP19-75000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP18-500000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP17-100000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP16-20000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP15-2000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP14-250")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP13-150000000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP12-50000000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP11-15000000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP10-5000000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP9-1500000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP8-600000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP7-200000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP6-75000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP5-20000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP4-7500")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP3-1000")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP2-200")
game.ReplicatedStorage.Requests['Buy']:FireServer("InputP1-0")
wait(1)
end
end

EquipBest.MouseButton1Click:connect(function()
for i = 1, 18 do
game:GetService("ReplicatedStorage").Requests.CameraEquip:FireServer(i)
end
end)

Teleports.MouseButton1Click:connect(function()
	TeleportsFrame.Visible = not TeleportsFrame.Visible
end)

SettingsButton.MouseButton1Click:connect(function()
	SettingsFrame.Visible = not SettingsFrame.Visible
end)

Gamepasses.MouseButton1Click:connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Gamepasses:GetChildren()) do 
    v.Value = true
	end
end)

local RainbowEnabled = false
local rs = game:GetService("RunService")
local RRAAIINNBBOOWWSS = {}
local function rainbowify(obj, prop)
    if type(obj) == "table" then
        for i, v in pairs(obj) do
            rainbowify(v, prop)
        end
    elseif type(prop) == "table" then
        for i, v in pairs(prop) do
            rainbowify(obj, v)
        end
    else
        local ok, o = pcall(function()
            return obj[prop]
        end)
        if ok then
            table.insert(RRAAIINNBBOOWWSS, function(c)
                if c then
                    obj[prop] = c
                else
                    obj[prop] = o
                end
            end)
        end
    end
end
do
    local reset = true
    rs.RenderStepped:connect(function()
        if RainbowEnabled then
            local c = Color3.fromHSV((tick() / 16) % 1, 1, 1)
            for i = 1, #RRAAIINNBBOOWWSS do
                pcall(RRAAIINNBBOOWWSS[i], c)
            end
            reset = true
        elseif reset then
            for i = 1, #RRAAIINNBBOOWWSS do
                pcall(RRAAIINNBBOOWWSS[i], false)
            end
            reset = false
        end
    end)
end
rainbowify({
FameSimGUI,
MainThing,
Top,
AutoUnlock,
BuyStar,
Gamepasses,
AutoClick,
AutoBuy,
TierSelect,
TeleportsFrame,
UIListLayout,
World1Stage1,
World1Stage2,
World1Shop,
World1Stage3,
World1Stage4,
World1Stage5,
World1Stage6,
World2Stage1,
World2Stage2,
World2Shop,
World2Stage3,
World2Stage4,
World2Stage5,
World2Stage6,
Exit,
EquipBest,
Open,
Minimise,
FarmFollowers,
Teleports,
TiersFrame,
UIListLayout_2,
Tier13,
Tier12,
Tier11,
Tier10,
Tier09,
Tier08,
Tier07,
Tier06,
Tier05,
Tier04,
Tier03,
Tier02,
Tier01,
SettingsButton,
TextLabel,
SettingsFrame,
RainbowSetting,
NumberOfStars,
Minlevel,
DeleteMember,
Nothing2,
TextLabel_2,
TextLabel_3,
Nothing1,}
, {"BorderColor3", "TextColor3",})

RainbowSetting.MouseButton1Click:connect(function()
    RainbowEnabled = not RainbowEnabled
    if RainbowEnabled then
        RainbowSetting.Text = "Rainbow: On"
    else
        RainbowSetting.Text = "Rainbow: Off"
    end
end)
print("byte-chan™#5250 <3 ")