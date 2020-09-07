print("Bee Swarm Simulator Gui Created by LuckyMMB @ V3rmillion.net")
print("Discord https://discord.gg/GKzJnUC")
print("V2.0a 08th Oct 2018")
print("\nEnabling the Avoid Vicious Bee button when doing an Auto Farm will tp you to a safe\nfield if a vicious bee is detected nearby while farming. When it leaves the field\nyou will tp back and continue farming.") 
print("\nHunt Vicious Bee will put you in God Mode when the bee is detected and tp spam the bees\nlocation so your bees can attack it. When the bee has been defeated you will tp back to\nyour original location and God Mode will be disabled.")
print("\nFarm Sprout mode will put you in God Mode when the Sprout spawns and tp you to it so\nyour bees can farm it. Token pickup is also enabled. When the sprout has been farmed you will\nstay in that location for 20 seconds to pick up all the goodies then God Mode will be disabled.")
print("\nIn God Mode you cannot be hurt but cannot use any tools. Turning God Mode Off will put\nyou back to normal so you can use your tools and farm properly again.\nTIP: When you enter God Mode your tool will be dropped. Someone else can then pick up\nthat tool and use it until they leave the game. Useful for friends with low power tools.\nWARNING:Leaving God Mode is glitchy at best. If it doesn't work you will have to rejoin.")
print("\nPress the j key when fireflys are in a field to farm Moon Tokens. You will tp to each\nfirefly and then pick up the moon token when dropped. If you dont get one press the key\nagain to make sure all the fireflys were touched. Keep doing this until the Fireflys leave.")
print("\nPress the h key to toggle Token Auto Gathering to pick up tokens near you.")
print("\nPress the y key to tp back to your hive and make honey from your gathered pollen.")

local plr = game:GetService("Players").LocalPlayer
local mouse = game.Players.LocalPlayer:GetMouse()
local UIS = game:GetService'UserInputService'

sproutstarted = false
sproutsafety = false
pausehumcheck = false
SproutFarmActive = false
FieldBoostActive = false
TreatActive = false
WealthClockActive = false
infjumpactive = false
antchallengeescape = false
AutoDigActive = false
PollenFarmActive = false
Field1AFActive = false
Field2AFActive = false
Field3AFActive = false
Field4AFActive = false
Field5AFActive = false
Field6AFActive = false
Field7AFActive = false
Field8AFActive = false
Field9AFActive = false
Field10AFActive = false
Field11AFActive = false
Field12AFActive = false
Field13AFActive = false
Field14AFActive = false
godmodeactivated = false
resethive = false
HuntViciousActive = false
AvoidViciousActive = false
viciousbeenear = false
viciousbeedetected = false
viciousdistance1 = ""
switchlocationmsg = false
tokenfarmactive = false
tokenfarmactive2 = false
GodModeActive = false
moontokenfarmactive = false
farmzoneswitchback = false
switchingzone = false
FarmTempOFF = false
AvoidTempOFF = false

-- Anti Idle
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton2(Vector2.new())
end)

-- Objects
local MainGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local WayPoints = Instance.new("TextButton")
local WayPointsFrame = Instance.new("Frame")
local ShowLocation = Instance.new("TextLabel")
local SetLocation = Instance.new("TextButton")
local TPLocation = Instance.new("TextButton")
local ReturnToHive = Instance.new("TextButton")
local BlackBear = Instance.new("TextButton")
local BrownBear = Instance.new("TextButton")
local SunBear = Instance.new("TextButton")
local PandaBear = Instance.new("TextButton")
local PolarBear = Instance.new("TextButton")
local ScienceBear = Instance.new("TextButton")
local MotherBear = Instance.new("TextButton")
local TunnelBear = Instance.new("TextButton")
local TravelingBear = Instance.new("TextButton")
local RedBoost = Instance.new("TextButton")
local BlueBoost = Instance.new("TextButton")
local MountainBoost = Instance.new("TextButton")
local RedCannon = Instance.new("TextButton")
local BlueCannon = Instance.new("TextButton")
local YellowCannon = Instance.new("TextButton")
local Slingshot = Instance.new("TextButton")
local BeeShop = Instance.new("TextButton")
local TPShop = Instance.new("TextButton")
local TPShop2 = Instance.new("TextButton")
local MountainTopShop = Instance.new("TextButton")
local TentShop = Instance.new("TextButton")
local RedClubhouse = Instance.new("TextButton")
local BlueClubhouse = Instance.new("TextButton")
local TicketShop = Instance.new("TextButton")
local ClubHoney = Instance.new("TextButton")
local RoyalJellyShop = Instance.new("TextButton")
local TicketRoyalJelly = Instance.new("TextButton")
local Honeystorm = Instance.new("TextButton")
local HoneyConvertor = Instance.new("TextButton")
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
local KingbeetlesLair = Instance.new("TextButton")
local AntChallenge = Instance.new("TextButton")
local Onett = Instance.new("TextButton")
local TreatDispenser = Instance.new("TextButton")
local TicketDispenser = Instance.new("TextButton")
local WealthClock = Instance.new("TextButton")
local StarHut = Instance.new("TextButton")
local GumdropDispenser = Instance.new("TextButton")
local BlueberryDispenser = Instance.new("TextButton")
local StrawberryDispenser = Instance.new("TextButton")
local TreatShop = Instance.new("TextButton")
local SproutDispenser = Instance.new("TextButton")
local AvoidViciousBee = Instance.new("TextButton")
local Field1AF = Instance.new("TextButton")
local Field2AF = Instance.new("TextButton")
local Field3AF = Instance.new("TextButton")
local Field4AF = Instance.new("TextButton")
local Field5AF = Instance.new("TextButton")
local Field6AF = Instance.new("TextButton")
local Field7AF = Instance.new("TextButton")
local Field8AF = Instance.new("TextButton")
local Field9AF = Instance.new("TextButton")
local Field10AF = Instance.new("TextButton")
local Field11AF = Instance.new("TextButton")
local Field12AF = Instance.new("TextButton")
local Field13AF = Instance.new("TextButton")
local Field14AF = Instance.new("TextButton")
local TimeLabel = Instance.new("TextLabel")
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
local ViciousBeeFrame = Instance.new("Frame")
local InfoScreen = Instance.new("TextButton")
local InfoFrame = Instance.new("Frame")
local TPTool = Instance.new("TextButton")
local BTool = Instance.new("TextButton")
local ReJoinServer = Instance.new("TextButton")
local NoClip = Instance.new("TextButton")
local InfoText1 = Instance.new("TextLabel")
local God = Instance.new("TextButton")
local HuntViciousBee = Instance.new("TextButton")
local ViciousBeeDetect = Instance.new("TextLabel")
local FireflyDetect = Instance.new("TextLabel")
local SproutDetect = Instance.new("TextLabel")
local PollenFarm = Instance.new("TextButton")
local FarmFrame = Instance.new("Frame")
local StartFarm = Instance.new("TextButton")
local AutoDig = Instance.new("TextButton")
local TokenToggleLabel = Instance.new("TextLabel")
local TokenToggle = Instance.new("TextBox")
local FireflyToggleLabel = Instance.new("TextLabel")
local FireflyToggle = Instance.new("TextBox")
local HoneyToggleLabel = Instance.new("TextLabel")
local HoneyToggle = Instance.new("TextBox")
local InfJumpToggle = Instance.new("TextButton")
local WealthClockToggle = Instance.new("TextButton")
local FieldBoostToggle = Instance.new("TextButton")
local TreatToggle = Instance.new("TextButton")
local SproutFarmToggle = Instance.new("TextButton")
local InfBackpack = Instance.new("TextButton")

-- Properties

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.CoreGui
local MainCORE = game.CoreGui["MainGUI"]

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGUI
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0.3
MainFrame.BorderColor3 = Color3.new(0, 0, 0)
MainFrame.Position = UDim2.new(0.5, -319, 0, -32)
MainFrame.Size = UDim2.new(0, 638, 0, 30)

Close.Name = "Close"
Close.Parent = MainFrame
Close.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Close.BorderColor3 = Color3.new(0, 1, 0)
Close.Position = UDim2.new(0, 5, 0, 5)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.Fantasy
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
WayPoints.Font = Enum.Font.Fantasy
WayPoints.TextColor3 = Color3.new(1, 1, 1)
WayPoints.Text = "WayPoints"
WayPoints.TextSize = 17
WayPoints.TextWrapped = true

WayPointsFrame.Name = "WayPointsFrame"
WayPointsFrame.Parent = MainFrame
WayPointsFrame.BackgroundColor3 = Color3.new(0, 0, 0)
WayPointsFrame.BorderColor3 = Color3.new(0, 0, 0)
WayPointsFrame.BackgroundTransparency = 0.3
WayPointsFrame.Position = UDim2.new(0, 0, 0, 34)
WayPointsFrame.Size = UDim2.new(0, 600, 0, 530)
WayPointsFrame.Visible = false

ShowLocation.Name = "ShowLocation"
ShowLocation.Parent = WayPointsFrame
ShowLocation.BackgroundColor3 = Color3.new(1, 1, 1)
ShowLocation.TextColor3 = Color3.new(0, 0, 0)
ShowLocation.BorderColor3 = Color3.new(0, 0, 0)
ShowLocation.Position = UDim2.new(0, 190, 0, 5)
ShowLocation.Size = UDim2.new(0, 180, 0, 20)
ShowLocation.Font = Enum.Font.Fantasy
ShowLocation.Text = "Current Location"
ShowLocation.TextWrapped = true
ShowLocation.TextSize = 15

SetLocation.Name = "SetLocation"
SetLocation.Parent = WayPointsFrame
SetLocation.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SetLocation.TextColor3 = Color3.new(1, 1, 1)
SetLocation.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SetLocation.Position = UDim2.new(0, 375, 0, 5)
SetLocation.Size = UDim2.new(0, 150, 0, 20)
SetLocation.Font = Enum.Font.Fantasy
SetLocation.Text = "Set Location"
SetLocation.TextWrapped = true
SetLocation.TextSize = 16

TPLocation.Name = "TPLocation"
TPLocation.Parent = WayPointsFrame
TPLocation.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPLocation.TextColor3 = Color3.new(1, 1, 1)
TPLocation.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPLocation.Position = UDim2.new(0, 530, 0, 5)
TPLocation.Size = UDim2.new(0, 65, 0, 20)
TPLocation.Font = Enum.Font.Fantasy
TPLocation.Text = "Move to"
TPLocation.TextWrapped = true
TPLocation.TextSize = 16

ReturnToHive.Name = "ReturnToHive"
ReturnToHive.Parent = WayPointsFrame
ReturnToHive.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ReturnToHive.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ReturnToHive.Position = UDim2.new(0, 5, 0, 5)
ReturnToHive.Size = UDim2.new(0, 180, 0, 20)
ReturnToHive.TextColor3 = Color3.new(1, 1, 1)
ReturnToHive.Font = Enum.Font.Fantasy
ReturnToHive.Text = "Return To Hive"
ReturnToHive.TextSize = 16

BlackBear.Name = "BlackBear"
BlackBear.Parent = WayPointsFrame
BlackBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlackBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlackBear.Position = UDim2.new(0, 5, 0, 30)
BlackBear.Size = UDim2.new(0, 180, 0, 20)
BlackBear.TextColor3 = Color3.new(1, 1, 1)
BlackBear.Font = Enum.Font.Fantasy
BlackBear.Text = "Black Bear"
BlackBear.TextSize = 16

BrownBear.Name = "BrownBear"
BrownBear.Parent = WayPointsFrame
BrownBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BrownBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BrownBear.Position = UDim2.new(0, 5, 0, 55)
BrownBear.Size = UDim2.new(0, 180, 0, 20)
BrownBear.TextColor3 = Color3.new(1, 1, 1)
BrownBear.Font = Enum.Font.Fantasy
BrownBear.Text = "Brown Bear"
BrownBear.TextSize = 16

PandaBear.Name = "PandaBear"
PandaBear.Parent = WayPointsFrame
PandaBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PandaBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PandaBear.Position = UDim2.new(0, 5, 0, 80)
PandaBear.Size = UDim2.new(0, 180, 0, 20)
PandaBear.TextColor3 = Color3.new(1, 1, 1)
PandaBear.Font = Enum.Font.Fantasy
PandaBear.Text = "Panda Bear"
PandaBear.TextSize = 16

PolarBear.Name = "PolarBear"
PolarBear.Parent = WayPointsFrame
PolarBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PolarBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PolarBear.Position = UDim2.new(0, 5, 0, 105)
PolarBear.Size = UDim2.new(0, 180, 0, 20)
PolarBear.TextColor3 = Color3.new(1, 1, 1)
PolarBear.Font = Enum.Font.Fantasy
PolarBear.Text = "Polar Bear"
PolarBear.TextSize = 16

ScienceBear.Name = "ScienceBear"
ScienceBear.Parent = WayPointsFrame
ScienceBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ScienceBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ScienceBear.Position = UDim2.new(0, 5, 0, 130)
ScienceBear.Size = UDim2.new(0, 180, 0, 20)
ScienceBear.TextColor3 = Color3.new(1, 1, 1)
ScienceBear.Font = Enum.Font.Fantasy
ScienceBear.Text = "Science Bear"
ScienceBear.TextSize = 16

TravelingBear.Name = "TravelingBear"
TravelingBear.Parent = WayPointsFrame
TravelingBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TravelingBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TravelingBear.Position = UDim2.new(0, 5, 0, 155)
TravelingBear.Size = UDim2.new(0, 180, 0, 20)
TravelingBear.TextColor3 = Color3.new(1, 1, 1)
TravelingBear.Font = Enum.Font.Fantasy
TravelingBear.Text = "Traveling Bear"
TravelingBear.TextSize = 16

MotherBear.Name = "MotherBear"
MotherBear.Parent = WayPointsFrame
MotherBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MotherBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MotherBear.Position = UDim2.new(0, 5, 0, 180)
MotherBear.Size = UDim2.new(0, 180, 0, 20)
MotherBear.TextColor3 = Color3.new(1, 1, 1)
MotherBear.Font = Enum.Font.Fantasy
MotherBear.Text = "Mother Bear"
MotherBear.TextSize = 16

TunnelBear.Name = "TunnelBear"
TunnelBear.Parent = WayPointsFrame
TunnelBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TunnelBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TunnelBear.Position = UDim2.new(0, 5, 0, 205)
TunnelBear.Size = UDim2.new(0, 180, 0, 20)
TunnelBear.TextColor3 = Color3.new(1, 1, 1)
TunnelBear.Font = Enum.Font.Fantasy
TunnelBear.Text = "Tunnel Bear"
TunnelBear.TextSize = 16

SunBear.Name = "SunBear"
SunBear.Parent = WayPointsFrame
SunBear.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SunBear.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SunBear.Position = UDim2.new(0, 5, 0, 230)
SunBear.Size = UDim2.new(0, 180, 0, 20)
SunBear.TextColor3 = Color3.new(1, 1, 1)
SunBear.Font = Enum.Font.Fantasy
SunBear.Text = "Sun Bear"
SunBear.TextSize = 16

Onett.Name = "Onett"
Onett.Parent = WayPointsFrame
Onett.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Onett.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Onett.Position = UDim2.new(0, 5, 0, 255)
Onett.Size = UDim2.new(0, 180, 0, 20)
Onett.TextColor3 = Color3.new(1, 1, 1)
Onett.Font = Enum.Font.Fantasy
Onett.Text = "Onett"
Onett.TextSize = 16

RedBoost.Name = "RedBoost"
RedBoost.Parent = WayPointsFrame
RedBoost.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RedBoost.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RedBoost.Position = UDim2.new(0, 5, 0, 280)
RedBoost.Size = UDim2.new(0, 180, 0, 20)
RedBoost.TextColor3 = Color3.new(1, 1, 1)
RedBoost.Font = Enum.Font.Fantasy
RedBoost.Text = "Red Field Booster"
RedBoost.TextSize = 16

BlueBoost.Name = "BlueBoost"
BlueBoost.Parent = WayPointsFrame
BlueBoost.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueBoost.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueBoost.Position = UDim2.new(0, 5, 0, 305)
BlueBoost.Size = UDim2.new(0, 180, 0, 20)
BlueBoost.TextColor3 = Color3.new(1, 1, 1)
BlueBoost.Font = Enum.Font.Fantasy
BlueBoost.Text = "Blue Field Booster"
BlueBoost.TextSize = 16

MountainBoost.Name = "MountainBoost"
MountainBoost.Parent = WayPointsFrame
MountainBoost.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MountainBoost.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MountainBoost.Position = UDim2.new(0, 5, 0, 330)
MountainBoost.Size = UDim2.new(0, 180, 0, 20)
MountainBoost.TextColor3 = Color3.new(1, 1, 1)
MountainBoost.Font = Enum.Font.Fantasy
MountainBoost.Text = "MountainTop Booster"
MountainBoost.TextSize = 16

RedCannon.Name = "RedCannon"
RedCannon.Parent = WayPointsFrame
RedCannon.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RedCannon.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RedCannon.Position = UDim2.new(0, 5, 0, 355)
RedCannon.Size = UDim2.new(0, 180, 0, 20)
RedCannon.TextColor3 = Color3.new(1, 1, 1)
RedCannon.Font = Enum.Font.Fantasy
RedCannon.Text = "Red Cannon (22)"
RedCannon.TextSize = 16

BlueCannon.Name = "BlueCannon"
BlueCannon.Parent = WayPointsFrame
BlueCannon.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueCannon.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueCannon.Position = UDim2.new(0, 5, 0, 380)
BlueCannon.Size = UDim2.new(0, 180, 0, 20)
BlueCannon.TextColor3 = Color3.new(1, 1, 1)
BlueCannon.Font = Enum.Font.Fantasy
BlueCannon.Text = "Blue Cannon (16)"
BlueCannon.TextSize = 16

YellowCannon.Name = "YellowCannon"
YellowCannon.Parent = WayPointsFrame
YellowCannon.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
YellowCannon.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
YellowCannon.Position = UDim2.new(0, 5, 0, 405)
YellowCannon.Size = UDim2.new(0, 180, 0, 20)
YellowCannon.TextColor3 = Color3.new(1, 1, 1)
YellowCannon.Font = Enum.Font.Fantasy
YellowCannon.Text = "Yellow Cannon (12)"
YellowCannon.TextSize = 16

Slingshot.Name = "Slingshot"
Slingshot.Parent = WayPointsFrame
Slingshot.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Slingshot.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Slingshot.Position = UDim2.new(0, 5, 0, 430)
Slingshot.Size = UDim2.new(0, 180, 0, 20)
Slingshot.TextColor3 = Color3.new(1, 1, 1)
Slingshot.Font = Enum.Font.Fantasy
Slingshot.Text = "Slingshot (8)"
Slingshot.TextSize = 16

AntChallenge.Name = "AntChallenge"
AntChallenge.Parent = WayPointsFrame
AntChallenge.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AntChallenge.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AntChallenge.Position = UDim2.new(0, 5, 0, 455)
AntChallenge.Size = UDim2.new(0, 180, 0, 20)
AntChallenge.TextColor3 = Color3.new(1, 1, 1)
AntChallenge.Font = Enum.Font.Fantasy
AntChallenge.Text = "Ant Challenge"
AntChallenge.TextSize = 16

KingbeetlesLair.Name = "KingbeetlesLair"
KingbeetlesLair.Parent = WayPointsFrame
KingbeetlesLair.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
KingbeetlesLair.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
KingbeetlesLair.Position = UDim2.new(0, 5, 0, 480)
KingbeetlesLair.Size = UDim2.new(0, 180, 0, 20)
KingbeetlesLair.TextColor3 = Color3.new(1, 1, 1)
KingbeetlesLair.Font = Enum.Font.Fantasy
KingbeetlesLair.Text = "King Beetles Lair"
KingbeetlesLair.TextSize = 16

HoneyConvertor.Name = "HoneyConvertor"
HoneyConvertor.Parent = WayPointsFrame
HoneyConvertor.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HoneyConvertor.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HoneyConvertor.Position = UDim2.new(0, 5, 0, 505)
HoneyConvertor.Size = UDim2.new(0, 180, 0, 20)
HoneyConvertor.TextColor3 = Color3.new(1, 1, 1)
HoneyConvertor.Font = Enum.Font.Fantasy
HoneyConvertor.Text = "Instant Honey Converter"
HoneyConvertor.TextSize = 16

BeeShop.Name = "BeeShop"
BeeShop.Parent = WayPointsFrame
BeeShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BeeShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BeeShop.Position = UDim2.new(0, 190, 0, 30)
BeeShop.Size = UDim2.new(0, 180, 0, 20)
BeeShop.TextColor3 = Color3.new(1, 1, 1)
BeeShop.Font = Enum.Font.Fantasy
BeeShop.Text = "Bees Shop"
BeeShop.TextSize = 16

TPShop.Name = "TPShop"
TPShop.Parent = WayPointsFrame
TPShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPShop.Position = UDim2.new(0, 190, 0, 55)
TPShop.Size = UDim2.new(0, 180, 0, 20)
TPShop.TextColor3 = Color3.new(1, 1, 1)
TPShop.Font = Enum.Font.Fantasy
TPShop.Text = "Basic Tools Shop"
TPShop.TextSize = 16

TPShop2.Name = "TPShop2"
TPShop2.Parent = WayPointsFrame
TPShop2.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPShop2.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPShop2.Position = UDim2.new(0, 190, 0, 80)
TPShop2.Size = UDim2.new(0, 180, 0, 20)
TPShop2.TextColor3 = Color3.new(1, 1, 1)
TPShop2.Font = Enum.Font.Fantasy
TPShop2.Text = "Advanced Tools Shop"
TPShop2.TextSize = 16

MountainTopShop.Name = "MountainTopShop"
MountainTopShop.Parent = WayPointsFrame
MountainTopShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MountainTopShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MountainTopShop.Position = UDim2.new(0, 190, 0, 105)
MountainTopShop.Size = UDim2.new(0, 180, 0, 20)
MountainTopShop.TextColor3 = Color3.new(1, 1, 1)
MountainTopShop.Font = Enum.Font.Fantasy
MountainTopShop.Text = "Mountain Top Shop"
MountainTopShop.TextSize = 16

TentShop.Name = "TentShop"
TentShop.Parent = WayPointsFrame
TentShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TentShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TentShop.Position = UDim2.new(0, 190, 0, 130)
TentShop.Size = UDim2.new(0, 180, 0, 20)
TentShop.TextColor3 = Color3.new(1, 1, 1)
TentShop.Font = Enum.Font.Fantasy
TentShop.Text = "Ticket Tent Shop"
TentShop.TextSize = 16

TreatShop.Name = "TreatShop"
TreatShop.Parent = WayPointsFrame
TreatShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TreatShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TreatShop.Position = UDim2.new(0, 190, 0, 155)
TreatShop.Size = UDim2.new(0, 180, 0, 20)
TreatShop.TextColor3 = Color3.new(1, 1, 1)
TreatShop.Font = Enum.Font.Fantasy
TreatShop.Text = "Treat Shop"
TreatShop.TextSize = 16

RedClubhouse.Name = "RedClubhouse"
RedClubhouse.Parent = WayPointsFrame
RedClubhouse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RedClubhouse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RedClubhouse.Position = UDim2.new(0, 190, 0, 180)
RedClubhouse.Size = UDim2.new(0, 180, 0, 20)
RedClubhouse.TextColor3 = Color3.new(1, 1, 1)
RedClubhouse.Font = Enum.Font.Fantasy
RedClubhouse.Text = "Red Clubhouse"
RedClubhouse.TextSize = 16

BlueClubhouse.Name = "BlueClubhouse"
BlueClubhouse.Parent = WayPointsFrame
BlueClubhouse.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueClubhouse.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueClubhouse.Position = UDim2.new(0, 190, 0, 205)
BlueClubhouse.Size = UDim2.new(0, 180, 0, 20)
BlueClubhouse.TextColor3 = Color3.new(1, 1, 1)
BlueClubhouse.Font = Enum.Font.Fantasy
BlueClubhouse.Text = "Blue Clubhouse"
BlueClubhouse.TextSize = 16

TicketShop.Name = "TicketShop"
TicketShop.Parent = WayPointsFrame
TicketShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TicketShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TicketShop.Position = UDim2.new(0, 190, 0, 230)
TicketShop.Size = UDim2.new(0, 180, 0, 20)
TicketShop.TextColor3 = Color3.new(1, 1, 1)
TicketShop.Font = Enum.Font.Fantasy
TicketShop.Text = "Ticket Dispenser"
TicketShop.TextSize = 16

ClubHoney.Name = "ClubHoney"
ClubHoney.Parent = WayPointsFrame
ClubHoney.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ClubHoney.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ClubHoney.Position = UDim2.new(0, 190, 0, 255)
ClubHoney.Size = UDim2.new(0, 180, 0, 20)
ClubHoney.TextColor3 = Color3.new(1, 1, 1)
ClubHoney.Font = Enum.Font.Fantasy
ClubHoney.Text = "Club Honey Dispenser"
ClubHoney.TextSize = 16

RoyalJellyShop.Name = "RoyalJellyShop"
RoyalJellyShop.Parent = WayPointsFrame
RoyalJellyShop.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RoyalJellyShop.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RoyalJellyShop.Position = UDim2.new(0, 190, 0, 280)
RoyalJellyShop.Size = UDim2.new(0, 180, 0, 20)
RoyalJellyShop.TextColor3 = Color3.new(1, 1, 1)
RoyalJellyShop.Font = Enum.Font.Fantasy
RoyalJellyShop.Text = "Royal Jelly Dispenser"
RoyalJellyShop.TextSize = 16

TicketRoyalJelly.Name = "TicketRoyalJelly"
TicketRoyalJelly.Parent = WayPointsFrame
TicketRoyalJelly.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TicketRoyalJelly.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TicketRoyalJelly.Position = UDim2.new(0, 190, 0, 305)
TicketRoyalJelly.Size = UDim2.new(0, 180, 0, 20)
TicketRoyalJelly.TextColor3 = Color3.new(1, 1, 1)
TicketRoyalJelly.Font = Enum.Font.Fantasy
TicketRoyalJelly.Text = "Ticket Royal Jelly Dispenser"
TicketRoyalJelly.TextSize = 16

GumdropDispenser.Name = "GumdropDispenser"
GumdropDispenser.Parent = WayPointsFrame
GumdropDispenser.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GumdropDispenser.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
GumdropDispenser.Position = UDim2.new(0, 190, 0, 330)
GumdropDispenser.Size = UDim2.new(0, 180, 0, 20)
GumdropDispenser.TextColor3 = Color3.new(1, 1, 1)
GumdropDispenser.Font = Enum.Font.Fantasy
GumdropDispenser.Text = "Gumdrop Dispenser"
GumdropDispenser.TextSize = 16

BlueberryDispenser.Name = "BlueberryDispenser"
BlueberryDispenser.Parent = WayPointsFrame
BlueberryDispenser.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueberryDispenser.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueberryDispenser.Position = UDim2.new(0, 190, 0, 355)
BlueberryDispenser.Size = UDim2.new(0, 180, 0, 20)
BlueberryDispenser.TextColor3 = Color3.new(1, 1, 1)
BlueberryDispenser.Font = Enum.Font.Fantasy
BlueberryDispenser.Text = "Blueberry Dispenser"
BlueberryDispenser.TextSize = 16

StrawberryDispenser.Name = "StrawberryDispenser"
StrawberryDispenser.Parent = WayPointsFrame
StrawberryDispenser.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StrawberryDispenser.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StrawberryDispenser.Position = UDim2.new(0, 190, 0, 380)
StrawberryDispenser.Size = UDim2.new(0, 180, 0, 20)
StrawberryDispenser.TextColor3 = Color3.new(1, 1, 1)
StrawberryDispenser.Font = Enum.Font.Fantasy
StrawberryDispenser.Text = "Strawberry Dispenser"
StrawberryDispenser.TextSize = 16

TreatDispenser.Name = "TreatDispenser"
TreatDispenser.Parent = WayPointsFrame
TreatDispenser.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TreatDispenser.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TreatDispenser.Position = UDim2.new(0, 190, 0, 405)
TreatDispenser.Size = UDim2.new(0, 180, 0, 20)
TreatDispenser.TextColor3 = Color3.new(1, 1, 1)
TreatDispenser.Font = Enum.Font.Fantasy
TreatDispenser.Text = "Treat Dispenser"
TreatDispenser.TextSize = 16

StarHut.Name = "StarHut"
StarHut.Parent = WayPointsFrame
StarHut.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StarHut.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StarHut.Position = UDim2.new(0, 190, 0, 430)
StarHut.Size = UDim2.new(0, 180, 0, 20)
StarHut.TextColor3 = Color3.new(1, 1, 1)
StarHut.Font = Enum.Font.Fantasy
StarHut.Text = "Star Hall"
StarHut.TextSize = 16

WealthClock.Name = "WealthClock"
WealthClock.Parent = WayPointsFrame
WealthClock.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
WealthClock.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
WealthClock.Position = UDim2.new(0, 190, 0, 455)
WealthClock.Size = UDim2.new(0, 180, 0, 20)
WealthClock.TextColor3 = Color3.new(1, 1, 1)
WealthClock.Font = Enum.Font.Fantasy
WealthClock.Text = "Wealth Clock"
WealthClock.TextSize = 16

Honeystorm.Name = "Honeystorm"
Honeystorm.Parent = WayPointsFrame
Honeystorm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Honeystorm.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Honeystorm.Position = UDim2.new(0, 190, 0, 480)
Honeystorm.Size = UDim2.new(0, 180, 0, 20)
Honeystorm.TextColor3 = Color3.new(1, 1, 1)
Honeystorm.Font = Enum.Font.Fantasy
Honeystorm.Text = "Summon a Honeystorm"
Honeystorm.TextSize = 16

SproutDispenser.Name = "SproutDispenser"
SproutDispenser.Parent = WayPointsFrame
SproutDispenser.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SproutDispenser.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SproutDispenser.Position = UDim2.new(0, 190, 0, 505)
SproutDispenser.Size = UDim2.new(0, 180, 0, 20)
SproutDispenser.TextColor3 = Color3.new(1, 1, 1)
SproutDispenser.Font = Enum.Font.Fantasy
SproutDispenser.Text = "Summon a Sprout"
SproutDispenser.TextSize = 16

SunflowerField.Name = "SunflowerField"
SunflowerField.Parent = WayPointsFrame
SunflowerField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SunflowerField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SunflowerField.Position = UDim2.new(0, 375, 0, 30)
SunflowerField.Size = UDim2.new(0, 180, 0, 20)
SunflowerField.TextColor3 = Color3.new(1, 1, 1)
SunflowerField.Font = Enum.Font.Fantasy
SunflowerField.Text = "Sunflower Field"
SunflowerField.TextSize = 16

MushRoomField.Name = "MushRoomField"
MushRoomField.Parent = WayPointsFrame
MushRoomField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MushRoomField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MushRoomField.Position = UDim2.new(0, 375, 0, 55)
MushRoomField.Size = UDim2.new(0, 180, 0, 20)
MushRoomField.TextColor3 = Color3.new(1, 1, 1)
MushRoomField.Font = Enum.Font.Fantasy
MushRoomField.Text = "MushRoom Field"
MushRoomField.TextSize = 16

DandelionField.Name = "DandelionField"
DandelionField.Parent = WayPointsFrame
DandelionField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
DandelionField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
DandelionField.Position = UDim2.new(0, 375, 0, 80)
DandelionField.Size = UDim2.new(0, 180, 0, 20)
DandelionField.TextColor3 = Color3.new(1, 1, 1)
DandelionField.Font = Enum.Font.Fantasy
DandelionField.Text = "Dandelion Field"
DandelionField.TextSize = 16

BlueField.Name = "BlueField"
BlueField.Parent = WayPointsFrame
BlueField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BlueField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BlueField.Position = UDim2.new(0, 375, 0, 105)
BlueField.Size = UDim2.new(0, 180, 0, 20)
BlueField.TextColor3 = Color3.new(1, 1, 1)
BlueField.Font = Enum.Font.Fantasy
BlueField.Text = "Blue Flower Field"
BlueField.TextSize = 16

CloverField.Name = "CloverField"
CloverField.Parent = WayPointsFrame
CloverField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CloverField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CloverField.Position = UDim2.new(0, 375, 0, 130)
CloverField.Size = UDim2.new(0, 180, 0, 20)
CloverField.TextColor3 = Color3.new(1, 1, 1)
CloverField.Font = Enum.Font.Fantasy
CloverField.Text = "Clover Field"
CloverField.TextSize = 16

StrawBerryField.Name = "StrawBerryField"
StrawBerryField.Parent = WayPointsFrame
StrawBerryField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StrawBerryField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StrawBerryField.Position = UDim2.new(0, 375, 0, 155)
StrawBerryField.Size = UDim2.new(0, 180, 0, 20)
StrawBerryField.TextColor3 = Color3.new(1, 1, 1)
StrawBerryField.Font = Enum.Font.Fantasy
StrawBerryField.Text = "StrawBerry Field"
StrawBerryField.TextSize = 16

SpiderField.Name = "SpiderField"
SpiderField.Parent = WayPointsFrame
SpiderField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SpiderField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SpiderField.Position = UDim2.new(0, 375, 0, 180)
SpiderField.Size = UDim2.new(0, 180, 0, 20)
SpiderField.TextColor3 = Color3.new(1, 1, 1)
SpiderField.Font = Enum.Font.Fantasy
SpiderField.Text = "Spider Field"
SpiderField.TextSize = 16

BamBooField.Name = "BamBooField"
BamBooField.Parent = WayPointsFrame
BamBooField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BamBooField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BamBooField.Position = UDim2.new(0, 375, 0, 205)
BamBooField.Size = UDim2.new(0, 180, 0, 20)
BamBooField.TextColor3 = Color3.new(1, 1, 1)
BamBooField.Font = Enum.Font.Fantasy
BamBooField.Text = "BamBoo Field"
BamBooField.TextSize = 16

RoseField.Name = "RoseField"
RoseField.Parent = WayPointsFrame
RoseField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
RoseField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
RoseField.Position = UDim2.new(0, 375, 0, 230)
RoseField.Size = UDim2.new(0, 180, 0, 20)
RoseField.TextColor3 = Color3.new(1, 1, 1)
RoseField.Font = Enum.Font.Fantasy
RoseField.Text = "Rose Field"
RoseField.TextSize = 16

PineTreeField.Name = "PineTreeField"
PineTreeField.Parent = WayPointsFrame
PineTreeField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PineTreeField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PineTreeField.Position = UDim2.new(0, 375, 0, 255)
PineTreeField.Size = UDim2.new(0, 180, 0, 20)
PineTreeField.TextColor3 = Color3.new(1, 1, 1)
PineTreeField.Font = Enum.Font.Fantasy
PineTreeField.Text = "Pine Tree Forest"
PineTreeField.TextSize = 16

CactusField.Name = "CactusField"
CactusField.Parent = WayPointsFrame
CactusField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
CactusField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
CactusField.Position = UDim2.new(0, 375, 0, 280)
CactusField.Size = UDim2.new(0, 180, 0, 20)
CactusField.TextColor3 = Color3.new(1, 1, 1)
CactusField.Font = Enum.Font.Fantasy
CactusField.Text = "Cactus Field"
CactusField.TextSize = 16

PumpkinField.Name = "PumpkinField"
PumpkinField.Parent = WayPointsFrame
PumpkinField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PumpkinField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PumpkinField.Position = UDim2.new(0, 375, 0, 305)
PumpkinField.Size = UDim2.new(0, 180, 0, 20)
PumpkinField.TextColor3 = Color3.new(1, 1, 1)
PumpkinField.Font = Enum.Font.Fantasy
PumpkinField.Text = "Pumpkin Patch"
PumpkinField.TextSize = 16

PineappleField.Name = "PineappleField"
PineappleField.Parent = WayPointsFrame
PineappleField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PineappleField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
PineappleField.Position = UDim2.new(0, 375, 0, 330)
PineappleField.Size = UDim2.new(0, 180, 0, 20)
PineappleField.TextColor3 = Color3.new(1, 1, 1)
PineappleField.Font = Enum.Font.Fantasy
PineappleField.Text = "Pineapple Patch"
PineappleField.TextSize = 16

MountainTopField.Name = "MountainTopField"
MountainTopField.Parent = WayPointsFrame
MountainTopField.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MountainTopField.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
MountainTopField.Position = UDim2.new(0, 375, 0, 355)
MountainTopField.Size = UDim2.new(0, 180, 0, 20)
MountainTopField.TextColor3 = Color3.new(1, 1, 1)
MountainTopField.Font = Enum.Font.Fantasy
MountainTopField.Text = "Mountain Top Field"
MountainTopField.TextSize = 16

Field1AF.Name = "Field1AF"
Field1AF.Parent = WayPointsFrame
Field1AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field1AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field1AF.Position = UDim2.new(0, 555, 0, 30)
Field1AF.Size = UDim2.new(0, 40, 0, 20)
Field1AF.TextColor3 = Color3.new(1, 1, 1)
Field1AF.Font = Enum.Font.Fantasy
Field1AF.Text = "Farm"
Field1AF.TextSize = 16

Field2AF.Name = "Field2AF"
Field2AF.Parent = WayPointsFrame
Field2AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field2AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field2AF.Position = UDim2.new(0, 555, 0, 55)
Field2AF.Size = UDim2.new(0, 40, 0, 20)
Field2AF.TextColor3 = Color3.new(1, 1, 1)
Field2AF.Font = Enum.Font.Fantasy
Field2AF.Text = "Farm"
Field2AF.TextSize = 16

Field3AF.Name = "Field3AF"
Field3AF.Parent = WayPointsFrame
Field3AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field3AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field3AF.Position = UDim2.new(0, 555, 0, 80)
Field3AF.Size = UDim2.new(0, 40, 0, 20)
Field3AF.TextColor3 = Color3.new(1, 1, 1)
Field3AF.Font = Enum.Font.Fantasy
Field3AF.Text = "Farm"
Field3AF.TextSize = 16

Field4AF.Name = "Field4AF"
Field4AF.Parent = WayPointsFrame
Field4AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field4AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field4AF.Position = UDim2.new(0, 555, 0, 105)
Field4AF.Size = UDim2.new(0, 40, 0, 20)
Field4AF.TextColor3 = Color3.new(1, 1, 1)
Field4AF.Font = Enum.Font.Fantasy
Field4AF.Text = "Farm"
Field4AF.TextSize = 16

Field5AF.Name = "Field5AF"
Field5AF.Parent = WayPointsFrame
Field5AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field5AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field5AF.Position = UDim2.new(0, 555, 0, 130)
Field5AF.Size = UDim2.new(0, 40, 0, 20)
Field5AF.TextColor3 = Color3.new(1, 1, 1)
Field5AF.Font = Enum.Font.Fantasy
Field5AF.Text = "Farm"
Field5AF.TextSize = 16

Field6AF.Name = "Field6AF"
Field6AF.Parent = WayPointsFrame
Field6AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field6AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field6AF.Position = UDim2.new(0, 555, 0, 155)
Field6AF.Size = UDim2.new(0, 40, 0, 20)
Field6AF.TextColor3 = Color3.new(1, 1, 1)
Field6AF.Font = Enum.Font.Fantasy
Field6AF.Text = "Farm"
Field6AF.TextSize = 16

Field7AF.Name = "Field7AF"
Field7AF.Parent = WayPointsFrame
Field7AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field7AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field7AF.Position = UDim2.new(0, 555, 0, 180)
Field7AF.Size = UDim2.new(0, 40, 0, 20)
Field7AF.TextColor3 = Color3.new(1, 1, 1)
Field7AF.Font = Enum.Font.Fantasy
Field7AF.Text = "Farm"
Field7AF.TextSize = 16

Field8AF.Name = "Field8AF"
Field8AF.Parent = WayPointsFrame
Field8AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field8AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field8AF.Position = UDim2.new(0, 555, 0, 205)
Field8AF.Size = UDim2.new(0, 40, 0, 20)
Field8AF.TextColor3 = Color3.new(1, 1, 1)
Field8AF.Font = Enum.Font.Fantasy
Field8AF.Text = "Farm"
Field8AF.TextSize = 16

Field9AF.Name = "Field9AF"
Field9AF.Parent = WayPointsFrame
Field9AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field9AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field9AF.Position = UDim2.new(0, 555, 0, 230)
Field9AF.Size = UDim2.new(0, 40, 0, 20)
Field9AF.TextColor3 = Color3.new(1, 1, 1)
Field9AF.Font = Enum.Font.Fantasy
Field9AF.Text = "Farm"
Field9AF.TextSize = 16

Field10AF.Name = "Field10AF"
Field10AF.Parent = WayPointsFrame
Field10AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field10AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field10AF.Position = UDim2.new(0, 555, 0, 255)
Field10AF.Size = UDim2.new(0, 40, 0, 20)
Field10AF.TextColor3 = Color3.new(1, 1, 1)
Field10AF.Font = Enum.Font.Fantasy
Field10AF.Text = "Farm"
Field10AF.TextSize = 16

Field11AF.Name = "Field11AF"
Field11AF.Parent = WayPointsFrame
Field11AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field11AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field11AF.Position = UDim2.new(0, 555, 0, 280)
Field11AF.Size = UDim2.new(0, 40, 0, 20)
Field11AF.TextColor3 = Color3.new(1, 1, 1)
Field11AF.Font = Enum.Font.Fantasy
Field11AF.Text = "Farm"
Field11AF.TextSize = 16

Field12AF.Name = "Field12AF"
Field12AF.Parent = WayPointsFrame
Field12AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field12AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field12AF.Position = UDim2.new(0, 555, 0, 305)
Field12AF.Size = UDim2.new(0, 40, 0, 20)
Field12AF.TextColor3 = Color3.new(1, 1, 1)
Field12AF.Font = Enum.Font.Fantasy
Field12AF.Text = "Farm"
Field12AF.TextSize = 16

Field13AF.Name = "Field13AF"
Field13AF.Parent = WayPointsFrame
Field13AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field13AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field13AF.Position = UDim2.new(0, 555, 0, 330)
Field13AF.Size = UDim2.new(0, 40, 0, 20)
Field13AF.TextColor3 = Color3.new(1, 1, 1)
Field13AF.Font = Enum.Font.Fantasy
Field13AF.Text = "Farm"
Field13AF.TextSize = 16

Field14AF.Name = "Field14AF"
Field14AF.Parent = WayPointsFrame
Field14AF.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Field14AF.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
Field14AF.Position = UDim2.new(0, 555, 0, 355)
Field14AF.Size = UDim2.new(0, 40, 0, 20)
Field14AF.TextColor3 = Color3.new(1, 1, 1)
Field14AF.Font = Enum.Font.Fantasy
Field14AF.Text = "Farm"
Field14AF.TextSize = 16

Players.Name = "Players"
Players.Parent = MainFrame
Players.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Players.BorderColor3 = Color3.new(0, 1, 0)
Players.Position = UDim2.new(0, 118, 0, 5)
Players.Size = UDim2.new(0, 60, 0, 20)
Players.BackgroundTransparency = 0
Players.Font = Enum.Font.Fantasy
Players.TextColor3 = Color3.new(1, 1, 1)
Players.Text = "Players"
Players.TextSize = 17
Players.TextWrapped = true

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = MainFrame
PlayerFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PlayerFrame.BackgroundTransparency = 0.3
PlayerFrame.BorderColor3 = Color3.new(0, 0, 0)
PlayerFrame.Position = UDim2.new(0, 63, 0, 34)
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
TpPlayer.Text = "Teleport to Player"
TpPlayer.TextColor3 = Color3.new(1, 1, 1)
TpPlayer.TextWrapped = true
TpPlayer.TextSize = 17

PollenFarm.Name = "PollenFarm"
PollenFarm.Parent = MainFrame
PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
PollenFarm.BorderColor3 = Color3.new(0, 1, 0)
PollenFarm.Position = UDim2.new(0, 183, 0, 5)
PollenFarm.Size = UDim2.new(0, 90, 0, 20)
PollenFarm.Font = Enum.Font.Fantasy
PollenFarm.TextColor3 = Color3.new(1, 1, 1)
PollenFarm.Text = "Farm Pollen"
PollenFarm.TextSize = 17
PollenFarm.TextWrapped = true

FarmFrame.Name = "FarmFrame"
FarmFrame.Parent = MainFrame
FarmFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
FarmFrame.BorderColor3 = Color3.new(0, 0, 0)
FarmFrame.BackgroundTransparency = 0
FarmFrame.Position = UDim2.new(0, 138, 0, 34)
FarmFrame.Size = UDim2.new(0, 180, 0, 55)
FarmFrame.ZIndex = 7
FarmFrame.Visible = false

AvoidViciousBee.Name = "AvoidViciousBee"
AvoidViciousBee.Parent = FarmFrame
AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AvoidViciousBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
AvoidViciousBee.BackgroundTransparency = 0
AvoidViciousBee.Position = UDim2.new(0, 5, 0, 5)
AvoidViciousBee.Size = UDim2.new(0, 170, 0, 20)
AvoidViciousBee.Font = Enum.Font.Fantasy
AvoidViciousBee.TextColor3 = Color3.new(1, 1, 1)
AvoidViciousBee.Text = "Avoid Vicious Bee: OFF"
AvoidViciousBee.TextSize = 17
AvoidViciousBee.ZIndex = 7
AvoidViciousBee.TextWrapped = true

StartFarm.Name = "StartFarm"
StartFarm.Parent = FarmFrame
StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
StartFarm.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartFarm.BackgroundTransparency = 0
StartFarm.Position = UDim2.new(0, 5, 0, 30)
StartFarm.Size = UDim2.new(0, 170, 0, 20)
StartFarm.Font = Enum.Font.Fantasy
StartFarm.TextColor3 = Color3.new(1, 1, 1)
StartFarm.Text = "Pollen Farm: OFF"
StartFarm.TextSize = 17
StartFarm.ZIndex = 7
StartFarm.TextWrapped = true

AutoDig.Name = "AutoDig"
AutoDig.Parent = MainFrame
AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AutoDig.BorderColor3 = Color3.new(0, 1, 0)
AutoDig.Position = UDim2.new(0, 278, 0, 5)
AutoDig.Size = UDim2.new(0, 70, 0, 20)
AutoDig.Font = Enum.Font.Fantasy
AutoDig.TextColor3 = Color3.new(1, 1, 1)
AutoDig.Text = "Auto Dig"
AutoDig.TextSize = 17
AutoDig.TextWrapped = true

God.Name = "God"
God.Parent = MainFrame
God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
God.BorderColor3 = Color3.new(0, 1, 0)
God.Position = UDim2.new(0, 353, 0, 5)
God.Size = UDim2.new(0, 115, 0, 20)
God.Font = Enum.Font.Fantasy
God.TextColor3 = Color3.new(1, 1, 1)
God.Text = "God Mode: OFF"
God.TextSize = 17
God.TextWrapped = true

ExtrasScreen.Name = "ExtrasScreen"
ExtrasScreen.Parent = MainFrame
ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ExtrasScreen.BorderColor3 = Color3.new(0, 1, 0)
ExtrasScreen.Position = UDim2.new(0, 473, 0, 5)
ExtrasScreen.Size = UDim2.new(0, 50, 0, 20)
ExtrasScreen.Font = Enum.Font.Fantasy
ExtrasScreen.TextColor3 = Color3.new(1, 1, 1)
ExtrasScreen.Text = "Extras"
ExtrasScreen.TextSize = 17
ExtrasScreen.TextWrapped = true

ExtrasFrame.Name = "ExtrasFrame"
ExtrasFrame.Parent = MainFrame
ExtrasFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ExtrasFrame.BorderColor3 = Color3.new(0, 0, 0)
ExtrasFrame.BackgroundTransparency = 0
ExtrasFrame.Position = UDim2.new(0, 413, 0, 34)
ExtrasFrame.Size = UDim2.new(0, 170, 0, 330)
ExtrasFrame.ZIndex = 7
ExtrasFrame.Visible = false

HuntViciousBee.Name = "HuntViciousBee"
HuntViciousBee.Parent = ExtrasFrame
HuntViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HuntViciousBee.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
HuntViciousBee.Position = UDim2.new(0, 5, 0, 5)
HuntViciousBee.Size = UDim2.new(0, 160, 0, 20)
HuntViciousBee.Font = Enum.Font.Fantasy
HuntViciousBee.TextColor3 = Color3.new(1, 1, 1)
HuntViciousBee.Text = "Hunt Vicious Bee: OFF"
HuntViciousBee.TextSize = 17
HuntViciousBee.ZIndex = 7
HuntViciousBee.TextWrapped = true

SproutFarmToggle.Name = "SproutFarmToggle"
SproutFarmToggle.Parent = ExtrasFrame
SproutFarmToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
SproutFarmToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
SproutFarmToggle.Position = UDim2.new(0, 5, 0, 30)
SproutFarmToggle.Size = UDim2.new(0, 160, 0, 20)
SproutFarmToggle.Font = Enum.Font.Fantasy
SproutFarmToggle.TextColor3 = Color3.new(1, 1, 1)
SproutFarmToggle.Text = "Farm Sprout: OFF"
SproutFarmToggle.TextSize = 17
SproutFarmToggle.ZIndex = 7
SproutFarmToggle.TextWrapped = true

WealthClockToggle.Name = "WealthClockToggle"
WealthClockToggle.Parent = ExtrasFrame
WealthClockToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
WealthClockToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
WealthClockToggle.Position = UDim2.new(0, 5, 0, 55)
WealthClockToggle.Size = UDim2.new(0, 160, 0, 20)
WealthClockToggle.TextColor3 = Color3.new(1, 1, 1)
WealthClockToggle.Font = Enum.Font.Fantasy
WealthClockToggle.Text = "Wealth Clock: OFF"
WealthClockToggle.ZIndex = 7
WealthClockToggle.TextSize = 16

FieldBoostToggle.Name = "FieldBoostToggle"
FieldBoostToggle.Parent = ExtrasFrame
FieldBoostToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FieldBoostToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
FieldBoostToggle.Position = UDim2.new(0, 5, 0, 80)
FieldBoostToggle.Size = UDim2.new(0, 160, 0, 20)
FieldBoostToggle.TextColor3 = Color3.new(1, 1, 1)
FieldBoostToggle.Font = Enum.Font.Fantasy
FieldBoostToggle.Text = "Auto Field Boost: OFF"
FieldBoostToggle.ZIndex = 7
FieldBoostToggle.TextSize = 16

TreatToggle.Name = "TreatToggle"
TreatToggle.Parent = ExtrasFrame
TreatToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TreatToggle.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TreatToggle.Position = UDim2.new(0, 5, 0, 105)
TreatToggle.Size = UDim2.new(0, 160, 0, 20)
TreatToggle.TextColor3 = Color3.new(1, 1, 1)
TreatToggle.Font = Enum.Font.Fantasy
TreatToggle.Text = "Auto Treats: OFF"
TreatToggle.ZIndex = 7
TreatToggle.TextSize = 16

NoClip.Name = "NoClip"
NoClip.Parent = ExtrasFrame
NoClip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
NoClip.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
NoClip.Position = UDim2.new(0, 5, 0, 130)
NoClip.Size = UDim2.new(0, 160, 0, 20)
NoClip.Font = Enum.Font.Fantasy
NoClip.TextColor3 = Color3.new(1, 1, 1)
NoClip.Text = "NoClip Mode: OFF"
NoClip.TextSize = 17
NoClip.ZIndex = 7
NoClip.TextWrapped = true

FindTreasures.Name = "FindTreasures"
FindTreasures.Parent = ExtrasFrame
FindTreasures.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasures.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
FindTreasures.Position = UDim2.new(0, 5, 0, 155)
FindTreasures.Size = UDim2.new(0, 160, 0, 20)
FindTreasures.BackgroundTransparency = 0
FindTreasures.Font = Enum.Font.Fantasy
FindTreasures.TextColor3 = Color3.new(1, 1, 1)
FindTreasures.Text = "Tp to all Treasures"
FindTreasures.TextSize = 17
FindTreasures.ZIndex = 7
FindTreasures.TextWrapped = true

FindTreasuresText1.Name = "FindTreasuresText1"
FindTreasuresText1.Parent = MainFrame
FindTreasuresText1.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FindTreasuresText1.BorderColor3 = Color3.new(0, 0, 0)
FindTreasuresText1.BackgroundTransparency = 0.1
FindTreasuresText1.Position = UDim2.new(0, 221, 0, 130)
FindTreasuresText1.Size = UDim2.new(0, 190, 0, 84)
FindTreasuresText1.TextColor3 = Color3.new(1, 1, 1)
FindTreasuresText1.Font = Enum.Font.Fantasy
FindTreasuresText1.Text = "This will Teleport you to all the hidden treasures on the map. It will only work once\nas the treasures do not respawn."
FindTreasuresText1.TextSize = 16
FindTreasuresText1.TextWrapped = true
FindTreasuresText1.ZIndex = 7
FindTreasuresText1.Visible = false
FindTreasuresText1.TextYAlignment = Enum.TextYAlignment.Top

TPTool.Name = "TPTool"
TPTool.Parent = ExtrasFrame
TPTool.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TPTool.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
TPTool.Position = UDim2.new(0, 5, 0, 180)
TPTool.Size = UDim2.new(0, 160, 0, 20)
TPTool.TextColor3 = Color3.new(1, 1, 1)
TPTool.Font = Enum.Font.Fantasy
TPTool.Text = "Add TPTool"
TPTool.ZIndex = 7
TPTool.TextSize = 16

BTool.Name = "BTool"
BTool.Parent = ExtrasFrame
BTool.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BTool.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BTool.Position = UDim2.new(0, 5, 0, 205)
BTool.Size = UDim2.new(0, 160, 0, 20)
BTool.TextColor3 = Color3.new(1, 1, 1)
BTool.Font = Enum.Font.Fantasy
BTool.Text = "Add BTools"
BTool.ZIndex = 7
BTool.TextSize = 16

ReJoinServer.Name = "ReJoinServer"
ReJoinServer.Parent = ExtrasFrame
ReJoinServer.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
ReJoinServer.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
ReJoinServer.Position = UDim2.new(0, 5, 0, 230)
ReJoinServer.Size = UDim2.new(0, 160, 0, 20)
ReJoinServer.TextColor3 = Color3.new(1, 1, 1)
ReJoinServer.Font = Enum.Font.Fantasy
ReJoinServer.Text = "ReJoin a Server"
ReJoinServer.TextSize = 16
ReJoinServer.ZIndex = 7
ReJoinServer.TextWrapped = true

TokenToggleLabel.Name = "TokenToggleLabel"
TokenToggleLabel.Parent = ExtrasFrame
TokenToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TokenToggleLabel.BorderSizePixel = 0
TokenToggleLabel.Position = UDim2.new(0, 5, 0, 254)
TokenToggleLabel.Size = UDim2.new(0, 132, 0, 22)
TokenToggleLabel.TextColor3 = Color3.new(1, 1, 1)
TokenToggleLabel.Font = Enum.Font.Fantasy
TokenToggleLabel.Text = "Token Pickup kb"
TokenToggleLabel.TextSize = 16
TokenToggleLabel.ZIndex = 7
TokenToggleLabel.TextWrapped = true

TokenToggle.Name = "TokenToggle"
TokenToggle.Parent = ExtrasFrame
TokenToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
TokenToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
TokenToggle.Position = UDim2.new(0, 137, 0, 255)
TokenToggle.Size = UDim2.new(0, 28, 0, 20)
TokenToggle.TextColor3 = Color3.new(1, 1, 1)
TokenToggle.Font = Enum.Font.Fantasy
TokenToggle.Text = "h"
TokenToggle.TextSize = 16
TokenToggle.ZIndex = 7
TokenToggle.TextWrapped = true

FireflyToggleLabel.Name = "FireflyToggleLabel"
FireflyToggleLabel.Parent = ExtrasFrame
FireflyToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
FireflyToggleLabel.BorderSizePixel = 0
FireflyToggleLabel.Position = UDim2.new(0, 5, 0, 279)
FireflyToggleLabel.Size = UDim2.new(0, 132, 0, 22)
FireflyToggleLabel.TextColor3 = Color3.new(1, 1, 1)
FireflyToggleLabel.Font = Enum.Font.Fantasy
FireflyToggleLabel.Text = "Firefly Touch kb"
FireflyToggleLabel.TextSize = 16
FireflyToggleLabel.ZIndex = 7
FireflyToggleLabel.TextWrapped = true

FireflyToggle.Name = "FireflyToggle"
FireflyToggle.Parent = ExtrasFrame
FireflyToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
FireflyToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
FireflyToggle.Position = UDim2.new(0, 137, 0, 280)
FireflyToggle.Size = UDim2.new(0, 28, 0, 20)
FireflyToggle.TextColor3 = Color3.new(1, 1, 1)
FireflyToggle.Font = Enum.Font.Fantasy
FireflyToggle.Text = "j"
FireflyToggle.TextSize = 16
FireflyToggle.ZIndex = 7
FireflyToggle.TextWrapped = true

HoneyToggleLabel.Name = "HoneyToggleLabel"
HoneyToggleLabel.Parent = ExtrasFrame
HoneyToggleLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
HoneyToggleLabel.BorderSizePixel = 0
HoneyToggleLabel.Position = UDim2.new(0, 5, 0, 304)
HoneyToggleLabel.Size = UDim2.new(0, 132, 0, 22)
HoneyToggleLabel.TextColor3 = Color3.new(1, 1, 1)
HoneyToggleLabel.Font = Enum.Font.Fantasy
HoneyToggleLabel.Text = "Make Honey kb"
HoneyToggleLabel.TextSize = 16
HoneyToggleLabel.ZIndex = 7
HoneyToggleLabel.TextWrapped = true

HoneyToggle.Name = "HoneyToggle"
HoneyToggle.Parent = ExtrasFrame
HoneyToggle.BackgroundColor3 = Color3.new(0.4, 0.4, 0.4)
HoneyToggle.BorderColor3 = Color3.new(0.8, 0.8, 0.8)
HoneyToggle.Position = UDim2.new(0, 137, 0, 305)
HoneyToggle.Size = UDim2.new(0, 28, 0, 20)
HoneyToggle.TextColor3 = Color3.new(1, 1, 1)
HoneyToggle.Font = Enum.Font.Fantasy
HoneyToggle.Text = "y"
HoneyToggle.TextSize = 16
HoneyToggle.ZIndex = 7
HoneyToggle.TextWrapped = true

InfoScreen.Name = "InfoScreen"
InfoScreen.Parent = MainFrame
InfoScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
InfoScreen.BorderColor3 = Color3.new(0, 1, 0)
InfoScreen.Position = UDim2.new(0, 528, 0, 5)
InfoScreen.Size = UDim2.new(0, 40, 0, 20)
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
InfoFrame.BackgroundTransparency = 0
InfoFrame.Position = UDim2.new(0, 437, 0, 34)
InfoFrame.Size = UDim2.new(0, 200, 0, 190)
InfoFrame.ZIndex = 7
InfoFrame.Visible = false

InfoText1.Name = "InfoText1"
InfoText1.Parent = InfoFrame
InfoText1.BackgroundColor3 = Color3.new(0, 0, 0)
InfoText1.BorderColor3 = Color3.new(0, 0, 0)
InfoText1.BackgroundTransparency = 1
InfoText1.Position = UDim2.new(0, 5, 0, 5)
InfoText1.Size = UDim2.new(0, 190, 0, 210)
InfoText1.TextColor3 = Color3.new(1, 1, 1)
InfoText1.Font = Enum.Font.Fantasy
InfoText1.Text = "This Gui was created by LuckyMMB@V3rmillion.net\nDiscord https://discord.gg/GKzJnUC\n\nCredits:\nsirelKilla @ v3rmillion for the pollen farming script\nTechnoDaft for adding Btools and Waypoints\nnewdarkt for adding the King Beetles Lair location"
InfoText1.ZIndex = 7
InfoText1.TextSize = 15
InfoText1.TextWrapped = true
InfoText1.TextYAlignment = Enum.TextYAlignment.Top

TimeLabel.Name = "TimeLabel"
TimeLabel.Parent = MainFrame
TimeLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
TimeLabel.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
TimeLabel.Position = UDim2.new(0, 573, 0, 5)
TimeLabel.Size = UDim2.new(0, 60, 0, 20)
TimeLabel.BackgroundTransparency = 0
TimeLabel.Font = Enum.Font.Fantasy
TimeLabel.TextColor3 = Color3.new(1, 1, 1)
TimeLabel.Text = ""
TimeLabel.TextSize = 17
TimeLabel.TextWrapped = true

SproutDetect.Name = "SproutDetect"
SproutDetect.Parent = MainFrame
SproutDetect.BackgroundColor3 = Color3.new(0, 0.5, 0)
SproutDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
SproutDetect.Position = UDim2.new(0, 180, 0, 33)
SproutDetect.Size = UDim2.new(0, 150, 0, 35)
SproutDetect.Font = Enum.Font.Fantasy
SproutDetect.TextColor3 = Color3.new(1, 1, 1)
SproutDetect.Text = "Sprout Detected\nDistance: "
SproutDetect.TextSize = 17
SproutDetect.TextWrapped = true
SproutDetect.ZIndex = 4
SproutDetect.Visible = false

FireflyDetect.Name = "FireflyDetect"
FireflyDetect.Parent = MainFrame
FireflyDetect.BackgroundColor3 = Color3.new(0, 0, 0.5)
FireflyDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
FireflyDetect.Position = UDim2.new(0, 334, 0, 33)
FireflyDetect.Size = UDim2.new(0, 150, 0, 35)
FireflyDetect.Font = Enum.Font.Fantasy
FireflyDetect.TextColor3 = Color3.new(1, 1, 1)
FireflyDetect.Text = "Firefly's Detected\nDistance: "
FireflyDetect.TextSize = 17
FireflyDetect.TextWrapped = true
FireflyDetect.ZIndex = 4
FireflyDetect.Visible = false

ViciousBeeDetect.Name = "ViciousBeeDetect"
ViciousBeeDetect.Parent = MainFrame
ViciousBeeDetect.BackgroundColor3 = Color3.new(0.5, 0, 0)
ViciousBeeDetect.BorderColor3 = Color3.new(0.15, 0.15, 0.15)
ViciousBeeDetect.Position = UDim2.new(0, 488, 0, 33)
ViciousBeeDetect.Size = UDim2.new(0, 150, 0, 35)
ViciousBeeDetect.Font = Enum.Font.Fantasy
ViciousBeeDetect.TextColor3 = Color3.new(1, 1, 1)
ViciousBeeDetect.Text = "Vicious Bee Detected\nDistance: "
ViciousBeeDetect.TextSize = 17
ViciousBeeDetect.TextWrapped = true
ViciousBeeDetect.ZIndex = 4
ViciousBeeDetect.Visible = false

-- notify --
 
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
	[PollenFarm] = FarmFrame;
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

-- Time --

spawn(function()
	while true do
		if tostring(game.Lighting.TimeOfDay) == "13:39:00" or tostring(game.Lighting.TimeOfDay) == "13:51:36" then
			TimeLabel.BackgroundColor3 = Color3.new(120/255, 1, 235/255)
			TimeLabel.BorderColor3 = Color3.new(120/255, 1, 235/255)
			TimeLabel.Text = "Day"
			TimeLabel.TextColor3 = Color3.new(0, 0, 0)
		else
			TimeLabel.BackgroundColor3 = Color3.new(59/255, 41/255, 86/255)
			TimeLabel.BorderColor3 = Color3.new(59/255, 41/255, 86/255)
			TimeLabel.Text = "Night"
			TimeLabel.TextColor3 = Color3.new(1, 1, 1)
		end
		wait(1)
	end
end)

--- Snow Menus Show Hide ---

FindTreasures.MouseEnter:connect(function()
	FindTreasuresText1.Visible = true
end)

FindTreasures.MouseLeave:connect(function()
	FindTreasuresText1.Visible = false
end)

-- Check Health --

spawn(function()
	while true do
		if not pausehumcheck then
			local PlrChar = game.Players.LocalPlayer.Character
			local FindHum = PlrChar:FindFirstChildOfClass("Humanoid")
			if FindHum then
				plrHealth = string.format("%.0f", FindHum.Health)
			end
		end
		wait(0.5)
	end
end)

-- Round value to x decimal places --

function round(num, numDecimalPlaces)
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

-- Check for Sprout --

spawn(function()
	while true do
		sproutdistance1 = nil
		sproutdetected = false
		SproutDetect.Visible = false
		repeat
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Sprout") do
					if not pausehumcheck and v.Name == "Sprout" then
						sproutdetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						local head = character:WaitForChild'Head'
						local hum = player.Character.HumanoidRootPart
						sproutdistance = (v.Position-hum.Position).magnitude
						sproutdistance1 = round(sproutdistance, 2)
						--print("Sprout Detected. Distance: " ..tostring(sproutdistance))--
						SproutDetect.Text = "Sprout Detected\nDistance: " ..tostring(sproutdistance1).. ""
						SproutDetect.Visible = true
					end
				end
			end
			wait(0.3)
		until v == nil
		wait(0.1)
	end
end)

-- check for fireflys --

spawn(function()
	while true do
		fireflydistance1 = nil
		fireflydetected = false
		FireflyDetect.Visible = false
		repeat
			for i,v in pairs(workspace.NPCBees:GetChildren()) do
				for x in string.gmatch(v.Name, "Firefly") do
					if not pausehumcheck and v.Name == "Firefly" then
						fireflydetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						local head = character:WaitForChild'Head'
						local hum = player.Character.HumanoidRootPart
						firelfydistance = (v.Position-hum.Position).magnitude
						fireflydistance1 = round(firelfydistance, 2)
						--print("Fireflys Detected. Distance: " ..tostring(firelfydistance))--
						FireflyDetect.Text = "Firefly Detected\nDistance: " ..tostring(fireflydistance1).. ""
						FireflyDetect.Visible = true
					end
				end
			end
			wait(0.4)
		until v == nil
		wait(0.1)
	end
end)

-- check for vicious bee --

spawn(function()
	while true do
		viciousdistance1 = nil
		viciousbeedetected = false
		ViciousBeeDetect.Visible = false
		repeat
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Vicious") do
					if not pausehumcheck and v.Name == "Vicious" then
						viciousbeedetected = true
						local player = game:GetService'Players'.LocalPlayer
						local character = player.Character or player.CharacterAdded:wait()
						local head = character:WaitForChild'Head'
						local hum = player.Character.HumanoidRootPart
						viciousdistance = (v.Position-hum.Position).magnitude
						viciousdistance1 = round(viciousdistance, 2)
						--print("Vicious Bee Detected. Distance: " ..tostring(viciousdistance))--
						ViciousBeeDetect.Text = "Vicious Bee Detected\nDistance: " ..tostring(viciousdistance1).. ""
						ViciousBeeDetect.Visible = true
					end
				end
			end
			if viciousbeedetected and viciousdistance < 80 then
				viciousbeenear = true
				if viciousbeenear and not beenearmsg and not godmodeactivated then
					print("WARNING!! Vicious Bee Near")
					beenearmsg=true
				end
			else
				viciousbeenear = false
				beenearmsg = false
			end
			wait(0.5)
		until v == nil
		wait(0.1)
	end
end)

spawn(function()
	while true do
		if PollenFarmActive then
			if AvoidViciousActive and viciousbeenear then
				if not farmzoneswitched then
					if not switchlocationmsg then
						print("Vicious Bee Near. Switching to Safe Farming Zone")
						notify'Switching to safe Farming Zone'
						switchlocationmsg = true
					end
					switchingzone = true
					PollenFarmActive = false
					wait(1)
					if Field5AFActive then
						originalzone = "Clover"
						Field5AFActive = false
						Field3AFActive = true
					elseif Field7AFActive then
						originalzone = "Spider"
						Field7AFActive = false
						Field3AFActive = true
					elseif Field9AFActive then
						originalzone = "Rose"
						Field9AFActive = false
						Field3AFActive = true
					elseif Field11AFActive then
						originalzone = "Cactus"
						Field11AFActive = false
						Field3AFActive = true
					else
						originalzone = "MountainTop"
						Field3AFActive = true
					end
					farmzoneswitched = true
					switchingzone = false
					PollenFarmActive = true
				end
			end
		end
		wait(0.5)
	end
end)

spawn(function()
	while true do
		wait(0.5)
		if farmzoneswitchback then
			if switchlocationmsg then
				print("Vicious Bee has gone. Switching back to original location")
				notify'Switching back to original location'
				switchlocationmsg = false
			end
			switchingzone = true
			PollenFarmActive = false
			wait(1)
			if originalzone == "Clover" then
				Field3AFActive = false
				Field5AFActive = true
			elseif originalzone == "Spider" then
				Field3AFActive = false
				Field7AFActive = true
			elseif originalzone == "Rose" then
				Field3AFActive = false
				Field9AFActive = true
			elseif originalzone == "Cactus" then
				Field3AFActive = false
				Field11AFActive = true
			elseif originalzone == "MountainTop" then
				Field3AFActive = false
			end
			farmzoneswitched = false
			farmzoneswitchback = false
			switchingzone = false
			PollenFarmActive = true
		end
	end
end)

-- Pollen Farming --

spawn (function()
	while true do
		wait(0.5)
		if resethive then
			print("Waiting 35 seconds before AutoFarm resumes")
			wait(35)
			resethive = false
			PollenFarmActive = true
		end
		if PollenFarmActive then
			local player = game:GetService("Players").LocalPlayer
			while player == nil do wait(0.5) end
			local root = player.Character.HumanoidRootPart
			if farmzoneswitched and not viciousbeedetected then PollenFarmActive = false farmzoneswitchback = true end
			player = game:GetService("Players").LocalPlayer
			local currp
			player.Character.Humanoid.Died:connect(function()
				resethive = true
				PollenFarmActive = false
				print("Player: " ..tostring(player.Name).. " has died")
			end)
			local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
			if not pollenLbl then
				print("Backpack not found")
			end
			local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
			local pollenTool = player.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
			if pollenTool==nil or pollenTool:FindFirstChild("ClickEvent")==nil then
				print("Tool not found")
			end
			--print("Backpack size: " .. maxpollen)
			if PollenFarmActive then
			if Field1AFActive == true then
				fieldpos = {Vector3.new(-204,3.4,142),Vector3.new(-210,3.4,174),Vector3.new(-210,3.4,200)}
				print("Farming Sunflower Field")
			elseif Field2AFActive == true then
				fieldpos = {Vector3.new(-98, 3.4, 129),Vector3.new(-80, 3.35, 129)}
				print("Farming Mushroom Field")
			elseif Field3AFActive == true then
				fieldpos = {Vector3.new(-70.35,3.4,219),Vector3.new(-35,3.4,219),Vector3.new(0,3.4,219)}
				print("Farming Dandelion Field")
			elseif Field4AFActive == true then
				fieldpos = {Vector3.new(100,3.4,96),Vector3.new(140,3.4,96),Vector3.new(185,3.4,96)}
				print("Farming Blue Flower Field")
			elseif Field5AFActive == true then
				fieldpos = {Vector3.new(179,32.9,216),Vector3.new(160,32.9,189),Vector3.new(138,32.9,167)}
				print("Farming Clover Field")
			elseif Field6AFActive == true then
				fieldpos = {Vector3.new(-193,19.4,11),Vector3.new(-181,19.4,-10),Vector3.new(-162,19.4,-29)}
				print("Farming StrawBerry Field")
			elseif Field7AFActive == true then
				fieldpos = {Vector3.new(-73,19.4,2),Vector3.new(-44,19.4,-21),Vector3.new(-16,19.4,7)}
				print("Farming Spider Field")
			elseif Field8AFActive == true then
				fieldpos = {Vector3.new(92.9,20,-25.6),Vector3.new(132.9,20,-25.6),Vector3.new(172.9,20,-25.6)}
				print("Farming BamBoo Field")
			elseif Field9AFActive == true then
				fieldpos = {Vector3.new(-300,20,129),Vector3.new(-322.835,20,129),Vector3.new(-350,20,129)}
				print("Farming Rose Field")
			elseif Field10AFActive == true then
				fieldpos = {Vector3.new(-310.1,65.5,-128.1),Vector3.new(-310.1,65.5,-168.1),Vector3.new(-310.1,65.5,-208.1)}
				print("Farming Pine Tree Forest")
			elseif Field11AFActive == true then
				fieldpos = {Vector3.new(-159.5,68,-101.5),Vector3.new(-194.5,68,-112.5),Vector3.new(-229.5,68,-101.5)}
				print("Farming Cactus Field")
			elseif Field12AFActive == true then
				fieldpos = {Vector3.new(-169,67,-183.8),Vector3.new(-186.5,67,-186.8),Vector3.new(-222,67,-183.8)}
				print("Farming Pumpkin Patch")
			elseif Field13AFActive == true then
				fieldpos = {Vector3.new(285.3,70.2,-200),Vector3.new(260.3,70.2,-220),Vector3.new(225.3,70.2,-200)}
				print("Farming Pineapple Patch")
			elseif Field14AFActive == true then
				fieldpos = {Vector3.new(93.2, 175.35, -188.49),Vector3.new(93.2, 175.35, -141.98),Vector3.new(59.12, 175.35, -141.98),Vector3.new(59.12, 175.35, -188.49)}
				print("Farming Mountain Top Field")
			else
				if maxpollen < 9999 then
					fieldpos = {Vector3.new(-220,3.3,220),Vector3.new(-220,4,180),Vector3.new(-220,4,140),Vector3.new(-220,4,100),Vector3.new(-190,4,126),Vector3.new(-190, 4, 166),Vector3.new(-190, 4, 206)}
					print("Farming Sunflower Field")
				else
					fieldpos = {Vector3.new(93.2, 175.35, -188.49),Vector3.new(93.2, 175.35, -141.98),Vector3.new(59.12, 175.35, -141.98),Vector3.new(59.12, 175.35, -188.49)}
					print("Farming Mountain Top Field")
				end
			end
			end
			--collect pollen
			--print("Farming pollen")
			local posIndex = 0
			pollenTool.Parent = player.Character
			workspace.Collectibles.ChildAdded:Connect(function(part)
				if PollenFarmActive then
					local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					if tostring(part) == tostring(game.Players.LocalPlayer.Name) or tostring(part) == "C" then
						-- print("token position:  " ..tostring(part.Position)) --
						-- print("player position: " ..tostring(root.Position)) --
						-- print("Distance:        " ..tostring((part.Position - root.Position).magnitude)) --
						if currp and (part.Position-root.Position).magnitude <= 60 then
							root.CFrame = CFrame.new(part.Position.x, root.Position.y, part.Position.z)
							wait(0.07)
							root.CFrame = CFrame.new(currp)
							wait(0.05)
						end
					end
				end
			end)
			wait(0.1)
			while PollenFarmActive and tonumber(player.leaderstats.Pollen.Value) < tonumber(maxpollen) do
				wait(0.05)
				posIndex=posIndex+1
				if posIndex>#fieldpos then posIndex=1 end
				for rot=1,4 do
					local angle = CFrame.Angles(0,math.pi*.5*rot,0)
					currp = fieldpos[posIndex]+angle.lookVector*10
					local newrootpos = CFrame.new(currp)*angle
					root.CFrame = newrootpos
					for i=1,25 do
						if farmzoneswitched and not viciousbeedetected then PollenFarmActive = false farmzoneswitchback = true end
						if not PollenFarmActive then break end
						wait(0.2)
						pollenTool.ClickEvent:FireServer(currp)
					end
					player = game:GetService("Players").LocalPlayer
					if tonumber(player.leaderstats.Pollen.Value+1) > tonumber(maxpollen) then
						print("Total Honey: " ..tostring(player.leaderstats.Honey.Value).. ". Bag Full: " ..tostring(player.leaderstats.Pollen.Value))
						break
					end
				end
			end
			-- turn pollen to honey --
			currp = nil
			--print("Teleporting back to Hive to make Honey")
			wait(0.1)
			game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
			if not switchingzone then
				wait(1)
				game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
				if PollenFarmActive then
					repeat wait(0.5) until game:GetService("Players").LocalPlayer.leaderstats.Pollen.Value < 1
					wait(8)
				end
			end
		end
	end
end)

-- Trigger Wealth Clock every 30 minutes --

WealthClockToggle.MouseButton1Click:connect(function()
	if WealthClockActive ~= true then
		WealthClockActive = true
		notify'Wealth Clock Started'
		print("Wealth Clock Started. The Wealth Clock will be triggered every 30 minutes.")
		WealthClockToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		WealthClockToggle.Text = "Wealth Clock: ON"
	else
		WealthClockActive = false
		notify'Wealth Clock Stopped'
		WealthClockToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		WealthClockToggle.Text = "Wealth Clock: OFF"
	end
end)

spawn(function()
	while true do
		if WealthClockActive then
			while WealthClockActive do
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Wealth Clock")
				print("Wealth Clock activated")
				wcwaittime = 1830
				repeat
					WealthClockToggle.Text = "Wealth Clock: " ..tostring(wcwaittime).. "sec"
					wait(1)
					wcwaittime = wcwaittime - 1
				until wcwaittime == 0 or not WealthClockActive
			end
		end
		wait(1)
	end
end)

-- Trigger Field Boosts every 2 hours --

FieldBoostToggle.MouseButton1Click:connect(function()
	if FieldBoostActive ~= true then
		FieldBoostActive = true
		notify'Auto Field Boost Started'
		print("Auto Field Boost Started. Field Boosts will be triggered every 2 hours.")
		FieldBoostToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		FieldBoostToggle.Text = "Auto Field Boost: ON"
	else
		FieldBoostActive = false
		notify'Auto Field Boost Stopped'
		FieldBoostToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		FieldBoostToggle.Text = "Auto Field Boost: OFF"
	end
end)

spawn(function()
	while true do
		if FieldBoostActive then
			while FieldBoostActive do
				print("Field Boosts activated")
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Red Field Booster")
				wait(0.5)
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Blue Field Booster")
				wait(0.5)
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Field Booster")
				fbwaittime = 7259
				repeat
					FieldBoostToggle.Text = "Field Boosts: " ..tostring(fbwaittime).. "sec"
					wait(1)
					fbwaittime = fbwaittime - 1
				until fbwaittime == 0 or not FieldBoostActive
			end
		end
		wait(1)
	end
end)

-- Trigger Treats every 4 hours --

TreatToggle.MouseButton1Click:connect(function()
	if TreatActive ~= true then
		TreatActive = true
		notify'Auto Treats Started'
		print("Treats will be given every 1 hour (4 hours for Blueberry and Strawberry).")
		TreatToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		TreatToggle.Text = "Auto Treats: ON"
	else
		TreatActive = false
		notify'Auto Treats Stopped'
		TreatToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		TreatToggle.Text = "Auto Treats: OFF"
	end
end)

spawn(function()
	while true do
		if TreatActive then
			while TreatActive do
				print("Strawberry and Blueberry Treats given")
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Blueberry Dispenser")
				wait(0.5)
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Strawberry Dispenser")
				ttwaittime = 14600
				repeat
					TreatToggle.Text = "Auto Treats: " ..tostring(ttwaittime).. "sec"
					wait(1)
					ttwaittime = ttwaittime - 1
				until ttwaittime == 0 or not TreatActive
			end
		end
		wait(1)
	end
end)

spawn(function()
	while true do
		if TreatActive then
			while TreatActive do
				print("Treats given")
				game:GetService("ReplicatedStorage").Events.ToyEvent:FireServer("Treat Dispenser")
				tdwaittime = 3660
				repeat
					wait(1)
					tdwaittime = tdwaittime - 1
				until tdwaittime == 0 or not TreatActive
			end
		end
		wait(1)
	end
end)

--- WayPoints ---

local WayPoints = {
["Black Bear"] = CFrame.new(-258.1, 5, 299.7),
["Brown Bear"] = CFrame.new(282, 46, 236),
["Panda Bear"] = CFrame.new(106.3, 35, 50.1),
["Polar Bear"] = CFrame.new(-106, 119, -77),
["Science Bear"] = CFrame.new(267, 103, 20),
["Traveling Bear"] = CFrame.new(23.9, 14, 359.9),
["Mother Bear"] = CFrame.new(-183.8, 4.6, 87.5),
["Tunnel Bear"] = CFrame.new(507.3, 5.7, -45.7),
["Sun Bear"] = CFrame.new(23.25, 14, 360.26),
["Redfield Boost"] = CFrame.new(-332, 20, 244),
["Bluefield Boost"] = CFrame.new(319, 58, 103),
["MountainTop Boost"] = CFrame.new(-40, 176, -191.7),
["Red Cannon (22)"] = CFrame.new(-240, 17, 345),
["Blue Cannon (16)"] = CFrame.new(-287, 73, 22),
["Yellow Cannon (12)"] = CFrame.new(266, 109, -25),
["Slingshot (8)"] = CFrame.new(78, 23, 149),
["Bee Shop"] = CFrame.new(-136.8, 4.6, 243.4),
["Tool Shop"] = CFrame.new(86, 4.6, 294),
["Tool Shop 2"] = CFrame.new(165, 69, -161),
["MountainTop Shop"] = CFrame.new(-18, 176, -137),
["Ticket Tent"] = CFrame.new(-234, 17, 398),
["Red Clubhouse"] = CFrame.new(-334, 21, 216),
["Blue Clubhouse"] = CFrame.new(292, 4, 98),
["Ticket Shop"] = CFrame.new(-12.8, 184, -222.2),
["Club Honey"] = CFrame.new(44.8, 5, 319.6),
["RoyalJelly Shop"] = CFrame.new(-297, 53, 68),
["Ticket RoyalJelly Shop"] = CFrame.new(81, 18, 240),
["Honeystorm Dispensor"] = CFrame.new(238.4, 33.3, 165.6),
["Blueberry Dispenser"] = CFrame.new(313.3, 58, 86.9),
["Strawberry Dispenser"] = CFrame.new(-320.5, 46, 272.5),
["Sprout Dispenser"] = CFrame.new(-269.26, 26.56, 267.31),
["Instant Honey Convertor"] = CFrame.new(282, 68, -62),
["King Beetles Lair"] = CFrame.new(218, 3, 140),
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
["Pineapple Field"] = CFrame.new(262, 68, -201),
["Onett"] = CFrame.new(-8.4, 234, -517.9),
["Gumdrop Dispenser"] = CFrame.new(63, 20.7, 38.7),
["Treat Dispenser"] = CFrame.new(193.9, 68, -123),
["Treat Shop"] = CFrame.new(-228.2, 5, 89.4),
["Star Hut"] = CFrame.new(135.9, 64.6, 322.1),
["Wealth Clock"] = CFrame.new(310.5, 47.6, 190),
["Ant Challenge"] = CFrame.new(90.6, 32.6, 501)
}

ReturnToHive.MouseButton1Down:connect(function()
	local player = game:GetService("Players").LocalPlayer
	player.Character:MoveTo(player.SpawnPos.Value.p)
	WayPointsFrame.Visible = false
	notify'Teleported to Hive'
end)

BlackBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Black Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Black Bear'
end)

BrownBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Brown Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Brown Bear'
end)

PandaBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Panda Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Panda Bear'
end)

PolarBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Polar Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Polar Bear'
end)

ScienceBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Science Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Science Bear'
end)

TravelingBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Traveling Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Traveling Bear'
end)

MotherBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Mother Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Mother Bear'
end)

TunnelBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Tunnel Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Tunnel Bear'
end)

SunBear.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Sun Bear"]
	WayPointsFrame.Visible = false
	notify'Teleported to Sun Bear'
end)

RedBoost.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Redfield Boost"]
	WayPointsFrame.Visible = false
	notify'Teleported to RedField Booster'
end)

BlueBoost.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Bluefield Boost"]
	WayPointsFrame.Visible = false
	notify'Teleported to BlueField Booster'
end)

MountainBoost.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["MountainTop Boost"]
	WayPointsFrame.Visible = false
	notify'Teleported to MountainTop Boost'
end)

RedCannon.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Red Cannon (22)"]
	WayPointsFrame.Visible = false
	notify'Teleported to Red Cannon (22)'
end)

BlueCannon.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Blue Cannon (16)"]
	WayPointsFrame.Visible = false
	notify'Teleported to Blue Cannon (16)'
end)

YellowCannon.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Yellow Cannon (12)"]
	WayPointsFrame.Visible = false
	notify'Teleported to Yellow Cannon (12)'
end)

Slingshot.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Slingshot (8)"]
	WayPointsFrame.Visible = false
	notify'Teleported to Slingshot (8)'
end)

BeeShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Bee Shop"]
	WayPointsFrame.Visible = false
	notify'Teleported to Bee Shop'
end)

TPShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Tool Shop"]
	WayPointsFrame.Visible = false
	notify'Teleported to Basic Tool Shop'
end)

TPShop2.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Tool Shop 2"]
	WayPointsFrame.Visible = false
	notify'Teleported to Advanced Tool Shop'
end)

MountainTopShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["MountainTop Shop"]
	WayPointsFrame.Visible = false
	notify'Teleported to MountainTop Shop'
end)

TentShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Ticket Tent"]
	WayPointsFrame.Visible = false
	notify'Teleported to Ticket Tent Shop'
end)

RedClubhouse.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Red Clubhouse"]
	WayPointsFrame.Visible = false
	notify'Teleported to Red ClubHouse'
end)

BlueClubhouse.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Blue Clubhouse"]
	WayPointsFrame.Visible = false
	notify'Teleported to Blue ClubHouse'
end)

TicketShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Ticket Shop"]
	WayPointsFrame.Visible = false
	notify'Teleported to Ticket Dispenser'
end)

ClubHoney.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Club Honey"]
	WayPointsFrame.Visible = false
	notify'Teleported to Club Honey Dispenser'
end)

RoyalJellyShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["RoyalJelly Shop"]
	WayPointsFrame.Visible = false
	notify'Teleported to RoyalJelly Shop'
end)

TicketRoyalJelly.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Ticket RoyalJelly Shop"]
	WayPointsFrame.Visible = false
	notify'Teleported to Ticket Royal Jelly Shop'
end)

Honeystorm.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Honeystorm Dispensor"]
	WayPointsFrame.Visible = false
	notify'Teleported to Honeystorm'
end)

HoneyConvertor.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Instant Honey Convertor"]
	WayPointsFrame.Visible = false
	notify'Teleported to Instant Honey Convertor'
end)

TreatDispenser.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Treat Dispenser"]
	WayPointsFrame.Visible = false
	notify'Teleported to Treat Dispenser'
end)

SproutDispenser.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Sprout Dispenser"]
	WayPointsFrame.Visible = false
	notify'Teleported to Sprout Dispenser'
end)

KingbeetlesLair.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["King Beetles Lair"]
	WayPointsFrame.Visible = false
	notify'Teleported to King Beetles Lair'
end)


MushRoomField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Mushroom Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Mushroom Field'
end)

StrawBerryField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["StrawBerry Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to StrawBerry Field'
end)

CloverField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Clover Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Clover Field'
end)

SpiderField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Spider Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Spider Field'
end)

BlueField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Blue Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Blue Field'
end)

SunflowerField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Sunflower Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Sunflower Field'
end)

DandelionField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Dandelion Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Dandelion Field'
end)

BamBooField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["BamBoo Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to BamBoo Field'
end)

RoseField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Rose Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Rose Field'
end)

CactusField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Cactus Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to BamBoo Field'
end)

PumpkinField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Pumpkin Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to BamBoo Field'
end)

PineTreeField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["PineTree Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to BamBoo Field'
end)

MountainTopField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["MountainTop Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Mountain Top Field'
end)

PineappleField.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Pineapple Field"]
	WayPointsFrame.Visible = false
	notify'Teleported to Pineapple Field'
end)

GumdropDispenser.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Gumdrop Dispenser"]
	WayPointsFrame.Visible = false
	notify'Teleported to Gumdrop Dispenser'
end)

TreatShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Treat Shop"]
	WayPointsFrame.Visible = false
	notify'Teleported to Treat Shop'
end)

WealthClock.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Wealth Clock"]
	WayPointsFrame.Visible = false
	notify'Teleported to Wealth Clock'
end)

StarHut.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Star Hut"]
	WayPointsFrame.Visible = false
	notify'Teleported to Star Hut'
end)

Onett.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Onett"]
	WayPointsFrame.Visible = false
	notify'Teleported to Onett'
end)

AntChallenge.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Ant Challenge"]
	WayPointsFrame.Visible = false
	notify'Teleported to Ant Challenge'
end)

BlueberryDispenser.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Blueberry Dispenser"]
	WayPointsFrame.Visible = false
	notify'Teleported to Blueberry Dispenser'
end)

StrawberryDispenser.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Strawberry Dispenser"]
	WayPointsFrame.Visible = false
	notify'Teleported to Strawberry Dispenser'
end)

-- Show Location --

spawn (function()
	while true do
		if not pausehumcheck then
			local player = game:GetService'Players'.LocalPlayer
			local character = player.Character or player.CharacterAdded:wait()
			local head = character:WaitForChild'Head'
			local hum = player.Character.HumanoidRootPart
			LocationX = round(hum.Position.x, 1)
			LocationY = round(hum.Position.y, 1)
			LocationZ = round(hum.Position.z, 1)
			ShowLocation.Text = "Coords: "..LocationX..", "..LocationY..", "..LocationZ
		end
		wait(0.5)
	end
end)

SetLocation.MouseButton1Down:connect(function()
	setlocationx = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, 0)
	setlocationy = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, 0)
	setlocationz = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 0)
	print("Set Custom Location: "..setlocationx..", "..setlocationy..", "..setlocationz)
    SetLocation.Text = "Set: " ..setlocationx..","..setlocationy..","..setlocationz
	CustomLocationSet = true
end)

--- TP to custom location ---

TPLocation.MouseButton1Down:connect(function()
	if CustomLocationSet and not pausehumcheck then
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
spawn (function()
	while true do
		Player1.Text = ""
		Player2.Text = ""
		Player3.Text = ""
		Player4.Text = ""
		Player5.Text = ""
		for i, v in pairs(game.Players:GetChildren()) do
			buttons[i].Text = v.Name
			buttons[i].Visible = true
		end
		wait(0.5)
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
NoClip.MouseButton1Down:connect(function()
	noclip = not noclip
	if noclip then
		NoClip.Text = "NoClip Mode: ON"
		NoClip.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		NoClip.Text = "NoClip Mode: OFF"
		NoClip.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)
game:GetService('RunService').Stepped:connect(function()
	if noclip then
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
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

--- Builder Tool ---

BTool.MouseButton1Down:connect(function()
	local tool1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool4 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	local tool5 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	tool1.BinType = "Clone"
	tool2.BinType = "GameTool"
	tool3.BinType = "Hammer"
	tool4.BinType = "Script"
	tool5.BinType = "Grab"
notify'BTools added to your Backpack'
end)

--- Pollen Farm ---

StartFarm.MouseButton1Click:connect(function()
	if PollenFarmActive ~= true then
		PollenFarmActive = true
		Field1AFActive = false
		Field2AFActive = false
		Field3AFActive = false
		Field4AFActive = false
		Field5AFActive = false
		Field6AFActive = false
		Field7AFActive = false
		Field8AFActive = false
		Field9AFActive = false
		Field10AFActive = false
		Field11AFActive = false
		Field12AFActive = false
		Field13AFActive = false
		Field14AFActive = false
		resethive = false
		switchlocationmsg = false
		StartFarm.Text = "Pollen Farm: ON"
		PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
		notify'Pollen Farming Started'
	else
		PollenFarmActive = false
		Field1AFActive = false
		Field2AFActive = false
		Field3AFActive = false
		Field4AFActive = false
		Field5AFActive = false
		Field6AFActive = false
		Field7AFActive = false
		Field8AFActive = false
		Field9AFActive = false
		Field10AFActive = false
		Field11AFActive = false
		Field12AFActive = false
		Field13AFActive = false
		Field14AFActive = false
		farmzoneswitched = false
		resethive = false
		print("Pollen Farming Ended")
		notify'Pollen Farming Ended'
		StartFarm.Text = "Pollen Farm: OFF"
		PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		local player = game:GetService("Players").LocalPlayer
		currp=nil
		player.Character:MoveTo(player.SpawnPos.Value.p)
	end
end)

Field1AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field1AFActive = true
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 1 Started'
	WayPointsFrame.Visible = false
end)

Field2AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field2AFActive = true
	Field1AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 2 Started'
	WayPointsFrame.Visible = false
end)

Field3AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field3AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 3 Started'
	WayPointsFrame.Visible = false
end)

Field4AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field4AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 4 Started'
	WayPointsFrame.Visible = false
end)

Field5AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field5AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 5 Started'
	WayPointsFrame.Visible = false
end)

Field6AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field6AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 6 Started'
	WayPointsFrame.Visible = false
end)

Field7AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field7AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 7 Started'
	WayPointsFrame.Visible = false
end)

Field8AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field8AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 8 Started'
	WayPointsFrame.Visible = false
end)

Field9AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field9AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 9 Started'
	WayPointsFrame.Visible = false
end)

Field10AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field10AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 10 Started'
	WayPointsFrame.Visible = false
end)

Field11AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field11AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 11 Started'
	WayPointsFrame.Visible = false
end)

Field12AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field12AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field13AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 12 Started'
	WayPointsFrame.Visible = false
end)

Field13AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field13AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field14AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 13 Started'
	WayPointsFrame.Visible = false
end)

Field14AF.MouseButton1Down:connect(function()
	PollenFarmActive = true
	Field14AFActive = true
	Field1AFActive = false
	Field2AFActive = false
	Field3AFActive = false
	Field4AFActive = false
	Field5AFActive = false
	Field6AFActive = false
	Field7AFActive = false
	Field8AFActive = false
	Field9AFActive = false
	Field10AFActive = false
	Field11AFActive = false
	Field12AFActive = false
	Field13AFActive = false
	resethive = false
	switchlocationmsg = false
	StartFarm.Text = "Pollen Farm: ON"
	PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
	notify'Pollen Farming Zone 14 Started'
	WayPointsFrame.Visible = false
end)

-- Avoid Vicious Bee --

AvoidViciousBee.MouseButton1Click:connect(function()
	if AvoidViciousActive ~= true then
		AvoidViciousActive = true
		AvoidViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
		AvoidViciousBee.Text = "Avoid Vicious Bee: ON"
	else
		AvoidViciousActive = false
		AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AvoidViciousBee.Text = "Avoid Vicious Bee: OFF"
	end
end)

-- Hunt Vicious Bee --

HuntViciousBee.MouseButton1Click:connect(function()
	if HuntViciousActive ~= true then
		HuntViciousActive = true
		HuntViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
		HuntViciousBee.Text = "Hunt Vicious Bee: ON"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		HuntViciousActive = false
		HuntViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		HuntViciousBee.Text = "Hunt Vicious Bee: OFF"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

spawn(function()
	while true do
		wait(1)
		if HuntViciousActive and viciousbeedetected then
			print("Vicous Bee has Appeared. Hunting Time!!")
			notify'Vicous Bee has Appeared. Hunting Time!!'
			if AvoidViciousActive then
				AvoidTempOFF = true
				AvoidViciousActive = false
				AvoidViciousBee.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				AvoidViciousBee.Text = "Avoid ViciousBee: OFF"
			end
			if PollenFarmActive then
				FarmTempOFF = true
				PollenFarmActive = false
				StartFarm.Text = "Pollen Farm: OFF"
				PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			end
			print("God Mode activated. After defeating the bee you will respawn to exit God Mode.")

			God.BackgroundColor3 = Color3.new(0.5, 0, 0)
			God.Text = "God Mode: ON"
			GodModeActive = true
			game.Players.LocalPlayer.Character.Humanoid.Name = 1
			local l = game.Players.LocalPlayer.Character["1"]:Clone()
			l.Parent = game.Players.LocalPlayer.Character
			l.Name = "Humanoid"
			wait(0.1)
			game.Players.LocalPlayer.Character["1"]:Destroy()
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
			game.Players.LocalPlayer.Character.Animate.Disabled = true
			wait(0.1)
			game.Players.LocalPlayer.Character.Animate.Disabled = false
			game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
			godmodeactivated = true
			wait(1)
			
			local hum = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in pairs(workspace.Particles:GetChildren()) do
				for x in string.gmatch(v.Name, "Vicious") do
					while HuntViciousActive and viciousbeedetected do
						if v.Name == "Vicious" then
							hum.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z)
							wait(1)
						end
					end
				end
			end
			wait(1)
			location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			pausehumcheck = true
			wait()
			local prt = Instance.new("Model", workspace);
			Instance.new("Part", prt).Name="Torso";
			Instance.new("Part", prt).Name="Head";
			Instance.new("Humanoid", prt).Name="Humanoid";
			game.Players.LocalPlayer.Character=prt
			God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
			God.Text = "God Mode: OFF"
			GodModeActive = false
			wait(6)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
			pausehumcheck = false
			if AvoidTempOFF then
				AvoidTempOFF = false
				AvoidViciousBee.BackgroundColor3 = Color3.new(0.5, 0, 0)
				AvoidViciousBee.Text = "Avoid ViciousBee: ON"
				AvoidViciousActive = true
			end
			if FarmTempOFF then
				FarmTempOFF = false
				PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.Text = "Pollen Farm: ON"
				PollenFarmActive = true
			end
		end
	end
end)

-- Farm Sprouts --

SproutFarmToggle.MouseButton1Click:connect(function()
	if SproutFarmActive ~= true then
		SproutFarmActive = true
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.5, 0, 0)
		SproutFarmToggle.Text = "Farm Sprout: ON"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		SproutFarmActive = false
		SproutFarmToggle.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		SproutFarmToggle.Text = "Farm Sprout: OFF"
		ExtrasScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

spawn(function()
	while true do
		startpos = nil
		wait(1)
		if SproutFarmActive and sproutdetected then
			player = game:GetService("Players").LocalPlayer
			local pollenLbl = player.Character:FindFirstChild("ProgressLabel",true)
			if not pollenLbl then
				print("Backpack not found")
			end
			local maxpollen = tonumber(pollenLbl.Text:match("%d+$"))
			print("A Sprout has Appeared. Farming Time!!")
			notify'A Sprout has Appeared. Farming Time!!'
			if PollenFarmActive then
				FarmTempOFF = true
				PollenFarmActive = false
				StartFarm.Text = "Pollen Farm: OFF"
				PollenFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				StartFarm.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				wait(1)
			end
			while SproutFarmActive and sproutdetected do
				if viciousbeenear and not godmodeactivated or tonumber(plrHealth) <= 30 and not godmodeactivated then
					print("God Mode activated.")
					God.BackgroundColor3 = Color3.new(0.5, 0, 0)
					God.Text = "God Mode: ON"
					GodModeActive = true
					game.Players.LocalPlayer.Character.Humanoid.Name = 1
					local l = game.Players.LocalPlayer.Character["1"]:Clone()
					l.Parent = game.Players.LocalPlayer.Character
					l.Name = "Humanoid"
					wait(0.1)
					game.Players.LocalPlayer.Character["1"]:Destroy()
					game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
					game.Players.LocalPlayer.Character.Animate.Disabled = true
					wait(0.1)
					game.Players.LocalPlayer.Character.Animate.Disabled = false
					game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
					godmodeactivated = true
					wait(1)
				end
				local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
				for i,v in pairs(workspace.Particles:GetChildren()) do
					for x in string.gmatch(v.Name, "Sprout") do
						if v.Name == "Sprout" then
							if SproutFarmActive and sproutdetected then
								if not sproutsafety then
									local setstartpos = root.CFrame
									for a = 1, 120 do
										root.CFrame = v.CFrame * CFrame.new(0, 30, 0)
										wait(0.1)
									end
									wait(1)
									root.CFrame = v.CFrame * CFrame.new(3, 10, 3)
									wait(1)
									local startpos = root.CFrame
									AutoDigActive = true
									sproutsafety = true
									sproutstarted = true
								end
							end
						end
					end
				end
				workspace.Collectibles.ChildAdded:Connect(function(part)
					if SproutFarmActive and sproutstarted then
						local rootpos = root.CFrame
						if tostring(part) == tostring(game.Players.LocalPlayer.Name) or tostring(part) == "C" then
							if (part.Position-root.Position).magnitude <= 80 then
								root.CFrame = CFrame.new(part.Position.x, root.Position.y, part.Position.z)
								wait(0.07)
								root.CFrame = rootpos
								wait(0.05)
							end
						end
					end
				end)
				if tonumber(player.leaderstats.Pollen.Value+1) > tonumber(maxpollen) then
					print("Bag Full: " ..tostring(player.leaderstats.Pollen.Value))
					SproutFarmActive = false
					wait(0.1)
					game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
					wait(1)
					game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
					repeat wait(0.5) until game:GetService("Players").LocalPlayer.leaderstats.Pollen.Value < 1
					wait(4)
					SproutFarmActive = true
				end
				wait(2)
				root.CFrame = startpos
			end
			print("Finished farming Sprout")
			wait(20)
			AutoDigActive = false
			sproutstarted = false
			if godmodeactivated then
				location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
				pausehumcheck = true
				wait()
				local prt = Instance.new("Model", workspace);
				Instance.new("Part", prt).Name="Torso";
				Instance.new("Part", prt).Name="Head";
				Instance.new("Humanoid", prt).Name="Humanoid";
				game.Players.LocalPlayer.Character=prt
				wait(6)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
				godmodeactivated = false
				pausehumcheck = false
				God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				God.Text = "God Mode: OFF"
				GodModeActive = false
			end
			if FarmTempOFF then
				FarmTempOFF = false
				PollenFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.BackgroundColor3 = Color3.new(0.5, 0, 0)
				StartFarm.Text = "Pollen Farm: ON"
				PollenFarmActive = true
			end
			sproutsafety = false
			root.CFrame = rootpos
		end
	end
end)

-- God Mode --

God.MouseButton1Click:connect(function()
	if GodModeActive ~= true then
		GodModeActive = true
		God.BackgroundColor3 = Color3.new(0.5, 0, 0)
		God.Text = "God Mode: ON"
		game.Players.LocalPlayer.Character.Humanoid.Name = 1
		local l = game.Players.LocalPlayer.Character["1"]:Clone()
		l.Parent = game.Players.LocalPlayer.Character
		l.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["1"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
	else
		GodModeActive = false
		God.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		God.Text = "God Mode: OFF"
		location = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		--pausehumcheck = true
		wait()
		local prt = Instance.new("Model", workspace);
		Instance.new("Part", prt).Name="Torso";
		Instance.new("Part", prt).Name="Head";
		Instance.new("Humanoid", prt).Name="Humanoid";
		game.Players.LocalPlayer.Character=prt
		wait(6)
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = location
		--pausehumcheck = false
	end
end)

-- Auto Dig --

AutoDig.MouseButton1Click:connect(function()
	if AutoDigActive ~= true then
		AutoDigActive = true
		AutoDig.BackgroundColor3 = Color3.new(0.5, 0, 0)
	else
		AutoDigActive = false
		notify'Auto Dig Stopped'
		AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
	end
end)

spawn(function()
	while true do
		wait(1)
		if AutoDigActive then
			local player = game:GetService("Players").LocalPlayer
			local pollenTool = player.Character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
			if pollenTool==nil or pollenTool:FindFirstChild("ClickEvent")==nil then
				AutoDigActive = false
				AutoDig.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
				print("Tool not found")
			else
				pollenTool.Parent = player.Character
				while AutoDigActive do
					wait(0.05)
					pollenTool.ClickEvent:FireServer(CFrame.new())
				end
			end
		end
	end
end)

--- ReJoin Server ---

ReJoinServer.MouseButton1Down:connect(function()
	local placeId = 1537690962
	game:GetService("TeleportService"):Teleport(placeId)
end)

-- Auto Token Gather --

mouse.KeyDown:connect(function(key)
	if key == TokenToggle.Text then
		if not tokenfarmactive then
			tokenfarmactive = true
			notify'Auto Token Gather Enabled'
		else
			tokenfarmactive = false
			notify'Auto Token Gather Disabled'
		end
	end
end)

spawn(function()
	while true do
		wait(0.5)
		if tokenfarmactive then
			workspace.Collectibles.ChildAdded:Connect(function(part)
				if tokenfarmactive then
					local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
					local rootpos = root.CFrame
					if tostring(part) == tostring(game.Players.LocalPlayer.Name) or tostring(part) == "C" then
						-- print("token position:  " ..tostring(part.Position)) --
						-- print("player position: " ..tostring(root.Position)) --
						-- print("Distance:        " ..tostring((part.Position - root.Position).magnitude)) --
						if (part.Position-root.Position).magnitude <= 50 then
							root.CFrame = CFrame.new(part.Position.x, part.Position.y, part.Position.z)
							wait(0.07)
							root.CFrame = rootpos
							wait(0.05)
						end
					end
				end
			end)
		end	
	end
end)

spawn(function()
	while true do
		wait(0.5)
		if tokenfarmactive2 then
			local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			while tokenfarmactive2 do
				local rootpos = root.CFrame
				for k,v in pairs(workspace.Collectibles:GetChildren()) do
					if v.Name == game.Players.LocalPlayer.Name and not v:FindFirstChild("farmed") or tonumber((v.Position - root.Position).magnitude) <= 50 and not v:FindFirstChild("farmed") then
						local intvalue = Instance.new("IntValue",v)
						intvalue.Name = "farmed"
						root.CFrame = v.CFrame
						wait(.07)
					end
				end
				wait(0.1)
				root.CFrame = rootpos
			end
		end	
	end
end)

-- Make Honey --

mouse.KeyDown:connect(function(key)
	if key == HoneyToggle.Text then
		notify'Making Honey'
		game:GetService("Players").LocalPlayer.Character:MoveTo(game:GetService("Players").LocalPlayer.SpawnPos.Value.p)
		wait(1.5)
		game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer("ToggleHoneyMaking")
	end
end)

-- Farm Moon Amulet Tokens

mouse.KeyDown:connect(function(key)
	if key == FireflyToggle.Text then
		notify'Moon Token Gather Enabled'
		count = 0
		if fireflydetected then
			local root = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
			for i,v in pairs(workspace.NPCBees:GetChildren()) do
				if v.Name == "Firefly" then
					wait(0.2)
					count = count + 1
					--print("Teleporting to Firefly " ..tostring(count))--
					root.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z)
				end
			end
			wait(1)

			for i,v in pairs(workspace.Collectibles:GetChildren()) do
				if v.Name == "C" then
					if (v.Position-root.Position).magnitude <= 50 then
						root.CFrame = CFrame.new(v.Position.x, v.Position.y, v.Position.z)
						wait(0.1)
					end
				end
			end
		end
	end
end)

InfBackpack.MouseButton1Down:connect(function()
	game.ReplicatedStorage.Events.ItemPackageEvent:InvokeServer("Purchase",{["Mute"] = true,["Type"] = "Debug-Bag",["Category"]  = "Backpack"})
end)