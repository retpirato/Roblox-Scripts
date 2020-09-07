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
local SelectEgg = Instance.new("TextButton")
local TeleportsFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local World1Stage1 = Instance.new("TextButton")
local World1Stage2 = Instance.new("TextButton")
local World1Shop = Instance.new("TextButton")
local World1Stage3 = Instance.new("TextButton")
local World1Stage4 = Instance.new("TextButton")
local World1Stage5 = Instance.new("TextButton")
local World1Stage6 = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local FarmFollowers = Instance.new("TextButton")
local TeleportsButton = Instance.new("TextButton")
local Teirs = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Teir08 = Instance.new("TextButton")
local Teir07 = Instance.new("TextButton")
local Teir06 = Instance.new("TextButton")
local Teir05 = Instance.new("TextButton")
local Teir04 = Instance.new("TextButton")
local Teir03 = Instance.new("TextButton")
local Teir02 = Instance.new("TextButton")
local Teir01 = Instance.new("TextButton")
local Teir09 = Instance.new("TextButton")
local SettingsButton = Instance.new("TextButton")
local NumberOfStars = Instance.new("TextBox")
local Settings = Instance.new("Frame")
local RainbowSetting = Instance.new("TextButton")
local plr = game.Players.LocalPlayer -- find you in "Players"

TeirToOpen = nil
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
AutoUnlock.Position = UDim2.new(0.563000023, 0, 0.258845299, 0)
AutoUnlock.Size = UDim2.new(0, 150, 0, 59)
AutoUnlock.Font = Enum.Font.Code
AutoUnlock.Text = "Auto Unlock Stages"
AutoUnlock.TextColor3 = Color3.new(1, 1, 1)
AutoUnlock.TextSize = 14

BuyStar.Name = "Buy Star"
BuyStar.Parent = MainThing
BuyStar.BackgroundColor3 = Color3.new(1, 0.54902, 0)
BuyStar.BorderColor3 = Color3.new(0, 0, 0)
BuyStar.BorderSizePixel = 2
BuyStar.Position = UDim2.new(0.563000023, 0, 0.611535847, 0)
BuyStar.Size = UDim2.new(0, 150, 0, 59)
BuyStar.Font = Enum.Font.Code
BuyStar.Text = "Buy Star"
BuyStar.TextColor3 = Color3.new(1, 1, 1)
BuyStar.TextSize = 14

Gamepasses.Name = "Gamepasses"
Gamepasses.Parent = MainThing
Gamepasses.BackgroundColor3 = Color3.new(0.670588, 0.231373, 0.662745)
Gamepasses.BorderColor3 = Color3.new(0, 0, 0)
Gamepasses.BorderSizePixel = 2
Gamepasses.Position = UDim2.new(0.0619999692, 0, 0.435190588, 0)
Gamepasses.Size = UDim2.new(0, 150, 0, 59)
Gamepasses.Font = Enum.Font.Code
Gamepasses.Text = "Gamepasses(Useless)"
Gamepasses.TextColor3 = Color3.new(1, 1, 1)
Gamepasses.TextSize = 14

AutoClick.Name = "Auto Click"
AutoClick.Parent = MainThing
AutoClick.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
AutoClick.BorderColor3 = Color3.new(0, 0, 0)
AutoClick.BorderSizePixel = 2
AutoClick.Position = UDim2.new(0.0630000308, 0, 0.0825000033, 0)
AutoClick.Size = UDim2.new(0, 150, 0, 59)
AutoClick.Font = Enum.Font.Code
AutoClick.Text = "Auto Click: Off"
AutoClick.TextColor3 = Color3.new(1, 1, 1)
AutoClick.TextSize = 14

AutoBuy.Name = "AutoBuy"
AutoBuy.Parent = MainThing
AutoBuy.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
AutoBuy.BorderColor3 = Color3.new(0, 0, 0)
AutoBuy.BorderSizePixel = 2
AutoBuy.Position = UDim2.new(0.0630000308, 0, 0.258845299, 0)
AutoBuy.Size = UDim2.new(0, 150, 0, 59)
AutoBuy.Font = Enum.Font.Code
AutoBuy.Text = "Auto Buy Phones: Off"
AutoBuy.TextColor3 = Color3.new(1, 1, 1)
AutoBuy.TextSize = 14

SelectEgg.Name = "Select Egg"
SelectEgg.Parent = MainThing
SelectEgg.BackgroundColor3 = Color3.new(0, 0, 0)
SelectEgg.BorderColor3 = Color3.new(0, 0, 0)
SelectEgg.BorderSizePixel = 2
SelectEgg.Position = UDim2.new(0.0599999987, 0, 0.611535847, 0)
SelectEgg.Size = UDim2.new(0, 150, 0, 59)
SelectEgg.Font = Enum.Font.Code
SelectEgg.Text = "Teir Select"
SelectEgg.TextColor3 = Color3.new(1, 1, 1)
SelectEgg.TextSize = 14

TeleportsFrame.Name = "TeleportsFrame"
TeleportsFrame.Parent = MainThing
TeleportsFrame.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
TeleportsFrame.BorderColor3 = Color3.new(0, 0, 0)
TeleportsFrame.BorderSizePixel = 2
TeleportsFrame.Position = UDim2.new(1.01600409, 0, 0, 0)
TeleportsFrame.Size = UDim2.new(0, 150, 0, 400)
TeleportsFrame.ScrollBarThickness = 7
TeleportsFrame.Visible = false

UIListLayout.Parent = TeleportsFrame
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Padding = UDim.new(0.00999999978, 0)

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

FarmFollowers.Name = "FarmFollowers"
FarmFollowers.Parent = MainThing
FarmFollowers.BackgroundColor3 = Color3.new(0.784314, 0, 0.0117647)
FarmFollowers.BorderColor3 = Color3.new(0, 0, 0)
FarmFollowers.BorderSizePixel = 2
FarmFollowers.Position = UDim2.new(0.563000023, 0, 0.0825000033, 0)
FarmFollowers.Size = UDim2.new(0, 150, 0, 59)
FarmFollowers.Font = Enum.Font.Code
FarmFollowers.Text = "Auto Farm Followers:Off"
FarmFollowers.TextColor3 = Color3.new(1, 1, 1)
FarmFollowers.TextSize = 12

TeleportsButton.Name = "Teleports"
TeleportsButton.Parent = MainThing
TeleportsButton.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
TeleportsButton.BorderColor3 = Color3.new(0, 0, 0)
TeleportsButton.BorderSizePixel = 2
TeleportsButton.Position = UDim2.new(0.563000023, 0, 0.435190588, 0)
TeleportsButton.Size = UDim2.new(0, 150, 0, 59)
TeleportsButton.Font = Enum.Font.Code
TeleportsButton.Text = "Teleports"
TeleportsButton.TextColor3 = Color3.new(0, 0, 0)
TeleportsButton.TextSize = 14

Teirs.Name = "Teirs"
Teirs.Parent = MainThing
Teirs.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Teirs.BorderColor3 = Color3.new(0, 0, 0)
Teirs.BorderSizePixel = 2
Teirs.Position = UDim2.new(-0.391496122, 0, -0.000190705061, 0)
Teirs.Size = UDim2.new(0, 150, 0, 400)
Teirs.ScrollBarThickness = 7
Teirs.Visible = false

UIListLayout_2.Parent = Teirs
UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_2.Padding = UDim.new(0.00999999978, 0)

Teir08.Name = "Teir 08"
Teir08.Parent = Teirs
Teir08.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir08.BorderColor3 = Color3.new(0, 0, 0)
Teir08.BorderSizePixel = 2
Teir08.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Teir08.Size = UDim2.new(0, 125, 0, 50)
Teir08.Font = Enum.Font.SourceSans
Teir08.Text = "Teir 08"
Teir08.TextColor3 = Color3.new(0, 0, 0)
Teir08.TextSize = 14

Teir07.Name = "Teir 07"
Teir07.Parent = Teirs
Teir07.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir07.BorderColor3 = Color3.new(0, 0, 0)
Teir07.BorderSizePixel = 2
Teir07.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Teir07.Size = UDim2.new(0, 125, 0, 50)
Teir07.Font = Enum.Font.SourceSans
Teir07.Text = "Teir 07"
Teir07.TextColor3 = Color3.new(0, 0, 0)
Teir07.TextSize = 14

Teir06.Name = "Teir 06"
Teir06.Parent = Teirs
Teir06.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir06.BorderColor3 = Color3.new(0, 0, 0)
Teir06.BorderSizePixel = 2
Teir06.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Teir06.Size = UDim2.new(0, 125, 0, 50)
Teir06.Font = Enum.Font.SourceSans
Teir06.Text = "Teir 06"
Teir06.TextColor3 = Color3.new(0, 0, 0)
Teir06.TextSize = 14

Teir05.Name = "Teir 05"
Teir05.Parent = Teirs
Teir05.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir05.BorderColor3 = Color3.new(0, 0, 0)
Teir05.BorderSizePixel = 2
Teir05.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Teir05.Size = UDim2.new(0, 125, 0, 50)
Teir05.Font = Enum.Font.SourceSans
Teir05.Text = "Teir 05"
Teir05.TextColor3 = Color3.new(0, 0, 0)
Teir05.TextSize = 14

Teir04.Name = "Teir 04"
Teir04.Parent = Teirs
Teir04.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir04.BorderColor3 = Color3.new(0, 0, 0)
Teir04.BorderSizePixel = 2
Teir04.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Teir04.Size = UDim2.new(0, 125, 0, 50)
Teir04.Font = Enum.Font.SourceSans
Teir04.Text = "Teir 04"
Teir04.TextColor3 = Color3.new(0, 0, 0)
Teir04.TextSize = 14

Teir03.Name = "Teir 03"
Teir03.Parent = Teirs
Teir03.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir03.BorderColor3 = Color3.new(0, 0, 0)
Teir03.BorderSizePixel = 2
Teir03.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Teir03.Size = UDim2.new(0, 125, 0, 50)
Teir03.Font = Enum.Font.SourceSans
Teir03.Text = "Teir 03"
Teir03.TextColor3 = Color3.new(0, 0, 0)
Teir03.TextSize = 14

Teir02.Name = "Teir 02"
Teir02.Parent = Teirs
Teir02.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir02.BorderColor3 = Color3.new(0, 0, 0)
Teir02.BorderSizePixel = 2
Teir02.Position = UDim2.new(0.166666672, 0, -1.01725263e-07, 0)
Teir02.Size = UDim2.new(0, 125, 0, 50)
Teir02.Font = Enum.Font.SourceSans
Teir02.Text = "Teir 02"
Teir02.TextColor3 = Color3.new(0, 0, 0)
Teir02.TextSize = 14

Teir01.Name = "Teir 01"
Teir01.Parent = Teirs
Teir01.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir01.BorderColor3 = Color3.new(0, 0, 0)
Teir01.BorderSizePixel = 2
Teir01.Position = UDim2.new(0.166666672, 0, 0.0199998971, 0)
Teir01.Size = UDim2.new(0, 125, 0, 50)
Teir01.Font = Enum.Font.SourceSans
Teir01.Text = "Teir 01"
Teir01.TextColor3 = Color3.new(0, 0, 0)
Teir01.TextSize = 14

Teir09.Name = "Teir 09"
Teir09.Parent = Teirs
Teir09.BackgroundColor3 = Color3.new(0, 0.686275, 0.686275)
Teir09.BorderColor3 = Color3.new(0, 0, 0)
Teir09.BorderSizePixel = 2
Teir09.Position = UDim2.new(0.126666665, 0, -0.818750083, 0)
Teir09.Size = UDim2.new(0, 125, 0, 50)
Teir09.Font = Enum.Font.SourceSans
Teir09.Text = "Teir 09"
Teir09.TextColor3 = Color3.new(0, 0, 0)
Teir09.TextSize = 14

SettingsButton.Name = "SettingsButton"
SettingsButton.Parent = MainThing
SettingsButton.BackgroundColor3 = Color3.new(0, 0, 0)
SettingsButton.BorderColor3 = Color3.new(0, 0, 0)
SettingsButton.BorderSizePixel = 2
SettingsButton.Position = UDim2.new(0.0599999987, 0, 0.787881136, 0)
SettingsButton.Size = UDim2.new(0, 150, 0, 59)
SettingsButton.Font = Enum.Font.Code
SettingsButton.Text = "Settings"
SettingsButton.TextColor3 = Color3.new(1, 1, 1)
SettingsButton.TextSize = 14

NumberOfStars.Name = "Number Of Stars"
NumberOfStars.Parent = MainThing
NumberOfStars.BackgroundColor3 = Color3.new(1, 0.54902, 0)
NumberOfStars.Position = UDim2.new(0.563000023, 0, 0.787418842, 0)
NumberOfStars.Size = UDim2.new(0, 150, 0, 59)
NumberOfStars.Font = Enum.Font.SourceSans
NumberOfStars.Text = "Amount Of Stars To Open"
NumberOfStars.TextColor3 = Color3.new(1, 1, 1)
NumberOfStars.TextSize = 14

Settings.Name = "Settings"
Settings.Parent = MainThing
Settings.BackgroundColor3 = Color3.new(0.392157, 0.392157, 0.392157)
Settings.BorderColor3 = Color3.new(0, 0, 0)
Settings.BorderSizePixel = 2
Settings.Position = UDim2.new(-0.00100621581, 0, 1.01374257, 0)
Settings.Size = UDim2.new(0, 400, 0, 100)
Settings.Visible = false

RainbowSetting.Name = "Rainbow Setting"
RainbowSetting.Parent = Settings
RainbowSetting.BackgroundColor3 = Color3.new(1, 1, 1)
RainbowSetting.BackgroundTransparency = 1
RainbowSetting.Position = UDim2.new(-0.00100616459, 0, -0.00519073009, 0)
RainbowSetting.Size = UDim2.new(0, 400, 0, 100)
RainbowSetting.Font = Enum.Font.SourceSans
RainbowSetting.Text = "Rainbow: Off"
RainbowSetting.TextColor3 = Color3.new(0, 0, 0)
RainbowSetting.TextSize = 25
RainbowSetting.TextStrokeColor3 = Color3.new(1, 1, 1)
RainbowSetting.TextStrokeTransparency = 0.5
-- Scripts:

SelectEgg.MouseButton1Click:connect(function()
    Teirs.Visible = not Teirs.Visible
end)

Exit.MouseButton1Click:connect(function()
	FameSimGUI:Destroy()
end)

World1Shop.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(27.3003368, 8.37278748, -262.831512)
end)

World1Stage1.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(29, 4.86499977, -68)

end)

World1Stage2.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(27, 4.86499977, 255)
end)

World1Stage3.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(28, 4.86499977, 661)
end)

World1Stage4.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26, 4.86499977, 1067)
end)

World1Stage5.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(30, 4.86499977, 1441)
end)

World1Stage6.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.5, 4.86499977, 1859)
end)

Teir01.MouseButton1Click:connect(function()
	TeirToOpen = "InputS1-350"
end)

Teir02.MouseButton1Click:connect(function()
	TeirToOpen = "InputS2-4000"
end)

Teir03.MouseButton1Click:connect(function()
	TeirToOpen = "InputS3-25000"
end)

Teir04.MouseButton1Click:connect(function()
	TeirToOpen = "InputS4-125000"
end)

Teir05.MouseButton1Click:connect(function()
	TeirToOpen = "InputS5-1000000"
end)

Teir06.MouseButton1Click:connect(function()
	TeirToOpen = "InputS6-10000000"
end)

Teir07.MouseButton1Click:connect(function()
	TeirToOpen = "InputS7-40000000"
end)

Teir08.MouseButton1Click:connect(function()
	TeirToOpen = "InputS8-125000000"
end)

Teir09.MouseButton1Click:connect(function()
	TeirToOpen = "InputS9-500000000"
end)

BuyStar.MouseButton1Click:connect(function()
	for i = 1,NumberOfStars.Text do
	game:GetService("ReplicatedStorage").Requests.Buy:FireServer(game:GetService("Workspace").Shop.ShopButtons[TeirToOpen])
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
	for i,v in ipairs(game.Workspace.Shop.ShopButtons:GetChildren()) do 
	game.ReplicatedStorage.Requests['Buy']:FireServer(v.Name)
	end
	wait()
end
end

TeleportsButton.MouseButton1Click:connect(function()
	TeleportsFrame.Visible = not TeleportsFrame.Visible
end)

SettingsButton.MouseButton1Click:connect(function()
	Settings.Visible = not Settings.Visible
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
FameSimGUI, MainThing, Top, AutoUnlock, BuyStar, Gamepasses, AutoClick, AutoBuy, SelectEgg, TeleportsFrame, World1Stage1, World1Stage2, World1Shop, World1Stage3, World1Stage4, World1Stage5, World1Stage6, Exit, FarmFollowers, TeleportsButton, Teirs, Teir08, Teir07, Teir06, Teir05, Teir04, Teir03, Teir02, Teir01, Teir09, SettingsButton, NumberOfStars, Settings, RainbowSetting,
}
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