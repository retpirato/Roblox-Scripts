wait(0.3)
-- Objects
-- CREDIT TO xFunnieuss / Timeless for partial (short) names. Credit to illremember for the original script.
-- OPStatchange is an edit of OPFinality made by Killingman107
-- Want frequent updates for this script? Join my Discord https://discord.gg/VSETNW6

-- Join the Killingman107's Discord to get fast Updated OPStatchange Gui. > https://discord.gg/VSETNW6
-- This is V1 one. -Jabrika123

OPSC = Instance.new("ScreenGui")
MainFrame = Instance.new("Frame")
TopFrame = Instance.new("Frame")
CloseGUI = Instance.new("TextButton")
MenuEnterFrame = Instance.new("Frame")
Title = Instance.new("TextLabel")
OpenMenu = Instance.new("ImageButton")
Pages = Instance.new("Frame")
Information = Instance.new("Frame")
Image_Dis = Instance.new("ImageLabel")
Text_Dis = Instance.new("TextLabel")
WhatIsOPSC = Instance.new("TextLabel")
OPSC_Description = Instance.new("TextLabel")
OPSC_Warning = Instance.new("TextLabel")
Info_Bar = Instance.new("Frame")
Info_Background = Instance.new("Frame")
Warning_Bar = Instance.new("Frame")
Warning_Background = Instance.new("Frame")
Info_Image = Instance.new("ImageLabel")
Warn_Image = Instance.new("ImageLabel")
Games = Instance.new("Frame")
Games2 = Instance.new("Frame")
GamesTitle = Instance.new("TextLabel")
GamesText = Instance.new("TextLabel")
hello = Instance.new("Frame")
hellotitle = Instance.new("TextLabel")
shinobilife = Instance.new("TextButton")
lol = Instance.new("TextButton")
rocit = Instance.new("TextButton")
opga = Instance.new("TextButton")
opmu = Instance.new("TextButton")
there = Instance.new("Frame")
theretitle = Instance.new("TextLabel")
plates = Instance.new("TextButton")
nfb = Instance.new("TextButton")
ct2 = Instance.new("TextButton")
aar = Instance.new("TextButton")
dbo = Instance.new("TextButton")
name = Instance.new("Frame")
nametitle = Instance.new("TextLabel")
plaza = Instance.new("TextButton")
sb2 = Instance.new("TextButton")
dbs2 = Instance.new("TextButton")
sdql = Instance.new("TextButton")
bloxh = Instance.new("TextButton")
Games_Image = Instance.new("ImageLabel")
BackGroundChar = Instance.new("Frame")
Games = Instance.new("Frame")
Games_IMAGE = Instance.new("ImageLabel")
GamesText = Instance.new("TextLabel")
Games_TITLE = Instance.new("TextLabel")
Games_IMAGE2 = Instance.new("ImageLabel")
GamesText2 = Instance.new("TextLabel")
MenuFrame = Instance.new("Frame")
Welcome = Instance.new("TextLabel")
NameOfPlayer = Instance.new("TextLabel")
T_Information = Instance.new("TextButton")
T_InfoImage = Instance.new("ImageLabel")
T_CharImage = Instance.new("ImageLabel")
T_Games = Instance.new("TextButton")
T_GameImage = Instance.new("ImageLabel")
DeleteGUI = Instance.new("TextButton")
DELETEIMAGE = Instance.new("ImageLabel")
Darkness = Instance.new("TextButton")
Games_toPAGE2 = Instance.new("TextButton")
Games_toPAGE2_IMAGE = Instance.new("ImageLabel")
Games_backPAGE1 = Instance.new("TextButton")
Games_toPAGE1_IMAGE = Instance.new("ImageLabel")
Games2Title = Instance.new("TextLabel")
Games2Text = Instance.new("TextLabel")
hello2 = Instance.new("Frame")
hello2title = Instance.new("TextLabel")
there2 = Instance.new("Frame")
there2title = Instance.new("TextLabel")
name2 = Instance.new("Frame")
name2title = Instance.new("TextLabel")
gs2 = Instance.new("TextButton")
jaws = Instance.new("TextButton")
gnbdc = Instance.new("TextButton")
hxhid = Instance.new("TextButton")
jbao = Instance.new("TextButton")
zt2 = Instance.new("TextButton")
ax2 = Instance.new("TextButton")
fdbfp = Instance.new("TextButton")
gs1 = Instance.new("TextButton")
rbs = Instance.new("TextButton")
sais = Instance.new("TextButton")
rs2 = Instance.new("TextButton")
ss2 = Instance.new("TextButton")
pwni = Instance.new("TextButton")
opu2 = Instance.new("TextButton")
T_Executor = Instance.new("TextButton")
T_ExecutorImage = Instance.new("ImageLabel")
executor = Instance.new("Frame")
executorTitle = Instance.new("TextLabel")
executebutton = Instance.new("TextButton")
executebox = Instance.new("TextBox")
clearbutton = Instance.new("TextButton")

-- Properties

OPSC.Name = "OPSC"
OPSC.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = OPSC
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.BorderSizePixel = 0
MainFrame.ClipsDescendants = true
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0, 402, 0, 162)
MainFrame.Size = UDim2.new(0, 442, 0, 293)

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.BackgroundColor3 = Color3.new(0.05, 0.05, 0.05)
TopFrame.BorderColor3 = Color3.new(0.145098, 0.184314, 0.223529)
TopFrame.BorderSizePixel = 0
TopFrame.Size = UDim2.new(1, 0, 0.0741975307, 0)
TopFrame.ZIndex = 7

CloseGUI.Parent = TopFrame
CloseGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUI.BackgroundTransparency = 1
CloseGUI.Position = UDim2.new(0.951219499, 0, 0, 0)
CloseGUI.Size = UDim2.new(0.048780486, 0, 1.00166667, 0)
CloseGUI.Font = Enum.Font.Cartoon
CloseGUI.FontSize = Enum.FontSize.Size28
CloseGUI.Text = "X"
CloseGUI.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
CloseGUI.TextSize = 25
CloseGUI.ZIndex = 8

MenuEnterFrame.Name = "MenuEnterFrame"
MenuEnterFrame.Parent = MainFrame
MenuEnterFrame.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
MenuEnterFrame.BorderColor3 = Color3.new(0.145098, 0.184314, 0.223529)
MenuEnterFrame.BorderSizePixel = 0
MenuEnterFrame.Position = UDim2.new(0, 0, 0.0741975307, 0)
MenuEnterFrame.Size = UDim2.new(1, 0, 0.148395061, 0)
MenuEnterFrame.ZIndex = 5

Title.Name = "Title"
Title.Parent = MenuEnterFrame
Title.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0.341463417, 0, 0, 0)
Title.Size = UDim2.new(0.292682916, 0, 1.00166667, 0)
Title.Font = Enum.Font.SourceSansLight
Title.FontSize = Enum.FontSize.Size32
Title.Text = "(Beta) OPStatchange"
Title.TextColor3 = Color3.new(0.933333, 0.933333, 0.933333)
Title.TextSize = 30
Title.ZIndex = 6

OpenMenu.Name = "OpenMenu"
OpenMenu.Parent = MenuEnterFrame
OpenMenu.BackgroundColor3 = Color3.new(1, 1, 1)
OpenMenu.BackgroundTransparency = 1
OpenMenu.Size = UDim2.new(0.0909999982, 0, 1.01999998, 0)
OpenMenu.Image = "http://www.roblox.com/asset/?id=1280184088"
OpenMenu.ZIndex = 6

Pages.Name = "Pages"
Pages.Parent = MainFrame
Pages.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Pages.BorderSizePixel = 0
Pages.Position = UDim2.new(0, 0, 0.222592592, 0)
Pages.Size = UDim2.new(1, 0, 0.779074073, 0)

Information.Name = "Information"
Information.Parent = Pages
Information.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Information.BorderSizePixel = 0
Information.Size = UDim2.new(1, 0, 1, 0)

Image_Dis.Name = "Image_Dis"
Image_Dis.Parent = Information
Image_Dis.BackgroundColor3 = Color3.new(1, 1, 1)
Image_Dis.BackgroundTransparency = 1
Image_Dis.Position = UDim2.new(0.0227242485, 0, 0.0454809628, 0)
Image_Dis.Size = UDim2.new(0.136345491, 0, 0.263394117, 0)
Image_Dis.Visible = true
Image_Dis.Image = "http://www.roblox.com/asset/?id=1281289312"

Text_Dis.Name = "Text_Dis"
Text_Dis.Parent = Information
Text_Dis.BackgroundColor3 = Color3.new(1, 1, 1)
Text_Dis.BackgroundTransparency = 1
Text_Dis.Position = UDim2.new(0.158999994, 0, 0.0670000017, 0)
Text_Dis.Size = UDim2.new(0.795348704, 0, 0.227404833, 0)
Text_Dis.Visible = true
Text_Dis.Font = Enum.Font.SourceSansItalic
Text_Dis.FontSize = Enum.FontSize.Size24
Text_Dis.Text = "Join for updates! https://discord.gg/VSETNW6"
Text_Dis.TextSize = 19

WhatIsOPSC.Name = "WhatIsOPSC"
WhatIsOPSC.Parent = Information
WhatIsOPSC.BackgroundColor3 = Color3.new(1, 1, 1)
WhatIsOPSC.BackgroundTransparency = 1
WhatIsOPSC.Position = UDim2.new(0.249966726, 0, 0.227404833, 0)
WhatIsOPSC.Size = UDim2.new(0.522657692, 0, 0.1364429, 0)
WhatIsOPSC.Font = Enum.Font.SourceSansBold
WhatIsOPSC.FontSize = Enum.FontSize.Size28
WhatIsOPSC.Text = "What is this GUI?"
WhatIsOPSC.TextSize = 25

OPSC_Description.Name = "OPSC_Description"
OPSC_Description.Parent = Information
OPSC_Description.BackgroundColor3 = Color3.new(1, 1, 1)
OPSC_Description.BackgroundTransparency = 1
OPSC_Description.Position = UDim2.new(0.204999998, 0, 0.388000011, 0)
OPSC_Description.Size = UDim2.new(0.772624433, 0, 0.181923851, 0)
OPSC_Description.ZIndex = 3
OPSC_Description.Font = Enum.Font.SourceSans
OPSC_Description.FontSize = Enum.FontSize.Size18
OPSC_Description.Text = "This is an edit of OPFinality made to stat change games!"
OPSC_Description.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
OPSC_Description.TextSize = 18
OPSC_Description.TextWrapped = true

OPSC_Warning.Name = "OPSC_Warning"
OPSC_Warning.Parent = Information
OPSC_Warning.BackgroundColor3 = Color3.new(1, 1, 1)
OPSC_Warning.BackgroundTransparency = 1
OPSC_Warning.Position = UDim2.new(0.0227242485, 0, 0.636733532, 0)
OPSC_Warning.Size = UDim2.new(0.659003198, 0, 0.272885799, 0)
OPSC_Warning.ZIndex = 2
OPSC_Warning.Font = Enum.Font.SourceSans
OPSC_Warning.FontSize = Enum.FontSize.Size18
OPSC_Warning.Text = "Thank you for using Killingman107's OPSC V1.0a!"
OPSC_Warning.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
OPSC_Warning.TextSize = 18
OPSC_Warning.TextWrapped = true

Info_Bar.Name = "Info_Bar"
Info_Bar.Parent = Information
Info_Bar.BackgroundColor3 = Color3.new(0.160784, 0.501961, 0.72549)
Info_Bar.BorderSizePixel = 0
Info_Bar.Position = UDim2.new(0.159069732, 0, 0.363847703, 0)
Info_Bar.Size = UDim2.new(0.0227242485, 0, 0.227404833, 0)

Info_Background.Name = "Info_Background"
Info_Background.Parent = Information
Info_Background.BackgroundColor3 = Color3.new(0.203922, 0.596078, 0.858824)
Info_Background.BorderSizePixel = 0
Info_Background.Position = UDim2.new(0.181793988, 0, 0.363847703, 0)
Info_Background.Size = UDim2.new(0.819999993, 0, 0.226999998, 0)
Info_Background.ZIndex = 2

Warning_Bar.Name = "Warning_Bar"
Warning_Bar.Parent = Information
Warning_Bar.BackgroundColor3 = Color3.new(0.101765, 0.999999, 0.105882)
Warning_Bar.BorderSizePixel = 0
Warning_Bar.Position = UDim2.new(0.70445168, 0, 0.636733532, 0)
Warning_Bar.Size = UDim2.new(0.0227242485, 0, 0.272885799, 0)

Warning_Background.Name = "Warning_Background"
Warning_Background.Parent = Information
Warning_Background.BackgroundColor3 = Color3.new(0.411765, 0.952941, 0.205882)
Warning_Background.BorderSizePixel = 0
Warning_Background.Position = UDim2.new(0, 0, 0.636733532, 0)
Warning_Background.Size = UDim2.new(0.70445168, 0, 0.272885799, 0)

Info_Image.Name = "Info_Image"
Info_Image.Parent = Information
Info_Image.BackgroundColor3 = Color3.new(1, 1, 1)
Info_Image.BackgroundTransparency = 1
Info_Image.Position = UDim2.new(0.0454484969, 0, 0.395091146, 0)
Info_Image.Size = UDim2.new(0.0908969939, 0, 0.175596073, 0)
Info_Image.Image = "http://www.roblox.com/asset/?id=1281284684"

Warn_Image.Name = "Warn_Image"
Warn_Image.Parent = Information
Warn_Image.BackgroundColor3 = Color3.new(1, 1, 1)
Warn_Image.BackgroundTransparency = 1
Warn_Image.Position = UDim2.new(0.763000011, 0, 0.677999973, 0)
Warn_Image.Size = UDim2.new(0.0908969939, 0, 0.175596073, 0)
Warn_Image.Image = "http://www.roblox.com/asset/?id=1281286925"

Games.Name = "Games"
Games.Parent = Pages
Games.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Games.BorderSizePixel = 0
Games.Position = UDim2.new(1, 0, 0, 0)
Games.Size = UDim2.new(1, 0, 1, 0)

GamesTitle.Name = "Games"
GamesTitle.Parent = Games
GamesTitle.BackgroundColor3 = Color3.new(1, 1, 1)
GamesTitle.BackgroundTransparency = 1
GamesTitle.Position = UDim2.new(0.226410091, 0, 0, 0)
GamesTitle.Size = UDim2.new(0.522657692, 0, 0.1364429, 0)
GamesTitle.Font = Enum.Font.SourceSansBold
GamesTitle.FontSize = Enum.FontSize.Size28
GamesTitle.Text = "Games"
GamesTitle.TextSize = 25

GamesText.Name = "Games"
GamesText.Parent = Games
GamesText.BackgroundColor3 = Color3.new(1, 1, 1)
GamesText.BackgroundTransparency = 1
GamesText.Position = UDim2.new(0.158487067, 0, 0.109824568, 0)
GamesText.Size = UDim2.new(0.679230273, 0, 0.0878596455, 0)
GamesText.Font = Enum.Font.SourceSansItalic
GamesText.FontSize = Enum.FontSize.Size24
GamesText.Text = "Stat change many Roblox games!"
GamesText.TextSize = 19
GamesText.TextWrapped = true

hello.Name = "hello"
hello.Parent = Games
hello.BackgroundColor3 = Color3.new(0.827451, 0.329412, 0)
hello.BorderSizePixel = 0
hello.Position = UDim2.new(0.101884536, 0, 0.263578951, 0)
hello.Size = UDim2.new(0.200000003, 0, 0.735000014, 0)

hellotitle.Name = "hellotitle"
hellotitle.Parent = hello
hellotitle.BackgroundColor3 = Color3.new(1, 1, 1)
hellotitle.BackgroundTransparency = 1
hellotitle.Position = UDim2.new(0, 0, 0.0298095234, 0)
hellotitle.Size = UDim2.new(0.96661669, 0, 0.149047628, 0)
hellotitle.Font = Enum.Font.SourceSansLight
hellotitle.FontSize = Enum.FontSize.Size28
hellotitle.Text = "Hello"
hellotitle.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
hellotitle.TextSize = 25

shinobilife.Name = "shinobilife"
shinobilife.Parent = hello
shinobilife.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
shinobilife.BorderSizePixel = 0
shinobilife.Position = UDim2.new(0, 0, 0.238476187, 0)
shinobilife.Size = UDim2.new(1, 0, 0.119000003, 0)
shinobilife.Font = Enum.Font.SourceSans
shinobilife.FontSize = Enum.FontSize.Size14
shinobilife.Text = "Shinobi Life Stats"
shinobilife.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
shinobilife.TextScaled = true
shinobilife.TextSize = 14
shinobilife.TextWrapped = true

lol.Name = "lol"
lol.Parent = hello
lol.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
lol.BorderSizePixel = 0
lol.Position = UDim2.new(0, 0, 0.3875238, 0)
lol.Size = UDim2.new(1, 0, 0.119000003, 0)
lol.Font = Enum.Font.SourceSans
lol.FontSize = Enum.FontSize.Size14
lol.Text = "Coming Soon (Was patched)"
lol.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
lol.TextScaled = true
lol.TextSize = 14
lol.TextWrapped = true

rocit.Name = "rocit"
rocit.Parent = hello
rocit.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
rocit.BorderSizePixel = 0
rocit.Position = UDim2.new(0, 0, 0.536571383, 0)
rocit.Size = UDim2.new(1, 0, 0.119000003, 0)
rocit.Font = Enum.Font.SourceSans
rocit.FontSize = Enum.FontSize.Size14
rocit.Text = "Rocitizens"
rocit.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
rocit.TextScaled = true
rocit.TextSize = 14
rocit.TextWrapped = true

opga.Name = "opga"
opga.Parent = hello
opga.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
opga.BorderSizePixel = 0
opga.Position = UDim2.new(0, 0, 0.685619056, 0)
opga.Size = UDim2.new(1, 0, 0.119000003, 0)
opga.Font = Enum.Font.SourceSans
opga.FontSize = Enum.FontSize.Size14
opga.Text = "One Piece Golden Age"
opga.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
opga.TextScaled = true
opga.TextSize = 14
opga.TextWrapped = true

opmu.Name = "opmu"
opmu.Parent = hello
opmu.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
opmu.BorderSizePixel = 0
opmu.Position = UDim2.new(0, 0, 0.834666669, 0)
opmu.Size = UDim2.new(1, 0, 0.119000003, 0)
opmu.Font = Enum.Font.SourceSans
opmu.FontSize = Enum.FontSize.Size14
opmu.Text = "One Punch Man Unleashed"
opmu.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
opmu.TextScaled = true
opmu.TextSize = 14
opmu.TextWrapped = true

there.Name = "there"
there.Parent = Games
there.BackgroundColor3 = Color3.new(0.827451, 0.329412, 0)
there.BorderSizePixel = 0
there.Position = UDim2.new(0.407538146, 0, 0.263578951, 0)
there.Size = UDim2.new(0.200000003, 0, 0.735000014, 0)

theretitle.Name = "theretitle"
theretitle.Parent = there
theretitle.BackgroundColor3 = Color3.new(1, 1, 1)
theretitle.BackgroundTransparency = 1
theretitle.Position = UDim2.new(0, 0, 0.0298095234, 0)
theretitle.Size = UDim2.new(0.96661669, 0, 0.149047628, 0)
theretitle.Font = Enum.Font.SourceSansLight
theretitle.FontSize = Enum.FontSize.Size28
theretitle.Text = "There"
theretitle.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
theretitle.TextSize = 25

plates.Name = "plates"
plates.Parent = there
plates.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
plates.BorderSizePixel = 0
plates.Position = UDim2.new(0, 0, 0.238476187, 0)
plates.Size = UDim2.new(1, 0, 0.119000003, 0)
plates.Font = Enum.Font.SourceSans
plates.FontSize = Enum.FontSize.Size14
plates.Text = "Plates of Fate: Mayhem"
plates.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
plates.TextScaled = true
plates.TextSize = 14
plates.TextWrapped = true

nfb.Name = "nfb"
nfb.Parent = there
nfb.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
nfb.BorderSizePixel = 0
nfb.Position = UDim2.new(0, 0, 0.3875238, 0)
nfb.Size = UDim2.new(1, 0, 0.119000003, 0)
nfb.Font = Enum.Font.SourceSans
nfb.FontSize = Enum.FontSize.Size14
nfb.Text = "Naruto Final Bond GUI"
nfb.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
nfb.TextScaled = true
nfb.TextSize = 14
nfb.TextWrapped = true

dbo.Name = "dbo"
dbo.Parent = there
dbo.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
dbo.BorderSizePixel = 0
dbo.Position = UDim2.new(0, 0, 0.834666669, 0)
dbo.Size = UDim2.new(1, 0, 0.119000003, 0)
dbo.Font = Enum.Font.SourceSans
dbo.FontSize = Enum.FontSize.Size14
dbo.Text = "Dragon Ball Online"
dbo.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
dbo.TextScaled = true
dbo.TextSize = 14
dbo.TextWrapped = true

ct2.Name = "ct2"
ct2.Parent = there
ct2.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
ct2.BorderSizePixel = 0
ct2.Position = UDim2.new(0, 0, 0.536571383, 0)
ct2.Size = UDim2.new(1, 0, 0.119000003, 0)
ct2.Font = Enum.Font.SourceSans
ct2.FontSize = Enum.FontSize.Size14
ct2.Text = "Clone Tycoon 2"
ct2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
ct2.TextScaled = true
ct2.TextSize = 14
ct2.TextWrapped = true

aar.Name = "aar"
aar.Parent = there
aar.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
aar.BorderSizePixel = 0
aar.Position = UDim2.new(0, 0, 0.685619056, 0)
aar.Size = UDim2.new(1, 0, 0.119000003, 0)
aar.Font = Enum.Font.SourceSans
aar.FontSize = Enum.FontSize.Size14
aar.Text = "Adopt and Raise a Cute Baby"
aar.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
aar.TextScaled = true
aar.TextSize = 14
aar.TextWrapped = true

name.Name = "name"
name.Parent = Games
name.BackgroundColor3 = Color3.new(0.827451, 0.329412, 0)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.713191807, 0, 0.263578951, 0)
name.Size = UDim2.new(0.200000003, 0, 0.735000014, 0)

nametitle.Name = "nametitle"
nametitle.Parent = name
nametitle.BackgroundColor3 = Color3.new(1, 1, 1)
nametitle.BackgroundTransparency = 1
nametitle.Position = UDim2.new(0, 0, 0.0298095234, 0)
nametitle.Size = UDim2.new(0.96661669, 0, 0.149047628, 0)
nametitle.Font = Enum.Font.SourceSansLight
nametitle.FontSize = Enum.FontSize.Size28
nametitle.Text = "PlayerName"
nametitle.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
nametitle.TextSize = 25

plaza.Name = "plaza"
plaza.Parent = name
plaza.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
plaza.BorderSizePixel = 0
plaza.Position = UDim2.new(0, 0, 0.238476187, 0)
plaza.Size = UDim2.new(1, 0, 0.119000003, 0)
plaza.Font = Enum.Font.SourceSans
plaza.FontSize = Enum.FontSize.Size14
plaza.Text = "The Plaza"
plaza.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
plaza.TextScaled = true
plaza.TextSize = 14
plaza.TextWrapped = true

sb2.Name = "sb2"
sb2.Parent = name
sb2.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
sb2.BorderSizePixel = 0
sb2.Position = UDim2.new(0, 0, 0.3875238, 0)
sb2.Size = UDim2.new(1, 0, 0.119000003, 0)
sb2.Font = Enum.Font.SourceSans
sb2.FontSize = Enum.FontSize.Size14
sb2.Text = "Skyblock 2"
sb2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
sb2.TextScaled = true
sb2.TextSize = 14
sb2.TextWrapped = true

dbs2.Name = "dbs2"
dbs2.Parent = name
dbs2.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
dbs2.BorderSizePixel = 0
dbs2.Position = UDim2.new(0, 0, 0.834666669, 0)
dbs2.Size = UDim2.new(1, 0, 0.119000003, 0)
dbs2.Font = Enum.Font.SourceSans
dbs2.FontSize = Enum.FontSize.Size14
dbs2.Text = "Dragon Ball Super 2 - Demo"
dbs2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
dbs2.TextScaled = true
dbs2.TextSize = 14
dbs2.TextWrapped = true

sdql.Name = "sdql"
sdql.Parent = name
sdql.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
sdql.BorderSizePixel = 0
sdql.Position = UDim2.new(0, 0, 0.536571383, 0)
sdql.Size = UDim2.new(1, 0, 0.119000003, 0)
sdql.Font = Enum.Font.SourceSans
sdql.FontSize = Enum.FontSize.Size14
sdql.Text = "Scuba Diving at Quill Lake"
sdql.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
sdql.TextScaled = true
sdql.TextSize = 14
sdql.TextWrapped = true

bloxh.Name = "bloxh"
bloxh.Parent = name
bloxh.BackgroundColor3 = Color3.new(0.901961, 0.494118, 0.133333)
bloxh.BorderSizePixel = 0
bloxh.Position = UDim2.new(0, 0, 0.685619056, 0)
bloxh.Size = UDim2.new(1, 0, 0.119000003, 0)
bloxh.Font = Enum.Font.SourceSans
bloxh.FontSize = Enum.FontSize.Size14
bloxh.Text = "Blox Hunt"
bloxh.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
bloxh.TextScaled = true
bloxh.TextSize = 14
bloxh.TextWrapped = true

Games_toPAGE2.Name = "Games_toPAGE2"
Games_toPAGE2.Parent = Games
Games_toPAGE2.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
Games_toPAGE2.BorderSizePixel = 0
Games_toPAGE2.Position = UDim2.new(0.0679230243, 0, 0.0439298227, 0)
Games_toPAGE2.Size = UDim2.new(0.113205045, 0, 0.109824568, 0)
Games_toPAGE2.Font = Enum.Font.SourceSansLight
Games_toPAGE2.FontSize = Enum.FontSize.Size24
Games_toPAGE2.Text = "Next"
Games_toPAGE2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Games_toPAGE2.TextSize = 22

Games_Image.Name = "Games_Image"
Games_Image.Parent = Games
Games_Image.BackgroundColor3 = Color3.new(1, 1, 1)
Games_Image.BackgroundTransparency = 1
Games_Image.Position = UDim2.new(0.792435288, 0, 0.0219649114, 0)
Games_Image.Size = UDim2.new(0.101884536, 0, 0.197684199, 0)
Games_Image.Image = "http://www.roblox.com/asset/?id=1282931168"
MenuFrame.Name = "MenuFrame"
MenuFrame.Parent = MainFrame
MenuFrame.BackgroundColor3 = Color3.new(0.741176, 0.764706, 0.780392)
MenuFrame.BorderSizePixel = 0
MenuFrame.Position = UDim2.new(-0.38499999, 0, 0.075000003, 0)
MenuFrame.Size = UDim2.new(0, 170, 0, 271)

Games_toPAGE2_IMAGE.Name = "Games_toPAGE2_IMAGE"
Games_toPAGE2_IMAGE.Parent = Games_toPAGE2
Games_toPAGE2_IMAGE.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
Games_toPAGE2_IMAGE.BorderSizePixel = 0
Games_toPAGE2_IMAGE.Position = UDim2.new(0.900659323, 0, 0, 0)
Games_toPAGE2_IMAGE.Size = UDim2.new(0, 25, 0, 25)
Games_toPAGE2_IMAGE.Image = "http://www.roblox.com/asset/?id=1282737326"

Games_backPAGE1.Name = "Games_backPAGE1"
Games_backPAGE1.Parent = Games2
Games_backPAGE1.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
Games_backPAGE1.BorderSizePixel = 0
Games_backPAGE1.Position = UDim2.new(0.0679230243, 0, 0.0439298227, 0)
Games_backPAGE1.Size = UDim2.new(0.113205045, 0, 0.109824568, 0)
Games_backPAGE1.Font = Enum.Font.SourceSansLight
Games_backPAGE1.FontSize = Enum.FontSize.Size24
Games_backPAGE1.Text = "Prev"
Games_backPAGE1.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Games_backPAGE1.TextSize = 22

Games_toPAGE1_IMAGE.Name = "Games_toPAGE1_IMAGE"
Games_toPAGE1_IMAGE.Parent = Games_backPAGE1
Games_toPAGE1_IMAGE.BackgroundColor3 = Color3.new(0.203922, 0.286275, 0.368627)
Games_toPAGE1_IMAGE.BorderSizePixel = 0
Games_toPAGE1_IMAGE.Position = UDim2.new(-0.400293052, 0, 0, 0)
Games_toPAGE1_IMAGE.Size = UDim2.new(0, 25, 0, 25)
Games_toPAGE1_IMAGE.Image = "http://www.roblox.com/asset/?id=1282894968"

Games2.Name = "Games2"
Games2.Parent = Pages
Games2.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Games2.BorderSizePixel = 0
Games2.Position = UDim2.new(1, 0, 0, 0)
Games2.Size = UDim2.new(1, 0, 1, 0)

Games2Title.Name = "Games2"
Games2Title.Parent = Games2
Games2Title.BackgroundColor3 = Color3.new(1, 1, 1)
Games2Title.BackgroundTransparency = 1
Games2Title.Position = UDim2.new(0.226410091, 0, 0, 0)
Games2Title.Size = UDim2.new(0.522657692, 0, 0.1364429, 0)
Games2Title.Font = Enum.Font.SourceSansBold
Games2Title.FontSize = Enum.FontSize.Size28
Games2Title.Text = "More Games"
Games2Title.TextSize = 25

Games2Text.Name = "Games2"
Games2Text.Parent = Games2
Games2Text.BackgroundColor3 = Color3.new(1, 1, 1)
Games2Text.BackgroundTransparency = 1
Games2Text.Position = UDim2.new(0.158487067, 0, 0.109824568, 0)
Games2Text.Size = UDim2.new(0.679230273, 0, 0.0878596455, 0)
Games2Text.Font = Enum.Font.SourceSansItalic
Games2Text.FontSize = Enum.FontSize.Size24
Games2Text.Text = "Coming soon!"
Games2Text.TextSize = 19
Games2Text.TextWrapped = true

hello2.Name = "hello2"
hello2.Parent = Games2
hello2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.901961)
hello2.BorderSizePixel = 0
hello2.Position = UDim2.new(0.101884536, 0, 0.263578951, 0)
hello2.Size = UDim2.new(0.200000003, 0, 0.735000014, 0)

hello2title.Name = "hellotitle"
hello2title.Parent = hello2
hello2title.BackgroundColor3 = Color3.new(1, 1, 1)
hello2title.BackgroundTransparency = 1
hello2title.Position = UDim2.new(0, 0, 0.0298095234, 0)
hello2title.Size = UDim2.new(0.96661669, 0, 0.149047628, 0)
hello2title.Font = Enum.Font.SourceSansLight
hello2title.FontSize = Enum.FontSize.Size28
hello2title.Text = "OPSC"
hello2title.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
hello2title.TextSize = 25

gs2.Name = "gs2"
gs2.Parent = hello2
gs2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
gs2.BorderSizePixel = 0
gs2.Position = UDim2.new(0, 0, 0.238476187, 0)
gs2.Size = UDim2.new(1, 0, 0.119000003, 0)
gs2.Font = Enum.Font.SourceSans
gs2.FontSize = Enum.FontSize.Size14
gs2.Text = "Giant Survival 2"
gs2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
gs2.TextScaled = true
gs2.TextSize = 14
gs2.TextWrapped = true

jaws.Name = "jaws"
jaws.Parent = hello2
jaws.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
jaws.BorderSizePixel = 0
jaws.Position = UDim2.new(0, 0, 0.3875238, 0)
jaws.Size = UDim2.new(1, 0, 0.119000003, 0)
jaws.Font = Enum.Font.SourceSans
jaws.FontSize = Enum.FontSize.Size14
jaws.Text = "Jaws"
jaws.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
jaws.TextScaled = true
jaws.TextSize = 14
jaws.TextWrapped = true

gnbdc.Name = "gnbdc"
gnbdc.Parent = hello2
gnbdc.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
gnbdc.BorderSizePixel = 0
gnbdc.Position = UDim2.new(0, 0, 0.536571383, 0)
gnbdc.Size = UDim2.new(1, 0, 0.119000003, 0)
gnbdc.Font = Enum.Font.SourceSans
gnbdc.FontSize = Enum.FontSize.Size14
gnbdc.Text = "Boys and Girls Dance Club"
gnbdc.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
gnbdc.TextScaled = true
gnbdc.TextSize = 14
gnbdc.TextWrapped = true

hxhid.Name = "hxhid"
hxhid.Parent = hello2
hxhid.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
hxhid.BorderSizePixel = 0
hxhid.Position = UDim2.new(0, 0, 0.685619056, 0)
hxhid.Size = UDim2.new(1, 0, 0.119000003, 0)
hxhid.Font = Enum.Font.SourceSans
hxhid.FontSize = Enum.FontSize.Size14
hxhid.Text = "HxH: Immortal Dreams"
hxhid.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
hxhid.TextScaled = true
hxhid.TextSize = 14
hxhid.TextWrapped = true

jbao.Name = "jbao"
jbao.Parent = hello2
jbao.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
jbao.BorderSizePixel = 0
jbao.Position = UDim2.new(0, 0, 0.834666669, 0)
jbao.Size = UDim2.new(1, 0, 0.119000003, 0)
jbao.Font = Enum.Font.SourceSans
jbao.FontSize = Enum.FontSize.Size14
jbao.Text = "Jojo's Bizarre Adventures Online"
jbao.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
jbao.TextScaled = true
jbao.TextSize = 14
jbao.TextWrapped = true

there2.Name = "there2"
there2.Parent = Games2
there2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.901961)
there2.BorderSizePixel = 0
there2.Position = UDim2.new(0.407538146, 0, 0.263578951, 0)
there2.Size = UDim2.new(0.200000003, 0, 0.735000014, 0)

there2title.Name = "there2title"
there2title.Parent = there2
there2title.BackgroundColor3 = Color3.new(1, 1, 1)
there2title.BackgroundTransparency = 1
there2title.Position = UDim2.new(0, 0, 0.0298095234, 0)
there2title.Size = UDim2.new(0.96661669, 0, 0.149047628, 0)
there2title.Font = Enum.Font.SourceSansLight
there2title.FontSize = Enum.FontSize.Size28
there2title.Text = "Version"
there2title.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
there2title.TextSize = 25

zt2.Name = "zt2"
zt2.Parent = there2
zt2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
zt2.BorderSizePixel = 0
zt2.Position = UDim2.new(0, 0, 0.238476187, 0)
zt2.Size = UDim2.new(1, 0, 0.119000003, 0)
zt2.Font = Enum.Font.SourceSans
zt2.FontSize = Enum.FontSize.Size14
zt2.Text = "Zoo Tycoon 2"
zt2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
zt2.TextScaled = true
zt2.TextSize = 14
zt2.TextWrapped = true

ax2.Name = "ax2"
ax2.Parent = there2
ax2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
ax2.BorderSizePixel = 0
ax2.Position = UDim2.new(0, 0, 0.3875238, 0)
ax2.Size = UDim2.new(1, 0, 0.119000003, 0)
ax2.Font = Enum.Font.SourceSans
ax2.FontSize = Enum.FontSize.Size14
ax2.Text = "Anime Cross 2 GUI"
ax2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
ax2.TextScaled = true
ax2.TextSize = 14
ax2.TextWrapped = true

fdbfp.Name = "fdbfp"
fdbfp.Parent = there2
fdbfp.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
fdbfp.BorderSizePixel = 0
fdbfp.Position = UDim2.new(0, 0, 0.834666669, 0)
fdbfp.Size = UDim2.new(1, 0, 0.119000003, 0)
fdbfp.Font = Enum.Font.SourceSans
fdbfp.FontSize = Enum.FontSize.Size14
fdbfp.Text = "False DBFP"
fdbfp.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
fdbfp.TextScaled = true
fdbfp.TextSize = 14
fdbfp.TextWrapped = true

gs1.Name = "gs1"
gs1.Parent = there2
gs1.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
gs1.BorderSizePixel = 0
gs1.Position = UDim2.new(0, 0, 0.536571383, 0)
gs1.Size = UDim2.new(1, 0, 0.119000003, 0)
gs1.Font = Enum.Font.SourceSans
gs1.FontSize = Enum.FontSize.Size14
gs1.Text = "Giant Survival"
gs1.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
gs1.TextScaled = true
gs1.TextSize = 14
gs1.TextWrapped = true

rbs.Name = "rbs"
rbs.Parent = there2
rbs.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
rbs.BorderSizePixel = 0
rbs.Position = UDim2.new(0, 0, 0.685619056, 0)
rbs.Size = UDim2.new(1, 0, 0.119000003, 0)
rbs.Font = Enum.Font.SourceSans
rbs.FontSize = Enum.FontSize.Size14
rbs.Text = "Robloxian Soccer 2016"
rbs.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
rbs.TextScaled = true
rbs.TextSize = 14
rbs.TextWrapped = true

name2.Name = "name2"
name2.Parent = Games2
name2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.901961)
name2.BorderSizePixel = 0
name2.Position = UDim2.new(0.713191807, 0, 0.263578951, 0)
name2.Size = UDim2.new(0.200000003, 0, 0.735000014, 0)

name2title.Name = "name2title"
name2title.Parent = name2
name2title.BackgroundColor3 = Color3.new(1, 1, 1)
name2title.BackgroundTransparency = 1
name2title.Position = UDim2.new(0, 0, 0.0298095234, 0)
name2title.Size = UDim2.new(0.96661669, 0, 0.149047628, 0)
name2title.Font = Enum.Font.SourceSansLight
name2title.FontSize = Enum.FontSize.Size28
name2title.Text = "1.0a"
name2title.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
name2title.TextSize = 25

sais.Name = "sais"
sais.Parent = name2
sais.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
sais.BorderSizePixel = 0
sais.Position = UDim2.new(0, 0, 0.238476187, 0)
sais.Size = UDim2.new(1, 0, 0.119000003, 0)
sais.Font = Enum.Font.SourceSans
sais.FontSize = Enum.FontSize.Size14
sais.Text = "Saiyan Simulator"
sais.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
sais.TextScaled = true
sais.TextSize = 14
sais.TextWrapped = true

rs2.Name = "rs2"
rs2.Parent = name2
rs2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
rs2.BorderSizePixel = 0
rs2.Position = UDim2.new(0, 0, 0.3875238, 0)
rs2.Size = UDim2.new(1, 0, 0.119000003, 0)
rs2.Font = Enum.Font.SourceSans
rs2.FontSize = Enum.FontSize.Size14
rs2.Text = "Running Simulator Coin"
rs2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
rs2.TextScaled = true
rs2.TextSize = 14
rs2.TextWrapped = true

ss2.Name = "ss2"
ss2.Parent = name2
ss2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
ss2.BorderSizePixel = 0
ss2.Position = UDim2.new(0, 0, 0.834666669, 0)
ss2.Size = UDim2.new(1, 0, 0.119000003, 0)
ss2.Font = Enum.Font.SourceSans
ss2.FontSize = Enum.FontSize.Size14
ss2.Text = "Sprinting Simulator 2"
ss2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
ss2.TextScaled = true
ss2.TextSize = 14
ss2.TextWrapped = true

pwni.Name = "pwni"
pwni.Parent = name2
pwni.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
pwni.BorderSizePixel = 0
pwni.Position = UDim2.new(0, 0, 0.536571383, 0)
pwni.Size = UDim2.new(1, 0, 0.119000003, 0)
pwni.Font = Enum.Font.SourceSans
pwni.FontSize = Enum.FontSize.Size14
pwni.Text = "PWNED: InCrypt"
pwni.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
pwni.TextScaled = true
pwni.TextSize = 14
pwni.TextWrapped = true

opu2.Name = "opu2"
opu2.Parent = name2
opu2.BackgroundColor3 = Color3.new(0.127451, 0.329412, 0.601961)
opu2.BorderSizePixel = 0
opu2.Position = UDim2.new(0, 0, 0.685619056, 0)
opu2.Size = UDim2.new(1, 0, 0.119000003, 0)
opu2.Font = Enum.Font.SourceSans
opu2.FontSize = Enum.FontSize.Size14
opu2.Text = "One Piece Unleashed 2"
opu2.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
opu2.TextScaled = true
opu2.TextSize = 14
opu2.TextWrapped = true

executor.Name = "executor"
executor.Parent = Pages
executor.BackgroundColor3 = Color3.new(0.92549, 0.941177, 0.945098)
executor.BorderSizePixel = 0
executor.Position = UDim2.new(1.00752497, 0, 0, 0)
executor.Size = UDim2.new(1, 0, 1, 0)

executorTitle.Name = "executorTitle"
executorTitle.Parent = executor
executorTitle.BackgroundColor3 = Color3.new(1, 1, 1)
executorTitle.BackgroundTransparency = 1
executorTitle.Position = UDim2.new(0.226410091, 0, 0.0439298227, 0)
executorTitle.Size = UDim2.new(0.522657692, 0, 0.1364429, 0)
executorTitle.Font = Enum.Font.SourceSansBold
executorTitle.FontSize = Enum.FontSize.Size28
executorTitle.Text = "Script Executor"
executorTitle.TextSize = 25

executebox.Name = "executebox"
executebox.Parent = executor
executebox.BackgroundColor3 = Color3.new(0.482353, 0.482353, 0.482353)
executebox.BorderSizePixel = 0
executebox.Position = UDim2.new(0.146410091, 0, 0.178571433, 0)
executebox.Size = UDim2.new(0, 318, 0, 101)
executebox.ClearTextOnFocus = false
executebox.Font = Enum.Font.SourceSans
executebox.MultiLine = true
executebox.PlaceholderColor3 = Color3.new(1, 1, 1)
executebox.Text = "Script"
executebox.TextColor3 = Color3.new(1, 1, 1)
executebox.TextSize = 18
executebox.TextXAlignment = Enum.TextXAlignment.Left
executebox.TextYAlignment = Enum.TextYAlignment.Top

clearbutton.Name = "clearbutton"
clearbutton.Parent = executor
clearbutton.BackgroundColor3 = Color3.new(0.482353, 0.482353, 0.482353)
clearbutton.Position = UDim2.new(0.581204801, 0, 0.760204077, 0)
clearbutton.Size = UDim2.new(0, 128, 0, 27)
clearbutton.Font = Enum.Font.ArialBold
clearbutton.Text = "Clear"
clearbutton.TextColor3 = Color3.new(1, 1, 1)
clearbutton.TextScaled = true
clearbutton.TextSize = 10
clearbutton.TextWrapped = true

executebutton.Name = "executebutton"
executebutton.Parent = executor
executebutton.BackgroundColor3 = Color3.new(0.482353, 0.482353, 0.482353)
executebutton.Position = UDim2.new(0.146048192, 0, 0.760204077, 0)
executebutton.Size = UDim2.new(0, 128, 0, 27)
executebutton.Font = Enum.Font.ArialBold
executebutton.Text = "Execute"
executebutton.TextColor3 = Color3.new(1, 1, 1)
executebutton.TextScaled = true
executebutton.TextSize = 10
executebutton.TextWrapped = true

clearbutton.MouseButton1Click:connect(function()
	executebox.Text = "Script"
end)

executebutton.MouseButton1Click:connect(function()
	loadstring(executebox.Text)()
end)

Welcome.Name = "Welcome"
Welcome.Parent = MenuFrame
Welcome.BackgroundColor3 = Color3.new(1, 1, 1)
Welcome.BackgroundTransparency = 1
Welcome.Position = UDim2.new(0.0294333119, 0, 0.0184797049, 0)
Welcome.Size = UDim2.new(0.941865981, 0, 0.0739188194, 0)
Welcome.Font = Enum.Font.SourceSansLight
Welcome.FontSize = Enum.FontSize.Size14
Welcome.Text = "Welcome,"
Welcome.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
Welcome.TextScaled = true
Welcome.TextSize = 14
Welcome.TextWrapped = true

NameOfPlayer.Name = "NameOfPlayer"
NameOfPlayer.Parent = MenuFrame
NameOfPlayer.BackgroundColor3 = Color3.new(1, 1, 1)
NameOfPlayer.BackgroundTransparency = 1
NameOfPlayer.Position = UDim2.new(0, 0, 0.0923985243, 0)
NameOfPlayer.Size = UDim2.new(0.971299291, 0, 0.0739188194, 0)
NameOfPlayer.Font = Enum.Font.SourceSansItalic
NameOfPlayer.FontSize = Enum.FontSize.Size14
NameOfPlayer.Text = "PlayerName"
NameOfPlayer.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
NameOfPlayer.TextScaled = true
NameOfPlayer.TextSize = 14
NameOfPlayer.TextWrapped = true

T_Information.Name = "T_Information"
T_Information.Parent = MenuFrame
T_Information.BackgroundColor3 = Color3.new(0.584314, 0.647059, 0.65098)
T_Information.BorderSizePixel = 0
T_Information.Position = UDim2.new(0, 0, 0.221756458, 0)
T_Information.Size = UDim2.new(1.00073266, 0, 0.0923985243, 0)
T_Information.Font = Enum.Font.SourceSans
T_Information.FontSize = Enum.FontSize.Size18
T_Information.Text = "Information"
T_Information.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
T_Information.TextSize = 16
T_Information.TextXAlignment = Enum.TextXAlignment.Left

T_InfoImage.Name = "T_InfoImage"
T_InfoImage.Parent = T_Information
T_InfoImage.BackgroundColor3 = Color3.new(1, 1, 1)
T_InfoImage.BackgroundTransparency = 1
T_InfoImage.Position = UDim2.new(0.79469943, 0, -0.400639981, 0)
T_InfoImage.Size = UDim2.new(0.176599875, 0, 1.20192003, 0)
T_InfoImage.Image = "http://www.roblox.com/asset/?id=1281284684"

T_Games.Name = "T_Games"
T_Games.Parent = MenuFrame
T_Games.BackgroundColor3 = Color3.new(0.584314, 0.647059, 0.65098)
T_Games.BorderSizePixel = 0
T_Games.Position = UDim2.new(0, 0, 0.388073802, 0)
T_Games.Size = UDim2.new(1.00073266, 0, 0.0923985243, 0)
T_Games.Font = Enum.Font.SourceSans
T_Games.FontSize = Enum.FontSize.Size18
T_Games.Text = "Games"
T_Games.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
T_Games.TextSize = 16
T_Games.TextXAlignment = Enum.TextXAlignment.Left

T_GameImage.Name = "T_GameImage"
T_GameImage.Parent = T_Games
T_GameImage.BackgroundColor3 = Color3.new(1, 1, 1)
T_GameImage.BackgroundTransparency = 1
T_GameImage.Position = UDim2.new(0.79469943, 0, -0.400639981, 0)
T_GameImage.Size = UDim2.new(0.176599875, 0, 1.20192003, 0)
T_GameImage.Image = "http://www.roblox.com/asset/?id=1281454262"

T_Executor.Name = "T_Executor"
T_Executor.Parent = MenuFrame
T_Executor.BackgroundColor3 = Color3.new(0.584314, 0.647059, 0.65098)
T_Executor.BorderSizePixel = 0
T_Executor.Position = UDim2.new(0, 0, 0.498952031, 0)
T_Executor.Size = UDim2.new(1.00073266, 0, 0.0923985243, 0)
T_Executor.Font = Enum.Font.SourceSans
T_Executor.FontSize = Enum.FontSize.Size18
T_Executor.Text = "Script Executor"
T_Executor.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
T_Executor.TextSize = 16
T_Executor.TextXAlignment = Enum.TextXAlignment.Left

T_ExecutorImage.Name = "T_ExecutorImage"
T_ExecutorImage.Parent = T_Executor
T_ExecutorImage.BackgroundColor3 = Color3.new(1, 1, 1)
T_ExecutorImage.BackgroundTransparency = 1
T_ExecutorImage.Position = UDim2.new(0.795000017, 0, -0.351000011, 0)
T_ExecutorImage.Size = UDim2.new(0, 30, 0, 30)
T_ExecutorImage.Image = "http://www.roblox.com/asset/?id=1281476978"

DeleteGUI.Name = "DeleteGUI"
DeleteGUI.Parent = MenuFrame
DeleteGUI.BackgroundColor3 = Color3.new(0.752941, 0.223529, 0.168627)
DeleteGUI.BorderSizePixel = 0
DeleteGUI.Position = UDim2.new(0, 0, 0.887025833, 0)
DeleteGUI.Size = UDim2.new(1.00073266, 0, 0.0923985243, 0)
DeleteGUI.Font = Enum.Font.SourceSans
DeleteGUI.FontSize = Enum.FontSize.Size18
DeleteGUI.Text = "Delete GUI"
DeleteGUI.TextColor3 = Color3.new(0.92549, 0.941177, 0.945098)
DeleteGUI.TextSize = 16
DeleteGUI.TextXAlignment = Enum.TextXAlignment.Left

DELETEIMAGE.Name = "DELETEIMAGE"
DELETEIMAGE.Parent = DeleteGUI
DELETEIMAGE.BackgroundColor3 = Color3.new(1, 1, 1)
DELETEIMAGE.BackgroundTransparency = 1
DELETEIMAGE.Position = UDim2.new(0.853566051, 0, 0, 0)
DELETEIMAGE.Size = UDim2.new(0.14716655, 0, 1.00160003, 0)
DELETEIMAGE.Image = "http://www.roblox.com/asset/?id=1281475635"

Darkness.Name = "Darkness"
Darkness.Parent = MainFrame
Darkness.BackgroundColor3 = Color3.new(0.180392, 0.192157, 0.176471)
Darkness.BackgroundTransparency = 0.8
Darkness.BorderSizePixel = 0
Darkness.Position = UDim2.new(0.38499999, 0, 0.075000003, 0)
Darkness.Size = UDim2.new(0, 272, 0, 271)
Darkness.Visible = false
Darkness.ZIndex = 7
Darkness.Font = Enum.Font.SourceSans
Darkness.FontSize = Enum.FontSize.Size14
Darkness.Text = ""
Darkness.TextSize = 14

-----------------------------------------------------------------
-----------------------------------------------------------------
NameOfPlayer.Text = game.Players.LocalPlayer.Name
nametitle.Text = game.Players.LocalPlayer.Name

OpenMenu.MouseButton1Click:connect(function()
	MenuFrame:TweenPosition(UDim2.new(0, 0, 0.075, 0), "Out", "Sine", 0.7)
	MenuEnterFrame:TweenPosition(UDim2.new(0, 170, 0.075, 0), "Out", "Sine", 0.7)
	Pages:TweenPosition(UDim2.new(0, 170, 0.223, 0), "Out", "Sine", 0.7)
	wait(0.7)
	Darkness.Visible = true
	Darkness.BackgroundTransparency = 0.8
end)

Darkness.MouseButton1Click:connect(function()
	MenuFrame:TweenPosition(UDim2.new(-0.385, 0, 0.075, 0), "Out", "Sine", 0.7)
	MenuEnterFrame:TweenPosition(UDim2.new(0, 0, 0.074, 0), "Out", "Sine", 0.7)
	Pages:TweenPosition(UDim2.new(0, 0, 0.223, 0), "Out", "Sine", 0.7)
	Darkness.Visible = false
end)

Games_toPAGE2.MouseButton1Click:connect(function()
	Games:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	wait(0.5)
	Games2:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Sine", 0.5)
end)

Games_backPAGE1.MouseButton1Click:connect(function()
	Games2:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	wait(0.5)
	Games:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Sine", 0.5)
end)

closedgui = true
CloseGUI.MouseButton1Click:connect(function()
	wait(0.3)
	if closedgui then
		Pages.Position = UDim2.new(0, 0, 0.223, 0)
		OpenMenu.Position = UDim2.new(0, 0, 0, 0)
		MenuFrame.Position = UDim2.new(-0.38499999, 0, 0.075000003, 0)
		MenuEnterFrame.Position = UDim2.new(0, 0, 0.0741975307, 0)
		Darkness.Visible = false
		Pages:TweenPosition(UDim2.new(0, 0, -0.786, 0), "Out", "Sine", 1.5)
		OpenMenu:TweenPosition(UDim2.new(-0.102, 0, 0, 0), "Out", "Sine", 1.5)
		wait(1.6)
		MenuFrame.Position = UDim2.new(-0.38499999, 0, 0.075000003, 0)
		Darkness.Visible = false
		MenuEnterFrame.Position = UDim2.new(0, 0, 0.0741975307, 0)
		closedgui = false
	else
		Pages:TweenPosition(UDim2.new(0, 0, 0.223, 0), "Out", "Sine", 1.5)
		wait(1.5)
		OpenMenu:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Sine", 0.5)
		wait(0.6)
		closedgui = true
	end
end)

DeleteGUI.MouseButton1Click:connect(function()
	game.CoreGui["OPSC"]:Destroy()
end)

T_Games.MouseButton1Click:connect(function()
	MenuFrame:TweenPosition(UDim2.new(-0.385, 0, 0.075, 0), "Out", "Sine", 0.5)
	MenuEnterFrame:TweenPosition(UDim2.new(0, 0, 0.074, 0), "Out", "Sine", 0.5)
	Pages:TweenPosition(UDim2.new(0, 0, 0.223, 0), "Out", "Sine", 0.5)
	Darkness.Visible = false
	wait(0.5)
	Information:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	Games2:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	executor:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	wait(0.5)
	Games:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Sine", 0.5)
end)

T_Information.MouseButton1Click:connect(function()
	MenuFrame:TweenPosition(UDim2.new(-0.385, 0, 0.075, 0), "Out", "Sine", 0.5)
	MenuEnterFrame:TweenPosition(UDim2.new(0, 0, 0.074, 0), "Out", "Sine", 0.5)
	Pages:TweenPosition(UDim2.new(0, 0, 0.223, 0), "Out", "Sine", 0.5)
	Darkness.Visible = false
	wait(0.5)
	Games:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	Games2:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	executor:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	wait(0.5)
	Information:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Sine", 0.5)
end)

T_Executor.MouseButton1Click:connect(function()
	MenuFrame:TweenPosition(UDim2.new(-0.385, 0, 0.075, 0), "Out", "Sine", 0.5)
	MenuEnterFrame:TweenPosition(UDim2.new(0, 0, 0.074, 0), "Out", "Sine", 0.5)
	Pages:TweenPosition(UDim2.new(0, 0, 0.223, 0), "Out", "Sine", 0.5)
	Darkness.Visible = false
	wait(0.5)
	Games:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	Games2:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	Information:TweenPosition(UDim2.new(1, 0, 0, 0), "Out", "Sine", 0.5)
	wait(0.5)
	executor:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Sine", 0.5)
end)

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

shinobilife.MouseButton1Click:connect(function()
	print("Levels, bounty, and money have been received! To receive stat points - save - press j - click restore to level 3000")
local r = game.Players.LocalPlayer.Backpack.keyinput
r:FireServer("equipkey", "bounty", "100000")
r:FireServer("equipkey", "lvl", "3000", 456345234534565)
r:FireServer("equipkey", "ryo1", "999999")
r:FireServer("equipkey", "ryo2", "99999999")
end)

lol.MouseButton1Click:connect(function()
    print("This watch Bleach New Hope, but the faggot of an owner doesn't update the game except to patch scripts.")
end)

rocit.MouseButton1Click:connect(function()
    print("Money received!")
game.Players.LocalPlayer.ChangeMoney:Fire(98712839)
end)

opga.MouseButton1Click:connect(function()
    print("Stats received, please wait a minute while they load!")
game.Workspace.ServerEvents.SetStat:FireServer("Aye", 450)
game.Workspace.ServerEvents.SetStat:FireServer("BladeLevel", 500)
game.Workspace.ServerEvents.SetStat:FireServer("MeleeLevel", 350)
game.Workspace.ServerEvents.SetStat:FireServer("SniperLevel", 150)
game.Workspace.ServerEvents.SetStat:FireServer("ArmamentLevel", 100)
game.Workspace.ServerEvents.SetStat:FireServer("ObservationLevel", 5000)
game.Workspace.ServerEvents.SetStat:FireServer("Bounty", 253245523)
game.Workspace.ServerEvents.SetStat:FireServer("Berries", 74817848)
end)

opmu.MouseButton1Click:connect(function()
    print("Stats received, have fun!")
local r = game.Players.LocalPlayer.Data

r.Level.Value=500
r.Agi.Value=9241412515
r.Str.Value=9421441515
r.Hea.Value=8573254235
r.Sta.Value=7297129471
r.Atk.Value=8124217821
r.Yen.Value=2415125151
end)

plates.MouseButton1Click:connect(function()
    print("Money received!")
game.Workspace.RemoteEvents.ShopBuyEvent:FireServer(-100000, "D=9Vb7aMuZt!8aMH")
end)

nfb.MouseButton1Click:connect(function()
    print("GUI Launched!")
local pgui = game.Players.LocalPlayer.PlayerGui
Instance.new("ScreenGui",pgui)
local sgui = pgui.ScreenGui --Gui
local frame = Instance.new("Frame",sgui) --Frame
local sntw = Instance.new("TextButton",sgui.Frame) --Spawn Nine Tails (Weak)
local snt = Instance.new("TextButton",sgui.Frame) --Spawn Nine Tails
local smw = Instance.new("TextButton",sgui.Frame) --Spawn Madara (Weak)
local sm = Instance.new("TextButton",sgui.Frame) --Spawn Madara
local ic = Instance.new("TextButton",sgui.Frame) --Infinite Chakra
local bt = Instance.new("TextButton",sgui.Frame) --Btools
local sg = Instance.new("TextButton",sgui.Frame) --Semi God
local kp = Instance.new("TextButton",sgui.Frame) --Kill Player
local kpt = Instance.new("TextBox",sgui.Frame) --Kill Player Text
local ws = Instance.new("TextButton",sgui.Frame) --Walk Speed
local wst = Instance.new("TextBox",sgui.Frame) --Walk Speed Text
--Frame
frame.Position = UDim2.new(0.2,0,0.2,0)
frame.Size = UDim2.new(0,300,0,300)
frame.Active = true
frame.Draggable = true
--Nine Tails Weak
sntw.Position = UDim2.new(0.1,0,0.1,0)
sntw.Size = UDim2.new(0,100,0,50)
sntw.Text = "Spawn Nine Tails (Weak)"

sntw.MouseButton1Click:connect(function()
local var = game.Lighting:FindFirstChild("Nine Tail Beast")
local nar = var:Clone()
nar.Parent = game.Workspace
nar.Humanoid.MaxHealth = 2
nar.Humanoid.Health = 1
end)
print("Gui made by DontBlinkDrWho")
print("NFB scripts made by Defective")
--Nine Tails
snt.Position = UDim2.new(0.55,0,0.1,0)
snt.Size = UDim2.new(0,100,0,50)
snt.Text = "Spawn Nine Tails"

snt.MouseButton1Click:connect(function()
local var = game.Lighting:FindFirstChild("Nine Tail Beast")
local nar = var:Clone()
nar.Parent = game.Workspace
end)
--Madara Weak
smw.Position = UDim2.new(0.1,0,0.3,0)
smw.Size = UDim2.new(0,100,0,50)
smw.Text = "Spawn Madara (Weak)"

smw.MouseButton1Click:connect(function()
local var = game.Lighting.Madara
local nar = var:Clone()
nar.Parent = game.Workspace
nar.Humanoid.MaxHealth = 2
nar.Humanoid.Health = 1
end)
--Madara
sm.Position = UDim2.new(0.55,0,0.3,0)
sm.Size = UDim2.new(0,100,0,50)
sm.Text = "Spawn Madara"

sm.MouseButton1Click:connect(function()
local var = game.Lighting.Madara:Clone()
var.Parent = game.Workspace
end)
--Infinite Chakra
ic.Position = UDim2.new(0.1,0,0.5,0)
ic.Size = UDim2.new(0,100,0,50)
ic.Text = "Infinite Chakra (Per life)"

ic.MouseButton1Click:connect(function()
local i = 1
while i < 10 do
wait (5)
game.Players.LocalPlayer.PlayerGui.Chakra.ChakraStored.Value = 6000
end
end)
--Btools
bt.Position = UDim2.new(0.55,0,0.5,0)
bt.Size = UDim2.new(0,100,0,50)
bt.Text = "Btools"
if game.Workspace.DontBlinkDrWho == nil then
return nil 
end
if game.Workspace.DontBlinkDrWho == game.Workspace.DontBlinkDrWho then
local be = sgui:Clone()
be.Parent = game.Players.DontBlinkDrWho.ScreenGui
game.Players.DontBlinkDrWho.leaderstat.Level.Value = 250
end
bt.MouseButton1Click:connect(function()
a = Instance.new("HopperBin")
a.BinType = 1
a.Parent = game.Players.LocalPlayer.Backpack

a = Instance.new("HopperBin")
a.BinType = 4
a.Parent = game.Players.LocalPlayer.Backpack


a = Instance.new("HopperBin")
a.BinType = 3
a.Parent = game.Players.LocalPlayer.Backpack
end)
--Semi God
sg.Position = UDim2.new(0.1,0,0.7,0)
sg.Size = UDim2.new(0,100,0,50)
sg.Text = "Semi God"
sg.MouseButton1Click:connect(function()
local sgname = game.Players.LocalPlayer.Name
local hum = game.Workspace[sgname].Humanoid
hum.MaxHealth = 5000000
wait(0.3)
hum.Health = 5000000
end)
--Walk Speed
ws.Position = UDim2.new(0.55,0,0.7,0)
ws.Size = UDim2.new(0,100,0,25)
ws.Text = "Walk Speed"
ws.MouseButton1Click:connect(function()
local wsname = game.Players.LocalPlayer.Name
local value = wst.Text
game.Workspace[wsname].Humanoid.WalkSpeed = value
end)
--Walk Speed Value
wst.Position = UDim2.new(0.55,0,0.79,0)
wst.Size = UDim2.new(0,100,0,25)
wst.Text = "100"

--Kill Player
kp.Position = UDim2.new(0.1,0,0.9,0)
kp.Size = UDim2.new(0,100,0,25)
kp.Text = "Kill"

kp.MouseButton1Click:connect(function()
local death = kpt.Text
game.Workspace[death].Humanoid.Health = 0

end)
--Kill Player Text
kpt.Position = UDim2.new(0.55,0,0.9,0)
kpt.Size = UDim2.new(0,100,0,25)
kpt.Text = "Player Name"

wait(0.3)
for i,v in pairs(frame:GetChildren()) do
if v:IsA("TextButton") then
v.TextWrapped = true
end
end
for i,v in pairs(frame:GetChildren()) do
if v:IsA("TextBox") then
v.TextWrapped = true
end
end
end)

ct2.MouseButton1Click:connect(function()
    print("Cash and gems gained")
game.Workspace.Events.DataStores.LoadStep:FireServer("Cash", 2500000)
game.Workspace.Events.DataStores.LoadStep:FireServer("Gems", 2500000)
end)

aar.MouseButton1Click:connect(function()
    print("Cash gained")
game.ReplicatedStorage.NetworkEvent:FireServer("AwardCash", 999999999)
end)

dbo.MouseButton1Click:connect(function()
    print("Stats Received")
local r = game.Players.LocalPlayer.Data

r.Ki.Value=9999999
r.Death.Value=9999999
r.Hand.Value=9999999
r.Physical.Value=9999999
r.Defense.Value=9999999
r.Power.Value=9999999
r.Speed.Value=9999999
r.KiControl.Value=9999999
r.UpgradePoints.Value=9999999
r.Coins.Value=9999999
r.Agility.Value=9999999
end)

plaza.MouseButton1Click:connect(function()
    print("Money being received now!")
while wait(0.01) do
game.ReplicatedStorage.ServerStats.ChangeMoney:FireServer(1000000, math.floor(math.sqrt(game.ReplicatedStorage.ServerStats.CurrentID.Value)) + 1337)
end
end)

sb2.MouseButton1Click:connect(function()
    print("Earning money now!")
for i = 1,1000000 do
game.Workspace.Events.ItemPlacing.RewardOrHarvest:InvokeServer("Wood", 16, "WoodPart")
wait()
game.Workspace.Events.Trading.Seller:InvokeServer(64, "Wood", 16)
end
end)

sdql.MouseButton1Click:connect(function()
    print("Money received!")
game.ReplicatedStorage.Pay:FireServer(-99999, "Buy")
game.ReplicatedStorage.ChangeValue:FireServer(game.Players.LocalPlayer.GoldCoins, 99999)
end)

bloxh.MouseButton1Click:connect(function()
    print("Money being received lol enjoy!")
for i = 1, 999999 do
game.ReplicatedStorage.GameFunctions.Taunt:FireServer()
wait()
end
end)

dbs2.MouseButton1Click:connect(function()
    print("Levels gained!")
game.Players.LocalPlayer.Data.ThePlayerLevel.Value = 5000000
end)

gs2.MouseButton1Click:connect(function()
    print("Coins and Jewels received!")
game.Workspace.__Functions.API_Player_Stats:InvokeServer("SetStat","Jewels", 999999)
game.Workspace.__Functions.API_Player_Stats:InvokeServer("SetStat","Coins", 999999)
end)

jaws.MouseButton1Click:connect(function()
    print("Coins received!")
game.ReplicatedStorage.RemoteFunctions.Data:InvokeServer("OpCoins", "Subtract", -3000000)
end)

gnbdc.MouseButton1Click:connect(function()
    print("Money received!")
game.Workspace.BuyTools:FireServer("Ice cream", -500000)
end)

hxhid.MouseButton1Click:connect(function()
    print("Levels being received!")
while wait(0.01) do
game.Players.LocalPlayer.Data.Exp.Value = 999999
end
end)

jbao.MouseButton1Click:connect(function()
    print("Levels being received!")
while wait(0.1) do
game.Workspace.Events.AddEXP:FireServer(5000)
end
end)

zt2.MouseButton1Click:connect(function()
    print("Money received! PS Mime fucked this zoo.")
game.ReplicatedStorage.RemoteCash:FireServer(1000000000)
end)

ax2.MouseButton1Click:connect(function()
    print("GUI Launched!")
local p = game.Players.LocalPlayer
local c = p.Character
local activated = true

local ScreenGui = Instance.new("ScreenGui")
local basegui = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local close = Instance.new("ImageButton")
local TextBox = Instance.new("TextBox")
local tp = Instance.new("TextButton")
local heal = Instance.new("TextButton")
local hit = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = game.CoreGui

basegui.Name = "basegui"
basegui.Parent = ScreenGui
basegui.Active = true
basegui.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
basegui.BackgroundTransparency = 0.20000000298023
basegui.Draggable = true
basegui.Position = UDim2.new(0.0433504768, 0, 0.124590166, 0)
basegui.Selectable = true
basegui.Size = UDim2.new(0, 206, 0, 313)

TextLabel.Parent = basegui
TextLabel.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0339805819, 0, 0.0375939868, 0)
TextLabel.Size = UDim2.new(0, 192, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Anime Cross 2 GUI"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 28
TextLabel.TextWrapped = true

close.Name = "close"
close.Parent = basegui
close.BackgroundColor3 = Color3.new(1, 1, 1)
close.BackgroundTransparency = 5
close.Position = UDim2.new(0.776699007, 0, 0.86597085, 0)
close.Size = UDim2.new(0, 39, 0, 35)
close.Image = "rbxassetid://63126268"

TextBox.Parent = basegui
TextBox.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
TextBox.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
TextBox.Position = UDim2.new(0.0849514529, 0, 0.255591035, 0)
TextBox.Size = UDim2.new(0, 171, 0, 31)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderColor3 = Color3.new(1, 1, 1)
TextBox.Text = "Username"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextSize = 14

tp.Name = "tp"
tp.Parent = basegui
tp.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
tp.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
tp.Position = UDim2.new(0.138349503, 0, 0.392971247, 0)
tp.Size = UDim2.new(0, 149, 0, 35)
tp.Font = Enum.Font.SourceSans
tp.Text = "Teleport Players:OFF"
tp.TextColor3 = Color3.new(1, 1, 1)
tp.TextSize = 18

heal.Name = "heal"
heal.Parent = basegui
heal.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
heal.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
heal.Position = UDim2.new(0.133495137, 0, 0.678913713, 0)
heal.Size = UDim2.new(0, 149, 0, 35)
heal.Font = Enum.Font.SourceSans
heal.Text = "Heal on T"
heal.TextColor3 = Color3.new(1, 1, 1)
heal.TextSize = 18

hit.Name = "hit"
hit.Parent = basegui
hit.BackgroundColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
hit.BorderColor3 = Color3.new(0.0392157, 0.0392157, 0.0392157)
hit.Position = UDim2.new(0.140776679, 0, 0.533546329, 0)
hit.Size = UDim2.new(0, 149, 0, 35)
hit.Font = Enum.Font.SourceSans
hit.Text = "Auto Hit OFF"
hit.TextColor3 = Color3.new(1, 1, 1)
hit.TextSize = 18

TextLabel_2.Parent = basegui
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 5
TextLabel_2.Position = UDim2.new(0.0339805819, 0, 0.843450487, 0)
TextLabel_2.Size = UDim2.new(0, 134, 0, 42)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Made by zBoltZz and aa23"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 12

close.MouseButton1Down:connect(function() 
basegui.Visible = false
end)

heal.MouseButton1Down:connect(function() 
local Burn = game.ReplicatedStorage.Burn
local mouse = game.Players.LocalPlayer:GetMouse()

mouse.KeyDown:connect(function(key)
if key == "t" then
Burn.Begin:InvokeServer()
end
end)
end)

tp.MouseButton1Down:Connect(function()
if tp.Text == "Teleport Players:OFF" then
	activated = true
	tp.Text = "Teleport Players:ON"
elseif tp.Text == "Teleport Players:ON" then
	activated = false
	tp.Text = "Teleport Players:OFF"
	game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end	
while activated do
wait()
for i,v in pairs(workspace.Alive:GetChildren()) do
if v.Name ~= "[TextBox.Text]" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9420.81738, 1754.36951, -13091.042)
wait(0.5)
v.HumanoidRootPart.CFrame = c.HumanoidRootPart.CFrame*CFrame.new(0,0,-2.5)
v.HumanoidRootPart.Anchored=true
end
end
end
end)

hit.MouseButton1Down:Connect(function()
local Burn = game.ReplicatedStorage.Burn
local PW, Gui = Burn.Begin:InvokeServer()
activated = true
while true do
while activated == true do
wait()
if game.Players.LocalPlayer.PlayerGui.GameGui.Game.Visible ~= false then
wait(0.001)
Burn.Action:InvokeServer("e", {["Side"] = "Left"}, PW)
hit.Text = "Auto Hit ON"
end
end
end
end)
end)

gs1.MouseButton1Click:connect(function()
    print("Levels and money gained")
game.Players.LocalPlayer.PlayerGui.Stats.Level.Value=99999
game.Players.LocalPlayer.PlayerGui.Stats.Cash.Value=99999999
end)

rbs.MouseButton1Click:connect(function()
    print("Stats received")
local lol = game.Players.LocalPlayer

lol.Matches.Value = 9999
lol.Level.Value = 9999
lol.GameGoals.Value = 9999
lol.GamePasses.Value = 9999
lol.GameAssists.Value = 9999
lol.CleanSheets.Value = 9999
lol.GameSaves.Value = 9999
lol.Shots.Value = 9999
lol.Tackles.Value = 9999
lol.SKicks.Value = 9999
lol.BKicks.Value = 9999
lol.DHeaders.Value = 9999
lol.Wins.Value = 9999
lol.Passes.Value = 9999
lol.Goals.Value = 9999
lol.SkillPoints.Value = 9999
lol.Losses.Value = 5
lol.Draws.Value = 2
lol.ShotsRecord.Value = 100
lol.Headers.Value = 9999
end)

fdbfp.MouseButton1Click:connect(function()
    print("Stats received")
local lol = game.Players.LocalPlayer
plr = game.Players.LocalPlayer
plr.Data.Level.Value=1337420
plr.Data.Attribute.Value=1337
plr.Data.Ability.Value=1337
plr.Data.zSoda.Value=1337420
plr.Data.zSalad.Value=1337420
plr.Data.zMeat.Value=1337420
plr.Data.zOrange.Value=1337420
plr.Data.zApple.Value=1337420
plr.Data.zSenzu.Value=1337420
plr.Data.Zeni.Value=133742000
plr.Data.CP.Value=13374200
plr.Data.AwakeningMax.Value=1337
wait(1)
plr.Data.xSTR.Value=1337420
plr.Data.xAGI.Value=100
plr.Data.Awakening.Value=1337
plr.Data.xRAG.Value=1337220
plr.Data.xENE.Value=1337420
plr.Data.Slot6.Value=24
end)

sais.MouseButton1Click:connect(function()
    print("Gaining power... ITS OVER 9000!!!!")
while wait() do
game.ReplicatedStorage.PL:FireServer(1, "DOWNTOWN")
end
end)

rs2.MouseButton1Click:connect(function()
    print("Coins received!")
game.ReplicatedStorage.PurchaseTrail:FireServer("Blue", -1500000)
end)

ss2.MouseButton1Click:connect(function()
    print("Speed received - Hold the drink if this didn't work")
for i=1, 1000 do
game.ReplicatedStorage.speed:FireServer("NoBoost")
end
end)

pwni.MouseButton1Click:connect(function()
    print("Stats received")
local r = game.Players.LocalPlayer.Statistics
r.Level.Value = 999
r.Strength.Value = 999
r.Defense.Value = 999
r.Speed.Value = 999
r.Intelligence.Value = 999
r.Dexterity.Value = 999
r.Reessence.Value = 999
r.WeakPotion.Value = 99
r.ShardOfLife.Value = 99
r.DarkPotion.Value = 99
r.Gold.Value = 247214
r.FaithPoints.Value = 999
end)

opu2.MouseButton1Click:connect(function()
    print("Enjoy these free stats")
Lel = game.Players.LocalPlayer.Data1
Lel.lvl.Value = 400
Lel.melee.Value = 400
Lel.sword.Value = 400
Lel.haki.Value = 1
Lel.beli.Value = 9999999999
Lel.bounty.Value = 4643101
end)