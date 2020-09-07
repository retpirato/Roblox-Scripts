-- Thank you for using Arosia, enjoy!

-- Objects

local Arosia = Instance.new("ScreenGui")
local SideTabsBrick = Instance.new("Frame")
local icon = Instance.new("ImageLabel")
local MainFrame = Instance.new("Frame")
local TopRow = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseGUI = Instance.new("TextButton")
local FE_Check = Instance.new("TextLabel")
local SideTabs = Instance.new("Frame")
local TAB_LocalPlayer = Instance.new("TextButton")
local TAB_Others = Instance.new("TextButton")
local TAB_Scripts = Instance.new("TextButton")
local TAB_Credit = Instance.new("TextButton")
local TAB_Games = Instance.new("TextButton")
local Others = Instance.new("Frame")
local PlayerUserEnter = Instance.new("TextBox")
local Guidance = Instance.new("TextLabel")
local Annoy = Instance.new("TextButton")
local Teleport = Instance.new("TextButton")
local View = Instance.new("TextButton")
local Kill = Instance.new("TextButton")
local Attach = Instance.new("TextButton")
local Bring = Instance.new("TextButton")
local Guidance2 = Instance.new("TextLabel")
local NoneSelected = Instance.new("Frame")
local NoneSelectedText1 = Instance.new("TextLabel")
local NoneSelectedText2 = Instance.new("TextLabel")
local NoneSelectedText3 = Instance.new("TextLabel")
local LocalPlayer = Instance.new("Frame")
local GodMode = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local Speed_TXTBOX = Instance.new("TextBox")
local JumpHeight = Instance.new("TextButton")
local JumpHeight_TXTBOX = Instance.new("TextBox")
local Chat = Instance.new("TextButton")
local Chat_TXTBOX = Instance.new("TextBox")
local Respawn = Instance.new("TextButton")
local HipHeight = Instance.new("TextButton")
local HipHeight_TXTBOX = Instance.new("TextBox")
local Noclip = Instance.new("TextButton")
local Sit = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local HideName = Instance.new("TextButton")
local Spam = Instance.new("TextButton")
local Freeze = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local Spin = Instance.new("TextButton")
local NoLimbs = Instance.new("TextButton")
local Seizure = Instance.new("TextButton")
local Games = Instance.new("Frame")
local Scripts = Instance.new("Frame")
local SideFrame = Instance.new("Frame")
local SIDE_Title = Instance.new("TextLabel")
local OpenGUI = Instance.new("TextButton")
local SIDE_FE_Check = Instance.new("TextLabel")
local getimage = game:GetService('ContentProvider')
local ResetDefault = Instance.new("TextButton")
local Push = Instance.new("TextButton")
local ClientFreeze = Instance.new("TextButton")
local Orbit = Instance.new("TextButton")
local BringAll = Instance.new("TextButton")
local AttachAll = Instance.new("TextButton")
local Flatten = Instance.new("TextButton")
local Guidance3 = Instance.new("TextLabel")
local KillAll = Instance.new("TextButton")
local Energize = Instance.new("TextButton")
local GlitchMax = Instance.new("TextButton")
local Energize_TXT = Instance.new("TextLabel")
local GlitchMax_TXT = Instance.new("TextLabel")
local Verspin = Instance.new("TextButton")
local Verspin_TXT = Instance.new("TextLabel")
local Temp = Instance.new("TextLabel")
local Experimental = Instance.new("TextButton")
local CHAOS = Instance.new("TextButton")

-- Properties

Arosia.Name = "Arosia"
Arosia.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = Arosia
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0.309, 0, -1, 0)
MainFrame.Size = UDim2.new(0, 448, 0, 334)

TopRow.Name = "TopRow"
TopRow.Parent = MainFrame
TopRow.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TopRow.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TopRow.BorderSizePixel = 2
TopRow.Size = UDim2.new(0, 448, 0, 24)
TopRow.ZIndex = 7

Title.Name = "Title"
Title.Parent = TopRow
Title.Active = true
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 90, 0, 24)
Title.Font = Enum.Font.ArialBold
Title.FontSize = Enum.FontSize.Size24
Title.Text = "Arosia "
Title.TextColor3 = Color3.new(0.368627, 0.976471, 0.262745)
Title.TextScaled = true
Title.TextSize = 19
Title.TextWrapped = true
Title.ZIndex = 8

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = TopRow
CloseGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUI.BackgroundTransparency = 1
CloseGUI.Position = UDim2.new(0.560000002, 166, 0.100000001, 0)
CloseGUI.Size = UDim2.new(0, 38, 0, 24)
CloseGUI.Font = Enum.Font.ArialBold
CloseGUI.FontSize = Enum.FontSize.Size32
CloseGUI.Text = "X"
CloseGUI.TextColor3 = Color3.new(0.615686, 0, 0)
CloseGUI.TextSize = 30
CloseGUI.ZIndex = 8

FE_Check.Name = "FE_Check"
FE_Check.Parent = TopRow
FE_Check.BackgroundColor3 = Color3.new(1, 1, 1)
FE_Check.BackgroundTransparency = 1
FE_Check.Position = UDim2.new(0.291458786, 0, 0, 0)
FE_Check.Size = UDim2.new(0, 223, 0, 24)
FE_Check.Font = Enum.Font.Highway
FE_Check.FontSize = Enum.FontSize.Size14
FE_Check.Text = "Error loading FE Checker"
FE_Check.TextColor3 = Color3.new(1, 1, 1)
FE_Check.TextScaled = true
FE_Check.TextSize = 14
FE_Check.TextWrapped = true
FE_Check.ZIndex = 8

SideTabs.Name = "SideTabs"
SideTabs.Parent = MainFrame
SideTabs.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
SideTabs.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
SideTabs.BorderSizePixel = 2
SideTabs.Position = UDim2.new(0, 0, 0.0799999982, 0)
SideTabs.Size = UDim2.new(0, 120, 0, 307)
SideTabs.ZIndex = 5

TAB_LocalPlayer.Name = "TAB_LocalPlayer"
TAB_LocalPlayer.Parent = SideTabs
TAB_LocalPlayer.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
TAB_LocalPlayer.BorderSizePixel = 0
TAB_LocalPlayer.Size = UDim2.new(0, 120, 0, 35)
TAB_LocalPlayer.Font = Enum.Font.SourceSansBold
TAB_LocalPlayer.FontSize = Enum.FontSize.Size24
TAB_LocalPlayer.Text = "Local Player"
TAB_LocalPlayer.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
TAB_LocalPlayer.TextSize = 23
TAB_LocalPlayer.TextWrapped = true
TAB_LocalPlayer.ZIndex = 6

TAB_Others.Name = "TAB_Others"
TAB_Others.Parent = SideTabs
TAB_Others.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
TAB_Others.BorderSizePixel = 0
TAB_Others.Position = UDim2.new(0, 0, 0.130510315, 0)
TAB_Others.Size = UDim2.new(0, 120, 0, 35)
TAB_Others.Font = Enum.Font.SourceSansBold
TAB_Others.FontSize = Enum.FontSize.Size28
TAB_Others.Text = "Others"
TAB_Others.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
TAB_Others.TextSize = 27
TAB_Others.TextWrapped = true
TAB_Others.ZIndex = 6

TAB_Scripts.Name = "TAB_Scripts"
TAB_Scripts.Parent = SideTabs
TAB_Scripts.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
TAB_Scripts.BorderSizePixel = 0
TAB_Scripts.Position = UDim2.new(0, 0, 0.261020631, 0)
TAB_Scripts.Size = UDim2.new(0, 120, 0, 35)
TAB_Scripts.Font = Enum.Font.SourceSansBold
TAB_Scripts.FontSize = Enum.FontSize.Size28
TAB_Scripts.Text = "Scripts"
TAB_Scripts.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
TAB_Scripts.TextSize = 27
TAB_Scripts.TextWrapped = true
TAB_Scripts.ZIndex = 6

TAB_Credit.Name = "TAB_Credit"
TAB_Credit.Parent = SideTabs
TAB_Credit.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
TAB_Credit.BorderSizePixel = 0
TAB_Credit.Position = UDim2.new(0, 0, 0.880944669, 0)
TAB_Credit.Size = UDim2.new(0, 120, 0, 37)
TAB_Credit.Font = Enum.Font.SourceSansBold
TAB_Credit.FontSize = Enum.FontSize.Size28
TAB_Credit.Text = "illremember"
TAB_Credit.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
TAB_Credit.TextSize = 25
TAB_Credit.TextStrokeColor3 = Color3.new(1, 0, 0)
TAB_Credit.TextStrokeTransparency = 0.80000001192093
TAB_Credit.TextWrapped = true
TAB_Credit.ZIndex = 6

TAB_Games.Name = "TAB_Games"
TAB_Games.Parent = SideTabs
TAB_Games.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
TAB_Games.BorderSizePixel = 0
TAB_Games.Position = UDim2.new(0, 0, 0.391530931, 0)
TAB_Games.Size = UDim2.new(0, 120, 0, 35)
TAB_Games.Font = Enum.Font.SourceSansBold
TAB_Games.FontSize = Enum.FontSize.Size28
TAB_Games.Text = "Games"
TAB_Games.TextColor3 = Color3.new(0.882353, 0.882353, 0.882353)
TAB_Games.TextSize = 27
TAB_Games.TextWrapped = true
TAB_Games.ZIndex = 6

Others.Name = "Others"
Others.Parent = MainFrame
Others.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
Others.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Others.BorderSizePixel = 2
Others.Position = UDim2.new(0.31400001, -21, 0.180000007, -33)
Others.Size = UDim2.new(0, 328, 0, 307)
Others.Visible = false

PlayerUserEnter.Name = "PlayerUserEnter"
PlayerUserEnter.Parent = Others
PlayerUserEnter.BackgroundColor3 = Color3.new(0.65098, 0.65098, 0.65098)
PlayerUserEnter.BorderSizePixel = 0
PlayerUserEnter.Position = UDim2.new(0.0612446219, 0, 0.0978827327, 0)
PlayerUserEnter.Size = UDim2.new(0, 286, 0, 26)
PlayerUserEnter.Font = Enum.Font.SourceSans
PlayerUserEnter.FontSize = Enum.FontSize.Size14
PlayerUserEnter.Text = ""
PlayerUserEnter.TextScaled = true
PlayerUserEnter.TextSize = 14
PlayerUserEnter.TextWrapped = true

Guidance.Name = "Guidance"
Guidance.Parent = Others
Guidance.BackgroundColor3 = Color3.new(1, 1, 1)
Guidance.BackgroundTransparency = 1
Guidance.Position = UDim2.new(0.183733866, 0, 0, 0)
Guidance.Size = UDim2.new(0, 209, 0, 24)
Guidance.Font = Enum.Font.ArialBold
Guidance.FontSize = Enum.FontSize.Size14
Guidance.Text = "Enter Player Username"
Guidance.TextColor3 = Color3.new(0.258824, 0.690196, 0.211765)
Guidance.TextScaled = true
Guidance.TextSize = 14
Guidance.TextWrapped = true

Annoy.Name = "Annoy"
Annoy.Parent = Others
Annoy.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Annoy.BorderSizePixel = 0
Annoy.Position = UDim2.new(0.0612553172, 0, 0.228393063, 0)
Annoy.Size = UDim2.new(0, 78, 0, 26)
Annoy.Font = Enum.Font.Arial
Annoy.FontSize = Enum.FontSize.Size18
Annoy.Text = "Annoy"
Annoy.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Annoy.TextSize = 18
Annoy.TextWrapped = true

Teleport.Name = "Teleport"
Teleport.Parent = Others
Teleport.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Teleport.BorderSizePixel = 0
Teleport.Position = UDim2.new(0.367531896, 0, 0.228393063, 0)
Teleport.Size = UDim2.new(0, 78, 0, 26)
Teleport.Font = Enum.Font.Arial
Teleport.FontSize = Enum.FontSize.Size18
Teleport.Text = "Teleport"
Teleport.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Teleport.TextSize = 18
Teleport.TextWrapped = true

View.Name = "View"
View.Parent = Others
View.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
View.BorderSizePixel = 0
View.Position = UDim2.new(0.673808455, 0, 0.228393063, 0)
View.Size = UDim2.new(0, 78, 0, 26)
View.Font = Enum.Font.Arial
View.FontSize = Enum.FontSize.Size18
View.Text = "View"
View.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
View.TextSize = 18
View.TextWrapped = true

KillAll.Name = "KillAll"
KillAll.Parent = Others
KillAll.BackgroundColor3 = Color3.new(0.423529, 0.0862745, 0.0627451)
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.0612446219, 0, 0.880944669, 0)
KillAll.Size = UDim2.new(0, 78, 0, 26)
KillAll.Font = Enum.Font.Arial
KillAll.FontSize = Enum.FontSize.Size18
KillAll.Text = "Kill All"
KillAll.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
KillAll.TextSize = 18
KillAll.TextWrapped = true

Attach.Name = "Attach"
Attach.Parent = Others
Attach.BackgroundColor3 = Color3.new(0.415686, 0.423529, 0.0666667)
Attach.BorderSizePixel = 0
Attach.Position = UDim2.new(0.673808455, 0, 0.652551532, 0)
Attach.Size = UDim2.new(0, 78, 0, 26)
Attach.Font = Enum.Font.Arial
Attach.FontSize = Enum.FontSize.Size18
Attach.Text = "Attach"
Attach.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Attach.TextSize = 18
Attach.TextWrapped = true

Bring.Name = "Bring"
Bring.Parent = Others
Bring.BackgroundColor3 = Color3.new(0.415686, 0.423529, 0.0666667)
Bring.BorderSizePixel = 0
Bring.Position = UDim2.new(0.367531896, 0, 0.652551532, 0)
Bring.Size = UDim2.new(0, 78, 0, 26)
Bring.Font = Enum.Font.Arial
Bring.FontSize = Enum.FontSize.Size18
Bring.Text = "Bring"
Bring.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Bring.TextSize = 18
Bring.TextWrapped = true

Guidance2.Name = "Guidance2"
Guidance2.Parent = Others
Guidance2.BackgroundColor3 = Color3.new(1, 1, 1)
Guidance2.BackgroundTransparency = 1
Guidance2.Position = UDim2.new(0.153138295, 0, 0.522041261, 0)
Guidance2.Size = UDim2.new(0, 227, 0, 40)
Guidance2.Font = Enum.Font.ArialBold
Guidance2.FontSize = Enum.FontSize.Size14
Guidance2.Text = "Golden buttons require tools in your backpack before using"
Guidance2.TextColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Guidance2.TextScaled = true
Guidance2.TextSize = 14
Guidance2.TextStrokeColor3 = Color3.new(1, 0.870588, 0.223529)
Guidance2.TextStrokeTransparency = 0.80000001192093
Guidance2.TextWrapped = true

Kill.Name = "Kill"
Kill.Parent = Others
Kill.BackgroundColor3 = Color3.new(0.415686, 0.423529, 0.0666667)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0.0612553172, 0, 0.652551532, 0)
Kill.Size = UDim2.new(0, 78, 0, 26)
Kill.Font = Enum.Font.Arial
Kill.FontSize = Enum.FontSize.Size18
Kill.Text = "Kill"
Kill.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Kill.TextSize = 18
Kill.TextWrapped = true

BringAll.Name = "Bring"
BringAll.Parent = Others
BringAll.BackgroundColor3 = Color3.new(0.423529, 0.0862745, 0.0627451)
BringAll.BorderSizePixel = 0
BringAll.Position = UDim2.new(0.367467731, 0, 0.880944669, 0)
BringAll.Size = UDim2.new(0, 78, 0, 26)
BringAll.Font = Enum.Font.Arial
BringAll.FontSize = Enum.FontSize.Size18
BringAll.Text = "Bring All"
BringAll.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
BringAll.TextSize = 18
BringAll.TextWrapped = true

AttachAll.Name = "Attach"
AttachAll.Parent = Others
AttachAll.BackgroundColor3 = Color3.new(0.423529, 0.0862745, 0.0627451)
AttachAll.BorderSizePixel = 0
AttachAll.Position = UDim2.new(0.673690796, 0, 0.880944669, 0)
AttachAll.Size = UDim2.new(0, 78, 0, 26)
AttachAll.Font = Enum.Font.Arial
AttachAll.FontSize = Enum.FontSize.Size18
AttachAll.Text = "Attach All"
AttachAll.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
AttachAll.TextSize = 18
AttachAll.TextWrapped = true

Flatten.Name = "Flatten"
Flatten.Parent = Others
Flatten.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Flatten.BorderSizePixel = 0
Flatten.Position = UDim2.new(0.367531896, 0, 0.424158514, 0)
Flatten.Size = UDim2.new(0, 78, 0, 26)
Flatten.Font = Enum.Font.Arial
Flatten.FontSize = Enum.FontSize.Size18
Flatten.Text = "Flatten"
Flatten.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Flatten.TextSize = 18
Flatten.TextWrapped = true

Guidance3.Name = "Guidance3"
Guidance3.Parent = Others
Guidance3.BackgroundColor3 = Color3.new(1, 1, 1)
Guidance3.BackgroundTransparency = 1
Guidance3.Position = UDim2.new(0.153138295, 0, 0.750434279, 0)
Guidance3.Size = UDim2.new(0, 227, 0, 40)
Guidance3.Font = Enum.Font.ArialBold
Guidance3.FontSize = Enum.FontSize.Size14
Guidance3.Text = "Red buttons require many tools in your backpack before using"
Guidance3.TextColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Guidance3.TextScaled = true
Guidance3.TextSize = 14
Guidance3.TextStrokeColor3 = Color3.new(1, 0.266667, 0.137255)
Guidance3.TextStrokeTransparency = 0.80000001192093
Guidance3.TextWrapped = true

NoneSelected.Name = "NoneSelected"
NoneSelected.Parent = MainFrame
NoneSelected.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
NoneSelected.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
NoneSelected.BorderSizePixel = 2
NoneSelected.Position = UDim2.new(0.31400001, -21, 0.180000007, -33)
NoneSelected.Size = UDim2.new(0, 328, 0, 307)

NoneSelectedText1.Name = "NoneSelectedText1"
NoneSelectedText1.Parent = NoneSelected
NoneSelectedText1.BackgroundColor3 = Color3.new(1, 1, 1)
NoneSelectedText1.BackgroundTransparency = 1
NoneSelectedText1.Position = UDim2.new(0.184861064, 0, 0.0326275788, 0)
NoneSelectedText1.Size = UDim2.new(0, 200, 0, 50)
NoneSelectedText1.Font = Enum.Font.ArialBold
NoneSelectedText1.FontSize = Enum.FontSize.Size14
NoneSelectedText1.Text = "Arosia"
NoneSelectedText1.TextColor3 = Color3.new(0.337255, 0.85098, 0.258824)
NoneSelectedText1.TextScaled = true
NoneSelectedText1.TextSize = 14
NoneSelectedText1.TextWrapped = true

NoneSelectedText2.Name = "NoneSelectedText2"
NoneSelectedText2.Parent = NoneSelected
NoneSelectedText2.BackgroundColor3 = Color3.new(1, 1, 1)
NoneSelectedText2.BackgroundTransparency = 1
NoneSelectedText2.Position = UDim2.new(0.184861064, -31, 0.195765465, 0)
NoneSelectedText2.Size = UDim2.new(0, 272, 0, 72)
NoneSelectedText2.Font = Enum.Font.ArialBold
NoneSelectedText2.FontSize = Enum.FontSize.Size14
NoneSelectedText2.Text = "Dedicated to bringing power into FE games"
NoneSelectedText2.TextColor3 = Color3.new(0.458824, 0.458824, 0.458824)
NoneSelectedText2.TextScaled = true
NoneSelectedText2.TextSize = 14
NoneSelectedText2.TextWrapped = true

NoneSelectedText3.Name = "NoneSelectedText3"
NoneSelectedText3.Parent = NoneSelected
NoneSelectedText3.BackgroundColor3 = Color3.new(1, 1, 1)
NoneSelectedText3.BackgroundTransparency = 1
NoneSelectedText3.Position = UDim2.new(0.0918669328, 0, 0.652551532, 0)
NoneSelectedText3.Size = UDim2.new(0, 272, 0, 72)
NoneSelectedText3.Font = Enum.Font.ArialBold
NoneSelectedText3.FontSize = Enum.FontSize.Size14
NoneSelectedText3.Text = "By illremember"
NoneSelectedText3.TextColor3 = Color3.new(0.458824, 0.458824, 0.458824)
NoneSelectedText3.TextScaled = true
NoneSelectedText3.TextSize = 14
NoneSelectedText3.TextStrokeColor3 = Color3.new(1, 0.027451, 0.027451)
NoneSelectedText3.TextStrokeTransparency = 0.89999997615814
NoneSelectedText3.TextWrapped = true

LocalPlayer.Name = "LocalPlayer"
LocalPlayer.Parent = MainFrame
LocalPlayer.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
LocalPlayer.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
LocalPlayer.BorderSizePixel = 2
LocalPlayer.Position = UDim2.new(0.31400001, -21, 0.180000007, -33)
LocalPlayer.Size = UDim2.new(0, 328, 0, 307)
LocalPlayer.Visible = false

GodMode.Name = "GodMode"
GodMode.Parent = LocalPlayer
GodMode.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
GodMode.BorderSizePixel = 0
GodMode.Position = UDim2.new(0.0306223109, 0, 0.0326275788, 0)
GodMode.Size = UDim2.new(0, 80, 0, 26)
GodMode.Font = Enum.Font.Arial
GodMode.FontSize = Enum.FontSize.Size18
GodMode.Text = "GodMode"
GodMode.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
GodMode.TextSize = 18
GodMode.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = LocalPlayer
Fly.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.398090035, 0, 0.0326275788, 0)
Fly.Size = UDim2.new(0, 80, 0, 26)
Fly.Font = Enum.Font.Arial
Fly.FontSize = Enum.FontSize.Size18
Fly.Text = "Fly"
Fly.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Fly.TextSize = 18
Fly.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = LocalPlayer
Speed.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.0306223109, 0, 0.261020631, 0)
Speed.Size = UDim2.new(0, 80, 0, 26)
Speed.Font = Enum.Font.Arial
Speed.FontSize = Enum.FontSize.Size18
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Speed.TextSize = 18
Speed.TextWrapped = true

Speed_TXTBOX.Name = "Speed_TXTBOX"
Speed_TXTBOX.Parent = LocalPlayer
Speed_TXTBOX.BackgroundColor3 = Color3.new(0.65098, 0.65098, 0.65098)
Speed_TXTBOX.BorderSizePixel = 0
Speed_TXTBOX.Position = UDim2.new(0.275600791, 0, 0.261020631, 0)
Speed_TXTBOX.Size = UDim2.new(0, 40, 0, 26)
Speed_TXTBOX.Font = Enum.Font.SourceSans
Speed_TXTBOX.FontSize = Enum.FontSize.Size14
Speed_TXTBOX.Text = ""
Speed_TXTBOX.TextScaled = true
Speed_TXTBOX.TextSize = 14
Speed_TXTBOX.TextWrapped = true

JumpHeight.Name = "JumpHeight"
JumpHeight.Parent = LocalPlayer
JumpHeight.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
JumpHeight.BorderSizePixel = 0
JumpHeight.Position = UDim2.new(0.459334642, 0, 0.261020631, 0)
JumpHeight.Size = UDim2.new(0, 80, 0, 26)
JumpHeight.Font = Enum.Font.Arial
JumpHeight.FontSize = Enum.FontSize.Size18
JumpHeight.Text = "JumpHeight"
JumpHeight.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
JumpHeight.TextSize = 15
JumpHeight.TextWrapped = true

JumpHeight_TXTBOX.Name = "JumpHeight_TXTBOX"
JumpHeight_TXTBOX.Parent = LocalPlayer
JumpHeight_TXTBOX.BackgroundColor3 = Color3.new(0.65098, 0.65098, 0.65098)
JumpHeight_TXTBOX.BorderSizePixel = 0
JumpHeight_TXTBOX.Position = UDim2.new(0.704313159, 0, 0.261020631, 0)
JumpHeight_TXTBOX.Size = UDim2.new(0, 40, 0, 26)
JumpHeight_TXTBOX.Font = Enum.Font.SourceSans
JumpHeight_TXTBOX.FontSize = Enum.FontSize.Size14
JumpHeight_TXTBOX.Text = ""
JumpHeight_TXTBOX.TextScaled = true
JumpHeight_TXTBOX.TextSize = 14
JumpHeight_TXTBOX.TextWrapped = true

Chat.Name = "Chat"
Chat.Parent = LocalPlayer
Chat.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Chat.BorderSizePixel = 0
Chat.Position = UDim2.new(0.0306223109, 0, 0.456786126, 0)
Chat.Size = UDim2.new(0, 80, 0, 26)
Chat.Font = Enum.Font.Arial
Chat.FontSize = Enum.FontSize.Size18
Chat.Text = "Chat"
Chat.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Chat.TextSize = 18
Chat.TextWrapped = true

Chat_TXTBOX.Name = "Chat_TXTBOX"
Chat_TXTBOX.Parent = LocalPlayer
Chat_TXTBOX.BackgroundColor3 = Color3.new(0.65098, 0.65098, 0.65098)
Chat_TXTBOX.BorderSizePixel = 0
Chat_TXTBOX.Position = UDim2.new(0.275600791, 0, 0.456786126, 0)
Chat_TXTBOX.Size = UDim2.new(0, 222, 0, 26)
Chat_TXTBOX.Font = Enum.Font.SourceSans
Chat_TXTBOX.FontSize = Enum.FontSize.Size14
Chat_TXTBOX.Text = ""
Chat_TXTBOX.TextScaled = true
Chat_TXTBOX.TextSize = 14
Chat_TXTBOX.TextWrapped = true

Respawn.Name = "Respawn"
Respawn.Parent = LocalPlayer
Respawn.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Respawn.BorderSizePixel = 0
Respawn.Position = UDim2.new(0.734935462, 0, 0.0326275788, 0)
Respawn.Size = UDim2.new(0, 80, 0, 26)
Respawn.Font = Enum.Font.Arial
Respawn.FontSize = Enum.FontSize.Size18
Respawn.Text = "Respawn"
Respawn.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Respawn.TextSize = 18
Respawn.TextWrapped = true

HipHeight.Name = "HipHeight"
HipHeight.Parent = LocalPlayer
HipHeight.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
HipHeight.BorderSizePixel = 0
HipHeight.Position = UDim2.new(0.0306223109, 0, 0.358903378, 0)
HipHeight.Size = UDim2.new(0, 80, 0, 26)
HipHeight.Font = Enum.Font.Arial
HipHeight.FontSize = Enum.FontSize.Size18
HipHeight.Text = "HipHeight"
HipHeight.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
HipHeight.TextSize = 18
HipHeight.TextWrapped = true

HipHeight_TXTBOX.Name = "HipHeight_TXTBOX"
HipHeight_TXTBOX.Parent = LocalPlayer
HipHeight_TXTBOX.BackgroundColor3 = Color3.new(0.65098, 0.65098, 0.65098)
HipHeight_TXTBOX.BorderSizePixel = 0
HipHeight_TXTBOX.Position = UDim2.new(0.275600791, 0, 0.358903378, 0)
HipHeight_TXTBOX.Size = UDim2.new(0, 40, 0, 26)
HipHeight_TXTBOX.Font = Enum.Font.SourceSans
HipHeight_TXTBOX.FontSize = Enum.FontSize.Size14
HipHeight_TXTBOX.Text = ""
HipHeight_TXTBOX.TextScaled = true
HipHeight_TXTBOX.TextSize = 14
HipHeight_TXTBOX.TextWrapped = true

Noclip.Name = "Noclip"
Noclip.Parent = LocalPlayer
Noclip.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.0306223109, 0, 0.130510315, 0)
Noclip.Size = UDim2.new(0, 80, 0, 26)
Noclip.Font = Enum.Font.Arial
Noclip.FontSize = Enum.FontSize.Size18
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Noclip.TextSize = 18
Noclip.TextWrapped = true

Sit.Name = "Sit"
Sit.Parent = LocalPlayer
Sit.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Sit.BorderSizePixel = 0
Sit.Position = UDim2.new(0.398090035, 0, 0.130510315, 0)
Sit.Size = UDim2.new(0, 80, 0, 26)
Sit.Font = Enum.Font.Arial
Sit.FontSize = Enum.FontSize.Size18
Sit.Text = "Sit"
Sit.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Sit.TextSize = 18
Sit.TextWrapped = true

Jump.Name = "Jump"
Jump.Parent = LocalPlayer
Jump.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Jump.BorderSizePixel = 0
Jump.Position = UDim2.new(0.734935462, 0, 0.130510315, 0)
Jump.Size = UDim2.new(0, 80, 0, 26)
Jump.Font = Enum.Font.Arial
Jump.FontSize = Enum.FontSize.Size18
Jump.Text = "Jump"
Jump.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Jump.TextSize = 18
Jump.TextWrapped = true

HideName.Name = "HideName"
HideName.Parent = LocalPlayer
HideName.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
HideName.BorderSizePixel = 0
HideName.Position = UDim2.new(0.0306223109, 0, 0.880944669, 0)
HideName.Size = UDim2.new(0, 80, 0, 26)
HideName.Font = Enum.Font.Arial
HideName.FontSize = Enum.FontSize.Size18
HideName.Text = "HideName"
HideName.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
HideName.TextSize = 18
HideName.TextWrapped = true

Spam.Name = "Spam"
Spam.Parent = LocalPlayer
Spam.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Spam.BorderSizePixel = 0
Spam.Position = UDim2.new(0.0306223109, 0, 0.554668844, 0)
Spam.Size = UDim2.new(0, 80, 0, 26)
Spam.Font = Enum.Font.Arial
Spam.FontSize = Enum.FontSize.Size18
Spam.Text = "Spam"
Spam.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Spam.TextSize = 18
Spam.TextWrapped = true

Freeze.Name = "Freeze"
Freeze.Parent = LocalPlayer
Freeze.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Freeze.BorderSizePixel = 0
Freeze.Position = UDim2.new(0.398090035, 0, 0.880944669, 0)
Freeze.Size = UDim2.new(0, 80, 0, 26)
Freeze.Font = Enum.Font.Arial
Freeze.FontSize = Enum.FontSize.Size18
Freeze.Text = "Freeze"
Freeze.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Freeze.TextSize = 18
Freeze.TextWrapped = true

Btools.Name = "Btools"
Btools.Parent = LocalPlayer
Btools.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Btools.BorderSizePixel = 0
Btools.Position = UDim2.new(0.0306223109, 0, 0.783061862, 0)
Btools.Size = UDim2.new(0, 80, 0, 26)
Btools.Font = Enum.Font.Arial
Btools.FontSize = Enum.FontSize.Size18
Btools.Text = "Btools"
Btools.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Btools.TextSize = 18
Btools.TextWrapped = true

Spin.Name = "Spin"
Spin.Parent = LocalPlayer
Spin.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Spin.BorderSizePixel = 0
Spin.Position = UDim2.new(0.398090035, 0, 0.783061862, 0)
Spin.Size = UDim2.new(0, 80, 0, 26)
Spin.Font = Enum.Font.Arial
Spin.FontSize = Enum.FontSize.Size18
Spin.Text = "Spin"
Spin.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Spin.TextSize = 18
Spin.TextWrapped = true

NoLimbs.Name = "NoLimbs"
NoLimbs.Parent = LocalPlayer
NoLimbs.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
NoLimbs.BorderSizePixel = 0
NoLimbs.Position = UDim2.new(0.734935462, 0, 0.880944669, 0)
NoLimbs.Size = UDim2.new(0, 80, 0, 26)
NoLimbs.Font = Enum.Font.Arial
NoLimbs.FontSize = Enum.FontSize.Size18
NoLimbs.Text = "NoLimbs"
NoLimbs.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
NoLimbs.TextSize = 18
NoLimbs.TextWrapped = true

Seizure.Name = "Seizure"
Seizure.Parent = LocalPlayer
Seizure.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Seizure.BorderSizePixel = 0
Seizure.Position = UDim2.new(0.734935462, 0, 0.783061862, 0)
Seizure.Size = UDim2.new(0, 80, 0, 26)
Seizure.Font = Enum.Font.Arial
Seizure.FontSize = Enum.FontSize.Size18
Seizure.Text = "Seizure"
Seizure.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Seizure.TextSize = 18
Seizure.TextWrapped = true

Games.Name = "Games"
Games.Parent = MainFrame
Games.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
Games.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Games.BorderSizePixel = 2
Games.Position = UDim2.new(0.31400001, -21, 0.180000007, -33)
Games.Size = UDim2.new(0, 328, 0, 307)
Games.Visible = false

Scripts.Name = "Scripts"
Scripts.Parent = MainFrame
Scripts.BackgroundColor3 = Color3.new(0.8, 0.8, 0.8)
Scripts.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
Scripts.BorderSizePixel = 2
Scripts.Position = UDim2.new(0.31400001, -21, 0.180000007, -33)
Scripts.Size = UDim2.new(0, 328, 0, 307)
Scripts.Visible = false

Energize.Name = "Energize"
Energize.Parent = Scripts
Energize.BackgroundColor3 = Color3.new(0.960784, 0.419608, 0.145098)
Energize.BorderColor3 = Color3.new(0.960784, 0.419608, 0.145098)
Energize.BorderSizePixel = 3
Energize.Position = UDim2.new(0.183430299, 0, 0.0326275788, 0)
Energize.Size = UDim2.new(0, 200, 0, 30)
Energize.Font = Enum.Font.ArialBold
Energize.FontSize = Enum.FontSize.Size18
Energize.Text = "Animation GUI for R6/R15"
Energize.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Energize.TextScaled = true
Energize.TextSize = 18
Energize.TextWrapped = true

GlitchMax.Name = "GlitchMax"
GlitchMax.Parent = Scripts
GlitchMax.BackgroundColor3 = Color3.new(0.298039, 0.509804, 0.901961)
GlitchMax.BorderColor3 = Color3.new(0.298039, 0.509804, 0.901961)
GlitchMax.BorderSizePixel = 3
GlitchMax.Position = UDim2.new(0.183430299, 0, 0.358903378, 0)
GlitchMax.Size = UDim2.new(0, 200, 0, 30)
GlitchMax.Font = Enum.Font.ArialBold
GlitchMax.FontSize = Enum.FontSize.Size28
GlitchMax.Text = "GlitchMax GUI"
GlitchMax.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
GlitchMax.TextSize = 25
GlitchMax.TextWrapped = true

Energize_TXT.Name = "Energize_TXT"
Energize_TXT.Parent = Scripts
Energize_TXT.BackgroundColor3 = Color3.new(0.639216, 0.639216, 0.639216)
Energize_TXT.BorderColor3 = Color3.new(0.960784, 0.419608, 0.145098)
Energize_TXT.BorderSizePixel = 3
Energize_TXT.Position = UDim2.new(0.183430299, 0, 0.130510315, 0)
Energize_TXT.Size = UDim2.new(0, 200, 0, 50)
Energize_TXT.Font = Enum.Font.SourceSansSemibold
Energize_TXT.FontSize = Enum.FontSize.Size14
Energize_TXT.Text = "Use cool animations on yourself!"
Energize_TXT.TextScaled = true
Energize_TXT.TextSize = 14
Energize_TXT.TextStrokeColor3 = Color3.new(1, 0.533333, 0.152941)
Energize_TXT.TextStrokeTransparency = 0.89999997615814
Energize_TXT.TextWrapped = true

GlitchMax_TXT.Name = "GlitchMax_TXT"
GlitchMax_TXT.Parent = Scripts
GlitchMax_TXT.BackgroundColor3 = Color3.new(0.639216, 0.639216, 0.639216)
GlitchMax_TXT.BorderColor3 = Color3.new(0.298039, 0.509804, 0.901961)
GlitchMax_TXT.BorderSizePixel = 3
GlitchMax_TXT.Position = UDim2.new(0.183430299, 0, 0.456786126, 0)
GlitchMax_TXT.Size = UDim2.new(0, 200, 0, 50)
GlitchMax_TXT.Font = Enum.Font.SourceSansSemibold
GlitchMax_TXT.FontSize = Enum.FontSize.Size14
GlitchMax_TXT.Text = "Annoy/glitch people in the server!"
GlitchMax_TXT.TextScaled = true
GlitchMax_TXT.TextSize = 14
GlitchMax_TXT.TextStrokeColor3 = Color3.new(0, 0.819608, 1)
GlitchMax_TXT.TextStrokeTransparency = 0.89999997615814
GlitchMax_TXT.TextWrapped = true

Verspin.Name = "Verspin"
Verspin.Parent = Scripts
Verspin.BackgroundColor3 = Color3.new(0.278431, 0.827451, 0.109804)
Verspin.BorderColor3 = Color3.new(0.278431, 0.827451, 0.109804)
Verspin.BorderSizePixel = 3
Verspin.Position = UDim2.new(0.183430299, 0, 0.685179174, 0)
Verspin.Size = UDim2.new(0, 200, 0, 30)
Verspin.Font = Enum.Font.ArialBold
Verspin.FontSize = Enum.FontSize.Size28
Verspin.Text = "Verspin GUI"
Verspin.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Verspin.TextSize = 25
Verspin.TextWrapped = true

Verspin_TXT.Name = "Verspin_TXT"
Verspin_TXT.Parent = Scripts
Verspin_TXT.BackgroundColor3 = Color3.new(0.639216, 0.639216, 0.639216)
Verspin_TXT.BorderColor3 = Color3.new(0.278431, 0.827451, 0.109804)
Verspin_TXT.BorderSizePixel = 3
Verspin_TXT.Position = UDim2.new(0.183430299, 0, 0.783061862, 0)
Verspin_TXT.Size = UDim2.new(0, 200, 0, 50)
Verspin_TXT.Font = Enum.Font.SourceSansSemibold
Verspin_TXT.FontSize = Enum.FontSize.Size14
Verspin_TXT.Text = "Kill/Bring/Attach players with tools!"
Verspin_TXT.TextScaled = true
Verspin_TXT.TextSize = 14
Verspin_TXT.TextStrokeColor3 = Color3.new(1, 0.533333, 0.152941)
Verspin_TXT.TextStrokeTransparency = 0.89999997615814
Verspin_TXT.TextWrapped = true

SideFrame.Name = "SideFrame"
SideFrame.Parent = Arosia
SideFrame.Active = true
SideFrame.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
SideFrame.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
SideFrame.BorderSizePixel = 2
SideFrame.Draggable = true
SideFrame.Position = UDim2.new(0.308999985, 0, 0.182999998, 0)
SideFrame.Size = UDim2.new(0, 448, 0, 334)
SideFrame.Visible = false
SideFrame.ZIndex = 9

SIDE_Title.Name = "SIDE_Title"
SIDE_Title.Parent = SideFrame
SIDE_Title.Active = true
SIDE_Title.BackgroundColor3 = Color3.new(1, 1, 1)
SIDE_Title.BackgroundTransparency = 1
SIDE_Title.Size = UDim2.new(0, 90, 0, 24)
SIDE_Title.Font = Enum.Font.ArialBold
SIDE_Title.FontSize = Enum.FontSize.Size24
SIDE_Title.Text = "Arosia "
SIDE_Title.TextColor3 = Color3.new(0.368627, 0.976471, 0.262745)
SIDE_Title.TextScaled = true
SIDE_Title.TextSize = 19
SIDE_Title.TextWrapped = true
SIDE_Title.ZIndex = 10

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = SideFrame
OpenGUI.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUI.BackgroundTransparency = 1
OpenGUI.Position = UDim2.new(0.560000002, 166, 0.100000001, 0)
OpenGUI.Size = UDim2.new(0, 38, 0, 24)
OpenGUI.Font = Enum.Font.ArialBold
OpenGUI.FontSize = Enum.FontSize.Size32
OpenGUI.Text = "X"
OpenGUI.TextColor3 = Color3.new(0.615686, 0, 0)
OpenGUI.TextSize = 30
OpenGUI.ZIndex = 10

SIDE_FE_Check.Name = "SIDE_FE_Check"
SIDE_FE_Check.Parent = SideFrame
SIDE_FE_Check.BackgroundColor3 = Color3.new(1, 1, 1)
SIDE_FE_Check.BackgroundTransparency = 1
SIDE_FE_Check.Position = UDim2.new(0.291458786, 0, 0, 0)
SIDE_FE_Check.Size = UDim2.new(0, 223, 0, 24)
SIDE_FE_Check.Font = Enum.Font.Highway
SIDE_FE_Check.FontSize = Enum.FontSize.Size14
SIDE_FE_Check.Text = "Error loading FE Checker"
SIDE_FE_Check.TextColor3 = Color3.new(1, 1, 1)
SIDE_FE_Check.TextScaled = true
SIDE_FE_Check.TextSize = 14
SIDE_FE_Check.TextWrapped = true
SIDE_FE_Check.ZIndex = 10

icon.Name = "icon"
icon.Parent = SideTabs
icon.BackgroundColor3 = Color3.new(1, 1, 1)
icon.BackgroundTransparency = 1
icon.Position = UDim2.new(0, 0, 0.51, 0)
icon.Size = UDim2.new(0, 120, 0, 110)
icon.Image = "http://www.roblox.com/asset/?id=1227728863"
icon.ZIndex = 6

SideTabsBrick.Name = "SideTabsBrick"
SideTabsBrick.Parent = MainFrame
SideTabsBrick.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
SideTabsBrick.BorderColor3 = Color3.new(0.129412, 0.129412, 0.129412)
SideTabsBrick.BorderSizePixel = 0
SideTabsBrick.Position = UDim2.new(0.270000011, 0, 0.0799999982, 0)
SideTabsBrick.Size = UDim2.new(0, 0, 0, 307)

ResetDefault.Name = "ResetDefault"
ResetDefault.Parent = LocalPlayer
ResetDefault.BackgroundColor3 = Color3.new(0.6, 0.192157, 0.192157)
ResetDefault.BorderSizePixel = 0
ResetDefault.Position = UDim2.new(0.30627659, 0, 0.554668844, 0)
ResetDefault.Size = UDim2.new(0, 107, 0, 26)
ResetDefault.Font = Enum.Font.Arial
ResetDefault.FontSize = Enum.FontSize.Size18
ResetDefault.Text = "ResetDefault"
ResetDefault.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
ResetDefault.TextSize = 18
ResetDefault.TextWrapped = true

Push.Name = "Push"
Push.Parent = Others
Push.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Push.BorderSizePixel = 0
Push.Position = UDim2.new(0.0612553172, 0, 0.326499889, 0)
Push.Size = UDim2.new(0, 78, 0, 26)
Push.Font = Enum.Font.Arial
Push.FontSize = Enum.FontSize.Size18
Push.Text = "Push"
Push.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Push.TextSize = 18
Push.TextWrapped = true

ClientFreeze.Name = "ClientFreeze"
ClientFreeze.Parent = Others
ClientFreeze.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
ClientFreeze.BorderSizePixel = 0
ClientFreeze.Position = UDim2.new(0.367531896, 0, 0.326499889, 0)
ClientFreeze.Size = UDim2.new(0, 78, 0, 26)
ClientFreeze.Font = Enum.Font.Arial
ClientFreeze.FontSize = Enum.FontSize.Size14
ClientFreeze.Text = "ClientFreeze"
ClientFreeze.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
ClientFreeze.TextSize = 14
ClientFreeze.TextWrapped = true

Orbit.Name = "Orbit"
Orbit.Parent = Others
Orbit.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Orbit.BorderSizePixel = 0
Orbit.Position = UDim2.new(0.673808455, 0, 0.326499889, 0)
Orbit.Size = UDim2.new(0, 78, 0, 26)
Orbit.Font = Enum.Font.Arial
Orbit.FontSize = Enum.FontSize.Size18
Orbit.Text = "Orbit"
Orbit.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Orbit.TextSize = 18
Orbit.TextWrapped = true

KillAll.Name = "KillAll"
KillAll.Parent = Others
KillAll.BackgroundColor3 = Color3.new(0.423529, 0.0862745, 0.0627451)
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.0612446219, 0, 0.880944669, 0)
KillAll.Size = UDim2.new(0, 78, 0, 26)
KillAll.Font = Enum.Font.Arial
KillAll.FontSize = Enum.FontSize.Size18
KillAll.Text = "Kill All"
KillAll.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
KillAll.TextSize = 18
KillAll.TextWrapped = true

Temp.Name = "Temp"
Temp.Parent = Games
Temp.BackgroundColor3 = Color3.new(1, 1, 1)
Temp.BackgroundTransparency = 1
Temp.Position = UDim2.new(0.183430299, -60, 0.456786126, -17)
Temp.Rotation = -30
Temp.Size = UDim2.new(0, 328, 0, 60)
Temp.Font = Enum.Font.Highway
Temp.FontSize = Enum.FontSize.Size14
Temp.Text = "Coming soon!"
Temp.TextScaled = true
Temp.TextSize = 14
Temp.TextStrokeColor3 = Color3.new(0.192157, 1, 0.733333)
Temp.TextStrokeTransparency = 0
Temp.TextWrapped = true

Experimental.Name = "Experimental"
Experimental.Parent = Others
Experimental.BackgroundColor3 = Color3.new(0.231373, 0.231373, 0.231373)
Experimental.BorderSizePixel = 0
Experimental.Position = UDim2.new(0.0611434318, 0, 0.424158514, 0)
Experimental.Size = UDim2.new(0, 78, 0, 26)
Experimental.Font = Enum.Font.Arial
Experimental.FontSize = Enum.FontSize.Size14
Experimental.Text = "Experimental"
Experimental.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
Experimental.TextSize = 14
Experimental.TextWrapped = true

CHAOS.Name = "CHAOS"
CHAOS.Parent = Others
CHAOS.BackgroundColor3 = Color3.new(0.0431373, 0.231373, 0.0862745)
CHAOS.BorderSizePixel = 0
CHAOS.Position = UDim2.new(0.672577739, 0, 0.424158514, 0)
CHAOS.Size = UDim2.new(0, 78, 0, 26)
CHAOS.Font = Enum.Font.Arial
CHAOS.FontSize = Enum.FontSize.Size18
CHAOS.Text = "CHAOS"
CHAOS.TextColor3 = Color3.new(0.866667, 0.866667, 0.866667)
CHAOS.TextSize = 18
CHAOS.TextWrapped = true

-- Buttons
if game.Workspace.FilteringEnabled == false then
	FE_Check.Text = "FE is disabled"
	FE_Check.TextColor3 = Color3.fromRGB(200,10,10)
	SIDE_FE_Check.Text = "FE is disabled"
	SIDE_FE_Check.TextColor3 = Color3.fromRGB(200,10,10)
else
	FE_Check.Text = "FE is enabled"
	FE_Check.TextColor3 = Color3.fromRGB(10,200,10)
	SIDE_FE_Check.Text = "FE is enabled"
	SIDE_FE_Check.TextColor3 = Color3.fromRGB(10,200,10)
end
col = Color3.new(0.231373, 0.231373, 0.231373)
loc = Color3.new(0.331373, 0.531373, 0.331373)

wait(0.4)
MainFrame:TweenPosition(UDim2.new(0.309, 0, 0.183, 0), "Out", "Bounce", 3)

CloseGUI.MouseButton1Click:connect(function()
CloseGUI.Visible = false
TopRow:TweenSize(UDim2.new(0, 448, 0, 334), "Out", "Sine", 1)
wait(1)
MainFrame.Visible = false
SideFrame.Position = MainFrame.Position
SideFrame.Visible = true
SideFrame:TweenSize(UDim2.new(0, 448, 0, 24), "Out", "Sine", 1)
OpenGUI.Visible = false
wait(1)
OpenGUI.Visible = true
end)

OpenGUI.MouseButton1Click:connect(function()
OpenGUI.Visible = false
SideFrame:TweenSize(UDim2.new(0, 448, 0, 334), "Out", "Sine", 1)
wait(1)
SideFrame.Visible = false
MainFrame.Position = SideFrame.Position
MainFrame.Visible = true
TopRow:TweenSize(UDim2.new(0, 448, 0, 24), "Out", "Sine", 1)
CloseGUI.Visible = false
wait(1)
CloseGUI.Visible = true
end)

TAB_Credit.MouseButton1Click:connect(function()
SideTabsBrick:TweenSize(UDim2.new(0, 328, 0, 307), "Out", "Sine", 0.5)
wait(0.5)
Games.Visible = false
LocalPlayer.Visible = false
Others.Visible = false
Scripts.Visible = false
NoneSelected.Visible = true
SideTabsBrick:TweenSize(UDim2.new(0, 0, 0, 307), "Out", "Sine", 0.5)
end)

TAB_Games.MouseButton1Click:connect(function()
SideTabsBrick:TweenSize(UDim2.new(0, 328, 0, 307), "Out", "Sine", 0.5)
wait(0.5)
Games.Visible = true
LocalPlayer.Visible = false
Others.Visible = false
Scripts.Visible = false
NoneSelected.Visible = false
SideTabsBrick:TweenSize(UDim2.new(0, 0, 0, 307), "Out", "Sine", 0.5)
end)

TAB_Scripts.MouseButton1Click:connect(function()
SideTabsBrick:TweenSize(UDim2.new(0, 328, 0, 307), "Out", "Sine", 0.5)
wait(0.5)
Games.Visible = false
LocalPlayer.Visible = false
Others.Visible = false
Scripts.Visible = true
NoneSelected.Visible = false
SideTabsBrick:TweenSize(UDim2.new(0, 0, 0, 307), "Out", "Sine", 0.5)
end)

TAB_LocalPlayer.MouseButton1Click:connect(function()
SideTabsBrick:TweenSize(UDim2.new(0, 328, 0, 307), "Out", "Sine", 0.5)
wait(0.5)
Games.Visible = false
LocalPlayer.Visible = true
Others.Visible = false
Scripts.Visible = false
NoneSelected.Visible = false
SideTabsBrick:TweenSize(UDim2.new(0, 0, 0, 307), "Out", "Sine", 0.5)
end)

TAB_Others.MouseButton1Click:connect(function()
SideTabsBrick:TweenSize(UDim2.new(0, 328, 0, 307), "Out", "Sine", 0.5)
wait(0.5)
Games.Visible = false
LocalPlayer.Visible = false
Others.Visible = true
Scripts.Visible = false
NoneSelected.Visible = false
SideTabsBrick:TweenSize(UDim2.new(0, 0, 0, 307), "Out", "Sine", 0.5)
end)

-- LOCAL PLAYER ---------------------------------
-- LOCAL PLAYER ---------------------------------

HipHeight.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipHeight_TXTBOX.Text
end)
JumpHeight.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = JumpHeight_TXTBOX.Text
end)
Speed.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Speed_TXTBOX.Text
end)
Sit.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)
Jump.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Jump = true
end)
frost = false
Freeze.MouseButton1Click:connect(function()
	frost = not frost
	if frost then
		game.Players.LocalPlayer.Character.Torso.Anchored = true
		game.Players.LocalPlayer.Character.Head.Anchored = true
		game.Players.LocalPlayer.Character["Left Leg"].Anchored = true
		game.Players.LocalPlayer.Character["Left Arm"].Anchored = true
		game.Players.LocalPlayer.Character["Right Leg"].Anchored = true
		game.Players.LocalPlayer.Character["Right Arm"].Anchored = true
		Freeze.BackgroundColor3 = loc
	else
		game.Players.LocalPlayer.Character.Torso.Anchored = false
		game.Players.LocalPlayer.Character.Head.Anchored = false
		game.Players.LocalPlayer.Character["Left Leg"].Anchored = false
		game.Players.LocalPlayer.Character["Left Arm"].Anchored = false
		game.Players.LocalPlayer.Character["Right Leg"].Anchored = false
		game.Players.LocalPlayer.Character["Right Arm"].Anchored = false
		Freeze.BackgroundColor3 = col
	end
end)
Chat.MouseButton1Click:connect(function()
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Chat_TXTBOX.Text, "All")
end)
keepspam = false
Spam.MouseButton1Click:connect(function()
	keepspam = not keepspam
	if keepspam then
		Spam.BackgroundColor3 = loc
	else
		Spam.BackgroundColor3 = col
	end
	while wait(0.5) do
		if keepspam then
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Chat_TXTBOX.Text, "All")
		end
	end
end)
gmd = false
GodMode.MouseButton1Click:connect(function()
	gmd = not gmd
	if gmd then
		game.Players.LocalPlayer.Character.Humanoid.Name = "no"
		local turn1 = game.Players.LocalPlayer.Character["no"]:Clone()
		turn1.Parent = game.Players.LocalPlayer.Character
		turn1.Name = "Humanoid"
		wait(0.1)
		game.Players.LocalPlayer.Character["no"]:Destroy()
		game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		wait(0.1)
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		GodMode.BackgroundColor3 = loc
	else
		GodMode.BackgroundColor3 = col
	end	
end)
NoLimbs.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character["Left Arm"]:Destroy()
	game.Players.LocalPlayer.Character["Right Arm"]:Destroy()
	game.Players.LocalPlayer.Character["Right Leg"]:Destroy()
	game.Players.LocalPlayer.Character["Left Leg"]:Destroy()
end)
Respawn.MouseButton1Click:connect(function()
	game.Players.LocalPlayer:LoadCharacter()
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://188632011"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
local SpinACTIVE = false
Spin.MouseButton1Click:connect(function()
	SpinACTIVE = not SpinACTIVE
	if SpinACTIVE then
		while wait() do
		 if track.IsPlaying == false then
			if SpinACTIVE then
				track:Play(.1, 1, 2)
				Spin.BackgroundColor3 = loc
			else
				Spin.BackgroundColor3 = col
			end
		 end
		end
	else
		track:Stop()
	end
end)
Hidden = false
HideName.MouseButton1Click:connect(function()
	Hidden = not Hidden
	if Hidden then
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
		HideName.BackgroundColor3 = loc
	else
		game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "Viewer"
		HideName.BackgroundColor3 = col
	end
end)
clip = true
Noclip.MouseButton1Click:connect(function()
	clip = not clip
	if not clip then
		Noclip.BackgroundColor3 = loc
	else
		Noclip.BackgroundColor3 = col
	end
	game:GetService('RunService').Stepped:connect(function()
		if not clip then
			game.Players.LocalPlayer.Character.Head.CanCollide = false
			game.Players.LocalPlayer.Character.Torso.CanCollide = false
			game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
			game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
		end
	end)
end)
shake = false
Seizure.MouseButton1Click:connect(function()
	shake = not shake
	if shake then
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true
		while wait() do
			if shake then
				game.Players.LocalPlayer.Character.Torso.Velocity = Vector3.new(math.random(-20,20),-10,math.random(-20,20))
				game.Players.LocalPlayer.Character.Torso.RotVelocity = Vector3.new(math.random(-10,10),math.random(-10,10),math.random(-10,10))
				Seizure.BackgroundColor3 = loc
			else
				Seizure.BackgroundColor3 = col
			end
		end
	else
		game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	end
end)

local flying = false
Fly.MouseButton1Click:connect(function()
flying = not flying
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 60
local speed = 0
if flying then
	Fly.BackgroundColor3 = loc
else
	Fly.BackgroundColor3 = col
end
 
function FlyFunction()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
FlyFunction()
end)

Btools.MouseButton1Click:connect(function()
	local Clone_T = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	Clone_T.BinType = "Clone"
	local Destruct = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	Destruct.BinType = "Hammer"
	local Hold_T = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	Hold_T.BinType = "Grab"
	local a = game.Workspace:getChildren()
	for i = 1, #a do
	if a[i].className == "Part" then
	a[i].Locked = false
	elseif a[i].className == "Model" then
	local r = a[i]:getChildren()
	for i = 1, #r do
	if r[i].className == "Part" then
	r[i].Locked = false
	end
	end
	end
	end
end)

ResetDefault.MouseButton1Click:connect(function()
	flying = false
	game.Players.LocalPlayer.Character.Torso.Anchored = false
	game.Players.LocalPlayer.Character.Head.Anchored = false
	game.Players.LocalPlayer.Character["Left Leg"].Anchored = false
	game.Players.LocalPlayer.Character["Left Arm"].Anchored = false
	game.Players.LocalPlayer.Character["Right Leg"].Anchored = false
	game.Players.LocalPlayer.Character["Right Arm"].Anchored = false
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = 0
	game.Players.LocalPlayer.Character.Humanoid.Sit = false
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "Viewer"
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
end)

-- OTHERS ---------------------------------
-- OTHERS ---------------------------------

function GetPlayer(String) --thank you/credit to Timeless/xFunnieuss
    local Found = {}
    local strl = String:lower()
    if strl == "all" then
        for i,v in pairs(game.Players:GetPlayers()) do
            table.insert(Found,v)
        end
    elseif strl == "others" then
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name ~= game.Players.LocalPlayer.Name then
                table.insert(Found,v)
            end
        end    
    else
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                table.insert(Found,v)
            end
        end    
    end
    return Found    
end

Teleport.MouseButton1Click:connect(function()
	for i,v in pairs(GetPlayer(PlayerUserEnter.Text))do
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
	end
end)
currentview = false
View.MouseButton1Click:connect(function()
	currentview = not currentview
	for i,v in pairs(GetPlayer(PlayerUserEnter.Text))do
		if currentview then
			game.Workspace.CurrentCamera.CameraSubject = game.Players[v.Name].Character.Head
			View.BackgroundColor3 = loc
		else
			game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.Head
			View.BackgroundColor3 = col
		end
	end
end)
annoying = false
Annoy.MouseButton1Click:connect(function()
	annoying = not annoying
	for i,v in pairs(GetPlayer(PlayerUserEnter.Text))do
		while wait() do
			if annoying then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				Annoy.BackgroundColor3 = loc
			else
				Annoy.BackgroundColor3 = col
			end
		end
	end
end)
cfreeze = false
ClientFreeze.MouseButton1Click:connect(function()
	cfreeze = not cfreeze
	for i,v in pairs(GetPlayer(PlayerUserEnter.Text))do
		if cfreeze then
			game.Players[v.Name].Character.Torso.Anchored = true
			game.Players[v.Name].Character.Head.Anchored = true
			game.Players[v.Name].Character["Left Leg"].Anchored = true
			game.Players[v.Name].Character["Left Arm"].Anchored = true
			game.Players[v.Name].Character["Right Leg"].Anchored = true
			game.Players[v.Name].Character["Right Arm"].Anchored = true
		else
			game.Players[v.Name].Character.Torso.Anchored = false
			game.Players[v.Name].Character.Head.Anchored = false
			game.Players[v.Name].Character["Left Leg"].Anchored = false
			game.Players[v.Name].Character["Left Arm"].Anchored = false
			game.Players[v.Name].Character["Right Leg"].Anchored = false
			game.Players[v.Name].Character["Right Arm"].Anchored = false
		end
	end
end)
orbital = false
Orbit.MouseButton1Click:connect(function()
	orbital = not orbital
	if orbital then
		Orbit.BackgroundColor3 = loc
		local o = Instance.new("RocketPropulsion")
		o.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		o.Name = "Orbit"
		for i,v in pairs(GetPlayer(PlayerUserEnter.Text))do
			o.Target = game.Players[v.Name].Character.HumanoidRootPart
			o:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if orbital then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Orbit:Destroy()
		Orbit.BackgroundColor3 = col
	end
end)
pushing = false
Push.MouseButton1Click:connect(function()
	pushing = not pushing
	if pushing then
		Push.BackgroundColor3 = loc
		local o = Instance.new("RocketPropulsion")
		o.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		o.Name = "Push"
		o.TurnP = 2500
		o.MaxThrust = 50000
		o.MaxSpeed = 1000
		o.ThrustP = 50000
		o.CartoonFactor = 1
		for i,v in pairs(GetPlayer(PlayerUserEnter.Text))do
			o.Target = game.Players[v.Name].Character.HumanoidRootPart
			o:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if pushing then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Push:Destroy()
		Push.BackgroundColor3 = col
	end
end)
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://282574440"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
flattening = false
Flatten.MouseButton1Click:connect(function()
	flattening = not flattening
	if flattening then
		Flatten.BackgroundColor3 = loc
		local o = Instance.new("RocketPropulsion")
		o.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		o.Name = "Flatten"
		o.MaxThrust = 50000
		o.MaxSpeed = 1000
		o.ThrustP = 50000
		o.CartoonFactor = 1
		for i,v in pairs(GetPlayer(PlayerUserEnter.Text))do
			o.Target = game.Players[v.Name].Character["Left Leg"]
			o:Fire()
			track:Play(.1, 1, 1)
			game:GetService('RunService').Stepped:connect(function()
				if flattening then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
			while wait(0.3) do
				if flattening then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
				end
			end
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Flatten:Destroy()
		Flatten.BackgroundColor3 = col
		track:Stop()
	end
end)
Verspin.MouseButton1Click:connect(function()
	game:GetObjects("rbxassetid://1249942219")[1].Parent = game.Players.LocalPlayer.PlayerGui
end)
Energize.MouseButton1Click:connect(function()
	game:GetObjects("rbxassetid://1202558084")[1].Parent = game.Players.LocalPlayer.PlayerGui
end)
GlitchMax.MouseButton1Click:connect(function()
	game:GetObjects("rbxassetid://1249943137")[1].Parent = game.Players.LocalPlayer.PlayerGui
end)
Experimental.MouseButton1Click:connect(function()
	
end)