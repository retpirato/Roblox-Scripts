-- Script by: Bartvanm
-- Vouch the post for all the features! ( Space Gym )
-- Don't steal this and claim it yours.

-- Variables

-- Automation
toggleStrength = false
toggleBrawl = false
toggleAutoclick = false
toggleAntiAFK = false
toggleRebirthPet = false

-- Misc
toggleDiscoPet = false
toggleDiscoSize = false
toggleDiscoSkin = false
toggleTPKILL = false

AllPets ={"Sarge", "Roboto", "Krafty Karly", "Pookins", "Flash", "Corrupted Skull", "Scarecrow", "Santa"}
AllSkins = {"Electricity Charge", "ChaChing", "Tix", "Roblox", "Aura", "Questions", "Flowers", "Stars", "Ghosts", "Yellow Static", "Red Static", "Purple Static", "Green Static", "Blue Static", "Red Slime", "Orange Slime", "Yellow Slime", "Green Slime", "Blue Slime", "Purple Slime", "Blue Sparkles", "Green Sparkles", "Red Sparkles", "Purple Sparkles", "Yellow Sparkles", "Rings", "Energy", "Lightning", "Purple Evap", "Flare", "Skulls", "Corrupted", "Disco", "Rainbow", "Hyper", "Inferno", "Slashes", "Tsunami", "Super Saiyan", "Bubbles", "Hearts", "Flash", "Fireflies", "Beats", "Swirls", "Osmosis", "Bam", "Melon", "Sparks"} 

-- Instances:


-- Opens:
local WLS3GUI = Instance.new("ScreenGui")
local openTP = Instance.new("Frame")
local OpenTP = Instance.new("TextButton")
local CloseTP = Instance.new("TextButton")
local openAutomation = Instance.new("Frame")
local OpenStats = Instance.new("TextButton")
local CloseStats = Instance.new("TextButton")
local openMisc = Instance.new("Frame")
local OpenMisc = Instance.new("TextButton")
local CloseMisc = Instance.new("TextButton")

-- TP's
local TPGUI = Instance.new("Frame")
local header = Instance.new("TextLabel")
local footer = Instance.new("TextLabel")
local TPSkyGym = Instance.new("TextButton")
local CLOSEBUTTON = Instance.new("TextButton")
local TPUnderworldGym = Instance.new("TextButton")
local TPSpace = Instance.new("TextButton")
local TPBigBoyBeach = Instance.new("TextButton")
local lblVouch = Instance.new("TextLabel")
local TPTinyBeach = Instance.new("TextButton")
local TPBrawlTraining = Instance.new("TextButton")
local TPBrawlArena = Instance.new("TextButton")
local INFOBUTTON = Instance.new("TextButton")

-- Automation
local AUTOMATIONGUI = Instance.new("Frame")
local OpenStrength = Instance.new("TextButton")
local header_2 = Instance.new("TextLabel")
local footer_2 = Instance.new("TextLabel")
local CloseStrength = Instance.new("TextButton")
local OpenBrawl = Instance.new("TextButton")
local CloseBrawl = Instance.new("TextButton")
local OpenCrate = Instance.new("TextButton")
local CloseCLICK = Instance.new("TextButton")
local CLOSEBUTTON_2 = Instance.new("TextButton")
local txtCrate = Instance.new("TextBox")
local CloseAFK = Instance.new("TextButton")
local OpenAFK = Instance.new("TextButton")
local OpenCLICK = Instance.new("TextButton")
local OpenRebirthPet = Instance.new("TextButton")
local CloseRebirthPet = Instance.new("TextButton")
local txtRebirthPet = Instance.new("TextBox")

-- Misc
local MISCGUI = Instance.new("Frame")
local OpenDiscoPet = Instance.new("TextButton")
local header_3 = Instance.new("TextLabel")
local footer_3 = Instance.new("TextLabel")
local CloseDiscoPet = Instance.new("TextButton")
local CloseDiscoSize = Instance.new("TextButton")
local OpenDiscoSize = Instance.new("TextButton")
local CloseDiscoSkin = Instance.new("TextButton")
local OpenTPKILL = Instance.new("TextButton")
local CloseTPKILL = Instance.new("TextButton")
local OpenTP_2 = Instance.new("TextButton")
local CloseFAST = Instance.new("TextButton")
local OpenDiscoSkin = Instance.new("TextButton")
local CLOSEBUTTON_3 = Instance.new("TextButton")
local OpenBtools = Instance.new("TextButton")
local OpenSize = Instance.new("TextButton")
local txtSize = Instance.new("TextBox")
local OpenSpeed = Instance.new("TextButton")
local txtSpeed = Instance.new("TextBox")
local OpenJump = Instance.new("TextButton")
local txtJump = Instance.new("TextBox")

-- Vermillion
local zVERMGUI = Instance.new("Frame")
local header_VERM = Instance.new("TextLabel")
local CLOSEBUTTON_VERM = Instance.new("TextButton")
local lblVouchInfo1 = Instance.new("TextLabel")
local lblVouchInfo3 = Instance.new("TextLabel")
local OpenURL = Instance.new("TextButton")
local lblVouchInfo2 = Instance.new("TextLabel")

-- Properties:
WLS3GUI.Name = "WLS3GUI"
WLS3GUI.Parent = game.CoreGui

openTP.Name = "openTP"
openTP.Parent = WLS3GUI
openTP.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
openTP.BackgroundTransparency = 0.40000000596046
openTP.BorderColor3 = Color3.new(1, 1, 1)
openTP.BorderSizePixel = 8
openTP.Position = UDim2.new(0, 530, 0.100000001, 0)
openTP.Size = UDim2.new(0, 226, 0, 40)
openTP.ZIndex = 2

OpenTP.Name = "OpenTP"
OpenTP.Parent = openTP
OpenTP.BackgroundColor3 = Color3.new(1, 1, 1)
OpenTP.BackgroundTransparency = 0.75
OpenTP.BorderColor3 = Color3.new(1, 1, 1)
OpenTP.BorderSizePixel = 2
OpenTP.Size = UDim2.new(0, 226, 0, 39)
OpenTP.ZIndex = 2
OpenTP.Font = Enum.Font.SciFi
OpenTP.Text = "OPEN TELEPORTS"
OpenTP.TextColor3 = Color3.new(1, 1, 1)
OpenTP.TextSize = 27
OpenTP.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
OpenTP.TextStrokeTransparency = 0

CloseTP.Name = "CloseTP"
CloseTP.Parent = openTP
CloseTP.BackgroundColor3 = Color3.new(1, 1, 1)
CloseTP.BackgroundTransparency = 0.75
CloseTP.BorderColor3 = Color3.new(1, 1, 1)
CloseTP.BorderSizePixel = 2
CloseTP.Position = UDim2.new(0, 0, 0.0366180427, 0)
CloseTP.Size = UDim2.new(0, 226, 0, 37)
CloseTP.Visible = false
CloseTP.ZIndex = 2
CloseTP.Font = Enum.Font.SciFi
CloseTP.Text = "CLOSE TELEPORTS"
CloseTP.TextColor3 = Color3.new(1, 1, 1)
CloseTP.TextSize = 27
CloseTP.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
CloseTP.TextStrokeTransparency = 0

openAutomation.Name = "openAutomation"
openAutomation.Parent = WLS3GUI
openAutomation.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
openAutomation.BackgroundTransparency = 0.40000000596046
openAutomation.BorderColor3 = Color3.new(1, 1, 1)
openAutomation.BorderSizePixel = 8
openAutomation.Position = UDim2.new(0, 780, 0.100000001, 0)
openAutomation.Size = UDim2.new(0, 226, 0, 40)
openAutomation.ZIndex = 2

OpenStats.Name = "OpenStats"
OpenStats.Parent = openAutomation
OpenStats.BackgroundColor3 = Color3.new(1, 1, 1)
OpenStats.BackgroundTransparency = 0.75
OpenStats.BorderColor3 = Color3.new(1, 1, 1)
OpenStats.BorderSizePixel = 2
OpenStats.Size = UDim2.new(0, 226, 0, 39)
OpenStats.ZIndex = 2
OpenStats.Font = Enum.Font.SciFi
OpenStats.Text = "OPEN AUTOMATION"
OpenStats.TextColor3 = Color3.new(1, 1, 1)
OpenStats.TextSize = 27
OpenStats.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
OpenStats.TextStrokeTransparency = 0

CloseStats.Name = "CloseStats"
CloseStats.Parent = openAutomation
CloseStats.BackgroundColor3 = Color3.new(1, 1, 1)
CloseStats.BackgroundTransparency = 0.75
CloseStats.BorderColor3 = Color3.new(1, 1, 1)
CloseStats.BorderSizePixel = 2
CloseStats.Position = UDim2.new(0, 0, 0.0366180427, 0)
CloseStats.Size = UDim2.new(0, 226, 0, 37)
CloseStats.Visible = false
CloseStats.ZIndex = 2
CloseStats.Font = Enum.Font.SciFi
CloseStats.Text = "CLOSE AUTOMATION"
CloseStats.TextColor3 = Color3.new(1, 1, 1)
CloseStats.TextSize = 27
CloseStats.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
CloseStats.TextStrokeTransparency = 0

openMisc.Name = "openMisc"
openMisc.Parent = WLS3GUI
openMisc.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
openMisc.BackgroundTransparency = 0.40000000596046
openMisc.BorderColor3 = Color3.new(1, 1, 1)
openMisc.BorderSizePixel = 8
openMisc.Position = UDim2.new(0, 1030, 0.100000001, 0)
openMisc.Size = UDim2.new(0, 226, 0, 40)
openMisc.ZIndex = 2

OpenMisc.Name = "OpenMisc"
OpenMisc.Parent = openMisc
OpenMisc.BackgroundColor3 = Color3.new(1, 1, 1)
OpenMisc.BackgroundTransparency = 0.75
OpenMisc.BorderColor3 = Color3.new(1, 1, 1)
OpenMisc.BorderSizePixel = 2
OpenMisc.Position = UDim2.new(0, 0, 0.0250000004, 0)
OpenMisc.Size = UDim2.new(0, 226, 0, 39)
OpenMisc.ZIndex = 2
OpenMisc.Font = Enum.Font.SciFi
OpenMisc.Text = "OPEN MISC"
OpenMisc.TextColor3 = Color3.new(1, 1, 1)
OpenMisc.TextSize = 27
OpenMisc.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
OpenMisc.TextStrokeTransparency = 0

CloseMisc.Name = "CloseMisc"
CloseMisc.Parent = openMisc
CloseMisc.BackgroundColor3 = Color3.new(1, 1, 1)
CloseMisc.BackgroundTransparency = 0.75
CloseMisc.BorderColor3 = Color3.new(1, 1, 1)
CloseMisc.BorderSizePixel = 2
CloseMisc.Position = UDim2.new(0, 0, 0.0366180427, 0)
CloseMisc.Size = UDim2.new(0, 226, 0, 37)
CloseMisc.Visible = false
CloseMisc.ZIndex = 2
CloseMisc.Font = Enum.Font.SciFi
CloseMisc.Text = "CLOSE MISC"
CloseMisc.TextColor3 = Color3.new(1, 1, 1)
CloseMisc.TextSize = 27
CloseMisc.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
CloseMisc.TextStrokeTransparency = 0

TPGUI.Name = "TPGUI"
TPGUI.Parent = WLS3GUI
TPGUI.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
TPGUI.BackgroundTransparency = 0.40000000596046
TPGUI.BorderColor3 = Color3.new(1, 1, 1)
TPGUI.BorderSizePixel = 8
TPGUI.Position = UDim2.new(0.449999988, 0, 0.200000003, 0)
TPGUI.Size = UDim2.new(0, 240, 0, 526)
TPGUI.ZIndex = 3

header.Name = "header"
header.Parent = TPGUI
header.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
header.BorderSizePixel = 0
header.Size = UDim2.new(0, 240, 0, 38)
header.ZIndex = 3
header.Font = Enum.Font.SciFi
header.Text = "Teleports"
header.TextColor3 = Color3.new(1, 1, 1)
header.TextSize = 32
header.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
header.TextStrokeTransparency = 0

footer.Name = "footer"
footer.Parent = TPGUI
footer.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
footer.BorderSizePixel = 0
footer.Position = UDim2.new(0, 0, 0.927010775, 0)
footer.Size = UDim2.new(0, 240, 0, 38)
footer.ZIndex = 3
footer.Font = Enum.Font.SciFi
footer.Text = "Made By: Bartvanm"
footer.TextColor3 = Color3.new(1, 1, 1)
footer.TextSize = 28
footer.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
footer.TextStrokeTransparency = 0

TPSkyGym.Name = "TPSkyGym"
TPSkyGym.Parent = TPGUI
TPSkyGym.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TPSkyGym.BackgroundTransparency = 0.40000000596046
TPSkyGym.BorderColor3 = Color3.new(1, 1, 1)
TPSkyGym.BorderSizePixel = 2
TPSkyGym.Position = UDim2.new(0.0615725182, 0, 0.108495653, 0)
TPSkyGym.Size = UDim2.new(0, 207, 0, 50)
TPSkyGym.ZIndex = 3
TPSkyGym.Font = Enum.Font.SciFi
TPSkyGym.Text = "Sky Gym"
TPSkyGym.TextColor3 = Color3.new(1, 1, 1)
TPSkyGym.TextSize = 27
TPSkyGym.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
TPSkyGym.TextStrokeTransparency = 0

CLOSEBUTTON.Name = "CLOSEBUTTON"
CLOSEBUTTON.Parent = TPGUI
CLOSEBUTTON.BackgroundColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON.BackgroundTransparency = 0.25
CLOSEBUTTON.BorderColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON.Position = UDim2.new(0.857188642, 0, 0, 0)
CLOSEBUTTON.Size = UDim2.new(0, 34, 0, 37)
CLOSEBUTTON.ZIndex = 10
CLOSEBUTTON.Font = Enum.Font.SourceSansBold
CLOSEBUTTON.Text = "X"
CLOSEBUTTON.TextColor3 = Color3.new(1, 1, 1)
CLOSEBUTTON.TextSize = 30

TPUnderworldGym.Name = "TPUnderworldGym"
TPUnderworldGym.Parent = TPGUI
TPUnderworldGym.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TPUnderworldGym.BackgroundTransparency = 0.40000000596046
TPUnderworldGym.BorderColor3 = Color3.new(1, 1, 1)
TPUnderworldGym.BorderSizePixel = 2
TPUnderworldGym.Position = UDim2.new(0.0615725182, 0, 0.225305751, 0)
TPUnderworldGym.Size = UDim2.new(0, 207, 0, 50)
TPUnderworldGym.ZIndex = 3
TPUnderworldGym.Font = Enum.Font.SciFi
TPUnderworldGym.Text = "Underworld Gym"
TPUnderworldGym.TextColor3 = Color3.new(1, 1, 1)
TPUnderworldGym.TextSize = 27
TPUnderworldGym.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
TPUnderworldGym.TextStrokeTransparency = 0

TPSpace.Name = "TPSpace"
TPSpace.Parent = TPGUI
TPSpace.BackgroundColor3 = Color3.new(1, 0, 0)
TPSpace.BackgroundTransparency = 0.40000000596046
TPSpace.BorderColor3 = Color3.new(1, 1, 1)
TPSpace.BorderSizePixel = 2
TPSpace.Position = UDim2.new(0.0615725182, 0, 0.342319936, 0)
TPSpace.Size = UDim2.new(0, 207, 0, 50)
TPSpace.ZIndex = 3
TPSpace.Font = Enum.Font.SciFi
TPSpace.Text = "Space Gym"
TPSpace.TextColor3 = Color3.new(1, 1, 1)
TPSpace.TextSize = 27
TPSpace.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
TPSpace.TextStrokeTransparency = 0

TPBigBoyBeach.Name = "TPBigBoyBeach"
TPBigBoyBeach.Parent = TPGUI
TPBigBoyBeach.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TPBigBoyBeach.BackgroundTransparency = 0.40000000596046
TPBigBoyBeach.BorderColor3 = Color3.new(1, 1, 1)
TPBigBoyBeach.BorderSizePixel = 2
TPBigBoyBeach.Position = UDim2.new(0.0615725182, 0, 0.455531895, 0)
TPBigBoyBeach.Size = UDim2.new(0, 207, 0, 50)
TPBigBoyBeach.ZIndex = 3
TPBigBoyBeach.Font = Enum.Font.SciFi
TPBigBoyBeach.Text = "Big Boy Beach"
TPBigBoyBeach.TextColor3 = Color3.new(1, 1, 1)
TPBigBoyBeach.TextSize = 27
TPBigBoyBeach.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
TPBigBoyBeach.TextStrokeTransparency = 0

lblVouch.Name = "lblVouch"
lblVouch.Parent = TPGUI
lblVouch.BackgroundColor3 = Color3.new(1, 0, 0)
lblVouch.BackgroundTransparency = 1
lblVouch.BorderColor3 = Color3.new(1, 0, 0)
lblVouch.Position = UDim2.new(0.333692074, 0, 0.414136231, 0)
lblVouch.Size = UDim2.new(0, 79, 0, 22)
lblVouch.ZIndex = 99
lblVouch.Font = Enum.Font.SciFi
lblVouch.Text = "VOUCH ON VERMILLION"
lblVouch.TextColor3 = Color3.new(1, 0, 0)
lblVouch.TextSize = 19
lblVouch.TextStrokeTransparency = 0

TPTinyBeach.Name = "TPTinyBeach"
TPTinyBeach.Parent = TPGUI
TPTinyBeach.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TPTinyBeach.BackgroundTransparency = 0.40000000596046
TPTinyBeach.BorderColor3 = Color3.new(1, 1, 1)
TPTinyBeach.BorderSizePixel = 2
TPTinyBeach.Position = UDim2.new(0.0615725182, 0, 0.576144218, 0)
TPTinyBeach.Size = UDim2.new(0, 207, 0, 50)
TPTinyBeach.ZIndex = 3
TPTinyBeach.Font = Enum.Font.SciFi
TPTinyBeach.Text = "Tiny Beach"
TPTinyBeach.TextColor3 = Color3.new(1, 1, 1)
TPTinyBeach.TextSize = 27
TPTinyBeach.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
TPTinyBeach.TextStrokeTransparency = 0

TPBrawlTraining.Name = "TPBrawlTraining"
TPBrawlTraining.Parent = TPGUI
TPBrawlTraining.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TPBrawlTraining.BackgroundTransparency = 0.40000000596046
TPBrawlTraining.BorderColor3 = Color3.new(1, 1, 1)
TPBrawlTraining.BorderSizePixel = 2
TPBrawlTraining.Position = UDim2.new(0.0615725182, 0, 0.688539684, 0)
TPBrawlTraining.Size = UDim2.new(0, 207, 0, 50)
TPBrawlTraining.ZIndex = 3
TPBrawlTraining.Font = Enum.Font.SciFi
TPBrawlTraining.Text = "Brawl Training"
TPBrawlTraining.TextColor3 = Color3.new(1, 1, 1)
TPBrawlTraining.TextSize = 27
TPBrawlTraining.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
TPBrawlTraining.TextStrokeTransparency = 0

TPBrawlArena.Name = "TPBrawlArena"
TPBrawlArena.Parent = TPGUI
TPBrawlArena.BackgroundColor3 = Color3.new(0, 0.666667, 1)
TPBrawlArena.BackgroundTransparency = 0.40000000596046
TPBrawlArena.BorderColor3 = Color3.new(1, 1, 1)
TPBrawlArena.BorderSizePixel = 2
TPBrawlArena.Position = UDim2.new(0.0657391846, 0, 0.800706983, 0)
TPBrawlArena.Size = UDim2.new(0, 207, 0, 50)
TPBrawlArena.ZIndex = 3
TPBrawlArena.Font = Enum.Font.SciFi
TPBrawlArena.Text = "Brawl Arena"
TPBrawlArena.TextColor3 = Color3.new(1, 1, 1)
TPBrawlArena.TextSize = 27
TPBrawlArena.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
TPBrawlArena.TextStrokeTransparency = 0

INFOBUTTON.Name = "INFOBUTTON"
INFOBUTTON.Parent = TPGUI
INFOBUTTON.BackgroundColor3 = Color3.new(0.333333, 0.666667, 1)
INFOBUTTON.BorderColor3 = Color3.new(0.333333, 0.666667, 1)
INFOBUTTON.Position = UDim2.new(0.854811072, 0, 0.327443868, 0)
INFOBUTTON.Size = UDim2.new(0, 26, 0, 26)
INFOBUTTON.ZIndex = 10
INFOBUTTON.Font = Enum.Font.SourceSansBold
INFOBUTTON.Text = "i"
INFOBUTTON.TextColor3 = Color3.new(1, 1, 1)
INFOBUTTON.TextSize = 30

AUTOMATIONGUI.Name = "AUTOMATIONGUI"
AUTOMATIONGUI.Parent = WLS3GUI
AUTOMATIONGUI.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
AUTOMATIONGUI.BackgroundTransparency = 0.40000000596046
AUTOMATIONGUI.BorderColor3 = Color3.new(1, 1, 1)
AUTOMATIONGUI.BorderSizePixel = 8
AUTOMATIONGUI.Position = UDim2.new(0.449999988, 0, 0.200000003, 0)
AUTOMATIONGUI.Size = UDim2.new(0, 240, 0, 518)
AUTOMATIONGUI.ZIndex = 3

OpenStrength.Name = "OpenStrength"
OpenStrength.Parent = AUTOMATIONGUI
OpenStrength.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenStrength.BackgroundTransparency = 0.40000000596046
OpenStrength.BorderColor3 = Color3.new(1, 1, 1)
OpenStrength.BorderSizePixel = 2
OpenStrength.Position = UDim2.new(0.0699058324, 0, 0.122530729, 0)
OpenStrength.Size = UDim2.new(0, 207, 0, 50)
OpenStrength.ZIndex = 3
OpenStrength.Font = Enum.Font.SciFi
OpenStrength.Text = "STRENGTH"
OpenStrength.TextColor3 = Color3.new(1, 1, 1)
OpenStrength.TextSize = 27
OpenStrength.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenStrength.TextStrokeTransparency = 0

header_2.Name = "header"
header_2.Parent = AUTOMATIONGUI
header_2.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
header_2.BorderSizePixel = 0
header_2.Size = UDim2.new(0, 240, 0, 38)
header_2.ZIndex = 3
header_2.Font = Enum.Font.SciFi
header_2.Text = "Automation"
header_2.TextColor3 = Color3.new(1, 1, 1)
header_2.TextSize = 32
header_2.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
header_2.TextStrokeTransparency = 0

footer_2.Name = "footer"
footer_2.Parent = AUTOMATIONGUI
footer_2.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
footer_2.BorderSizePixel = 0
footer_2.Position = UDim2.new(0, 0, 0.927128255, 0)
footer_2.Size = UDim2.new(0, 239, 0, 38)
footer_2.ZIndex = 3
footer_2.Font = Enum.Font.SciFi
footer_2.Text = "Made By: Bartvanm"
footer_2.TextColor3 = Color3.new(1, 1, 1)
footer_2.TextSize = 28
footer_2.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
footer_2.TextStrokeTransparency = 0

CloseStrength.Name = "CloseStrength"
CloseStrength.Parent = AUTOMATIONGUI
CloseStrength.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseStrength.BackgroundTransparency = 0.40000000596046
CloseStrength.BorderColor3 = Color3.new(1, 1, 1)
CloseStrength.BorderSizePixel = 2
CloseStrength.Position = UDim2.new(0.0699058324, 0, 0.122530729, 0)
CloseStrength.Size = UDim2.new(0, 207, 0, 50)
CloseStrength.Visible = false
CloseStrength.ZIndex = 3
CloseStrength.Font = Enum.Font.SciFi
CloseStrength.Text = "STRENGTH"
CloseStrength.TextColor3 = Color3.new(1, 1, 1)
CloseStrength.TextSize = 27
CloseStrength.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseStrength.TextStrokeTransparency = 0

OpenBrawl.Name = "OpenBrawl"
OpenBrawl.Parent = AUTOMATIONGUI
OpenBrawl.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenBrawl.BackgroundTransparency = 0.40000000596046
OpenBrawl.BorderColor3 = Color3.new(1, 1, 1)
OpenBrawl.BorderSizePixel = 2
OpenBrawl.Position = UDim2.new(0.0657564551, 0, 0.428495675, 0)
OpenBrawl.Size = UDim2.new(0, 207, 0, 50)
OpenBrawl.ZIndex = 3
OpenBrawl.Font = Enum.Font.SciFi
OpenBrawl.Text = "JOIN BRAWL"
OpenBrawl.TextColor3 = Color3.new(1, 1, 1)
OpenBrawl.TextSize = 27
OpenBrawl.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenBrawl.TextStrokeTransparency = 0

CloseBrawl.Name = "CloseBrawl"
CloseBrawl.Parent = AUTOMATIONGUI
CloseBrawl.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseBrawl.BackgroundTransparency = 0.40000000596046
CloseBrawl.BorderColor3 = Color3.new(1, 1, 1)
CloseBrawl.BorderSizePixel = 2
CloseBrawl.Position = UDim2.new(0.0699058548, 0, 0.428495705, 0)
CloseBrawl.Size = UDim2.new(0, 207, 0, 50)
CloseBrawl.Visible = false
CloseBrawl.ZIndex = 3
CloseBrawl.Font = Enum.Font.SciFi
CloseBrawl.Text = "JOIN BRAWL"
CloseBrawl.TextColor3 = Color3.new(1, 1, 1)
CloseBrawl.TextSize = 27
CloseBrawl.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseBrawl.TextStrokeTransparency = 0

OpenCrate.Name = "OpenCrate"
OpenCrate.Parent = AUTOMATIONGUI
OpenCrate.BackgroundColor3 = Color3.new(0, 0.666667, 1)
OpenCrate.BackgroundTransparency = 0.40000000596046
OpenCrate.BorderColor3 = Color3.new(1, 1, 1)
OpenCrate.BorderSizePixel = 2
OpenCrate.Position = UDim2.new(0.0657564774, 0, 0.249548301, 0)
OpenCrate.Size = UDim2.new(0, 207, 0, 49)
OpenCrate.ZIndex = 3
OpenCrate.Font = Enum.Font.SciFi
OpenCrate.Text = "OPEN CRATE"
OpenCrate.TextColor3 = Color3.new(1, 1, 1)
OpenCrate.TextSize = 27
OpenCrate.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
OpenCrate.TextStrokeTransparency = 0

CloseCLICK.Name = "CloseCLICK"
CloseCLICK.Parent = AUTOMATIONGUI
CloseCLICK.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseCLICK.BackgroundTransparency = 0.40000000596046
CloseCLICK.BorderColor3 = Color3.new(1, 1, 1)
CloseCLICK.BorderSizePixel = 2
CloseCLICK.Position = UDim2.new(0.0699058548, 0, 0.554460466, 0)
CloseCLICK.Size = UDim2.new(0, 207, 0, 49)
CloseCLICK.Visible = false
CloseCLICK.ZIndex = 3
CloseCLICK.Font = Enum.Font.SciFi
CloseCLICK.Text = "AUTOCLICK"
CloseCLICK.TextColor3 = Color3.new(1, 1, 1)
CloseCLICK.TextSize = 27
CloseCLICK.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseCLICK.TextStrokeTransparency = 0

CLOSEBUTTON_2.Name = "CLOSEBUTTON"
CLOSEBUTTON_2.Parent = AUTOMATIONGUI
CLOSEBUTTON_2.BackgroundColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON_2.BackgroundTransparency = 0.25
CLOSEBUTTON_2.BorderColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON_2.Position = UDim2.new(0.857188642, 0, 0, 0)
CLOSEBUTTON_2.Size = UDim2.new(0, 34, 0, 37)
CLOSEBUTTON_2.ZIndex = 10
CLOSEBUTTON_2.Font = Enum.Font.SourceSansBold
CLOSEBUTTON_2.Text = "X"
CLOSEBUTTON_2.TextColor3 = Color3.new(1, 1, 1)
CLOSEBUTTON_2.TextSize = 30

txtCrate.Name = "txtCrate"
txtCrate.Parent = AUTOMATIONGUI
txtCrate.BackgroundColor3 = Color3.new(0, 0.666667, 1)
txtCrate.BackgroundTransparency = 0.40000000596046
txtCrate.BorderColor3 = Color3.new(1, 1, 1)
txtCrate.BorderSizePixel = 2
txtCrate.Position = UDim2.new(0.0699058548, 0, 0.360616684, 0)
txtCrate.Size = UDim2.new(0, 205, 0, 16)
txtCrate.ZIndex = 9999999
txtCrate.Font = Enum.Font.SourceSans
txtCrate.Text = ""
txtCrate.TextColor3 = Color3.new(1, 1, 1)
txtCrate.TextSize = 14

CloseAFK.Name = "CloseAFK"
CloseAFK.Parent = AUTOMATIONGUI
CloseAFK.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseAFK.BackgroundTransparency = 0.40000000596046
CloseAFK.BorderColor3 = Color3.new(1, 1, 1)
CloseAFK.BorderSizePixel = 2
CloseAFK.Position = UDim2.new(0.0699058548, 0, 0.671180665, 0)
CloseAFK.Size = UDim2.new(0, 207, 0, 49)
CloseAFK.Visible = false
CloseAFK.ZIndex = 3
CloseAFK.Font = Enum.Font.SciFi
CloseAFK.Text = "ANTI AFK"
CloseAFK.TextColor3 = Color3.new(1, 1, 1)
CloseAFK.TextSize = 27
CloseAFK.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseAFK.TextStrokeTransparency = 0

OpenAFK.Name = "OpenAFK"
OpenAFK.Parent = AUTOMATIONGUI
OpenAFK.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenAFK.BackgroundTransparency = 0.40000000596046
OpenAFK.BorderColor3 = Color3.new(1, 1, 1)
OpenAFK.BorderSizePixel = 2
OpenAFK.Position = UDim2.new(0.0657391846, 0, 0.671180665, 0)
OpenAFK.Size = UDim2.new(0, 207, 0, 49)
OpenAFK.ZIndex = 3
OpenAFK.Font = Enum.Font.SciFi
OpenAFK.Text = "ANTI AFK"
OpenAFK.TextColor3 = Color3.new(1, 1, 1)
OpenAFK.TextSize = 27
OpenAFK.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenAFK.TextStrokeTransparency = 0

OpenCLICK.Name = "OpenCLICK"
OpenCLICK.Parent = AUTOMATIONGUI
OpenCLICK.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenCLICK.BackgroundTransparency = 0.40000000596046
OpenCLICK.BorderColor3 = Color3.new(1, 1, 1)
OpenCLICK.BorderSizePixel = 2
OpenCLICK.Position = UDim2.new(0.0657391623, 0, 0.552706182, 0)
OpenCLICK.Size = UDim2.new(0, 207, 0, 50)
OpenCLICK.ZIndex = 3
OpenCLICK.Font = Enum.Font.SciFi
OpenCLICK.Text = "AUTOCLICK"
OpenCLICK.TextColor3 = Color3.new(1, 1, 1)
OpenCLICK.TextSize = 27
OpenCLICK.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenCLICK.TextStrokeTransparency = 0

OpenRebirthPet.Name = "OpenRebirthPet"
OpenRebirthPet.Parent = AUTOMATIONGUI
OpenRebirthPet.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenRebirthPet.BackgroundTransparency = 0.40000000596046
OpenRebirthPet.BorderColor3 = Color3.new(1, 1, 1)
OpenRebirthPet.BorderSizePixel = 2
OpenRebirthPet.Position = UDim2.new(0.0657391846, 0, 0.793347597, 0)
OpenRebirthPet.Size = UDim2.new(0, 207, 0, 43)
OpenRebirthPet.ZIndex = 3
OpenRebirthPet.Font = Enum.Font.SciFi
OpenRebirthPet.Text = "REBIRTH PET"
OpenRebirthPet.TextColor3 = Color3.new(1, 1, 1)
OpenRebirthPet.TextSize = 27
OpenRebirthPet.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenRebirthPet.TextStrokeTransparency = 0

CloseRebirthPet.Name = "CloseRebirthPet"
CloseRebirthPet.Parent = AUTOMATIONGUI
CloseRebirthPet.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseRebirthPet.BackgroundTransparency = 0.40000000596046
CloseRebirthPet.BorderColor3 = Color3.new(1, 1, 1)
CloseRebirthPet.BorderSizePixel = 2
CloseRebirthPet.Position = UDim2.new(0.0699058548, 0, 0.793347597, 0)
CloseRebirthPet.Size = UDim2.new(0, 207, 0, 43)
CloseRebirthPet.Visible = false
CloseRebirthPet.ZIndex = 3
CloseRebirthPet.Font = Enum.Font.SciFi
CloseRebirthPet.Text = "REBIRTH PET"
CloseRebirthPet.TextColor3 = Color3.new(1, 1, 1)
CloseRebirthPet.TextSize = 27
CloseRebirthPet.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseRebirthPet.TextStrokeTransparency = 0

txtRebirthPet.Name = "txtRebirthPet"
txtRebirthPet.Parent = AUTOMATIONGUI
txtRebirthPet.BackgroundColor3 = Color3.new(0, 0.666667, 1)
txtRebirthPet.BackgroundTransparency = 0.40000000596046
txtRebirthPet.BorderColor3 = Color3.new(1, 1, 1)
txtRebirthPet.BorderSizePixel = 2
txtRebirthPet.Position = UDim2.new(0.0699058548, 0, 0.888030887, 0)
txtRebirthPet.Size = UDim2.new(0, 205, 0, 14)
txtRebirthPet.ZIndex = 9999999
txtRebirthPet.Font = Enum.Font.SourceSans
txtRebirthPet.Text = ""
txtRebirthPet.TextColor3 = Color3.new(1, 1, 1)
txtRebirthPet.TextSize = 14

MISCGUI.Name = "MISCGUI"
MISCGUI.Parent = WLS3GUI
MISCGUI.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
MISCGUI.BackgroundTransparency = 0.40000000596046
MISCGUI.BorderColor3 = Color3.new(1, 1, 1)
MISCGUI.BorderSizePixel = 8
MISCGUI.Position = UDim2.new(0.449999988, 0, 0.200000003, 0)
MISCGUI.Size = UDim2.new(0, 240, 0, 697)
MISCGUI.ZIndex = 3

OpenDiscoPet.Name = "OpenDiscoPet"
OpenDiscoPet.Parent = MISCGUI
OpenDiscoPet.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenDiscoPet.BackgroundTransparency = 0.40000000596046
OpenDiscoPet.BorderColor3 = Color3.new(1, 1, 1)
OpenDiscoPet.BorderSizePixel = 2
OpenDiscoPet.Position = UDim2.new(0.0699058324, 0, 0.0737502351, 0)
OpenDiscoPet.Size = UDim2.new(0, 207, 0, 50)
OpenDiscoPet.ZIndex = 3
OpenDiscoPet.Font = Enum.Font.SciFi
OpenDiscoPet.Text = "DISCO PET"
OpenDiscoPet.TextColor3 = Color3.new(1, 1, 1)
OpenDiscoPet.TextSize = 27
OpenDiscoPet.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenDiscoPet.TextStrokeTransparency = 0

header_3.Name = "header"
header_3.Parent = MISCGUI
header_3.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
header_3.BorderSizePixel = 0
header_3.Size = UDim2.new(0, 240, 0, 38)
header_3.ZIndex = 3
header_3.Font = Enum.Font.SciFi
header_3.Text = "Misc"
header_3.TextColor3 = Color3.new(1, 1, 1)
header_3.TextSize = 32
header_3.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
header_3.TextStrokeTransparency = 0

footer_3.Name = "footer"
footer_3.Parent = MISCGUI
footer_3.BackgroundColor3 = Color3.new(0.0901961, 0.65098, 1)
footer_3.BorderSizePixel = 0
footer_3.Position = UDim2.new(-0.00414937316, 0, 0.945231199, 0)
footer_3.Size = UDim2.new(0, 241, 0, 38)
footer_3.ZIndex = 3
footer_3.Font = Enum.Font.SciFi
footer_3.Text = "Made By: Bartvanm"
footer_3.TextColor3 = Color3.new(1, 1, 1)
footer_3.TextSize = 28
footer_3.TextStrokeColor3 = Color3.new(0.0196078, 0.458824, 1)
footer_3.TextStrokeTransparency = 0

CloseDiscoPet.Name = "CloseDiscoPet"
CloseDiscoPet.Parent = MISCGUI
CloseDiscoPet.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseDiscoPet.BackgroundTransparency = 0.40000000596046
CloseDiscoPet.BorderColor3 = Color3.new(1, 1, 1)
CloseDiscoPet.BorderSizePixel = 2
CloseDiscoPet.Position = UDim2.new(0.0699058324, 0, 0.0737502351, 0)
CloseDiscoPet.Size = UDim2.new(0, 207, 0, 50)
CloseDiscoPet.Visible = false
CloseDiscoPet.ZIndex = 3
CloseDiscoPet.Font = Enum.Font.SciFi
CloseDiscoPet.Text = "DISCO PET"
CloseDiscoPet.TextColor3 = Color3.new(1, 1, 1)
CloseDiscoPet.TextSize = 27
CloseDiscoPet.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseDiscoPet.TextStrokeTransparency = 0

CloseDiscoSize.Name = "CloseDiscoSize"
CloseDiscoSize.Parent = MISCGUI
CloseDiscoSize.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseDiscoSize.BackgroundTransparency = 0.40000000596046
CloseDiscoSize.BorderColor3 = Color3.new(1, 1, 1)
CloseDiscoSize.BorderSizePixel = 2
CloseDiscoSize.Position = UDim2.new(0.0699058324, 0, 0.159516007, 0)
CloseDiscoSize.Size = UDim2.new(0, 207, 0, 50)
CloseDiscoSize.Visible = false
CloseDiscoSize.ZIndex = 3
CloseDiscoSize.Font = Enum.Font.SciFi
CloseDiscoSize.Text = "DISCO SIZE"
CloseDiscoSize.TextColor3 = Color3.new(1, 1, 1)
CloseDiscoSize.TextSize = 27
CloseDiscoSize.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseDiscoSize.TextStrokeTransparency = 0

OpenDiscoSize.Name = "OpenDiscoSize"
OpenDiscoSize.Parent = MISCGUI
OpenDiscoSize.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenDiscoSize.BackgroundTransparency = 0.40000000596046
OpenDiscoSize.BorderColor3 = Color3.new(1, 1, 1)
OpenDiscoSize.BorderSizePixel = 2
OpenDiscoSize.Position = UDim2.new(0.0699058324, 0, 0.159516007, 0)
OpenDiscoSize.Size = UDim2.new(0, 207, 0, 50)
OpenDiscoSize.ZIndex = 3
OpenDiscoSize.Font = Enum.Font.SciFi
OpenDiscoSize.Text = "DISCO SIZE"
OpenDiscoSize.TextColor3 = Color3.new(1, 1, 1)
OpenDiscoSize.TextSize = 27
OpenDiscoSize.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenDiscoSize.TextStrokeTransparency = 0

CloseDiscoSkin.Name = "CloseDiscoSkin"
CloseDiscoSkin.Parent = MISCGUI
CloseDiscoSkin.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseDiscoSkin.BackgroundTransparency = 0.40000000596046
CloseDiscoSkin.BorderColor3 = Color3.new(1, 1, 1)
CloseDiscoSkin.BorderSizePixel = 2
CloseDiscoSkin.Position = UDim2.new(0.0657391623, 0, 0.245659649, 0)
CloseDiscoSkin.Size = UDim2.new(0, 207, 0, 50)
CloseDiscoSkin.Visible = false
CloseDiscoSkin.ZIndex = 3
CloseDiscoSkin.Font = Enum.Font.SciFi
CloseDiscoSkin.Text = "DISCO SKIN"
CloseDiscoSkin.TextColor3 = Color3.new(1, 1, 1)
CloseDiscoSkin.TextSize = 27
CloseDiscoSkin.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseDiscoSkin.TextStrokeTransparency = 0

OpenTPKILL.Name = "OpenTPKILL"
OpenTPKILL.Parent = MISCGUI
OpenTPKILL.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenTPKILL.BackgroundTransparency = 0.40000000596046
OpenTPKILL.BorderColor3 = Color3.new(1, 1, 1)
OpenTPKILL.BorderSizePixel = 2
OpenTPKILL.Position = UDim2.new(0.0615897886, 0, 0.337857604, 0)
OpenTPKILL.Size = UDim2.new(0, 207, 0, 50)
OpenTPKILL.ZIndex = 3
OpenTPKILL.Font = Enum.Font.SciFi
OpenTPKILL.Text = "TP KILL"
OpenTPKILL.TextColor3 = Color3.new(1, 1, 1)
OpenTPKILL.TextSize = 27
OpenTPKILL.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenTPKILL.TextStrokeTransparency = 0

CloseTPKILL.Name = "CloseTPKILL"
CloseTPKILL.Parent = MISCGUI
CloseTPKILL.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseTPKILL.BackgroundTransparency = 0.40000000596046
CloseTPKILL.BorderColor3 = Color3.new(1, 1, 1)
CloseTPKILL.BorderSizePixel = 2
CloseTPKILL.Position = UDim2.new(0.0657391623, 0, 0.338883221, 0)
CloseTPKILL.Size = UDim2.new(0, 207, 0, 50)
CloseTPKILL.Visible = false
CloseTPKILL.ZIndex = 3
CloseTPKILL.Font = Enum.Font.SciFi
CloseTPKILL.Text = "TP KILL"
CloseTPKILL.TextColor3 = Color3.new(1, 1, 1)
CloseTPKILL.TextSize = 27
CloseTPKILL.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseTPKILL.TextStrokeTransparency = 0

OpenTP_2.Name = "OpenTP"
OpenTP_2.Parent = MISCGUI
OpenTP_2.BackgroundColor3 = Color3.new(0, 0.666667, 1)
OpenTP_2.BackgroundTransparency = 0.40000000596046
OpenTP_2.BorderColor3 = Color3.new(1, 1, 1)
OpenTP_2.BorderSizePixel = 2
OpenTP_2.Position = UDim2.new(0.0615725182, 0, 0.431845397, 0)
OpenTP_2.Size = UDim2.new(0, 207, 0, 50)
OpenTP_2.ZIndex = 3
OpenTP_2.Font = Enum.Font.SciFi
OpenTP_2.Text = "CLICK TO TP"
OpenTP_2.TextColor3 = Color3.new(1, 1, 1)
OpenTP_2.TextSize = 27
OpenTP_2.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
OpenTP_2.TextStrokeTransparency = 0

CloseFAST.Name = "CloseFAST"
CloseFAST.Parent = MISCGUI
CloseFAST.BackgroundColor3 = Color3.new(0.905882, 0.0196078, 0.0352941)
CloseFAST.BackgroundTransparency = 0.40000000596046
CloseFAST.BorderColor3 = Color3.new(1, 1, 1)
CloseFAST.BorderSizePixel = 2
CloseFAST.Position = UDim2.new(0.0699058324, 0, 0.76215291, 0)
CloseFAST.Size = UDim2.new(0, 207, 0, 50)
CloseFAST.Visible = false
CloseFAST.ZIndex = 3
CloseFAST.Font = Enum.Font.SciFi
CloseFAST.Text = "SPEED+JUMP"
CloseFAST.TextColor3 = Color3.new(1, 1, 1)
CloseFAST.TextSize = 27
CloseFAST.TextStrokeColor3 = Color3.new(0.792157, 0.0352941, 0.0470588)
CloseFAST.TextStrokeTransparency = 0

OpenDiscoSkin.Name = "OpenDiscoSkin"
OpenDiscoSkin.Parent = MISCGUI
OpenDiscoSkin.BackgroundColor3 = Color3.new(0.0117647, 0.576471, 0.0784314)
OpenDiscoSkin.BackgroundTransparency = 0.40000000596046
OpenDiscoSkin.BorderColor3 = Color3.new(1, 1, 1)
OpenDiscoSkin.BorderSizePixel = 2
OpenDiscoSkin.Position = UDim2.new(0.0657391623, 0, 0.246739268, 0)
OpenDiscoSkin.Size = UDim2.new(0, 207, 0, 50)
OpenDiscoSkin.ZIndex = 3
OpenDiscoSkin.Font = Enum.Font.SciFi
OpenDiscoSkin.Text = "DISCO SKIN"
OpenDiscoSkin.TextColor3 = Color3.new(1, 1, 1)
OpenDiscoSkin.TextSize = 27
OpenDiscoSkin.TextStrokeColor3 = Color3.new(0.156863, 0.470588, 0)
OpenDiscoSkin.TextStrokeTransparency = 0

CLOSEBUTTON_3.Name = "CLOSEBUTTON"
CLOSEBUTTON_3.Parent = MISCGUI
CLOSEBUTTON_3.BackgroundColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON_3.BackgroundTransparency = 0.25
CLOSEBUTTON_3.BorderColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON_3.Position = UDim2.new(0.857188642, 0, 0, 0)
CLOSEBUTTON_3.Size = UDim2.new(0, 34, 0, 37)
CLOSEBUTTON_3.ZIndex = 10
CLOSEBUTTON_3.Font = Enum.Font.SourceSansBold
CLOSEBUTTON_3.Text = "X"
CLOSEBUTTON_3.TextColor3 = Color3.new(1, 1, 1)
CLOSEBUTTON_3.TextSize = 30

OpenBtools.Name = "OpenBtools"
OpenBtools.Parent = MISCGUI
OpenBtools.BackgroundColor3 = Color3.new(0, 0.666667, 1)
OpenBtools.BackgroundTransparency = 0.40000000596046
OpenBtools.BorderColor3 = Color3.new(1, 1, 1)
OpenBtools.BorderSizePixel = 2
OpenBtools.Position = UDim2.new(0.0615725182, 0, 0.519363344, 0)
OpenBtools.Size = UDim2.new(0, 207, 0, 50)
OpenBtools.ZIndex = 3
OpenBtools.Font = Enum.Font.SciFi
OpenBtools.Text = "BTOOLS"
OpenBtools.TextColor3 = Color3.new(1, 1, 1)
OpenBtools.TextSize = 27
OpenBtools.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
OpenBtools.TextStrokeTransparency = 0

OpenSize.Name = "OpenSize"
OpenSize.Parent = MISCGUI
OpenSize.BackgroundColor3 = Color3.new(0, 0.666667, 1)
OpenSize.BackgroundTransparency = 0.40000000596046
OpenSize.BorderColor3 = Color3.new(1, 1, 1)
OpenSize.BorderSizePixel = 2
OpenSize.Position = UDim2.new(0.0615725182, 0, 0.608316004, 0)
OpenSize.Size = UDim2.new(0, 207, 0, 50)
OpenSize.ZIndex = 3
OpenSize.Font = Enum.Font.SciFi
OpenSize.Text = "SIZE"
OpenSize.TextColor3 = Color3.new(1, 1, 1)
OpenSize.TextSize = 27
OpenSize.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
OpenSize.TextStrokeTransparency = 0

txtSize.Name = "txtSize"
txtSize.Parent = MISCGUI
txtSize.BackgroundColor3 = Color3.new(0, 0.666667, 1)
txtSize.BackgroundTransparency = 0.40000000596046
txtSize.BorderColor3 = Color3.new(1, 1, 1)
txtSize.BorderSizePixel = 2
txtSize.Position = UDim2.new(0.0615725182, 0, 0.686298132, 0)
txtSize.Size = UDim2.new(0, 207, 0, 16)
txtSize.ZIndex = 9999999
txtSize.Font = Enum.Font.SourceSans
txtSize.Text = ""
txtSize.TextColor3 = Color3.new(1, 1, 1)
txtSize.TextSize = 14

OpenSpeed.Name = "OpenSpeed"
OpenSpeed.Parent = MISCGUI
OpenSpeed.BackgroundColor3 = Color3.new(0, 0.666667, 1)
OpenSpeed.BackgroundTransparency = 0.40000000596046
OpenSpeed.BorderColor3 = Color3.new(1, 1, 1)
OpenSpeed.BorderSizePixel = 2
OpenSpeed.Position = UDim2.new(0.0615725182, 0, 0.727397799, 0)
OpenSpeed.Size = UDim2.new(0, 207, 0, 50)
OpenSpeed.ZIndex = 3
OpenSpeed.Font = Enum.Font.SciFi
OpenSpeed.Text = "SPEED"
OpenSpeed.TextColor3 = Color3.new(1, 1, 1)
OpenSpeed.TextSize = 27
OpenSpeed.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
OpenSpeed.TextStrokeTransparency = 0

txtSpeed.Name = "txtSpeed"
txtSpeed.Parent = MISCGUI
txtSpeed.BackgroundColor3 = Color3.new(0, 0.666667, 1)
txtSpeed.BackgroundTransparency = 0.40000000596046
txtSpeed.BorderColor3 = Color3.new(1, 1, 1)
txtSpeed.BorderSizePixel = 2
txtSpeed.Position = UDim2.new(0.0615725182, 0, 0.805379927, 0)
txtSpeed.Size = UDim2.new(0, 207, 0, 16)
txtSpeed.ZIndex = 9999999
txtSpeed.Font = Enum.Font.SourceSans
txtSpeed.Text = ""
txtSpeed.TextColor3 = Color3.new(1, 1, 1)
txtSpeed.TextSize = 14

OpenJump.Name = "OpenJump"
OpenJump.Parent = MISCGUI
OpenJump.BackgroundColor3 = Color3.new(0, 0.666667, 1)
OpenJump.BackgroundTransparency = 0.40000000596046
OpenJump.BorderColor3 = Color3.new(1, 1, 1)
OpenJump.BorderSizePixel = 2
OpenJump.Position = UDim2.new(0.0615725182, 0, 0.843610108, 0)
OpenJump.Size = UDim2.new(0, 207, 0, 50)
OpenJump.ZIndex = 3
OpenJump.Font = Enum.Font.SciFi
OpenJump.Text = "JUMP"
OpenJump.TextColor3 = Color3.new(1, 1, 1)
OpenJump.TextSize = 27
OpenJump.TextStrokeColor3 = Color3.new(0.168627, 0.501961, 1)
OpenJump.TextStrokeTransparency = 0

txtJump.Name = "txtJump"
txtJump.Parent = MISCGUI
txtJump.BackgroundColor3 = Color3.new(0, 0.666667, 1)
txtJump.BackgroundTransparency = 0.40000000596046
txtJump.BorderColor3 = Color3.new(1, 1, 1)
txtJump.BorderSizePixel = 2
txtJump.Position = UDim2.new(0.0615725182, 0, 0.921592295, 0)
txtJump.Size = UDim2.new(0, 207, 0, 16)
txtJump.ZIndex = 9999999
txtJump.Font = Enum.Font.SourceSans
txtJump.Text = ""
txtJump.TextColor3 = Color3.new(1, 1, 1)
txtJump.TextSize = 14

zVERMGUI.Name = "zVERMGUI"
zVERMGUI.Parent = WLS3GUI
zVERMGUI.BackgroundColor3 = Color3.new(1, 0, 0)
zVERMGUI.BackgroundTransparency = 0.40000000596046
zVERMGUI.BorderColor3 = Color3.new(0, 0, 0)
zVERMGUI.BorderSizePixel = 8
zVERMGUI.Position = UDim2.new(0.662391484, 0, 0.199999988, 0)
zVERMGUI.Size = UDim2.new(0, 339, 0, 301)
zVERMGUI.ZIndex = 3

header_VERM.Name = "header_VERM"
header_VERM.Parent = zVERMGUI
header_VERM.BackgroundColor3 = Color3.new(1, 0, 0)
header_VERM.BackgroundTransparency = 0.44999998807907
header_VERM.BorderSizePixel = 0
header_VERM.Size = UDim2.new(0, 339, 0, 38)
header_VERM.ZIndex = 3
header_VERM.Font = Enum.Font.SciFi
header_VERM.Text = "VERMILLION"
header_VERM.TextColor3 = Color3.new(1, 1, 1)
header_VERM.TextSize = 32
header_VERM.TextStrokeColor3 = Color3.new(1, 0, 0)
header_VERM.TextStrokeTransparency = 0

CLOSEBUTTON_VERM.Name = "CLOSEBUTTON_VERM"
CLOSEBUTTON_VERM.Parent = zVERMGUI
CLOSEBUTTON_VERM.BackgroundColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON_VERM.BackgroundTransparency = 0.25
CLOSEBUTTON_VERM.BorderColor3 = Color3.new(1, 0, 0)
CLOSEBUTTON_VERM.Position = UDim2.new(0.898486555, 0, 0, 0)
CLOSEBUTTON_VERM.Size = UDim2.new(0, 34, 0, 37)
CLOSEBUTTON_VERM.ZIndex = 10
CLOSEBUTTON_VERM.Font = Enum.Font.SourceSansBold
CLOSEBUTTON_VERM.Text = "X"
CLOSEBUTTON_VERM.TextColor3 = Color3.new(1, 1, 1)
CLOSEBUTTON_VERM.TextSize = 30

lblVouchInfo1.Name = "lblVouchInfo1"
lblVouchInfo1.Parent = zVERMGUI
lblVouchInfo1.BackgroundColor3 = Color3.new(1, 0, 0)
lblVouchInfo1.BackgroundTransparency = 1
lblVouchInfo1.BorderColor3 = Color3.new(1, 0, 0)
lblVouchInfo1.Position = UDim2.new(0.357290804, 0, 0.214800656, 0)
lblVouchInfo1.Size = UDim2.new(0, 97, 0, 22)
lblVouchInfo1.ZIndex = 99
lblVouchInfo1.Font = Enum.Font.SciFi
lblVouchInfo1.Text = "In order to unlock all features of this GUI"
lblVouchInfo1.TextColor3 = Color3.new(1, 0, 0)
lblVouchInfo1.TextSize = 19
lblVouchInfo1.TextStrokeTransparency = 0

lblVouchInfo3.Name = "lblVouchInfo3"
lblVouchInfo3.Parent = zVERMGUI
lblVouchInfo3.BackgroundColor3 = Color3.new(1, 0, 0)
lblVouchInfo3.BackgroundTransparency = 1
lblVouchInfo3.BorderColor3 = Color3.new(1, 0, 0)
lblVouchInfo3.Position = UDim2.new(0.357290804, 0, 0.294534862, 0)
lblVouchInfo3.Size = UDim2.new(0, 97, 0, 22)
lblVouchInfo3.ZIndex = 99
lblVouchInfo3.Font = Enum.Font.SciFi
lblVouchInfo3.Text = "Vouch the original post on vermillion"
lblVouchInfo3.TextColor3 = Color3.new(1, 0, 0)
lblVouchInfo3.TextSize = 19
lblVouchInfo3.TextStrokeTransparency = 0

OpenURL.Name = "OpenURL"
OpenURL.Parent = zVERMGUI
OpenURL.BackgroundColor3 = Color3.new(1, 0, 0)
OpenURL.BackgroundTransparency = 0.40000000596046
OpenURL.BorderColor3 = Color3.new(1, 1, 1)
OpenURL.BorderSizePixel = 2
OpenURL.Position = UDim2.new(0.192600131, 0, 0.55851841, 0)
OpenURL.Size = UDim2.new(0, 207, 0, 49)
OpenURL.ZIndex = 3
OpenURL.Font = Enum.Font.SciFi
OpenURL.Text = "ORIGINAL POST"
OpenURL.TextColor3 = Color3.new(1, 1, 1)
OpenURL.TextSize = 27
OpenURL.TextStrokeColor3 = Color3.new(1, 0, 0)
OpenURL.TextStrokeTransparency = 0

lblVouchInfo2.Name = "lblVouchInfo2"
lblVouchInfo2.Parent = zVERMGUI
lblVouchInfo2.BackgroundColor3 = Color3.new(1, 0, 0)
lblVouchInfo2.BackgroundTransparency = 1
lblVouchInfo2.BorderColor3 = Color3.new(1, 0, 0)
lblVouchInfo2.Position = UDim2.new(0.357290804, 0, 0.772940218, 0)
lblVouchInfo2.Size = UDim2.new(0, 97, 0, 22)
lblVouchInfo2.ZIndex = 99
lblVouchInfo2.Font = Enum.Font.SciFi
lblVouchInfo2.Text = "Printed! Check console with F9"
lblVouchInfo2.TextColor3 = Color3.new(1, 0, 0)
lblVouchInfo2.TextSize = 19
lblVouchInfo2.TextStrokeTransparency = 0
lblVouchInfo2.Visible = false


-- Scripts:
-- Active / Draggable
TPGUI.Active = true
TPGUI.Draggable = true

MISCGUI.Active = true
MISCGUI.Draggable = true

AUTOMATIONGUI.Active = true
AUTOMATIONGUI.Draggable = true

zVERMGUI.Active = true
zVERMGUI.Draggable = true

-- Visible
AUTOMATIONGUI.Visible = false
MISCGUI.Visible = false
TPGUI.Visible = false
zVERMGUI.Visible = false

-- Open:
OpenTP.MouseButton1Click:connect(function()
	OpenTP.Visible = false
	CloseTP.Visible = true
	TPGUI.Visible = true
end)

CloseTP.MouseButton1Click:connect(function()
	OpenTP.Visible = true
	CloseTP.Visible = false
	TPGUI.Visible = false
end)

OpenMisc.MouseButton1Click:connect(function()
	OpenMisc.Visible = false
	CloseMisc.Visible = true
	MISCGUI.Visible = true
end)

CloseMisc.MouseButton1Click:connect(function()
	OpenMisc.Visible = true
	CloseMisc.Visible = false
	MISCGUI.Visible = false
end)

OpenStats.MouseButton1Click:connect(function()
	OpenStats.Visible = false
	CloseStats.Visible = true
	AUTOMATIONGUI.Visible = true
end)

CloseStats.MouseButton1Click:connect(function()
	OpenStats.Visible = true
	CloseStats.Visible = false
	AUTOMATIONGUI.Visible = false
end)



-- TP's
TPSkyGym.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2182.5127, 769.779114, -250.614319)
end)

TPUnderworldGym.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-778, 14, 3342)
end)

-- EXCLUSIVE FOR VOUCHERS!!!!!!!!
TPSpace.MouseButton1Down:connect(function()
zVERMGUI.Visible = true
end)

TPBigBoyBeach.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-17.6436806, 17.761467, -354.889679)
end)

TPTinyBeach.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-406.441711, 3.11410189, 119.323685)
end)

TPBrawlTraining.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5812.32813, 172.829651, 1878.08606)
end)

TPBrawlArena.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5775.31445, 43.8691788, 2338.92041)
end)

CLOSEBUTTON.MouseButton1Down:connect(function()
TPGUI.Visible = false
OpenTP.Visible = true
CloseTP.Visible = false
end)


-- Automation
OpenStrength.MouseButton1Down:connect(function()
OpenStrength.Visible = false
CloseStrength.Visible = true
toggleStrength = true

while toggleStrength do
	wait(0.001)
	local name = game.Players.LocalPlayer.Name
	local rep = "rep"
	local remote = game:GetService("Players")[name].strengthEvent
	remote:FireServer(rep)
end

end)

CloseStrength.MouseButton1Down:connect(function()
	OpenStrength.Visible = true
	CloseStrength.Visible = false
	toggleStrength = false
end)

OpenCrate.MouseButton1Down:connect(function()
	local Remote = game.ReplicatedStorage.rEvents['crateRemote']
	local Arguments = {
	        [1] = txtCrate.Text
	}
	print("Opened a" + txtCrate.Text)
	
	Remote:InvokeServer(unpack(Arguments))
end)

OpenBrawl.MouseButton1Down:connect(function()
	toggleBrawl = true
	OpenBrawl.Visible = false
	CloseBrawl.Visible = true
	while toggleBrawl do wait(9)
	local Remote = game.ReplicatedStorage.rEvents['brawlEvent']
	local Arguments = {
	 [1] = "joinBrawl"
	}
	Remote:FireServer(unpack(Arguments))
	end
	
end)

CloseBrawl.MouseButton1Down:connect(function()
	toggleBrawl = false
	OpenBrawl.Visible = true
	CloseBrawl.Visible = false	
end)

OpenCLICK.MouseButton1Down:connect(function()
	
	toggleAutoclick = true
	OpenCLICK.Visible = false
	CloseCLICK.Visible = true
	wait(1)
	local UserIS = game:GetService("UserInputService")
	UserIS.InputBegan:Connect(function(LocalInput)
	
	while toggleAutoclick do 
		wait(0.01)
		Input.LeftClick(MOUSE_CLICK)
		wait(0.01)
		Input.LeftClick(MOUSE_UP)
		end
	end)

end)

CloseCLICK.MouseButton1Down:connect(function()
	toggleAutoclick = false
	OpenCLICK.Visible = true
	CloseCLICK.Visible = false
end)

OpenAFK.MouseButton1Down:connect(function()
	toggleAntiAFK = false
	OpenAFK.Visible = false
	CloseAFK.Visible = true
	
	local VirtualUser=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
	VirtualUser:CaptureController()
	VirtualUser:ClickButton1(Vector2.new())
	end)
end)

CloseAFK.MouseButton1Down:connect(function()
	OpenAFK.Visible = true
	CloseAFK.Visible = false
end)

OpenRebirthPet.MouseButton1Down:connect(function()
	toggleRebirthPet = true
	OpenRebirthPet.Visible = false
	CloseRebirthPet.Visible = true
	
	while toggleRebirthPet do wait(30)
	local Remote = game.ReplicatedStorage.rEvents['buyPetRemote']
	
	local Arguments = {
	        [1] = txtRebirthPet.Text,
	        [2] = "rebirthPet"
	}
	
	Remote:InvokeServer(unpack(Arguments))
	end
	
end)

CloseRebirthPet.MouseButton1Down:connect(function()
	toggleRebirthPet = false
	OpenRebirthPet.Visible = true
	CloseRebirthPet.Visible = false
end)

CLOSEBUTTON_2.MouseButton1Down:connect(function()
AUTOMATIONGUI.Visible = false
OpenStats.Visible = true
CloseStats.Visible = false
end)

-- Misc
OpenDiscoSize.MouseButton1Down:connect(function()
	toggleDiscoSize = true
	OpenDiscoSize.Visible = false
	CloseDiscoSize.Visible = true
	
	while toggleDiscoSize do
		local Remote = game.ReplicatedStorage.rEvents['changeSettingsEvent']
		local Arguments = {
		        [1] = "changeSize",
		        [2] = "maxSize"
		}
		Remote:FireServer(unpack(Arguments))
		wait(0.2)
		local Arguments = {
		        [1] = "changeSize",
		        [2] = 1
		}
		Remote:FireServer(unpack(Arguments))
		wait(0.2)
	end
end)

CloseDiscoSize.MouseButton1Down:connect(function()
	toggleDiscoSize = false
	OpenDiscoSize.Visible = true
	CloseDiscoSize.Visible = false
end)

OpenDiscoSkin.MouseButton1Down:connect(function()
	local i = 1
	OpenDiscoSkin.Visible = false
	CloseDiscoSkin.Visible = true
	toggleDiscoSkin = true
	
	local Remote = game.ReplicatedStorage.rEvents['equipSkin']
	
	while toggleDiscoSkin do
		if i < 50 then
			local Arguments = {
	        [1] = "equip",
	        [2] = AllSkins[i]
			}
		
			Remote:FireServer(unpack(Arguments))
			i = i + 1
			wait(0.2)	
		else
			i = 1
		end end
end)

CloseDiscoSkin.MouseButton1Down:connect(function()
	toggleDiscoSkin = false
	CloseDiscoSkin.Visible = false
	OpenDiscoSkin.Visible = true
	
end)

CloseTPKILL.MouseButton1Down:connect(function()
	toggleTPKILL = false
	OpenTPKILL.Visible = true
	CloseTPKILL.Visible = false
end)

OpenTP_2.MouseButton1Down:connect(function()
warn('xd')
bin=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
bin.Name = "Teleport"

function teleportPlayer(pos)

local player = game.Players.LocalPlayer
if player == nil or player.Character == nil then return end

local char = player.Character

char:MoveTo(pos)

end


enabled = true
function onButton1Down(mouse)
if not enabled then
return
end

local player = game.Players.LocalPlayer
if player == nil then return end
local cf = mouse.Hit
teleportPlayer(cf.p)

end

function onSelected(mouse)
mouse.Button1Down:connect(function() onButton1Down(mouse) end)
end

bin.Selected:connect(onSelected)

end)


OpenBtools.MouseButton1Click:connect(function()
local a=Instance.new("Tool")a.RequiresHandle=false;a.Name="Delete"local b=game.Players.LocalPlayer;a.Parent=b:WaitForChild("Backpack")local c=b:GetMouse()local d=false;local e=Instance.new("SelectionBox")e.Color3=Color3.new(0,0.6,0.6,6)e.Parent=b.PlayerGui;local c=b:GetMouse()local e=Instance.new("SelectionBox")e.Color3=Color3.new(0,0.6,0.6,6)e.Parent=b.PlayerGui;e.Name="derp"c.Move:connect(function()if d then local f=c.Target;if not f then e.Adornee=nil else if f:IsA("BasePart")then e.Adornee=f else e.Adornee=nil end end end end)a.Equipped:Connect(function()d=true end)a.Unequipped:Connect(function()e.Adornee=nil;d=false end)a.Activated:Connect(function()if e.Adornee then local g=Instance.new("Explosion")g.Parent=game.Workspace;g.Position=e.Adornee.Position;g.BlastPressure=0;local h=Instance.new("Sound")h.SoundId="http://www.roblox.com/asset/?id=315775189"h.Parent=game.Workspace;h:Play()e.Adornee:Destroy()e.Adornee=nil end end)
end)

OpenSize.MouseButton1Down:connect(function()
	local Size = txtSize.Text
	
	
	local Remote = game.ReplicatedStorage.rEvents['changeSettingsEvent']
		local Arguments = {
		        [1] = "changeSize",
		        [2] = tonumber(Size)
		}
		Remote:FireServer(unpack(Arguments))
end)

OpenSpeed.MouseButton1Down:connect(function()
	local Speed = txtSpeed.Text
	game:GetService'Players'.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(Speed)
end)
OpenJump.MouseButton1Down:connect(function()
	local Jump = txtJump.Text
	game:GetService'Players'.LocalPlayer.Character.Humanoid.JumpPower = tonumber(Jump)
end)

OpenDiscoPet.MouseButton1Down:connect(function()
	local i = 1
	toggleDiscoPet = true
	OpenDiscoPet.Visible = false
	CloseDiscoPet.Visible = true
	
	local Remote = game.ReplicatedStorage.rEvents['buyPetRemote']
	
	while toggleDiscoPet do
		if i < 9 then
		local Arguments = {
	        [1] = AllPets[i],
	        [2] = "equipPet"
		}
	
	Remote:InvokeServer(unpack(Arguments))
	i = i + 1
	wait(0.2)
	else
	i = 1
	end end
end)

CloseDiscoPet.MouseButton1Down:connect(function()
	toggleDiscoPet = false
	OpenDiscoPet.Visible = true
	CloseDiscoPet.Visible = false
end)

CLOSEBUTTON_3.MouseButton1Down:connect(function()
MISCGUI.Visible = false
OpenMisc.Visible = true
CloseMisc.Visible = false
end)

CLOSEBUTTON_VERM.MouseButton1Down:connect(function()
	zVERMGUI.Visible = false
end)

OpenURL.MouseButton1Down:connect(function()
	warn('https://v3rmillion.net/member.php?action=profile&uid=695311')
	lblVouchInfo2.Visible = true
end)




-- =======================DISCLAIMER====================== --
-- Script by: Bartvanm
-- Vouch the post for all the features! ( Space Gym )
-- Don't steal this and claim it yours. Read the post.