-- Farewell Infortality.
-- Version: 2.82
-- Instances:
-- Translated by belle#1111
local poop = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local LeftTab = Instance.new("Frame")
local Opened = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local Divider = Instance.new("Frame")
local VisualsTab = Instance.new("Frame")
local PlayerESP = Instance.new("TextLabel")
local Teammates = Instance.new("TextLabel")
local teammatesknop = Instance.new("TextButton")
local VisTab2 = Instance.new("Frame")
local PlayerESP_2 = Instance.new("TextLabel")
local VisTab3 = Instance.new("Frame")
local PlayerESP_3 = Instance.new("TextLabel")
local tptext = Instance.new("TextLabel")
local enabletp = Instance.new("TextButton")
local nosmoke = Instance.new("TextButton")
local nosmoketext = Instance.new("TextLabel")
local noflashtext = Instance.new("TextLabel")
local noflash = Instance.new("TextButton")
local distanceknop = Instance.new("TextButton")
local Teammates_2 = Instance.new("TextLabel")
local boxknop = Instance.new("TextButton")
local Name = Instance.new("TextLabel")
local nameknop = Instance.new("TextButton")
local Chams = Instance.new("TextLabel")
local chamsknop = Instance.new("TextButton")
local WeaponText = Instance.new("TextLabel")
local WeaponTextknop = Instance.new("TextButton")
local distancetext = Instance.new("TextLabel")
local TopBar = Instance.new("Frame")
local MiscCnop = Instance.new("ImageButton")
local RageCnop = Instance.new("ImageButton")
local LegitCnop = Instance.new("ImageButton")
local VisualsCnop = Instance.new("ImageButton")
local RageTab = Instance.new("Frame")
local PlayerESP_4 = Instance.new("TextLabel")
local Sehkie = Instance.new("TextLabel")
local enablerage = Instance.new("TextButton")
local RageTab2 = Instance.new("Frame")
local Other = Instance.new("TextLabel")
local resolvertext = Instance.new("TextLabel")
local enableresolver = Instance.new("TextButton")
local antiaimtex = Instance.new("TextLabel")
local enableaa = Instance.new("TextButton")
local silentaim = Instance.new("TextButton")
local Sehkie_2 = Instance.new("TextLabel")
local rapidfire = Instance.new("TextButton")
local Sehkie_3 = Instance.new("TextLabel")
local forceheadshot = Instance.new("TextButton")
local Sehkie_4 = Instance.new("TextLabel")
local bullettracer = Instance.new("TextButton")
local tracertext = Instance.new("TextLabel")
local MiscTab = Instance.new("Frame")
local Misc = Instance.new("TextLabel")
local Sehkie_5 = Instance.new("TextLabel")
local miscenabled = Instance.new("TextButton")
local MiscTab2 = Instance.new("Frame")
local Other_2 = Instance.new("TextLabel")
local nocrouchj = Instance.new("TextButton")
local crouchtekst = Instance.new("TextLabel")
local bhoptoggle = Instance.new("TextButton")
local bhoptext = Instance.new("TextLabel")
local btenable = Instance.new("TextLabel")
local backtrackenabled = Instance.new("TextButton")
local dtext = Instance.new("TextLabel")
local sec = Instance.new("TextLabel")
local bhoptext_2 = Instance.new("TextLabel")
local infmoney = Instance.new("TextButton")
local duration = Instance.new("TextBox")
local LegitTab = Instance.new("Frame")
local aimbot = Instance.new("TextLabel")
local Sehkie_6 = Instance.new("TextLabel")
local aimenabled = Instance.new("TextButton")
local LegitTab2 = Instance.new("Frame")
local Other_3 = Instance.new("TextLabel")
local fov = Instance.new("TextBox")
local fovtext = Instance.new("TextLabel")
local smoothness = Instance.new("TextBox")
local smoothtext = Instance.new("TextLabel")
local cursor = Instance.new("Frame")
--Properties:
poop.Name = "poop"
poop.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
poop.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = poop
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Main.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Main.BorderSizePixel = 4
Main.Position = UDim2.new(0.439048886, -341, 0.528578699, -337)
Main.Size = UDim2.new(0, 685, 0, 676)

LeftTab.Name = "LeftTab"
LeftTab.Parent = Main
LeftTab.Active = true
LeftTab.BackgroundColor3 = Color3.new(0.0509804, 0.0509804, 0.0509804)
LeftTab.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
LeftTab.BorderSizePixel = 0
LeftTab.Position = UDim2.new(-0.000458300114, 0, 0.0127138197, 0)
LeftTab.Size = UDim2.new(0, 120, 0, 667)

Opened.Name = "Opened"
Opened.Parent = LeftTab
Opened.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Opened.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Opened.BorderSizePixel = 0
Opened.Position = UDim2.new(0.00261611934, 0, 0.0562112741, -10)
Opened.Size = UDim2.new(0, 121, 0, 100)

Frame.Parent = Opened
Frame.BackgroundColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Frame.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, -1, 0, 1)

Frame_2.Parent = Opened
Frame_2.BackgroundColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Frame_2.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 1, -1)
Frame_2.Size = UDim2.new(1, -1, 0, 1)

Divider.Name = "Divider"
Divider.Parent = Main
Divider.Active = true
Divider.BackgroundColor3 = Color3.new(1, 1, 1)
Divider.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Divider.Position = UDim2.new(0.174655706, 0, 0.0122207552, 0)
Divider.Size = UDim2.new(0, 0, 0, 667)
Divider.ZIndex = 0

VisualsTab.Name = "VisualsTab"
VisualsTab.Parent = Main
VisualsTab.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
VisualsTab.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
VisualsTab.BorderSizePixel = 2
VisualsTab.Position = UDim2.new(0.218172207, 0, 0.0830337778, 0)
VisualsTab.Size = UDim2.new(0, 233, 0, 446)
VisualsTab.Visible = false

PlayerESP.Name = "PlayerESP"
PlayerESP.Parent = VisualsTab
PlayerESP.Active = true
PlayerESP.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
PlayerESP.BorderSizePixel = 0
PlayerESP.Position = UDim2.new(0.052488137, 0, -0.0139908725, 0)
PlayerESP.Size = UDim2.new(0, 69, 0, 15)
PlayerESP.Font = Enum.Font.SourceSansBold
PlayerESP.Text = "Player ESP"
PlayerESP.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
PlayerESP.TextSize = 14

Teammates.Name = "Teammates"
Teammates.Parent = VisualsTab
Teammates.Active = true
Teammates.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Teammates.BorderSizePixel = 0
Teammates.Position = UDim2.new(0.11643412, 0, 0.053895615, 0)
Teammates.Size = UDim2.new(0, 73, 0, 13)
Teammates.Font = Enum.Font.SourceSansSemibold
Teammates.Text = "Teammates"
Teammates.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Teammates.TextSize = 14

teammatesknop.Name = "teammatesknop"
teammatesknop.Parent = VisualsTab
teammatesknop.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
teammatesknop.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
teammatesknop.Position = UDim2.new(0.0606400967, 0, 0.0594982654, 0)
teammatesknop.Size = UDim2.new(0, 12, 0, 12)
teammatesknop.Font = Enum.Font.SourceSans
teammatesknop.Text = ""
teammatesknop.TextColor3 = Color3.new(0, 0, 0)
teammatesknop.TextSize = 14

VisTab2.Name = "VisTab2"
VisTab2.Parent = VisualsTab
VisTab2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
VisTab2.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
VisTab2.BorderSizePixel = 2
VisTab2.Position = UDim2.new(1.11585104, 0, 0, 0)
VisTab2.Size = UDim2.new(0, 233, 0, 289)

PlayerESP_2.Name = "PlayerESP"
PlayerESP_2.Parent = VisTab2
PlayerESP_2.Active = true
PlayerESP_2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
PlayerESP_2.BorderSizePixel = 0
PlayerESP_2.Position = UDim2.new(0.0439044461, 0, -0.0243715066, 0)
PlayerESP_2.Size = UDim2.new(0, 67, 0, 15)
PlayerESP_2.Font = Enum.Font.SourceSansBold
PlayerESP_2.Text = "OtherESP"
PlayerESP_2.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
PlayerESP_2.TextSize = 14

VisTab3.Name = "VisTab3"
VisTab3.Parent = VisualsTab
VisTab3.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
VisTab3.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
VisTab3.BorderSizePixel = 2
VisTab3.Position = UDim2.new(1.11585104, 0, 0.708520174, 0)
VisTab3.Size = UDim2.new(0, 233, 0, 252)

PlayerESP_3.Name = "Player ESP"
PlayerESP_3.Parent = VisTab3
PlayerESP_3.Active = true
PlayerESP_3.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
PlayerESP_3.BorderSizePixel = 0
PlayerESP_3.Position = UDim2.new(0.0439044461, 0, -0.024371434, 0)
PlayerESP_3.Size = UDim2.new(0, 45, 0, 15)
PlayerESP_3.Font = Enum.Font.SourceSansBold
PlayerESP_3.Text = "Name"
PlayerESP_3.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
PlayerESP_3.TextSize = 14

tptext.Name = "tptext"
tptext.Parent = VisTab3
tptext.Active = true
tptext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
tptext.BorderSizePixel = 0
tptext.Position = UDim2.new(0.18599835, 0, 0.0797282755, 0)
tptext.Size = UDim2.new(0, 55, 0, 13)
tptext.Font = Enum.Font.SourceSansSemibold
tptext.Text = "Third Person"
tptext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
tptext.TextSize = 14

enabletp.Name = "enabletp"
enabletp.Parent = VisTab3
enabletp.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
enabletp.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
enabletp.Position = UDim2.new(0.0704120845, 0, 0.0808037892, 0)
enabletp.Size = UDim2.new(0, 12, 0, 12)
enabletp.Font = Enum.Font.SourceSans
enabletp.Text = ""
enabletp.TextColor3 = Color3.new(0, 0, 0)
enabletp.TextSize = 14

nosmoke.Name = "nosmoke"
nosmoke.Parent = VisTab3
nosmoke.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
nosmoke.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
nosmoke.Position = UDim2.new(0.0704120845, 0, 0.172073632, 0)
nosmoke.Size = UDim2.new(0, 12, 0, 12)
nosmoke.Font = Enum.Font.SourceSans
nosmoke.Text = ""
nosmoke.TextColor3 = Color3.new(0, 0, 0)
nosmoke.TextSize = 14

nosmoketext.Name = "nosmoketext"
nosmoketext.Parent = VisTab3
nosmoketext.Active = true
nosmoketext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
nosmoketext.BorderSizePixel = 0
nosmoketext.Position = UDim2.new(0.185998484, 0, 0.167029843, 0)
nosmoketext.Size = UDim2.new(0, 73, 0, 13)
nosmoketext.Font = Enum.Font.SourceSansSemibold
nosmoketext.Text = "No Smoke"
nosmoketext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
nosmoketext.TextSize = 14

noflashtext.Name = "noflashtext"
noflashtext.Parent = VisTab3
noflashtext.Active = true
noflashtext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
noflashtext.BorderSizePixel = 0
noflashtext.Position = UDim2.new(0.155955568, 0, 0.25433144, 0)
noflashtext.Size = UDim2.new(0, 74, 0, 13)
noflashtext.Font = Enum.Font.SourceSansSemibold
noflashtext.Text = "No Flash"
noflashtext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
noflashtext.TextSize = 14

noflash.Name = "noflash"
noflash.Parent = VisTab3
noflash.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
noflash.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
noflash.Position = UDim2.new(0.0704120845, 0, 0.259375215, 0)
noflash.Size = UDim2.new(0, 12, 0, 12)
noflash.Font = Enum.Font.SourceSans
noflash.Text = ""
noflash.TextColor3 = Color3.new(0, 0, 0)
noflash.TextSize = 14

distanceknop.Name = "distanceknop"
distanceknop.Parent = VisualsTab
distanceknop.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
distanceknop.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
distanceknop.Position = UDim2.new(0.0606401302, 0, 0.10089685, 82)
distanceknop.Size = UDim2.new(0, 12, 0, 12)
distanceknop.Font = Enum.Font.SourceSans
distanceknop.Text = ""
distanceknop.TextColor3 = Color3.new(0, 0, 0)
distanceknop.TextSize = 14

Teammates_2.Name = "Teammates"
Teammates_2.Parent = VisualsTab
Teammates_2.Active = true
Teammates_2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Teammates_2.BorderSizePixel = 0
Teammates_2.Position = UDim2.new(0.11643412, 0, 0.0561377667, 0)
Teammates_2.Size = UDim2.new(0, 73, 0, 13)
Teammates_2.Font = Enum.Font.SourceSansSemibold
Teammates_2.Text = "Teammates"
Teammates_2.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Teammates_2.TextSize = 14

boxknop.Name = "boxknop"
boxknop.Parent = VisualsTab
boxknop.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
boxknop.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
boxknop.Position = UDim2.new(0.0606401265, 0, 0.120036289, 0)
boxknop.Size = UDim2.new(0, 13, 0, 13)
boxknop.Font = Enum.Font.SourceSans
boxknop.Text = ""
boxknop.TextColor3 = Color3.new(0, 0, 0)
boxknop.TextSize = 14

Name.Name = "Name"
Name.Parent = VisualsTab
Name.Active = true
Name.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.133601487, 0, 0.172729611, 0)
Name.Selectable = true
Name.SelectionImageObject = Chams
Name.Size = UDim2.new(0, 44, 0, 13)
Name.Font = Enum.Font.SourceSansSemibold
Name.Text = "Name"
Name.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Name.TextSize = 14

nameknop.Name = "nameknop"
nameknop.Parent = VisualsTab
nameknop.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
nameknop.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
nameknop.Position = UDim2.new(0.0606401302, 0, -0.00672645774, 82)
nameknop.Size = UDim2.new(0, 12, 0, 12)
nameknop.Font = Enum.Font.SourceSans
nameknop.Text = ""
nameknop.TextColor3 = Color3.new(0, 0, 0)
nameknop.TextSize = 14

Chams.Name = "Chams"
Chams.Parent = VisualsTab
Chams.Active = true
Chams.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Chams.BorderSizePixel = 0
Chams.Position = UDim2.new(0.11214228, 0, 0.118918039, 0)
Chams.Size = UDim2.new(0, 55, 0, 13)
Chams.Font = Enum.Font.SourceSansSemibold
Chams.Text = "Chams"
Chams.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Chams.TextSize = 14

chamsknop.Name = "chamsknop"
chamsknop.Parent = VisualsTab
chamsknop.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
chamsknop.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
chamsknop.Position = UDim2.new(0.0606401302, 0, 0.120036311, 0)
chamsknop.Size = UDim2.new(0, 12, 0, 12)
chamsknop.Font = Enum.Font.SourceSans
chamsknop.Text = ""
chamsknop.TextColor3 = Color3.new(0, 0, 0)
chamsknop.TextSize = 14

WeaponText.Name = "WeaponText"
WeaponText.Parent = VisualsTab
WeaponText.Active = true
WeaponText.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
WeaponText.BorderSizePixel = 0
WeaponText.Position = UDim2.new(0.146477044, 0, 0.231025651, 0)
WeaponText.Size = UDim2.new(0, 66, 0, 13)
WeaponText.Font = Enum.Font.SourceSansSemibold
WeaponText.Text = "Weapon Text"
WeaponText.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
WeaponText.TextSize = 14

WeaponTextknop.Name = "WeaponTextknop"
WeaponTextknop.Parent = VisualsTab
WeaponTextknop.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
WeaponTextknop.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
WeaponTextknop.Position = UDim2.new(0.0606401302, 0, 0.0493273586, 82)
WeaponTextknop.Size = UDim2.new(0, 12, 0, 12)
WeaponTextknop.Font = Enum.Font.SourceSans
WeaponTextknop.Text = ""
WeaponTextknop.TextColor3 = Color3.new(0, 0, 0)
WeaponTextknop.TextSize = 14

distancetext.Name = "distancetext"
distancetext.Parent = VisualsTab
distancetext.Active = true
distancetext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
distancetext.BorderSizePixel = 0
distancetext.Position = UDim2.new(0.146477044, 0, 0.282595217, 0)
distancetext.Size = UDim2.new(0, 47, 0, 13)
distancetext.Font = Enum.Font.SourceSansSemibold
distancetext.Text = "Distance Text"
distancetext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
distancetext.TextSize = 14

TopBar.Name = "TopBar"
TopBar.Parent = Main
TopBar.BackgroundColor3 = Color3.new(0.415686, 0.415686, 1)
TopBar.BorderColor3 = Color3.new(0.666667, 0, 0)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(-4.01851903e-05, 0, -4.38351599e-05, 0)
TopBar.Size = UDim2.new(0, 685, 0, 7)

MiscCnop.Name = "MiscCnop"
MiscCnop.Parent = Main
MiscCnop.BackgroundColor3 = Color3.new(1, 1, 1)
MiscCnop.BackgroundTransparency = 1
MiscCnop.BorderSizePixel = 0
MiscCnop.Position = UDim2.new(0.0262773726, 0, 0.522382915, 0)
MiscCnop.Size = UDim2.new(0, 69, 0, 69)
MiscCnop.AutoButtonColor = false
MiscCnop.Image = "rbxassetid://3797614110"
MiscCnop.ImageColor3 = Color3.new(0.419608, 0.419608, 0.419608)

RageCnop.Name = "RageCnop"
RageCnop.Parent = Main
RageCnop.BackgroundColor3 = Color3.new(1, 1, 1)
RageCnop.BackgroundTransparency = 1
RageCnop.BorderSizePixel = 0
RageCnop.Position = UDim2.new(0.0364963487, 0, 0.083033815, 0)
RageCnop.Size = UDim2.new(0, 66, 0, 66)
RageCnop.AutoButtonColor = false
RageCnop.Image = "rbxassetid://3797238587"
RageCnop.ImageColor3 = Color3.new(0.419608, 0.419608, 0.419608)

LegitCnop.Name = "LegitCnop"
LegitCnop.Parent = Main
LegitCnop.BackgroundColor3 = Color3.new(1, 1, 1)
LegitCnop.BackgroundTransparency = 1
LegitCnop.BorderSizePixel = 0
LegitCnop.Position = UDim2.new(0.0248175189, 0, 0.235681474, 0)
LegitCnop.Size = UDim2.new(0, 59, 0, 59)
LegitCnop.AutoButtonColor = false
LegitCnop.Image = "rbxassetid://3797708309"
LegitCnop.ImageColor3 = Color3.new(0.329412, 0.329412, 0.329412)

VisualsCnop.Name = "VisualsCnop"
VisualsCnop.Parent = Main
VisualsCnop.BackgroundColor3 = Color3.new(1, 1, 1)
VisualsCnop.BackgroundTransparency = 1
VisualsCnop.BorderSizePixel = 0
VisualsCnop.Position = UDim2.new(0.0218978096, 0, 0.364379704, 0)
VisualsCnop.Size = UDim2.new(0, 72, 0, 72)
VisualsCnop.AutoButtonColor = false
VisualsCnop.Image = "rbxassetid://3797979749"
VisualsCnop.ImageColor3 = Color3.new(0.45098, 0.45098, 0.45098)

RageTab.Name = "RageTab"
RageTab.Parent = Main
RageTab.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
RageTab.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
RageTab.BorderSizePixel = 2
RageTab.Position = UDim2.new(0.218172207, 0, 0.0830337778, 0)
RageTab.Size = UDim2.new(0, 233, 0, 446)
RageTab.Visible = false

PlayerESP_4.Name = "Player ESP"
PlayerESP_4.Parent = RageTab
PlayerESP_4.Active = true
PlayerESP_4.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
PlayerESP_4.BorderSizePixel = 0
PlayerESP_4.Position = UDim2.new(0.0524881408, 0, -0.0139908716, 0)
PlayerESP_4.Size = UDim2.new(0, 50, 0, 15)
PlayerESP_4.Font = Enum.Font.SourceSansBold
PlayerESP_4.Text = "AimBot"
PlayerESP_4.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
PlayerESP_4.TextSize = 14

Sehkie.Name = "Sehkie"
Sehkie.Parent = RageTab
Sehkie.Active = true
Sehkie.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Sehkie.BorderSizePixel = 0
Sehkie.Position = UDim2.new(0.11643412, 0, 0.053895615, 0)
Sehkie.Size = UDim2.new(0, 55, 0, 13)
Sehkie.Font = Enum.Font.SourceSansSemibold
Sehkie.Text = "Activated"
Sehkie.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Sehkie.TextSize = 14

enablerage.Name = "enablerage"
enablerage.Parent = RageTab
enablerage.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
enablerage.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
enablerage.Position = UDim2.new(0.0606401265, 0, 0.0550138652, 0)
enablerage.Size = UDim2.new(0, 13, 0, 13)
enablerage.Font = Enum.Font.SourceSans
enablerage.Text = ""
enablerage.TextColor3 = Color3.new(0, 0, 0)
enablerage.TextSize = 14

RageTab2.Name = "RageTab2"
RageTab2.Parent = RageTab
RageTab2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
RageTab2.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
RageTab2.BorderSizePixel = 2
RageTab2.Position = UDim2.new(1.11585104, 0, 0, 0)
RageTab2.Size = UDim2.new(0, 233, 0, 289)

Other.Name = "Other"
Other.Parent = RageTab2
Other.Active = true
Other.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Other.BorderSizePixel = 0
Other.Position = UDim2.new(0.0439044461, 0, -0.0243715066, 0)
Other.Size = UDim2.new(0, 42, 0, 15)
Other.Font = Enum.Font.SourceSansBold
Other.Text = "Other"
Other.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Other.TextSize = 14

resolvertext.Name = "resolvertext"
resolvertext.Parent = RageTab2
resolvertext.Active = true
resolvertext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
resolvertext.BorderSizePixel = 0
resolvertext.Position = UDim2.new(0.109430157, 0, 0.0827254504, 0)
resolvertext.Size = UDim2.new(0, 55, 0, 13)
resolvertext.Font = Enum.Font.SourceSansSemibold
resolvertext.Text = "Resolver"
resolvertext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
resolvertext.TextSize = 14

enableresolver.Name = "enableresolver"
enableresolver.Parent = RageTab2
enableresolver.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
enableresolver.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
enableresolver.Position = UDim2.new(0.0403691679, 0, 0.0839949399, 0)
enableresolver.Size = UDim2.new(0, 12, 0, 12)
enableresolver.Font = Enum.Font.SourceSans
enableresolver.Text = ""
enableresolver.TextColor3 = Color3.new(0, 0, 0)
enableresolver.TextSize = 14

antiaimtex.Name = "antiaimtex"
antiaimtex.Parent = RageTab2
antiaimtex.Active = true
antiaimtex.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
antiaimtex.BorderSizePixel = 0
antiaimtex.Position = UDim2.new(0.109430276, 0, 0.166563988, 0)
antiaimtex.Size = UDim2.new(0, 54, 0, 13)
antiaimtex.Font = Enum.Font.SourceSansSemibold
antiaimtex.Text = "AntiAim"
antiaimtex.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
antiaimtex.TextSize = 14

enableaa.Name = "enableaa"
enableaa.Parent = RageTab2
enableaa.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
enableaa.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
enableaa.Position = UDim2.new(0.0403691679, 0, 0.167639479, 0)
enableaa.Size = UDim2.new(0, 12, 0, 12)
enableaa.Font = Enum.Font.SourceSans
enableaa.Text = ""
enableaa.TextColor3 = Color3.new(0, 0, 0)
enableaa.TextSize = 14

silentaim.Name = "silentaim"
silentaim.Parent = RageTab
silentaim.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
silentaim.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
silentaim.Position = UDim2.new(0.0606401265, 0, 0.108825527, 0)
silentaim.Size = UDim2.new(0, 13, 0, 13)
silentaim.Font = Enum.Font.SourceSans
silentaim.Text = ""
silentaim.TextColor3 = Color3.new(0, 0, 0)
silentaim.TextSize = 14

Sehkie_2.Name = "Sehkie"
Sehkie_2.Parent = RageTab
Sehkie_2.Active = true
Sehkie_2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Sehkie_2.BorderSizePixel = 0
Sehkie_2.Position = UDim2.new(0.116434142, 0, 0.107707277, 0)
Sehkie_2.Size = UDim2.new(0, 62, 0, 13)
Sehkie_2.Font = Enum.Font.SourceSansSemibold
Sehkie_2.Text = "Silent Target"
Sehkie_2.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Sehkie_2.TextSize = 14

rapidfire.Name = "rapidfire"
rapidfire.Parent = RageTab
rapidfire.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
rapidfire.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
rapidfire.Position = UDim2.new(0.0606401265, 0, 0.162637189, 0)
rapidfire.Size = UDim2.new(0, 13, 0, 13)
rapidfire.Font = Enum.Font.SourceSans
rapidfire.Text = ""
rapidfire.TextColor3 = Color3.new(0, 0, 0)
rapidfire.TextSize = 14

Sehkie_3.Name = "Sehkie"
Sehkie_3.Parent = RageTab
Sehkie_3.Active = true
Sehkie_3.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Sehkie_3.BorderSizePixel = 0
Sehkie_3.Position = UDim2.new(0.116434142, 0, 0.161518916, 0)
Sehkie_3.Size = UDim2.new(0, 62, 0, 13)
Sehkie_3.Font = Enum.Font.SourceSansSemibold
Sehkie_3.Text = "Fast Fire"
Sehkie_3.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Sehkie_3.TextSize = 14

forceheadshot.Name = "forceheadshot"
forceheadshot.Parent = RageTab
forceheadshot.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
forceheadshot.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
forceheadshot.Position = UDim2.new(0.0606401265, 0, 0.216448843, 0)
forceheadshot.Size = UDim2.new(0, 13, 0, 13)
forceheadshot.Font = Enum.Font.SourceSans
forceheadshot.Text = ""
forceheadshot.TextColor3 = Color3.new(0, 0, 0)
forceheadshot.TextSize = 14

Sehkie_4.Name = "Sehkie"
Sehkie_4.Parent = RageTab
Sehkie_4.Active = true
Sehkie_4.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Sehkie_4.BorderSizePixel = 0
Sehkie_4.Position = UDim2.new(0.180811822, 0, 0.215330571, 0)
Sehkie_4.Size = UDim2.new(0, 62, 0, 13)
Sehkie_4.Font = Enum.Font.SourceSansSemibold
Sehkie_4.Text = "Force Headshot"
Sehkie_4.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Sehkie_4.TextSize = 14

bullettracer.Name = "bullettracer"
bullettracer.Parent = RageTab
bullettracer.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
bullettracer.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
bullettracer.Position = UDim2.new(0.0606401265, 0, 0.268018335, 0)
bullettracer.Size = UDim2.new(0, 13, 0, 13)
bullettracer.Font = Enum.Font.SourceSans
bullettracer.Text = ""
bullettracer.TextColor3 = Color3.new(0, 0, 0)
bullettracer.TextSize = 14

tracertext.Name = "tracertext"
tracertext.Parent = RageTab
tracertext.Active = true
tracertext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
tracertext.BorderSizePixel = 0
tracertext.Position = UDim2.new(0.150768891, 0, 0.266900063, 0)
tracertext.Size = UDim2.new(0, 69, 0, 13)
tracertext.Font = Enum.Font.SourceSansSemibold
tracertext.Text = "Bullet Tracer"
tracertext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
tracertext.TextSize = 14

MiscTab.Name = "MiscTab"
MiscTab.Parent = Main
MiscTab.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
MiscTab.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
MiscTab.BorderSizePixel = 2
MiscTab.Position = UDim2.new(0.218172207, 0, 0.0830337778, 0)
MiscTab.Size = UDim2.new(0, 233, 0, 446)
MiscTab.Visible = false

Misc.Name = "Misc"
Misc.Parent = MiscTab
Misc.Active = true
Misc.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Misc.BorderSizePixel = 0
Misc.Position = UDim2.new(0.052488137, 0, -0.0139908725, 0)
Misc.Size = UDim2.new(0, 39, 0, 15)
Misc.Font = Enum.Font.SourceSansBold
Misc.Text = "Miscellaneous"
Misc.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Misc.TextSize = 14

Sehkie_5.Name = "Sehkie"
Sehkie_5.Parent = MiscTab
Sehkie_5.Active = true
Sehkie_5.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Sehkie_5.BorderSizePixel = 0
Sehkie_5.Position = UDim2.new(0.19368735, 0, 0.0561377704, 0)
Sehkie_5.Size = UDim2.new(0, 41, 0, 13)
Sehkie_5.Font = Enum.Font.SourceSansSemibold
Sehkie_5.Text = "Activated"
Sehkie_5.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Sehkie_5.TextSize = 14

miscenabled.Name = "miscenabled"
miscenabled.Parent = MiscTab
miscenabled.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
miscenabled.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
miscenabled.Position = UDim2.new(0.077807501, 0, 0.0594981909, 0)
miscenabled.Size = UDim2.new(0, 12, 0, 12)
miscenabled.Font = Enum.Font.SourceSans
miscenabled.Text = ""
miscenabled.TextColor3 = Color3.new(0, 0, 0)
miscenabled.TextSize = 14

MiscTab2.Name = "MiscTab2"
MiscTab2.Parent = MiscTab
MiscTab2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
MiscTab2.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
MiscTab2.BorderSizePixel = 2
MiscTab2.Position = UDim2.new(1.11585104, 0, 0, 0)
MiscTab2.Size = UDim2.new(0, 233, 0, 289)

Other_2.Name = "Other"
Other_2.Parent = MiscTab2
Other_2.Active = true
Other_2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Other_2.BorderSizePixel = 0
Other_2.Position = UDim2.new(0.0439044461, 0, -0.0243715066, 0)
Other_2.Size = UDim2.new(0, 42, 0, 15)
Other_2.Font = Enum.Font.SourceSansBold
Other_2.Text = "Other"
Other_2.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Other_2.TextSize = 14

nocrouchj.Name = "nocrouchj"
nocrouchj.Parent = MiscTab2
nocrouchj.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
nocrouchj.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
nocrouchj.Position = UDim2.new(0.077807501, 0, 0.0594981909, 0)
nocrouchj.Size = UDim2.new(0, 12, 0, 12)
nocrouchj.Font = Enum.Font.SourceSans
nocrouchj.Text = ""
nocrouchj.TextColor3 = Color3.new(0, 0, 0)
nocrouchj.TextSize = 14

crouchtekst.Name = "crouchtekst"
crouchtekst.Parent = MiscTab2
crouchtekst.Active = true
crouchtekst.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
crouchtekst.BorderSizePixel = 0
crouchtekst.Position = UDim2.new(0.326734543, 0, 0.0560379848, 0)
crouchtekst.Size = UDim2.new(0, 41, 0, 13)
crouchtekst.Font = Enum.Font.SourceSansSemibold
crouchtekst.Text = "Crouch"
crouchtekst.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
crouchtekst.TextSize = 14

bhoptoggle.Name = "bhoptoggle"
bhoptoggle.Parent = MiscTab
bhoptoggle.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
bhoptoggle.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
bhoptoggle.Position = UDim2.new(0.0780000016, 0, 0.116031393, 0)
bhoptoggle.Size = UDim2.new(0, 12, 0, 12)
bhoptoggle.Font = Enum.Font.SourceSans
bhoptoggle.Text = ""
bhoptoggle.TextColor3 = Color3.new(0, 0, 0)
bhoptoggle.TextSize = 14

bhoptext.Name = "bhoptext"
bhoptext.Parent = MiscTab
bhoptext.Active = true
bhoptext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
bhoptext.BorderSizePixel = 0
bhoptext.Position = UDim2.new(0.163644418, 0, 0.116031393, 0)
bhoptext.Size = UDim2.new(0, 67, 0, 12)
bhoptext.Font = Enum.Font.SourceSansSemibold
bhoptext.Text = "Bhop"
bhoptext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
bhoptext.TextSize = 14

btenable.Name = "btenable"
btenable.Parent = MiscTab
btenable.Active = true
btenable.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
btenable.BorderSizePixel = 0
btenable.Position = UDim2.new(0.19368729, 0, 0.217572778, 0)
btenable.Size = UDim2.new(0, 47, 0, 13)
btenable.Font = Enum.Font.SourceSansSemibold
btenable.Text = "Backtracking"
btenable.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
btenable.TextSize = 14

backtrackenabled.Name = "backtrackenabled"
backtrackenabled.Parent = MiscTab
backtrackenabled.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
backtrackenabled.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
backtrackenabled.Position = UDim2.new(0.077807501, 0, 0.220933169, 0)
backtrackenabled.Size = UDim2.new(0, 12, 0, 12)
backtrackenabled.Font = Enum.Font.SourceSans
backtrackenabled.Text = ""
backtrackenabled.TextColor3 = Color3.new(0, 0, 0)
backtrackenabled.TextSize = 14

dtext.Name = "dtext"
dtext.Parent = MiscTab
dtext.Active = true
dtext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
dtext.BorderSizePixel = 0
dtext.Position = UDim2.new(0.129309624, 0, 0.28035301, 0)
dtext.Size = UDim2.new(0, 47, 0, 13)
dtext.Font = Enum.Font.SourceSansSemibold
dtext.Text = "Duration:"
dtext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
dtext.TextSize = 14

sec.Name = "sec"
sec.Parent = MiscTab
sec.Active = true
sec.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
sec.BorderSizePixel = 0
sec.Position = UDim2.new(0.601412654, 0, 0.28035301, 0)
sec.Size = UDim2.new(0, 47, 0, 13)
sec.Font = Enum.Font.SourceSansSemibold
sec.Text = "Sec"
sec.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
sec.TextSize = 14

bhoptext_2.Name = "bhoptext"
bhoptext_2.Parent = MiscTab
bhoptext_2.Active = true
bhoptext_2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
bhoptext_2.BorderSizePixel = 0
bhoptext_2.Position = UDim2.new(0.163644418, 0, 0.163579896, 0)
bhoptext_2.Size = UDim2.new(0, 83, 0, 12)
bhoptext_2.Font = Enum.Font.SourceSansSemibold
bhoptext_2.Text = "Unlimited Money"
bhoptext_2.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
bhoptext_2.TextSize = 14

infmoney.Name = "infmoney"
infmoney.Parent = MiscTab
infmoney.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
infmoney.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
infmoney.Position = UDim2.new(0.0780000016, 0, 0.165358737, 0)
infmoney.Size = UDim2.new(0, 12, 0, 12)
infmoney.Font = Enum.Font.SourceSans
infmoney.Text = ""
infmoney.TextColor3 = Color3.new(0, 0, 0)
infmoney.TextSize = 14

duration.Name = "duration"
duration.Parent = MiscTab
duration.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
duration.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
duration.BorderSizePixel = 0
duration.Position = UDim2.new(0.373390555, 0, 0.280269057, 0)
duration.Size = UDim2.new(0, 50, 0, 15)
duration.ClearTextOnFocus = false
duration.Font = Enum.Font.Arial
duration.Text = "0.2"
duration.TextColor3 = Color3.new(1, 1, 1)
duration.TextSize = 10

LegitTab.Name = "LegitTab"
LegitTab.Parent = Main
LegitTab.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
LegitTab.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
LegitTab.BorderSizePixel = 2
LegitTab.Position = UDim2.new(0.218172207, 0, 0.0830337778, 0)
LegitTab.Size = UDim2.new(0, 233, 0, 446)

aimbot.Name = "aimbot"
aimbot.Parent = LegitTab
aimbot.Active = true
aimbot.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
aimbot.BorderSizePixel = 0
aimbot.Position = UDim2.new(0.052488137, 0, -0.0139908725, 0)
aimbot.Size = UDim2.new(0, 50, 0, 15)
aimbot.Font = Enum.Font.SourceSansBold
aimbot.Text = "AimBot"
aimbot.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
aimbot.TextSize = 14

Sehkie_6.Name = "Sehkie"
Sehkie_6.Parent = LegitTab
Sehkie_6.Active = true
Sehkie_6.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Sehkie_6.BorderSizePixel = 0
Sehkie_6.Position = UDim2.new(0.11643412, 0, 0.053895615, 0)
Sehkie_6.Size = UDim2.new(0, 55, 0, 13)
Sehkie_6.Font = Enum.Font.SourceSansSemibold
Sehkie_6.Text = "Activated"
Sehkie_6.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Sehkie_6.TextSize = 14

aimenabled.Name = "aimenabled"
aimenabled.Parent = LegitTab
aimenabled.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
aimenabled.BorderColor3 = Color3.new(0.172549, 0.172549, 0.172549)
aimenabled.Position = UDim2.new(0.0606401265, 0, 0.0550138652, 0)
aimenabled.Size = UDim2.new(0, 13, 0, 13)
aimenabled.Font = Enum.Font.SourceSans
aimenabled.Text = ""
aimenabled.TextColor3 = Color3.new(0, 0, 0)
aimenabled.TextSize = 14

LegitTab2.Name = "LegitTab2"
LegitTab2.Parent = LegitTab
LegitTab2.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
LegitTab2.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
LegitTab2.BorderSizePixel = 2
LegitTab2.Position = UDim2.new(1.11585104, 0, 0, 0)
LegitTab2.Size = UDim2.new(0, 233, 0, 289)

Other_3.Name = "Other"
Other_3.Parent = LegitTab2
Other_3.Active = true
Other_3.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
Other_3.BorderSizePixel = 0
Other_3.Position = UDim2.new(0.0439044461, 0, -0.0243715066, 0)
Other_3.Size = UDim2.new(0, 42, 0, 15)
Other_3.Font = Enum.Font.SourceSansBold
Other_3.Text = "Other"
Other_3.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
Other_3.TextSize = 14

fov.Name = "fov"
fov.Parent = LegitTab
fov.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
fov.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
fov.BorderSizePixel = 0
fov.Position = UDim2.new(0.407725334, 0, 0.094170399, 0)
fov.Size = UDim2.new(0, 50, 0, 15)
fov.ClearTextOnFocus = false
fov.Font = Enum.Font.Arial
fov.Text = "250"
fov.TextColor3 = Color3.new(1, 1, 1)
fov.TextSize = 10

fovtext.Name = "fovtext"
fovtext.Parent = LegitTab
fovtext.Active = true
fovtext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
fovtext.BorderSizePixel = 0
fovtext.Position = UDim2.new(0.0520564392, 0, 0.0987386629, 0)
fovtext.Size = UDim2.new(0, 25, 0, 13)
fovtext.Font = Enum.Font.SourceSansSemibold
fovtext.Text = "FOV:"
fovtext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
fovtext.TextSize = 14

smoothness.Name = "smoothness"
smoothness.Parent = LegitTab
smoothness.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
smoothness.BorderColor3 = Color3.new(0.262745, 0.262745, 0.262745)
smoothness.BorderSizePixel = 0
smoothness.Position = UDim2.new(0.407725334, 0, 0.14349775, 0)
smoothness.Size = UDim2.new(0, 50, 0, 15)
smoothness.ClearTextOnFocus = false
smoothness.Font = Enum.Font.Arial
smoothness.Text = "15"
smoothness.TextColor3 = Color3.new(1, 1, 1)
smoothness.TextSize = 10

smoothtext.Name = "smoothtext"
smoothtext.Parent = LegitTab
smoothtext.Active = true
smoothtext.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
smoothtext.BorderSizePixel = 0
smoothtext.Position = UDim2.new(0.155060738, 0, 0.14133957, 0)
smoothtext.Size = UDim2.new(0, 19, 0, 13)
smoothtext.Font = Enum.Font.SourceSansSemibold
smoothtext.Text = "Smoothness"
smoothtext.TextColor3 = Color3.new(0.713726, 0.713726, 0.713726)
smoothtext.TextSize = 14

cursor.Name = "cursor"
cursor.Parent = poop
cursor.BackgroundColor3 = Color3.new(0, 0.917647, 0.505882)
cursor.BorderSizePixel = 0
cursor.Size = UDim2.new(0, 10, 0, 10)
cursor.ZIndex = 999
-- Scripts:
function SCRIPT_XAOR85_FAKESCRIPT() -- teammatesknop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = teammatesknop
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XAOR85_FAKESCRIPT))
function SCRIPT_BUAE78_FAKESCRIPT() -- enabletp.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = enabletp
	
	local tp=false
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
			tp=false
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
			tp=true
		end
	end)
	
	game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(k)
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	if k=="x" or k=="X" then
	if tp==false then
	tp=true
	else
	tp=false
	end
	end
	end
	end)
	
	while wait() do
	if tp==true then
	game.Players.LocalPlayer.CameraMode = "Classic"
	game.Players.LocalPlayer.CameraMaxZoomDistance = 10
	game.Players.LocalPlayer.CameraMinZoomDistance = 10
	for _,v in pairs(workspace.Camera:GetDescendants()) do 
	pcall(function() 
	v.Transparency=1
	end)
	end
	else
	game.Players.LocalPlayer.CameraMode = "LockFirstPerson"
	game.Players.LocalPlayer.CameraMaxZoomDistance = 0
	game.Players.LocalPlayer.CameraMinZoomDistance = 0
	end
	end

end
coroutine.resume(coroutine.create(SCRIPT_BUAE78_FAKESCRIPT))
function SCRIPT_DUVL89_FAKESCRIPT() -- nosmoke.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = nosmoke
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)
	
	workspace["Ray_Ignore"].Smokes.ChildAdded:Connect(function(p)
		if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
			wait()
			p:Destroy()
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_DUVL89_FAKESCRIPT))
function SCRIPT_MWYY88_FAKESCRIPT() -- noflash.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = noflash
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
			game.Players.LocalPlayer.PlayerGui.Blnd.Blind.Visible=true
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
			game.Players.LocalPlayer.PlayerGui.Blnd.Blind.Visible=false
		end
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_MWYY88_FAKESCRIPT))
function SCRIPT_IJQX69_FAKESCRIPT() -- distanceknop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = distanceknop
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_IJQX69_FAKESCRIPT))
function SCRIPT_MAHM69_FAKESCRIPT() -- boxknop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = boxknop
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_MAHM69_FAKESCRIPT))
function SCRIPT_OXED89_FAKESCRIPT() -- nameknop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = nameknop
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_OXED89_FAKESCRIPT))
function SCRIPT_IUGE74_FAKESCRIPT() -- chamsknop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = chamsknop
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
			for _,v in pairs(game.Players:GetChildren()) do
				if workspace:FindFirstChild(v.Name) then
					for _,o in pairs(workspace[v.Name]:GetDescendants()) do
						if o.Name=="chams" then
							o:Destroy()
						end
					end
				end
			end
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
	
	enemycolor=Color3.fromRGB(200,30,30)
	teammatecolor=Color3.fromRGB(30,200,30)
	players=game:GetService("Players")
	currentPlayer=nil
	lplayer=players.LocalPlayer
	faces={"Front","Back","Bottom","Left","Right","Top"}
	currentPlayer=nil
	plr=players.LocalPlayer
	
	function esp(v)
	wait(0.05)
	for _,o in pairs(workspace[v.Name]:GetChildren()) do
	if o:IsA"Part" or o:IsA"MeshPart" and o.Name~="HumanoidRootPart" then 
	for n,face in pairs(faces) do
	local sg=Instance.new("SurfaceGui",o)
	sg.Face=face
	sg.AlwaysOnTop=true
	sg.Name="chams"
	local f=Instance.new("Frame",sg)
	f.Size=UDim2.new(1,0,1,0)
	f.BorderSizePixel=0
	f.BackgroundTransparency=0.2
	f.Visible=true 
	if game.Players[v.Name].Status.Team.Value~=plr.Status.Team.Value then
	f.BackgroundColor3=enemycolor
	else
	f.BackgroundColor3=teammatecolor
	end
	end
	end
	end
	end
	
	
	for i,v in next, game:GetService'Players':GetChildren() do
		if v~=plr then
	    	if workspace:FindFirstChild(v.Name) then
				if game.Players[v.Name].Status.Team.Value==plr.Status.Team.Value then
					if script.Parent.Parent.teammatesknop.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
					esp(v)
					end
				else
					esp(v)
				end
	    	end
		end
	end
	
		end
	end)
	
	for i,v in pairs(game.Players:GetChildren()) do
	v.CharacterAdded:connect(function()
	if v~=plr then
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	v.Character:WaitForChild('Head')
				if game.Players[v.Name].Status.Team.Value==plr.Status.Team.Value then
					if script.Parent.Parent.teammatesknop.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
					esp(v)
					end
				else
					esp(v)
				end
	end
	end
	end)
	end
		
	game.Players.PlayerAdded:connect(function(v)
	v.CharacterAdded:connect(function()
	if v~=plr then
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	v.Character:WaitForChild('Head')
				if game.Players[v.Name].Status.Team.Value==plr.Status.Team.Value then
					if script.Parent.Parent.teammatesknop.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
					esp(v)
					end
				else
					esp(v)
				end
	end
	end
	end)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_IUGE74_FAKESCRIPT))
function SCRIPT_YCHQ88_FAKESCRIPT() -- WeaponTextknop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = WeaponTextknop
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_YCHQ88_FAKESCRIPT))
function SCRIPT_OEMK69_FAKESCRIPT() -- VisualsTab.ESP TEXTS 
	local script = Instance.new('LocalScript')
	script.Parent = VisualsTab
	
	--ifnowork then remove statuschecks
	local p
	local nameEN=false
	local weaponEN=false
	local distanceEN=false
	local fov=400
	local plrs=game:GetService("Players")
	local plr = plrs.LocalPlayer
	local mouse=plr:GetMouse()
	local camera = workspace.CurrentCamera
	local folder=Instance.new("Folder",game.Players.LocalPlayer.PlayerGui)
	folder.Name="textesp"
	
	local function round(n)
		return math.floor(n + 0.5)
	end
	
	local function text()
	pcall(function()
	folder:ClearAllChildren()
		for _,v in next, game:service'Players':GetPlayers() do				
			if v~=plr then
			if v:FindFirstChild("Status") then
			if v.Status.Team.Value==plr.Status.Team.Value and script.Parent.teammatesknop.BackgroundColor3==Color3.fromRGB(0, 234, 129) then
							if workspace:FindFirstChild(v.Name) then
							if v.Character:FindFirstChild("Head") then
					local mouse = plr:GetMouse()
					local worldPoint = v.Character.Head.Position
					local vector, onScreen = camera:WorldToScreenPoint(worldPoint)
					local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
					if magnitude<fov then
						if nameEN==true then
							local ScreenGui = Instance.new("ScreenGui")
							local Frame = Instance.new("TextLabel")
							ScreenGui.Parent = folder
							ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							Frame.Parent = ScreenGui
							Frame.BackgroundColor3 = Color3.new(1, 0, 0)
							Frame.BackgroundTransparency = 1
							Frame.BorderColor3 = Color3.new(0, 0, 0)
							Frame.BorderSizePixel = 5
							Frame.Size = UDim2.new(0, 10, 0, 10)
							Frame.Text=v.Name
							Frame.Font="Gotham"
							Frame.TextSize=12
							Frame.Position=UDim2.new(0,vector.X,0,vector.Y-15)
							Frame.Name="nameesp"
							ScreenGui.Name="nameesp"
						end
						if weaponEN==true then
							local ScreenGui = Instance.new("ScreenGui")
							local Frame = Instance.new("TextLabel")
							ScreenGui.Parent = folder
							ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							Frame.Parent = ScreenGui
							Frame.BackgroundColor3 = Color3.new(1, 0, 0)
							Frame.BackgroundTransparency = 1
							Frame.BorderColor3 = Color3.new(0, 0, 0)
							Frame.BorderSizePixel = 5
							Frame.Size = UDim2.new(0, 10, 0, 10)
							Frame.Text=workspace[v.Name].EquippedTool.Value
							Frame.Font="Gotham"
							Frame.TextSize=12
							Frame.Position=UDim2.new(0,vector.X,0,vector.Y+36)
							Frame.Name="weaponesp"
							ScreenGui.Name="weaponesp"
						end
						if distanceEN==true then
							if workspace:FindFirstChild(plr.Name) then
								local ScreenGui = Instance.new("ScreenGui")
								local Frame = Instance.new("TextLabel")
								ScreenGui.Parent = folder
								ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								Frame.Parent = ScreenGui
								Frame.BackgroundColor3 = Color3.new(1, 0, 0)
								Frame.BackgroundTransparency = 1
								Frame.BorderColor3 = Color3.new(0, 0, 0)
								Frame.BorderSizePixel = 5
								Frame.Size = UDim2.new(0, 10, 0, 10)
								Frame.Text="["..round((plr.Character.Head.Position-v.Character.Head.Position).Magnitude).." st]"
								Frame.Font="Gotham"
								Frame.TextSize=13
								Frame.Position=UDim2.new(0,vector.X,0,vector.Y+25)
								Frame.Name="distanceesp"
								ScreenGui.Name="distanceesp"
						end
					end
				end
			end
		end
	end
				if workspace:FindFirstChild(v.Name) then
				if v:FindFirstChild("Status") then
				if v.Status.Team.Value~=plr.Status.Team.Value then
					local mouse = plr:GetMouse()
					local worldPoint = v.Character.Head.Position
					local vector, onScreen = camera:WorldToScreenPoint(worldPoint)
					local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
					if magnitude<fov then
						if nameEN==true then
							local ScreenGui = Instance.new("ScreenGui")
							local Frame = Instance.new("TextLabel")
							ScreenGui.Parent = folder
							ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							Frame.Parent = ScreenGui
							Frame.BackgroundColor3 = Color3.new(1, 0, 0)
							Frame.BackgroundTransparency = 1
							Frame.BorderColor3 = Color3.new(0, 0, 0)
							Frame.BorderSizePixel = 5
							Frame.Size = UDim2.new(0, 10, 0, 10)
							Frame.Text=v.Name
							Frame.Font="Gotham"
							Frame.TextSize=12
							Frame.Position=UDim2.new(0,vector.X,0,vector.Y-15)
							Frame.Name="nameesp"
							ScreenGui.Name="nameesp"
						end
						if weaponEN==true then
							local ScreenGui = Instance.new("ScreenGui")
							local Frame = Instance.new("TextLabel")
							ScreenGui.Parent = folder
							ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
							Frame.Parent = ScreenGui
							Frame.BackgroundColor3 = Color3.new(1, 0, 0)
							Frame.BackgroundTransparency = 1
							Frame.BorderColor3 = Color3.new(0, 0, 0)
							Frame.BorderSizePixel = 5
							Frame.Size = UDim2.new(0, 10, 0, 10)
							Frame.Text=workspace[v.Name].EquippedTool.Value
							Frame.Font="Gotham"
							Frame.TextSize=12
							Frame.Position=UDim2.new(0,vector.X,0,vector.Y+36)
							Frame.Name="weaponesp"
							ScreenGui.Name="weaponesp"
						end
						if distanceEN==true then
							if workspace:FindFirstChild(plr.Name) then
								local ScreenGui = Instance.new("ScreenGui")
								local Frame = Instance.new("TextLabel")
								ScreenGui.Parent = folder
								ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
								Frame.Parent = ScreenGui
								Frame.BackgroundColor3 = Color3.new(1, 0, 0)
								Frame.BackgroundTransparency = 1
								Frame.BorderColor3 = Color3.new(0, 0, 0)
								Frame.BorderSizePixel = 5
								Frame.Size = UDim2.new(0, 10, 0, 10)
								Frame.Text="["..round((plr.Character.Head.Position-v.Character.Head.Position).Magnitude).." st]"
								Frame.Font="Gotham"
								Frame.TextSize=13
								Frame.Position=UDim2.new(0,vector.X,0,vector.Y+25)
								Frame.Name="distanceesp"
								ScreenGui.Name="distanceesp"
							end
						end
					end
				end
			end	
		end	
	end
	end
	end
	end)
	end
	
	p=game['Run Service'].Stepped:connect(function()
	if script.Parent.nameknop.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
		nameEN=true
	else
		nameEN=false
	end
	if script.Parent.WeaponTextknop.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
		weaponEN=true
	else
		weaponEN=false
	end
	if script.Parent.distanceknop.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
		distanceEN=true
	else
		distanceEN=false
	end
	text()
	end)

end
coroutine.resume(coroutine.create(SCRIPT_OEMK69_FAKESCRIPT))
function SCRIPT_HCMY65_FAKESCRIPT() -- MiscCnop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = MiscCnop
	local Opened = script.Parent.Parent.LeftTab.Opened
	function invisall()
	script.Parent.Parent.LegitTab.Visible=false
	script.Parent.Parent.RageTab.Visible=false
	script.Parent.Parent.VisualsTab.Visible=false
	script.Parent.Parent.MiscTab.Visible=false
	
	end
	--5 px
	script.Parent.MouseButton1Click:Connect(function()
		Opened.Position = UDim2.new(script.Parent.Position.X.Scale, script.Parent.Position.X.Offset, script.Parent.Position.Y.Scale,script.Parent.Position.Y.Offset)+UDim2.new(0,-4,-0.03,0)
		invisall()
		script.Parent.Parent.MiscTab.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_HCMY65_FAKESCRIPT))
function SCRIPT_SNLK90_FAKESCRIPT() -- RageCnop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = RageCnop
	local Opened = script.Parent.Parent.LeftTab.Opened
	function invisall()
	script.Parent.Parent.LegitTab.Visible=false
	script.Parent.Parent.RageTab.Visible=false
	script.Parent.Parent.VisualsTab.Visible=false
	script.Parent.Parent.MiscTab.Visible=false
	
	end
	--5 px
	script.Parent.MouseButton1Click:Connect(function()
		Opened.Position = UDim2.new(script.Parent.Position.X.Scale, script.Parent.Position.X.Offset, script.Parent.Position.Y.Scale,script.Parent.Position.Y.Offset)+UDim2.new(0,-5,-0.037,0)
		invisall()
		script.Parent.Parent.RageTab.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_SNLK90_FAKESCRIPT))
function SCRIPT_XUBM69_FAKESCRIPT() -- LegitCnop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = LegitCnop
	local Opened = script.Parent.Parent.LeftTab.Opened
	function invisall()
	script.Parent.Parent.LegitTab.Visible=false
	script.Parent.Parent.RageTab.Visible=false
	script.Parent.Parent.VisualsTab.Visible=false
	script.Parent.Parent.MiscTab.Visible=false
	
	end
	--5 px
	script.Parent.MouseButton1Click:Connect(function()
		Opened.Position = UDim2.new(script.Parent.Position.X.Scale, script.Parent.Position.X.Offset, script.Parent.Position.Y.Scale,script.Parent.Position.Y.Offset)+UDim2.new(0,-4,-0.04,0)
		invisall()
		script.Parent.Parent.LegitTab.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XUBM69_FAKESCRIPT))
function SCRIPT_WUWV85_FAKESCRIPT() -- VisualsCnop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = VisualsCnop
	local Opened = script.Parent.Parent.LeftTab.Opened
	function invisall()
	script.Parent.Parent.LegitTab.Visible=false
	script.Parent.Parent.RageTab.Visible=false
	script.Parent.Parent.VisualsTab.Visible=false
	script.Parent.Parent.MiscTab.Visible=false
	
	end
	--5 px
	script.Parent.MouseButton1Click:Connect(function()
		Opened.Position = UDim2.new(script.Parent.Position.X.Scale, script.Parent.Position.X.Offset, script.Parent.Position.Y.Scale,script.Parent.Position.Y.Offset)+UDim2.new(0,-4,-0.03,0)
		invisall()
		script.Parent.Parent.VisualsTab.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_WUWV85_FAKESCRIPT))
function SCRIPT_LJZU77_FAKESCRIPT() -- enablerage.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = enablerage
	local TOGGLED = false -- ;)
		
		local plrs=game:GetService("Players")
		local plr=plrs.LocalPlayer
		local client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
		local loop
		local norapid=0
		local CC=game.Workspace.CurrentCamera
		script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
		script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		loop:Disconnect()
		else
		script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		loop=game['Run Service'].Stepped:connect(function()
		pcall(function()
		for _,v in pairs(plrs:GetChildren()) do
		if v~=plr then
		if v:FindFirstChild("Status") then
		if v.Status.Team.Value~=plr.Status.Team.Value then
		if workspace:FindFirstChild(plr.Name) then
		if plr.Character:FindFirstChild("Humanoid") then
		if plr.Character.Humanoid.Health>0 then
		if plr.Character:FindFirstChild("LowerTorso") then
		if workspace:FindFirstChild(v.Name) then
		if v.Character:FindFirstChild("Humanoid") then
		if v.Character:FindFirstChild("LowerTorso") then
		if v.Character.Humanoid.Health>0.1 then
		for _,o in pairs(v.Character:GetChildren()) do
		if o:IsA"Part" or o:IsA"MeshPart" then
		if o.Name~="Gun" or o.Parent.Name~="Gun" or o.Name~="Gun2" or o.Parent.Name~="Gun2" then
		local ray = Ray.new(
		       plr.Character.Head.Position,
		       (o.Position-plr.Character.Head.Position).unit*500
		    ) 
		local ignore=plr.Character
		local hit,position,normal=workspace:FindPartOnRay(ray,ignore)
		if hit.Parent==v.Character or hit==o or hit.Name=="btTICK" then
		if script.Parent.Parent.silentaim.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
		if norapid==0 then
		if v.Character.Humanoid.Health>0.1 then
		local Remote = game.ReplicatedStorage.Events['HitPart']
		local Arguments = {
			[1] = workspace[v.Name]["Head"],
			[2] = workspace[v.Name]["Head"].Position,
			[3] = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value,
			[4] = 100,
			[5] = workspace[game.Players.LocalPlayer.Name].Gun,
			[8] = 1,
			[9] = false,
			[10] = false,
			[11] = Vector3.new(),
			[12] = 100,
			[13] = Vector3.new()
			}
			Remote:FireServer(unpack(Arguments))
		client.firebullet()
	
	
	local ray = Ray.new(
	       game.Players.LocalPlayer.Character.Head.Position,
	       (v.Character.Head.Position-game.Players.LocalPlayer.Character.Head.Position).unit*500
	    ) 
	if script.Parent.Parent.bullettracer.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	local hit,position,normal=workspace:FindPartOnRay(ray,ignore)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Bright red")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	local distance = (plr.Character.Head.CFrame.p - position).magnitude
	beam.Size = Vector3.new(0.1, 0.1, distance)
	beam.CFrame = CFrame.new(plr.Character.Head.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	game:GetService("Debris"):AddItem(beam, 0.5)
	end
		print(v.Character.Humanoid.Health)
		if script.Parent.Parent.rapidfire.BackgroundColor3 ~= Color3.fromRGB(0, 234, 129) then
		norapid=1
		spawn(function()
		local gun=workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
		wait(game.ReplicatedStorage.Weapons[gun].FireRate.Value)
		norapid=0
		end)
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
			
		for _,o in pairs(v.Character:GetChildren()) do
		if o:IsA"Part" or o:IsA"MeshPart" then
		if o.Name~="Gun" or o.Parent.Name~="Gun" or o.Name~="Gun2" or o.Parent.Name~="Gun2" then
		local ray = Ray.new(
		       plr.Character[o.Name].Position,
		       (o.Position-plr.Character[o.Name].Position).unit*500
		    ) 
		local ignore=plr.Character
		local hit,position,normal=workspace:FindPartOnRay(ray,ignore)
		if hit.Parent==v.Character or hit.Name=="btTICK" then
		
		if script.Parent.Parent.silentaim.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
		if norapid==0 then
		if v.Character.Humanoid.Health>0.1 then
		if script.Parent.Parent.forceheadshot.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
		local Remote = game.ReplicatedStorage.Events['HitPart']
		local Arguments = {
			[1] = workspace[v.Name]["Head"],
			[2] = workspace[v.Name]["Head"].Position,
			[3] = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value,
			[4] = 100,
			[5] = workspace[game.Players.LocalPlayer.Name].Gun,
			[8] = 1,
			[9] = false,
			[10] = false,
			[11] = Vector3.new(),
			[12] = 100,
			[13] = Vector3.new()
			}
			Remote:FireServer(unpack(Arguments))
		client.firebullet()
	if script.Parent.Parent.bullettracer.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	local hit,position,normal=workspace:FindPartOnRay(ray,ignore)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Bright red")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	local distance = (plr.Character.Head.CFrame.p - position).magnitude
	beam.Size = Vector3.new(0.1, 0.1, distance)
	beam.CFrame = CFrame.new(plr.Character.Head.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	game:GetService("Debris"):AddItem(beam, 0.5)
	end
		if script.Parent.Parent.rapidfire.BackgroundColor3 ~= Color3.fromRGB(0, 234, 129) then
		norapid=1
		spawn(function()
		local gun=workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
		wait(game.ReplicatedStorage.Weapons[gun].FireRate.Value)
		norapid=0
		end)
		end
		else
		local Remote = game.ReplicatedStorage.Events['HitPart']
		local Arguments = {
			[1] = workspace[v.Name][o.Name],
			[2] = workspace[v.Name][o.Name].Position,
			[3] = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value,
			[4] = 100,
			[5] = workspace[game.Players.LocalPlayer.Name].Gun,
			[8] = 1,
			[9] = false,
			[10] = false,
			[11] = Vector3.new(),
			[12] = 100,
			[13] = Vector3.new()
			}
			Remote:FireServer(unpack(Arguments))
		client.firebullet()
	if script.Parent.Parent.bullettracer.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	local hit,position,normal=workspace:FindPartOnRay(ray,ignore)
	local beam = Instance.new("Part", workspace)
	beam.BrickColor = BrickColor.new("Bright red")
	beam.FormFactor = "Custom"
	beam.Material = "Neon"
	beam.Transparency = 0.25
	beam.Anchored = true
	beam.Locked = true
	beam.CanCollide = false
	local distance = (plr.Character.Head.CFrame.p - position).magnitude
	beam.Size = Vector3.new(0.1, 0.1, distance)
	beam.CFrame = CFrame.new(plr.Character.Head.CFrame.p, position) * CFrame.new(0, 0, -distance / 2)
	game:GetService("Debris"):AddItem(beam, 0.5)
	end
		if script.Parent.Parent.rapidfire.BackgroundColor3 ~= Color3.fromRGB(0, 234, 129) then
		norapid=1
		spawn(function()
		local gun=workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
		wait(game.ReplicatedStorage.Weapons[gun].FireRate.Value)
		norapid=0
		end)
		end
		end
		end
		end
		else
		if norapid==0 then
		if v.Character.Humanoid.Health>0.1 then
		client.resetaccuracy()
		CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, o.CFrame.p)
		client.firebullet()
		client.resetaccuracy()
		if script.Parent.Parent.rapidfire.BackgroundColor3 ~= Color3.fromRGB(0, 234, 129) then
		norapid=1
		local gun=workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
		wait(game.ReplicatedStorage.Weapons[gun].FireRate.Value)
		norapid=0
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end
		end)
		end)
		end
		end)
	

end
coroutine.resume(coroutine.create(SCRIPT_LJZU77_FAKESCRIPT))
function SCRIPT_TJMV82_FAKESCRIPT() -- enableresolver.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = enableresolver
	
	
	
	local playerser=game:GetService("Players")
	local plr=playerser.LocalPlayer
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)
	
	game['Run Service'].Stepped:connect(function()
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	for _,player in pairs(playerser:GetChildren()) do
	if player.Status.Team.Value ~= plr.Status.Team.Value and player.Character and player.Character:FindFirstChild"UpperTorso" and player.Character.UpperTorso:FindFirstChild"Waist" then
	player.Character.UpperTorso.Waist.C0 = CFrame.Angles(0,0,0)
	end
	end
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_TJMV82_FAKESCRIPT))
function SCRIPT_VCSJ89_FAKESCRIPT() -- enableaa.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = enableaa
	
	
	
	
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)
	
	game['Run Service'].Stepped:connect(function()
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	game:GetService("ReplicatedStorage").Events.ControlTurn:FireServer("2.5")
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_VCSJ89_FAKESCRIPT))
function SCRIPT_CRKP78_FAKESCRIPT() -- silentaim.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = silentaim
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_CRKP78_FAKESCRIPT))
function SCRIPT_UVIW81_FAKESCRIPT() -- rapidfire.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = rapidfire
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_UVIW81_FAKESCRIPT))
function SCRIPT_MROX88_FAKESCRIPT() -- forceheadshot.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = forceheadshot
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_MROX88_FAKESCRIPT))
function SCRIPT_BDKJ67_FAKESCRIPT() -- bullettracer.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = bullettracer
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BDKJ67_FAKESCRIPT))
function SCRIPT_VUWU78_FAKESCRIPT() -- miscenabled.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = miscenabled
	
	
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_VUWU78_FAKESCRIPT))
function SCRIPT_VCUZ68_FAKESCRIPT() -- nocrouchj.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = nocrouchj
	
	local client = getsenv(game.Players.LocalPlayer.PlayerGui.Client)
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)
	
	while wait() do
		if script.Parent.Parent.Parent.miscenabled.BackgroundColor3==Color3.fromRGB(0, 234, 129) then
			if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
				client.crouchcooldown=0
			end
		end
	end

end
coroutine.resume(coroutine.create(SCRIPT_VCUZ68_FAKESCRIPT))
function SCRIPT_RBGM85_FAKESCRIPT() -- bhoptoggle.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = bhoptoggle
	
	local plrs=game:GetService("Players")
	local plr=plrs.LocalPlayer
	local UserInputService=game:GetService("UserInputService")
	local spaceHeld=UserInputService:IsKeyDown(Enum.KeyCode.Space)
	local C=getsenv(game.Players.LocalPlayer.PlayerGui.Client)
	local backup={}
	backup.speed=C.speedupdate
	local n=0
	local TOGGLED = false
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)
	
	while wait() do
	if script.Parent.BackgroundColor3==Color3.fromRGB(0, 234, 129) then
	if script.Parent.Parent.miscenabled.BackgroundColor3==Color3.fromRGB(0, 234, 129) then
	spaceHeld = UserInputService:IsKeyDown(Enum.KeyCode.Space)
	if spaceHeld==true then
	if workspace:FindFirstChild(plr.Name) then
	if plr.Character:FindFirstChild("Humanoid") then
	n=1
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
	C.speedupdate = function()
	end
	end
	end
	else
	if n==1 then
	n=0
	wait(0.5)
	C.speedupdate = backup.speed
	wait()
	end
	end
	end
	end
	end

end
coroutine.resume(coroutine.create(SCRIPT_RBGM85_FAKESCRIPT))
function SCRIPT_KLPC83_FAKESCRIPT() -- backtrackenabled.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = backtrackenabled
	
	local AAA=0
	local smallest=math.huge
	local ok=""
	local plrs=game.Players
	local plr=plrs.LocalPlayer
	local mouse=plr:GetMouse()
	local camera = workspace.CurrentCamera
	local inptSrvc = game:GetService("UserInputService")
	local st
	local debris=game:GetService("Debris")
	local mouse=plr:GetMouse()
	local hp=game.ReplicatedStorage.Events['HitPart']
	local inptSrvc=game:GetService("UserInputService")
	local n
	local norapid=0
	local f=Instance.new("Folder",workspace)
	f.Name="BT"
	
	local function getnearest()
	smallest=math.huge
	for _,v in pairs(plrs:GetChildren()) do
	if v~=plr then
	if v:FindFirstChild("Status") then
	if v.Status.Team.Value~=plr.Status.Team.Value then
	if workspace:FindFirstChild(v.Name) then
	if v.Character:FindFirstChild("Humanoid") then
	if v.Character.Humanoid.Health > 0 then
	local worldPoint = v.Character.Head.Position
	local vector, onScreen = camera:WorldToScreenPoint(worldPoint)
	local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
	if smallest>magnitude then
	smallest=magnitude
	ok=v
	end
	end
	end
	end
	end
	end
	end
	end
	end
	
	local TOGGLED = false -- ;)
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)
	
	game['Run Service'].RenderStepped:connect(function()
	pcall(function()
	if script.Parent.Parent.miscenabled.BackgroundColor3==Color3.fromRGB(0, 234, 129) then
	local waittime=tonumber(script.Parent.Parent.duration.Text)
	if inptSrvc:IsMouseButtonPressed(0) then
	if mouse.Target~=nil then
	if mouse.Target.Name=="btTICK" then
	if norapid==0 then
	norapid=1
	n=mouse.Target
	local Arguments = {
		[1] = workspace[n.nametag.Value][n.part.Value],
		[2] = workspace[n.nametag.Value][n.part.Value].Position,
		[3] = workspace[plr.Name].EquippedTool.Value,
		[4] = 90,
		[5] = workspace[plr.Name].Gun,
		[8] = 0.9,
		[9] = false,
		[10] = false,
		[11] = Vector3.new(),
		[12] = 90,
		[13] = Vector3.new()
		}
		hp:FireServer(unpack(Arguments))
	if workspace[n.nametag.Value].Humanoid.Health<0.01 then
	workspace[n.nametag.Value].HumanoidRootPart.CFrame=n.CFrame
	end
	spawn(function()
	local gun=workspace[game.Players.LocalPlayer.Name].EquippedTool.Value
	wait(game.ReplicatedStorage.Weapons[gun].FireRate.Value)
	norapid=0
	end)
	end
	end
	end
	end
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	getnearest()
	for _,v in pairs(plrs:GetChildren()) do
	if v~=plr then
	if ok==v then
	if game.Players[v.Name].Status.Team.Value~=plr.Status.Team.Value then
	if workspace:FindFirstChild(plr.Name) then
	if plr.Character:FindFirstChild("Humanoid") then
	if plr.Character.Humanoid.Health>0 then
	if workspace:FindFirstChild(v.Name) then
	if v.Character:FindFirstChild("Humanoid") then
	if v.Character.Humanoid.Health>0 then
	for _,o in pairs(v.Character:GetChildren()) do
	if o:IsA"Part" or o:IsA"MeshPart" then
	local p=Instance.new("Part",workspace.BT)
	p.Position=o.Position
	p.Size=o.Size
	p.Orientation=o.Orientation
	p.Anchored=true
	p.CanCollide=false
	p.BrickColor=BrickColor.new("White")
	p.Transparency=0.9
	p.Name="btTICK"
	local nametag=Instance.new("StringValue",p)
	nametag.Value=v.Name
	nametag.Name="nametag"
	local PS=Instance.new("StringValue",p)
	PS.Value=o.Name
	PS.Name="part"
	debris:AddItem(p,waittime)
	end
	end
	end
	end
	end
	end
	end
	end
	end
	end
	end
	end
	end
	end
	end)
	end)
	
	
	
	
	
	
	
	
	

end
coroutine.resume(coroutine.create(SCRIPT_KLPC83_FAKESCRIPT))
function SCRIPT_CNHV74_FAKESCRIPT() -- infmoney.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = infmoney
	
	
	local TOGGLED = false -- ;)
	local haha=0
	local oldcash=0
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
			oldcash=game.Players.LocalPlayer.Cash.Value
		end
	end)
	
	while wait() do
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	if script.Parent.Parent.miscenabled.BackgroundColor3==Color3.fromRGB(0, 234, 129) then
	haha=1
	game.Players.LocalPlayer.Cash.Value = 9e9
	else
	if haha==1 then
	haha=0
	game.Players.LocalPlayer.Cash.Value=oldcash
	end
	end
	end
	end
	
	

end
coroutine.resume(coroutine.create(SCRIPT_CNHV74_FAKESCRIPT))
function SCRIPT_HRKN77_FAKESCRIPT() -- duration.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = duration
	
	notify=function(stopnu)
	game.StarterGui:SetCore('SendNotification',
	{Title='sprite.club';Text=stopnu;})
	end
	
	
	script.Parent.FocusLost:Connect(function()
	local n=tonumber(script.Parent.Text)
	if n>1 then
	script.Parent.Text="1"
	notify'Using an value above 1 will cause alot of lag!'
	end
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_HRKN77_FAKESCRIPT))
function SCRIPT_TWRC88_FAKESCRIPT() -- aimenabled.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = aimenabled
	
	
	
	
	local TOGGLED = false -- ;)
	local plrs=game:GetService("Players")
	local plr=plrs.LocalPlayer
	local mouse=plr:GetMouse()
	local smallest=math.huge
	local camera=workspace.CurrentCamera
	local fov=tonumber(script.Parent.Parent.fov.Text)
	local smooth=tonumber(script.Parent.Parent.smoothness.Text)
	local inptSrvc=game:GetService("UserInputService")
	local ok
	
	script.Parent.MouseButton1Click:Connect(function()
		TOGGLED = not TOGGLED
		if TOGGLED == false then
			script.Parent.BackgroundColor3 = Color3.fromRGB(93, 93, 93)
		else
			script.Parent.BackgroundColor3 = Color3.fromRGB(0, 234, 129)
		end
	end)
	
	
	local function getnearest()
	smallest=math.huge
	for _,v in pairs(plrs:GetChildren()) do
	if v~=plr then
	if v:FindFirstChild("Status") then
	if v.Status.Team.Value~=plr.Status.Team.Value then
	if workspace:FindFirstChild(v.Name) then
	if v.Character:FindFirstChild("Humanoid") then
	if v.Character.Humanoid.Health > 0 then
	local worldPoint = v.Character.Head.Position
	local vector, onScreen = camera:WorldToScreenPoint(worldPoint)
	local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
	if smallest>magnitude then
	smallest=magnitude
	ok=v
	end
	end
	end
	end
	end
	end
	end
	end
	end
	
	game['Run Service'].RenderStepped:connect(function()
	if script.Parent.BackgroundColor3 == Color3.fromRGB(0, 234, 129) then
	getnearest()
	fov=tonumber(script.Parent.Parent.fov.Text)
	smooth=tonumber(script.Parent.Parent.smoothness.Text)
	if inptSrvc:IsMouseButtonPressed(0) then
	if workspace:FindFirstChild(ok.Name) then
	if ok.Character:FindFirstChild("Humanoid") then
	if ok.Character:FindFirstChild("Head") then
	if ok.Character.Humanoid.Health>0.1 then
	local worldPoint = ok.Character.Head.Position
	local vector, onScreen = camera:WorldToScreenPoint(worldPoint)
	local magnitude = (Vector2.new(mouse.X, mouse.Y) - Vector2.new(vector.X, vector.Y)).magnitude
	if magnitude<fov then
	local magnitudeX = mouse.X - vector.X
	local magnitudeY = mouse.Y - vector.Y
	local xsmooth=magnitudeX/smooth
	local ysmooth=magnitudeY/smooth
	mousemoverel(-xsmooth,-ysmooth)
	end
	end
	end
	end
	end
	end
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_TWRC88_FAKESCRIPT))
function SCRIPT_XFNB65_FAKESCRIPT() -- poop.LocalScript 
	local script = Instance.new('LocalScript')
	script.Parent = poop
	
	local MainGui = script.Parent.Main
	local cursor = script.Parent.cursor
	
	
	function onKeyPress(inputObject, gameProcessedEvent)
		if inputObject.KeyCode == Enum.KeyCode.Insert then
	
	if MainGui.Visible == true then
	MainGui.Visible = false
	else
	MainGui.Visible = true
	end
	end
	end
	
	game:GetService("UserInputService").InputBegan:connect(onKeyPress)
	
	game['Run Service'].Stepped:connect(function()
	
	local mouse = game.Players.LocalPlayer:GetMouse()
	cursor.Position = UDim2.new(0, mouse.X, 0, mouse.Y)
	
	if MainGui.Visible == true then 
	cursor.Visible = true
	else
	cursor.Visible = false
	end
	
	
	
	
		if MainGui.Visible == true then
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.Default
			
		else
		
			game:GetService("UserInputService").MouseBehavior = Enum.MouseBehavior.LockCenter
		end
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_XFNB65_FAKESCRIPT))