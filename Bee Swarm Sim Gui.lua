AntiAFKMode = "Nothing"
PollenFarmActive = false

-- Objects

local MainGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local WayPoints = Instance.new("TextButton")
local WayPointsFrame = Instance.new("Frame")
local ShowLocation = Instance.new("TextLabel")
local SetLocation = Instance.new("TextButton")
local TPLocation = Instance.new("TextButton")
local TPShop = Instance.new("TextButton")
local ReturnToHive = Instance.new("TextButton")
local TPShop2 = Instance.new("TextButton")
local BeeShop = Instance.new("TextButton")
local BlackBear = Instance.new("TextButton")
local BrownBear = Instance.new("TextButton")
local PandaBear = Instance.new("TextButton")
local PolarBear = Instance.new("TextButton")
local ScienceBear = Instance.new("TextButton")
local StrawBerryField = Instance.new("TextButton")
local PumpkinField = Instance.new("TextButton")
local SunflowerField = Instance.new("TextButton")
local CloverField = Instance.new("TextButton")
local SpiderField = Instance.new("TextButton")
local MushRoomField = Instance.new("TextButton")
local BamBooField = Instance.new("TextButton")
local DandelionField = Instance.new("TextButton")
local PineappleField = Instance.new("TextButton")
local BlueField = Instance.new("TextButton")
local RoseField = Instance.new("TextButton")
local CactusField = Instance.new("TextButton")
local PineTreeField = Instance.new("TextButton")
local MountainTopField = Instance.new("TextButton")
local Players = Instance.new("TextButton")
local PlayerFrame = Instance.new("Frame")
local PlayerList = Instance.new("Frame")
local PlayerListBox = Instance.new("Frame")
local PlyrSel = Instance.new("TextLabel")
local Player1 = Instance.new("TextButton")
local Player2 = Instance.new("TextButton")
local Player3 = Instance.new("TextButton")
local Player4 = Instance.new("TextButton")
local Player5 = Instance.new("TextButton")
local TpPlayer = Instance.new("TextButton")
local FindTreasures = Instance.new("TextButton")
local FindTreasuresText1 = Instance.new("TextLabel")
local ExtrasScreen = Instance.new("TextButton")
local ExtrasFrame = Instance.new("Frame")
local InfoScreen = Instance.new("TextButton")
local InfoFrame = Instance.new("Frame")
local TPTool = Instance.new("TextButton")
local ReJoinServer = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local InfoText1 = Instance.new("TextLabel")
local PollenFarm = Instance.new("TextButton")

-- Properties

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.CoreGui
local MainCORE = game.CoreGui["MainGUI"]

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGUI
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0.5
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, -266, 0, -32)
MainFrame.Size = UDim2.new(0, 533, 0, 30)

Close.Name = "Close"
Close.Parent = MainFrame
Close.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Close.BorderColor3 = Color3.new(0, 1, 0)
Close.Position = UDim2.new(0, 5, 0, 5)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.Fantasy
Close.FontSize = Enum.FontSize.Size18
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextSize = 17
Close.TextScaled = true
Close.TextWrapped = true

WayPoints.Name = "WayPoints"
WayPoints.Parent = MainFrame
WayPoints.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
WayPoints.BorderColor3 = Color3.new(0, 1, 0)
WayPoints.Position = UDim2.new(0, 30, 0, 5)
WayPoints.Size = UDim2.new(0, 83, 0, 20)
WayPoints.BackgroundTransparency = 0
WayPoints.Font = Enum.Font.Fantasy
WayPoints.FontSize = Enum.FontSize.Size18
WayPoints.TextColor3 = Color3.new(1, 1, 1)
WayPoints.Text = "WayPoints"
WayPoints.TextSize = 17
WayPoints.TextWrapped = true

WayPointsFrame.Name = "WayPointsFrame"
WayPointsFrame.Parent = MainFrame
WayPointsFrame.BackgroundColor3 = Color3.new(0, 0, 0)
WayPointsFrame.BorderColor3 = Color3.new(0, 0, 0)
WayPointsFrame.BackgroundTransparency = 0.4
WayPointsFrame.Position = UDim2.new(0, 0, 0, 32)
WayPointsFrame.Size = UDim2.new(0, 375, 0, 330)
WayPointsFrame.Visible = false

ShowLocation.Name = "ShowLocation"
ShowLocation.Parent = WayPointsFrame
ShowLocation.BackgroundColor3 = Color3.new(1, 1, 1)
ShowLocation.TextColor3 = Color3.new(0, 0, 0)
ShowLocation.BorderColor3 = Color3.new(0, 0, 0)
ShowLocation.Position = UDim2.new(0, 5, 0, 5)
ShowLocation.Size = UDim2.new(0, 170, 0, 20)
ShowLocation.Font = Enum.Font.Fantasy
ShowLocation.Text = "Current Location"
ShowLocation.TextWrapped = true
ShowLocation.TextSize = 15

SetLocation.Name = "SetLocation"
SetLocation.Parent = WayPointsFrame
SetLocation.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SetLocation.TextColor3 = Color3.new(1, 1, 1)
SetLocation.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SetLocation.Position = UDim2.new(0, 180, 0, 5)
SetLocation.Size = UDim2.new(0, 120, 0, 20)
SetLocation.Font = Enum.Font.Fantasy
SetLocation.Text = "Set Location"
SetLocation.TextWrapped = true
SetLocation.TextSize = 16

TPLocation.Name = "TPLocation"
TPLocation.Parent = WayPointsFrame
TPLocation.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPLocation.TextColor3 = Color3.new(1, 1, 1)
TPLocation.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPLocation.Position = UDim2.new(0, 305, 0, 5)
TPLocation.Size = UDim2.new(0, 65, 0, 20)
TPLocation.Font = Enum.Font.Fantasy
TPLocation.Text = "Move to"
TPLocation.TextWrapped = true
TPLocation.TextSize = 16

ReturnToHive.Name = "ReturnToHive"
ReturnToHive.Parent = WayPointsFrame
ReturnToHive.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ReturnToHive.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ReturnToHive.Position = UDim2.new(0, 5, 0, 30)
ReturnToHive.Size = UDim2.new(0, 180, 0, 20)
ReturnToHive.TextColor3 = Color3.new(1, 1, 1)
ReturnToHive.Font = Enum.Font.Fantasy
ReturnToHive.Text = "Return To Hive"
ReturnToHive.TextSize = 16

BlackBear.Name = "BlackBear"
BlackBear.Parent = WayPointsFrame
BlackBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlackBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlackBear.Position = UDim2.new(0, 5, 0, 55)
BlackBear.Size = UDim2.new(0, 180, 0, 20)
BlackBear.TextColor3 = Color3.new(1, 1, 1)
BlackBear.Font = Enum.Font.Fantasy
BlackBear.Text = "Black Bear"
BlackBear.TextSize = 16

BrownBear.Name = "BrownBear"
BrownBear.Parent = WayPointsFrame
BrownBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BrownBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BrownBear.Position = UDim2.new(0, 5, 0, 80)
BrownBear.Size = UDim2.new(0, 180, 0, 20)
BrownBear.TextColor3 = Color3.new(1, 1, 1)
BrownBear.Font = Enum.Font.Fantasy
BrownBear.Text = "Brown Bear"
BrownBear.TextSize = 16

PandaBear.Name = "PandaBear"
PandaBear.Parent = WayPointsFrame
PandaBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PandaBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PandaBear.Position = UDim2.new(0, 5, 0, 105)
PandaBear.Size = UDim2.new(0, 180, 0, 20)
PandaBear.TextColor3 = Color3.new(1, 1, 1)
PandaBear.Font = Enum.Font.Fantasy
PandaBear.Text = "Panda Bear"
PandaBear.TextSize = 16

PolarBear.Name = "PolarBear"
PolarBear.Parent = WayPointsFrame
PolarBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PolarBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PolarBear.Position = UDim2.new(0, 5, 0, 130)
PolarBear.Size = UDim2.new(0, 180, 0, 20)
PolarBear.TextColor3 = Color3.new(1, 1, 1)
PolarBear.Font = Enum.Font.Fantasy
PolarBear.Text = "Polar Bear"
PolarBear.TextSize = 16

ScienceBear.Name = "ScienceBear"
ScienceBear.Parent = WayPointsFrame
ScienceBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ScienceBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ScienceBear.Position = UDim2.new(0, 5, 0, 155)
ScienceBear.Size = UDim2.new(0, 180, 0, 20)
ScienceBear.TextColor3 = Color3.new(1, 1, 1)
ScienceBear.Font = Enum.Font.Fantasy
ScienceBear.Text = "Science Bear"
ScienceBear.TextSize = 16

BeeShop.Name = "BeeShop"
BeeShop.Parent = WayPointsFrame
BeeShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BeeShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BeeShop.Position = UDim2.new(0, 5, 0, 180)
BeeShop.Size = UDim2.new(0, 180, 0, 20)
BeeShop.TextColor3 = Color3.new(1, 1, 1)
BeeShop.Font = Enum.Font.Fantasy
BeeShop.Text = "Bees Shop"
BeeShop.TextSize = 16

TPShop.Name = "TPShop"
TPShop.Parent = WayPointsFrame
TPShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPShop.Position = UDim2.new(0, 5, 0, 205)
TPShop.Size = UDim2.new(0, 180, 0, 20)
TPShop.TextColor3 = Color3.new(1, 1, 1)
TPShop.Font = Enum.Font.Fantasy
TPShop.Text = "Basic Tools Shop"
TPShop.TextSize = 16

TPShop2.Name = "TPShop2"
TPShop2.Parent = WayPointsFrame
TPShop2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPShop2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPShop2.Position = UDim2.new(0, 5, 0, 230)
TPShop2.Size = UDim2.new(0, 180, 0, 20)
TPShop2.TextColor3 = Color3.new(1, 1, 1)
TPShop2.Font = Enum.Font.Fantasy
TPShop2.Text = "Advanced Tools Shop"
TPShop2.TextSize = 16

SunflowerField.Name = "SunflowerField"
SunflowerField.Parent = WayPointsFrame
SunflowerField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SunflowerField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SunflowerField.Position = UDim2.new(0, 190, 0, 30)
SunflowerField.Size = UDim2.new(0, 180, 0, 20)
SunflowerField.TextColor3 = Color3.new(1, 1, 1)
SunflowerField.Font = Enum.Font.Fantasy
SunflowerField.Text = "Sunflower Field"
SunflowerField.TextSize = 16

MushRoomField.Name = "MushRoomField"
MushRoomField.Parent = WayPointsFrame
MushRoomField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MushRoomField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MushRoomField.Position = UDim2.new(0, 190, 0, 55)
MushRoomField.Size = UDim2.new(0, 180, 0, 20)
MushRoomField.TextColor3 = Color3.new(1, 1, 1)
MushRoomField.Font = Enum.Font.Fantasy
MushRoomField.Text = "MushRoom Field"
MushRoomField.TextSize = 16

DandelionField.Name = "DandelionField"
DandelionField.Parent = WayPointsFrame
DandelionField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DandelionField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DandelionField.Position = UDim2.new(0, 190, 0, 80)
DandelionField.Size = UDim2.new(0, 180, 0, 20)
DandelionField.TextColor3 = Color3.new(1, 1, 1)
DandelionField.Font = Enum.Font.Fantasy
DandelionField.Text = "Dandelion Field"
DandelionField.TextSize = 16

BlueField.Name = "BlueField"
BlueField.Parent = WayPointsFrame
BlueField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueField.Position = UDim2.new(0, 190, 0, 105)
BlueField.Size = UDim2.new(0, 180, 0, 20)
BlueField.TextColor3 = Color3.new(1, 1, 1)
BlueField.Font = Enum.Font.Fantasy
BlueField.Text = "Blue Flower Field"
BlueField.TextSize = 16

CloverField.Name = "CloverField"
CloverField.Parent = WayPointsFrame
CloverField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CloverField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CloverField.Position = UDim2.new(0, 190, 0, 130)
CloverField.Size = UDim2.new(0, 180, 0, 20)
CloverField.TextColor3 = Color3.new(1, 1, 1)
CloverField.Font = Enum.Font.Fantasy
CloverField.Text = "Clover Field"
CloverField.TextSize = 16

StrawBerryField.Name = "StrawBerryField"
StrawBerryField.Parent = WayPointsFrame
StrawBerryField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StrawBerryField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StrawBerryField.Position = UDim2.new(0, 190, 0, 155)
StrawBerryField.Size = UDim2.new(0, 180, 0, 20)
StrawBerryField.TextColor3 = Color3.new(1, 1, 1)
StrawBerryField.Font = Enum.Font.Fantasy
StrawBerryField.Text = "StrawBerry Field"
StrawBerryField.TextSize = 16

SpiderField.Name = "SpiderField"
SpiderField.Parent = WayPointsFrame
SpiderField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SpiderField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SpiderField.Position = UDim2.new(0, 190, 0, 180)
SpiderField.Size = UDim2.new(0, 180, 0, 20)
SpiderField.TextColor3 = Color3.new(1, 1, 1)
SpiderField.Font = Enum.Font.Fantasy
SpiderField.Text = "Spider Field"
SpiderField.TextSize = 16

BamBooField.Name = "BamBooField"
BamBooField.Parent = WayPointsFrame
BamBooField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BamBooField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BamBooField.Position = UDim2.new(0, 190, 0, 205)
BamBooField.Size = UDim2.new(0, 180, 0, 20)
BamBooField.TextColor3 = Color3.new(1, 1, 1)
BamBooField.Font = Enum.Font.Fantasy
BamBooField.Text = "BamBoo Field"
BamBooField.TextSize = 16

RoseField.Name = "RoseField"
RoseField.Parent = WayPointsFrame
RoseField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RoseField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RoseField.Position = UDim2.new(0, 190, 0, 230)
RoseField.Size = UDim2.new(0, 180, 0, 20)
RoseField.TextColor3 = Color3.new(1, 1, 1)
RoseField.Font = Enum.Font.Fantasy
RoseField.Text = "Rose Field"
RoseField.TextSize = 16

PineTreeField.Name = "PineTreeField"
PineTreeField.Parent = WayPointsFrame
PineTreeField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PineTreeField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PineTreeField.Position = UDim2.new(0, 190, 0, 255)
PineTreeField.Size = UDim2.new(0, 180, 0, 20)
PineTreeField.TextColor3 = Color3.new(1, 1, 1)
PineTreeField.Font = Enum.Font.Fantasy
PineTreeField.Text = "PineTree Field"
PineTreeField.TextSize = 16

CactusField.Name = "CactusField"
CactusField.Parent = WayPointsFrame
CactusField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CactusField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CactusField.Position = UDim2.new(0, 190, 0, 280)
CactusField.Size = UDim2.new(0, 180, 0, 20)
CactusField.TextColor3 = Color3.new(1, 1, 1)
CactusField.Font = Enum.Font.Fantasy
CactusField.Text = "Cactus Field"
CactusField.TextSize = 16

PumpkinField.Name = "PumpkinField"
PumpkinField.Parent = WayPointsFrame
PumpkinField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PumpkinField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PumpkinField.Position = UDim2.new(0, 190, 0, 305)
PumpkinField.Size = UDim2.new(0, 180, 0, 20)
PumpkinField.TextColor3 = Color3.new(1, 1, 1)
PumpkinField.Font = Enum.Font.Fantasy
PumpkinField.Text = "Pumpkin Field"
PumpkinField.TextSize = 16

PineappleField.Name = "PineappleField"
PineappleField.Parent = WayPointsFrame
PineappleField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PineappleField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PineappleField.Position = UDim2.new(0, 5, 0, 280)
PineappleField.Size = UDim2.new(0, 180, 0, 20)
PineappleField.TextColor3 = Color3.new(1, 1, 1)
PineappleField.Font = Enum.Font.Fantasy
PineappleField.Text = "Pineapple Field"
PineappleField.TextSize = 16

MountainTopField.Name = "MountainTopField"
MountainTopField.Parent = WayPointsFrame
MountainTopField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MountainTopField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MountainTopField.Position = UDim2.new(0, 5, 0, 305)
MountainTopField.Size = UDim2.new(0, 180, 0, 20)
MountainTopField.TextColor3 = Color3.new(1, 1, 1)
MountainTopField.Font = Enum.Font.Fantasy
MountainTopField.Text = "Mountain Top Field"
MountainTopField.TextSize = 16

Players.Name = "Players"
Players.Parent = MainFrame
Players.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Players.BorderColor3 = Color3.new(0, 1, 0)
Players.Position = UDim2.new(0, 118, 0, 5)
Players.Size = UDim2.new(0, 60, 0, 20)
Players.BackgroundTransparency = 0
Players.Font = Enum.Font.Fantasy
Players.FontSize = Enum.FontSize.Size18
Players.TextColor3 = Color3.new(1, 1, 1)
Players.Text = "Players"
Players.TextSize = 17
Players.TextWrapped = true

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = MainFrame
PlayerFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PlayerFrame.BackgroundTransparency = 0.5
PlayerFrame.BorderColor3 = Color3.new(0, 0, 0)
PlayerFrame.Position = UDim2.new(0, 63, 0, 35)
PlayerFrame.Size = UDim2.new(0, 170, 0, 200)
PlayerFrame.Visible = false

PlyrSel.Name = "PlyrSel"
PlyrSel.Parent = PlayerFrame
PlyrSel.BackgroundColor3 = Color3.new(1, 1, 1)
PlyrSel.BackgroundTransparency = 0.15
PlyrSel.BorderColor3 = Color3.new(0, 0, 0)
PlyrSel.Position = UDim2.new(0, 5, 0, 5)
PlyrSel.Size = UDim2.new(0, 160, 0, 20)
PlyrSel.Font = Enum.Font.SourceSans
PlyrSel.FontSize = Enum.FontSize.Size18
PlyrSel.Text = "SELECT A PLAYER"
PlyrSel.TextColor3 = Color3.new(0, 0, 0)
PlyrSel.TextScaled = true
PlyrSel.TextSize = 17
PlyrSel.TextWrapped = true

Player1.Name = "Player1"
Player1.Parent = PlayerFrame
Player1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player1.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player1.Position = UDim2.new(0, 5, 0, 35)
Player1.Size = UDim2.new(0, 160, 0, 20)
Player1.Font = Enum.Font.Fantasy
Player1.FontSize = Enum.FontSize.Size18
Player1.Text = ""
Player1.TextColor3 = Color3.new(1, 1, 1)
Player1.TextSize = 15
Player1.TextWrapped = true

Player2.Name = "Player2"
Player2.Parent = PlayerFrame
Player2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player2.Position = UDim2.new(0, 5, 0, 60)
Player2.Size = UDim2.new(0, 160, 0, 20)
Player2.Font = Enum.Font.Fantasy
Player2.FontSize = Enum.FontSize.Size18
Player2.Text = ""
Player2.TextColor3 = Color3.new(1, 1, 1)
Player2.TextSize = 15
Player2.TextWrapped = true

Player3.Name = "Player3"
Player3.Parent = PlayerFrame
Player3.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player3.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player3.Position = UDim2.new(0, 5, 0, 85)
Player3.Size = UDim2.new(0, 160, 0, 20)
Player3.Font = Enum.Font.Fantasy
Player3.FontSize = Enum.FontSize.Size18
Player3.Text = ""
Player3.TextColor3 = Color3.new(1, 1, 1)
Player3.TextSize = 15
Player3.TextWrapped = true

Player4.Name = "Player4"
Player4.Parent = PlayerFrame
Player4.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player4.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player4.Position = UDim2.new(0, 5, 0, 110)
Player4.Size = UDim2.new(0, 160, 0, 20)
Player4.Font = Enum.Font.Fantasy
Player4.FontSize = Enum.FontSize.Size18
Player4.Text = ""
Player4.TextColor3 = Color3.new(1, 1, 1)
Player4.TextSize = 15
Player4.TextWrapped = true

Player5.Name = "Player5"
Player5.Parent = PlayerFrame
Player5.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Player5.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Player5.Position = UDim2.new(0, 5, 0, 135)
Player5.Size = UDim2.new(0, 160, 0, 20)
Player5.Font = Enum.Font.Fantasy
Player5.FontSize = Enum.FontSize.Size18
Player5.Text = ""
Player5.TextColor3 = Color3.new(1, 1, 1)
Player5.TextSize = 15
Player5.TextWrapped = true

TpPlayer.Name = "TpPlayer"
TpPlayer.Parent = PlayerFrame
TpPlayer.BackgroundColor3 = Color3.new(0.18, 0.18, 0.18)
TpPlayer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TpPlayer.Position = UDim2.new(0, 5, 0, 165)
TpPlayer.Size = UDim2.new(0, 160, 0, 30)
TpPlayer.Font = Enum.Font.Fantasy
TpPlayer.FontSize = Enum.FontSize.Size18
TpPlayer.Text = "Teleport to Player"
TpPlayer.TextColor3 = Color3.new(1, 1, 1)
TpPlayer.TextWrapped = true
TpPlayer.TextSize = 17

PollenFarm.Name = "PollenFarm"
PollenFarm.Parent = MainFrame
PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PollenFarm.BorderColor3 = Color3.new(0, 1, 0)
PollenFarm.Position = UDim2.new(0, 183, 0, 5)
PollenFarm.Size = UDim2.new(0, 100, 0, 20)
PollenFarm.Font = Enum.Font.Fantasy
PollenFarm.FontSize = Enum.FontSize.Size18
PollenFarm.TextColor3 = Color3.new(1, 1, 1)
PollenFarm.Text = "Farm Pollen"
PollenFarm.TextSize = 17
PollenFarm.TextWrapped = true

FindTreasures.Name = "FindTreasures"
FindTreasures.Parent = MainFrame
FindTreasures.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasures.BorderColor3 = Color3.new(0, 1, 0)
FindTreasures.Position = UDim2.new(0, 288, 0, 5)
FindTreasures.Size = UDim2.new(0, 130, 0, 20)
FindTreasures.BackgroundTransparency = 0
FindTreasures.Font = Enum.Font.Fantasy
FindTreasures.TextColor3 = Color3.new(1, 1, 1)
FindTreasures.Text = "Collect Treasures"
FindTreasures.TextSize = 17
FindTreasures.TextWrapped = true

FindTreasuresText1.Name = "FindTreasuresText1"
FindTreasuresText1.Parent = MainFrame
FindTreasuresText1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasuresText1.BorderColor3 = Color3.new(0, 0, 0)
FindTreasuresText1.BackgroundTransparency = 0.1
FindTreasuresText1.Position = UDim2.new(0, 258, 0, 32)
FindTreasuresText1.Size = UDim2.new(0, 190, 0, 85)
FindTreasuresText1.TextColor3 = Color3.new(1, 1, 1)
FindTreasuresText1.Font = Enum.Font.Fantasy
FindTreasuresText1.Text = "This will Teleport you to all the hidden treasures on the map. It will only work once\nas the treasures do not respawn."
FindTreasuresText1.TextSize = 16
FindTreasuresText1.TextWrapped = true
FindTreasuresText1.ZIndex = 6
FindTreasuresText1.Visible = false
FindTreasuresText1.TextYAlignment = Enum.TextYAlignment.Top

ExtrasScreen.Name = "ExtrasScreen"
ExtrasScreen.Parent = MainFrame
ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ExtrasScreen.BorderColor3 = Color3.new(0, 1, 0)
ExtrasScreen.Position = UDim2.new(0, 423, 0, 5)
ExtrasScreen.Size = UDim2.new(0, 50, 0, 20)
ExtrasScreen.BackgroundTransparency = 0
ExtrasScreen.Font = Enum.Font.Fantasy
ExtrasScreen.TextColor3 = Color3.new(1, 1, 1)
ExtrasScreen.Text = "Extras"
ExtrasScreen.TextSize = 17
ExtrasScreen.TextWrapped = true

ExtrasFrame.Name = "ExtrasFrame"
ExtrasFrame.Parent = MainFrame
ExtrasFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ExtrasFrame.BorderColor3 = Color3.new(0, 0, 0)
ExtrasFrame.BackgroundTransparency = 0.5
ExtrasFrame.Position = UDim2.new(0, 363, 0, 35)
ExtrasFrame.Size = UDim2.new(0, 170, 0, 80)
ExtrasFrame.Visible = false

NoClip.Name = "NoClip"
NoClip.Parent = ExtrasFrame
NoClip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
NoClip.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
NoClip.Position = UDim2.new(0, 5, 0, 5)
NoClip.Size = UDim2.new(0, 160, 0, 20)
NoClip.Font = Enum.Font.Fantasy
NoClip.FontSize = Enum.FontSize.Size18
NoClip.TextColor3 = Color3.new(1, 1, 1)
NoClip.Text = "Enable NoClip"
NoClip.TextSize = 17
NoClip.TextWrapped = true

TPTool.Name = "TPTool"
TPTool.Parent = ExtrasFrame
TPTool.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPTool.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPTool.Position = UDim2.new(0, 5, 0, 30)
TPTool.Size = UDim2.new(0, 160, 0, 20)
TPTool.TextColor3 = Color3.new(1, 1, 1)
TPTool.Font = Enum.Font.Fantasy
TPTool.FontSize = Enum.FontSize.Size18
TPTool.Text = "Add TPTool"
TPTool.TextSize = 16

ReJoinServer.Name = "ReJoinServer"
ReJoinServer.Parent = ExtrasFrame
ReJoinServer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ReJoinServer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ReJoinServer.Position = UDim2.new(0, 5, 0, 55)
ReJoinServer.Size = UDim2.new(0, 160, 0, 20)
ReJoinServer.TextColor3 = Color3.new(1, 1, 1)
ReJoinServer.Font = Enum.Font.Fantasy
ReJoinServer.Text = "ReJoin a Server"
ReJoinServer.TextSize = 16
ReJoinServer.TextWrapped = true

InfoScreen.Name = "InfoScreen"
InfoScreen.Parent = MainFrame
InfoScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
InfoScreen.BorderColor3 = Color3.new(0, 1, 0)
InfoScreen.Position = UDim2.new(0, 478, 0, 5)
InfoScreen.Size = UDim2.new(0, 50, 0, 20)
InfoScreen.BackgroundTransparency = 0
InfoScreen.Font = Enum.Font.Fantasy
InfoScreen.TextColor3 = Color3.new(1, 1, 1)
InfoScreen.Text = "Info"
InfoScreen.TextSize = 17
InfoScreen.TextWrapped = true

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = MainFrame
InfoFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
InfoFrame.BorderColor3 = Color3.new(0, 0, 0)
InfoFrame.BackgroundTransparency = 0.1
InfoFrame.Position = UDim2.new(0, 333, 0, 35)
InfoFrame.Size = UDim2.new(0, 200, 0, 130)
InfoFrame.Visible = false

InfoText1.Name = "InfoText1"
InfoText1.Parent = InfoFrame
InfoText1.BackgroundColor3 = Color3.new(0, 0, 0)
InfoText1.BorderColor3 = Color3.new(0, 0, 0)
InfoText1.BackgroundTransparency = 1
InfoText1.Position = UDim2.new(0, 5, 0, 5)
InfoText1.Size = UDim2.new(0, 190, 0, 130)
InfoText1.TextColor3 = Color3.new(1, 1, 1)
InfoText1.Font = Enum.Font.Fantasy
InfoText1.Text = "This Gui was created by LuckyMMB@V3rmillion.net\nDiscord https://discord.gg/GKzJnUC\n\nCredits:\nsirelKilla @ v3rmillion for the pollen farming script"
InfoText1.TextSize = 15
InfoText1.TextWrapped = true
InfoText1.TextYAlignment = Enum.TextYAlignment.Top

function notify(msg)
game.StarterGui:SetCore('SendNotification', {
Title = 'Bee Swarm LuckyGUI';
Text = msg;
Duration = 5;
})
end

--- Close ---

Close.MouseButton1Down:connect(function()
MainGUI:Destroy()
end)

--- Menus ---

local Menus = {
[WayPoints] = WayPointsFrame;
[ExtrasScreen] = ExtrasFrame;
[InfoScreen] = InfoFrame;
[Players] = PlayerFrame;
}
for button,frame in pairs(Menus) do
button.MouseButton1Click:connect(function()
if frame.Visible then
frame.Visible = false
return
end
for k,v in pairs(Menus) do
v.Visible = v == frame
end
end)
end

--- Snow Menus Show Hide ---

FindTreasures.MouseEnter:connect(function()
FindTreasuresText1.Visible = true
end)

FindTreasures.MouseLeave:connect(function()
FindTreasuresText1.Visible = false
end)

--- WayPoints ---

local WayPoints = {
["Black Bear"] = CFrame.new(-258.1, 5, 299.7),
["Brown Bear"] = CFrame.new(282, 46, 236),
["Panda Bear"] = CFrame.new(106.3, 35, 50.1),
["Polar Bear"] = CFrame.new(-106, 119, -77),
["Science Bear"] = CFrame.new(267, 103, 20),
["Bee Shop"] = CFrame.new(-136.8, 4.6, 243.4),
["Tool Shop"] = CFrame.new(86, 4.6, 294),
["Tool Shop 2"] = CFrame.new(165, 69, -161),
["Clover Field"] = CFrame.new(174, 34, 189),
["Mushroom Field"] = CFrame.new(-258.1, 5, 299.7),
["Spider Field"] = CFrame.new(-57.2, 20, -5.3),
["Blue Field"] = CFrame.new(113.7, 4, 101.5),
["Sunflower Field"] = CFrame.new(-208, 4, 185),
["StrawBerry Field"] = CFrame.new(-169.3, 20, -3.2),
["Red Field"] = CFrame.new(-258.1, 5, 299.7),
["Dandelion Field"] = CFrame.new(-30, 4, 225),
["BamBoo Field"] = CFrame.new(93, 20, -25),
["Rose Field"] = CFrame.new(-322, 20, 124),
["Mushroom Field"] = CFrame.new(-94, 5, 116),
["Cactus Field"] = CFrame.new(-194, 68, -107),
["Pumpkin Field"] = CFrame.new(-194, 68, -182),
["MountainTop Field"] = CFrame.new(76, 176, -181),
["PineTree Field"] = CFrame.new(-318, 68, -150),
["Pineapple Field"] = CFrame.new(262, 68, -201)
}

ReturnToHive.MouseButton1Down:connect(function()
local player = game:GetService("Players").LocalPlayer
player.Character:MoveTo(player.SpawnPos.Value.p)
notify'Teleported to Hive'
end)

BlackBear.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Black Bear"]
notify'Teleported to Black Bear'
end)

BrownBear.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Brown Bear"]
notify'Teleported to Brown Bear'
end)

PandaBear.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Panda Bear"]
notify'Teleported to Panda Bear'
end)

PolarBear.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Polar Bear"]
notify'Teleported to Polar Bear'
end)

ScienceBear.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Science Bear"]
notify'Teleported to Science Bear'
end)

BeeShop.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Bee Shop"]
notify'Teleported to Bee Shop'
end)

TPShop.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Tool Shop"]
notify'Teleported to Basic Tool Shop'
end)

TPShop2.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Tool Shop 2"]
notify'Teleported to Advanced Tool Shop'
end)

MushRoomField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Mushroom Field"]
notify'Teleported to Mushroom Field'
end)

StrawBerryField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["StrawBerry Field"]
notify'Teleported to StrawBerry Field'
end)

CloverField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Clover Field"]
notify'Teleported to Clover Field'
end)

SpiderField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Spider Field"]
notify'Teleported to Spider Field'
end)

BlueField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Blue Field"]
notify'Teleported to Blue Field'
end)

SunflowerField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Sunflower Field"]
notify'Teleported to Sunflower Field'
end)

DandelionField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Dandelion Field"]
notify'Teleported to Dandelion Field'
end)

BamBooField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["BamBoo Field"]
notify'Teleported to BamBoo Field'
end)

RoseField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Rose Field"]
notify'Teleported to Rose Field'
end)

CactusField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Cactus Field"]
notify'Teleported to BamBoo Field'
end)

PumpkinField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Pumpkin Field"]
notify'Teleported to BamBoo Field'
end)

PineTreeField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["PineTree Field"]
notify'Teleported to BamBoo Field'
end)

MountainTopField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["MountainTop Field"]
notify'Teleported to Mountain Top Field'
end)

PineappleField.MouseButton1Down:connect(function()
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = WayPoints["Pineapple Field"]
notify'Teleported to Pineapple Field'
end)

-- Show Location --

spawn (function()
while true do
function round(num, numDecimalPlaces)
local mult = 10^(numDecimalPlaces or 0)
return math.floor(num * mult + 0.5) / mult
end
LocationX = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, 0)
LocationY = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, 0)
LocationZ = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 0)
ShowLocation.Text = "Coords: "..LocationX..", "..LocationY..", "..LocationZ
wait(0.5)
end
end)

SetLocation.MouseButton1Down:connect(function()
function round(num, numDecimalPlaces)
local mult = 10^(numDecimalPlaces or 0)
return math.floor(num * mult + 0.5) / mult
end
setlocationx = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, 0)
setlocationy = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, 0)
setlocationz = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 0)
print("Set Custom Location: "..setlocationx..", "..setlocationy..", "..setlocationz)
   SetLocation.Text = setlocationx..","..setlocationy..","..setlocationz
CustomLocationSet = true
end)

--- TP to custom location ---

TPLocation.MouseButton1Down:connect(function()
if CustomLocationSet == true then
local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
uTorso.CFrame = CFrame.new(setlocationx, setlocationy, setlocationz)
end
end)

--- Player Teleport ---

local buttons = {
   Player1,
   Player2,
   Player3,
   Player4,
   Player5
}
for i, v in pairs(game.Players:GetChildren()) do
   buttons[i].Text = v.Name
   buttons[i].Visible = true
end
game.Players.PlayerRemoving:connect(function()
   for i, v in pairs(game.Players:GetChildren()) do
buttons[i].Text = v.Name
buttons[i].Visible = true
   end
end)
game.Players.PlayerAdded:connect(function()
   for i, v in pairs(game.Players:GetChildren()) do
buttons[i].Text = v.Name
       buttons[i].Visible = true
   end
end)

Player1.MouseButton1Down:connect(function()
     PlyrSel.Text = Player1.Text
   end)
   Player2.MouseButton1Down:connect(function()
     PlyrSel.Text = Player2.Text
   end)
   Player3.MouseButton1Down:connect(function()
     PlyrSel.Text = Player3.Text
   end)
   Player4.MouseButton1Down:connect(function()
     PlyrSel.Text = Player4.Text
   end)
   Player5.MouseButton1Down:connect(function()
     PlyrSel.Text = Player5.Text
   end)

TpPlayer.MouseButton1Down:connect(function()
     if PlyrSel.Text == "SELECT A PLAYER" then
       warn("No Player Selected")
     else
       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[PlyrSel.Text].HumanoidRootPart.CFrame
     end
   end)

-- Find Hidden Treasures --

FindTreasures.MouseButton1Down:connect(function()
local player = game:GetService("Players").LocalPlayer
local function collecttreasure(treasure)
for i,v in ipairs(treasure:GetChildren()) do
if v.Parent then
player.Character:MoveTo(v.Position)
end
wait(1)
end
end
collecttreasure(workspace.TreasureCollectibles)
wait(1)
player.Character:MoveTo(player.SpawnPos.Value.p)
end)

--- NoClip ---

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
NoClip.MouseButton1Down:connect(function()
noclip = not noclip
if NoClip.Text == "Enable NoClip" then
   NoClip.Text = "Disable NoClip"
NoClip.BackgroundColor3 = Color3.new(0, 0.5, 0)
else
   NoClip.Text = "Enable NoClip"
NoClip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
end
end)

--- TP Tool ---

TPTool.MouseButton1Down:connect(function()
local Tele = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
Tele.RequiresHandle = false
Tele.RobloxLocked = true
Tele.Name = "TPTool"
Tele.ToolTip = "Teleport Tool"
Tele.Equipped:connect(function(Mouse)
Mouse.Button1Down:connect(function()
if Mouse.Target then
game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = (CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
end
end)
end)
notify'TP Tool added to your Backpack'

end)

--- Pollen Farm ---

PollenFarm.MouseButton1Click:connect(function()
if PollenFarmActive ~= true then
PollenFarmActive = true
PollenFarm.Text = "Stop Farming"
PollenFarm.BackgroundColor3 = Color3.new(0, 0.5, 0)
if PollenFarmActive then
local player = game:GetService("Players").LocalPlayer
local currp
workspace.Collectibles.ChildAdded:Connect(function(part)
wait(0.5)
if currp and (part.Position-currp).magnitude < 50 then
player.Character:MoveTo(part.Position)
wait(0.3)
player.Character:MoveTo(currp)
end
end)
local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
if not pollenLbl then
error("Backpack not found")
end
local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
local pollenTool = player.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
if pollenTool==nil or pollenTool:FindFirstChild("ClickEvent")==nil then
error("Tool not found")
end

local fieldpos = {Vector3.new(-210,3.3,218.1),Vector3.new(-210,3.3,161.5),Vector3.new(-210,3.3,101.6)}
local posIndex=0
while PollenFarmActive do
--collect pollen
pollenTool.Parent = player.Character
wait(0.1)
while PollenFarmActive and player.leaderstats.Pollen.Value<maxpollen do
posIndex=posIndex+1
if posIndex>#fieldpos then posIndex=1 end
for rot=1,4 do
if not PollenFarmActive then break end
local angle = CFrame.Angles(0,math.pi*.5*rot,0)
currp = fieldpos[posIndex]+angle.lookVector*4
player.Character.HumanoidRootPart.CFrame=CFrame.new(currp)*angle
for i=1,20 do
if not PollenFarmActive then break end
wait(0.2)
pollenTool.ClickEvent:FireServer(currp)
end
if player.leaderstats.Pollen.Value+1>maxpollen then break end
end
end
--turn to honey
currp=nil
player.Character:MoveTo(player.SpawnPos.Value.p)
wait(0.5)
game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
repeat wait(0.5) until player.leaderstats.Pollen.Value<1
end
end
else
PollenFarmActive = false
notify'Pollen Farming Ended'
PollenFarm.Text = "Farm Pollen"
PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
local player = game:GetService("Players").LocalPlayer
currp=nil
player.Character:MoveTo(player.SpawnPos.Value.p)
end
end)

--- ReJoin Server ---

ReJoinServer.MouseButton1Down:connect(function()
local placeId = 1537690962
game:GetService("TeleportService"):Teleport(placeId)
end)

--- End ---