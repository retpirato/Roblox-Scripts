-- Objects

local PrisonGui = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local TitleBar = Instance.new("TextLabel")
local ObGuns = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local KillAll = Instance.new("TextButton")
local TaseBypass = Instance.new("TextButton")
local RemoveDoors = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local BeNeutral = Instance.new("TextButton")
local ModGun = Instance.new("TextButton")
local ForceCgui = Instance.new("Frame")
local ComSeperateBar = Instance.new("TextLabel")
local InsertUser = Instance.new("TextBox")
local UserHolder = Instance.new("TextLabel")
local CrimTitle = Instance.new("TextLabel")
local CrimTitleBar = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local CrimHideButton = Instance.new("TextButton")
local TPshow = Instance.new("TextButton")
local LocalCommands = Instance.new("Frame")
local LocalCMD_Title = Instance.new("TextLabel")
local NexusTPbut = Instance.new("TextButton")
local CrimBaseTPbut = Instance.new("TextButton")
local GuardAreaTPbut = Instance.new("TextButton")
local FLY = Instance.new("TextButton")
local NWalk = Instance.new("TextButton")
local Njump = Instance.new("TextButton")
local tfJump = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local tfWalk = Instance.new("TextButton")
local LocalCMD_BarTitle = Instance.new("TextLabel")
local TheLocal = Instance.new("TextButton")
local CrimG = Instance.new("TextButton")
local tpgui = Instance.new("Frame")
local TPtileBar = Instance.new("TextLabel")
local TPYEET = Instance.new("TextButton")
local UserHolderTP = Instance.new("TextLabel")
local InsertUserTP = Instance.new("TextBox")
local TpTitle = Instance.new("TextLabel")
local RightSepBarTp = Instance.new("TextLabel")
local TpHideButton = Instance.new("TextButton")
local AmokahsLogo = Instance.new("ImageLabel")
local SuperPunch = Instance.new("TextButton")
local KillAura = Instance.new("TextButton")
local BeCriminal = Instance.new("TextButton")
local BeGuard = Instance.new("TextButton")
local BeInmate = Instance.new("TextButton")
local ArrestAll = Instance.new("TextButton")
local InvGuns = Instance.new("TextButton")
local CrimPunch = Instance.new("TextButton")
local Trans = Instance.new("TextButton")
local Open = Instance.new("Frame")
local OpenGUI = Instance.new("TextButton")
local Credit = Instance.new("TextLabel")
local Dino = Instance.new("TextLabel")
local KA = Instance.new("Frame")
local NameOfKa = Instance.new("TextLabel")
local TrueOrFalse = Instance.new("TextLabel")
local TeamGUIOC = Instance.new("Frame")
local TeamOPorCL = Instance.new("TextButton")
local TeamMain = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local SOG = Instance.new("TextButton")
local SOC = Instance.new("TextButton")
local SOI = Instance.new("TextButton")
local Disable = Instance.new("TextButton")
local Apart = Instance.new("Part")

Apart.Name = "PlrsPos"
Apart.Parent = workspace
Apart.Anchored = true
Apart.Archivable = true
Apart.CFrame = CFrame.new(9e99, 9e99, 9e99)

-- Properties

PrisonGui.Name = "PrisonGui"
PrisonGui.Parent = game:GetService("Players").LocalPlayer.PlayerGui

Main.Name = "Main"
Main.Parent = PrisonGui
Main.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.345, 0,2.204, 0)
Main.Size = UDim2.new(0, 338, 0, 301)
Main.Visible = false

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.136094674, 0, 0.00996677764, 0)
Title.Size = UDim2.new(0, 162, 0, 31)
Title.Font = Enum.Font.SourceSansLight
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Prison Life v2.0.2 GUI"
Title.TextColor3 = Color3.new(0.807843, 0.807843, 0.807843)
Title.TextScaled = true
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

TitleBar.Name = "TitleBar"
TitleBar.Parent = Main
TitleBar.BackgroundColor3 = Color3.new(0, 0, 0)
TitleBar.BackgroundTransparency = 0.5
TitleBar.BorderSizePixel = 0
TitleBar.Position = UDim2.new(0, 0, 0.116104871, 0)
TitleBar.Size = UDim2.new(0, 338, 0, 6)
TitleBar.Font = Enum.Font.SourceSans
TitleBar.FontSize = Enum.FontSize.Size14
TitleBar.Text = ""
TitleBar.TextColor3 = Color3.new(0, 0, 0)

ObGuns.Name = "ObGuns"
ObGuns.Parent = Main
ObGuns.BackgroundColor3 = Color3.new(1, 1, 1)
ObGuns.BackgroundTransparency = 0.5
ObGuns.BorderSizePixel = 0
ObGuns.Position = UDim2.new(0.0147928996, 0, 0.16104874, 0)
ObGuns.Size = UDim2.new(0, 159, 0, 22)
ObGuns.Font = Enum.Font.SourceSans
ObGuns.FontSize = Enum.FontSize.Size14
ObGuns.Text = "OBTAIN GUNS"
ObGuns.TextColor3 = Color3.new(1, 1, 1)
ObGuns.TextScaled = true
ObGuns.TextStrokeTransparency = 0
ObGuns.TextWrapped = true

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 0.34902, 0.34902)
Close.BackgroundTransparency = 0.30000001192093
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.908284009, 0, 0.0224719122, 0)
Close.Size = UDim2.new(0, 24, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.FontSize = Enum.FontSize.Size14
Close.Text = ""
Close.TextColor3 = Color3.new(0, 0, 0)

KillAll.Name = "KillAll"
KillAll.Parent = Main
KillAll.BackgroundColor3 = Color3.new(1, 1, 1)
KillAll.BackgroundTransparency = 0.5
KillAll.BorderSizePixel = 0
KillAll.Position = UDim2.new(0.0177514795, 0, 0.265917659, 0)
KillAll.Size = UDim2.new(0, 159, 0, 22)
KillAll.Font = Enum.Font.SourceSans
KillAll.FontSize = Enum.FontSize.Size14
KillAll.Text = "KILL ALL"
KillAll.TextColor3 = Color3.new(1, 1, 1)
KillAll.TextScaled = true
KillAll.TextStrokeTransparency = 0
KillAll.TextWrapped = true

TaseBypass.Name = "TaseBypass"
TaseBypass.Parent = Main
TaseBypass.BackgroundColor3 = Color3.new(1, 1, 1)
TaseBypass.BackgroundTransparency = 0.5
TaseBypass.BorderSizePixel = 0
TaseBypass.Position = UDim2.new(0.0177514795, 0, 0.370786548, 0)
TaseBypass.Size = UDim2.new(0, 159, 0, 22)
TaseBypass.Font = Enum.Font.SourceSans
TaseBypass.FontSize = Enum.FontSize.Size14
TaseBypass.Text = "TASER BYPASS"
TaseBypass.TextColor3 = Color3.new(1, 1, 1)
TaseBypass.TextScaled = true
TaseBypass.TextStrokeTransparency = 0
TaseBypass.TextWrapped = true

RemoveDoors.Name = "RemoveDoors"
RemoveDoors.Parent = Main
RemoveDoors.BackgroundColor3 = Color3.new(1, 1, 1)
RemoveDoors.BackgroundTransparency = 0.5
RemoveDoors.BorderSizePixel = 0
RemoveDoors.Position = UDim2.new(0.0177514795, 0, 0.483146131, 0)
RemoveDoors.Size = UDim2.new(0, 158, 0, 22)
RemoveDoors.Font = Enum.Font.SourceSans
RemoveDoors.FontSize = Enum.FontSize.Size14
RemoveDoors.Text = "REMOVE ALL DOORS"
RemoveDoors.TextColor3 = Color3.new(1, 1, 1)
RemoveDoors.TextScaled = true
RemoveDoors.TextStrokeTransparency = 0
RemoveDoors.TextWrapped = true

Btools.Name = "Btools"
Btools.Parent = Main
Btools.BackgroundColor3 = Color3.new(1, 1, 1)
Btools.BackgroundTransparency = 0.5
Btools.BorderSizePixel = 0
Btools.Position = UDim2.new(0.0177514795, 0, 0.58801502, 0)
Btools.Size = UDim2.new(0, 159, 0, 22)
Btools.Font = Enum.Font.SourceSans
Btools.FontSize = Enum.FontSize.Size14
Btools.Text = "BTOOLS"
Btools.TextColor3 = Color3.new(1, 1, 1)
Btools.TextScaled = true
Btools.TextStrokeTransparency = 0
Btools.TextWrapped = true

BeNeutral.Name = "BeNeutral"
BeNeutral.Parent = Main
BeNeutral.BackgroundColor3 = Color3.new(1, 1, 1)
BeNeutral.BackgroundTransparency = 0.5
BeNeutral.BorderSizePixel = 0
BeNeutral.Position = UDim2.new(0.756781578, 0, 0.696629226, 0)
BeNeutral.Size = UDim2.new(0, 74, 0, 22)
BeNeutral.Font = Enum.Font.SourceSans
BeNeutral.FontSize = Enum.FontSize.Size14
BeNeutral.Text = "NEUTRAL"
BeNeutral.TextColor3 = Color3.new(1, 1, 1)
BeNeutral.TextScaled = true
BeNeutral.TextStrokeTransparency = 0
BeNeutral.TextWrapped = true

ModGun.Name = "ModGun"
ModGun.Parent = Main
ModGun.BackgroundColor3 = Color3.new(1, 1, 1)
ModGun.BackgroundTransparency = 0.5
ModGun.BorderSizePixel = 0
ModGun.Position = UDim2.new(0.0177514795, 0, 0.801498115, 0)
ModGun.Size = UDim2.new(0, 325, 0, 22)
ModGun.Font = Enum.Font.SourceSans
ModGun.FontSize = Enum.FontSize.Size14
ModGun.Text = "MOD YOUR GUN (Hold the item first)"
ModGun.TextColor3 = Color3.new(1, 1, 1)
ModGun.TextScaled = true
ModGun.TextStrokeTransparency = 0
ModGun.TextWrapped = true

ForceCgui.Name = "ForceCgui"
ForceCgui.Parent = Main
ForceCgui.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
ForceCgui.BorderSizePixel = 0
ForceCgui.Position = UDim2.new(1, 0, 0.215946838, 0)
ForceCgui.Size = UDim2.new(0, 155, 0, 198)

ComSeperateBar.Name = "ComSeperateBar"
ComSeperateBar.Parent = ForceCgui
ComSeperateBar.BackgroundColor3 = Color3.new(1, 1, 1)
ComSeperateBar.BackgroundTransparency = 0.5
ComSeperateBar.BorderSizePixel = 0
ComSeperateBar.Position = UDim2.new(0, 0, 0.0757575706, 0)
ComSeperateBar.Size = UDim2.new(0, 1, 0, 167)
ComSeperateBar.Font = Enum.Font.SourceSans
ComSeperateBar.FontSize = Enum.FontSize.Size14
ComSeperateBar.Text = ""
ComSeperateBar.TextColor3 = Color3.new(0, 0, 0)

InsertUser.Name = "InsertUser"
InsertUser.Parent = ForceCgui
InsertUser.BackgroundColor3 = Color3.new(1, 1, 1)
InsertUser.BackgroundTransparency = 1
InsertUser.BorderSizePixel = 0
InsertUser.Position = UDim2.new(0.0064516128, 0, 0.186868697, 0)
InsertUser.Size = UDim2.new(0, 154, 0, 50)
InsertUser.Font = Enum.Font.SourceSansLight
InsertUser.FontSize = Enum.FontSize.Size14
InsertUser.Text = "USERNAME"
InsertUser.TextColor3 = Color3.new(1, 1, 1)
InsertUser.TextScaled = true
InsertUser.TextWrapped = true

UserHolder.Name = "UserHolder"
UserHolder.Parent = ForceCgui
UserHolder.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
UserHolder.BorderSizePixel = 0
UserHolder.Position = UDim2.new(0.0516129024, 0, 0.451651365, 0)
UserHolder.Size = UDim2.new(0, 139, 0, 3)
UserHolder.Font = Enum.Font.SourceSans
UserHolder.FontSize = Enum.FontSize.Size14
UserHolder.Text = ""
UserHolder.TextColor3 = Color3.new(0, 0, 0)

CrimTitle.Name = "CrimTitle"
CrimTitle.Parent = ForceCgui
CrimTitle.BackgroundColor3 = Color3.new(1, 1, 1)
CrimTitle.BackgroundTransparency = 1
CrimTitle.BorderSizePixel = 0
CrimTitle.Position = UDim2.new(0.0064516128, 0, 0, 0)
CrimTitle.Size = UDim2.new(0, 154, 0, 31)
CrimTitle.Font = Enum.Font.SourceSansLight
CrimTitle.FontSize = Enum.FontSize.Size14
CrimTitle.Text = "CRIMINAL GUI"
CrimTitle.TextColor3 = Color3.new(1, 1, 1)
CrimTitle.TextScaled = true
CrimTitle.TextStrokeTransparency = 0
CrimTitle.TextWrapped = true

CrimTitleBar.Name = "CrimTitleBar"
CrimTitleBar.Parent = ForceCgui
CrimTitleBar.BackgroundColor3 = Color3.new(0, 0, 0)
CrimTitleBar.BackgroundTransparency = 0.5
CrimTitleBar.BorderSizePixel = 0
CrimTitleBar.Position = UDim2.new(0.0064516128, 0, 0.14952904, 0)
CrimTitleBar.Size = UDim2.new(0, 154, 0, 1)
CrimTitleBar.Font = Enum.Font.SourceSans
CrimTitleBar.FontSize = Enum.FontSize.Size14
CrimTitleBar.Text = ""
CrimTitleBar.TextColor3 = Color3.new(0, 0, 0)

TextButton.Parent = ForceCgui
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BackgroundTransparency = 0.5
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0516129024, 0, 0.560606062, 0)
TextButton.Size = UDim2.new(0, 139, 0, 50)
TextButton.Font = Enum.Font.SourceSansLight
TextButton.FontSize = Enum.FontSize.Size14
TextButton.Text = "TURN INTO CRIMINAL (First, click KillAura)"
TextButton.TextColor3 = Color3.new(1, 1, 1)
TextButton.TextScaled = true
TextButton.TextStrokeTransparency = 0
TextButton.TextWrapped = true

CrimHideButton.Name = "CrimHideButton"
CrimHideButton.Parent = ForceCgui
CrimHideButton.BackgroundColor3 = Color3.new(1, 0.34902, 0.34902)
CrimHideButton.BackgroundTransparency = 0.30000001192093
CrimHideButton.BorderSizePixel = 0
CrimHideButton.Position = UDim2.new(0.0322580636, 0, 0.89015615, 0)
CrimHideButton.Size = UDim2.new(0, 146, 0, 18)
CrimHideButton.Font = Enum.Font.SourceSansLight
CrimHideButton.FontSize = Enum.FontSize.Size14
CrimHideButton.Text = "HIDE"
CrimHideButton.TextColor3 = Color3.new(1, 1, 1)
CrimHideButton.TextScaled = true
CrimHideButton.TextStrokeTransparency = 0
CrimHideButton.TextWrapped = true

TPshow.Name = "TPshow"
TPshow.Parent = Main
TPshow.BackgroundColor3 = Color3.new(1, 1, 1)
TPshow.BackgroundTransparency = 0.5
TPshow.BorderSizePixel = 0
TPshow.Position = UDim2.new(0.0166848004, 0, 0.900033236, 0)
TPshow.Size = UDim2.new(0, 104, 0, 22)
TPshow.Font = Enum.Font.SourceSans
TPshow.FontSize = Enum.FontSize.Size14
TPshow.Text = "TELEPORT TO PLAYER"
TPshow.TextColor3 = Color3.new(1, 1, 1)
TPshow.TextScaled = true
TPshow.TextStrokeTransparency = 0
TPshow.TextWrapped = true

LocalCommands.Name = "LocalCommands"
LocalCommands.Parent = Main
LocalCommands.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
LocalCommands.BorderSizePixel = 0
LocalCommands.Position = UDim2.new(0, 0, 1, 0)
LocalCommands.Size = UDim2.new(0, 338, 0, 100)

LocalCMD_Title.Name = "LocalCMD_Title"
LocalCMD_Title.Parent = LocalCommands
LocalCMD_Title.BackgroundColor3 = Color3.new(0, 0, 0)
LocalCMD_Title.BackgroundTransparency = 0.30000001192093
LocalCMD_Title.BorderSizePixel = 0
LocalCMD_Title.Size = UDim2.new(0, 338, 0, 22)
LocalCMD_Title.Font = Enum.Font.SourceSans
LocalCMD_Title.FontSize = Enum.FontSize.Size14
LocalCMD_Title.Text = "COMMANDS FOR YOURSELF"
LocalCMD_Title.TextColor3 = Color3.new(1, 1, 1)
LocalCMD_Title.TextStrokeTransparency = 0

NexusTPbut.Name = "NexusTPbut"
NexusTPbut.Parent = LocalCommands
NexusTPbut.BackgroundColor3 = Color3.new(1, 1, 1)
NexusTPbut.BackgroundTransparency = 0.40000000596046
NexusTPbut.BorderSizePixel = 0
NexusTPbut.Position = UDim2.new(0.0177514795, 0, 0.319999993, 0)
NexusTPbut.Size = UDim2.new(0, 98, 0, 16)
NexusTPbut.Font = Enum.Font.SourceSans
NexusTPbut.FontSize = Enum.FontSize.Size14
NexusTPbut.Text = "TP TO NEXUS"
NexusTPbut.TextColor3 = Color3.new(1, 1, 1)
NexusTPbut.TextScaled = true
NexusTPbut.TextStrokeTransparency = 0
NexusTPbut.TextWrapped = true

CrimBaseTPbut.Name = "CrimBaseTPbut"
CrimBaseTPbut.Parent = LocalCommands
CrimBaseTPbut.BackgroundColor3 = Color3.new(1, 1, 1)
CrimBaseTPbut.BackgroundTransparency = 0.40000000596046
CrimBaseTPbut.BorderSizePixel = 0
CrimBaseTPbut.Position = UDim2.new(0.0177514795, 0, 0.550980508, 0)
CrimBaseTPbut.Size = UDim2.new(0, 98, 0, 16)
CrimBaseTPbut.Font = Enum.Font.SourceSans
CrimBaseTPbut.FontSize = Enum.FontSize.Size14
CrimBaseTPbut.Text = "TP TO CRIMINAL BASE"
CrimBaseTPbut.TextColor3 = Color3.new(1, 1, 1)
CrimBaseTPbut.TextScaled = true
CrimBaseTPbut.TextStrokeTransparency = 0
CrimBaseTPbut.TextWrapped = true

GuardAreaTPbut.Name = "GuardAreaTPbut"
GuardAreaTPbut.Parent = LocalCommands
GuardAreaTPbut.BackgroundColor3 = Color3.new(1, 1, 1)
GuardAreaTPbut.BackgroundTransparency = 0.40000000596046
GuardAreaTPbut.BorderSizePixel = 0
GuardAreaTPbut.Position = UDim2.new(0.0177514795, 0, 0.781960726, 0)
GuardAreaTPbut.Size = UDim2.new(0, 98, 0, 16)
GuardAreaTPbut.Font = Enum.Font.SourceSans
GuardAreaTPbut.FontSize = Enum.FontSize.Size14
GuardAreaTPbut.Text = "TP TO GUARD AREA"
GuardAreaTPbut.TextColor3 = Color3.new(1, 1, 1)
GuardAreaTPbut.TextScaled = true
GuardAreaTPbut.TextStrokeTransparency = 0
GuardAreaTPbut.TextWrapped = true

FLY.Name = "FLY"
FLY.Parent = LocalCommands
FLY.BackgroundColor3 = Color3.new(1, 1, 1)
FLY.BackgroundTransparency = 0.40000000596046
FLY.BorderSizePixel = 0
FLY.Position = UDim2.new(0.354683876, 0, 0.330000013, 0)
FLY.Size = UDim2.new(0, 98, 0, 16)
FLY.Font = Enum.Font.SourceSans
FLY.FontSize = Enum.FontSize.Size14
FLY.Text = "FLY 'E'"
FLY.TextColor3 = Color3.new(1, 1, 1)
FLY.TextScaled = true
FLY.TextStrokeTransparency = 0
FLY.TextWrapped = true

NWalk.Name = "NWalk"
NWalk.Parent = LocalCommands
NWalk.BackgroundColor3 = Color3.new(1, 1, 1)
NWalk.BackgroundTransparency = 0.40000000596046
NWalk.BorderSizePixel = 0
NWalk.Position = UDim2.new(0.354683876, 0, 0.560980558, 0)
NWalk.Size = UDim2.new(0, 98, 0, 16)
NWalk.Font = Enum.Font.SourceSans
NWalk.FontSize = Enum.FontSize.Size14
NWalk.Text = "NORMAL WALKSPEED"
NWalk.TextColor3 = Color3.new(1, 1, 1)
NWalk.TextScaled = true
NWalk.TextStrokeTransparency = 0
NWalk.TextWrapped = true

Njump.Name = "Njump"
Njump.Parent = LocalCommands
Njump.BackgroundColor3 = Color3.new(1, 1, 1)
Njump.BackgroundTransparency = 0.40000000596046
Njump.BorderSizePixel = 0
Njump.Position = UDim2.new(0.354683876, 0, 0.791960776, 0)
Njump.Size = UDim2.new(0, 98, 0, 16)
Njump.Font = Enum.Font.SourceSans
Njump.FontSize = Enum.FontSize.Size14
Njump.Text = "NORMAL JUMP HEIGHT"
Njump.TextColor3 = Color3.new(1, 1, 1)
Njump.TextScaled = true
Njump.TextStrokeTransparency = 0
Njump.TextWrapped = true

tfJump.Name = "tfJump"
tfJump.Parent = LocalCommands
tfJump.BackgroundColor3 = Color3.new(1, 1, 1)
tfJump.BackgroundTransparency = 0.40000000596046
tfJump.BorderSizePixel = 0
tfJump.Position = UDim2.new(0.691616237, 0, 0.781960726, 0)
tfJump.Size = UDim2.new(0, 98, 0, 16)
tfJump.Font = Enum.Font.SourceSans
tfJump.FontSize = Enum.FontSize.Size14
tfJump.Text = "+25 JUMP HEIGHT"
tfJump.TextColor3 = Color3.new(1, 1, 1)
tfJump.TextScaled = true
tfJump.TextStrokeTransparency = 0
tfJump.TextWrapped = true

Respawn.Name = "Respawn"
Respawn.Parent = LocalCommands
Respawn.BackgroundColor3 = Color3.new(1, 1, 1)
Respawn.BackgroundTransparency = 0.40000000596046
Respawn.BorderSizePixel = 0
Respawn.Position = UDim2.new(0.691616237, 0, 0.319999993, 0)
Respawn.Size = UDim2.new(0, 98, 0, 16)
Respawn.Font = Enum.Font.SourceSans
Respawn.FontSize = Enum.FontSize.Size14
Respawn.Text = "RESPAWN"
Respawn.TextColor3 = Color3.new(1, 1, 1)
Respawn.TextScaled = true
Respawn.TextStrokeTransparency = 0
Respawn.TextWrapped = true

tfWalk.Name = "tfWalk"
tfWalk.Parent = LocalCommands
tfWalk.BackgroundColor3 = Color3.new(1, 1, 1)
tfWalk.BackgroundTransparency = 0.40000000596046
tfWalk.BorderSizePixel = 0
tfWalk.Position = UDim2.new(0.691616237, 0, 0.550980508, 0)
tfWalk.Size = UDim2.new(0, 98, 0, 16)
tfWalk.Font = Enum.Font.SourceSans
tfWalk.FontSize = Enum.FontSize.Size14
tfWalk.Text = "+25 WALKSPEED"
tfWalk.TextColor3 = Color3.new(1, 1, 1)
tfWalk.TextScaled = true
tfWalk.TextStrokeTransparency = 0
tfWalk.TextWrapped = true

LocalCMD_BarTitle.Name = "LocalCMD_BarTitle"
LocalCMD_BarTitle.Parent = LocalCommands
LocalCMD_BarTitle.BackgroundColor3 = Color3.new(1, 1, 1)
LocalCMD_BarTitle.BackgroundTransparency = 0.30000001192093
LocalCMD_BarTitle.BorderSizePixel = 0
LocalCMD_BarTitle.Position = UDim2.new(0.0798816606, 0, 0.219999999, 0)
LocalCMD_BarTitle.Size = UDim2.new(0, 283, 0, 4)
LocalCMD_BarTitle.Font = Enum.Font.SourceSans
LocalCMD_BarTitle.FontSize = Enum.FontSize.Size14
LocalCMD_BarTitle.Text = ""
LocalCMD_BarTitle.TextColor3 = Color3.new(1, 1, 1)
LocalCMD_BarTitle.TextStrokeTransparency = 0

TheLocal.Name = "TheLocal"
TheLocal.Parent = Main
TheLocal.BackgroundColor3 = Color3.new(1, 1, 1)
TheLocal.BackgroundTransparency = 0.5
TheLocal.BorderSizePixel = 0
TheLocal.Position = UDim2.new(0.344114006, 0, 0.900033236, 0)
TheLocal.Size = UDim2.new(0, 104, 0, 22)
TheLocal.Font = Enum.Font.SourceSans
TheLocal.FontSize = Enum.FontSize.Size14
TheLocal.Text = "MORE LOCAL COMMANDS"
TheLocal.TextColor3 = Color3.new(1, 1, 1)
TheLocal.TextScaled = true
TheLocal.TextStrokeTransparency = 0
TheLocal.TextWrapped = true

CrimG.Name = "CrimG"
CrimG.Parent = Main
CrimG.BackgroundColor3 = Color3.new(1, 1, 1)
CrimG.BackgroundTransparency = 0.5
CrimG.BorderSizePixel = 0
CrimG.Position = UDim2.new(0.671616912, 0, 0.900033236, 0)
CrimG.Size = UDim2.new(0, 104, 0, 22)
CrimG.Font = Enum.Font.SourceSans
CrimG.FontSize = Enum.FontSize.Size14
CrimG.Text = "FORCE CRIMINAL PLAYER"
CrimG.TextColor3 = Color3.new(1, 1, 1)
CrimG.TextScaled = true
CrimG.TextStrokeTransparency = 0
CrimG.TextWrapped = true

tpgui.Name = "tpgui"
tpgui.Parent = Main
tpgui.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
tpgui.BorderSizePixel = 0
tpgui.Position = UDim2.new(-0.458579868, 0, 0.215946838, 0)
tpgui.Size = UDim2.new(0, 155, 0, 198)

TPtileBar.Name = "TPtileBar"
TPtileBar.Parent = tpgui
TPtileBar.BackgroundColor3 = Color3.new(0, 0, 0)
TPtileBar.BackgroundTransparency = 0.5
TPtileBar.BorderSizePixel = 0
TPtileBar.Position = UDim2.new(0.0064516128, 0, 0.14952904, 0)
TPtileBar.Size = UDim2.new(0, 154, 0, 1)
TPtileBar.Font = Enum.Font.SourceSans
TPtileBar.FontSize = Enum.FontSize.Size14
TPtileBar.Text = ""
TPtileBar.TextColor3 = Color3.new(0, 0, 0)

TPYEET.Name = "TPYEET"
TPYEET.Parent = tpgui
TPYEET.BackgroundColor3 = Color3.new(1, 1, 1)
TPYEET.BackgroundTransparency = 0.5
TPYEET.BorderSizePixel = 0
TPYEET.Position = UDim2.new(0.0580645166, 0, 0.560606062, 0)
TPYEET.Size = UDim2.new(0, 140, 0, 50)
TPYEET.Font = Enum.Font.SourceSansLight
TPYEET.FontSize = Enum.FontSize.Size14
TPYEET.Text = "TELEPORT"
TPYEET.TextColor3 = Color3.new(1, 1, 1)
TPYEET.TextScaled = true
TPYEET.TextStrokeTransparency = 0
TPYEET.TextWrapped = true

UserHolderTP.Name = "UserHolderTP"
UserHolderTP.Parent = tpgui
UserHolderTP.BackgroundColor3 = Color3.new(0.0156863, 0.0156863, 0.0156863)
UserHolderTP.BorderSizePixel = 0
UserHolderTP.Position = UDim2.new(0.0516129024, 0, 0.451651365, 0)
UserHolderTP.Size = UDim2.new(0, 139, 0, 3)
UserHolderTP.Font = Enum.Font.SourceSans
UserHolderTP.FontSize = Enum.FontSize.Size14
UserHolderTP.Text = ""
UserHolderTP.TextColor3 = Color3.new(0, 0, 0)

InsertUserTP.Name = "InsertUserTP"
InsertUserTP.Parent = tpgui
InsertUserTP.BackgroundColor3 = Color3.new(1, 1, 1)
InsertUserTP.BackgroundTransparency = 1
InsertUserTP.BorderSizePixel = 0
InsertUserTP.Position = UDim2.new(0.0064516128, 0, 0.186868697, 0)
InsertUserTP.Size = UDim2.new(0, 154, 0, 50)
InsertUserTP.Font = Enum.Font.SourceSansLight
InsertUserTP.FontSize = Enum.FontSize.Size14
InsertUserTP.Text = "USERNAME"
InsertUserTP.TextColor3 = Color3.new(1, 1, 1)
InsertUserTP.TextScaled = true
InsertUserTP.TextWrapped = true

TpTitle.Name = "TpTitle"
TpTitle.Parent = tpgui
TpTitle.BackgroundColor3 = Color3.new(1, 1, 1)
TpTitle.BackgroundTransparency = 1
TpTitle.BorderSizePixel = 0
TpTitle.Position = UDim2.new(0.0064516128, 0, 0, 0)
TpTitle.Size = UDim2.new(0, 154, 0, 31)
TpTitle.Font = Enum.Font.SourceSansLight
TpTitle.FontSize = Enum.FontSize.Size14
TpTitle.Text = "TELEPORT GUI"
TpTitle.TextColor3 = Color3.new(1, 1, 1)
TpTitle.TextScaled = true
TpTitle.TextStrokeTransparency = 0
TpTitle.TextWrapped = true

RightSepBarTp.Name = "RightSepBarTp"
RightSepBarTp.Parent = tpgui
RightSepBarTp.BackgroundColor3 = Color3.new(1, 1, 1)
RightSepBarTp.BackgroundTransparency = 0.5
RightSepBarTp.BorderSizePixel = 0
RightSepBarTp.Position = UDim2.new(0.993548393, 0, 0.0757575706, 0)
RightSepBarTp.Size = UDim2.new(0, 1, 0, 167)
RightSepBarTp.Font = Enum.Font.SourceSans
RightSepBarTp.FontSize = Enum.FontSize.Size14
RightSepBarTp.Text = ""
RightSepBarTp.TextColor3 = Color3.new(0, 0, 0)

TpHideButton.Name = "TpHideButton"
TpHideButton.Parent = tpgui
TpHideButton.BackgroundColor3 = Color3.new(1, 0.34902, 0.34902)
TpHideButton.BackgroundTransparency = 0.30000001192093
TpHideButton.BorderSizePixel = 0
TpHideButton.Position = UDim2.new(0.0322580636, 0, 0.89015615, 0)
TpHideButton.Size = UDim2.new(0, 146, 0, 18)
TpHideButton.Font = Enum.Font.SourceSansLight
TpHideButton.FontSize = Enum.FontSize.Size14
TpHideButton.Text = "HIDE"
TpHideButton.TextColor3 = Color3.new(1, 1, 1)
TpHideButton.TextScaled = true
TpHideButton.TextStrokeTransparency = 0
TpHideButton.TextWrapped = true

AmokahsLogo.Name = "AmokahsLogo"
AmokahsLogo.Parent = Main
AmokahsLogo.BackgroundColor3 = Color3.new(1, 1, 1)
AmokahsLogo.BackgroundTransparency = 1
AmokahsLogo.BorderSizePixel = 0
AmokahsLogo.Position = UDim2.new(0.0177514795, 0, 0, 0)
AmokahsLogo.Size = UDim2.new(0, 34, 0, 35)
AmokahsLogo.Image = "rbxassetid://2715559615"

SuperPunch.Name = "SuperPunch"
SuperPunch.Parent = Main
SuperPunch.BackgroundColor3 = Color3.new(1, 1, 1)
SuperPunch.BackgroundTransparency = 0.5
SuperPunch.BorderSizePixel = 0
SuperPunch.Position = UDim2.new(0.511219442, 0, 0.58801502, 0)
SuperPunch.Size = UDim2.new(0, 158, 0, 22)
SuperPunch.Font = Enum.Font.SourceSans
SuperPunch.FontSize = Enum.FontSize.Size14
SuperPunch.Text = "SUPER PUNCH"
SuperPunch.TextColor3 = Color3.new(1, 1, 1)
SuperPunch.TextScaled = true
SuperPunch.TextStrokeTransparency = 0
SuperPunch.TextWrapped = true

KillAura.Name = "KillAura"
KillAura.Parent = Main
KillAura.BackgroundColor3 = Color3.new(1, 1, 1)
KillAura.BackgroundTransparency = 0.5
KillAura.BorderColor3 = Color3.new(1, 0, 0)
KillAura.BorderSizePixel = 0
KillAura.Position = UDim2.new(0.511219442, 0, 0.262595385, 0)
KillAura.Size = UDim2.new(0, 157, 0, 22)
KillAura.Font = Enum.Font.SourceSans
KillAura.FontSize = Enum.FontSize.Size14
KillAura.Text = "TOGGABLE KILL AURA 'P'"
KillAura.TextColor3 = Color3.new(1, 1, 1)
KillAura.TextScaled = true
KillAura.TextStrokeTransparency = 0
KillAura.TextWrapped = true

BeCriminal.Name = "BeCriminal"
BeCriminal.Parent = Main
BeCriminal.BackgroundColor3 = Color3.new(1, 1, 1)
BeCriminal.BackgroundTransparency = 0.5
BeCriminal.BorderSizePixel = 0
BeCriminal.Position = UDim2.new(0.514421463, 0, 0.696629226, 0)
BeCriminal.Size = UDim2.new(0, 74, 0, 22)
BeCriminal.Font = Enum.Font.SourceSans
BeCriminal.FontSize = Enum.FontSize.Size14
BeCriminal.Text = "CRIMINAL"
BeCriminal.TextColor3 = Color3.new(1, 1, 1)
BeCriminal.TextScaled = true
BeCriminal.TextStrokeTransparency = 0
BeCriminal.TextWrapped = true

BeGuard.Name = "BeGuard"
BeGuard.Parent = Main
BeGuard.BackgroundColor3 = Color3.new(1, 1, 1)
BeGuard.BackgroundTransparency = 0.5
BeGuard.BorderSizePixel = 0
BeGuard.Position = UDim2.new(0.0177514795, 0, 0.696629226, 0)
BeGuard.Size = UDim2.new(0, 77, 0, 22)
BeGuard.Font = Enum.Font.SourceSans
BeGuard.FontSize = Enum.FontSize.Size14
BeGuard.Text = "GUARD"
BeGuard.TextColor3 = Color3.new(1, 1, 1)
BeGuard.TextScaled = true
BeGuard.TextStrokeTransparency = 0
BeGuard.TextWrapped = true

BeInmate.Name = "BeInmate"
BeInmate.Parent = Main
BeInmate.BackgroundColor3 = Color3.new(1, 1, 1)
BeInmate.BackgroundTransparency = 0.5
BeInmate.BorderSizePixel = 0
BeInmate.Position = UDim2.new(0.268615901, 0, 0.696629226, 0)
BeInmate.Size = UDim2.new(0, 74, 0, 22)
BeInmate.Font = Enum.Font.SourceSans
BeInmate.FontSize = Enum.FontSize.Size14
BeInmate.Text = "INMATE"
BeInmate.TextColor3 = Color3.new(1, 1, 1)
BeInmate.TextScaled = true
BeInmate.TextStrokeTransparency = 0
BeInmate.TextWrapped = true

ArrestAll.Name = "ArrestAll"
ArrestAll.Parent = Main
ArrestAll.BackgroundColor3 = Color3.new(1, 1, 1)
ArrestAll.BackgroundTransparency = 0.5
ArrestAll.BorderSizePixel = 0
ArrestAll.Position = UDim2.new(0.511834323, 0, 0.370786548, 0)
ArrestAll.Size = UDim2.new(0, 159, 0, 22)
ArrestAll.Font = Enum.Font.SourceSans
ArrestAll.FontSize = Enum.FontSize.Size14
ArrestAll.Text = "ARREST ALL"
ArrestAll.TextColor3 = Color3.new(1, 1, 1)
ArrestAll.TextScaled = true
ArrestAll.TextStrokeTransparency = 0
ArrestAll.TextWrapped = true

InvGuns.Name = "InvGuns"
InvGuns.Parent = Main
InvGuns.BackgroundColor3 = Color3.new(1, 1, 1)
InvGuns.BackgroundTransparency = 0.5
InvGuns.BorderSizePixel = 0
InvGuns.Position = UDim2.new(0.508875728, 0, 0.16104874, 0)
InvGuns.Size = UDim2.new(0, 159, 0, 22)
InvGuns.Font = Enum.Font.SourceSans
InvGuns.FontSize = Enum.FontSize.Size14
InvGuns.Text = "TURN GUNS INVIS (Unequip first)"
InvGuns.TextColor3 = Color3.new(1, 1, 1)
InvGuns.TextScaled = true
InvGuns.TextStrokeTransparency = 0
InvGuns.TextWrapped = true

CrimPunch.Name = "CrimPunch"
CrimPunch.Parent = Main
CrimPunch.BackgroundColor3 = Color3.new(1, 1, 1)
CrimPunch.BackgroundTransparency = 0.5
CrimPunch.BorderSizePixel = 0
CrimPunch.Position = UDim2.new(0.508260846, 0, 0.481702745, 0)
CrimPunch.Size = UDim2.new(0, 158, 0, 22)
CrimPunch.Font = Enum.Font.SourceSans
CrimPunch.FontSize = Enum.FontSize.Size14
CrimPunch.Text = "REMOVE TOOLS"
CrimPunch.TextColor3 = Color3.new(1, 1, 1)
CrimPunch.TextScaled = true
CrimPunch.TextStrokeTransparency = 0
CrimPunch.TextWrapped = true

Trans.Name = "Trans"
Trans.Parent = Main
Trans.BackgroundColor3 = Color3.new(1, 0.458824, 0.439216)
Trans.BackgroundTransparency = 0.5
Trans.BorderSizePixel = 0
Trans.Position = UDim2.new(0.64462477, 0, 0.0199335553, 0)
Trans.Size = UDim2.new(0, 80, 0, 25)
Trans.Font = Enum.Font.SourceSans
Trans.FontSize = Enum.FontSize.Size14
Trans.Text = "TRANSPARENT"
Trans.TextColor3 = Color3.new(1, 1, 1)
Trans.TextScaled = true
Trans.TextStrokeTransparency = 0
Trans.TextWrapped = true

Open.Name = "Open"
Open.Parent = PrisonGui
Open.BackgroundColor3 = Color3.new(1, 1, 1)
Open.BackgroundTransparency = 1
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.915841579, 0)
Open.Size = UDim2.new(0, 154, 0, 34)

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = Open
OpenGUI.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
OpenGUI.BackgroundTransparency = 0.5
OpenGUI.BorderSizePixel = 0
OpenGUI.Size = UDim2.new(0, 154, 0, 34)
OpenGUI.Font = Enum.Font.SourceSansLight
OpenGUI.FontSize = Enum.FontSize.Size14
OpenGUI.Text = "OPEN"
OpenGUI.TextColor3 = Color3.new(1, 1, 1)
OpenGUI.TextScaled = true
OpenGUI.TextStrokeTransparency = 0
OpenGUI.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = PrisonGui
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.BorderSizePixel = 0
Credit.Position = UDim2.new(0, 0, 0.589113653, 0)
Credit.Size = UDim2.new(0, 156, 0, 43)
Credit.Font = Enum.Font.SourceSansSemibold
Credit.FontSize = Enum.FontSize.Size14
Credit.Text = "Lame Prison Life GUI by Amokah"
Credit.TextColor3 = Color3.new(0, 0.764706, 0.776471)
Credit.TextScaled = true
Credit.TextStrokeTransparency = 0.80000001192093
Credit.TextTransparency = 0.5
Credit.TextWrapped = true
Credit.TextXAlignment = Enum.TextXAlignment.Left

Dino.Name = "Dino"
Dino.Parent = PrisonGui
Dino.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Dino.BackgroundTransparency = 0.80000001192093
Dino.BorderColor3 = Color3.new(1, 0, 0)
Dino.BorderSizePixel = 5
Dino.Position = UDim2.new(0, 0, 0.343575954, 0)
Dino.Size = UDim2.new(0, 1025, 0, 101)
Dino.Visible = false
Dino.Font = Enum.Font.SourceSans
Dino.FontSize = Enum.FontSize.Size14
Dino.Text = "This GUI is not the best with FREE exploits. It's mainly for paid exploits, such as Visenya, Synapse, etc. If you are using a free lua executor with this, then don't be surprised if something does not work correctly, please note, if anyone has uploaded this with their own link, that is not 'https://pastebin.com/JS5SYqaU' then you won't get the newest release of my crappy GUI, but anyway, good luck and have fun with this I guess."
Dino.TextColor3 = Color3.new(1, 1, 1)
Dino.TextScaled = true
Dino.TextStrokeTransparency = 0.80000001192093
Dino.TextTransparency = 0.80000001192093
Dino.TextWrapped = true

KA.Name = "KA"
KA.Parent = PrisonGui
KA.BackgroundColor3 = Color3.new(1, 1, 1)
KA.BackgroundTransparency = 1
KA.BorderSizePixel = 0
KA.Position = UDim2.new(0, 0, 0.640399575, 0)
KA.Size = UDim2.new(0, 162, 0, 62)

NameOfKa.Name = "NameOfKa"
NameOfKa.Parent = KA
NameOfKa.BackgroundColor3 = Color3.new(1, 1, 1)
NameOfKa.BackgroundTransparency = 1
NameOfKa.BorderSizePixel = 0
NameOfKa.Position = UDim2.new(0, 0, 0.419354856, 0)
NameOfKa.Size = UDim2.new(0, 157, 0, 30)
NameOfKa.Font = Enum.Font.SourceSans
NameOfKa.FontSize = Enum.FontSize.Size14
NameOfKa.Text = "KILL AURA "
NameOfKa.TextColor3 = Color3.new(0.72549, 0.329412, 0.337255)
NameOfKa.TextScaled = true
NameOfKa.TextStrokeColor3 = Color3.new(0.333333, 0, 0)
NameOfKa.TextStrokeTransparency = 0.5
NameOfKa.TextWrapped = true
NameOfKa.TextXAlignment = Enum.TextXAlignment.Left

TrueOrFalse.Name = "TrueOrFalse"
TrueOrFalse.Parent = KA
TrueOrFalse.BackgroundColor3 = Color3.new(1, 1, 1)
TrueOrFalse.BackgroundTransparency = 1
TrueOrFalse.BorderSizePixel = 0
TrueOrFalse.Position = UDim2.new(0, 0, 0.913856268, 0)
TrueOrFalse.Size = UDim2.new(0, 148, 0, 33)
TrueOrFalse.Font = Enum.Font.SourceSans
TrueOrFalse.FontSize = Enum.FontSize.Size14
TrueOrFalse.Text = "nil"
TrueOrFalse.TextColor3 = Color3.new(1, 0.278431, 0.278431)
TrueOrFalse.TextScaled = true
TrueOrFalse.TextStrokeTransparency = 0.5
TrueOrFalse.TextWrapped = true
TrueOrFalse.TextXAlignment = Enum.TextXAlignment.Left

TeamGUIOC.Name = "TeamGUIOC"
TeamGUIOC.Parent = PrisonGui
TeamGUIOC.BackgroundColor3 = Color3.new(1, 1, 1)
TeamGUIOC.BackgroundTransparency = 1
TeamGUIOC.BorderSizePixel = 0
TeamGUIOC.Position = UDim2.new(0.00132625992, 0, 0.759765625, 0)
TeamGUIOC.Size = UDim2.new(0, 156, 0, 33)

TeamOPorCL.Name = "TeamOPorCL"
TeamOPorCL.Parent = TeamGUIOC
TeamOPorCL.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
TeamOPorCL.BackgroundTransparency = 0.5
TeamOPorCL.BorderColor3 = Color3.new(0.568627, 0.176471, 0.568627)
TeamOPorCL.BorderSizePixel = 0
TeamOPorCL.Position = UDim2.new(-5.00802327972, 5, 5.12121212, 5)
TeamOPorCL.Size = UDim2.new(0, 156, 0, 32)
TeamOPorCL.Font = Enum.Font.SourceSansLight
TeamOPorCL.FontSize = Enum.FontSize.Size14
TeamOPorCL.Text = "Open/Close STAY ON TEAM GUI"
TeamOPorCL.TextColor3 = Color3.new(1, 1, 1)
TeamOPorCL.TextScaled = true
TeamOPorCL.TextStrokeTransparency = 0
TeamOPorCL.TextWrapped = true

TeamMain.Name = "TeamMain"
TeamMain.Parent = PrisonGui
TeamMain.BackgroundColor3 = Color3.new(0.219608, 0.219608, 0.219608)
TeamMain.BorderSizePixel = 0
TeamMain.Position = UDim2.new(0, 0, 0.291015625, 0)
TeamMain.Size = UDim2.new(0, 214, 0, 152)
TeamMain.Visible = false

TextLabel.Parent = TeamMain
TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel.BackgroundTransparency = 0.5
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.104430377, 0, 0.203947365, 0)
TextLabel.Size = UDim2.new(0, 169, 0, 3)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.new(0, 0, 0)

TextLabel_2.Parent = TeamMain
TextLabel_2.BackgroundColor3 = Color3.new(0, 0, 0)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Size = UDim2.new(0, 214, 0, 31)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "Stay On Team GUI"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextStrokeTransparency = 0
TextLabel_2.TextWrapped = true

SOG.Name = "SOG"
SOG.Parent = TeamMain
SOG.BackgroundColor3 = Color3.new(0.52549, 0.756863, 1)
SOG.BackgroundTransparency = 0.5
SOG.BorderSizePixel = 0
SOG.Position = UDim2.new(0, 0, 0.223684207, 0)
SOG.Size = UDim2.new(0, 214, 0, 25)
SOG.Font = Enum.Font.SourceSansLight
SOG.FontSize = Enum.FontSize.Size14
SOG.Text = "Stay on guards team!"
SOG.TextColor3 = Color3.new(1, 1, 1)
SOG.TextScaled = true
SOG.TextStrokeTransparency = 0
SOG.TextWrapped = true

SOC.Name = "SOC"
SOC.Parent = TeamMain
SOC.BackgroundColor3 = Color3.new(1, 0.235294, 0.235294)
SOC.BackgroundTransparency = 0.5
SOC.BorderSizePixel = 0
SOC.Position = UDim2.new(0, 0, 0.394416004, 0)
SOC.Size = UDim2.new(0, 214, 0, 25)
SOC.Font = Enum.Font.SourceSansLight
SOC.FontSize = Enum.FontSize.Size14
SOC.Text = "Stay on criminals team!"
SOC.TextColor3 = Color3.new(1, 1, 1)
SOC.TextScaled = true
SOC.TextStrokeTransparency = 0
SOC.TextWrapped = true

SOI.Name = "SOI"
SOI.Parent = TeamMain
SOI.BackgroundColor3 = Color3.new(1, 0.831373, 0.494118)
SOI.BackgroundTransparency = 0.5
SOI.BorderSizePixel = 0
SOI.Position = UDim2.new(0, 0, 0.559050083, 0)
SOI.Size = UDim2.new(0, 214, 0, 25)
SOI.Font = Enum.Font.SourceSansLight
SOI.FontSize = Enum.FontSize.Size14
SOI.Text = "Stay on inmates team!"
SOI.TextColor3 = Color3.new(1, 1, 1)
SOI.TextScaled = true
SOI.TextStrokeTransparency = 0
SOI.TextWrapped = true

Disable.Name = "Disable"
Disable.Parent = TeamMain
Disable.BackgroundColor3 = Color3.new(0.615686, 0.407843, 0.411765)
Disable.BackgroundTransparency = 0.5
Disable.BorderSizePixel = 0
Disable.Position = UDim2.new(0, 0, 0.801872253, 0)
Disable.Size = UDim2.new(0, 214, 0, 29)
Disable.Font = Enum.Font.SourceSansSemibold
Disable.FontSize = Enum.FontSize.Size14
Disable.Text = "Disable"
Disable.TextColor3 = Color3.new(1, 1, 1)
Disable.TextScaled = true
Disable.TextStrokeTransparency = 0
Disable.TextWrapped = true


Main.Position = UDim2.new(0.345, 0,2.204, 0)
TeamOPorCL.Visible = false
TeamMain.Visible = false
TeamGUIOC.Visible = false
LocalCommands.Visible = false
ForceCgui.Visible = false
tpgui.Visible = false
KA.Visible = true
TrueOrFalse.Text = "nil"
TrueOrFalse.TextColor3 = Color3.new(255, 0, 191)

wait(0.5)
Dino.Visible = true
Dino.TextTransparency = 0.8
Dino.TextStrokeTransparency = 0.8
wait(0.1)
Dino.TextTransparency = 0.7
Dino.TextStrokeTransparency = 0.7
wait(0.1)
Dino.TextTransparency = 0.6
Dino.TextStrokeTransparency = 0.6
wait(0.1)
Dino.TextTransparency = 0.5
Dino.TextStrokeTransparency = 0.5
wait(0.1)
Dino.TextTransparency = 0.4
Dino.TextStrokeTransparency = 0.4
wait(0.1)
Dino.TextTransparency = 0.3
Dino.TextStrokeTransparency = 0.3
wait(0.1)
Dino.TextTransparency = 0.2
Dino.TextStrokeTransparency = 0.2
wait(0.1)
Dino.TextTransparency = 0.1
Dino.TextStrokeTransparency = 0.1

wait(5)

Dino.TextTransparency = 0.1
Dino.TextStrokeTransparency = 0.1
wait(0.1)
Dino.TextTransparency = 0.2
Dino.TextStrokeTransparency = 0.2
wait(0.1)
Dino.TextTransparency = 0.3
Dino.TextStrokeTransparency = 0.3
wait(0.1)
Dino.TextTransparency = 0.4
Dino.TextStrokeTransparency = 0.4
wait(0.1)
Dino.TextTransparency = 0.5
Dino.TextStrokeTransparency = 0.5
wait(0.1)
Dino.TextTransparency = 0.6
Dino.TextStrokeTransparency = 0.6
wait(0.1)
Dino.TextTransparency = 0.7
Dino.TextStrokeTransparency = 0.7
wait(0.1)
Dino.TextTransparency = 0.8
Dino.TextStrokeTransparency = 0.8
wait(0.1)
Dino.Visible = false

OpenGUI.MouseButton1Down:connect(function()
	Main.Visible = true
	
	Main:TweenPosition(UDim2.new(0.345, 0,0.204, 0), 'Out', 'Bounce', 3)
end)

Close.MouseButton1Down:connect(function()
	Main:TweenPosition(UDim2.new(0.345, 0,2.204, 0), 'Out', 'Bounce', 1)
	wait(1)
	Main.Visible = false
end)

CrimG.MouseButton1Down:connect(function()
	ForceCgui.Visible = true
end)

CrimHideButton.MouseButton1Down:connect(function()
	ForceCgui.Visible = false
end)

TheLocal.MouseButton1Down:connect(function()
	if LocalCommands.Visible == false then
		LocalCommands.Visible = true
	elseif LocalCommands.Visible == true then
		LocalCommands.Visible = false
	end
end)

NWalk.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end)

NexusTPbut.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(879,99,2377)
end)

CrimBaseTPbut.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943, 96, 2055)
end)

tfWalk.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 41
end)

tfJump.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 75
end)

Njump.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
end)

GuardAreaTPbut.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(802,99,2270)
end)

Respawn.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -496, 0)
end)

ObGuns.MouseButton1Down:connect(function()
	for i,v in pairs(Workspace.Prison_ITEMS.giver:GetChildren()) do

OwO = Workspace.Remote.ItemHandler:InvokeServer(v.ITEMPICKUP)
end
end)

TaseBypass.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	game.Players.LocalPlayer.CharacterAdded:connect(function()
	game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)
	game.Players.LocalPlayer.Character.ClientInputHandler.Disabled = true
	end)
end)

RemoveDoors.MouseButton1Down:connect(function()
				Workspace.Prison_Cellblock.doors:Destroy()
			
			for i,v in pairs(workspace:GetChildren())do
					if v.Name == "Doors" then
				v:Destroy()
			end
	end
end)

Btools.MouseButton1Down:connect(function()
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
end)

ModGun.MouseButton1Down:connect(function()
local m = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
                m.Damage = 100
                m.MaxAmmo = math.huge
                m.CurrentAmmo = math.huge
                m.AutoFire = true
                m.FireRate = 0
end)

KillAll.MouseButton1Down:connect(function()
	
workspace.Remote.TeamEvent:FireServer("Medium stone grey")

game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)	

wait(0.5)
function kill(a)
local A_1 =
{
[1] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-391.152252, 8.65560055, -83.2166901)),
["Distance"] = 3.2524313926697,
["Cframe"] = CFrame.new(840.310791, 101.334137, 2267.87988, 0.0636406094, 0.151434347, -0.986416459, 0, 0.988420188, 0.151741937, 0.997972965, -0.00965694897, 0.0629036576),
["Hit"] = a.Character.Head
},
   [2] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-392.481476, -8.44939327, -76.7261353)),
["Distance"] = 3.2699294090271,
["Cframe"] = CFrame.new(840.290466, 101.184189, 2267.93506, 0.0964837447, 0.0589403138, -0.993587971, 4.65661287e-10, 0.998245299, 0.0592165813, 0.995334625, -0.00571343815, 0.0963144377),
["Hit"] = a.Character.Head
},
[3] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-389.21701, -2.50536323, -92.2163162)),
["Distance"] = 3.1665518283844,
["Cframe"] = CFrame.new(840.338867, 101.236496, 2267.80371, 0.0166504811, 0.0941716284, -0.995416701, 1.16415322e-10, 0.995554805, 0.0941846818, 0.999861419, -0.00156822044, 0.0165764652),
["Hit"] = a.Character.Head
},
[4] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-393.353973, 3.13988972, -72.5452042)),
["Distance"] = 3.3218522071838,
["Cframe"] = CFrame.new(840.277222, 101.285957, 2267.9707, 0.117109694, 0.118740402, -0.985994935, -1.86264515e-09, 0.992826641, 0.119563118, 0.993119001, -0.0140019981, 0.116269611),
["Hit"] = a.Character.Head
},
[5] =
{
["RayObject"] = Ray.new(Vector3.new(845.555908, 101.429337, 2269.43945), Vector3.new(-390.73172, 3.2097764, -85.5477524)),
["Distance"] = 3.222757101059,
["Cframe"] = CFrame.new(840.317993, 101.286423, 2267.86035, 0.0517584644, 0.123365127, -0.991010666, 0, 0.992340803, 0.123530701, 0.99865967, -0.00639375951, 0.0513620302),
["Hit"] = a.Character.Head
}
}
local A_2 = game.Players.LocalPlayer.Backpack["Remington 870"]
local Event = game:GetService("ReplicatedStorage").ShootEvent
Event:FireServer(A_1, A_2)
Event:FireServer(A_1, A_2)
end

for i,v in pairs(game.Players:GetChildren())do
if v.Name ~= game.Players.LocalPlayer.Name then
kill(v)
end
end
wait(1)
workspace.Remote.TeamEvent:FireServer("Bright orange")

end)

TPshow.MouseButton1Down:connect(function()
	tpgui.Visible = true
end)

TpHideButton.MouseButton1Down:connect(function()
	tpgui.Visible = false
end)

TPYEET.MouseButton1Down:connect(function()
	Target = InsertUserTP.Text
	
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
end)

FLY.MouseButton1Down:connect(function()
	repeat wait()
   until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
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
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
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
Fly()
end)

SuperPunch.MouseButton1Down:connect(function()
	mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']
mouse = game.Players.LocalPlayer:GetMouse()
punching = false
cooldown = false

function punch()
cooldown = true
local part = Instance.new("Part", game.Players.LocalPlayer.Character)
part.Transparency = 1
part.Size = Vector3.new(5, 2, 3)
part.CanCollide = false
local w1 = Instance.new("Weld", part)
w1.Part0 = game.Players.LocalPlayer.Character.Torso
w1.Part1 = part
w1.C1 = CFrame.new(0,0,2)
part.Touched:connect(function(hit)
if game.Players:FindFirstChild(hit.Parent.Name) then
local plr = game.Players:FindFirstChild(hit.Parent.Name)
if plr.Name ~= game.Players.LocalPlayer.Name then
part:Destroy()

for i = 1,100 do
meleeRemote:FireServer(plr)
end
end
end
end)

wait(1)
cooldown = false
part:Destroy()
end


mouse.KeyDown:connect(function(key)
if cooldown == false then
if key:lower() == "f" then

punch()

end
end
end)
end)

BeInmate.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright orange")
end)

BeGuard.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Bright blue")
end)

BeCriminal.MouseButton1Down:connect(function()
	LCS = game.Workspace["Criminals Spawn"].SpawnLocation

LCS.CanCollide = false
LCS.Size = Vector3.new(51.05, 24.12, 54.76)
LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
LCS.Transparency = 1
wait(0.5)
LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 0
end)

InvGuns.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants())do
	if v.ClassName == "Model" then
		v:Destroy()
	end
end

game.Players.LocalPlayer.Backpack.M9.Part:Destroy()

game.Players.LocalPlayer.Backpack.M9.Part:Destroy()
end)

CrimPunch.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren())do
		if v.ClassName == "Tool" then
			v:Destroy()
		end
	end
end)

BeNeutral.MouseButton1Down:connect(function()
	Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
end)

TeamOPorCL.MouseButton1Down:connect(function()
	if TeamMain.Visible == true then
		
		TeamMain:TweenPosition(UDim2.new(-0.00802327972, 0, 1.12121212, 0), 'Out', 'Bounce', 2)
		wait(2)
		TeamMain.Visible = false
	elseif
		TeamMain.Visible == false then
			TeamMain:TweenPosition(UDim.new(-0.00802327972, 0, 5.12121212, 0), 'Out', 'Bounce', 2)
		TeamMain.Visible = true
	end
end)

local yee = false

SOC.MouseButton1Down:connect(function()
yee = true
wait(0.2)
if yee == true then
	LCS = game.Workspace["Criminals Spawn"].SpawnLocation

LCS.CanCollide = false
LCS.Size = Vector3.new(51.05, 24.12, 54.76)
LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
LCS.Transparency = 1
wait(0.5)
while yee do
	wait(0.003)
	LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
end
		LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1
wait(2)
LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1	
end
end)

local GuTe = false

SOG.MouseButton1Down:connect(function()
	if GuTe == false then
		GuTe = true
		if GuTe == true then
			while GuTe do
				wait(0.2)
				Workspace.Remote.TeamEvent:FireServer("Bright blue")
			end
		end
	end
end)

local InTe = false

SOI.MouseButton1Down:connect(function()
	if InTe == false then
		InTe = true
		if InTe == true then
			wait(0.2)
			workspace.Remote.TeamEvent:FireServer("Bright orange")
		end
	end
end)

Disable.MouseButton1Down:connect(function()
	InTe = false
	
	GuTe = false
	
		yee = false
		wait(0.2)
		if yee == false then
		LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1
wait(2)
LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
LCS.Size = Vector3.new(6, 0.2, 6)
LCS.Transparency = 1	
end
end)

Trans.MouseButton1Down:connect(function()
	PLMain = Main
	PLCgui = ForceCgui
	PLLc = LocalCommands
	PLtp = tpgui
	TMain = TeamMain
	
	TLble = TitleBar
	LCTitleBar = LocalCMD_BarTitle
	LCTitle = LocalCMD_Title
	
	if LCTitle.BackgroundTransparency == 0 then
		LCTitle.BackgroundTransparency = 0.5
	elseif
		LCTitle.BackgroundTransparency == 0.5 then
		LCTitle.BackgroundTransparency = 0
	end
	
	if LCTitleBar.BackgroundTransparency == 0 then
		LCTitleBar.BackgroundTransparency = 0.5
	elseif
		LCTitleBar.BackgroundTransparency == 0.5 then
		LCTitleBar.BackgroundTransparency = 0
	end
	
	if TLble.BackgroundTransparency == 0.8 then
		TLble.BackgroundTransparency = 0.5
	elseif
		TLble.BackgroundTransparency == 0.5 then
		TLble.BackgroundTransparency = 0.8
	end
	
	if PLMain.BackgroundTransparency == 0 then
		PLMain.BackgroundTransparency = 0.5
	elseif
		PLMain.BackgroundTransparency == 0.5 then
		PLMain.BackgroundTransparency = 0
	end
	
	if PLCgui.BackgroundTransparency == 0 then
		PLCgui.BackgroundTransparency = 0.5
	elseif
		PLCgui.BackgroundTransparency == 0.5 then
		PLCgui.BackgroundTransparency = 0
	end
	
	if PLLc.BackgroundTransparency == 0 then
		PLLc.BackgroundTransparency = 0.5
	elseif
		PLLc.BackgroundTransparency == 0.5 then
		PLLc.BackgroundTransparency = 0
	end
	
	if PLtp.BackgroundTransparency == 0 then
		PLtp.BackgroundTransparency = 0.5
	elseif
		PLtp.BackgroundTransparency == 0.5 then
		PLtp.BackgroundTransparency = 0
	end

	if TMain.BackgroundTransparency == 0 then
		TMain.BackgroundTransparency = 0.5
	elseif
		TMain.BackgroundTransparency == 0.5 then
		TMain.BackgroundTransparency = 0
	end
end)

ArrestAll.MouseButton1Down:connect(function()
	wait(0.1)
	Player = game.Players.LocalPlayer
	Pcf = Player.Character.HumanoidRootPart.CFrame
	for i,v in pairs(game.Teams.Criminals:GetPlayers()) do
	if v.Name ~= Player.Name then
	local i = 10
    repeat
    wait()
    i = i-1
    game.Workspace.Remote.arrest:InvokeServer(v.Character.HumanoidRootPart)
    Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
    until i == 0
end
end
end)

KillAura.MouseButton1Down:connect(function()
	TrueOrFalse.Text = "FALSE"
	TrueOrFalse.TextColor3 = Color3.new(0.768628, 0.156863, 0.109804)

	mainRemotes = game.ReplicatedStorage
meleeRemote = mainRemotes['meleeEvent']

_G.killAura = false

contextactionservice = game.ContextActionService

function toggleKillAura(actionName, inputState, inputObject)
if inputState == Enum.UserInputState.Begin then
if _G.killAura == true then
_G.killAura = false
	TrueOrFalse.Text = "FALSE"
	TrueOrFalse.TextColor3 = Color3.new(0.768628, 0.156863, 0.109804)
else
_G.killAura = true
	TrueOrFalse.Text = "TRUE"
	TrueOrFalse.TextColor3 = Color3.new(0.6, 0.992157, 0.541176)
end
end
end



contextactionservice:BindAction('ToggleKillAura', toggleKillAura, false, Enum.KeyCode.P)

while wait() do
if _G.killAura == true then
for _, plr in pairs (game:GetService('Players'):GetChildren()) do
if plr.Name ~= game.Players.LocalPlayer.Name then
meleeRemote:FireServer(plr)

end
end
end
end
end)

local istptoplr = false
local metoplr = false

TextButton.MouseButton1Down:connect(function()
	Target = InsertUser.Text
	
	_G.killAura = true
	wait(0.2)
	
	Apart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
	Apart.Transparency = 1
	Apart.Anchored = true
	Apart.CanCollide = false
	wait(0.3)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
	
	istptoplr = true
	wait(0.004)
	
	if game.Players.LocalPlayer.Team.TeamColor == "Bright orange" then
		wait(6)
		workspace.Remote.TeamEvent:FireServer("Bright orange")
	elseif
		game.Players.LocalPlayer.Team.TeamColor == "Bright blue" then
			workspace.Remote.TeamEvent:FireServer("Bright blue")
	end
	
		 if istptoplr == true then
		    while istptoplr do
			wait()
			
			game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
			
			LCS = game.Workspace["Criminals Spawn"].SpawnLocation

			LCS.CanCollide = false
			LCS.Size = Vector3.new(51.05, 24.12, 54.76)
			LCS.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			LCS.Transparency = 1
		
		wait(2)
		
		      istptoplr = false
		_G.killAura = false
		
		wait(0.04)
		
		        if istptoplr == false then
		           LCS.CFrame = CFrame.new(-920.510803, 92.2271957, 2138.27002, 0, 0, -1, 0, 1, 0, 1, 0, 0)
		           LCS.Size = Vector3.new(6, 0.2, 6)
		           LCS.Transparency = 0
		           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Apart.CFrame
		           wait()
		           istptoplr = false
		    end
		end
	end
end)

TeamOPorCL:Destroy()


function dragify(Main)
dragToggle = nil
dragSpeed = .20 -- You can edit this.
dragInput = nil
dragStart = nil
dragPos = nil

function updateInput(input)
Delta = input.Position - dragStart
Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
game:GetService("TweenService"):Create(Main, TweenInfo.new(.25), {Position = Position}):Play()
end

Main.InputBegan:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
dragToggle = true
dragStart = input.Position
startPos = Main.Position
input.Changed:Connect(function()
if (input.UserInputState == Enum.UserInputState.End) then
dragToggle = false
end
end)
end
end)

Main.InputChanged:Connect(function(input)
if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
dragInput = input
end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
if (input == dragInput and dragToggle) then
updateInput(input)
end
end)
end

dragify(Main)