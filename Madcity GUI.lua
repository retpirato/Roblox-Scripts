-- Instances:
local MadCityGui = Instance.new("ScreenGui")
local MadFrame = Instance.new("Frame")
local teleports = Instance.new("ScrollingFrame")
local Bank = Instance.new("TextButton")
local Jewel = Instance.new("TextButton")
local Casino = Instance.new("TextButton")
local Gunstore = Instance.new("TextButton")
local ship = Instance.new("TextButton")
local Garage = Instance.new("TextButton")
local crimbase = Instance.new("TextButton")
local Police = Instance.new("TextButton")
local Hero = Instance.new("TextButton")
local club = Instance.new("TextButton")
local airport = Instance.new("TextButton")
local gunmodssss = Instance.new("ScrollingFrame")
local MPMod = Instance.new("TextButton")
local tecmod = Instance.new("TextButton")
local shotgunmode = Instance.new("TextButton")
local pistolmod = Instance.new("TextButton")
local batonmod = Instance.new("TextButton")
local snipermod = Instance.new("TextButton")
local spasmod = Instance.new("TextButton")
local protonmod = Instance.new("TextButton")
local infernomopd = Instance.new("TextButton")
local vantamod = Instance.new("TextButton")
local phantommod = Instance.new("TextButton")
local voltronmod = Instance.new("TextButton")
local frostmod = Instance.new("TextButton")
local akmod = Instance.new("TextButton")
local grenademod = Instance.new("TextButton")
local title = Instance.new("TextLabel")
local teleportslabrl = Instance.new("TextLabel")
local functonlabel = Instance.new("TextLabel")
local tpto = Instance.new("TextButton")
local tpBOX = Instance.new("TextBox")
local gravity = Instance.new("TextButton")
local gunmodlabel = Instance.new("TextLabel")
local emoteunlock = Instance.new("TextButton")
local audioBOX = Instance.new("TextBox")
local audio = Instance.new("TextButton")
local gamepassunlock = Instance.new("TextButton")
local ctrltp = Instance.new("TextButton")
local openclose = Instance.new("TextButton")
--Properties:
MadCityGui.Name = "MadCityGui"
MadCityGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MadCityGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MadFrame.Name = "MadFrame"
MadFrame.Parent = MadCityGui
MadFrame.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
MadFrame.BorderSizePixel = 2
MadFrame.Position = UDim2.new(0.279187202, 0, 0.302023977, 0)
MadFrame.Size = UDim2.new(0, 384, 0, 197)

teleports.Name = "teleports"
teleports.Parent = MadFrame
teleports.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
teleports.Position = UDim2.new(0.739583313, 0, 0.126903549, 0)
teleports.Size = UDim2.new(0, 100, 0, 172)

Bank.Name = "Bank"
Bank.Parent = teleports
Bank.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Bank.BorderColor3 = Color3.new(1, 1, 1)
Bank.Position = UDim2.new(0.170000002, 0, 0.031229917, 0)
Bank.Size = UDim2.new(0, 65, 0, 16)
Bank.Font = Enum.Font.GothamSemibold
Bank.Text = "Bank"
Bank.TextColor3 = Color3.new(1, 1, 1)
Bank.TextSize = 14

Jewel.Name = "Jewel"
Jewel.Parent = teleports
Jewel.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Jewel.BorderColor3 = Color3.new(1, 1, 1)
Jewel.Position = UDim2.new(0.170000002, 0, 0.0946816877, 0)
Jewel.Size = UDim2.new(0, 65, 0, 16)
Jewel.Font = Enum.Font.GothamSemibold
Jewel.Text = "Jewelry"
Jewel.TextColor3 = Color3.new(1, 1, 1)
Jewel.TextSize = 14

Casino.Name = "Casino"
Casino.Parent = teleports
Casino.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Casino.BorderColor3 = Color3.new(1, 1, 1)
Casino.Position = UDim2.new(0.170000002, 0, 0.160671532, 0)
Casino.Size = UDim2.new(0, 65, 0, 16)
Casino.Font = Enum.Font.GothamSemibold
Casino.Text = "Casino"
Casino.TextColor3 = Color3.new(1, 1, 1)
Casino.TextSize = 14

Gunstore.Name = "Gunstore"
Gunstore.Parent = teleports
Gunstore.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Gunstore.BorderColor3 = Color3.new(1, 1, 1)
Gunstore.Position = UDim2.new(0.170000002, 0, 0.226661384, 0)
Gunstore.Size = UDim2.new(0, 65, 0, 16)
Gunstore.Font = Enum.Font.GothamSemibold
Gunstore.Text = "Gun Store"
Gunstore.TextColor3 = Color3.new(1, 1, 1)
Gunstore.TextSize = 14

ship.Name = "ship"
ship.Parent = teleports
ship.BackgroundColor3 = Color3.new(1, 0.666667, 0)
ship.BorderColor3 = Color3.new(1, 1, 1)
ship.Position = UDim2.new(0.170000002, 0, 0.287575096, 0)
ship.Size = UDim2.new(0, 65, 0, 16)
ship.Font = Enum.Font.GothamSemibold
ship.Text = "Ship"
ship.TextColor3 = Color3.new(1, 1, 1)
ship.TextSize = 14

Garage.Name = "Garage"
Garage.Parent = teleports
Garage.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Garage.BorderColor3 = Color3.new(1, 1, 1)
Garage.Position = UDim2.new(0.170000002, 0, 0.348488808, 0)
Garage.Size = UDim2.new(0, 65, 0, 16)
Garage.Font = Enum.Font.GothamSemibold
Garage.Text = "Garage"
Garage.TextColor3 = Color3.new(1, 1, 1)
Garage.TextSize = 14

crimbase.Name = "crimbase"
crimbase.Parent = teleports
crimbase.BackgroundColor3 = Color3.new(1, 0.666667, 0)
crimbase.BorderColor3 = Color3.new(1, 1, 1)
crimbase.Position = UDim2.new(0.170000002, 0, 0.41447866, 0)
crimbase.Size = UDim2.new(0, 65, 0, 16)
crimbase.Font = Enum.Font.GothamSemibold
crimbase.Text = "Crim Base"
crimbase.TextColor3 = Color3.new(1, 1, 1)
crimbase.TextSize = 14

Police.Name = "Police"
Police.Parent = teleports
Police.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Police.BorderColor3 = Color3.new(1, 1, 1)
Police.Position = UDim2.new(0.170000002, 0, 0.475392371, 0)
Police.Size = UDim2.new(0, 65, 0, 16)
Police.Font = Enum.Font.GothamSemibold
Police.Text = "Police"
Police.TextColor3 = Color3.new(1, 1, 1)
Police.TextSize = 14

Hero.Name = "Hero"
Hero.Parent = teleports
Hero.BackgroundColor3 = Color3.new(1, 0.666667, 0)
Hero.BorderColor3 = Color3.new(1, 1, 1)
Hero.Position = UDim2.new(0.170000002, 0, 0.536306083, 0)
Hero.Size = UDim2.new(0, 65, 0, 16)
Hero.Font = Enum.Font.GothamSemibold
Hero.Text = "Hero Base"
Hero.TextColor3 = Color3.new(1, 1, 1)
Hero.TextSize = 14

club.Name = "club"
club.Parent = teleports
club.BackgroundColor3 = Color3.new(1, 0.666667, 0)
club.BorderColor3 = Color3.new(1, 1, 1)
club.Position = UDim2.new(0.170000002, 0, 0.59468174, 0)
club.Size = UDim2.new(0, 65, 0, 16)
club.Font = Enum.Font.GothamSemibold
club.Text = "Nightclub"
club.TextColor3 = Color3.new(1, 1, 1)
club.TextSize = 14

airport.Name = "airport"
airport.Parent = teleports
airport.BackgroundColor3 = Color3.new(1, 0.666667, 0)
airport.BorderColor3 = Color3.new(1, 1, 1)
airport.Position = UDim2.new(0.170000002, 0, 0.660671592, 0)
airport.Size = UDim2.new(0, 65, 0, 16)
airport.Font = Enum.Font.GothamSemibold
airport.Text = "Airport"
airport.TextColor3 = Color3.new(1, 1, 1)
airport.TextSize = 14

gunmodssss.Name = "gunmodssss"
gunmodssss.Parent = MadFrame
gunmodssss.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
gunmodssss.Position = UDim2.new(0.479166657, 0, 0.121827409, 0)
gunmodssss.Size = UDim2.new(0, 100, 0, 172)
gunmodssss.CanvasPosition = Vector2.new(0, 221.999969)

MPMod.Name = "MPMod"
MPMod.Parent = gunmodssss
MPMod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
MPMod.BorderColor3 = Color3.new(1, 1, 1)
MPMod.Position = UDim2.new(0.134583324, 0, 0.229199469, 0)
MPMod.Size = UDim2.new(0, 65, 0, 16)
MPMod.Font = Enum.Font.GothamSemibold
MPMod.Text = "MP5 Mod"
MPMod.TextColor3 = Color3.new(1, 1, 1)
MPMod.TextScaled = true
MPMod.TextSize = 14
MPMod.TextWrapped = true

tecmod.Name = "tecmod"
tecmod.Parent = gunmodssss
tecmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
tecmod.BorderColor3 = Color3.new(1, 1, 1)
tecmod.Position = UDim2.new(0.143645823, 0, 0.163209602, 0)
tecmod.Size = UDim2.new(0, 65, 0, 16)
tecmod.Font = Enum.Font.GothamSemibold
tecmod.Text = "TEC9 Mod"
tecmod.TextColor3 = Color3.new(1, 1, 1)
tecmod.TextScaled = true
tecmod.TextSize = 14
tecmod.TextWrapped = true

shotgunmode.Name = "shotgunmode"
shotgunmode.Parent = gunmodssss
shotgunmode.BackgroundColor3 = Color3.new(1, 0.666667, 0)
shotgunmode.BorderColor3 = Color3.new(1, 1, 1)
shotgunmode.Position = UDim2.new(0.135520816, 0, 0.0312299281, 0)
shotgunmode.Size = UDim2.new(0, 65, 0, 16)
shotgunmode.Font = Enum.Font.GothamSemibold
shotgunmode.Text = "Shotgun Mod"
shotgunmode.TextColor3 = Color3.new(1, 1, 1)
shotgunmode.TextScaled = true
shotgunmode.TextSize = 14
shotgunmode.TextWrapped = true

pistolmod.Name = "pistolmod"
pistolmod.Parent = gunmodssss
pistolmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
pistolmod.BorderColor3 = Color3.new(1, 1, 1)
pistolmod.Position = UDim2.new(0.123645827, 0, 0.353565007, 0)
pistolmod.Size = UDim2.new(0, 65, 0, 16)
pistolmod.Font = Enum.Font.GothamSemibold
pistolmod.Text = "Pistol Mod"
pistolmod.TextColor3 = Color3.new(1, 1, 1)
pistolmod.TextScaled = true
pistolmod.TextSize = 14
pistolmod.TextWrapped = true

batonmod.Name = "batonmod"
batonmod.Parent = gunmodssss
batonmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
batonmod.BorderColor3 = Color3.new(1, 1, 1)
batonmod.Position = UDim2.new(0.124583334, 0, 0.4144786, 0)
batonmod.Size = UDim2.new(0, 65, 0, 16)
batonmod.Font = Enum.Font.GothamSemibold
batonmod.Text = "Baton Mod"
batonmod.TextColor3 = Color3.new(1, 1, 1)
batonmod.TextScaled = true
batonmod.TextSize = 14
batonmod.TextWrapped = true

snipermod.Name = "snipermod"
snipermod.Parent = gunmodssss
snipermod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
snipermod.BorderColor3 = Color3.new(1, 1, 1)
snipermod.Position = UDim2.new(0.135520816, 0, 0.09468171, 0)
snipermod.Size = UDim2.new(0, 65, 0, 16)
snipermod.Font = Enum.Font.GothamSemibold
snipermod.Text = "Sniper Mod"
snipermod.TextColor3 = Color3.new(1, 1, 1)
snipermod.TextScaled = true
snipermod.TextSize = 14
snipermod.TextWrapped = true

spasmod.Name = "spasmod"
spasmod.Parent = gunmodssss
spasmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
spasmod.BorderColor3 = Color3.new(1, 1, 1)
spasmod.Position = UDim2.new(0.126000002, 0, 0.287807107, 0)
spasmod.Size = UDim2.new(0, 65, 0, 16)
spasmod.Font = Enum.Font.GothamSemibold
spasmod.Text = "SPAS Mod"
spasmod.TextColor3 = Color3.new(1, 1, 1)
spasmod.TextScaled = true
spasmod.TextSize = 14
spasmod.TextWrapped = true

protonmod.Name = "protonmod"
protonmod.Parent = gunmodssss
protonmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
protonmod.BorderColor3 = Color3.new(1, 1, 1)
protonmod.Position = UDim2.new(0.14458333, 0, 0.485544562, 0)
protonmod.Size = UDim2.new(0, 65, 0, 16)
protonmod.Font = Enum.Font.GothamSemibold
protonmod.Text = "Proton Mod"
protonmod.TextColor3 = Color3.new(1, 1, 1)
protonmod.TextScaled = true
protonmod.TextSize = 14
protonmod.TextWrapped = true

infernomopd.Name = "infernomopd"
infernomopd.Parent = gunmodssss
infernomopd.BackgroundColor3 = Color3.new(1, 0.666667, 0)
infernomopd.BorderColor3 = Color3.new(1, 1, 1)
infernomopd.Position = UDim2.new(0.154583335, 0, 0.548996389, 0)
infernomopd.Size = UDim2.new(0, 65, 0, 16)
infernomopd.Font = Enum.Font.GothamSemibold
infernomopd.Text = "Inferno Mod"
infernomopd.TextColor3 = Color3.new(1, 1, 1)
infernomopd.TextScaled = true
infernomopd.TextSize = 14
infernomopd.TextWrapped = true

vantamod.Name = "vantamod"
vantamod.Parent = gunmodssss
vantamod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
vantamod.BorderColor3 = Color3.new(1, 1, 1)
vantamod.Position = UDim2.new(0.154583335, 0, 0.609910131, 0)
vantamod.Size = UDim2.new(0, 65, 0, 16)
vantamod.Font = Enum.Font.GothamSemibold
vantamod.Text = "Vanta Mod"
vantamod.TextColor3 = Color3.new(1, 1, 1)
vantamod.TextScaled = true
vantamod.TextSize = 14
vantamod.TextWrapped = true

phantommod.Name = "phantommod"
phantommod.Parent = gunmodssss
phantommod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
phantommod.BorderColor3 = Color3.new(1, 1, 1)
phantommod.Position = UDim2.new(0.154583335, 0, 0.678438008, 0)
phantommod.Size = UDim2.new(0, 65, 0, 16)
phantommod.Font = Enum.Font.GothamSemibold
phantommod.Text = "Phantom Mod"
phantommod.TextColor3 = Color3.new(1, 1, 1)
phantommod.TextScaled = true
phantommod.TextSize = 14
phantommod.TextWrapped = true

voltronmod.Name = "voltronmod"
voltronmod.Parent = gunmodssss
voltronmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
voltronmod.BorderColor3 = Color3.new(1, 1, 1)
voltronmod.Position = UDim2.new(0.154583335, 0, 0.746965945, 0)
voltronmod.Size = UDim2.new(0, 65, 0, 16)
voltronmod.Font = Enum.Font.GothamSemibold
voltronmod.Text = "Voltron Mod"
voltronmod.TextColor3 = Color3.new(1, 1, 1)
voltronmod.TextScaled = true
voltronmod.TextSize = 14
voltronmod.TextWrapped = true

frostmod.Name = "frostmod"
frostmod.Parent = gunmodssss
frostmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
frostmod.BorderColor3 = Color3.new(1, 1, 1)
frostmod.Position = UDim2.new(0.154583335, 0, 0.812955797, 0)
frostmod.Size = UDim2.new(0, 65, 0, 16)
frostmod.Font = Enum.Font.GothamSemibold
frostmod.Text = "Frostbite Mod"
frostmod.TextColor3 = Color3.new(1, 1, 1)
frostmod.TextScaled = true
frostmod.TextSize = 14
frostmod.TextWrapped = true

akmod.Name = "akmod"
akmod.Parent = gunmodssss
akmod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
akmod.BorderColor3 = Color3.new(1, 1, 1)
akmod.Position = UDim2.new(0.173645824, 0, 0.876407564, 0)
akmod.Size = UDim2.new(0, 65, 0, 16)
akmod.Font = Enum.Font.GothamSemibold
akmod.Text = "AK47 Mod"
akmod.TextColor3 = Color3.new(1, 1, 1)
akmod.TextScaled = true
akmod.TextSize = 14
akmod.TextWrapped = true

grenademod.Name = "grenademod"
grenademod.Parent = gunmodssss
grenademod.BackgroundColor3 = Color3.new(1, 0.666667, 0)
grenademod.BorderColor3 = Color3.new(1, 1, 1)
grenademod.Position = UDim2.new(0.173645824, 0, 0.939859331, 0)
grenademod.Size = UDim2.new(0, 65, 0, 16)
grenademod.Font = Enum.Font.GothamSemibold
grenademod.Text = "Grenade Mod"
grenademod.TextColor3 = Color3.new(1, 1, 1)
grenademod.TextScaled = true
grenademod.TextSize = 14
grenademod.TextWrapped = true

title.Name = "title"
title.Parent = MadFrame
title.BackgroundColor3 = Color3.new(1, 0.666667, 0)
title.BorderSizePixel = 2
title.Position = UDim2.new(0, 0, -0.255046338, 0)
title.Size = UDim2.new(0, 384, 0, 50)
title.Font = Enum.Font.GothamSemibold
title.Text = "Mad City GUI By Neb#7444"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

teleportslabrl.Name = "teleportslabrl"
teleportslabrl.Parent = MadFrame
teleportslabrl.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
teleportslabrl.BorderColor3 = Color3.new(0.188235, 0.188235, 0.188235)
teleportslabrl.Position = UDim2.new(0.739583433, 0, 0, 0)
teleportslabrl.Size = UDim2.new(0, 100, 0, 25)
teleportslabrl.Font = Enum.Font.GothamSemibold
teleportslabrl.Text = "Teleports"
teleportslabrl.TextColor3 = Color3.new(1, 1, 1)
teleportslabrl.TextSize = 14
teleportslabrl.TextStrokeColor3 = Color3.new(1, 1, 1)

functonlabel.Name = "functonlabel"
functonlabel.Parent = MadFrame
functonlabel.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
functonlabel.BorderColor3 = Color3.new(0.188235, 0.188235, 0.188235)
functonlabel.Size = UDim2.new(0, 184, 0, 25)
functonlabel.Font = Enum.Font.GothamSemibold
functonlabel.Text = "Functions"
functonlabel.TextColor3 = Color3.new(1, 1, 1)
functonlabel.TextSize = 14
functonlabel.TextStrokeColor3 = Color3.new(1, 1, 1)

tpto.Name = "tpto"
tpto.Parent = MadFrame
tpto.BackgroundColor3 = Color3.new(1, 0.666667, 0)
tpto.BorderColor3 = Color3.new(1, 1, 1)
tpto.Position = UDim2.new(0.177812502, 0, 0.57945329, 0)
tpto.Size = UDim2.new(0, 65, 0, 16)
tpto.Font = Enum.Font.GothamSemibold
tpto.Text = "Teleport"
tpto.TextColor3 = Color3.new(1, 1, 1)
tpto.TextScaled = true
tpto.TextSize = 14
tpto.TextWrapped = true

tpBOX.Name = "tpBOX"
tpBOX.Parent = MadFrame
tpBOX.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
tpBOX.Position = UDim2.new(0.0736458302, 0, 0.457625866, 0)
tpBOX.Size = UDim2.new(0, 146, 0, 16)
tpBOX.Font = Enum.Font.GothamSemibold
tpBOX.PlaceholderText = "Enter Username Here..."
tpBOX.Text = ""
tpBOX.TextColor3 = Color3.new(0, 0, 0)
tpBOX.TextScaled = true
tpBOX.TextSize = 14
tpBOX.TextWrapped = true

gravity.Name = "gravity"
gravity.Parent = MadFrame
gravity.BackgroundColor3 = Color3.new(1, 0.666667, 0)
gravity.BorderColor3 = Color3.new(1, 1, 1)
gravity.Position = UDim2.new(0.28458333, 0, 0.188590318, 0)
gravity.Size = UDim2.new(0, 65, 0, 16)
gravity.Font = Enum.Font.GothamSemibold
gravity.Text = "Gravity: OFF"
gravity.TextColor3 = Color3.new(1, 1, 1)
gravity.TextScaled = true
gravity.TextSize = 14
gravity.TextWrapped = true

gunmodlabel.Name = "gunmodlabel"
gunmodlabel.Parent = MadFrame
gunmodlabel.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
gunmodlabel.BorderColor3 = Color3.new(0.188235, 0.188235, 0.188235)
gunmodlabel.Position = UDim2.new(0.479166776, 0, 0, 0)
gunmodlabel.Size = UDim2.new(0, 100, 0, 25)
gunmodlabel.Font = Enum.Font.GothamSemibold
gunmodlabel.Text = "Weapon Mod"
gunmodlabel.TextColor3 = Color3.new(1, 1, 1)
gunmodlabel.TextSize = 14
gunmodlabel.TextStrokeColor3 = Color3.new(1, 1, 1)

emoteunlock.Name = "emoteunlock"
emoteunlock.Parent = MadFrame
emoteunlock.BackgroundColor3 = Color3.new(1, 0.666667, 0)
emoteunlock.BorderColor3 = Color3.new(1, 1, 1)
emoteunlock.Position = UDim2.new(0.0736458451, 0, 0.188590348, 0)
emoteunlock.Size = UDim2.new(0, 65, 0, 16)
emoteunlock.Font = Enum.Font.GothamSemibold
emoteunlock.Text = "Unlock All Emotes"
emoteunlock.TextColor3 = Color3.new(1, 1, 1)
emoteunlock.TextScaled = true
emoteunlock.TextSize = 14
emoteunlock.TextWrapped = true

audioBOX.Name = "audioBOX"
audioBOX.Parent = MadFrame
audioBOX.BackgroundColor3 = Color3.new(0.34902, 0.34902, 0.34902)
audioBOX.Position = UDim2.new(0.0736458302, 0, 0.696204543, 0)
audioBOX.Size = UDim2.new(0, 146, 0, 16)
audioBOX.Font = Enum.Font.GothamSemibold
audioBOX.PlaceholderText = "Enter Audio ID Here..."
audioBOX.Text = ""
audioBOX.TextColor3 = Color3.new(0, 0, 0)
audioBOX.TextScaled = true
audioBOX.TextSize = 14
audioBOX.TextWrapped = true

audio.Name = "audio"
audio.Parent = MadFrame
audio.BackgroundColor3 = Color3.new(1, 0.666667, 0)
audio.BorderColor3 = Color3.new(1, 1, 1)
audio.Position = UDim2.new(0.177812502, 0, 0.828184247, 0)
audio.Size = UDim2.new(0, 65, 0, 16)
audio.Font = Enum.Font.GothamSemibold
audio.Text = "Play Vehicle Radio"
audio.TextColor3 = Color3.new(1, 1, 1)
audio.TextScaled = true
audio.TextSize = 14
audio.TextWrapped = true

gamepassunlock.Name = "gamepassunlock"
gamepassunlock.Parent = MadFrame
gamepassunlock.BackgroundColor3 = Color3.new(1, 0.666667, 0)
gamepassunlock.BorderColor3 = Color3.new(1, 1, 1)
gamepassunlock.Position = UDim2.new(0.0736458451, 0, 0.325646192, 0)
gamepassunlock.Size = UDim2.new(0, 65, 0, 16)
gamepassunlock.Font = Enum.Font.GothamSemibold
gamepassunlock.Text = "Unlock Gamepasses"
gamepassunlock.TextColor3 = Color3.new(1, 1, 1)
gamepassunlock.TextScaled = true
gamepassunlock.TextSize = 14
gamepassunlock.TextWrapped = true

ctrltp.Name = "ctrltp"
ctrltp.Parent = MadFrame
ctrltp.BackgroundColor3 = Color3.new(1, 0.666667, 0)
ctrltp.BorderColor3 = Color3.new(1, 1, 1)
ctrltp.Position = UDim2.new(0.28458333, 0, 0.315493882, 0)
ctrltp.Size = UDim2.new(0, 65, 0, 16)
ctrltp.Font = Enum.Font.GothamSemibold
ctrltp.Text = "Ctrl TP"
ctrltp.TextColor3 = Color3.new(1, 1, 1)
ctrltp.TextScaled = true
ctrltp.TextSize = 14
ctrltp.TextWrapped = true

openclose.Name = "openclose"
openclose.Parent = MadCityGui
openclose.BackgroundColor3 = Color3.new(1, 0.666667, 0)
openclose.BorderSizePixel = 2
openclose.Position = UDim2.new(0.723486066, 0, 0.904224277, 0)
openclose.Size = UDim2.new(0, 187, 0, 48)
openclose.Font = Enum.Font.GothamSemibold
openclose.Text = "< Open >"
openclose.TextColor3 = Color3.new(1, 1, 1)
openclose.TextScaled = true
openclose.TextSize = 14
openclose.TextWrapped = true
-- Scripts:
function SCRIPT_BRQU82_FAKESCRIPT() -- Bank.Script 
	getfenv().script = Instance.new('Script', Bank)

	local bank = script.Parent
	
	bank.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(690.11553955078,24.889343261719,446.09664916992)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BRQU82_FAKESCRIPT))
function SCRIPT_TBYV75_FAKESCRIPT() -- Jewel.Script 
	getfenv().script = Instance.new('Script', Jewel)

	local jew = script.Parent
	
	jew.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93,85.43,780)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_TBYV75_FAKESCRIPT))
function SCRIPT_NPLW90_FAKESCRIPT() -- Casino.Script 
	getfenv().script = Instance.new('Script', Casino)

	local casino = script.Parent
	casino.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1779.7911376953,24.738931655884,685.00677490234)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_NPLW90_FAKESCRIPT))
function SCRIPT_QZUQ71_FAKESCRIPT() -- Gunstore.Script 
	getfenv().script = Instance.new('Script', Gunstore)

	local gunstore = script.Parent
	
	gunstore.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1619.1705322266,41.934741973877,684.16217041016)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_QZUQ71_FAKESCRIPT))
function SCRIPT_HHZU74_FAKESCRIPT() -- ship.Script 
	getfenv().script = Instance.new('Script', ship)

	local ship = script.Parent
	
	ship.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2416,24.8,270.13)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_HHZU74_FAKESCRIPT))
function SCRIPT_VRCP82_FAKESCRIPT() -- Garage.Script 
	getfenv().script = Instance.new('Script', Garage)

	local gar = script.Parent
	
	gar.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(231.40872192383,24.549949645996,-493.32705688477)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_VRCP82_FAKESCRIPT))
function SCRIPT_DEPQ78_FAKESCRIPT() -- crimbase.Script 
	getfenv().script = Instance.new('Script', crimbase)

	local crim = script.Parent
	
	crim.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2036.802,24.23,455.75)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_DEPQ78_FAKESCRIPT))
function SCRIPT_QEZK83_FAKESCRIPT() -- Police.Script 
	getfenv().script = Instance.new('Script', Police)

	local pol = script.Parent
	pol.MouseButton1Click:Connect(function()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-993.44,54.33,-2938.27)
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_QEZK83_FAKESCRIPT))
function SCRIPT_FQTH66_FAKESCRIPT() -- Hero.Script 
	getfenv().script = Instance.new('Script', Hero)

	local hero = script.Parent
	
	hero.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1706.74,85.2,1533.5)
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_FQTH66_FAKESCRIPT))
function SCRIPT_FAEN87_FAKESCRIPT() -- club.Script 
	getfenv().script = Instance.new('Script', club)

	local hero = script.Parent
	
	hero.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1287,24,31.3)
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_FAEN87_FAKESCRIPT))
function SCRIPT_ZBAG89_FAKESCRIPT() -- airport.Script 
	getfenv().script = Instance.new('Script', airport)

	local hero = script.Parent
	
	hero.MouseButton1Click:Connect(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2131,27.17,-1404)
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_ZBAG89_FAKESCRIPT))
function SCRIPT_CWVS74_FAKESCRIPT() -- MadFrame.Script 
	getfenv().script = Instance.new('Script', MadFrame)

	
	script.Parent.Active = true
	script.Parent.Draggable = true
	script.Parent.Visible = false
	

end
coroutine.resume(coroutine.create(SCRIPT_CWVS74_FAKESCRIPT))
function SCRIPT_BMMB72_FAKESCRIPT() -- MPMod.Script 
	getfenv().script = Instance.new('Script', MPMod)

	local ak4 = script.Parent
	
	ak4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['MP5'] 
	local ss       = gun['RifleScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BMMB72_FAKESCRIPT))
function SCRIPT_SIWD71_FAKESCRIPT() -- tecmod.Script 
	getfenv().script = Instance.new('Script', tecmod)

	local tec = script.Parent
	
	tec.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['TEC9'] 
	local ss       = gun['PistolScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_SIWD71_FAKESCRIPT))
function SCRIPT_XMIA72_FAKESCRIPT() -- shotgunmode.Script 
	getfenv().script = Instance.new('Script', shotgunmode)

	local ask4 = script.Parent
	
	ask4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Shotgun'] 
	local ss       = gun['ShotgunScript']
	for i          = 1,5 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_XMIA72_FAKESCRIPT))
function SCRIPT_OUJX87_FAKESCRIPT() -- pistolmod.Script 
	getfenv().script = Instance.new('Script', pistolmod)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Pistol'] 
	local ss       = gun['PistolScript']
	for i          = 1,17 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_OUJX87_FAKESCRIPT))
function SCRIPT_BZLI73_FAKESCRIPT() -- batonmod.Script 
	getfenv().script = Instance.new('Script', batonmod)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Baton'] 
	local ss       = gun['MeleeScript']
	for i          = 1,10 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BZLI73_FAKESCRIPT))
function SCRIPT_JFBU80_FAKESCRIPT() -- snipermod.Script 
	getfenv().script = Instance.new('Script', snipermod)

	local ak47 = script.Parent
	
	ak47.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Sniper'] 
	local ss       = gun['RifleScript']
	for i          = 1,5 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_JFBU80_FAKESCRIPT))
function SCRIPT_YPFS80_FAKESCRIPT() -- spasmod.Script 
	getfenv().script = Instance.new('Script', spasmod)

	local ak47 = script.Parent
	
	ak47.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['SPAS'] 
	local ss       = gun['ShotgunScript']
	for i          = 1,3 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_YPFS80_FAKESCRIPT))
function SCRIPT_ULGF72_FAKESCRIPT() -- protonmod.Script 
	getfenv().script = Instance.new('Script', protonmod)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Laser Beam'] 
	local ss       = gun['PowerScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_ULGF72_FAKESCRIPT))
function SCRIPT_WYEN87_FAKESCRIPT() -- infernomopd.Script 
	getfenv().script = Instance.new('Script', infernomopd)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Fire Ball'] 
	local ss       = gun['PowerScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_WYEN87_FAKESCRIPT))
function SCRIPT_SJGG83_FAKESCRIPT() -- vantamod.Script 
	getfenv().script = Instance.new('Script', vantamod)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Dark Energy'] 
	local ss       = gun['PowerScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_SJGG83_FAKESCRIPT))
function SCRIPT_ETCE86_FAKESCRIPT() -- phantommod.Script 
	getfenv().script = Instance.new('Script', phantommod)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Phantom'] 
	local ss       = gun['PowerScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_ETCE86_FAKESCRIPT))
function SCRIPT_NQGR76_FAKESCRIPT() -- voltronmod.Script 
	getfenv().script = Instance.new('Script', voltronmod)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Electricity'] 
	local ss       = gun['PowerScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_NQGR76_FAKESCRIPT))
function SCRIPT_CPTU86_FAKESCRIPT() -- frostmod.Script 
	getfenv().script = Instance.new('Script', frostmod)

	local assk4 = script.Parent
	
	assk4.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Frost'] 
	local ss       = gun['PowerScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_CPTU86_FAKESCRIPT))
function SCRIPT_TYXI90_FAKESCRIPT() -- akmod.Script 
	getfenv().script = Instance.new('Script', akmod)

	local ak47 = script.Parent
	
	ak47.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['AK47'] 
	local ss       = gun['RifleScript']
	for i          = 1,35 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_TYXI90_FAKESCRIPT))
function SCRIPT_QVGN86_FAKESCRIPT() -- grenademod.Script 
	getfenv().script = Instance.new('Script', grenademod)

	local ak4s7 = script.Parent
	
	ak4s7.MouseButton1Click:Connect(function()
	local backpack = game.Players.LocalPlayer.Backpack
	local gun      = backpack['Grenade'] 
	local ss       = gun['GrenadeScript']
	for i          = 1,10 do 
	ss:Clone().Parent = gun
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_QVGN86_FAKESCRIPT))
function SCRIPT_GBFX85_FAKESCRIPT() -- tpto.Script 
	getfenv().script = Instance.new('Script', tpto)

	local tpto = script.Parent
	
	tpto.MouseButton1Click:Connect(function()
		local victim = game.Players:FindFirstChild(tpto.Parent.tpBOX.Text)
		local aaa = victim.Character.HumanoidRootPart.CFrame
		
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = aaa
	end)

end
coroutine.resume(coroutine.create(SCRIPT_GBFX85_FAKESCRIPT))
function SCRIPT_MHXY77_FAKESCRIPT() -- gravity.Script 
	getfenv().script = Instance.new('Script', gravity)

	local grav = script.Parent
	gr = true
	grav.MouseButton1Click:Connect(function()
		if gr == true then
			gr = false
			game.workspace.Gravity = 195
			grav.Text = "Gravity: OFF"
		else
			gr = true
			game.workspace.Gravity = 45
			grav.Text = "Gravity: ON"
		end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_MHXY77_FAKESCRIPT))
function SCRIPT_YLAP74_FAKESCRIPT() -- emoteunlock.Script 
	getfenv().script = Instance.new('Script', emoteunlock)

	local tdpto = script.Parent
	
	tdpto.MouseButton1Click:Connect(function()
	game.Players.LocalPlayer.Name = "nic10telf"
	game.Players.LocalPlayer.Character.Head:Destroy()
	game.Players.LocalPlayer.Character.HumanoidRootPart.Changed:connect(function ()
	game.Players.LocalPlayer.Name = "nic10telf"
	print(game.Players.LocalPlayer.Name)
	end)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_YLAP74_FAKESCRIPT))
function SCRIPT_YBOM67_FAKESCRIPT() -- audio.Script 
	getfenv().script = Instance.new('Script', audio)

	local audio = script.Parent
	
	audio.MouseButton1Click:Connect(function()
		local AudioId = audio.Parent.audioBOX.Text
	local Player = game:GetService("Players").LocalPlayer
	local TheEvent = game:GetService("ReplicatedStorage").Event
	TheEvent:FireServer("PlayRadio", workspace.ObjectSelection[Player.Name .. "'s Vehicle"].Chassis, AudioId)
	--Made by Booted and Fist
	--Improved by Lord Ulbert Alain Odle#1337(BlackHatHelper)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_YBOM67_FAKESCRIPT))
function SCRIPT_LQMT82_FAKESCRIPT() -- gamepassunlock.Script 
	getfenv().script = Instance.new('Script', gamepassunlock)

	local tdpto = script.Parent
	
	tdpto.MouseButton1Click:Connect(function()
	local gamepasses = {5275404, 5275406, 5275408, 5283883, 5285945, 5786950,5945566,5981868}
	for _,v in next, gamepasses do
	   if not game.Players.LocalPlayer:FindFirstChild(tostring(v)) then
	       local l = Instance.new("BoolValue", game.Players.LocalPlayer)
	       l.Name = tostring(v)
	       l.Value = true
	   end
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_LQMT82_FAKESCRIPT))
function SCRIPT_BUFO89_FAKESCRIPT() -- ctrltp.Script 
	getfenv().script = Instance.new('Script', ctrltp)

	local tpt = script.Parent
	
	tpt.MouseButton1Click:Connect(function()
		local Imput = game:GetService("UserInputService")
	local Plr = game.Players.LocalPlayer
	local Mouse = Plr:GetMouse()
	
	function To(position)
	   local Chr = Plr.Character
	   if Chr ~= nil then
	       Chr:MoveTo(position)
	   end
	end
	
	Imput.InputBegan:Connect(function(input)
	   if input.UserInputType == Enum.UserInputType.MouseButton1 and Imput:IsKeyDown(Enum.KeyCode.LeftControl) then
	       To(Mouse.Hit.p)
	   end
	end)
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BUFO89_FAKESCRIPT))
function SCRIPT_LGOZ70_FAKESCRIPT() -- openclose.Script 
	getfenv().script = Instance.new('Script', openclose)

	local budt = script.Parent
	open = true
	
	budt.MouseButton1Click:Connect(function()
		if open == true then
			open = false
			budt.Parent.MadFrame.Visible = false
			budt.Text = "< Open >"
			
		else
			open = true
				budt.Parent.MadFrame.Visible = true
			budt.Text = "< Close >"
			end
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_LGOZ70_FAKESCRIPT))
function SCRIPT_EXAS74_FAKESCRIPT() -- MadCityGui.Script 
	getfenv().script = Instance.new('Script', MadCityGui)

	script.Parent.ResetOnSpawn = false

end
coroutine.resume(coroutine.create(SCRIPT_EXAS74_FAKESCRIPT))