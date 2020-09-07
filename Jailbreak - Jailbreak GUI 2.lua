spawn(function()
while wait(0.05) do
game:GetService("Workspace").Name = "Workspace"
game:GetService("ReplicatedStorage").Name = "ReplicatedStorage"
game:GetService("Players").Name = "Players"
end
end)
function Bypass()
game:GetService('Workspace').Name = "Workspace"
game.Workspace.Banks:GetChildren()[1].Name="Bank"
game.Workspace.Jewelrys:GetChildren()[1].Name="Jewelry"
game:GetService('Players').Name = "Players"
game:GetService('ReplicatedStorage').Name = "ReplicatedStorage"
end
Bypass()

local JailFix = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Teleports = Instance.new("TextButton")
local GameStuff = Instance.new("TextButton")
local ExtraStuff = Instance.new("TextButton")
local bluecolor = Instance.new("TextButton")
local yellowcolor = Instance.new("TextButton")
local redcolor = Instance.new("TextButton")
local greencolor = Instance.new("TextButton")
local teleportgui = Instance.new("Frame")
local nameeeee = Instance.new("TextLabel")
local bankin = Instance.new("TextButton")
local bankout = Instance.new("TextButton")
local jewerlyin = Instance.new("TextButton")
local jewerlyout = Instance.new("TextButton")
local trainspawn = Instance.new("TextButton")
local criminalbase1 = Instance.new("TextButton")
local criminalbase2 = Instance.new("TextButton")
local gasstation = Instance.new("TextButton")
local donutshop = Instance.new("TextButton")
local prisionbase = Instance.new("TextButton")
local police1 = Instance.new("TextButton")
local police2 = Instance.new("TextButton")
local closeteleportgui = Instance.new("TextButton")
local gamestuffgui = Instance.new("Frame")
local nameeeeeeeee = Instance.new("TextLabel")
local btools = Instance.new("TextButton")
local fly = Instance.new("TextButton")
local walkspeed = Instance.new("TextButton")
local closegamestuff = Instance.new("TextButton")
local clicktp = Instance.new("TextButton")
local spamarrest = Instance.new("TextButton")
local infinitejump = Instance.new("TextButton")
local espall = Instance.new("TextButton")
local lowgravity = Instance.new("TextButton")
local godmode = Instance.new("TextButton")
local highjump = Instance.new("TextButton")
local platform = Instance.new("TextButton")
local tracers = Instance.new("TextButton")
local suicide = Instance.new("TextButton")
local spawnblocks = Instance.new("TextButton")
local playername = Instance.new("TextBox")
local goto = Instance.new("TextButton")
local f3x = Instance.new("TextButton")
local extrastuff = Instance.new("Frame")
local banknotification = Instance.new("TextButton")
local jewerlynotification = Instance.new("TextButton")
local KeyCard = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local closeextrastuff = Instance.new("TextButton")
local autorobtrain = Instance.new("TextButton")
local autorob = Instance.new("TextButton")
local removeall = Instance.new("TextButton")
local allitemsgiver = Instance.new("TextButton")
local infiniteammo = Instance.new("TextButton")
local sframe = Instance.new("ScrollingFrame")
local e = true
local val = Instance.new("ObjectValue", sframe)
local StarterGui = game:GetService('StarterGui')
local plr = game:GetService("Players").LocalPlayer
local char = plr.Character

-- Properties

JailFix.Name = "JailFix"
JailFix.Parent = game.CoreGui

mainframe.Name = "mainframe"
mainframe.Parent = JailFix
mainframe.Active = true
mainframe.BackgroundColor3 = Color3.new(1, 1, 1)
mainframe.BackgroundTransparency = 0.23000000417233
mainframe.BorderColor3 = Color3.new(0, 0, 0)
mainframe.BorderSizePixel = 3
mainframe.Draggable = true
mainframe.Position = UDim2.new(0.349194169, 0, 0.298537463, 0)
mainframe.Size = UDim2.new(0, 339, 0, 323)

TextLabel.Parent = mainframe
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.Position = UDim2.new(-0.00147492625, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 339, 0, 50)
TextLabel.Font = Enum.Font.SourceSansItalic
TextLabel.FontSize = Enum.FontSize.Size32
TextLabel.Text = "JailFix"
TextLabel.TextSize = 30

Teleports.Name = "Teleports"
Teleports.Parent = mainframe
Teleports.BackgroundColor3 = Color3.new(1, 1, 1)
Teleports.Position = UDim2.new(0.20501475, 0, 0.210526302, 0)
Teleports.Size = UDim2.new(0, 200, 0, 50)
Teleports.Font = Enum.Font.ArialBold
Teleports.FontSize = Enum.FontSize.Size14
Teleports.Text = "Teleports"
Teleports.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
Teleports.TextSize = 14

GameStuff.Name = "GameStuff"
GameStuff.Parent = mainframe
GameStuff.BackgroundColor3 = Color3.new(1, 1, 1)
GameStuff.Position = UDim2.new(0.205014765, 0, 0.411764681, 0)
GameStuff.Size = UDim2.new(0, 200, 0, 50)
GameStuff.Font = Enum.Font.ArialBold
GameStuff.FontSize = Enum.FontSize.Size14
GameStuff.Text = "Game Related"
GameStuff.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
GameStuff.TextSize = 14

ExtraStuff.Name = "ExtraStuff"
ExtraStuff.Parent = mainframe
ExtraStuff.BackgroundColor3 = Color3.new(1, 1, 1)
ExtraStuff.Position = UDim2.new(0.203539819, 0, 0.600619137, 0)
ExtraStuff.Size = UDim2.new(0, 200, 0, 50)
ExtraStuff.Font = Enum.Font.ArialBold
ExtraStuff.FontSize = Enum.FontSize.Size14
ExtraStuff.Text = "Multi Purpose"
ExtraStuff.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
ExtraStuff.TextSize = 14

bluecolor.Name = "bluecolor"
bluecolor.Parent = mainframe
bluecolor.BackgroundColor3 = Color3.new(0.239216, 1, 1)
bluecolor.Position = UDim2.new(0.206489682, 0, 0.804953575, 0)
bluecolor.Size = UDim2.new(0, 36, 0, 32)
bluecolor.Font = Enum.Font.SourceSans
bluecolor.FontSize = Enum.FontSize.Size14
bluecolor.Text = ""
bluecolor.TextColor3 = Color3.new(0.227451, 0.901961, 0.909804)
bluecolor.TextSize = 14

yellowcolor.Name = "yellowcolor"
yellowcolor.Parent = mainframe
yellowcolor.BackgroundColor3 = Color3.new(0.960784, 1, 0.14902)
yellowcolor.Position = UDim2.new(0.690265477, 0, 0.804953575, 0)
yellowcolor.Size = UDim2.new(0, 36, 0, 32)
yellowcolor.Font = Enum.Font.SourceSans
yellowcolor.FontSize = Enum.FontSize.Size14
yellowcolor.Text = ""
yellowcolor.TextColor3 = Color3.new(0.227451, 0.901961, 0.909804)
yellowcolor.TextSize = 14

redcolor.Name = "redcolor"
redcolor.Parent = mainframe
redcolor.BackgroundColor3 = Color3.new(1, 0, 0)
redcolor.Position = UDim2.new(0.517699122, 0, 0.804953575, 0)
redcolor.Size = UDim2.new(0, 36, 0, 32)
redcolor.Font = Enum.Font.SourceSans
redcolor.FontSize = Enum.FontSize.Size14
redcolor.Text = ""
redcolor.TextColor3 = Color3.new(0.227451, 0.901961, 0.909804)
redcolor.TextSize = 14

greencolor.Name = "greencolor"
greencolor.Parent = mainframe
greencolor.BackgroundColor3 = Color3.new(0.0901961, 1, 0.14902)
greencolor.Position = UDim2.new(0.362831861, 0, 0.804953575, 0)
greencolor.Size = UDim2.new(0, 36, 0, 32)
greencolor.Font = Enum.Font.SourceSans
greencolor.FontSize = Enum.FontSize.Size14
greencolor.Text = ""
greencolor.TextColor3 = Color3.new(0.227451, 0.901961, 0.909804)
greencolor.TextSize = 14

teleportgui.Name = "teleportgui"
teleportgui.Parent = JailFix
teleportgui.Active = true
teleportgui.BackgroundColor3 = Color3.new(1, 1, 1)
teleportgui.Draggable = true
teleportgui.Position = UDim2.new(0.307494491, 0, 0.347222239, 0)
teleportgui.Size = UDim2.new(0, 524, 0, 253)
teleportgui.Visible = false

nameeeee.Name = "nameeeee"
nameeeee.Parent = teleportgui
nameeeee.BackgroundColor3 = Color3.new(1, 1, 1)
nameeeee.BorderColor3 = Color3.new(1, 1, 1)
nameeeee.Position = UDim2.new(0.0209923666, 0, 0.0355731212, 0)
nameeeee.Size = UDim2.new(0, 437, 0, 50)
nameeeee.Font = Enum.Font.SourceSans
nameeeee.FontSize = Enum.FontSize.Size32
nameeeee.Text = "Teleport Menu"
nameeeee.TextColor3 = Color3.new(0, 0, 0)
nameeeee.TextSize = 30

bankin.Name = "bankin"
bankin.Parent = teleportgui
bankin.BackgroundColor3 = Color3.new(1, 1, 1)
bankin.Position = UDim2.new(0.0209923666, 0, 0.30039525, 0)
bankin.Size = UDim2.new(0, 143, 0, 29)
bankin.Font = Enum.Font.SourceSans
bankin.FontSize = Enum.FontSize.Size14
bankin.Text = "Bank (In)"
bankin.TextSize = 14

bankout.Name = "bankout"
bankout.Parent = teleportgui
bankout.BackgroundColor3 = Color3.new(1, 1, 1)
bankout.Position = UDim2.new(0.0209923666, 0, 0.462450594, 0)
bankout.Size = UDim2.new(0, 143, 0, 28)
bankout.Font = Enum.Font.SourceSans
bankout.FontSize = Enum.FontSize.Size14
bankout.Text = "Bank (Out)"
bankout.TextSize = 14

jewerlyin.Name = "jewerlyin"
jewerlyin.Parent = teleportgui
jewerlyin.BackgroundColor3 = Color3.new(1, 1, 1)
jewerlyin.Position = UDim2.new(0.0209923666, 0, 0.62845856, 0)
jewerlyin.Size = UDim2.new(0, 143, 0, 27)
jewerlyin.Font = Enum.Font.SourceSans
jewerlyin.FontSize = Enum.FontSize.Size14
jewerlyin.Text = "Jewerly Store (In)"
jewerlyin.TextSize = 14

jewerlyout.Name = "jewerlyout"
jewerlyout.Parent = teleportgui
jewerlyout.BackgroundColor3 = Color3.new(1, 1, 1)
jewerlyout.Position = UDim2.new(0.0209923666, 0, 0.790513873, 0)
jewerlyout.Size = UDim2.new(0, 143, 0, 24)
jewerlyout.Font = Enum.Font.SourceSans
jewerlyout.FontSize = Enum.FontSize.Size14
jewerlyout.Text = "Jewerly Store (Out)"
jewerlyout.TextSize = 14

trainspawn.Name = "trainspawn"
trainspawn.Parent = teleportgui
trainspawn.BackgroundColor3 = Color3.new(1, 1, 1)
trainspawn.Position = UDim2.new(0.335877866, 0, 0.30039525, 0)
trainspawn.Size = UDim2.new(0, 149, 0, 31)
trainspawn.Font = Enum.Font.SourceSans
trainspawn.FontSize = Enum.FontSize.Size14
trainspawn.Text = "Train Spawnpoint"
trainspawn.TextSize = 14

criminalbase1.Name = "criminalbase1"
criminalbase1.Parent = teleportgui
criminalbase1.BackgroundColor3 = Color3.new(1, 1, 1)
criminalbase1.Position = UDim2.new(0.335877866, 0, 0.462450594, 0)
criminalbase1.Size = UDim2.new(0, 149, 0, 28)
criminalbase1.Font = Enum.Font.SourceSans
criminalbase1.FontSize = Enum.FontSize.Size14
criminalbase1.Text = "Criminal Base 1 "
criminalbase1.TextSize = 14

criminalbase2.Name = "criminalbase2"
criminalbase2.Parent = teleportgui
criminalbase2.BackgroundColor3 = Color3.new(1, 1, 1)
criminalbase2.Position = UDim2.new(0.335877866, 0, 0.6284585, 0)
criminalbase2.Size = UDim2.new(0, 149, 0, 27)
criminalbase2.Font = Enum.Font.SourceSans
criminalbase2.FontSize = Enum.FontSize.Size14
criminalbase2.Text = "Criminal Base 2"
criminalbase2.TextSize = 14

gasstation.Name = "gasstation"
gasstation.Parent = teleportgui
gasstation.BackgroundColor3 = Color3.new(1, 1, 1)
gasstation.Position = UDim2.new(0.335877866, 0, 0.790513873, 0)
gasstation.Size = UDim2.new(0, 149, 0, 24)
gasstation.Font = Enum.Font.SourceSans
gasstation.FontSize = Enum.FontSize.Size14
gasstation.Text = "Gas Station"
gasstation.TextSize = 14

donutshop.Name = "donutshop"
donutshop.Parent = teleportgui
donutshop.BackgroundColor3 = Color3.new(1, 1, 1)
donutshop.Position = UDim2.new(0.652671754, 0, 0.30039525, 0)
donutshop.Size = UDim2.new(0, 152, 0, 31)
donutshop.Font = Enum.Font.SourceSans
donutshop.FontSize = Enum.FontSize.Size14
donutshop.Text = "Donut Shop"
donutshop.TextSize = 14

prisionbase.Name = "prisionbase"
prisionbase.Parent = teleportgui
prisionbase.BackgroundColor3 = Color3.new(1, 1, 1)
prisionbase.Position = UDim2.new(0.652671754, 0, 0.462450594, 0)
prisionbase.Size = UDim2.new(0, 152, 0, 28)
prisionbase.Font = Enum.Font.SourceSans
prisionbase.FontSize = Enum.FontSize.Size14
prisionbase.Text = "Prison Base"
prisionbase.TextSize = 14

police1.Name = "police1"
police1.Parent = teleportgui
police1.BackgroundColor3 = Color3.new(1, 1, 1)
police1.Position = UDim2.new(0.652671754, 0, 0.6284585, 0)
police1.Size = UDim2.new(0, 152, 0, 27)
police1.Font = Enum.Font.SourceSans
police1.FontSize = Enum.FontSize.Size14
police1.Text = "Police Station 1"
police1.TextSize = 14

police2.Name = "police2"
police2.Parent = teleportgui
police2.BackgroundColor3 = Color3.new(1, 1, 1)
police2.Position = UDim2.new(0.652671754, 0, 0.790513813, 0)
police2.Size = UDim2.new(0, 152, 0, 24)
police2.Font = Enum.Font.SourceSans
police2.FontSize = Enum.FontSize.Size14
police2.Text = "Poilice Station 2"
police2.TextSize = 14

closeteleportgui.Name = "closeteleportgui"
closeteleportgui.Parent = teleportgui
closeteleportgui.BackgroundColor3 = Color3.new(1, 1, 1)
closeteleportgui.BorderColor3 = Color3.new(0.207843, 0.207843, 0.207843)
closeteleportgui.Position = UDim2.new(0.854961812, 0, 0.0355731212, 0)
closeteleportgui.Size = UDim2.new(0, 76, 0, 50)
closeteleportgui.Font = Enum.Font.ArialBold
closeteleportgui.FontSize = Enum.FontSize.Size32
closeteleportgui.Text = "Back"
closeteleportgui.TextColor3 = Color3.new(0, 0, 0)
closeteleportgui.TextScaled = true
closeteleportgui.TextSize = 30
closeteleportgui.TextWrapped = true

gamestuffgui.Name = "gamestuffgui"
gamestuffgui.Parent = JailFix
gamestuffgui.Active = true
gamestuffgui.BackgroundColor3 = Color3.new(1, 1, 1)
gamestuffgui.BackgroundTransparency = 0.14000000059605
gamestuffgui.Draggable = true
gamestuffgui.Position = UDim2.new(0.32752651, 0, 0.349794835, 0)
gamestuffgui.Size = UDim2.new(0, 415, 0, 263)
gamestuffgui.Visible = false

nameeeeeeeee.Name = "nameeeeeeeee"
nameeeeeeeee.Parent = gamestuffgui
nameeeeeeeee.BackgroundColor3 = Color3.new(1, 1, 1)
nameeeeeeeee.BackgroundTransparency = 0.20999999344349
nameeeeeeeee.BorderColor3 = Color3.new(1, 1, 1)
nameeeeeeeee.Position = UDim2.new(0.0289156623, 0, 0.0836501867, 0)
nameeeeeeeee.Size = UDim2.new(0, 332, 0, 33)
nameeeeeeeee.Font = Enum.Font.ArialBold
nameeeeeeeee.FontSize = Enum.FontSize.Size32
nameeeeeeeee.Text = "Multi Purpose"
nameeeeeeeee.TextSize = 30

btools.Name = "btools"
btools.Parent = gamestuffgui
btools.BackgroundColor3 = Color3.new(1, 1, 1)
btools.BorderColor3 = Color3.new(0, 0, 0)
btools.Position = UDim2.new(0.334939778, 0, 0.292775661, 0)
btools.Size = UDim2.new(0, 97, 0, 20)
btools.Font = Enum.Font.ArialBold
btools.FontSize = Enum.FontSize.Size14
btools.Text = "Btools"
btools.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
btools.TextSize = 14

fly.Name = "fly"
fly.Parent = gamestuffgui
fly.BackgroundColor3 = Color3.new(1, 1, 1)
fly.BorderColor3 = Color3.new(0, 0, 0)
fly.Position = UDim2.new(0.0819277093, 0, 0.292775661, 0)
fly.Size = UDim2.new(0, 88, 0, 20)
fly.Font = Enum.Font.ArialBold
fly.FontSize = Enum.FontSize.Size14
fly.Text = "Fly"
fly.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
fly.TextSize = 14
fly.TextStrokeColor3 = Color3.new(0.0117647, 1, 0.788235)

walkspeed.Name = "walkspeed"
walkspeed.Parent = gamestuffgui
walkspeed.BackgroundColor3 = Color3.new(1, 1, 1)
walkspeed.BorderColor3 = Color3.new(0, 0, 0)
walkspeed.Position = UDim2.new(0.0819277093, 0, 0.406844109, 0)
walkspeed.Size = UDim2.new(0, 88, 0, 21)
walkspeed.Font = Enum.Font.ArialBold
walkspeed.FontSize = Enum.FontSize.Size14
walkspeed.Text = "Walkspeed"
walkspeed.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
walkspeed.TextSize = 14

closegamestuff.Name = "closegamestuff"
closegamestuff.Parent = gamestuffgui
closegamestuff.BackgroundColor3 = Color3.new(1, 1, 1)
closegamestuff.Position = UDim2.new(0.790361464, 0, 0.0532319397, 0)
closegamestuff.Size = UDim2.new(0, 77, 0, 39)
closegamestuff.Font = Enum.Font.ArialBold
closegamestuff.FontSize = Enum.FontSize.Size32
closegamestuff.Text = "Back"
closegamestuff.TextColor3 = Color3.new(0, 0, 0)
closegamestuff.TextSize = 30

clicktp.Name = "clicktp"
clicktp.Parent = gamestuffgui
clicktp.BackgroundColor3 = Color3.new(1, 1, 1)
clicktp.BorderColor3 = Color3.new(0, 0, 0)
clicktp.Position = UDim2.new(0.607228875, 0, 0.520912528, 0)
clicktp.Size = UDim2.new(0, 109, 0, 19)
clicktp.Font = Enum.Font.ArialBold
clicktp.FontSize = Enum.FontSize.Size14
clicktp.Text = "Click TP"
clicktp.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
clicktp.TextSize = 14

spamarrest.Name = "spamarrest"
spamarrest.Parent = gamestuffgui
spamarrest.BackgroundColor3 = Color3.new(1, 1, 1)
spamarrest.BorderColor3 = Color3.new(0, 0, 0)
spamarrest.Position = UDim2.new(0.606024086, 0, 0.406844109, 0)
spamarrest.Size = UDim2.new(0, 109, 0, 21)
spamarrest.Font = Enum.Font.ArialBold
spamarrest.FontSize = Enum.FontSize.Size14
spamarrest.Text = "Spam Arrest"
spamarrest.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
spamarrest.TextSize = 14

infinitejump.Name = "infinitejump"
infinitejump.Parent = gamestuffgui
infinitejump.BackgroundColor3 = Color3.new(1, 1, 1)
infinitejump.BorderColor3 = Color3.new(0, 0, 0)
infinitejump.Position = UDim2.new(0.334939778, 0, 0.520912528, 0)
infinitejump.Size = UDim2.new(0, 97, 0, 19)
infinitejump.Font = Enum.Font.ArialBold
infinitejump.FontSize = Enum.FontSize.Size14
infinitejump.Text = "Infinite Jump"
infinitejump.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
infinitejump.TextSize = 14

espall.Name = "espall"
espall.Parent = gamestuffgui
espall.BackgroundColor3 = Color3.new(1, 1, 1)
espall.BorderColor3 = Color3.new(0, 0, 0)
espall.Position = UDim2.new(0.607228935, 0, 0.292775661, 0)
espall.Size = UDim2.new(0, 109, 0, 20)
espall.Font = Enum.Font.ArialBold
espall.FontSize = Enum.FontSize.Size14
espall.Text = "ESP (All)"
espall.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
espall.TextSize = 14

lowgravity.Name = "lowgravity"
lowgravity.Parent = gamestuffgui
lowgravity.BackgroundColor3 = Color3.new(1, 1, 1)
lowgravity.Position = UDim2.new(0.607228935, 0, 0.631178737, 0)
lowgravity.Size = UDim2.new(0, 109, 0, 20)
lowgravity.Font = Enum.Font.ArialBold
lowgravity.FontSize = Enum.FontSize.Size14
lowgravity.Text = "Low Gravity"
lowgravity.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
lowgravity.TextSize = 14

godmode.Name = "godmode"
godmode.Parent = gamestuffgui
godmode.BackgroundColor3 = Color3.new(1, 1, 1)
godmode.Position = UDim2.new(0.334939778, 0, 0.737642586, 0)
godmode.Size = UDim2.new(0, 97, 0, 19)
godmode.Font = Enum.Font.ArialBold
godmode.FontSize = Enum.FontSize.Size14
godmode.Text = "God Mode"
godmode.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
godmode.TextSize = 14

highjump.Name = "highjump"
highjump.Parent = gamestuffgui
highjump.BackgroundColor3 = Color3.new(1, 1, 1)
highjump.Position = UDim2.new(0.0819277093, 0, 0.520912528, 0)
highjump.Size = UDim2.new(0, 88, 0, 19)
highjump.Font = Enum.Font.ArialBold
highjump.FontSize = Enum.FontSize.Size14
highjump.Text = "High Jump"
highjump.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
highjump.TextSize = 14

platform.Name = "platform"
platform.Parent = gamestuffgui
platform.BackgroundColor3 = Color3.new(1, 1, 1)
platform.Position = UDim2.new(0.334939748, 0, 0.406844109, 0)
platform.Size = UDim2.new(0, 97, 0, 20)
platform.Font = Enum.Font.ArialBold
platform.FontSize = Enum.FontSize.Size14
platform.Text = "Platform"
platform.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
platform.TextSize = 14

tracers.Name = "tracers"
tracers.Parent = gamestuffgui
tracers.BackgroundColor3 = Color3.new(1, 1, 1)
tracers.Position = UDim2.new(0.334939778, 0, 0.631178737, 0)
tracers.Size = UDim2.new(0, 97, 0, 20)
tracers.Font = Enum.Font.ArialBold
tracers.FontSize = Enum.FontSize.Size14
tracers.Text = "Tracers: None"
tracers.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
tracers.TextSize = 14

suicide.Name = "suicide"
suicide.Parent = gamestuffgui
suicide.BackgroundColor3 = Color3.new(1, 1, 1)
suicide.Position = UDim2.new(0.607228935, 0, 0.737642586, 0)
suicide.Size = UDim2.new(0, 109, 0, 19)
suicide.Font = Enum.Font.ArialBold
suicide.FontSize = Enum.FontSize.Size14
suicide.Text = "click 4 death :)"
suicide.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
suicide.TextSize = 14

spawnblocks.Name = "spawnblocks"
spawnblocks.Parent = gamestuffgui
spawnblocks.BackgroundColor3 = Color3.new(1, 1, 1)
spawnblocks.Position = UDim2.new(0.0819277093, 0, 0.631178737, 0)
spawnblocks.Size = UDim2.new(0, 88, 0, 20)
spawnblocks.Font = Enum.Font.ArialBold
spawnblocks.FontSize = Enum.FontSize.Size14
spawnblocks.Text = "Spawn Blocks"
spawnblocks.TextSize = 14

playername.Name = "playername"
playername.Parent = gamestuffgui
playername.BackgroundColor3 = Color3.new(1, 1, 1)
playername.Position = UDim2.new(0, 0, 0.89353615, 0)
playername.Size = UDim2.new(0, 200, 0, 28)
playername.Font = Enum.Font.ArialBold
playername.FontSize = Enum.FontSize.Size32
playername.Text = "Player Name"
playername.TextSize = 30

goto.Name = "goto"
goto.Parent = gamestuffgui
goto.BackgroundColor3 = Color3.new(1, 1, 1)
goto.BorderColor3 = Color3.new(0, 0, 0)
goto.Position = UDim2.new(0.481927723, 0, 0.89353615, 0)
goto.Size = UDim2.new(0, 215, 0, 28)
goto.Font = Enum.Font.ArialBold
goto.FontSize = Enum.FontSize.Size32
goto.Text = "Goto"
goto.TextSize = 30

f3x.Name = "f3x"
f3x.Parent = gamestuffgui
f3x.BackgroundColor3 = Color3.new(1, 1, 1)
f3x.Position = UDim2.new(0.0819277093, 0, 0.737642586, 0)
f3x.Size = UDim2.new(0, 88, 0, 19)
f3x.Font = Enum.Font.ArialBold
f3x.FontSize = Enum.FontSize.Size14
f3x.Text = "F3x"
f3x.TextSize = 14

extrastuff.Name = "extrastuff"
extrastuff.Parent = JailFix
extrastuff.Active = true
extrastuff.BackgroundColor3 = Color3.new(1, 1, 1)
extrastuff.BackgroundTransparency = 0.18999999761581
extrastuff.Draggable = true
extrastuff.Position = UDim2.new(0.318704993, 0, 0.266912788, 0)
extrastuff.Size = UDim2.new(0, 516, 0, 385)
extrastuff.Visible = false

banknotification.Name = "banknotification"
banknotification.Parent = extrastuff
banknotification.BackgroundColor3 = Color3.new(1, 1, 1)
banknotification.Position = UDim2.new(0.0620154962, 0, 0.262337625, 0)
banknotification.Size = UDim2.new(0, 200, 0, 50)
banknotification.Font = Enum.Font.ArialBold
banknotification.FontSize = Enum.FontSize.Size14
banknotification.Text = "Bank Notification"
banknotification.TextColor3 = Color3.new(0, 0, 0)
banknotification.TextSize = 14

jewerlynotification.Name = "jewerlynotification"
jewerlynotification.Parent = extrastuff
jewerlynotification.BackgroundColor3 = Color3.new(1, 1, 1)
jewerlynotification.Position = UDim2.new(0.515503883, 0, 0.262337655, 0)
jewerlynotification.Size = UDim2.new(0, 200, 0, 50)
jewerlynotification.Font = Enum.Font.ArialBold
jewerlynotification.FontSize = Enum.FontSize.Size14
jewerlynotification.Text = "Jewerly Store Notification"
jewerlynotification.TextColor3 = Color3.new(0, 0, 0)
jewerlynotification.TextSize = 14

KeyCard.Name = "KeyCard"
KeyCard.Parent = extrastuff
KeyCard.BackgroundColor3 = Color3.new(1, 1, 1)
KeyCard.Position = UDim2.new(0.0620155036, 0, 0.433766246, 0)
KeyCard.Size = UDim2.new(0, 200, 0, 51)
KeyCard.Font = Enum.Font.ArialBold
KeyCard.FontSize = Enum.FontSize.Size14
KeyCard.Text = "Keycard"
KeyCard.TextColor3 = Color3.new(0, 0, 0)
KeyCard.TextSize = 14

TextLabel_2.Parent = extrastuff
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BorderColor3 = Color3.new(1, 1, 1)
TextLabel_2.Position = UDim2.new(0.110465109, 0, 0.0610389635, 0)
TextLabel_2.Size = UDim2.new(0, 275, 0, 39)
TextLabel_2.Font = Enum.Font.ArialBold
TextLabel_2.FontSize = Enum.FontSize.Size60
TextLabel_2.Text = "Game Related"
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextSize = 50
TextLabel_2.TextStrokeColor3 = Color3.new(1, 1, 1)

closeextrastuff.Name = "closeextrastuff"
closeextrastuff.Parent = extrastuff
closeextrastuff.BackgroundColor3 = Color3.new(1, 1, 1)
closeextrastuff.BorderColor3 = Color3.new(0, 0, 0)
closeextrastuff.Position = UDim2.new(0.751937985, 0, 0.0467532463, 0)
closeextrastuff.Size = UDim2.new(0, 103, 0, 50)
closeextrastuff.Font = Enum.Font.ArialBold
closeextrastuff.FontSize = Enum.FontSize.Size32
closeextrastuff.Text = "Back"
closeextrastuff.TextColor3 = Color3.new(0, 0, 0)
closeextrastuff.TextSize = 30

autorobtrain.Name = "autorobtrain"
autorobtrain.Parent = extrastuff
autorobtrain.BackgroundColor3 = Color3.new(1, 1, 1)
autorobtrain.Position = UDim2.new(0.515503883, 0, 0.433766246, 0)
autorobtrain.Size = UDim2.new(0, 200, 0, 50)
autorobtrain.Font = Enum.Font.ArialBold
autorobtrain.FontSize = Enum.FontSize.Size14
autorobtrain.Text = "AutoRob Trains (Hella Buggy)"
autorobtrain.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
autorobtrain.TextSize = 14

autorob.Name = "autorob"
autorob.Parent = extrastuff
autorob.BackgroundColor3 = Color3.new(1, 1, 1)
autorob.Position = UDim2.new(0.0620155036, 0, 0.76363641, 0)
autorob.Size = UDim2.new(0, 200, 0, 50)
autorob.Font = Enum.Font.ArialBold
autorob.FontSize = Enum.FontSize.Size14
autorob.Text = "AutoRob All Stores"
autorob.TextSize = 14

removeall.Name = "removeall"
removeall.Parent = extrastuff
removeall.BackgroundColor3 = Color3.new(1, 1, 1)
removeall.BorderColor3 = Color3.new(0, 0, 0)
removeall.Position = UDim2.new(0.0620155036, 0, 0.594805181, 0)
removeall.Size = UDim2.new(0, 200, 0, 50)
removeall.Font = Enum.Font.ArialBold
removeall.FontSize = Enum.FontSize.Size14
removeall.Text = "Remove All"
removeall.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
removeall.TextSize = 14

allitemsgiver.Name = "allitemsgiver"
allitemsgiver.Parent = extrastuff
allitemsgiver.BackgroundColor3 = Color3.new(1, 1, 1)
allitemsgiver.BorderColor3 = Color3.new(0, 0, 0)
allitemsgiver.Position = UDim2.new(0.515503883, 0, 0.594805181, 0)
allitemsgiver.Size = UDim2.new(0, 200, 0, 50)
allitemsgiver.Font = Enum.Font.ArialBold
allitemsgiver.FontSize = Enum.FontSize.Size14
allitemsgiver.Text = "All Items Giver"
allitemsgiver.TextColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
allitemsgiver.TextSize = 14

infiniteammo.Name = "infiniteammo"
infiniteammo.Parent = extrastuff
infiniteammo.BackgroundColor3 = Color3.new(1, 1, 1)
infiniteammo.Position = UDim2.new(0.515503883, 0, 0.763636351, 0)
infiniteammo.Size = UDim2.new(0, 200, 0, 50)
infiniteammo.Font = Enum.Font.ArialBold
infiniteammo.FontSize = Enum.FontSize.Size14
infiniteammo.Text = "Infinite Ammo"
infiniteammo.TextSize = 14

Teleports.MouseButton1Down:connect(function()
	teleportgui.Visible = not teleportgui.Visible
	mainframe.Visible = false
end)

GameStuff.MouseButton1Down:connect(function()
	gamestuffgui.Visible = not gamestuffgui.Visible
	mainframe.Visible = false
end)

ExtraStuff.MouseButton1Down:connect(function()
	extrastuff.Visible = not extrastuff.Visible
	mainframe.Visible = false
end)

closeteleportgui.MouseButton1Down:connect(function()
	teleportgui.Visible = false
	mainframe.Visible = true
end)

police1.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1206.99585, 17.9300575, -1586.10864)
end)

police2.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(733.814575, 38.0526962, 1124.16504)
end)

prisionbase.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1239.27979, 18.0500565, -1570.29688)
end)

donutshop.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(269.116425, 17.8176937, -1766.83899)
end)

gasstation.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1578.24731, 17.8978615, 711.207214)
end)

criminalbase1.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-223.377686, 17.6145134, 1587.12146)
end)

criminalbase2.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1749.50195, 49.8635178, -1790.7113)
end)

trainspawn.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1954.95007, 68.0448606, -603.844116)
end)

jewerlyout.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.701019, 17.6109638, 1356.74683)
end)

jewerlyin.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(134.412323, 17.8779831, 1318.1095)
end)

bankin.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(32.8007507, 0.790616274, 815.760254)
end)

bankout.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(36.4078064, 17.6235695, 776.03186)
end)

local speed = 50 -- This is the fly speed. Change it to whatever you like. The variable can be changed while running

local c
local h
local bv
local bav
local cam
local flying
local p = game.Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}

local startFly = function () -- Call this function to begin flying 
	if not p.Character or not p.Character.Head or flying then return end
	c = p.Character
	h = c.Humanoid
	h.PlatformStand = true
	cam = workspace:WaitForChild('Camera')
	bv = Instance.new("BodyVelocity")
	bav = Instance.new("BodyAngularVelocity")
	bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
	bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
	bv.Parent = c.Head
	bav.Parent = c.Head
	flying = true
	h.Died:connect(function() flying = false end)
end

local endFly = function () -- Call this function to stop flying
	if not p.Character or not flying then return end
	h.PlatformStand = false
	bv:Destroy()
	bav:Destroy()
	flying = false
end

game:GetService("UserInputService").InputBegan:connect(function (input, GPE) 
	if GPE then return end
	for i, e in pairs(buttons) do
		if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
			buttons[i] = true
			buttons.Moving = true
		end
	end
end)

game:GetService("UserInputService").InputEnded:connect(function (input, GPE) 
	if GPE then return end
	local a = false
	for i, e in pairs(buttons) do
		if i ~= "Moving" then
			if input.KeyCode == Enum.KeyCode[i] then
				buttons[i] = false
			end
			if buttons[i] then a = true end
		end
	end
	buttons.Moving = a
end)

local setVec = function (vec)
	return vec * (speed / vec.Magnitude)
end

game:GetService("RunService").Heartbeat:connect(function (step) -- The actual fly function, called every frame
	if flying and c and c.PrimaryPart then
		local p = c.PrimaryPart.Position
		local cf = cam.CFrame
		local ax, ay, az = cf:toEulerAnglesXYZ()
		c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
		if buttons.Moving then
			local t = Vector3.new()
			if buttons.W then t = t + (setVec(cf.lookVector)) end
			if buttons.S then t = t - (setVec(cf.lookVector)) end
			if buttons.A then t = t - (setVec(cf.rightVector)) end
			if buttons.D then t = t + (setVec(cf.rightVector)) end
			c:TranslateBy(t * step)
		end
	end
end)

fly.MouseButton1Down:connect(function()
	if flyy == true then
		flyy = false
		endFly()
	else
		flyy = true
		startFly()
	end	
	game.Players.LocalPlayer.Character.Humanoid.Sit = true
end)

btools.MouseButton1Down:connect(function()
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
end)

allitemsgiver.MouseButton1Down:connect(function()
	if not workspace:FindFirstChild("Givers") then return end
if Giver then
for i,v in pairs(Giver) do
v.ClickDetector.Parent = v.OriginalParent
v.Event:Disconnect()
end
getmetatable(Giver):Destroy()
end
Giver = {}
local g = Giver
local p = Instance.new("Part", workspace)
p.Anchored = true
p.CanCollide = false
p.CFrame = plr.Character:WaitForChild"HumanoidRootPart".CFrame
setmetatable(Giver, {__metatable = p})
for i,v in pairs(workspace.Givers:GetChildren()) do
local cd = v:FindFirstChildOfClass"ClickDetector"
if cd then
local newt = {}
newt.ClickDetector = cd
newt.OriginalParent = v
cd.Parent = p
newt.Event = cd.MouseClick:connect(function()
cd.Parent = v
end)
table.insert(Giver, newt)
end
end
spawn(function()
wait(10)
if Giver == g then
Giver = nil
for i,v in pairs(g) do
v.ClickDetector.Parent = v.OriginalParent
v.Event:Disconnect()
end
getmetatable(g):Destroy()
end
end)
end)

removeall.MouseButton1Down:connect(function()
	game.Workspace.Jewelrys.Jewelry.Lasers:Remove()
	game.Workspace.Jewelrys.Jewelry.Cameras:Remove()
	game.Workspace.Jewelrys.Jewelry.FloorLasers:Remove()
	game.Workspace.Cells:Remove()
	game.Workspace.Banks.Bank.Lasers:Remove()
	game.Workspace.Doors:Remove()
	game.Workspace.Banks.Bank.Door:Destroy()
	game.Workspace.Banks.Bank.TriggerDoor:Destroy()
	game.Workspace.EscapeRoutes.ExplodeWall:Destroy()
	game.Workspace.EscapeRoutes.LiftGate:Remove()
end)

walkspeed.MouseButton1Down:connect(function()
	down = false
velocity = Instance.new("BodyVelocity")
velocity.maxForce = Vector3.new(100000, 0, 100000)
local speed = 150
gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(100000, 0, 100000)

local hum = game.Players.LocalPlayer.Character.Humanoid

function onButton1Down(mouse)
	down = true
	velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
	velocity.velocity = (hum.MoveDirection) * speed
	gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
	while down do
		if not down then break end
		velocity.velocity = (hum.MoveDirection) * speed
		local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
		gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
		wait(0.1)
	end
end

function onButton1Up(mouse)
	velocity.Parent = nil
	gyro.Parent = nil
	down = false
end

local function onSelected(mouse)
	mouse.KeyDown:connect(function(k) if k:lower()=="q"then onButton1Down(mouse)end end)
	mouse.KeyUp:connect(function(k) if k:lower()=="q"then onButton1Up(mouse)end end)
end

onSelected(game.Players.LocalPlayer:GetMouse())
end)

local ClickTpEnabled = false	
clicktp.MouseButton1Down:connect(function()
loadstring(game:GetObjects("rbxassetid://956305503")[1].Source)()
end)



spamarrest.MouseButton1Down:connect(function()
	local Player = game.Players.LocalPlayer
	wait(0.5)
	for i,v in pairs(game.Teams.Criminal:GetPlayers()) do
		repeat
			wait()
			Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
		until v.Team.Name ~= "Criminal"
	end	
end)

local InfiniteJumpEnabled = false
game:GetService("UserInputService").JumpRequest:connect(function()
if InfiniteJumpEnabled then
game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
end
end)

infinitejump.MouseButton1Down:connect(function()
local state = infinitejump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
local new = state == "Off" and "On" or state == "On" and "Off"
InfiniteJumpEnabled = new == "On"
infinitejump.Text = "Infinite Jump: " .. new	
end)

ENABLED      = false
PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera
_G.FREE_FOR_ALL = false
_G.AIM_AT = 'Head'
local player = game.Players.LocalPlayer
local esp = false
local track = false

function Create(base, team)
local bb = Instance.new("BillboardGui",player.PlayerGui)
bb.Adornee = base
bb.ExtentsOffset = Vector3.new(0,1,0)
bb.AlwaysOnTop = true
bb.Size = UDim2.new(0,5,0,5)
bb.StudsOffset = Vector3.new(0,1,0)
bb.Name = "tracker"
local frame = Instance.new("Frame",bb)
frame.ZIndex = 10
frame.BackgroundTransparency = 0.3
frame.Size = UDim2.new(1,0,1,0)
frame.Position = UDim2.new(0,0,0)
frame.Transparency = 1
local txtlbl = Instance.new("TextLabel",bb)
txtlbl.ZIndex = 10
txtlbl.Text = (string.upper(base.Parent.Name))
txtlbl.BackgroundTransparency = 1
txtlbl.Position = UDim2.new(0,0,0,-35)
txtlbl.Size = UDim2.new(1,0,10,0)
txtlbl.Font = "SourceSansBold"
txtlbl.FontSize = "Size10"
txtlbl.TextStrokeTransparency = 0.5

local txtlbl2 = Instance.new("TextLabel",bb)
txtlbl2.ZIndex = 10
txtlbl2.Text = (math.floor(base.Parent.Humanoid.Health*100)/100)
txtlbl2.BackgroundTransparency = 1
txtlbl2.Position = UDim2.new(0,0,0,-25)
txtlbl2.Size = UDim2.new(1,0,10,0)
txtlbl2.Font = "SourceSansBold"
txtlbl2.FontSize = "Size10"

txtlbl2.TextStrokeTransparency = 0.5
if team then
txtlbl.TextColor3 = Color3.new(85,0,127)
txtlbl2.TextColor3 = Color3.new(85,0,127)
frame.BackgroundColor3 = Color3.new(85,0,127)

elseif base.Parent.Name == "Decryptance" or base.Parent.Name == "Unlisting"  then
txtlbl.TextColor3 = Color3.new(0,255,0)
txtlbl2.TextColor3 = Color3.new(0,255,0)
frame.BackgroundColor3 = Color3.new(0,255,0)
txtlbl.Text = "FRIEND"
txtlbl.FontSize = "Size14"
txtlbl2.FontSize = "Size14"

elseif base.Parent.Name == game.Players.LocalPlayer.Name then
txtlbl2.Transparency = 1
txtlbl.Transparency = 1
frame.Transparency = 1
else
txtlbl.TextColor3 = Color3.new(85,0,127)
txtlbl2.TextColor3 = Color3.new(85,0,127)
frame.BackgroundColor3 = Color3.new(85,0,127)

end
end

function Find()
Clear()
track = true
spawn(function()
while wait() do
if track then
Clear()
for _,v in pairs(game.Players:players()) do

if v.Character and v.Character.Head then
Create(v.Character.Head, false)
end
end
end
end
wait(1)
end)
end
function Clear()
for _,v in pairs(player.PlayerGui:children()) do
if v.Name == "tracker" and v:isA("BillboardGui") then
v:Destroy()
end
end
end

espall.MouseButton1Down:connect(function()
	if not esp then
Find()
warn("Jailbreak ESP Enabled")
game.CoreGui.Unjailbreak.MainFrame.TabFrames.SettingsFrame.CESP.ImageColor3 = Color3.new(0.211765, 0.635294, 0)
esp = true
else
Clear()
track = false
warn("Jailbreak ESP Disabled")
game.CoreGui.Unjailbreak.MainFrame.TabFrames.SettingsFrame.CESP.ImageColor3 = Color3.new(0.380392, 0.380392, 0.380392)
esp = false
end
end)

closegamestuff.MouseButton1Down:connect(function()
	gamestuffgui.Visible = false
	mainframe.Visible = true
end)

closeextrastuff.MouseButton1Down:connect(function()
	extrastuff.Visible = false
	mainframe.Visible = true
end)

closeteleportgui.MouseButton1Down:connect(function()
	teleportgui.Visible = false
	mainframe.Visible = true
end)

banknotification.MouseButton1Down:connect(function()
pcall(function()
local Bank = workspace:FindFirstChild("Banks"):GetChildren()[1]
local Info = Bank.Extra.Sign.Decal
Info:GetPropertyChangedSignal("Transparency"):Connect(function()
if Info.Transparency ~= 0 then
local cb = Instance.new("BindableFunction")
cb.OnInvoke = function(arg)
if arg == "Teleport" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10, 18, 784)
end
end
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Bank is ready!",
Text = "Bank is ready!",
Duration = 4,
Button1 = "Dismiss",
Button2 = "Teleport",
Callback = cb
})
end
end)
end)
end)

jewerlynotification.MouseButton1Down:connect(function()
pcall(function()
local Jewelry = workspace:FindFirstChild("Jewelrys"):GetChildren()[1]
local Info = Jewelry.Extra.Sign.Decal
Info:GetPropertyChangedSignal("Transparency"):Connect(function()
if Info.Transparency ~= 0 then
local cb = Instance.new("BindableFunction")
cb.OnInvoke = function(arg)
if arg == "Teleport" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(142, 18, 1365)
end
end
game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Jewelry is ready!",
Text = "Jewelry is ready!",
Duration = 4,
Button1 = "Dismiss",
Button2 = "Teleport",
Callback = cb
})
end
end)
end)
end)

KeyCard.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.TeamValue.Value= "Police"
end)

platform.MouseButton1Down:connect(function()
local p = Instance.new("Part", workspace)
p.Size = Vector3.new(30,0.5,30)
p.Anchored = true
p.Position = plr.Character.HumanoidRootPart.Position + Vector3.new(0,15,0)
plr.Character:MoveTo(p.Position + Vector3.new(0,1,0))
spawn(function()
while p.Parent do
wait(1)
if (plr.Character.HumanoidRootPart.Position - p.Position).magnitude > 20 then
p:Destroy()
end
end
end)
end)


local Tracers = {}
 
local function AddLasso(p,team)
    if not Tracers[team.Name] then return end
    if p == plr then return end
    spawn(function()
        if p.Character then
            local l = Instance.new("SelectionPartLasso")
            l.Parent = p.Character
            l.Humanoid = p.Character:FindFirstChildOfClass"Humanoid"
            l.Part = plr.Character:WaitForChild"HumanoidRootPart"
            l.Visible = true
            l.Color3 = team.TeamColor.Color
            for i=0,5 do
                local sg = Instance.new("SurfaceGui")
                sg.Face = i
                sg.Parent = p.Character
                sg.Adornee = p.Character:FindFirstChild"HumanoidRootPart"
                sg.AlwaysOnTop = true
                local f = Instance.new("Frame", sg)
                f.Size = UDim2.new(1,0,1,0)
                f.BorderSizePixel = 0
                f.BackgroundColor3 = team.TeamColor.Color
                f.BackgroundTransparency = 0.5
            end
        end
    end)
end
 
local function RemoveLasso(p)
    if not p.Character then return end
    for i,v in pairs(p.Character:GetDescendants()) do
        if v.ClassName:find("Selection") or v.ClassName == "SurfaceGui" then
            v:Destroy()
        end
    end
end
 
for _,team in pairs(game:GetService("Teams"):GetChildren()) do
    team.PlayerAdded:connect(function(p)
        AddLasso(p,team)
    end)
   
    team.PlayerRemoved:connect(function(p)
        RemoveLasso(p)
    end)
end
 
function ToggleTracers(team, bool)
    Tracers[team] = bool
    local t = game:GetService("Teams"):FindFirstChild(team)
    if not t then return end
    for i,v in pairs(t:GetPlayers()) do
        if bool then
            AddLasso(v,t)
        else
            RemoveLasso(v)
        end
    end
end
 
local function CharAdded(plr, char)
    if Tracers[tostring(plr.Team)] then
        AddLasso(plr,plr.Team)
    end
end
 
local function PlrAdded(plr)
    plr.CharacterAdded:connect(function(char)
        CharAdded(plr, char)
    end)
    if plr.Character then
        CharAdded(plr, plr.Character)
    end
end
 
game:GetService("Players").PlayerAdded:connect(PlrAdded)
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
    PlrAdded(v)
end

tracers.MouseButton1Down:connect(function()
    local curr = Tracers.Text:sub(10)
    if curr ~= "None" then
        ToggleTracers(curr, false)
    end
    local teams = {"None", "Police", "Criminal", "Prisoner"}
    local new = ""
    for i,v in pairs(teams) do
        if v == curr then
            new = teams[i + 1] or teams[1]
        end
    end
    if new ~= "None" then
        ToggleTracers(new, true)
    end
    Tracers.Text = "Tracers: " .. new
end)

lowgravity.MouseButton1Down:connect(function()
local t = lowgravity.Text == "Low Gravity" and true or false
workspace.Gravity = t and 50 or 196.2
lowgravity.Text = t and "Normal Gravity" or "Low Gravity"	
end)

highjump.MouseButton1Down:connect(function()
	if Jump == true then
Jump = false
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
game.CoreGui.JailFix.gamestuffgui.highjump.Text = "HighJump: OFF"
else
Jump = true
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
game.CoreGui.JailFix.gamestuffgui.highjump.Text = "HighJump: ON"
end	
end)

godmode.MouseButton1Down:connect(function()
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
end)

suicide.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.Health = "0"
end)

autorobtrain.MouseButton1Down:connect(function()
local Time = 42
local plr = game:GetService("Players").LocalPlayer
local doit = true

plr.Chatted:connect(function(chat)
if chat:lower() == "start" then
doit = true
end
if chat:lower() == "stop" then
doit = false
end
end)

if workspace:FindFirstChild("Trains") then
local rob = function()
if doit == true then
if workspace.Trains:FindFirstChild("BoxCar") then
if workspace.Trains.BoxCar:FindFirstChild("Skeleton") then
local roof = workspace.Trains.BoxCar.Skeleton.RoofDoorClosed
local vaultdoor = workspace.Trains.BoxCar.Model.Rob.Doorframe
local opendet = workspace.Trains.BoxCar.Skeleton.Vault.Part.Open
if roof.Open.Value == true then
for i = 1,50 do
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = roof.CFrame + Vector3.new(0,5,0)
wait()
end
for i = 1,50 do
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = roof.CFrame + Vector3.new(0,-5,0)
wait()
end
repeat
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = vaultdoor.CFrame + Vector3.new(4,0,0)
wait(1)
until opendet.Value == true
if workspace.Trains.BoxCar:FindFirstChild("Model") then
if workspace.Trains.BoxCar.Model:FindFirstChild("Rob") then
local Gold = workspace.Trains.BoxCar.Model.Rob.Gold
for i = 1,Time do
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = Gold.CFrame
wait(1)
end
end
end
for i = 1,50 do
plr.Character.HumanoidRootPart.CFrame = CFrame.new(204.296112, 64.0945435, 88.9027939) --Outside
wait()
end
else
repeat
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = roof.CFrame + Vector3.new(0,5,0)
wait()
until roof.Open.Value == true
for i = 1,50 do
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = roof.CFrame + Vector3.new(0,-5,0)
wait()
end
repeat
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = vaultdoor.CFrame + Vector3.new(4,0,0)
wait(1)
until opendet.Value == true
if workspace.Trains.BoxCar:FindFirstChild("Model") then
if workspace.Trains.BoxCar.Model:FindFirstChild("Rob") then
local Gold = workspace.Trains.BoxCar.Model.Rob.Gold
for i = 1,Time do
if doit == false then
break
end
plr.Character.HumanoidRootPart.CFrame = Gold.CFrame
wait(1)
end
end
end
for i = 1,50 do
plr.Character.HumanoidRootPart.CFrame = CFrame.new(204.296112, 64.0945435, 88.9027939) --Outside
wait()
end
end
end
end
end
end
rob()
workspace.Trains.ChildAdded:connect(function()
wait(20)
rob()
end)
end
end)

f3x.MouseButton1Down:connect(function()
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
		loadstring(game:GetObjects("rbxassetid://1059691823")[1].Source)()	
end)

goto.MouseButton1Down:connect(function()
local name = playername.Text
local player = game.Players:FindFirstChild(name)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame	
end)

autorob.MouseButton1Down:connect(function()
robbed = false
trobbed = 0
canBank = 3000
canJew = 3000
local trialSTARTTIME = os.time()
wait(2)
idle = 0
nam =game:GetService("Players").LocalPlayer.Name

game:GetService('RunService').Stepped:connect(function()
for a, b in pairs(game.Workspace:GetChildren()) do
if b.Name == nam then
for i, v in pairs(game.Workspace[nam]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false

end
end
end
end
end)


workspace[nam].Head.Changed:connect(function()
for a, b in pairs(game.Workspace:GetChildren()) do
if b.Name == nam then
for i, v in pairs(game.Workspace[nam]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false

end
end
end
end
end)
local Player = game:GetService("Players").LocalPlayer
local GUI = Instance.new("ScreenGui", Player.PlayerGui)
local ImageLabel = Instance.new("ImageLabel",GUI)
ImageLabel.Image = "rbxassetid://1266969676" 
ImageLabel.Draggable = true
GUI.ResetOnSpawn = false
ImageLabel.Active = true
local ImageLabelc = Instance.new("TextLabel",ImageLabel)
local ImageLabelz = Instance.new("TextLabel",ImageLabel)
ImageLabelc.BackgroundTransparency = 1
ImageLabelc.Visible = false
ImageLabelc.TextScaled = true
ImageLabelc.Size = UDim2.new(.8,0,.25,0)
ImageLabelc.Position = UDim2.new(.1,0,.45,0)
ImageLabelz.BackgroundTransparency = 1
ImageLabelz.Visible = true
ImageLabelz.TextScaled = true
ImageLabelz.Size = UDim2.new(.2,0,.1,0)
ImageLabelz.Position = UDim2.new(0,0,0.9,0)
ImageLabelz.Text = "version 0.1"
ImageLabelz.TextColor3 = Color3.new(1,1,1)
btnStart = Instance.new("ImageButton",ImageLabel)
btnStart.Size = UDim2.new(.5,0,.185,0)
btnStart.Position = UDim2.new(.25,0,.52,0)
btnStart.Image = "rbxassetid://1267027315"
btnStart.BorderSizePixel = 0
btnStart.BorderColor3 = Color3.new(.2,0,.3) 

local light = game:GetService("Workspace").Banks:FindFirstChildOfClass("Model").Extra.Light
local lightj = game:GetService("Workspace").Jewelrys:FindFirstChildOfClass("Model").Extra.Light
ImageLabel.Size = UDim2.new(0,375,0,250)
btnStart.MouseButton1Down:connect(function()
	ImageLabelc.Visible = true
	ImageLabelc.Text = "Waiting for a bank to open.."
	ImageLabelc.TextColor3 = Color3.new(.5,0,1)
	ImageLabelc.Font = Enum.Font.ArialBold
	ImageLabelc.TextStrokeTransparency = 0
	ImageLabelc.TextStrokeColor3 = Color3.new(.2,0,.5)
	btnStart.Visible = false
	Player.Character.UpperTorso.Anchored = true
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.CFrame.p.X,Player.Character.HumanoidRootPart.CFrame.p.Y+20,Player.Character.HumanoidRootPart.CFrame.p.Z)
	wait(.2)
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.CFrame.p.X,Player.Character.HumanoidRootPart.CFrame.p.Y+20,Player.Character.HumanoidRootPart.CFrame.p.Z)
	wait(.2)
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.CFrame.p.X,Player.Character.HumanoidRootPart.CFrame.p.Y+20,Player.Character.HumanoidRootPart.CFrame.p.Z)
	wait(.2)
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.CFrame.p.X,Player.Character.HumanoidRootPart.CFrame.p.Y+20,Player.Character.HumanoidRootPart.CFrame.p.Z)
	wait(.2)
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.CFrame.p.X,Player.Character.HumanoidRootPart.CFrame.p.Y+20,Player.Character.HumanoidRootPart.CFrame.p.Z)
	wait(.2)
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.CFrame.p.X,Player.Character.HumanoidRootPart.CFrame.p.Y+20,Player.Character.HumanoidRootPart.CFrame.p.Z)
	wait(.2)
	Player.Character.HumanoidRootPart.CFrame = CFrame.new(Player.Character.HumanoidRootPart.CFrame.p.X,Player.Character.HumanoidRootPart.CFrame.p.Y+20,Player.Character.HumanoidRootPart.CFrame.p.Z)
	wait(1)
	
	velocity = Instance.new("BodyPosition", Player.Character.UpperTorso)
	velocity.maxForce = Vector3.new(100000, 100000, 100000)
	velocity.Position = Vector3.new(-6.3, 17.86, 827.9)
	gyro = Instance.new("BodyGyro", Player.Character.UpperTorso)
	gyro.maxTorque = Vector3.new(100000, 100000, 100000)
	Player.Character.UpperTorso.Anchored = false
	while (light.Position - Player.Character.UpperTorso.Position).magnitude > 60 do
		wait(.1)
		Player.Character.Humanoid.Jump = true
	end
	velocity.maxForce = Vector3.new(00000, 0000, 0000)
	gyro:Destroy()
	

	while wait(.1) do
		canBank = canBank + 1
		canJew = canJew + 1
        if idle > 30 then
            idle = 0    
             Player.Character.Humanoid.Jump = true
        else
            idle = idle + 1
        end
        Player.Character:WaitForChild("UpperTorso")
        Player.Character.Humanoid.PlatformStand = false
        if velocity.Parent ~= Player.Character.UpperTorso then
            velocity.Parent = Player.Character.UpperTorso
        end
        if (light.Position - Player.Character.UpperTorso.Position).magnitude > 40 then
            velocity.maxForce = Vector3.new(100000, 10000, 100000)
        else
			if not robbed then
				velocity.maxForce = Vector3.new(00000, 0000, 0000)
			end
            
        end
	    if canBank > 3000 then
	       if light.SurfaceLight.Enabled then
				canBank = 0
	           robbed = true
				ImageLabelc.Text = "Robbing bank!"
	           velocity.Position = Vector3.new(23.69,18.16,846.23)
				velocity.maxForce = Vector3.new(100000, 10000, 100000)
	           wait(2)
				 Player.Character.Humanoid.PlatformStand = true
	           velocity.Position = Vector3.new(18.53, 0.766, 816.56)
				velocity.maxForce = Vector3.new(100000, 10000, 100000)	
				wait(3)
				 Player.Character.Humanoid.PlatformStand = false
	           wait(45)
				trobbed = trobbed + 1
				
				 Player.Character.Humanoid.PlatformStand = true
	          velocity.Position = Vector3.new(-6.3, 17.86, 827.9)
				velocity.maxForce = Vector3.new(100000, 10000, 100000)
				ImageLabelc.Text = "Robbed ".. tostring(trobbed) .. " times! "
				wait(3)
				 Player.Character.Humanoid.PlatformStand = false
	           
	        end
	elseif canJew > 3000 then
		if lightj.SurfaceLight.Enabled then
			canJew = 0
			ImageLabelc.Text = "Robbing jewelry store.."
			Player.Character.Humanoid.PlatformStand = true
			velocity.Position = Vector3.new(142.99,18.6,1349.5)
			wait(3)
			velocity.Position = Vector3.new(122.173,16.52,1308.727)
			wait(4)
			velocity.Position = Vector3.new(111.2,17.39,1332.67)
			wait(4)
			velocity.Position = Vector3.new(125.43,17.75,1328.31)
			wait(4)
			velocity.Position = Vector3.new(141.287, 18.2,1315.98)
			wait(4)
			velocity.Position = Vector3.new(108.606,17.131,1320.33)
			wait(4)
			velocity.Position = Vector3.new(123.107,18.13,1321.723)
			wait(4)
			velocity.Position = Vector3.new(122.56,17.39,1312.67)
			wait(4)
			velocity.Position = Vector3.new(138.37,17.76,1308.8)
			wait(4)
			Player.Character.Humanoid.PlatformStand = false
			velocity.Position = Vector3.new(-264.7,18.31,1563.9)
		 	trobbed = trobbed + 1
			ImageLabelc.Text = "Robbed ".. tostring(trobbed) .. " times! "
		end
	    end
	end
end)	
end)

spawnblocks.MouseButton1Down:connect(function()
local b = Instance.new("Part", game.Workspace)
b.Anchored = true
wait(1)
b.Position = Vector3.new("0, 10, 0")
while true do
wait(.00000000001)
b = Instance.new("Part", game.Workspace)
end	
end)

infiniteammo.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.PlayerGui.MainGui.Ammo.MagSize.RobloxLocked=true
end)

bluecolor.MouseButton1Down:connect(function()
	game.CoreGui.JailFix.mainframe.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.mainframe.TextLabel.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.mainframe.Teleports.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.mainframe.GameStuff.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.mainframe.ExtraStuff.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.bankin.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.bankout.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.closeteleportgui.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.criminalbase1.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.criminalbase2.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.donutshop.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.gasstation.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.jewerlyin.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.jewerlyout.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.police1.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.police2.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.prisionbase.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.trainspawn.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.teleportgui.nameeeee.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.btools.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.clicktp.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.closegamestuff.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.espall.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.f3x.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.fly.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.godmode.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.goto.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.highjump.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.infinitejump.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.lowgravity.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.platform.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.playername.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.spamarrest.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.spawnblocks.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.suicide.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.tracers.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.walkspeed.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.gamestuffgui.nameeeeeeeee.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.KeyCard.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.infiniteammo.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.allitemsgiver.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.autorob.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.autorobtrain.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.banknotification.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.closeextrastuff.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.jewerlynotification.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.removeall.BackgroundColor3 = Color3.new(0, 0.666667, 1)
	game.CoreGui.JailFix.extrastuff.TextLabel.BackgroundColor3 = Color3.new(0, 0.666667, 1)
end)

redcolor.MouseButton1Down:connect(function()
	game.CoreGui.JailFix.mainframe.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.mainframe.TextLabel.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.mainframe.Teleports.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.mainframe.GameStuff.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.mainframe.ExtraStuff.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.bankin.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.bankout.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.closeteleportgui.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.criminalbase1.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.criminalbase2.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.donutshop.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.gasstation.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.jewerlyin.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.jewerlyout.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.police1.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.police2.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.prisionbase.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.trainspawn.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.teleportgui.nameeeee.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.btools.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.clicktp.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.closegamestuff.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.espall.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.f3x.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.fly.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.godmode.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.goto.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.highjump.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.infinitejump.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.lowgravity.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.platform.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.playername.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.spamarrest.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.spawnblocks.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.suicide.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.tracers.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.walkspeed.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.gamestuffgui.nameeeeeeeee.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.KeyCard.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.infiniteammo.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.allitemsgiver.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.autorob.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.autorobtrain.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.banknotification.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.closeextrastuff.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.jewerlynotification.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.removeall.BackgroundColor3 = Color3.new(1, 0, 0)
	game.CoreGui.JailFix.extrastuff.TextLabel.BackgroundColor3 = Color3.new(1, 0, 0)	
end)

greencolor.MouseButton1Down:connect(function()
	game.CoreGui.JailFix.mainframe.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.mainframe.TextLabel.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.mainframe.Teleports.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.mainframe.GameStuff.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.mainframe.ExtraStuff.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.bankin.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.bankout.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.closeteleportgui.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.criminalbase1.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.criminalbase2.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.donutshop.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.gasstation.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.jewerlyin.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.jewerlyout.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.police1.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.police2.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.prisionbase.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.trainspawn.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.teleportgui.nameeeee.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.btools.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.clicktp.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.closegamestuff.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.espall.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.f3x.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.fly.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.godmode.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.goto.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.highjump.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.infinitejump.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.lowgravity.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.platform.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.playername.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.spamarrest.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.spawnblocks.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.suicide.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.tracers.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.walkspeed.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.gamestuffgui.nameeeeeeeee.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.KeyCard.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.infiniteammo.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.allitemsgiver.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.autorob.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.autorobtrain.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.banknotification.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.closeextrastuff.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.jewerlynotification.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.removeall.BackgroundColor3 = Color3.fromRGB(103, 255, 32)
	game.CoreGui.JailFix.extrastuff.TextLabel.BackgroundColor3 = Color3.fromRGB(103, 255, 32)		
end)

yellowcolor.MouseButton1Down:connect(function()
	game.CoreGui.JailFix.mainframe.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.mainframe.TextLabel.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.mainframe.Teleports.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.mainframe.GameStuff.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.mainframe.ExtraStuff.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.bankin.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.bankout.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.closeteleportgui.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.criminalbase1.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.criminalbase2.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.donutshop.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.gasstation.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.jewerlyin.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.jewerlyout.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.police1.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.police2.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.prisionbase.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.trainspawn.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.teleportgui.nameeeee.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.btools.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.clicktp.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.closegamestuff.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.espall.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.f3x.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.fly.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.godmode.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.goto.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.highjump.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.infinitejump.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.lowgravity.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.platform.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.playername.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.spamarrest.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.spawnblocks.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.suicide.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.tracers.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.walkspeed.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.gamestuffgui.nameeeeeeeee.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.KeyCard.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.infiniteammo.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.allitemsgiver.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.autorob.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.autorobtrain.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.banknotification.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.closeextrastuff.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.jewerlynotification.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.removeall.BackgroundColor3 = Color3.fromRGB(246, 255, 65)
	game.CoreGui.JailFix.extrastuff.TextLabel.BackgroundColor3 = Color3.fromRGB(246, 255, 65)	
end)