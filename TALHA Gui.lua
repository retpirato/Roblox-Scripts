-- hoi. v1.2 is here. More stuff. I skipped v1.1 xd

-- I added alot now. Remember most of the credits goes to DMSpotato

local UVG12 = Instance.new("ScreenGui")
local Opener = Instance.new("Frame")
local Open = Instance.new("TextButton")
local hoi = Instance.new("Frame")
local Closeframe = Instance.new("Frame")
local Close = Instance.new("TextButton")
local Username = Instance.new("TextBox")
local VanDaPlayer = Instance.new("TextButton")
local MG2 = Instance.new("TextButton")
local Page2 = Instance.new("TextButton")
local Credits = Instance.new("TextButton")
local MG1 = Instance.new("TextButton")
local PG2Frame = Instance.new("Frame")
local Close2 = Instance.new("TextButton")
local Mossberg = Instance.new("TextButton")
local WoodChip = Instance.new("TextButton")
local M9B = Instance.new("TextButton")
local User2 = Instance.new("TextBox")
local CreditsF = Instance.new("Frame")
local DMCredits = Instance.new("TextLabel")
local MEcredits = Instance.new("TextLabel")
local PS = Instance.new("TextLabel")
local Close3 = Instance.new("TextButton")


UVG12.Name = "UVG12"
UVG12.Parent = game.CoreGui

Opener.Name = "Opener"
Opener.Parent = UVG12
Opener.BackgroundColor3 = Color3.new(0, 0, 0)
Opener.BackgroundTransparency = 0.5
Opener.Position = UDim2.new(0, 19, 0, 564)
Opener.Size = UDim2.new(0, 224, 0, 40)

Open.Name = "Open"
Open.Parent = Opener
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.5
Open.Size = UDim2.new(0, 224, 0, 40)
Open.Font = Enum.Font.SciFi
Open.FontSize = Enum.FontSize.Size42
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 1, 1)
Open.TextSize = 42

hoi.Name = "hoi"
hoi.Parent = UVG12
hoi.BackgroundColor3 = Color3.new(0, 0, 0)
hoi.BackgroundTransparency = 0.5
hoi.Draggable = true
hoi.Position = UDim2.new(0, 0, 0, 309)
hoi.Size = UDim2.new(0, 345, 0, 197)
hoi.Visible = false

Closeframe.Name = "Closeframe"
Closeframe.Parent = hoi
Closeframe.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Closeframe.Position = UDim2.new(0, 313, 0, 0)
Closeframe.Size = UDim2.new(0, 30, 0, 26)

Close.Name = "Close"
Close.Parent = Closeframe
Close.BackgroundColor3 = Color3.new(1, 0, 0.0156863)
Close.Size = UDim2.new(0, 30, 0, 26)
Close.Font = Enum.Font.SciFi
Close.FontSize = Enum.FontSize.Size14
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14
Close.TextStrokeTransparency = 5

Username.Name = "Username"
Username.Parent = hoi
Username.BackgroundColor3 = Color3.new(0, 0, 0)
Username.BackgroundTransparency = 0.5
Username.Size = UDim2.new(0, 200, 0.0999999866, 24)
Username.Font = Enum.Font.SciFi
Username.FontSize = Enum.FontSize.Size18
Username.Text = "Username"
Username.TextColor3 = Color3.new(0, 1, 1)
Username.TextSize = 18

VanDaPlayer.Name = "VanDaPlayer"
VanDaPlayer.Parent = hoi
VanDaPlayer.BackgroundColor3 = Color3.new(0, 0, 0)
VanDaPlayer.BackgroundTransparency = 0.5
VanDaPlayer.Position = UDim2.new(0.0199999996, 15, 0.00999999978, 71)
VanDaPlayer.Size = UDim2.new(0, 150, 0, 26)
VanDaPlayer.Font = Enum.Font.SciFi
VanDaPlayer.FontSize = Enum.FontSize.Size14
VanDaPlayer.Text = "Van Player"
VanDaPlayer.TextColor3 = Color3.new(0, 1, 1)
VanDaPlayer.TextSize = 14

MG2.Name = "MG2"
MG2.Parent = hoi
MG2.BackgroundColor3 = Color3.new(0, 0, 0)
MG2.BackgroundTransparency = 0.5
MG2.Position = UDim2.new(0.0199999996, 29, 0.00999999978, 149)
MG2.Size = UDim2.new(0, 271, 0, 26)
MG2.Font = Enum.Font.SciFi
MG2.FontSize = Enum.FontSize.Size14
MG2.Text = "Mustard Gas (Mask Off) No name needed"
MG2.TextColor3 = Color3.new(0, 1, 1)
MG2.TextSize = 14

Page2.Name = "Page2"
Page2.Parent = hoi
Page2.BackgroundColor3 = Color3.new(0, 0, 0)
Page2.BackgroundTransparency = 0.5
Page2.Position = UDim2.new(0.0199999996, 180, 0.00999999978, 71)
Page2.Size = UDim2.new(0, 48, 0, 26)
Page2.Font = Enum.Font.SciFi
Page2.FontSize = Enum.FontSize.Size14
Page2.Text = "Page 2"
Page2.TextColor3 = Color3.new(0, 1, 1)
Page2.TextSize = 14

Credits.Name = "Credits"
Credits.Parent = hoi
Credits.BackgroundColor3 = Color3.new(0, 0, 0)
Credits.BackgroundTransparency = 0.5
Credits.Position = UDim2.new(0.0199999996, 246, 0.00999999978, 71)
Credits.Size = UDim2.new(0, 66, 0, 26)
Credits.Font = Enum.Font.SciFi
Credits.FontSize = Enum.FontSize.Size14
Credits.Text = "Credits"
Credits.TextColor3 = Color3.new(0, 1, 1)
Credits.TextSize = 14

MG1.Name = "MG1"
MG1.Parent = hoi
MG1.BackgroundColor3 = Color3.new(0, 0, 0)
MG1.BackgroundTransparency = 0.5
MG1.Position = UDim2.new(0.0199999996, 29, 0.00999999978, 113)
MG1.Size = UDim2.new(0, 271, 0, 26)
MG1.Font = Enum.Font.SciFi
MG1.FontSize = Enum.FontSize.Size14
MG1.Text = "Mustard Gas (Mask On) No name needed"
MG1.TextColor3 = Color3.new(0, 1, 1)
MG1.TextSize = 14

PG2Frame.Name = "PG2Frame"
PG2Frame.Parent = UVG12
PG2Frame.BackgroundColor3 = Color3.new(0, 0, 0)
PG2Frame.BackgroundTransparency = 0.5
PG2Frame.Position = UDim2.new(0, 0, 0, 314)
PG2Frame.Size = UDim2.new(0, 340, 0, 192)
PG2Frame.Visible = false

Close2.Name = "Close2"
Close2.Parent = PG2Frame
Close2.BackgroundColor3 = Color3.new(1, 0, 0)
Close2.Position = UDim2.new(0, 310, 0, 0)
Close2.Size = UDim2.new(0, 30, 0, 20)
Close2.Font = Enum.Font.SciFi
Close2.FontSize = Enum.FontSize.Size24
Close2.Text = "X"
Close2.TextColor3 = Color3.new(1, 1, 1)
Close2.TextSize = 24

Mossberg.Name = "Mossberg"
Mossberg.Parent = PG2Frame
Mossberg.BackgroundColor3 = Color3.new(0, 0, 0)
Mossberg.BackgroundTransparency = 0.5
Mossberg.Position = UDim2.new(0, 27, 0, 70)
Mossberg.Size = UDim2.new(0, 143, 0, 26)
Mossberg.Font = Enum.Font.SciFi
Mossberg.FontSize = Enum.FontSize.Size18
Mossberg.Text = "Mossberg 500 BROKEN ATM"
Mossberg.TextColor3 = Color3.new(0, 1, 1)
Mossberg.TextSize = 15

WoodChip.Name = "WoodChip"
WoodChip.Parent = PG2Frame
WoodChip.BackgroundColor3 = Color3.new(0, 0, 0)
WoodChip.BackgroundTransparency = 0.5
WoodChip.Position = UDim2.new(0, 53, 0, 118)
WoodChip.Size = UDim2.new(0, 234, 0, 26)
WoodChip.Font = Enum.Font.SciFi
WoodChip.FontSize = Enum.FontSize.Size24
WoodChip.Text = "Wood chip. Needs name"
WoodChip.TextColor3 = Color3.new(0, 1, 1)
WoodChip.TextSize = 24

M9B.Name = "M9B"
M9B.Parent = PG2Frame
M9B.BackgroundColor3 = Color3.new(0, 0, 0)
M9B.BackgroundTransparency = 0.5
M9B.Position = UDim2.new(0.0299999993, 170, 0, 70)
M9B.Size = UDim2.new(0, 143, 0, 26)
M9B.Font = Enum.Font.SciFi
M9B.FontSize = Enum.FontSize.Size18
M9B.Text = "M9 Bayonet No Name"
M9B.TextColor3 = Color3.new(0, 1, 1)
M9B.TextSize = 15

User2.Parent = PG2Frame
User2.BackgroundColor3 = Color3.new(0, 0, 0)
User2.BackgroundTransparency = 0.5
User2.Size = UDim2.new(0, 200, 0, 50)
User2.Font = Enum.Font.SciFi
User2.FontSize = Enum.FontSize.Size24
User2.Text = "Username"
User2.TextColor3 = Color3.new(0, 1, 1)
User2.TextSize = 24

CreditsF.Name = "CreditsF"
CreditsF.Parent = UVG12
CreditsF.BackgroundColor3 = Color3.new(0, 0, 0)
CreditsF.BackgroundTransparency = 0.5
CreditsF.Position = UDim2.new(0, 0, 0, 312)
CreditsF.Size = UDim2.new(0, 339, 0, 191)
CreditsF.Visible = false

DMCredits.Name = "DMCredits"
DMCredits.Parent = CreditsF
DMCredits.BackgroundColor3 = Color3.new(0, 0, 0)
DMCredits.BackgroundTransparency = 0.5
DMCredits.Position = UDim2.new(0, 32, 0, 28)
DMCredits.Size = UDim2.new(0, 275, 0, 24)
DMCredits.Font = Enum.Font.SciFi
DMCredits.FontSize = Enum.FontSize.Size18
DMCredits.Text = "Credits to DMSpotato for the scripts"
DMCredits.TextColor3 = Color3.new(0, 1, 1)
DMCredits.TextSize = 18

MEcredits.Name = "MEcredits"
MEcredits.Parent = CreditsF
MEcredits.BackgroundColor3 = Color3.new(0, 0, 0)
MEcredits.BackgroundTransparency = 0.5
MEcredits.Position = UDim2.new(0, 18, 0, 70)
MEcredits.Size = UDim2.new(0, 303, 0, 50)
MEcredits.Font = Enum.Font.SciFi
MEcredits.FontSize = Enum.FontSize.Size14
MEcredits.Text = "Credits to me (345678) Talha for making the gui"
MEcredits.TextColor3 = Color3.new(0, 1, 1)
MEcredits.TextSize = 14

PS.Name = "PS"
PS.Parent = CreditsF
PS.BackgroundColor3 = Color3.new(0, 0, 0)
PS.BackgroundTransparency = 0.5
PS.Position = UDim2.new(0, 0, 0, 141)
PS.Size = UDim2.new(0, 339, 0, 50)
PS.Font = Enum.Font.SciFi
PS.FontSize = Enum.FontSize.Size10
PS.Text = "P.S. If your doing a vid. Let me be on your vid. My discord is timberfag#6078"
PS.TextColor3 = Color3.new(0, 1, 1)
PS.TextSize = 10

Close3.Name = "Close3"
Close3.Parent = CreditsF
Close3.BackgroundColor3 = Color3.new(1, 0, 0)
Close3.Position = UDim2.new(0, 314, 0, 0)
Close3.Size = UDim2.new(0, 25, 0, 18)
Close3.Font = Enum.Font.SciFi
Close3.FontSize = Enum.FontSize.Size14
Close3.Text = "X"
Close3.TextColor3 = Color3.new(1, 1, 1)
Close3.TextSize = 14

Open.MouseButton1Click:connect(function()
	game.CoreGui.UVG12.hoi.Visible = true
	game.CoreGui.UVG12.Opener.Visible = false
end)

Close.MouseButton1Click:connect(function()
	game.CoreGui.UVG12.hoi.Visible = false
	game.CoreGui.UVG12.Opener.Visible = true
end)

Close2.MouseButton1Click:connect(function()
	game.CoreGui.UVG12.hoi.Visible = true
	game.CoreGui.UVG12.PG2Frame.Visible = false
end)

Close3.MouseButton1Click:connect(function()
	game.CoreGui.UVG12.hoi.Visible = true
	game.CoreGui.UVG12.CreditsF.Visible = false
end)

Credits.MouseButton1Click:connect(function()
	game.CoreGui.UVG12.hoi.Visible = false
	game.CoreGui.UVG12.CreditsF.Visible = true
end)

Page2.MouseButton1Click:connect(function()
	game.CoreGui.UVG12.hoi.Visible = false
	game.CoreGui.UVG12.PG2Frame.Visible = true
end)

MG1.MouseButton1Click:connect(function()
	--MUSTARD GAS BY DMS
GasMask = true
xd = Instance.new("Tool")
xdd = Instance.new("Part")
xddd = Instance.new("Part")
xdddd = Instance.new("Part")
xddddd = Instance.new("Smoke")
xdddddd = Instance.new("Smoke")
xddddddd = Instance.new("Smoke")
xdddddddd = Instance.new("Part")
xddddddddd = Instance.new("Part")
xd0 = Instance.new("Part")
xd.Name = "Mustard Gas Grenade"
xd.Parent = game.Players.LocalPlayer.Backpack
xdd.Parent = xd
xdd.Material = Enum.Material.SmoothPlastic
xdd.BrickColor = BrickColor.new("Deep orange")
xdd.Position = Vector3.new(-9.08949184, 0.563135147, 33.200779)
xdd.Rotation = Vector3.new(-0, 0, -90)
xdd.CanCollide = false
xdd.Shape = Enum.PartType.Cylinder
xdd.Size = Vector3.new(0.26000011, 0.819999993, 1)
xdd.CFrame = CFrame.new(-9.08949184, 0.563135147, 33.200779, 0, 1, 0, -1, 0, 0, 0, 0, 1)
xdd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.Color = Color3.new(1, 0.686275, 0)
xddd.Parent = xd
xddd.Material = Enum.Material.SmoothPlastic
xddd.BrickColor = BrickColor.new("Really black")
xddd.Position = Vector3.new(-9.09000397, 0.615009904, 33.2000046)
xddd.Rotation = Vector3.new(-0, 0, 90)
xddd.CanCollide = false
xddd.Shape = Enum.PartType.Cylinder
xddd.Size = Vector3.new(1.21000016, 0.799999952, 1)
xddd.CFrame = CFrame.new(-9.09000397, 0.615009904, 33.2000046, 0, -1, 0, 1, 0, 0, 0, 0, 1)
xddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
xdddd.Parent = xd
xdddd.Material = Enum.Material.SmoothPlastic
xdddd.BrickColor = BrickColor.new("Dark stone grey")
xdddd.Position = Vector3.new(-9.09270954, 1.33200657, 33.2021408)
xdddd.CanCollide = false
xdddd.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
xdddd.CFrame = CFrame.new(-9.09270954, 1.33200657, 33.2021408, 1, 0, 0, 0, 1, 0, 0, 0, 1)
xdddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.Color = Color3.new(0.388235, 0.372549, 0.384314)
xddddd.Parent = xdddd
xddddd.Color = Color3.new(0.756863, 0.584314, 0.0588235)
xddddd.Opacity = 1
xddddd.RiseVelocity = 4
xdddddd.Parent = xdddd
xdddddd.Color = Color3.new(0.756863, 0.584314, 0.0588235)
xdddddd.Opacity = 1
xdddddd.RiseVelocity = 4
xddddddd.Parent = xdddd
xddddddd.Color = Color3.new(0.756863, 0.584314, 0.0588235)
xddddddd.Opacity = 1
xddddddd.RiseVelocity = 4
xdddddddd.Parent = xd
xdddddddd.Material = Enum.Material.SmoothPlastic
xdddddddd.BrickColor = BrickColor.new("Deep orange")
xdddddddd.Position = Vector3.new(-9.08949184, 0.899091303, 33.200779)
xdddddddd.Rotation = Vector3.new(-0, 0, 90)
xdddddddd.CanCollide = false
xdddddddd.Shape = Enum.PartType.Cylinder
xdddddddd.Size = Vector3.new(0.200000003, 0.819999993, 1)
xdddddddd.CFrame = CFrame.new(-9.08949184, 0.899091303, 33.200779, 0, -1, 0, 1, 0, 0, 0, 0, 1)
xdddddddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.Color = Color3.new(1, 0.686275, 0)
xddddddddd.Parent = xd
xddddddddd.Material = Enum.Material.SmoothPlastic
xddddddddd.BrickColor = BrickColor.new("Black")
xddddddddd.Position = Vector3.new(-9.09270954, 1.26311076, 33.2003593)
xddddddddd.Rotation = Vector3.new(-0, 0, 90)
xddddddddd.CanCollide = false
xddddddddd.Shape = Enum.PartType.Cylinder
xddddddddd.Size = Vector3.new(0.200000003, 0.799999952, 0.540000021)
xddddddddd.CFrame = CFrame.new(-9.09270954, 1.26311076, 33.2003593, 0, -1, 0, 1, 0, 0, 0, 0, 1)
xddddddddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.Color = Color3.new(0.105882, 0.164706, 0.207843)
xd0.Name = "Handle"
xd0.Parent = xd
xd0.BrickColor = BrickColor.new("Earth green")
xd0.Transparency = 1
xd0.Position = Vector3.new(-9.11234188, 0.5, 33.1982155)
xd0.Rotation = Vector3.new(0, 90, 0)
xd0.CanCollide = false
xd0.FormFactor = Enum.FormFactor.Custom
xd0.Size = Vector3.new(0.800000131, 0.920000255, 0.799998164)
xd0.CFrame = CFrame.new(-9.11234188, 0.5, 33.1982155, -0, 0, 1, 0, 1, 0, -1, 0, 0)
xd0.BottomSurface = Enum.SurfaceType.Smooth
xd0.TopSurface = Enum.SurfaceType.Smooth
xd0.Color = Color3.new(0.152941, 0.27451, 0.176471)
KILLPART = Instance.new("Part")
KILLPART.Size = Vector3.new(16,16,16)
KILLPART.Name = "TOUCHPART"
KILLPART.Anchored = true
KILLPART.BrickColor = BrickColor.new("Black")
KILLPART.Transparency = 1
KILLPART.CanCollide = false
KILLPART.CFrame = xd0.CFrame
KILLPART.Parent = workspace
KILLPART.Color = Color3.new(0.105882, 0.164706, 0.207843)
Gas = Instance.new("Sound")
Gas.Parent = xd0
Gas.Volume = 0.8
Gas.Looped = true
Gas.SoundId = "http://www.roblox.com/asset/?id=137065982"
Gas.Pitch = 1
Gas.Name = "Sound"
ison = false
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(xd.Handle, A)
		A.Anchored = false
		A.CanCollide = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(xd)
end
function XDdd ()
	ison = true
end
function Xddd ()
	ison = false
end function lol () xdg = true Gas.Playing = true KILLPART.Parent = workspace while xdg == true do wait() KILLPART.CFrame = xd0.CFrame end end
function Posijew ()
	KILLPART.CFrame = xd0.CFrame
end function loln () KILLPART.Parent = game Gas.Playing = false xdg = false end
xdg = false
xd.Equipped:connect(XDdd)
xd.Unequipped:connect(Xddd)
xd.Equipped:connect(Finale)
xd.Equipped:connect(lol)
xd.Unequipped:connect(loln)
xd.Unequipped:connect(Finale)
Finale()
function Kill (Part)
	for i,v in pairs(Part.Parent:GetChildren()) do
		if v:IsA("Humanoid") and v.Parent.Name ~= game.Players.LocalPlayer.Name then
			v:Destroy()
	end end
end
KILLPART.Touched:connect(Kill)
if GasMask == true then
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("Part")
o6 = Instance.new("Part")
o7 = Instance.new("SpecialMesh")
o8 = Instance.new("Part")
o9 = Instance.new("Part")
o10 = Instance.new("SpecialMesh")
o11 = Instance.new("Part")
o12 = Instance.new("Part")
o13 = Instance.new("SpecialMesh")
o14 = Instance.new("Part")
o15 = Instance.new("Part")
o16 = Instance.new("Part")
o17 = Instance.new("Part")
o1.Name = "MODEL"
o2.Name = "Middle"
o2.Parent = o1
o2.BrickColor = BrickColor.new("Pastel brown")
o2.Transparency = 1
o2.Position = Vector3.new(-13.5356159, 3.71991396, 50.2649117)
o2.Rotation = Vector3.new(-5.66336393, -89.7626114, -5.66246414)
o2.Anchored = true
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(-13.5356159, 3.71991396, 50.2649117, 1.75646369e-006, 1.74156298e-007, -0.999991417, -1.04150445e-007, 1, 1.60883403e-007, 0.999999762, 9.62157287e-008, 1.6223396e-006)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(1, 0.8, 0.6)
o3.Parent = o2
o3.Scale = Vector3.new(6.25, 6.25, 6.25)
o3.MeshType = Enum.MeshType.FileMesh
o4.Name = "Lense 1"
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.Transparency = 0.050000011920929
o4.Position = Vector3.new(-12.900528, 3.77991295, 50.5080605)
o4.Rotation = Vector3.new(-180, 20.6807137, -179.999985)
o4.Anchored = true
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Shape = Enum.PartType.Cylinder
o4.Size = Vector3.new(0.200000003, 0.320000023, 0.939999998)
o4.CFrame = CFrame.new(-12.900528, 3.77991295, 50.5080605, -0.935553849, 3.06141374e-007, 0.353159934, 3.19927466e-007, 1, 2.01617603e-008, -0.353163034, 1.1997561e-007, -0.935561478)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Name = "Lense2"
o5.Parent = o1
o5.Material = Enum.Material.Metal
o5.Transparency = 0.050000011920929
o5.Position = Vector3.new(-12.8961124, 3.77492094, 50.0302277)
o5.Rotation = Vector3.new(-180, -23.8323021, -179.999985)
o5.Anchored = true
o5.CanCollide = false
o5.FormFactor = Enum.FormFactor.Custom
o5.Shape = Enum.PartType.Cylinder
o5.Size = Vector3.new(0.200000003, 0.330000043, 0.99000001)
o5.CFrame = CFrame.new(-12.8961124, 3.77492094, 50.0302277, -0.914722979, 2.85652249e-007, -0.404061079, 2.36339361e-007, 1, 1.37493373e-007, 0.404064298, 2.15865228e-008, -0.914730668)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Name = "Handle"
o6.Parent = o1
o6.Material = Enum.Material.Metal
o6.BrickColor = BrickColor.new("Really black")
o6.Position = Vector3.new(-12.8799381, 3.69992495, 50.2599869)
o6.Rotation = Vector3.new(-90, 9.97842108e-006, -89.9999008)
o6.Anchored = true
o6.CanCollide = false
o6.FormFactor = Enum.FormFactor.Plate
o6.Size = Vector3.new(1, 0.400000006, 1)
o6.CFrame = CFrame.new(-12.8799381, 3.69992495, 50.2599869, 1.75646369e-006, 0.999991417, 1.74156298e-007, -1.04150445e-007, -1.60883403e-007, 1, 0.999999762, -1.6223396e-006, 9.62157287e-008)
o6.BottomSurface = Enum.SurfaceType.Weld
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Parent = o6
o7.MeshId = "http://www.roblox.com/asset/?id=5158270"
o7.Scale = Vector3.new(0.140000001, 0.170000002, 0.100000001)
o7.MeshType = Enum.MeshType.FileMesh
o8.Name = "Straps"
o8.Parent = o1
o8.Material = Enum.Material.Fabric
o8.BrickColor = BrickColor.new("Really black")
o8.Position = Vector3.new(-13.5199518, 3.48991394, 50.2599869)
o8.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, 89.9999924)
o8.Anchored = true
o8.CanCollide = false
o8.FormFactor = Enum.FormFactor.Custom
o8.Shape = Enum.PartType.Cylinder
o8.Size = Vector3.new(0.200000003, 1.49000013, 1.25999999)
o8.CFrame = CFrame.new(-13.5199518, 3.48991394, 50.2599869, 1.44325043e-007, -0.999991238, 1.75646369e-006, 0.999999881, 1.31081052e-007, -1.04150445e-007, 9.48765404e-008, 1.6242019e-006, 0.999999762)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o9.Name = "Ring2"
o9.Parent = o1
o9.BrickColor = BrickColor.new("Dark stone grey")
o9.Position = Vector3.new(-12.8061161, 3.77991295, 49.9993477)
o9.Rotation = Vector3.new(-1.48261315e-005, -66.1664276, -2.4695395e-005)
o9.Anchored = true
o9.CanCollide = false
o9.FormFactor = Enum.FormFactor.Custom
o9.Size = Vector3.new(0.600000024, 0.200000003, 1)
o9.CFrame = CFrame.new(-12.8061161, 3.77991295, 49.9993477, 0.404059976, 1.74156298e-007, -0.914723039, -1.6136562e-007, 1, 1.0455733e-007, 0.914730787, 9.62157287e-008, 0.404063195)
o9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Color = Color3.new(0.388235, 0.372549, 0.384314)
o10.Parent = o9
o10.MeshId = "http://www.roblox.com/asset/?id=3270017"
o10.Scale = Vector3.new(0.340000004, 0.300000012, 0.300000012)
o10.MeshType = Enum.MeshType.FileMesh
o11.Name = "Straps"
o11.Parent = o1
o11.Material = Enum.Material.Fabric
o11.BrickColor = BrickColor.new("Really black")
o11.Position = Vector3.new(-13.5199518, 4.00991392, 50.2599869)
o11.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, 89.9999924)
o11.Anchored = true
o11.CanCollide = false
o11.FormFactor = Enum.FormFactor.Custom
o11.Shape = Enum.PartType.Cylinder
o11.Size = Vector3.new(0.200000003, 1.49000013, 1.25999999)
o11.CFrame = CFrame.new(-13.5199518, 4.00991392, 50.2599869, 1.44325043e-007, -0.999991238, 1.75646369e-006, 0.999999881, 1.31081052e-007, -1.04150445e-007, 9.48765404e-008, 1.6242019e-006, 0.999999762)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o12.Name = "Ring1"
o12.Parent = o1
o12.BrickColor = BrickColor.new("Dark stone grey")
o12.Position = Vector3.new(-12.7999144, 3.76992106, 50.5299988)
o12.Rotation = Vector3.new(-179.999969, -69.3177338, -179.999985)
o12.Anchored = true
o12.CanCollide = false
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.600000024, 0.200000003, 1)
o12.CFrame = CFrame.new(-12.7999144, 3.76992106, 50.5299988, -0.353160918, 1.74156298e-007, -0.935553372, -4.22077129e-008, 1, 1.87534141e-007, 0.935561061, 9.62157287e-008, -0.353164017)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.388235, 0.372549, 0.384314)
o13.Parent = o12
o13.MeshId = "http://www.roblox.com/asset/?id=3270017"
o13.Scale = Vector3.new(0.340000004, 0.300000012, 0.300000012)
o13.MeshType = Enum.MeshType.FileMesh
o14.Name = "Breather"
o14.Parent = o1
o14.Material = Enum.Material.Metal
o14.BrickColor = BrickColor.new("Really black")
o14.Position = Vector3.new(-12.7419596, 3.69627094, 50.2550011)
o14.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, -39.5510521)
o14.Anchored = true
o14.CanCollide = false
o14.FormFactor = Enum.FormFactor.Custom
o14.Shape = Enum.PartType.Cylinder
o14.Size = Vector3.new(0.600000024, 0.340000093, 0.25000003)
o14.CFrame = CFrame.new(-12.7419596, 3.69627094, 50.2550011, 0.771050453, 0.636759639, 1.75646369e-006, -0.636765182, 0.771057129, -1.04150445e-007, -1.31184265e-006, -9.5997575e-007, 0.999999762)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Name = "Breather"
o15.Parent = o1
o15.Material = Enum.Material.Metal
o15.BrickColor = BrickColor.new("Really black")
o15.Position = Vector3.new(-12.5337915, 3.51434994, 50.2550011)
o15.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, -39.5510521)
o15.Anchored = true
o15.CanCollide = false
o15.FormFactor = Enum.FormFactor.Custom
o15.Shape = Enum.PartType.Cylinder
o15.Size = Vector3.new(0.200000003, 0.340000093, 0.350000024)
o15.CFrame = CFrame.new(-12.5337915, 3.51434994, 50.2550011, 0.771050453, 0.636759639, 1.75646369e-006, -0.636765182, 0.771057129, -1.04150445e-007, -1.31184265e-006, -9.5997575e-007, 0.999999762)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o16.Name = "Breather"
o16.Parent = o1
o16.Material = Enum.Material.Metal
o16.BrickColor = BrickColor.new("Really black")
o16.Position = Vector3.new(-12.7920103, 3.39220095, 49.784256)
o16.Rotation = Vector3.new(10.8745985, 48.2677155, -21.6106548)
o16.Anchored = true
o16.CanCollide = false
o16.FormFactor = Enum.FormFactor.Custom
o16.Shape = Enum.PartType.Cylinder
o16.Size = Vector3.new(0.230000019, 0.540000081, 0.75)
o16.CFrame = CFrame.new(-12.7920103, 3.39220095, 49.784256, 0.618847609, 0.24515225, 0.746263206, -0.230788618, 0.96486491, -0.125580132, -0.75083673, -0.0945150182, 0.653688967)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Name = "Breather"
o17.Parent = o1
o17.Material = Enum.Material.Metal
o17.BrickColor = BrickColor.new("Really black")
o17.Position = Vector3.new(-12.8723783, 3.42192006, 49.8816109)
o17.Rotation = Vector3.new(10.8745985, 48.2677155, -21.6106548)
o17.Anchored = true
o17.CanCollide = false
o17.FormFactor = Enum.FormFactor.Custom
o17.Shape = Enum.PartType.Cylinder
o17.Size = Vector3.new(0.370000005, 0.540000081, 0.310000002)
o17.CFrame = CFrame.new(-12.8723783, 3.42192006, 49.8816109, 0.618847609, 0.24515225, 0.746263206, -0.230788618, 0.96486491, -0.125580132, -0.75083673, -0.0945150182, 0.653688967)
o17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
function onTouched(hit)
	local d = hit.Parent:GetChildren()
	for i=1, #d do 
		if (d[i].className == "Hat") then 
			d[i]:remove() 
		end 
	end	
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Face") == nil then
		local g = o1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
				g.Middle.Transparency = 1
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent.Head
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			h[i].Anchored = false
			h[i].CanCollide = false
		end
		
	end
end

onTouched(game.Players.LocalPlayer.Character.Head)
end
end)

MG2.MouseButton1Click:connect(function()
	--MUSTARD GAS BY DMS
GasMask = false
xd = Instance.new("Tool")
xdd = Instance.new("Part")
xddd = Instance.new("Part")
xdddd = Instance.new("Part")
xddddd = Instance.new("Smoke")
xdddddd = Instance.new("Smoke")
xddddddd = Instance.new("Smoke")
xdddddddd = Instance.new("Part")
xddddddddd = Instance.new("Part")
xd0 = Instance.new("Part")
xd.Name = "Mustard Gas Grenade"
xd.Parent = game.Players.LocalPlayer.Backpack
xdd.Parent = xd
xdd.Material = Enum.Material.SmoothPlastic
xdd.BrickColor = BrickColor.new("Deep orange")
xdd.Position = Vector3.new(-9.08949184, 0.563135147, 33.200779)
xdd.Rotation = Vector3.new(-0, 0, -90)
xdd.CanCollide = false
xdd.Shape = Enum.PartType.Cylinder
xdd.Size = Vector3.new(0.26000011, 0.819999993, 1)
xdd.CFrame = CFrame.new(-9.08949184, 0.563135147, 33.200779, 0, 1, 0, -1, 0, 0, 0, 0, 1)
xdd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xdd.Color = Color3.new(1, 0.686275, 0)
xddd.Parent = xd
xddd.Material = Enum.Material.SmoothPlastic
xddd.BrickColor = BrickColor.new("Really black")
xddd.Position = Vector3.new(-9.09000397, 0.615009904, 33.2000046)
xddd.Rotation = Vector3.new(-0, 0, 90)
xddd.CanCollide = false
xddd.Shape = Enum.PartType.Cylinder
xddd.Size = Vector3.new(1.21000016, 0.799999952, 1)
xddd.CFrame = CFrame.new(-9.09000397, 0.615009904, 33.2000046, 0, -1, 0, 1, 0, 0, 0, 0, 1)
xddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xddd.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
xdddd.Parent = xd
xdddd.Material = Enum.Material.SmoothPlastic
xdddd.BrickColor = BrickColor.new("Dark stone grey")
xdddd.Position = Vector3.new(-9.09270954, 1.33200657, 33.2021408)
xdddd.CanCollide = false
xdddd.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
xdddd.CFrame = CFrame.new(-9.09270954, 1.33200657, 33.2021408, 1, 0, 0, 0, 1, 0, 0, 0, 1)
xdddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xdddd.Color = Color3.new(0.388235, 0.372549, 0.384314)
xddddd.Parent = xdddd
xddddd.Color = Color3.new(0.756863, 0.584314, 0.0588235)
xddddd.Opacity = 1
xddddd.RiseVelocity = 4
xdddddd.Parent = xdddd
xdddddd.Color = Color3.new(0.756863, 0.584314, 0.0588235)
xdddddd.Opacity = 1
xdddddd.RiseVelocity = 4
xddddddd.Parent = xdddd
xddddddd.Color = Color3.new(0.756863, 0.584314, 0.0588235)
xddddddd.Opacity = 1
xddddddd.RiseVelocity = 4
xdddddddd.Parent = xd
xdddddddd.Material = Enum.Material.SmoothPlastic
xdddddddd.BrickColor = BrickColor.new("Deep orange")
xdddddddd.Position = Vector3.new(-9.08949184, 0.899091303, 33.200779)
xdddddddd.Rotation = Vector3.new(-0, 0, 90)
xdddddddd.CanCollide = false
xdddddddd.Shape = Enum.PartType.Cylinder
xdddddddd.Size = Vector3.new(0.200000003, 0.819999993, 1)
xdddddddd.CFrame = CFrame.new(-9.08949184, 0.899091303, 33.200779, 0, -1, 0, 1, 0, 0, 0, 0, 1)
xdddddddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xdddddddd.Color = Color3.new(1, 0.686275, 0)
xddddddddd.Parent = xd
xddddddddd.Material = Enum.Material.SmoothPlastic
xddddddddd.BrickColor = BrickColor.new("Black")
xddddddddd.Position = Vector3.new(-9.09270954, 1.26311076, 33.2003593)
xddddddddd.Rotation = Vector3.new(-0, 0, 90)
xddddddddd.CanCollide = false
xddddddddd.Shape = Enum.PartType.Cylinder
xddddddddd.Size = Vector3.new(0.200000003, 0.799999952, 0.540000021)
xddddddddd.CFrame = CFrame.new(-9.09270954, 1.26311076, 33.2003593, 0, -1, 0, 1, 0, 0, 0, 0, 1)
xddddddddd.BackSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.RightSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.TopSurface = Enum.SurfaceType.SmoothNoOutlines
xddddddddd.Color = Color3.new(0.105882, 0.164706, 0.207843)
xd0.Name = "Handle"
xd0.Parent = xd
xd0.BrickColor = BrickColor.new("Earth green")
xd0.Transparency = 1
xd0.Position = Vector3.new(-9.11234188, 0.5, 33.1982155)
xd0.Rotation = Vector3.new(0, 90, 0)
xd0.CanCollide = false
xd0.FormFactor = Enum.FormFactor.Custom
xd0.Size = Vector3.new(0.800000131, 0.920000255, 0.799998164)
xd0.CFrame = CFrame.new(-9.11234188, 0.5, 33.1982155, -0, 0, 1, 0, 1, 0, -1, 0, 0)
xd0.BottomSurface = Enum.SurfaceType.Smooth
xd0.TopSurface = Enum.SurfaceType.Smooth
xd0.Color = Color3.new(0.152941, 0.27451, 0.176471)
KILLPART = Instance.new("Part")
KILLPART.Size = Vector3.new(16,16,16)
KILLPART.Name = "TOUCHPART"
KILLPART.Anchored = true
KILLPART.BrickColor = BrickColor.new("Black")
KILLPART.Transparency = 1
KILLPART.CanCollide = false
KILLPART.CFrame = xd0.CFrame
KILLPART.Parent = workspace
KILLPART.Color = Color3.new(0.105882, 0.164706, 0.207843)
Gas = Instance.new("Sound")
Gas.Parent = xd0
Gas.Volume = 0.8
Gas.Looped = true
Gas.SoundId = "http://www.roblox.com/asset/?id=137065982"
Gas.Pitch = 1
Gas.Name = "Sound"
ison = false
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(xd.Handle, A)
		A.Anchored = false
		A.CanCollide = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(xd)
end
function XDdd ()
	ison = true
end
function Xddd ()
	ison = false
end function lol () xdg = true Gas.Playing = true KILLPART.Parent = workspace while xdg == true do wait() KILLPART.CFrame = xd0.CFrame end end
function Posijew ()
	KILLPART.CFrame = xd0.CFrame
end function loln () KILLPART.Parent = game Gas.Playing = false xdg = false end
xdg = false
xd.Equipped:connect(XDdd)
xd.Unequipped:connect(Xddd)
xd.Equipped:connect(Finale)
xd.Equipped:connect(lol)
xd.Unequipped:connect(loln)
xd.Unequipped:connect(Finale)
Finale()
function Kill (Part)
	for i,v in pairs(Part.Parent:GetChildren()) do
		if v:IsA("Humanoid") and v.Parent.Name ~= game.Players.LocalPlayer.Name then
			v:Destroy()
	end end
end
KILLPART.Touched:connect(Kill)
if GasMask == true then
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("Part")
o6 = Instance.new("Part")
o7 = Instance.new("SpecialMesh")
o8 = Instance.new("Part")
o9 = Instance.new("Part")
o10 = Instance.new("SpecialMesh")
o11 = Instance.new("Part")
o12 = Instance.new("Part")
o13 = Instance.new("SpecialMesh")
o14 = Instance.new("Part")
o15 = Instance.new("Part")
o16 = Instance.new("Part")
o17 = Instance.new("Part")
o1.Name = "MODEL"
o2.Name = "Middle"
o2.Parent = o1
o2.BrickColor = BrickColor.new("Pastel brown")
o2.Transparency = 1
o2.Position = Vector3.new(-13.5356159, 3.71991396, 50.2649117)
o2.Rotation = Vector3.new(-5.66336393, -89.7626114, -5.66246414)
o2.Anchored = true
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(-13.5356159, 3.71991396, 50.2649117, 1.75646369e-006, 1.74156298e-007, -0.999991417, -1.04150445e-007, 1, 1.60883403e-007, 0.999999762, 9.62157287e-008, 1.6223396e-006)
o2.BottomSurface = Enum.SurfaceType.Smooth
o2.TopSurface = Enum.SurfaceType.Smooth
o2.Color = Color3.new(1, 0.8, 0.6)
o3.Parent = o2
o3.Scale = Vector3.new(6.25, 6.25, 6.25)
o3.MeshType = Enum.MeshType.FileMesh
o4.Name = "Lense 1"
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.Transparency = 0.050000011920929
o4.Position = Vector3.new(-12.900528, 3.77991295, 50.5080605)
o4.Rotation = Vector3.new(-180, 20.6807137, -179.999985)
o4.Anchored = true
o4.CanCollide = false
o4.FormFactor = Enum.FormFactor.Custom
o4.Shape = Enum.PartType.Cylinder
o4.Size = Vector3.new(0.200000003, 0.320000023, 0.939999998)
o4.CFrame = CFrame.new(-12.900528, 3.77991295, 50.5080605, -0.935553849, 3.06141374e-007, 0.353159934, 3.19927466e-007, 1, 2.01617603e-008, -0.353163034, 1.1997561e-007, -0.935561478)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Name = "Lense2"
o5.Parent = o1
o5.Material = Enum.Material.Metal
o5.Transparency = 0.050000011920929
o5.Position = Vector3.new(-12.8961124, 3.77492094, 50.0302277)
o5.Rotation = Vector3.new(-180, -23.8323021, -179.999985)
o5.Anchored = true
o5.CanCollide = false
o5.FormFactor = Enum.FormFactor.Custom
o5.Shape = Enum.PartType.Cylinder
o5.Size = Vector3.new(0.200000003, 0.330000043, 0.99000001)
o5.CFrame = CFrame.new(-12.8961124, 3.77492094, 50.0302277, -0.914722979, 2.85652249e-007, -0.404061079, 2.36339361e-007, 1, 1.37493373e-007, 0.404064298, 2.15865228e-008, -0.914730668)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Name = "Handle"
o6.Parent = o1
o6.Material = Enum.Material.Metal
o6.BrickColor = BrickColor.new("Really black")
o6.Position = Vector3.new(-12.8799381, 3.69992495, 50.2599869)
o6.Rotation = Vector3.new(-90, 9.97842108e-006, -89.9999008)
o6.Anchored = true
o6.CanCollide = false
o6.FormFactor = Enum.FormFactor.Plate
o6.Size = Vector3.new(1, 0.400000006, 1)
o6.CFrame = CFrame.new(-12.8799381, 3.69992495, 50.2599869, 1.75646369e-006, 0.999991417, 1.74156298e-007, -1.04150445e-007, -1.60883403e-007, 1, 0.999999762, -1.6223396e-006, 9.62157287e-008)
o6.BottomSurface = Enum.SurfaceType.Weld
o6.TopSurface = Enum.SurfaceType.Smooth
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Parent = o6
o7.MeshId = "http://www.roblox.com/asset/?id=5158270"
o7.Scale = Vector3.new(0.140000001, 0.170000002, 0.100000001)
o7.MeshType = Enum.MeshType.FileMesh
o8.Name = "Straps"
o8.Parent = o1
o8.Material = Enum.Material.Fabric
o8.BrickColor = BrickColor.new("Really black")
o8.Position = Vector3.new(-13.5199518, 3.48991394, 50.2599869)
o8.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, 89.9999924)
o8.Anchored = true
o8.CanCollide = false
o8.FormFactor = Enum.FormFactor.Custom
o8.Shape = Enum.PartType.Cylinder
o8.Size = Vector3.new(0.200000003, 1.49000013, 1.25999999)
o8.CFrame = CFrame.new(-13.5199518, 3.48991394, 50.2599869, 1.44325043e-007, -0.999991238, 1.75646369e-006, 0.999999881, 1.31081052e-007, -1.04150445e-007, 9.48765404e-008, 1.6242019e-006, 0.999999762)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o8.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o9.Name = "Ring2"
o9.Parent = o1
o9.BrickColor = BrickColor.new("Dark stone grey")
o9.Position = Vector3.new(-12.8061161, 3.77991295, 49.9993477)
o9.Rotation = Vector3.new(-1.48261315e-005, -66.1664276, -2.4695395e-005)
o9.Anchored = true
o9.CanCollide = false
o9.FormFactor = Enum.FormFactor.Custom
o9.Size = Vector3.new(0.600000024, 0.200000003, 1)
o9.CFrame = CFrame.new(-12.8061161, 3.77991295, 49.9993477, 0.404059976, 1.74156298e-007, -0.914723039, -1.6136562e-007, 1, 1.0455733e-007, 0.914730787, 9.62157287e-008, 0.404063195)
o9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Color = Color3.new(0.388235, 0.372549, 0.384314)
o10.Parent = o9
o10.MeshId = "http://www.roblox.com/asset/?id=3270017"
o10.Scale = Vector3.new(0.340000004, 0.300000012, 0.300000012)
o10.MeshType = Enum.MeshType.FileMesh
o11.Name = "Straps"
o11.Parent = o1
o11.Material = Enum.Material.Fabric
o11.BrickColor = BrickColor.new("Really black")
o11.Position = Vector3.new(-13.5199518, 4.00991392, 50.2599869)
o11.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, 89.9999924)
o11.Anchored = true
o11.CanCollide = false
o11.FormFactor = Enum.FormFactor.Custom
o11.Shape = Enum.PartType.Cylinder
o11.Size = Vector3.new(0.200000003, 1.49000013, 1.25999999)
o11.CFrame = CFrame.new(-13.5199518, 4.00991392, 50.2599869, 1.44325043e-007, -0.999991238, 1.75646369e-006, 0.999999881, 1.31081052e-007, -1.04150445e-007, 9.48765404e-008, 1.6242019e-006, 0.999999762)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o12.Name = "Ring1"
o12.Parent = o1
o12.BrickColor = BrickColor.new("Dark stone grey")
o12.Position = Vector3.new(-12.7999144, 3.76992106, 50.5299988)
o12.Rotation = Vector3.new(-179.999969, -69.3177338, -179.999985)
o12.Anchored = true
o12.CanCollide = false
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.600000024, 0.200000003, 1)
o12.CFrame = CFrame.new(-12.7999144, 3.76992106, 50.5299988, -0.353160918, 1.74156298e-007, -0.935553372, -4.22077129e-008, 1, 1.87534141e-007, 0.935561061, 9.62157287e-008, -0.353164017)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.388235, 0.372549, 0.384314)
o13.Parent = o12
o13.MeshId = "http://www.roblox.com/asset/?id=3270017"
o13.Scale = Vector3.new(0.340000004, 0.300000012, 0.300000012)
o13.MeshType = Enum.MeshType.FileMesh
o14.Name = "Breather"
o14.Parent = o1
o14.Material = Enum.Material.Metal
o14.BrickColor = BrickColor.new("Really black")
o14.Position = Vector3.new(-12.7419596, 3.69627094, 50.2550011)
o14.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, -39.5510521)
o14.Anchored = true
o14.CanCollide = false
o14.FormFactor = Enum.FormFactor.Custom
o14.Shape = Enum.PartType.Cylinder
o14.Size = Vector3.new(0.600000024, 0.340000093, 0.25000003)
o14.CFrame = CFrame.new(-12.7419596, 3.69627094, 50.2550011, 0.771050453, 0.636759639, 1.75646369e-006, -0.636765182, 0.771057129, -1.04150445e-007, -1.31184265e-006, -9.5997575e-007, 0.999999762)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Name = "Breather"
o15.Parent = o1
o15.Material = Enum.Material.Metal
o15.BrickColor = BrickColor.new("Really black")
o15.Position = Vector3.new(-12.5337915, 3.51434994, 50.2550011)
o15.Rotation = Vector3.new(5.96738209e-006, 0.000100637961, -39.5510521)
o15.Anchored = true
o15.CanCollide = false
o15.FormFactor = Enum.FormFactor.Custom
o15.Shape = Enum.PartType.Cylinder
o15.Size = Vector3.new(0.200000003, 0.340000093, 0.350000024)
o15.CFrame = CFrame.new(-12.5337915, 3.51434994, 50.2550011, 0.771050453, 0.636759639, 1.75646369e-006, -0.636765182, 0.771057129, -1.04150445e-007, -1.31184265e-006, -9.5997575e-007, 0.999999762)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o16.Name = "Breather"
o16.Parent = o1
o16.Material = Enum.Material.Metal
o16.BrickColor = BrickColor.new("Really black")
o16.Position = Vector3.new(-12.7920103, 3.39220095, 49.784256)
o16.Rotation = Vector3.new(10.8745985, 48.2677155, -21.6106548)
o16.Anchored = true
o16.CanCollide = false
o16.FormFactor = Enum.FormFactor.Custom
o16.Shape = Enum.PartType.Cylinder
o16.Size = Vector3.new(0.230000019, 0.540000081, 0.75)
o16.CFrame = CFrame.new(-12.7920103, 3.39220095, 49.784256, 0.618847609, 0.24515225, 0.746263206, -0.230788618, 0.96486491, -0.125580132, -0.75083673, -0.0945150182, 0.653688967)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Name = "Breather"
o17.Parent = o1
o17.Material = Enum.Material.Metal
o17.BrickColor = BrickColor.new("Really black")
o17.Position = Vector3.new(-12.8723783, 3.42192006, 49.8816109)
o17.Rotation = Vector3.new(10.8745985, 48.2677155, -21.6106548)
o17.Anchored = true
o17.CanCollide = false
o17.FormFactor = Enum.FormFactor.Custom
o17.Shape = Enum.PartType.Cylinder
o17.Size = Vector3.new(0.370000005, 0.540000081, 0.310000002)
o17.CFrame = CFrame.new(-12.8723783, 3.42192006, 49.8816109, 0.618847609, 0.24515225, 0.746263206, -0.230788618, 0.96486491, -0.125580132, -0.75083673, -0.0945150182, 0.653688967)
o17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
function onTouched(hit)
	local d = hit.Parent:GetChildren()
	for i=1, #d do 
		if (d[i].className == "Hat") then 
			d[i]:remove() 
		end 
	end	
	if hit.Parent:findFirstChild("Humanoid") ~= nil and hit.Parent:findFirstChild("Face") == nil then
		local g = o1:clone()
		g.Parent = hit.Parent
		local C = g:GetChildren()
		for i=1, #C do
			if C[i].className == "Part" then
				local W = Instance.new("Weld")
				W.Part0 = g.Middle
				W.Part1 = C[i]
				local CJ = CFrame.new(g.Middle.Position)
				local C0 = g.Middle.CFrame:inverse()*CJ
				local C1 = C[i].CFrame:inverse()*CJ
				W.C0 = C0
				W.C1 = C1
				W.Parent = g.Middle
				g.Middle.Transparency = 1
			end
				local Y = Instance.new("Weld")
				Y.Part0 = hit.Parent.Head
				Y.Part1 = g.Middle
				Y.C0 = CFrame.new(0, 0, 0)
				Y.Parent = Y.Part0
		end

		local h = g:GetChildren()
		for i = 1, # h do
			h[i].Anchored = false
			h[i].CanCollide = false
		end
		
	end
end

onTouched(game.Players.LocalPlayer.Character.Head)
end
end)

VanDaPlayer.MouseButton1Click:connect(function()
--CLOWN VAN BY DMS
--its bad
--first the victim gets kidnapped in a van
--then they get r3ped
--then the get killed
--then the body is dumped on the street

Victim = Username.Text
o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("CylinderMesh")
o4 = Instance.new("Part")
o5 = Instance.new("SpecialMesh")
o6 = Instance.new("Part")
o7 = Instance.new("SpecialMesh")
o8 = Instance.new("Part")
o9 = Instance.new("BlockMesh")
o10 = Instance.new("Part")
o11 = Instance.new("BlockMesh")
o12 = Instance.new("Part")
o13 = Instance.new("Part")
o14 = Instance.new("BlockMesh")
o15 = Instance.new("Part")
o16 = Instance.new("SpecialMesh")
o17 = Instance.new("Part")
o18 = Instance.new("SpecialMesh")
o19 = Instance.new("Part")
o20 = Instance.new("SpecialMesh")
o21 = Instance.new("Sound")
o22 = Instance.new("Part")
o23 = Instance.new("BlockMesh")
o24 = Instance.new("Part")
o25 = Instance.new("SpecialMesh")
o26 = Instance.new("Part")
o27 = Instance.new("BlockMesh")
o28 = Instance.new("Part")
o29 = Instance.new("SpecialMesh")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("Part")
o33 = Instance.new("BlockMesh")
o34 = Instance.new("Part")
o35 = Instance.new("BlockMesh")
o36 = Instance.new("Part")
o37 = Instance.new("BlockMesh")
o38 = Instance.new("Part")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("Part")
o42 = Instance.new("BlockMesh")
o43 = Instance.new("Part")
o44 = Instance.new("BlockMesh")
o45 = Instance.new("Part")
o46 = Instance.new("SpecialMesh")
o47 = Instance.new("Part")
o48 = Instance.new("BlockMesh")
o49 = Instance.new("Part")
o50 = Instance.new("BlockMesh")
o51 = Instance.new("Part")
o52 = Instance.new("BlockMesh")
o53 = Instance.new("Part")
o54 = Instance.new("SpecialMesh")
o55 = Instance.new("Part")
o56 = Instance.new("SpecialMesh")
o57 = Instance.new("Part")
o58 = Instance.new("BlockMesh")
o59 = Instance.new("Part")
o60 = Instance.new("BlockMesh")
o61 = Instance.new("Part")
o62 = Instance.new("BlockMesh")
o63 = Instance.new("Part")
o64 = Instance.new("Part")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Part")
o68 = Instance.new("BlockMesh")
o69 = Instance.new("Part")
o70 = Instance.new("BlockMesh")
o71 = Instance.new("Part")
o72 = Instance.new("BlockMesh")
o73 = Instance.new("Part")
o74 = Instance.new("SpecialMesh")
o75 = Instance.new("Decal")
o76 = Instance.new("Part")
o77 = Instance.new("Part")
o78 = Instance.new("BlockMesh")
o79 = Instance.new("Part")
o80 = Instance.new("SpecialMesh")
o81 = Instance.new("Decal")
o82 = Instance.new("Part")
o83 = Instance.new("SpecialMesh")
o84 = Instance.new("Humanoid")
o85 = Instance.new("Part")
o86 = Instance.new("Part")
o87 = Instance.new("Part")
o88 = Instance.new("Decal")
o89 = Instance.new("Motor6D")
o90 = Instance.new("Motor6D")
o91 = Instance.new("Motor6D")
o92 = Instance.new("Motor6D")
o93 = Instance.new("Motor6D")
o94 = Instance.new("Part")
o95 = Instance.new("Part")
o96 = Instance.new("Part")
o97 = Instance.new("Part")
o98 = Instance.new("Part")
o99 = Instance.new("Decal")
o100 = Instance.new("Motor6D")
o101 = Instance.new("Motor6D")
o102 = Instance.new("Motor6D")
o103 = Instance.new("Part")
o104 = Instance.new("Part")
o105 = Instance.new("Part")
o106 = Instance.new("Part")
o107 = Instance.new("Part")
o108 = Instance.new("CylinderMesh")
o109 = Instance.new("Part")
o110 = Instance.new("CylinderMesh")
o111 = Instance.new("Part")
o112 = Instance.new("CylinderMesh")
o113 = Instance.new("Part")
o114 = Instance.new("CylinderMesh")
o115 = Instance.new("Part")
o116 = Instance.new("CylinderMesh")
o117 = Instance.new("Part")
o118 = Instance.new("CylinderMesh")
o119 = Instance.new("Part")
o120 = Instance.new("CylinderMesh")
o121 = Instance.new("Part")
o122 = Instance.new("SpecialMesh")
o123 = Instance.new("Part")
o124 = Instance.new("Decal")
o1.Name = " "
o1.Parent = workspace
o2.Parent = o1
o2.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
o2.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o2.Anchored = true
o2.FormFactor = Enum.FormFactor.Symmetric
o2.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o2.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o3.Parent = o2
o4.Parent = o1
o4.BrickColor = BrickColor.new("Institutional white")
o4.Position = Vector3.new(96.3181839, 7.00000668, 9.31151104)
o4.Rotation = Vector3.new(90, 89.9314728, -90)
o4.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o4.Velocity = Vector3.new(-0.000346515269, 0.00201798417, -0.00195027643)
o4.Anchored = true
o4.FormFactor = Enum.FormFactor.Plate
o4.Size = Vector3.new(1, 2.4000001, 2)
o4.CFrame = CFrame.new(96.3181839, 7.00000668, 9.31151104, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
o4.BackSurface = Enum.SurfaceType.Weld
o4.BottomSurface = Enum.SurfaceType.Weld
o4.LeftSurface = Enum.SurfaceType.Weld
o4.TopSurface = Enum.SurfaceType.Weld
o4.Color = Color3.new(0.972549, 0.972549, 0.972549)
o5.Parent = o4
o5.MeshType = Enum.MeshType.Wedge
o6.Parent = o1
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Really black")
o6.Transparency = 0.5
o6.Position = Vector3.new(96.3181839, 7.00000668, 13.8115101)
o6.Rotation = Vector3.new(90, 89.9440536, -90)
o6.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o6.Velocity = Vector3.new(0.000965324172, 0.00135755131, -0.00195027643)
o6.Anchored = true
o6.FormFactor = Enum.FormFactor.Plate
o6.Size = Vector3.new(8, 2.4000001, 1.99999976)
o6.CFrame = CFrame.new(96.3181839, 7.00000668, 13.8115101, 0, 3.96315798e-008, 0.999999523, 0, 1, -3.97370599e-008, -1, 0, 0)
o6.BackSurface = Enum.SurfaceType.Weld
o6.BottomSurface = Enum.SurfaceType.Weld
o6.LeftSurface = Enum.SurfaceType.Weld
o6.RightSurface = Enum.SurfaceType.Weld
o6.TopSurface = Enum.SurfaceType.Weld
o6.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o7.Parent = o6
o7.MeshType = Enum.MeshType.Wedge
o8.Parent = o1
o8.BrickColor = BrickColor.new("Br. yellowish orange")
o8.Position = Vector3.new(92.2182083, 4.00000715, 9.61151409)
o8.Rotation = Vector3.new(-0, 0, -2.26619136e-006)
o8.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o8.Velocity = Vector3.new(-0.000475873821, 0.00227026758, -0.00119533995)
o8.Anchored = true
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
o8.CFrame = CFrame.new(92.2182083, 4.00000715, 9.61151409, 0.999998808, 3.95524538e-008, 0, -3.98161575e-008, 1, 0, 0, 0, 1)
o8.BackSurface = Enum.SurfaceType.Weld
o8.BottomSurface = Enum.SurfaceType.Weld
o8.FrontSurface = Enum.SurfaceType.Weld
o8.LeftSurface = Enum.SurfaceType.Weld
o8.RightSurface = Enum.SurfaceType.Weld
o8.TopSurface = Enum.SurfaceType.Weld
o8.Color = Color3.new(0.886275, 0.607843, 0.25098)
o9.Parent = o8
o10.Parent = o1
o10.BrickColor = BrickColor.new("Institutional white")
o10.Position = Vector3.new(105.317894, 8.40004158, 9.31151295)
o10.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
o10.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o10.Velocity = Vector3.new(-0.000245332019, 0.00136755884, -0.00436839834)
o10.Anchored = true
o10.CanCollide = false
game.Players[Victim].Character.Humanoid.WalkSpeed = 0
game.Players[Victim].Character.Humanoid.JumpPower = 0
o10.FormFactor = Enum.FormFactor.Plate
o10.Size = Vector3.new(14, 0.400000006, 1)
o10.CFrame = CFrame.new(105.317894, 8.40004158, 9.31151295, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
o10.BackSurface = Enum.SurfaceType.Weld
o10.BottomSurface = Enum.SurfaceType.Weld
o10.FrontSurface = Enum.SurfaceType.Weld
o10.LeftSurface = Enum.SurfaceType.Weld
o10.RightSurface = Enum.SurfaceType.Weld
o10.TopSurface = Enum.SurfaceType.Weld
o10.Color = Color3.new(0.972549, 0.972549, 0.972549)
o11.Parent = o10
o12.Name = "DOOR"
o12.Parent = o1
o12.BrickColor = BrickColor.new("Institutional white")
o12.Position = Vector3.new(103.708466, 5.81500626, 9.31151104)
o12.Rotation = Vector3.new(-0, 0, -4.43210411e-006)
o12.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o12.Velocity = Vector3.new(-0.000432157307, 0.00148387556, -0.00427860441)
o12.Anchored = true
o12.CanCollide = false
o12.FormFactor = Enum.FormFactor.Plate
o12.Size = Vector3.new(5.22000027, 4.82999992, 1)
o12.CFrame = CFrame.new(103.708466, 5.81500626, 9.31151104, 1, 7.73548052e-008, 0, -7.73548052e-008, 1, 0, 0, 0, 1)
o12.BottomSurface = Enum.SurfaceType.Weld
o12.LeftSurface = Enum.SurfaceType.Weld
o12.RightSurface = Enum.SurfaceType.Weld
o12.TopSurface = Enum.SurfaceType.Weld
o12.Color = Color3.new(0.972549, 0.972549, 0.972549)
o13.Parent = o1
o13.BrickColor = BrickColor.new("White")
o13.Position = Vector3.new(109.818169, 5.80000877, 9.31151104)
o13.Rotation = Vector3.new(-0, 0, -2.25410599e-006)
o13.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o13.Velocity = Vector3.new(-0.00043324125, 0.00104231632, -0.006061906)
o13.Anchored = true
o13.FormFactor = Enum.FormFactor.Plate
o13.Size = Vector3.new(7, 4.80000019, 1)
o13.CFrame = CFrame.new(109.818169, 5.80000877, 9.31151104, 0.999996901, 3.9341451e-008, 0, -4.00270856e-008, 1, 0, 0, 0, 1)
o13.BackSurface = Enum.SurfaceType.Weld
o13.BottomSurface = Enum.SurfaceType.Weld
o13.FrontSurface = Enum.SurfaceType.Weld
o13.LeftSurface = Enum.SurfaceType.Weld
o13.RightSurface = Enum.SurfaceType.Weld
o13.TopSurface = Enum.SurfaceType.Weld
o13.Color = Color3.new(0.94902, 0.952941, 0.952941)
o14.Parent = o13
o15.Parent = o1
o15.BrickColor = BrickColor.new("Institutional white")
o15.Position = Vector3.new(97.817894, 8.40000725, 13.8115139)
o15.Rotation = Vector3.new(90, 89.960434, -90)
o15.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o15.Velocity = Vector3.new(0.00106650498, 0.00124916411, -0.00218200427)
o15.Anchored = true
o15.CanCollide = false
o15.FormFactor = Enum.FormFactor.Plate
o15.Size = Vector3.new(10, 0.400000006, 1)
o15.CFrame = CFrame.new(97.817894, 8.40000725, 13.8115139, 0, 3.86294303e-008, 0.999999762, 0, 1, -3.86821704e-008, -1, 0, 0)
o15.BackSurface = Enum.SurfaceType.Weld
o15.BottomSurface = Enum.SurfaceType.Weld
o15.TopSurface = Enum.SurfaceType.Weld
o15.Color = Color3.new(0.972549, 0.972549, 0.972549)
o16.Parent = o15
o16.MeshType = Enum.MeshType.Wedge
o17.Parent = o1
o17.BrickColor = BrickColor.new("Institutional white")
o17.Position = Vector3.new(96.3181839, 7.00000668, 18.3115101)
o17.Rotation = Vector3.new(90, 89.9314728, -90)
o17.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o17.Velocity = Vector3.new(0.00227716356, 0.000697118347, -0.00195027643)
o17.Anchored = true
o17.FormFactor = Enum.FormFactor.Plate
o17.Size = Vector3.new(1, 2.4000001, 2)
o17.CFrame = CFrame.new(96.3181839, 7.00000668, 18.3115101, 0, 3.96052044e-008, 0.999999285, 0, 1, -3.97634246e-008, -1, 0, 0)
o17.BackSurface = Enum.SurfaceType.Weld
o17.BottomSurface = Enum.SurfaceType.Weld
o17.RightSurface = Enum.SurfaceType.Weld
o17.TopSurface = Enum.SurfaceType.Weld
o17.Color = Color3.new(0.972549, 0.972549, 0.972549)
o18.Parent = o17
o18.MeshType = Enum.MeshType.Wedge
o19.Parent = o1
o19.BrickColor = BrickColor.new("Institutional white")
o19.Position = Vector3.new(93.8181839, 5.20000744, 13.8115101)
o19.Rotation = Vector3.new(90, 89.8573456, -90)
o19.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o19.Velocity = Vector3.new(0.000835234998, 0.00153823046, -0.00148565089)
o19.Anchored = true
o19.FormFactor = Enum.FormFactor.Plate
o19.Size = Vector3.new(10, 1.20000005, 3)
o19.CFrame = CFrame.new(93.8181839, 5.20000744, 13.8115101, 0, 3.77325726e-008, 0.999996901, 0, 1, -3.84182002e-008, -1, 0, 0)
o19.BackSurface = Enum.SurfaceType.Weld
o19.BottomSurface = Enum.SurfaceType.Weld
o19.TopSurface = Enum.SurfaceType.Weld
o19.Color = Color3.new(0.972549, 0.972549, 0.972549)
o20.Parent = o19
o20.MeshType = Enum.MeshType.Wedge
o21.Parent = o19
o21.SoundId = "rbxassetid://532147820"
o21.Looped = true
o22.Parent = o1
o22.BrickColor = BrickColor.new("Institutional white")
o22.Position = Vector3.new(96.3182907, 4.60000753, 9.31151104)
o22.Rotation = Vector3.new(-0, 0, -2.23446773e-006)
o22.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o22.Velocity = Vector3.new(-0.000519967522, 0.00201797695, -0.00230253674)
o22.Anchored = true
o22.FormFactor = Enum.FormFactor.Plate
o22.Size = Vector3.new(2, 2.4000001, 1)
o22.CFrame = CFrame.new(96.3182907, 4.60000753, 9.31151104, 0.999993801, 3.8998575e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
o22.BackSurface = Enum.SurfaceType.Weld
o22.BottomSurface = Enum.SurfaceType.Weld
o22.FrontSurface = Enum.SurfaceType.Weld
o22.LeftSurface = Enum.SurfaceType.Weld
o22.RightSurface = Enum.SurfaceType.Weld
o22.TopSurface = Enum.SurfaceType.Weld
o22.Color = Color3.new(0.972549, 0.972549, 0.972549)
o23.Parent = o22
o24.Parent = o1
o24.BrickColor = BrickColor.new("Institutional white")
o24.Position = Vector3.new(113.817245, 6.80000734, 18.3115101)
o24.Rotation = Vector3.new(-0, -90, 0)
o24.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o24.Velocity = Vector3.new(0.00226270943, -0.000567569688, -0.00708095264)
o24.Anchored = true
o24.FormFactor = Enum.FormFactor.Plate
o24.Size = Vector3.new(1, 2.79999995, 1)
o24.CFrame = CFrame.new(113.817245, 6.80000734, 18.3115101, 0, 5.54578605e-008, -1, 0, 1, 5.54578605e-008, 1, 0, 0)
o24.BackSurface = Enum.SurfaceType.Weld
o24.BottomSurface = Enum.SurfaceType.Weld
o24.TopSurface = Enum.SurfaceType.Weld
o24.Color = Color3.new(0.972549, 0.972549, 0.972549)
o25.Parent = o24
o25.MeshType = Enum.MeshType.Wedge
o26.Parent = o1
o26.BrickColor = BrickColor.new("Institutional white")
o26.Position = Vector3.new(93.0181885, 2.60000825, 13.8115101)
o26.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o26.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o26.Velocity = Vector3.new(0.000647328445, 0.00159604801, -0.00163401756)
o26.Anchored = true
o26.FormFactor = Enum.FormFactor.Plate
o26.Size = Vector3.new(1.39999998, 1.60000002, 10)
o26.CFrame = CFrame.new(93.0181885, 2.60000825, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o26.BackSurface = Enum.SurfaceType.Weld
o26.BottomSurface = Enum.SurfaceType.Weld
o26.FrontSurface = Enum.SurfaceType.Weld
o26.LeftSurface = Enum.SurfaceType.Weld
o26.RightSurface = Enum.SurfaceType.Weld
o26.TopSurface = Enum.SurfaceType.Weld
o26.Color = Color3.new(0.972549, 0.972549, 0.972549)
o27.Parent = o26
o28.Parent = o1
o28.BrickColor = BrickColor.new("Institutional white")
o28.Position = Vector3.new(113.818176, 6.80000877, 9.31151104)
o28.Rotation = Vector3.new(-90, -89.7982635, -90)
o28.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o28.Velocity = Vector3.new(-0.000360969483, 0.000753228669, -0.00708122458)
o28.Anchored = true
o28.FormFactor = Enum.FormFactor.Plate
o28.Size = Vector3.new(1, 2.79999995, 1)
o28.CFrame = CFrame.new(113.818176, 6.80000877, 9.31151104, 0, 3.89985715e-008, -0.999993801, 0, 1, 4.03698408e-008, 1, 0, 0)
o28.BackSurface = Enum.SurfaceType.Weld
o28.BottomSurface = Enum.SurfaceType.Weld
o28.TopSurface = Enum.SurfaceType.Weld
o28.Color = Color3.new(0.972549, 0.972549, 0.972549)
o29.Parent = o28
o29.MeshType = Enum.MeshType.Wedge
o30.Parent = o1
o30.BrickColor = BrickColor.new("Institutional white")
o30.Position = Vector3.new(96.3181992, 4.60000753, 18.3115101)
o30.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
o30.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o30.Velocity = Vector3.new(0.00210371148, 0.000697117415, -0.0023025109)
o30.Anchored = true
o30.FormFactor = Enum.FormFactor.Plate
o30.Size = Vector3.new(2, 2.4000001, 1)
o30.CFrame = CFrame.new(96.3181992, 4.60000753, 18.3115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
o30.BackSurface = Enum.SurfaceType.Weld
o30.BottomSurface = Enum.SurfaceType.Weld
o30.FrontSurface = Enum.SurfaceType.Weld
o30.LeftSurface = Enum.SurfaceType.Weld
o30.RightSurface = Enum.SurfaceType.Weld
o30.TopSurface = Enum.SurfaceType.Weld
o30.Color = Color3.new(0.972549, 0.972549, 0.972549)
o31.Parent = o30
o32.Parent = o1
o32.BrickColor = BrickColor.new("Dark stone grey")
o32.Position = Vector3.new(95.8181839, 4.60000753, 13.8115101)
o32.Rotation = Vector3.new(90, 89.960434, -90)
o32.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o32.Velocity = Vector3.new(0.000791871978, 0.00139368721, -0.00215674727)
o32.Anchored = true
o32.FormFactor = Enum.FormFactor.Plate
o32.Size = Vector3.new(8, 2.4000001, 1)
o32.CFrame = CFrame.new(95.8181839, 4.60000753, 13.8115101, 0, 3.96579551e-008, 0.999999762, 0, 1, -3.97106952e-008, -1, 0, 0)
o32.BottomSurface = Enum.SurfaceType.Weld
o32.TopSurface = Enum.SurfaceType.Weld
o32.Color = Color3.new(0.388235, 0.372549, 0.384314)
o33.Parent = o32
o33.Offset = Vector3.new(0, 0, 0.5)
o33.Scale = Vector3.new(1, 1, 2)
o34.Parent = o1
o34.BrickColor = BrickColor.new("Institutional white")
o34.Position = Vector3.new(93.8181992, 4.00000715, 13.8115101)
o34.Rotation = Vector3.new(-0, 0, -2.26770203e-006)
o34.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o34.Velocity = Vector3.new(0.000748508843, 0.00153822941, -0.00166177051)
o34.Anchored = true
o34.FormFactor = Enum.FormFactor.Plate
o34.Size = Vector3.new(3, 1.20000005, 10)
o34.CFrame = CFrame.new(93.8181992, 4.00000715, 13.8115101, 0.999999046, 3.95788291e-008, 0, -3.97897928e-008, 1, 0, 0, 0, 1)
o34.BackSurface = Enum.SurfaceType.Weld
o34.BottomSurface = Enum.SurfaceType.Weld
o34.FrontSurface = Enum.SurfaceType.Weld
o34.LeftSurface = Enum.SurfaceType.Weld
o34.RightSurface = Enum.SurfaceType.Weld
o34.TopSurface = Enum.SurfaceType.Weld
o34.Color = Color3.new(0.972549, 0.972549, 0.972549)
o35.Parent = o34
o36.Parent = o1
o36.BrickColor = BrickColor.new("Br. yellowish orange")
o36.Position = Vector3.new(92.2181854, 4.00000715, 18.211504)
o36.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
o36.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o36.Velocity = Vector3.new(0.00203119451, 0.00100810977, -0.00119533355)
o36.Anchored = true
o36.FormFactor = Enum.FormFactor.Custom
o36.Size = Vector3.new(0.200000003, 0.800000012, 0.799999714)
o36.CFrame = CFrame.new(92.2181854, 4.00000715, 18.211504, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
o36.BackSurface = Enum.SurfaceType.Weld
o36.BottomSurface = Enum.SurfaceType.Weld
o36.FrontSurface = Enum.SurfaceType.Weld
o36.LeftSurface = Enum.SurfaceType.Weld
o36.RightSurface = Enum.SurfaceType.Weld
o36.TopSurface = Enum.SurfaceType.Weld
o36.Color = Color3.new(0.886275, 0.607843, 0.25098)
o37.Parent = o36
o38.Parent = o1
o38.BrickColor = BrickColor.new("Institutional white")
o38.Position = Vector3.new(99.0602112, 4.60000706, 18.3115101)
o38.Rotation = Vector3.new(-0, 0, -4.84935117e-006)
o38.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o38.Velocity = Vector3.new(0.00210371148, 0.000498947338, -0.0031018618)
o38.Anchored = true
o38.CanCollide = false
o38.FormFactor = Enum.FormFactor.Plate
o38.Size = Vector3.new(3.48000026, 2.4000001, 1)
o38.CFrame = CFrame.new(99.0602112, 4.60000706, 18.3115101, 1, 8.46371435e-008, 0, -8.46371435e-008, 1, 0, 0, 0, 1)
o38.BottomSurface = Enum.SurfaceType.Weld
o38.LeftSurface = Enum.SurfaceType.Weld
o38.RightSurface = Enum.SurfaceType.Weld
o38.TopSurface = Enum.SurfaceType.Weld
o38.Color = Color3.new(0.972549, 0.972549, 0.972549)
o39.Parent = o1
o39.BrickColor = BrickColor.new("Really red")
o39.Position = Vector3.new(113.818176, 4.80000877, 9.31151104)
o39.Rotation = Vector3.new(-0, 0, -2.2344675e-006)
o39.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o39.Velocity = Vector3.new(-0.000505513046, 0.000753228669, -0.00737475045)
o39.Anchored = true
o39.FormFactor = Enum.FormFactor.Plate
o39.Size = Vector3.new(1, 1.20000005, 1)
o39.CFrame = CFrame.new(113.818176, 4.80000877, 9.31151104, 0.999993801, 3.89985715e-008, 0, -4.03698408e-008, 1, 0, 0, 0, 1)
o39.BackSurface = Enum.SurfaceType.Weld
o39.BottomSurface = Enum.SurfaceType.Weld
o39.FrontSurface = Enum.SurfaceType.Weld
o39.LeftSurface = Enum.SurfaceType.Weld
o39.RightSurface = Enum.SurfaceType.Weld
o39.TopSurface = Enum.SurfaceType.Weld
o39.Color = Color3.new(1, 0, 0)
o40.Parent = o39
o41.Parent = o1
o41.BrickColor = BrickColor.new("Institutional white")
o41.Position = Vector3.new(113.818054, 3.80000734, 9.31151104)
o41.Rotation = Vector3.new(-0, 0, -2.23295706e-006)
o41.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o41.Velocity = Vector3.new(-0.000577784958, 0.000753237749, -0.00752147706)
o41.Anchored = true
o41.FormFactor = Enum.FormFactor.Plate
o41.Size = Vector3.new(1, 0.800000012, 1)
o41.CFrame = CFrame.new(113.818054, 3.80000734, 9.31151104, 0.999993563, 3.89721997e-008, 0, -4.03962055e-008, 1, 0, 0, 0, 1)
o41.BackSurface = Enum.SurfaceType.Weld
o41.BottomSurface = Enum.SurfaceType.Weld
o41.FrontSurface = Enum.SurfaceType.Weld
o41.LeftSurface = Enum.SurfaceType.Weld
o41.RightSurface = Enum.SurfaceType.Weld
o41.TopSurface = Enum.SurfaceType.Weld
o41.Color = Color3.new(0.972549, 0.972549, 0.972549)
o42.Parent = o41
o43.Parent = o1
o43.BrickColor = BrickColor.new("Institutional white")
o43.Position = Vector3.new(105.317894, 8.40000725, 13.8115139)
o43.Rotation = Vector3.new(-0, 0, -2.21481446e-006)
o43.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o43.Velocity = Vector3.new(0.00106650498, 0.000707125873, -0.00436840346)
o43.Anchored = true
o43.CanCollide = false
o43.FormFactor = Enum.FormFactor.Plate
o43.Size = Vector3.new(14, 0.400000006, 8)
o43.CFrame = CFrame.new(105.317894, 8.40000725, 13.8115139, 1, 3.86558057e-008, 0, -3.86558057e-008, 1, 0, 0, 0, 1)
o43.BackSurface = Enum.SurfaceType.Weld
o43.BottomSurface = Enum.SurfaceType.Weld
o43.FrontSurface = Enum.SurfaceType.Weld
o43.LeftSurface = Enum.SurfaceType.Weld
o43.RightSurface = Enum.SurfaceType.Weld
o43.TopSurface = Enum.SurfaceType.Weld
o43.Color = Color3.new(0.972549, 0.972549, 0.972549)
o44.Parent = o43
o45.Parent = o1
o45.BrickColor = BrickColor.new("Really black")
o45.Position = Vector3.new(113.818176, 6.80000782, 11.311511)
o45.Rotation = Vector3.new(-90, -89.9314728, -90)
o45.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o45.Velocity = Vector3.new(0.000222070201, 0.000459702482, -0.00708122645)
o45.Anchored = true
o45.CanCollide = false
o45.FormFactor = Enum.FormFactor.Plate
o45.Size = Vector3.new(3, 2.79999995, 1)
o45.CFrame = CFrame.new(113.818176, 6.80000782, 11.311511, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
o45.BackSurface = Enum.SurfaceType.Weld
o45.BottomSurface = Enum.SurfaceType.Weld
o45.TopSurface = Enum.SurfaceType.Weld
o45.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o46.Parent = o45
o46.MeshType = Enum.MeshType.Wedge
o47.Parent = o1
o47.BrickColor = BrickColor.new("Institutional white")
o47.Position = Vector3.new(103.118179, 2.40000772, 13.8115101)
o47.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o47.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o47.Velocity = Vector3.new(0.000632874086, 0.000866103393, -0.0046077203)
o47.Anchored = true
o47.FormFactor = Enum.FormFactor.Plate
o47.Size = Vector3.new(12.3999996, 1.20000005, 10)
o47.CFrame = CFrame.new(103.118179, 2.40000772, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o47.BackSurface = Enum.SurfaceType.Weld
o47.BottomSurface = Enum.SurfaceType.Weld
o47.FrontSurface = Enum.SurfaceType.Weld
o47.LeftSurface = Enum.SurfaceType.Weld
o47.RightSurface = Enum.SurfaceType.Weld
o47.TopSurface = Enum.SurfaceType.Weld
o47.Color = Color3.new(0.972549, 0.972549, 0.972549)
o48.Parent = o47
o49.Parent = o1
o49.BrickColor = BrickColor.new("White")
o49.Position = Vector3.new(104.018181, 3.20000815, 13.8115101)
o49.Rotation = Vector3.new(-0, 0, -2.27374471e-006)
o49.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o49.Velocity = Vector3.new(0.000690691522, 0.000801058719, -0.00475267787)
o49.Anchored = true
o49.FormFactor = Enum.FormFactor.Plate
o49.Size = Vector3.new(20.6000004, 0.400000006, 10)
o49.CFrame = CFrame.new(104.018181, 3.20000815, 13.8115101, 1, 3.96843305e-008, 0, -3.96843305e-008, 1, 0, 0, 0, 1)
o49.BackSurface = Enum.SurfaceType.Weld
o49.BottomSurface = Enum.SurfaceType.Weld
o49.FrontSurface = Enum.SurfaceType.Weld
o49.LeftSurface = Enum.SurfaceType.Weld
o49.RightSurface = Enum.SurfaceType.Weld
o49.TopSurface = Enum.SurfaceType.Weld
o49.Color = Color3.new(0.94902, 0.952941, 0.952941)
o50.Parent = o49
o51.Parent = o1
o51.BrickColor = BrickColor.new("Institutional white")
o51.Position = Vector3.new(107.167747, 5.80000782, 18.3115101)
o51.Rotation = Vector3.new(-0, 0, -3.14727777e-006)
o51.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o51.Velocity = Vector3.new(0.00219043763, -8.69987416e-005, -0.00528925471)
o51.Anchored = true
o51.FormFactor = Enum.FormFactor.Plate
o51.Size = Vector3.new(12.3000002, 4.80000019, 1)
o51.CFrame = CFrame.new(107.167747, 5.80000782, 18.3115101, 1, 5.49303607e-008, 0, -5.49303607e-008, 1, 0, 0, 0, 1)
o51.BackSurface = Enum.SurfaceType.Weld
o51.BottomSurface = Enum.SurfaceType.Weld
o51.FrontSurface = Enum.SurfaceType.Weld
o51.LeftSurface = Enum.SurfaceType.Weld
o51.RightSurface = Enum.SurfaceType.Weld
o51.TopSurface = Enum.SurfaceType.Weld
o51.Color = Color3.new(0.972549, 0.972549, 0.972549)
o52.Parent = o51
o53.Parent = o1
o53.BrickColor = BrickColor.new("Institutional white")
o53.Position = Vector3.new(113.818176, 6.80000782, 13.8115101)
o53.Rotation = Vector3.new(-90, -89.9314728, -90)
o53.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o53.Velocity = Vector3.new(0.000950869871, 9.27953006e-005, -0.00708122645)
o53.Anchored = true
o53.CanCollide = false
o53.FormFactor = Enum.FormFactor.Plate
o53.Size = Vector3.new(2, 2.79999995, 1)
o53.CFrame = CFrame.new(113.818176, 6.80000782, 13.8115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
o53.BackSurface = Enum.SurfaceType.Weld
o53.BottomSurface = Enum.SurfaceType.Weld
o53.TopSurface = Enum.SurfaceType.Weld
o53.Color = Color3.new(0.972549, 0.972549, 0.972549)
o54.Parent = o53
o54.MeshType = Enum.MeshType.Wedge
o55.Parent = o1
o55.BrickColor = BrickColor.new("Really black")
o55.Position = Vector3.new(113.818176, 6.80000782, 16.3115101)
o55.Rotation = Vector3.new(-90, -89.9314728, -90)
o55.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o55.Velocity = Vector3.new(0.0016796696, -0.000274111895, -0.00708122645)
o55.Anchored = true
o55.CanCollide = false
o55.FormFactor = Enum.FormFactor.Plate
o55.Size = Vector3.new(3, 2.79999995, 1)
o55.CFrame = CFrame.new(113.818176, 6.80000782, 16.3115101, 0, 3.96052044e-008, -0.999999285, 0, 1, 3.97634281e-008, 1, 0, 0)
o55.BackSurface = Enum.SurfaceType.Weld
o55.BottomSurface = Enum.SurfaceType.Weld
o55.TopSurface = Enum.SurfaceType.Weld
o55.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o56.Parent = o55
o56.MeshType = Enum.MeshType.Wedge
o57.Parent = o1
o57.BrickColor = BrickColor.new("Institutional white")
o57.Position = Vector3.new(113.818176, 4.40000582, 13.8115101)
o57.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o57.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o57.Velocity = Vector3.new(0.000777417503, 9.27956426e-005, -0.00743345637)
o57.Anchored = true
o57.CanCollide = false
o57.FormFactor = Enum.FormFactor.Plate
o57.Size = Vector3.new(1, 2, 8)
o57.CFrame = CFrame.new(113.818176, 4.40000582, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o57.BackSurface = Enum.SurfaceType.Weld
o57.BottomSurface = Enum.SurfaceType.Weld
o57.FrontSurface = Enum.SurfaceType.Weld
o57.LeftSurface = Enum.SurfaceType.Weld
o57.RightSurface = Enum.SurfaceType.Weld
o57.TopSurface = Enum.SurfaceType.Weld
o57.Color = Color3.new(0.972549, 0.972549, 0.972549)
o58.Parent = o57
o59.Parent = o1
o59.BrickColor = BrickColor.new("Institutional white")
o59.Position = Vector3.new(113.818176, 3.80000734, 18.3115101)
o59.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o59.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o59.Velocity = Vector3.new(0.00204589404, -0.000567637384, -0.00752151385)
o59.Anchored = true
o59.FormFactor = Enum.FormFactor.Plate
o59.Size = Vector3.new(1, 0.800000012, 1)
o59.CFrame = CFrame.new(113.818176, 3.80000734, 18.3115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o59.BackSurface = Enum.SurfaceType.Weld
o59.BottomSurface = Enum.SurfaceType.Weld
o59.FrontSurface = Enum.SurfaceType.Weld
o59.LeftSurface = Enum.SurfaceType.Weld
o59.RightSurface = Enum.SurfaceType.Weld
o59.TopSurface = Enum.SurfaceType.Weld
o59.Color = Color3.new(0.972549, 0.972549, 0.972549)
o60.Parent = o59
o61.Parent = o1
o61.BrickColor = BrickColor.new("Institutional white")
o61.Position = Vector3.new(105.317894, 8.40000725, 18.3115101)
o61.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
o61.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o61.Velocity = Vector3.new(0.00237834454, 4.6692905e-005, -0.00436840346)
o61.Anchored = true
o61.CanCollide = false
o61.FormFactor = Enum.FormFactor.Plate
o61.Size = Vector3.new(14, 0.400000006, 1)
o61.CFrame = CFrame.new(105.317894, 8.40000725, 18.3115101, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
o61.BackSurface = Enum.SurfaceType.Weld
o61.BottomSurface = Enum.SurfaceType.Weld
o61.FrontSurface = Enum.SurfaceType.Weld
o61.LeftSurface = Enum.SurfaceType.Weld
o61.RightSurface = Enum.SurfaceType.Weld
o61.TopSurface = Enum.SurfaceType.Weld
o61.Color = Color3.new(0.972549, 0.972549, 0.972549)
o62.Parent = o61
o63.Parent = o1
o63.BrickColor = BrickColor.new("Institutional white")
o63.Position = Vector3.new(97.8181839, 5.79500866, 9.31151104)
o63.Rotation = Vector3.new(-0, 0, -2.36894834e-006)
o63.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o63.Velocity = Vector3.new(-0.000433602603, 0.00190957636, -0.00256440602)
o63.Anchored = true
o63.CanCollide = false
o63.FormFactor = Enum.FormFactor.Plate
o63.Size = Vector3.new(1, 4.80999994, 1)
o63.CFrame = CFrame.new(97.8181839, 5.79500866, 9.31151104, 1, 4.13459489e-008, 0, -4.13459489e-008, 1, 0, 0, 0, 1)
o63.BottomSurface = Enum.SurfaceType.Weld
o63.LeftSurface = Enum.SurfaceType.Weld
o63.RightSurface = Enum.SurfaceType.Weld
o63.TopSurface = Enum.SurfaceType.Weld
o63.Color = Color3.new(0.972549, 0.972549, 0.972549)
o64.Parent = o1
o64.BrickColor = BrickColor.new("Institutional white")
o64.Position = Vector3.new(97.8178101, 7.00000858, 18.3115101)
o64.Rotation = Vector3.new(-0, 0, -2.14529973e-006)
o64.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o64.Velocity = Vector3.new(0.00227716402, 0.00058873737, -0.00238744705)
o64.Anchored = true
o64.CanCollide = false
o64.FormFactor = Enum.FormFactor.Plate
o64.Size = Vector3.new(1, 2.4000001, 1)
o64.CFrame = CFrame.new(97.8178101, 7.00000858, 18.3115101, 0.999999762, 3.74425326e-008, 0, -3.74952727e-008, 1, 0, 0, 0, 1)
o64.BottomSurface = Enum.SurfaceType.Weld
o64.LeftSurface = Enum.SurfaceType.Weld
o64.RightSurface = Enum.SurfaceType.Weld
o64.TopSurface = Enum.SurfaceType.Weld
o64.Color = Color3.new(0.972549, 0.972549, 0.972549)
o65.Parent = o1
o65.BrickColor = BrickColor.new("Institutional white")
o65.Position = Vector3.new(113.418167, 2.40000749, 13.8115101)
o65.Rotation = Vector3.new(-0, 0, -2.27223404e-006)
o65.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o65.Velocity = Vector3.new(0.000632874086, 0.000121704477, -0.0076103732)
o65.Anchored = true
o65.FormFactor = Enum.FormFactor.Plate
o65.Size = Vector3.new(1.80000007, 1.20000005, 10)
o65.CFrame = CFrame.new(113.418167, 2.40000749, 13.8115101, 0.999999762, 3.96579551e-008, 0, -3.97106952e-008, 1, 0, 0, 0, 1)
o65.BackSurface = Enum.SurfaceType.Weld
o65.BottomSurface = Enum.SurfaceType.Weld
o65.FrontSurface = Enum.SurfaceType.Weld
o65.LeftSurface = Enum.SurfaceType.Weld
o65.RightSurface = Enum.SurfaceType.Weld
o65.TopSurface = Enum.SurfaceType.Weld
o65.Color = Color3.new(0.972549, 0.972549, 0.972549)
o66.Parent = o65
o67.Parent = o1
o67.BrickColor = BrickColor.new("Really red")
o67.Position = Vector3.new(113.817245, 4.80000687, 18.3115101)
o67.Rotation = Vector3.new(-0, 0, -3.17145691e-006)
o67.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o67.Velocity = Vector3.new(0.00211816584, -0.000567570096, -0.0073744799)
o67.Anchored = true
o67.FormFactor = Enum.FormFactor.Plate
o67.Size = Vector3.new(1, 1.20000005, 1)
o67.CFrame = CFrame.new(113.817245, 4.80000687, 18.3115101, 1, 5.53523627e-008, 0, -5.53523627e-008, 1, 0, 0, 0, 1)
o67.BackSurface = Enum.SurfaceType.Weld
o67.BottomSurface = Enum.SurfaceType.Weld
o67.FrontSurface = Enum.SurfaceType.Weld
o67.LeftSurface = Enum.SurfaceType.Weld
o67.RightSurface = Enum.SurfaceType.Weld
o67.TopSurface = Enum.SurfaceType.Weld
o67.Color = Color3.new(1, 0, 0)
o68.Parent = o67
o69.Parent = o1
o69.BrickColor = BrickColor.new("Institutional white")
o69.Position = Vector3.new(112.817894, 8.40000725, 13.8115139)
o69.Rotation = Vector3.new(-0, 0, -2.21330401e-006)
o69.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o69.Velocity = Vector3.new(0.00106650498, 0.000165087578, -0.00655480288)
o69.Anchored = true
o69.CanCollide = false
o69.FormFactor = Enum.FormFactor.Plate
o69.Size = Vector3.new(1, 0.400000006, 10)
o69.CFrame = CFrame.new(112.817894, 8.40000725, 13.8115139, 0.999999762, 3.86294303e-008, 0, -3.86821704e-008, 1, 0, 0, 0, 1)
o69.BackSurface = Enum.SurfaceType.Weld
o69.BottomSurface = Enum.SurfaceType.Weld
o69.FrontSurface = Enum.SurfaceType.Weld
o69.LeftSurface = Enum.SurfaceType.Weld
o69.RightSurface = Enum.SurfaceType.Weld
o69.TopSurface = Enum.SurfaceType.Weld
o69.Color = Color3.new(0.972549, 0.972549, 0.972549)
o70.Parent = o69
o71.Parent = o1
o71.BrickColor = BrickColor.new("Really black")
o71.Position = Vector3.new(92.2181854, 3.8000083, 13.8115101)
o71.Rotation = Vector3.new(-0, 0, -2.2601489e-006)
o71.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o71.Velocity = Vector3.new(0.0007340546, 0.00165386556, -0.00122468593)
o71.Anchored = true
o71.FormFactor = Enum.FormFactor.Custom
o71.Size = Vector3.new(0.200000003, 0.800000012, 6)
o71.CFrame = CFrame.new(92.2181854, 3.8000083, 13.8115101, 0.999997854, 3.94469524e-008, 0, -3.99216233e-008, 1, 0, 0, 0, 1)
o71.BackSurface = Enum.SurfaceType.Weld
o71.BottomSurface = Enum.SurfaceType.Weld
o71.FrontSurface = Enum.SurfaceType.Weld
o71.LeftSurface = Enum.SurfaceType.Weld
o71.RightSurface = Enum.SurfaceType.Weld
o71.TopSurface = Enum.SurfaceType.Weld
o71.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o72.Parent = o71
o73.Name = "Head"
o73.Parent = o1
o73.Material = Enum.Material.SmoothPlastic
o73.BrickColor = BrickColor.new("Institutional white")
o73.Position = Vector3.new(99.207077, 7.026577, 15.2047167)
o73.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o73.Anchored = true
o73.FormFactor = Enum.FormFactor.Symmetric
o73.Size = Vector3.new(2, 1, 1)
o73.CFrame = CFrame.new(99.207077, 7.026577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o73.Color = Color3.new(0.972549, 0.972549, 0.972549)
o74.Parent = o73
o74.Scale = Vector3.new(1.25, 1.25, 1.25)
o75.Name = "face"
o75.Parent = o73
o75.Texture = "rbxasset://textures/face.png"
o76.Parent = o1
o76.BrickColor = BrickColor.new("Institutional white")
o76.Position = Vector3.new(99.6954269, 5.81500673, 9.31151104)
o76.Rotation = Vector3.new(-0, 0, -8.82515178e-006)
o76.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o76.Velocity = Vector3.new(-0.000432157307, 0.00177390513, -0.00310872309)
o76.Anchored = true
o76.CanCollide = false
o76.FormFactor = Enum.FormFactor.Plate
o76.Size = Vector3.new(2.76000023, 4.82999992, 1)
o76.CFrame = CFrame.new(99.6954269, 5.81500673, 9.31151104, 1, 1.54027958e-007, 0, -1.54027958e-007, 1, 0, 0, 0, 1)
o76.BottomSurface = Enum.SurfaceType.Weld
o76.LeftSurface = Enum.SurfaceType.Weld
o76.RightSurface = Enum.SurfaceType.Weld
o76.TopSurface = Enum.SurfaceType.Weld
o76.Color = Color3.new(0.972549, 0.972549, 0.972549)
o77.Parent = o1
o77.BrickColor = BrickColor.new("Institutional white")
o77.Position = Vector3.new(100.909996, 5.80000877, 14.2915134)
o77.Rotation = Vector3.new(-0, 0, -7.89941078e-006)
o77.RotVelocity = Vector3.new(0.000146762875, 0.000291519886, -7.22717741e-005)
o77.Velocity = Vector3.new(0.0010185279, 0.000955246738, -0.00346499542)
o77.Anchored = true
o77.FormFactor = Enum.FormFactor.Plate
o77.Size = Vector3.new(0.200000003, 4.80000019, 9.0199995)
o77.CFrame = CFrame.new(100.909996, 5.80000877, 14.2915134, 1, 1.37870728e-007, 0, -1.37870728e-007, 1, 0, 0, 0, 1)
o77.BackSurface = Enum.SurfaceType.Weld
o77.BottomSurface = Enum.SurfaceType.Weld
o77.FrontSurface = Enum.SurfaceType.Weld
o77.LeftSurface = Enum.SurfaceType.Weld
o77.RightSurface = Enum.SurfaceType.Weld
o77.TopSurface = Enum.SurfaceType.Weld
o77.Color = Color3.new(0.972549, 0.972549, 0.972549)
o78.Parent = o77
o79.Name = "Head"
o79.Parent = o1
o79.Material = Enum.Material.SmoothPlastic
o79.BrickColor = BrickColor.new("Institutional white")
o79.Position = Vector3.new(103.10894, 7.49666739, 15.2047167)
o79.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o79.Anchored = true
o79.FormFactor = Enum.FormFactor.Symmetric
o79.Size = Vector3.new(2, 1, 1)
o79.CFrame = CFrame.new(103.10894, 7.49666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o79.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o79.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o79.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o79.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o79.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o79.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o79.Color = Color3.new(0.972549, 0.972549, 0.972549)
o80.Parent = o79
o80.Scale = Vector3.new(1.25, 1.25, 1.25)
o81.Name = "face"
o81.Parent = o79
o81.Texture = "rbxasset://textures/face.png"
o82.Name = "Handle"
o82.Parent = o1
o82.Material = Enum.Material.SmoothPlastic
o82.Position = Vector3.new(103.10894, 7.34666729, 15.2047167)
o82.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o82.Anchored = true
o82.CanCollide = false
o82.FormFactor = Enum.FormFactor.Symmetric
o82.Size = Vector3.new(2, 2, 2)
o82.CFrame = CFrame.new(103.10894, 7.34666729, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o82.BottomSurface = Enum.SurfaceType.Smooth
o82.TopSurface = Enum.SurfaceType.Smooth
o83.Parent = o82
o83.MeshId = "http://www.roblox.com/asset/?id=15393031"
o83.TextureId = "http://www.roblox.com/asset/?id=15393013"
o83.MeshType = Enum.MeshType.FileMesh
o84.Parent = o1
o84.NameOcclusion = Enum.NameOcclusion.NoOcclusion
o84.RightLeg = o94
o84.LeftLeg = o96
o84.Torso = o87
o84.Health = 0
o84.MaxHealth = 0
o85.Name = "TPPART"
o85.Parent = o1
o85.Transparency = 1
o85.Position = Vector3.new(104.155182, 4.24109221, 12.6003485)
o85.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
o85.Anchored = true
o85.CanCollide = false
o85.Size = Vector3.new(4, 1, 2)
o85.CFrame = CFrame.new(104.155182, 4.24109221, 12.6003485, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
o86.Name = "TPPART2"
o86.Parent = o1
o86.Transparency = 1
o86.Position = Vector3.new(104.155182, 5.40188599, 6.32408237)
o86.Rotation = Vector3.new(-0, 0, -3.5910773e-006)
o86.Anchored = true
o86.CanCollide = false
o86.Size = Vector3.new(4, 1, 2)
o86.CFrame = CFrame.new(104.155182, 5.40188599, 6.32408237, 1, 6.26761221e-008, 0, -6.26761221e-008, 1, 0, 0, 0, 1)
o87.Name = "Torso"
o87.Parent = o1
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Navy blue")
o87.Position = Vector3.new(99.207077, 5.526577, 15.2047167)
o87.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o87.Anchored = true
o87.FormFactor = Enum.FormFactor.Symmetric
o87.Size = Vector3.new(2, 2, 1)
o87.CFrame = CFrame.new(99.207077, 5.526577, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0, 0.12549, 0.376471)
o88.Name = "roblox"
o88.Parent = o87
o89.Name = "Right Shoulder"
o89.Parent = o87
o89.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o89.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o89.Part0 = o87
o89.Part1 = o95
o89.DesiredAngle = -0.062025275081396
o89.MaxVelocity = 0.15000000596046
o90.Name = "Left Shoulder"
o90.Parent = o87
o90.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o90.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o90.Part0 = o87
o90.Part1 = o97
o90.DesiredAngle = -0.062025275081396
o90.MaxVelocity = 0.15000000596046
o91.Name = "Right Hip"
o91.Parent = o87
o91.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o91.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o91.Part0 = o87
o91.Part1 = o94
o91.DesiredAngle = 0.062025275081396
o91.MaxVelocity = 0.10000000149012
o92.Name = "Left Hip"
o92.Parent = o87
o92.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o92.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o92.Part0 = o87
o92.Part1 = o96
o92.DesiredAngle = 0.062025275081396
o92.MaxVelocity = 0.10000000149012
o93.Name = "Neck"
o93.Parent = o87
o93.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o93.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o93.Part0 = o87
o93.Part1 = o73
o93.MaxVelocity = 0.10000000149012
o94.Name = "Right Leg"
o94.Parent = o1
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Navy blue")
o94.Position = Vector3.new(99.215416, 3.526577, 14.7047863)
o94.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o94.Anchored = true
o94.CanCollide = false
o94.FormFactor = Enum.FormFactor.Symmetric
o94.Size = Vector3.new(1, 2, 1)
o94.CFrame = CFrame.new(99.215416, 3.526577, 14.7047863, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0, 0.12549, 0.376471)
o95.Name = "Right Arm"
o95.Parent = o1
o95.Material = Enum.Material.SmoothPlastic
o95.BrickColor = BrickColor.new("Maroon")
o95.Position = Vector3.new(99.2321014, 5.526577, 13.7049236)
o95.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o95.Anchored = true
o95.CanCollide = false
o95.FormFactor = Enum.FormFactor.Symmetric
o95.Size = Vector3.new(1, 2, 1)
o95.CFrame = CFrame.new(99.2321014, 5.526577, 13.7049236, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o95.Color = Color3.new(0.458824, 0, 0)
o96.Name = "Left Leg"
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Navy blue")
o96.Position = Vector3.new(99.1987381, 3.526577, 15.7046452)
o96.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o96.Anchored = true
o96.CanCollide = false
o96.FormFactor = Enum.FormFactor.Symmetric
o96.Size = Vector3.new(1, 2, 1)
o96.CFrame = CFrame.new(99.1987381, 3.526577, 15.7046452, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0, 0.12549, 0.376471)
o97.Name = "Left Arm"
o97.Parent = o1
o97.Material = Enum.Material.SmoothPlastic
o97.BrickColor = BrickColor.new("Maroon")
o97.Position = Vector3.new(99.1820602, 5.526577, 16.7045078)
o97.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o97.Anchored = true
o97.CanCollide = false
o97.FormFactor = Enum.FormFactor.Symmetric
o97.Size = Vector3.new(1, 2, 1)
o97.CFrame = CFrame.new(99.1820602, 5.526577, 16.7045078, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o97.Color = Color3.new(0.458824, 0, 0)
o98.Name = "Torso"
o98.Parent = o1
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Navy blue")
o98.Position = Vector3.new(103.10894, 5.99666739, 15.2047167)
o98.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o98.Anchored = true
o98.FormFactor = Enum.FormFactor.Symmetric
o98.Size = Vector3.new(2, 2, 1)
o98.CFrame = CFrame.new(103.10894, 5.99666739, 15.2047167, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0, 0.12549, 0.376471)
o99.Name = "roblox"
o99.Parent = o98
o100.Name = "Right Hip"
o100.Parent = o98
o100.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o100.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
o100.Part0 = o98
o100.Part1 = o103
o100.DesiredAngle = 0.062025275081396
o100.MaxVelocity = 0.10000000149012
o101.Name = "Left Hip"
o101.Parent = o98
o101.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o101.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
o101.Part0 = o98
o101.Part1 = o105
o101.DesiredAngle = 0.062025275081396
o101.MaxVelocity = 0.10000000149012
o102.Name = "Neck"
o102.Parent = o98
o102.C0 = CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o102.C1 = CFrame.new(0, -0.5, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
o102.Part0 = o98
o102.Part1 = o79
o102.MaxVelocity = 0.10000000149012
o103.Name = "Right Leg"
o103.Parent = o1
o103.Material = Enum.Material.SmoothPlastic
o103.BrickColor = BrickColor.new("Really black")
o103.Position = Vector3.new(103.608864, 3.99666739, 15.2130556)
o103.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o103.Anchored = true
o103.CanCollide = false
o103.FormFactor = Enum.FormFactor.Symmetric
o103.Size = Vector3.new(1, 2, 1)
o103.CFrame = CFrame.new(103.608864, 3.99666739, 15.2130556, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o103.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o104.Name = "Right Arm"
o104.Parent = o1
o104.Material = Enum.Material.SmoothPlastic
o104.BrickColor = BrickColor.new("Maroon")
o104.Position = Vector3.new(104.615349, 5.89646101, 14.8330393)
o104.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
o104.Anchored = true
o104.CanCollide = false
o104.FormFactor = Enum.FormFactor.Symmetric
o104.Size = Vector3.new(1, 2, 1)
o104.CFrame = CFrame.new(104.615349, 5.89646101, 14.8330393, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.458824, 0, 0)
o105.Name = "Left Leg"
o105.Parent = o1
o105.Material = Enum.Material.SmoothPlastic
o105.BrickColor = BrickColor.new("Really black")
o105.Position = Vector3.new(102.609009, 3.99666739, 15.1963739)
o105.Rotation = Vector3.new(-1.53054156e-008, -0.95580709, -1.83469444e-006)
o105.Anchored = true
o105.CanCollide = false
o105.FormFactor = Enum.FormFactor.Symmetric
o105.Size = Vector3.new(1, 2, 1)
o105.CFrame = CFrame.new(102.609009, 3.99666739, 15.1963739, 0.999860883, 3.20170024e-008, -0.0166812073, -3.20170024e-008, 1, 2.67092765e-010, 0.0166812055, 2.67026595e-010, 0.999860942)
o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o106.Name = "Left Arm"
o106.Parent = o1
o106.Material = Enum.Material.SmoothPlastic
o106.BrickColor = BrickColor.new("Maroon")
o106.Position = Vector3.new(101.617271, 5.96075201, 14.6924496)
o106.Rotation = Vector3.new(45.0039597, -0.675833881, 0.675880313)
o106.Anchored = true
o106.CanCollide = false
o106.FormFactor = Enum.FormFactor.Symmetric
o106.Size = Vector3.new(1, 2, 1)
o106.CFrame = CFrame.new(101.617271, 5.96075201, 14.6924496, 0.999860883, -0.0117952423, -0.0117952526, 0, 0.707107067, -0.707106411, 0.0166809987, 0.707008064, 0.707008719)
o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o106.Color = Color3.new(0.458824, 0, 0)
o107.Parent = o1
o107.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
o107.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o107.Anchored = true
o107.FormFactor = Enum.FormFactor.Symmetric
o107.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o107.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o108.Parent = o107
o109.Parent = o1
o109.BrickColor = BrickColor.new("Really black")
o109.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
o109.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o109.Anchored = true
o109.FormFactor = Enum.FormFactor.Symmetric
o109.Size = Vector3.new(3, 1.20000005, 3)
o109.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o109.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o110.Parent = o109
o111.Parent = o1
o111.BrickColor = BrickColor.new("Really black")
o111.Position = Vector3.new(110.917458, 1.50000954, 18.4564953)
o111.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o111.Anchored = true
o111.FormFactor = Enum.FormFactor.Symmetric
o111.Size = Vector3.new(3, 1.20000005, 3)
o111.CFrame = CFrame.new(110.917458, 1.50000954, 18.4564953, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o111.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o112.Parent = o111
o113.Parent = o1
o113.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
o113.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o113.Anchored = true
o113.FormFactor = Enum.FormFactor.Symmetric
o113.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o113.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o114.Parent = o113
o115.Parent = o1
o115.BrickColor = BrickColor.new("Really black")
o115.Position = Vector3.new(95.3486252, 1.50002623, 9.1665411)
o115.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o115.Anchored = true
o115.FormFactor = Enum.FormFactor.Symmetric
o115.Size = Vector3.new(3, 1.20000005, 3)
o115.CFrame = CFrame.new(95.3486252, 1.50002623, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o115.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o116.Parent = o115
o117.Parent = o1
o117.BrickColor = BrickColor.new("Really black")
o117.Position = Vector3.new(95.3486252, 1.50001001, 18.4564877)
o117.Rotation = Vector3.new(-90, 1.20620803e-006, -180)
o117.Anchored = true
o117.FormFactor = Enum.FormFactor.Symmetric
o117.Size = Vector3.new(3, 1.20000005, 3)
o117.CFrame = CFrame.new(95.3486252, 1.50001001, 18.4564877, -1, 2.98044895e-008, 2.10523012e-008, 2.10523012e-008, 7.54615499e-008, 1, 2.9804486e-008, 1, -7.54615499e-008)
o117.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o118.Parent = o117
o119.Parent = o1
o119.Position = Vector3.new(110.917442, 1.50002527, 9.1665411)
o119.Rotation = Vector3.new(-90, 6.45824184e-006, 2.56150702e-006)
o119.Anchored = true
o119.FormFactor = Enum.FormFactor.Symmetric
o119.Size = Vector3.new(2.39999986, 1.31000006, 2.39999986)
o119.CFrame = CFrame.new(110.917442, 1.50002527, 9.1665411, 1, -4.47067308e-008, 1.12717586e-007, -1.12717586e-007, -5.51334445e-009, 1, -4.47067308e-008, -1, -5.51334933e-009)
o120.Parent = o119
o121.Name = "Handle"
o121.Parent = o1
o121.Material = Enum.Material.SmoothPlastic
o121.Position = Vector3.new(99.207077, 6.8765769, 15.2047167)
o121.Rotation = Vector3.new(5.49961514e-005, 89.0444794, -5.50190998e-005)
o121.Anchored = true
o121.CanCollide = false
o121.FormFactor = Enum.FormFactor.Symmetric
o121.Size = Vector3.new(2, 2, 2)
o121.CFrame = CFrame.new(99.207077, 6.8765769, 15.2047167, 0.0166787934, 1.60160507e-008, 0.999860942, -5.34079281e-010, 1, -1.60093698e-008, -0.999861002, -2.66988043e-010, 0.0166787915)
o121.BottomSurface = Enum.SurfaceType.Smooth
o121.TopSurface = Enum.SurfaceType.Smooth
o122.Parent = o121
o122.MeshId = "http://www.roblox.com/asset/?id=15393031"
o122.TextureId = "http://www.roblox.com/asset/?id=15393013"
o122.MeshType = Enum.MeshType.FileMesh
o123.Name = "RPPART"
o123.Parent = o1
o123.Transparency = 1
o123.Position = Vector3.new(103.454132, 5.33460093, 13.0707426)
o123.Rotation = Vector3.new(-90, 0, -0)
o123.Anchored = true
o123.CanCollide = false
o123.Size = Vector3.new(4, 1, 2)
o123.CFrame = CFrame.new(103.454132, 5.33460093, 13.0707426, 1, 0, 0, 0, 0, 1, 0, -1, 0)
o124.Parent = o12
o124.Texture = "http://roblox.com/asset/?id=112031763"
function MoveY(model, Position)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + Vector3.new(0,Position,0)
		end
	end
end
function MoveX(model, Position)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + Vector3.new(Position,0,0)
		end
	end
end
function MoveSpawn(model, PLAYERPOS)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + PLAYERPOS + Vector3.new(50,-2.7,-5)
		end
	end
end
function MoveZ(model, Position)
	for _,part in pairs (model:GetChildren()) do
		if part.ClassName == "Part" then
			part.CFrame = part.CFrame + Vector3.new(0,0,Position)
		end
	end
end
function MoveZPart(Part, Position)
			Part.CFrame = Part.CFrame + Vector3.new(0,0,Position)
end
function MoveXPart(Part, Position)
			Part.CFrame = Part.CFrame + Vector3.new(Position,0,0)
end
game.Players[Victim].Character.HumanoidRootPart.Anchored = true
OMGCREEPY = Instance.new("Sound")
OMGCREEPY.Parent = o1
OMGCREEPY.Volume = .5
OMGCREEPY.SoundId = "rbxassetid://177775134"
for i,v in pairs (o1:GetChildren()) do
	if v:IsA("Part") then
		v.Material = "SmoothPlastic"
		v.BackSurface = "SmoothNoOutlines"
		v.FrontSurface = "SmoothNoOutlines"
		v.BottomSurface = "SmoothNoOutlines"
		v.LeftSurface = "SmoothNoOutlines"
		v.RightSurface = "SmoothNoOutlines"
		v.TopSurface = "SmoothNoOutlines"
	end
end
OMGCREEPY:Play()
o21:Play()
	MoveSpawn(o1,game.Players[Victim].Character.HumanoidRootPart.Position)
for i=1,51 do
MoveX(o1,-3)
wait(.05)
end
wait(.5)
	MoveZPart(o12,-1)
	wait(.2)
for i=1,6 do
	MoveXPart(o12,1)
	wait(.1)
end
wait(.5)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o86.CFrame
wait(.5)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o85.CFrame
wait(.5)
	MoveZPart(o12,1)
	wait(.2)

for i=1,6 do
	MoveXPart(o12,-1)
	wait(.1)
end
for i=1,50 do
MoveX(o1,-3)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o85.CFrame
wait(.05)
end
game.Players[Victim].Character.Head.face.Texture = "rbxassetid://629925029"
game.Players[Victim].Character.HumanoidRootPart.CFrame = o123.CFrame
SCREAM = Instance.new("Sound")
SCREAM.Parent = game.Players[Victim].Character.Head
SCREAM.SoundId = "rbxassetid://138167455"
SCREAM:Play()
wait(2.5)
game.Players[Victim].Character.Head.BrickColor = BrickColor.new("Maroon")
	MoveZPart(o12,-1)
	wait(.2)
for i=1,6 do
	MoveXPart(o12,1)
	wait(.1)
end
wait(.5)
game.Players[Victim].Character.HumanoidRootPart.CFrame = o86.CFrame
wait(.5)
	MoveZPart(o12,1)
	wait(.2)
for i=1,6 do
	MoveXPart(o12,-1)
	wait(.1)
end
game.Players[Victim].Character.Humanoid.Health = 0
player = game.Players[Victim]
char = player.Character
			char.Archivable = true
			local rg = char:Clone()
			rg.HumanoidRootPart:Destroy()
			rg.Name = ""
			rg.Humanoid.MaxHealth = 0
			for i, v in pairs(rg.Torso:GetChildren()) do
				if v:IsA("Motor6D") then
					v:Destroy()
				end
			end
			
			local n = Instance.new("Glue", rg.Torso)
			n.Name = "Neck"
			n.Part0 = rg.Torso
			n.Part1 = rg.Head
			n.C0 = CFrame.new(0, 1, 0)
			n.C1 = CFrame.new(0, -0.5, 0)
			
			local rs = Instance.new("Glue", rg.Torso)
			rs.Name = "Right Shoulder"
			rs.Part0 = rg.Torso
			rs.Part1 = rg["Right Arm"]
			rs.C0 = CFrame.new(1.5, 0.5, 0)
			rs.C1 = CFrame.new(0, 0.5, 0)
			local ls = Instance.new("Glue", rg.Torso)
			ls.Name = "Left Shoulder"
			ls.Part0 = rg.Torso
			ls.Part1 = rg["Left Arm"]
			ls.C0 = CFrame.new(-1.5, 0.5, 0)
			ls.C1 = CFrame.new(0, 0.5, 0)
			
			local rh = Instance.new("Glue", rg.Torso)
			rh.Name = "Right Hip"
			rh.Part0 = rg.Torso
			rh.Part1 = rg["Right Leg"]
			rh.C0 = CFrame.new(0.5, -1, 0)
			rh.C1 = CFrame.new(0, 1, 0)
			local lh = Instance.new("Glue", rg.Torso)
			lh.Name = "Left Hip"
			lh.Part0 = rg.Torso
			lh.Part1 = rg["Left Leg"]
			lh.C0 = CFrame.new(-0.5, -1, 0)
			lh.C1 = CFrame.new(0, 1, 0)
			char.Torso:Destroy()
			char.Head:Destroy()
			char["Left Leg"]:Destroy()
			char["Left Arm"]:Destroy()
			char["Right Leg"]:Destroy()
			char["Right Arm"]:Destroy()
			rg.Parent = game.Workspace
			rg.Head.BrickColor = BrickColor.new("Maroon")
function DEATH ()
OHHNELLY = Instance.new("Part")
OHHNELLY.Parent = workspace
OHHNELLY.Anchored = false
OHHNELLY.Material = Enum.Material.SmoothPlastic
OHHNELLY.BrickColor = BrickColor.new("Maroon")
OHHNELLY.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
OHHNELLY.Position = rg.Head.Position
OHHNELLY.Color = Color3.new(0.458824, 0, 0)
OHHNELLY.BackSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.RightSurface = Enum.SurfaceType.SmoothNoOutlines
OHHNELLY.TopSurface = Enum.SurfaceType.SmoothNoOutlines
end
for i=1,20 do
DEATH()
MoveX(o1,-3)
wait(.05)
end
o1:Destroy()	
end)

WoodChip.MouseButton1Click:connect(function()
	--WOODCHIPPER by DMS
--self explanitory
Victim = User2.text
local gorayyv3 = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}
o1 = Instance.new("Model")
o2 = Instance.new("WedgePart")
o3 = Instance.new("WedgePart")
o4 = Instance.new("WedgePart")
o5 = Instance.new("Part")
o6 = Instance.new("BlockMesh")
o7 = Instance.new("Part")
o8 = Instance.new("BlockMesh")
o9 = Instance.new("Part")
o10 = Instance.new("BlockMesh")
o11 = Instance.new("Part")
o12 = Instance.new("BlockMesh")
o13 = Instance.new("Part")
o14 = Instance.new("BlockMesh")
o15 = Instance.new("WedgePart")
o16 = Instance.new("WedgePart")
o17 = Instance.new("Part")
o18 = Instance.new("BlockMesh")
o19 = Instance.new("Part")
o20 = Instance.new("BlockMesh")
o21 = Instance.new("WedgePart")
o22 = Instance.new("WedgePart")
o23 = Instance.new("Part")
o24 = Instance.new("BlockMesh")
o25 = Instance.new("WedgePart")
o26 = Instance.new("Model")
o27 = Instance.new("Part")
o28 = Instance.new("Script")
o29 = Instance.new("Part")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("WedgePart")
o33 = Instance.new("Part")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("WedgePart")
o36 = Instance.new("WedgePart")
o37 = Instance.new("Part")
o38 = Instance.new("WedgePart")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("WedgePart")
o42 = Instance.new("Part")
o43 = Instance.new("BlockMesh")
o44 = Instance.new("WedgePart")
o45 = Instance.new("Part")
o46 = Instance.new("WedgePart")
o47 = Instance.new("Part")
o48 = Instance.new("BlockMesh")
o49 = Instance.new("WedgePart")
o50 = Instance.new("Part")
o1.Parent = mas
o2.Parent = o1
o2.Material = Enum.Material.Metal
o2.BrickColor = BrickColor.new("Bright yellow")
o2.Position = Vector3.new(-18.1899929, 4.10999489, 17.9549961)
o2.Rotation = Vector3.new(-0, 0, -90)
o2.Anchored = true
o2.Size = Vector3.new(1, 1.20000005, 3.11000013)
o2.CFrame = CFrame.new(-18.1899929, 4.10999489, 17.9549961, 0, 1, 0, -1, 0, 0, 0, 0, 1)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.960784, 0.803922, 0.188235)
o3.Parent = o1
o3.Material = Enum.Material.Metal
o3.BrickColor = BrickColor.new("Bright yellow")
o3.Position = Vector3.new(-14.3899822, 4.10999489, 18.1799965)
o3.Rotation = Vector3.new(-0, 0, 90)
o3.Anchored = true
o3.Size = Vector3.new(1, 1.20000005, 2.66000009)
o3.CFrame = CFrame.new(-14.3899822, 4.10999489, 18.1799965, 0, -1, 0, 1, 0, 0, 0, 0, 1)
o3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o3.Color = Color3.new(0.960784, 0.803922, 0.188235)
o4.Parent = o1
o4.Material = Enum.Material.Metal
o4.BrickColor = BrickColor.new("Bright yellow")
o4.Position = Vector3.new(-19.2899933, 6.00991678, 17.9799957)
o4.Anchored = true
o4.Size = Vector3.new(1, 4.80000019, 3.06000018)
o4.CFrame = CFrame.new(-19.2899933, 6.00991678, 17.9799957, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.960784, 0.803922, 0.188235)
o5.Parent = o1
o5.Material = Enum.Material.Metal
o5.BrickColor = BrickColor.new("Bright yellow")
o5.Position = Vector3.new(-14.7899857, 11.0092764, 36.4000015)
o5.Rotation = Vector3.new(-0, 0, -90)
o5.Anchored = true
o5.FormFactor = Enum.FormFactor.Plate
o5.Size = Vector3.new(2, 0.400000006, 7.78000021)
o5.CFrame = CFrame.new(-14.7899857, 11.0092764, 36.4000015, 0, 1, 0, -1, 0, 0, 0, 0, 1)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Color = Color3.new(0.960784, 0.803922, 0.188235)
o6.Parent = o5
o7.Parent = o1
o7.Material = Enum.Material.Metal
o7.BrickColor = BrickColor.new("Bright yellow")
o7.Position = Vector3.new(-16.2899876, 9.80919838, 36.3800011)
o7.Rotation = Vector3.new(5.12264205e-006, 0, -0)
o7.Velocity = Vector3.new(0, 0, 70)
o7.Anchored = true
o7.FormFactor = Enum.FormFactor.Plate
o7.Size = Vector3.new(3, 0.400000006, 7.74000025)
o7.CFrame = CFrame.new(-16.2899876, 9.80919838, 36.3800011, 1, 0, 0, 0, 1, -8.94069672e-008, 0, 8.94069672e-008, 1)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.960784, 0.803922, 0.188235)
o8.Parent = o7
o9.Parent = o1
o9.Material = Enum.Material.Metal
o9.BrickColor = BrickColor.new("Bright yellow")
o9.Position = Vector3.new(-16.2899876, 12.4093018, 36.3600006)
o9.Rotation = Vector3.new(5.12264205e-006, 0, -0)
o9.Anchored = true
o9.CanCollide = false
o9.FormFactor = Enum.FormFactor.Plate
o9.Size = Vector3.new(3, 0.800000012, 7.70000029)
o9.CFrame = CFrame.new(-16.2899876, 12.4093018, 36.3600006, 1, 0, 0, 0, 1, -8.94069672e-008, 0, 8.94069672e-008, 1)
o9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Color = Color3.new(0.960784, 0.803922, 0.188235)
o10.Parent = o9
o11.Parent = o1
o11.Material = Enum.Material.Metal
o11.BrickColor = BrickColor.new("Bright yellow")
o11.Position = Vector3.new(-16.2899876, 11.3093338, 32.1100082)
o11.Rotation = Vector3.new(-90, 90, 0)
o11.Anchored = true
o11.FormFactor = Enum.FormFactor.Plate
o11.Size = Vector3.new(1, 0.400000006, 3)
o11.CFrame = CFrame.new(-16.2899876, 11.3093338, 32.1100082, 6.59824251e-010, 1.39606771e-010, 1, -1, 0, 6.5982475e-010, 0, -1, -1.67527747e-009)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.960784, 0.803922, 0.188235)
o12.Parent = o11
o12.Scale = Vector3.new(2.20000005, 2, 1)
o13.Parent = o1
o13.Material = Enum.Material.Metal
o13.BrickColor = BrickColor.new("Bright yellow")
o13.Position = Vector3.new(-16.2899876, 10.2091904, 31.0100002)
o13.Anchored = true
o13.CanCollide = false
o13.Size = Vector3.new(3, 1.20000005, 3)
o13.CFrame = CFrame.new(-16.2899876, 10.2091904, 31.0100002, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o13.Color = Color3.new(0.960784, 0.803922, 0.188235)
o14.Parent = o13
o15.Parent = o1
o15.Material = Enum.Material.Metal
o15.BrickColor = BrickColor.new("Bright yellow")
o15.Position = Vector3.new(-16.2899876, 10.2091904, 29.0099907)
o15.Anchored = true
o15.Size = Vector3.new(3, 1.20000005, 1)
o15.CFrame = CFrame.new(-16.2899876, 10.2091904, 29.0099907, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.960784, 0.803922, 0.188235)
o16.Parent = o1
o16.Material = Enum.Material.Metal
o16.BrickColor = BrickColor.new("Bright yellow")
o16.Position = Vector3.new(-16.2899876, 8.40921021, 28.0099888)
o16.Anchored = true
o16.Size = Vector3.new(3, 2.4000001, 1)
o16.CFrame = CFrame.new(-16.2899876, 8.40921021, 28.0099888, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.960784, 0.803922, 0.188235)
o17.Parent = o1
o17.Material = Enum.Material.Metal
o17.BrickColor = BrickColor.new("Bright yellow")
o17.Position = Vector3.new(-17.5899925, 11.0092678, 36.3600006)
o17.Rotation = Vector3.new(-0, 0, -90)
o17.Anchored = true
o17.FormFactor = Enum.FormFactor.Plate
o17.Size = Vector3.new(2, 0.400000006, 7.70000029)
o17.CFrame = CFrame.new(-17.5899925, 11.0092678, 36.3600006, 0, 1, 0, -1, 0, 0, 0, 0, 1)
o17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Color = Color3.new(0.960784, 0.803922, 0.188235)
o18.Parent = o17
o19.Parent = o1
o19.Material = Enum.Material.Metal
o19.BrickColor = BrickColor.new("Bright yellow")
o19.Position = Vector3.new(-16.2899876, 8.40921021, 29.5099983)
o19.Anchored = true
o19.CanCollide = false
o19.Size = Vector3.new(3, 2.4000001, 2)
o19.CFrame = CFrame.new(-16.2899876, 8.40921021, 29.5099983, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Color = Color3.new(0.960784, 0.803922, 0.188235)
o20.Parent = o19
o21.Parent = o1
o21.Material = Enum.Material.Metal
o21.BrickColor = BrickColor.new("Bright yellow")
o21.Position = Vector3.new(-16.2899876, 11.8092804, 30.7099991)
o21.Rotation = Vector3.new(90, 0, -180)
o21.Anchored = true
o21.Size = Vector3.new(3, 2.4000001, 2)
o21.CFrame = CFrame.new(-16.2899876, 11.8092804, 30.7099991, -1, 0, 0, 0, 0, -1, 0, -1, 0)
o21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o21.Color = Color3.new(0.960784, 0.803922, 0.188235)
o22.Parent = o1
o22.Material = Enum.Material.Metal
o22.BrickColor = BrickColor.new("Bright yellow")
o22.Position = Vector3.new(-16.2899876, 8.40921021, 31.5100002)
o22.Rotation = Vector3.new(-180, 0, -0)
o22.Anchored = true
o22.Size = Vector3.new(3, 2.4000001, 2)
o22.CFrame = CFrame.new(-16.2899876, 8.40921021, 31.5100002, 1, 0, 0, 0, -1, 8.94069672e-008, 0, -8.94069672e-008, -1)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.960784, 0.803922, 0.188235)
o23.Parent = o1
o23.Material = Enum.Material.Metal
o23.BrickColor = BrickColor.new("Bright yellow")
o23.Position = Vector3.new(-13.7899876, 6.00991678, 23.5099964)
o23.Anchored = true
o23.Size = Vector3.new(2, 4.80000019, 8)
o23.CFrame = CFrame.new(-13.7899876, 6.00991678, 23.5099964, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o23.Color = Color3.new(0.960784, 0.803922, 0.188235)
o24.Parent = o23
o25.Parent = o1
o25.Material = Enum.Material.Metal
o25.BrickColor = BrickColor.new("Bright yellow")
o25.Position = Vector3.new(-13.7899876, 8.60981369, 23.5099964)
o25.Rotation = Vector3.new(-0, -90, 0)
o25.Anchored = true
o25.FormFactor = Enum.FormFactor.Plate
o25.Size = Vector3.new(8, 0.400000006, 2)
o25.CFrame = CFrame.new(-13.7899876, 8.60981369, 23.5099964, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o25.Color = Color3.new(0.960784, 0.803922, 0.188235)
o26.Parent = o1
o27.Name = "Teleporter Sender"
o27.Parent = o26
o27.Material = Enum.Material.Metal
o27.BrickColor = BrickColor.new("New Yeller")
o27.Position = Vector3.new(-16.2899876, 4.20995092, 27.0099964)
o27.Rotation = Vector3.new(-180, -90, 0)
o27.Anchored = true
o27.FormFactor = Enum.FormFactor.Plate
o27.Size = Vector3.new(1, 1.20000005, 3)
o27.CFrame = CFrame.new(-16.2899876, 4.20995092, 27.0099964, 0, 0, -1, 0, -1, 0, -1, 0, 0)
o27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o27.Color = Color3.new(1, 1, 0)
o28.Parent = o27
table.insert(cors,coroutine.create(function()
wait()
gorayyv3(function()
-- DO NOT CHANGE ANYTHING INSIDE THIS MODEL!!

function onTouched(part) -- onTouched function. Connects with the touched event (later shown.) "part" is the toucher.

part.CFrame = CFrame.new(script.Parent.Parent.R.Position.x, script.Parent.Parent.R.Position.y + 5,  script.Parent.Parent.R.Position.z) -- Puts the brick over the brick named "R"

end --ends a script


script.Parent.Touched:connect(onTouched) --connects the "Touched" event with the "onTouched" function

end,o28)
end))
o29.Name = "R"
o29.Parent = o26
o29.Material = Enum.Material.Metal
o29.BrickColor = BrickColor.new("New Yeller")
o29.Position = Vector3.new(-16.2342339, 10.2085276, 35.0100021)
o29.Rotation = Vector3.new(-180, -90, 0)
o29.Anchored = true
o29.CanCollide = false
o29.FormFactor = Enum.FormFactor.Plate
o29.Size = Vector3.new(1, 0.400000006, 1)
o29.CFrame = CFrame.new(-16.2342339, 10.2085276, 35.0100021, 0, 0, -1, 0, -1, 0, -1, 0, 0)
o29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o29.Color = Color3.new(1, 1, 0)
o30.Parent = o1
o30.Material = Enum.Material.Metal
o30.BrickColor = BrickColor.new("Bright yellow")
o30.Position = Vector3.new(-16.2899876, 4.80993605, 29.5099983)
o30.Anchored = true
o30.Size = Vector3.new(7, 4.80000019, 4)
o30.CFrame = CFrame.new(-16.2899876, 4.80993605, 29.5099983, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.960784, 0.803922, 0.188235)
o31.Parent = o30
o32.Parent = o1
o32.Material = Enum.Material.Metal
o32.BrickColor = BrickColor.new("Bright yellow")
o32.Position = Vector3.new(-18.7899933, 8.60981369, 23.5099964)
o32.Rotation = Vector3.new(0, 90, 0)
o32.Anchored = true
o32.FormFactor = Enum.FormFactor.Plate
o32.Size = Vector3.new(8, 0.400000006, 2)
o32.CFrame = CFrame.new(-18.7899933, 8.60981369, 23.5099964, 0, 0, 1, 0, 1, 0, -1, 0, 0)
o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32.Color = Color3.new(0.960784, 0.803922, 0.188235)
o33.Parent = o1
o33.Material = Enum.Material.Metal
o33.BrickColor = BrickColor.new("Bright yellow")
o33.Position = Vector3.new(-16.2899876, 8.80981636, 23.5099964)
o33.Anchored = true
o33.CanCollide = false
o33.FormFactor = Enum.FormFactor.Plate
o33.Size = Vector3.new(3, 0.400000006, 8)
o33.CFrame = CFrame.new(-16.2899876, 8.80981636, 23.5099964, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.960784, 0.803922, 0.188235)
o34.Parent = o33
o35.Parent = o1
o35.Material = Enum.Material.Metal
o35.BrickColor = BrickColor.new("Bright yellow")
o35.Position = Vector3.new(-18.1899929, 7.10991478, 19.2049961)
o35.Rotation = Vector3.new(-0, 0, -90)
o35.Anchored = true
o35.Size = Vector3.new(1, 1.20000005, 0.610000014)
o35.CFrame = CFrame.new(-18.1899929, 7.10991478, 19.2049961, 0, 1, 0, -1, 0, 0, 0, 0, 1)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.960784, 0.803922, 0.188235)
o36.Parent = o1
o36.Material = Enum.Material.Metal
o36.BrickColor = BrickColor.new("Bright yellow")
o36.Position = Vector3.new(-18.1899929, 6.10991478, 18.614996)
o36.Rotation = Vector3.new(-0, 0, -90)
o36.Anchored = true
o36.Size = Vector3.new(1, 1.20000005, 1.79000008)
o36.CFrame = CFrame.new(-18.1899929, 6.10991478, 18.614996, 0, 1, 0, -1, 0, 0, 0, 0, 1)
o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.960784, 0.803922, 0.188235)
o37.Name = "SAW"
o37.Parent = o1
o37.Material = Enum.Material.Metal
o37.BrickColor = BrickColor.new("Dark stone grey")
o37.Reflectance = 0.5
o37.Position = Vector3.new(-16.2899876, 3.81000805, 24.0099964)
o37.Rotation = Vector3.new(180, 90, 0)
o37.Anchored = true
o37.CanCollide = false
o37.FormFactor = Enum.FormFactor.Plate
o37.Size = Vector3.new(1, 0.400000006, 3)
o37.CFrame = CFrame.new(-16.2899876, 3.81000805, 24.0099964, 0, 0, 1, 0, -1, 0, 1, 0, 0)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Color = Color3.new(0.388235, 0.372549, 0.384314)
o38.Parent = o1
o38.Material = Enum.Material.Metal
o38.BrickColor = BrickColor.new("Bright yellow")
o38.Position = Vector3.new(-14.3899822, 7.10991478, 19.409996)
o38.Rotation = Vector3.new(-0, 0, 90)
o38.Anchored = true
o38.Size = Vector3.new(1, 1.20000005, 0.200000003)
o38.CFrame = CFrame.new(-14.3899822, 7.10991478, 19.409996, 0, -1, 0, 1, 0, 0, 0, 0, 1)
o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.960784, 0.803922, 0.188235)
o39.Parent = o1
o39.Material = Enum.Material.Metal
o39.BrickColor = BrickColor.new("Bright yellow")
o39.Position = Vector3.new(-18.7899933, 6.00991678, 23.5099964)
o39.Anchored = true
o39.Size = Vector3.new(2, 4.80000019, 8)
o39.CFrame = CFrame.new(-18.7899933, 6.00991678, 23.5099964, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.960784, 0.803922, 0.188235)
o40.Parent = o39
o41.Parent = o1
o41.Material = Enum.Material.Metal
o41.BrickColor = BrickColor.new("Bright yellow")
o41.Position = Vector3.new(-13.2899876, 6.00991678, 18.0149956)
o41.Anchored = true
o41.Size = Vector3.new(1, 4.80000019, 2.99000025)
o41.CFrame = CFrame.new(-13.2899876, 6.00991678, 18.0149956, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.960784, 0.803922, 0.188235)
o42.Parent = o1
o42.Material = Enum.Material.Metal
o42.BrickColor = BrickColor.new("Bright yellow")
o42.Position = Vector3.new(-16.2899876, 1.81000996, 24.3549957)
o42.Anchored = true
o42.Size = Vector3.new(3, 1.20000005, 14.3100004)
o42.CFrame = CFrame.new(-16.2899876, 1.81000996, 24.3549957, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o42.Color = Color3.new(0.960784, 0.803922, 0.188235)
o43.Parent = o42
o44.Parent = o1
o44.Material = Enum.Material.Metal
o44.BrickColor = BrickColor.new("Bright yellow")
o44.Position = Vector3.new(-18.1899929, 5.10993004, 18.3049965)
o44.Rotation = Vector3.new(-0, 0, -90)
o44.Anchored = true
o44.Size = Vector3.new(1, 1.20000005, 2.41000009)
o44.CFrame = CFrame.new(-18.1899929, 5.10993004, 18.3049965, 0, 1, 0, -1, 0, 0, 0, 0, 1)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.960784, 0.803922, 0.188235)
o45.Parent = o1
o45.Material = Enum.Material.Metal
o45.Position = Vector3.new(-16.2899876, 6.10993004, 19.8399963)
o45.Anchored = true
o45.CanCollide = false
o45.FormFactor = Enum.FormFactor.Symmetric
o45.Size = Vector3.new(3, 5, 0.200000003)
o45.CFrame = CFrame.new(-16.2899876, 6.10993004, 19.8399963, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Parent = o1
o46.Material = Enum.Material.Metal
o46.BrickColor = BrickColor.new("Bright yellow")
o46.Position = Vector3.new(-14.3899822, 6.10991478, 18.9749966)
o46.Rotation = Vector3.new(-0, 0, 90)
o46.Anchored = true
o46.Size = Vector3.new(1, 1.20000005, 1.07000005)
o46.CFrame = CFrame.new(-14.3899822, 6.10991478, 18.9749966, 0, -1, 0, 1, 0, 0, 0, 0, 1)
o46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.960784, 0.803922, 0.188235)
o47.Parent = o1
o47.Material = Enum.Material.Metal
o47.BrickColor = BrickColor.new("Bright yellow")
o47.Position = Vector3.new(-16.2899876, 3.01000595, 22.0049973)
o47.Velocity = Vector3.new(0, 0, 10)
o47.Anchored = true
o47.Size = Vector3.new(7, 1.20000005, 11.0100002)
o47.CFrame = CFrame.new(-16.2899876, 3.01000595, 22.0049973, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o47.Color = Color3.new(0.960784, 0.803922, 0.188235)
o48.Parent = o47
o49.Parent = o1
o49.Material = Enum.Material.Metal
o49.BrickColor = BrickColor.new("Bright yellow")
o49.Position = Vector3.new(-14.3899822, 5.10993004, 18.5749969)
o49.Rotation = Vector3.new(-0, 0, 90)
o49.Anchored = true
o49.Size = Vector3.new(1, 1.20000005, 1.87000012)
o49.CFrame = CFrame.new(-14.3899822, 5.10993004, 18.5749969, 0, -1, 0, 1, 0, 0, 0, 0, 1)
o49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o49.Color = Color3.new(0.960784, 0.803922, 0.188235)
o50.Name = "TPPART"
o50.Parent = o1
o50.Transparency = 1
o50.Position = Vector3.new(-16.3199883, 6.54012489, 18.1499977)
o50.Anchored = true
o50.CanCollide = false
o50.Size = Vector3.new(1.6400001, 1, 2)
o50.CFrame = CFrame.new(-16.3199883, 6.54012489, 18.1499977, 1, 0, 0, 0, 1, 0, 0, 0, 1)
bin = o1.SAW
function onTouched(hit)
	if hit.Name ~= "notme" then
	hit:BreakJoints()
	end
	if hit.formFactor ~= 2 and hit.Name ~= "notme" then
		hit.formFactor = 2
		hit.Size = Vector3.new(1,.4,1)
		gorayy = Instance.new("Sound")
gorayy.Parent = o1
gorayy.SoundId = "rbxassetid://559523758"
gorayy:Play()					o1g = Instance.new("Sound")
		o1g.Parent = hit
		o1g.SoundId = "rbxassetid://429400881"
		o1g:Play()
		wait(1.7)
		for i=1,5 do
					o1g = Instance.new("Sound")
		o1g.Parent = hit
		o1g.SoundId = "rbxassetid://429400881"
		o1g:Play()
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = o1
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.3,.3,.3)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
	end
end 

connection = bin.Touched:connect(onTouched)
for i=1,#cors do
coroutine.resume(cors[i])
end
o1.Parent = workspace
o1:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(10,0,10))
game.Players[Victim].Character.Humanoid.WalkSpeed = 0
game.Players[Victim].Character.Humanoid.JumpPower = 0
game.Players[Victim].Character.HumanoidRootPart.CFrame = o1.TPPART.CFrame
wait(10)
o1:Destroy()
end)

M9B.MouseButton1Click:connect(function()
	--M9 Bayonet by DMS 
CustomColor = "Navy blue"
Electric = true
Flaming = false
--Keep only one on otherwise it looks ugly ok
o1 = Instance.new("Tool")
o2 = Instance.new("Animation")
o3 = Instance.new("Animation")
o4 = Instance.new("Animation")
o5 = Instance.new("Part")
o6 = Instance.new("SpecialMesh")
o7 = Instance.new("Part")
o8 = Instance.new("Sound")
o9 = Instance.new("Sound")
o10 = Instance.new("Weld")
o12 = Instance.new("Part")
o13 = Instance.new("BlockMesh")
o14 = Instance.new("Part")
o15 = Instance.new("SpecialMesh")
o16 = Instance.new("Part")
o17 = Instance.new("BlockMesh")
o18 = Instance.new("Part")
o19 = Instance.new("BlockMesh")
o20 = Instance.new("Part")
o21 = Instance.new("BlockMesh")
o22 = Instance.new("Part")
o23 = Instance.new("SpecialMesh")
o24 = Instance.new("Part")
o25 = Instance.new("BlockMesh")
o26 = Instance.new("Part")
o27 = Instance.new("SpecialMesh")
o28 = Instance.new("Part")
o29 = Instance.new("BlockMesh")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("Part")
o33 = Instance.new("SpecialMesh")
o34 = Instance.new("Part")
o35 = Instance.new("BlockMesh")
o36 = Instance.new("Part")
o37 = Instance.new("BlockMesh")
o38 = Instance.new("Part")
o39 = Instance.new("BlockMesh")
o40 = Instance.new("Part")
o41 = Instance.new("SpecialMesh")
o42 = Instance.new("Part")
o43 = Instance.new("SpecialMesh")
o44 = Instance.new("Part")
o45 = Instance.new("BlockMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Part")
o49 = Instance.new("SpecialMesh")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Part")
o53 = Instance.new("BlockMesh")
o54 = Instance.new("Part")
o55 = Instance.new("SpecialMesh")
o56 = Instance.new("Part")
o57 = Instance.new("SpecialMesh")
o58 = Instance.new("Part")
o59 = Instance.new("BlockMesh")
o60 = Instance.new("Part")
o61 = Instance.new("BlockMesh")
o62 = Instance.new("Part")
o63 = Instance.new("BlockMesh")
o64 = Instance.new("Part")
o65 = Instance.new("BlockMesh")
o66 = Instance.new("Part")
o67 = Instance.new("SpecialMesh")
o68 = Instance.new("Part")
o69 = Instance.new("SpecialMesh")
o70 = Instance.new("Part")
o71 = Instance.new("SpecialMesh")
o72 = Instance.new("Part")
o73 = Instance.new("SpecialMesh")
o74 = Instance.new("Part")
o75 = Instance.new("SpecialMesh")
o76 = Instance.new("Part")
o77 = Instance.new("SpecialMesh")
o78 = Instance.new("Part")
o79 = Instance.new("SpecialMesh")
o80 = Instance.new("Part")
o81 = Instance.new("SpecialMesh")
o1.Name = "M9 Bayonet"
o1.Parent = game.Players.LocalPlayer.Backpack
o1.GripForward = Vector3.new(-1.74845553e-007, -0, 1)
o1.GripPos = Vector3.new(0.487703323, -3.7742065e-010, 0.00863459334)
o1.GripRight = Vector3.new(0, -1, -0)
o1.GripUp = Vector3.new(-1, 0, -1.74845553e-007)
o1.CanBeDropped = false
o2.Name = "Whack"
o2.Parent = o1
o2.AnimationId = "http://www.roblox.com/Asset?ID=94161088"
o3.Name = "Chop"
o3.Parent = o1
o3.AnimationId = "rbxassetid://32659699"
o4.Name = "Slice"
o4.Parent = o1
o4.AnimationId = "rbxassetid://28090109"
o5.Name = "CHOPPART"
if Flaming == true then
	h = Instance.new("Fire")
	h.Parent = o5
	o1hj = Instance.new("Sound")
	o1hj.Parent = o5
	o1hj.SoundId = "rbxassetid://516449725"
end
o5.Parent = o1
o5.Material = Enum.Material.Concrete
o5.BrickColor = BrickColor.new("Flint")
o5.Transparency = 0.0099999997764826
o5.Rotation = Vector3.new(-90, 0, -0.00945380423)
o5.Anchored = true
o5.FormFactor = Enum.FormFactor.Custom
o5.Size = Vector3.new(0.255101323, 0.344200104, 2.08510137)
o5.CFrame = CFrame.new(-21.315691, 2.52215576, -59.9679756, 1, 0.000165000005, 0, 0, 0, 1, 0.000165000005, -1, 0)
o5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o5.Color = Color3.new(0.411765, 0.4, 0.360784)
o6.Parent = o5
o6.MeshId = "rbxassetid://432983174"
o6.Offset = Vector3.new(0, 0.0299999993, -0.5)
o6.Scale = Vector3.new(0.00100000005, 0.00230000005, 0.00230000005)
o6.MeshType = Enum.MeshType.FileMesh
o7.Name = "Handle"
o7.Parent = o1
o7.BrickColor = BrickColor.new("Black")
o7.Transparency = 1
o7.Rotation = Vector3.new(-2.1344531e-006, 0, -90)
o7.Size = Vector3.new(0.200000003, 1, 0.200000003)
o7.CFrame = CFrame.new(-21.3078709, 1.4734453, -59.7259827, 0, 1, 0, -0.999991179, 0, 3.7252903e-008, 2.98023224e-008, 0, 0.999991179)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.105882, 0.164706, 0.207843)
o8.Name = "SlashSound"
o8.Parent = o7
o8.SoundId = "rbxassetid://101164100"
o8.Volume = 1
o9.Name = "Hit"
o9.Parent = o7
o9.SoundId = "rbxassetid://214755079"
o9.Volume = 1
o10.Parent = o7
o10.C1 = CFrame.new(0, 0, 0, 1, 0, 7.4506481e-009, 0, 1, 0, -7.4506481e-009, 0, 1)
o10.Part0 = o7
o10.Part1 = o7
o12.Parent = o1
o12.Material = Enum.Material.SmoothPlastic
o12.BrickColor = BrickColor.new("Really black")
o12.Rotation = Vector3.new(-0, -90, 0)
o12.Anchored = true
o12.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o12.CFrame = CFrame.new(-21.312376, 1.58790338, -59.834362, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o13.Parent = o12
o13.Scale = Vector3.new(2.02485824, 0.153108358, 1.37797523)
o14.Parent = o1
o14.Material = Enum.Material.SmoothPlastic
o14.BrickColor = BrickColor.new("Really black")
o14.Rotation = Vector3.new(90, -90, 0)
o14.Anchored = true
o14.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o14.CFrame = CFrame.new(-21.1625919, 1.58790338, -59.5406799, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Parent = o14
o15.Scale = Vector3.new(0.153108373, 0.306216687, 0.306216687)
o15.MeshType = Enum.MeshType.Cylinder
o16.Parent = o1
o16.Material = Enum.Material.SmoothPlastic
o16.BrickColor = BrickColor.new("Really black")
o16.Rotation = Vector3.new(-0, -45.0000038, -0)
o16.Anchored = true
o16.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o16.CFrame = CFrame.new(-21.2726593, 1.54135716, -60.071785, 0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, 0.707106829)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o16.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o17.Parent = o16
o17.Scale = Vector3.new(0.539707005, 0.153108358, 1.01051521)
o18.Parent = o1
o18.Material = Enum.Material.SmoothPlastic
o18.BrickColor = BrickColor.new("Really black")
o18.Rotation = Vector3.new(-180, -45.0000038, -180)
o18.Anchored = true
o18.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o18.CFrame = CFrame.new(-21.351347, 1.54135716, -60.071785, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o18.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o19.Parent = o18
o19.Scale = Vector3.new(0.535879314, 0.153108358, 1.0066874)
o20.Parent = o1
o20.Material = Enum.Material.SmoothPlastic
o20.BrickColor = BrickColor.new("Really black")
o20.Rotation = Vector3.new(-0, -90, 0)
o20.Anchored = true
o20.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o20.CFrame = CFrame.new(-21.3123779, 1.58790338, -59.5256996, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o21.Parent = o20
o21.Scale = Vector3.new(0.183730066, 0.153108358, 1.07175839)
o22.Parent = o1
o22.Material = Enum.Material.SmoothPlastic
o22.BrickColor = BrickColor.new("Really black")
o22.Rotation = Vector3.new(90, -90, 0)
o22.Anchored = true
o22.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o22.CFrame = CFrame.new(-21.312376, 1.54135716, -60.3537903, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o23.Parent = o22
o23.Scale = Vector3.new(0.153108373, 1.22486687, 1.37797523)
o23.MeshType = Enum.MeshType.Cylinder
o24.Parent = o1
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Really black")
o24.Rotation = Vector3.new(-0, -90, 0)
o24.Anchored = true
o24.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o24.CFrame = CFrame.new(-21.312376, 1.54135716, -59.834362, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o25.Parent = o24
o25.Scale = Vector3.new(2.02485824, 0.153108358, 1.37797523)
o26.Parent = o1
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Really black")
o26.Rotation = Vector3.new(90, -90, 0)
o26.Anchored = true
o26.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o26.CFrame = CFrame.new(-21.1625919, 1.54135716, -59.5406799, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o27.Parent = o26
o27.Scale = Vector3.new(0.153108373, 0.306216687, 0.306216687)
o27.MeshType = Enum.MeshType.Cylinder
o28.Parent = o1
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Really black")
o28.Rotation = Vector3.new(-0, -90, 0)
o28.Anchored = true
o28.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o28.CFrame = CFrame.new(-21.3123779, 1.54135716, -59.5256996, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o29.Parent = o28
o29.Scale = Vector3.new(0.183730066, 0.153108358, 1.07175839)
o30.Parent = o1
o30.Material = Enum.Material.SmoothPlastic
o30.BrickColor = BrickColor.new("Really black")
o30.Rotation = Vector3.new(-180, -45.0000038, -180)
o30.Anchored = true
o30.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o30.CFrame = CFrame.new(-21.3210773, 1.54135716, -60.1020546, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o31.Parent = o30
o31.Scale = Vector3.new(0.84209609, 0.153108358, 1.0066874)
o32.Parent = o1
o32.Material = Enum.Material.SmoothPlastic
o32.BrickColor = BrickColor.new("Really black")
o32.Rotation = Vector3.new(90, -90, 0)
o32.Anchored = true
o32.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o32.CFrame = CFrame.new(-21.462162, 1.54135716, -59.5406837, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o33.Parent = o32
o33.Scale = Vector3.new(0.153108373, 0.306216687, 0.306216687)
o33.MeshType = Enum.MeshType.Cylinder
o34.Parent = o1
o34.Material = Enum.Material.SmoothPlastic
o34.BrickColor = BrickColor.new("Really black")
o34.Rotation = Vector3.new(-180, -45.0000038, -180)
o34.Anchored = true
o34.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o34.CFrame = CFrame.new(-21.351347, 1.58790338, -60.071785, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829)
o34.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o34.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o34.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o34.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o34.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o34.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o34.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o35.Parent = o34
o35.Scale = Vector3.new(0.535879314, 0.153108358, 1.0066874)
o36.Parent = o1
o36.Material = Enum.Material.SmoothPlastic
o36.BrickColor = BrickColor.new("Really black")
o36.Rotation = Vector3.new(-0, -45.0000038, -0)
o36.Anchored = true
o36.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o36.CFrame = CFrame.new(-21.2726593, 1.58790338, -60.071785, 0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, 0.707106829)
o36.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o36.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o36.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o36.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o36.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o36.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o36.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o37.Parent = o36
o37.Scale = Vector3.new(0.539707005, 0.153108358, 1.01051521)
o38.Parent = o1
o38.Material = Enum.Material.SmoothPlastic
o38.BrickColor = BrickColor.new("Really black")
o38.Rotation = Vector3.new(-180, -45.0000038, -180)
o38.Anchored = true
o38.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o38.CFrame = CFrame.new(-21.3210773, 1.58790338, -60.1020546, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829)
o38.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o38.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o38.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o38.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o38.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o38.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o38.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o39.Parent = o38
o39.Scale = Vector3.new(0.84209609, 0.153108358, 1.0066874)
o40.Parent = o1
o40.Material = Enum.Material.SmoothPlastic
o40.BrickColor = BrickColor.new("Really black")
o40.Rotation = Vector3.new(90, -90, 0)
o40.Anchored = true
o40.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o40.CFrame = CFrame.new(-21.312376, 1.58790338, -60.3537903, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o40.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o40.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o40.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o40.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o40.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o40.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o40.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o41.Parent = o40
o41.Scale = Vector3.new(0.153108373, 1.22486687, 1.37797523)
o41.MeshType = Enum.MeshType.Cylinder
o42.Parent = o1
o42.Material = Enum.Material.SmoothPlastic
o42.BrickColor = BrickColor.new("Really black")
o42.Rotation = Vector3.new(90, -90, 0)
o42.Anchored = true
o42.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o42.CFrame = CFrame.new(-21.462162, 1.58790338, -59.5406837, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o42.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o42.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o42.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o42.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o42.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o42.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o42.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o43.Parent = o42
o43.Scale = Vector3.new(0.153108373, 0.306216687, 0.306216687)
o43.MeshType = Enum.MeshType.Cylinder
o44.Parent = o1
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Really black")
o44.Rotation = Vector3.new(-0, -90, 0)
o44.Anchored = true
o44.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o44.CFrame = CFrame.new(-21.312376, 1.58790338, -59.834362, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o45.Parent = o44
o45.Scale = Vector3.new(2.02485824, 0.153108358, 1.37797523)
o46.Parent = o1
o46.Material = Enum.Material.SmoothPlastic
o46.BrickColor = BrickColor.new("Really black")
o46.Rotation = Vector3.new(-0, -90, 0)
o46.Anchored = true
o46.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o46.CFrame = CFrame.new(-21.3123779, 1.58790338, -59.5256996, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o47.Parent = o46
o47.Scale = Vector3.new(0.183730066, 0.153108358, 1.07175839)
o48.Parent = o1
o48.Material = Enum.Material.SmoothPlastic
o48.BrickColor = BrickColor.new("Really black")
o48.Rotation = Vector3.new(90, -90, 0)
o48.Anchored = true
o48.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o48.CFrame = CFrame.new(-21.1625919, 1.58790338, -59.5406799, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o49.Parent = o48
o49.Scale = Vector3.new(0.153108373, 0.306216687, 0.306216687)
o49.MeshType = Enum.MeshType.Cylinder
o50.Parent = o1
o50.Material = Enum.Material.SmoothPlastic
o50.BrickColor = BrickColor.new("Really black")
o50.Rotation = Vector3.new(90, -90, 0)
o50.Anchored = true
o50.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o50.CFrame = CFrame.new(-21.1625919, 1.54135716, -59.5406799, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o51.Parent = o50
o51.Scale = Vector3.new(0.153108373, 0.306216687, 0.306216687)
o51.MeshType = Enum.MeshType.Cylinder
o52.Parent = o1
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Really black")
o52.Rotation = Vector3.new(-0, -45.0000038, -0)
o52.Anchored = true
o52.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o52.CFrame = CFrame.new(-21.2726593, 1.54135716, -60.071785, 0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, 0.707106829)
o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o53.Parent = o52
o53.Scale = Vector3.new(0.539707005, 0.153108358, 1.01051521)
o54.Parent = o1
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Really black")
o54.Rotation = Vector3.new(90, -90, 0)
o54.Anchored = true
o54.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o54.CFrame = CFrame.new(-21.312376, 1.54135716, -60.3537903, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Parent = o54
o55.Scale = Vector3.new(0.153108373, 1.22486687, 1.37797523)
o55.MeshType = Enum.MeshType.Cylinder
o56.Parent = o1
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Really black")
o56.Rotation = Vector3.new(90, -90, 0)
o56.Anchored = true
o56.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o56.CFrame = CFrame.new(-21.462162, 1.54135716, -59.5406837, 0, 0, -1, -1, 0, 0, 0, 1, 0)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o57.Parent = o56
o57.Scale = Vector3.new(0.153108373, 0.306216687, 0.306216687)
o57.MeshType = Enum.MeshType.Cylinder
o58.Parent = o1
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Really black")
o58.Rotation = Vector3.new(-180, -45.0000038, -180)
o58.Anchored = true
o58.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o58.CFrame = CFrame.new(-21.3210773, 1.54135716, -60.1020546, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829)
o58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Parent = o58
o59.Scale = Vector3.new(0.84209609, 0.153108358, 1.0066874)
o60.Parent = o1
o60.Material = Enum.Material.SmoothPlastic
o60.BrickColor = BrickColor.new("Really black")
o60.Rotation = Vector3.new(-180, -45.0000038, -180)
o60.Anchored = true
o60.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o60.CFrame = CFrame.new(-21.351347, 1.54135716, -60.071785, -0.707106829, 0, -0.707106829, 0, 1, 0, 0.707106829, 0, -0.707106829)
o60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o61.Parent = o60
o61.Scale = Vector3.new(0.535879314, 0.153108358, 1.0066874)
o62.Parent = o1
o62.Material = Enum.Material.SmoothPlastic
o62.BrickColor = BrickColor.new("Really black")
o62.Rotation = Vector3.new(-0, -90, 0)
o62.Anchored = true
o62.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o62.CFrame = CFrame.new(-21.3123779, 1.54135716, -59.5256996, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o63.Parent = o62
o63.Scale = Vector3.new(0.183730066, 0.153108358, 1.07175839)
o64.Parent = o1
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Really black")
o64.Rotation = Vector3.new(-0, -90, 0)
o64.Anchored = true
o64.Size = Vector3.new(0.279509991, 0.279509991, 0.279509991)
o64.CFrame = CFrame.new(-21.312376, 1.54135716, -59.834362, 0, 0, -1, 0, 1, 0, 1, 0, 0)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o65.Parent = o64
o65.Scale = Vector3.new(2.02485824, 0.153108358, 1.37797523)
o66.Parent = o1
o66.Material = Enum.Material.SmoothPlastic
o66.BrickColor = BrickColor.new("Really black")
o66.Rotation = Vector3.new(-180, 0, 90)
o66.Anchored = true
o66.CanCollide = false
o66.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o66.CFrame = CFrame.new(-21.3107891, 1.08540177, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o67.Parent = o66
o67.Scale = Vector3.new(1.17615056, 1.3570981, 1.35709929)
o67.MeshType = Enum.MeshType.Cylinder
o68.Parent = o1
o68.Material = Enum.Material.SmoothPlastic
o68.BrickColor = BrickColor.new("Really black")
o68.Rotation = Vector3.new(-180, 0, 90)
o68.Anchored = true
o68.CanCollide = false
o68.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o68.CFrame = CFrame.new(-21.3107891, 0.763552666, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o69.Parent = o68
o69.Scale = Vector3.new(1.17615056, 1.3570981, 1.35709929)
o69.MeshType = Enum.MeshType.Cylinder
o70.Parent = o1
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Really black")
o70.Rotation = Vector3.new(-180, 0, 90)
o70.Anchored = true
o70.CanCollide = false
o70.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o70.CFrame = CFrame.new(-21.3107891, 0.522178769, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o71.Parent = o70
o71.Scale = Vector3.new(0.723784804, 1.53804433, 1.53804588)
o71.MeshType = Enum.MeshType.Cylinder
o72.Parent = o1
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Really black")
o72.Rotation = Vector3.new(-180, 0, 90)
o72.Anchored = true
o72.CanCollide = false
o72.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o72.CFrame = CFrame.new(-21.3107891, 1.568174, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o73.Parent = o72
o73.Scale = Vector3.new(0.0904731303, 1.17615163, 1.17615271)
o73.MeshType = Enum.MeshType.Cylinder
o74.Parent = o1
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Really black")
o74.Rotation = Vector3.new(-180, 0, 90)
o74.Anchored = true
o74.CanCollide = false
o74.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o74.CFrame = CFrame.new(-21.3107891, 0.499189973, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o75.Parent = o74
o75.Scale = Vector3.new(0.723784685, 1.71899068, 1.71899259)
o75.MeshType = Enum.MeshType.Cylinder
o76.Parent = o1
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Really black")
o76.Rotation = Vector3.new(-180, 0, 90)
o76.Anchored = true
o76.CanCollide = false
o76.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o76.CFrame = CFrame.new(-21.3107891, 1.40724885, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o77.Parent = o76
o77.Scale = Vector3.new(1.17615056, 1.3570981, 1.35709929)
o77.MeshType = Enum.MeshType.Cylinder
o78.Parent = o1
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Really black")
o78.Rotation = Vector3.new(-180, 0, 90)
o78.Anchored = true
o78.CanCollide = false
o78.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o78.CFrame = CFrame.new(-21.3107891, 0.924476743, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o79.Parent = o78
o79.Scale = Vector3.new(0.0904731303, 1.17615163, 1.17615271)
o79.MeshType = Enum.MeshType.Cylinder
o80.Parent = o1
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Really black")
o80.Rotation = Vector3.new(-180, 0, 90)
o80.Anchored = true
o80.CanCollide = false
o80.Size = Vector3.new(0.254099995, 0.254099995, 0.254099995)
o80.CFrame = CFrame.new(-21.3107891, 1.24632478, -59.9623756, 0, -1, 0, -1, 0, 0, 0, 0, -1)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o81.Parent = o80
o81.Scale = Vector3.new(0.0904731303, 1.17615163, 1.17615271)
o81.MeshType = Enum.MeshType.Cylinder
function Equipped()
for i,v in pairs (o1:GetChildren()) do
	if v:IsA("Animation")or v:IsA("LocalScript") then
	else
	if v.Name ~= "CHOPPART" then
			v.BrickColor = BrickColor.new(CustomColor)
	else
	end
	v.Anchored = false
	end
end
end
for i,v in pairs (o1:GetChildren()) do
	if v:IsA("Animation")or v:IsA("LocalScript") then
	else
	if v.Name ~= "CHOPPART" then
			v.BrickColor = BrickColor.new(CustomColor)
	else end
	end
end
if Electric == true then
klk = Instance.new("Part")
kasd = Instance.new("BlockMesh")
o3 = Instance.new("Sound")
o4 = Instance.new("ParticleEmitter")
klk.Parent = o1
klk.Material = Enum.Material.Metal
klk.BrickColor = BrickColor.new("Smoky grey")
klk.Position = Vector3.new(-21.3253803, 2.08690095, -59.9731712)
klk.Size = Vector3.new(0.200000003, 1, 0.200000003)
klk.CFrame = CFrame.new(-21.3253803, 2.08690095, -59.9731712, 1, 0, 0, 0, 1, 0, 0, 0, 1)
klk.BackSurface = Enum.SurfaceType.SmoothNoOutlines
klk.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
klk.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
klk.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
klk.RightSurface = Enum.SurfaceType.SmoothNoOutlines
klk.TopSurface = Enum.SurfaceType.SmoothNoOutlines
klk.Color = Color3.new(0.356863, 0.364706, 0.411765)
kasd.Parent = klk
kasd.Scale = Vector3.new(0.100000001, 1, 1)
o3.Parent = klk
o3.SoundId = "rbxassetid://277635663"
o3.Volume = 0.10000000149012
o3.Looped = true o3:Play()
o4.Parent = klk
o4.Transparency = NumberSequence.new(0.80000001192093,0.80000001192093)
o4.Size = NumberSequence.new(0.20000000298023,0.20000000298023)
o4.Color = ColorSequence.new(Color3.new(0.921569, 1, 0.0470588),Color3.new(0.153018, 0.0780643, 0.580257))
o4.Acceleration = Vector3.new(2, -20, 1)
o4.Rate = 10
end
repeat wait() until o1:FindFirstChild("Handle")

local Welds = {}

function ClearOldWelds(tbl)
	for _,v in pairs(tbl) do
		if v:IsA('Weld') then
			v:Destroy()
		end
	end
end

function Equipped()
	if Flaming == true then o1hj:Play()end
	if Electric == true then
	o3:Play()end
for i,v in pairs (o1:GetChildren()) do
	if v:IsA("Animation")or v:IsA("LocalScript") then
		else
	v.Anchored = false
end
end
	local Handle = o1:FindFirstChild('Handle')
	if not Handle then return end
	local tble = Handle:GetChildren()
	for _,v in pairs(o1:GetChildren()) do
		if v:IsA('Part') or v:IsA('WedgePart') and v ~= Handle then
			local c1
			for _1,v1 in pairs(Welds) do
				if _1 == v then
					c1 = v1
					break
				end
			end
			
			if not c1 then
				Welds[v] = v.CFrame:inverse()*Handle.CFrame
				v.Anchored = true
				c1 = Welds[v]
			end
			
			local Weld = Instance.new('Weld')
			Weld.Part0 = Handle
			Weld.Part1 = v
			Weld.C0 = CFrame.new()
			Weld.C1 = c1
			Weld.Parent = Handle
			
		end
	end
	ClearOldWelds(tble)
	Handle.Anchored=false
end

Equipped()
o1.Equipped:connect(Equipped)








Tool = o1
Handle = Tool:WaitForChild("Handle")

Players = game:GetService("Players")
Debris = game:GetService("Debris")
InsertService = game:GetService("InsertService")
function onEquipped(mouse2)
	mouse2.KeyDown:connect(onkeyDown)
	mouse = mouse2
end
o1.Equipped:connect(onEquipped)
WhackAnim = Tool:WaitForChild("Whack")
ChopAnim = Tool:WaitForChild("Chop")
SliceAnim = Tool:WaitForChild("Slice")
SlashSound = Handle:WaitForChild("SlashSound")
HitSound = Handle:WaitForChild("Hit")

Damage = 10 

ReloadTime = .4

Kills = 0 

function TagHumanoid(humanoid, player) --registers you actually Hitting the guy
	HitSound:Play()
	local Creator_Tag = Instance.new("ObjectValue")
	Creator_Tag.Name = "creator"
	Creator_Tag.Value = player
	Debris:AddItem(Creator_Tag, 2)
	Creator_Tag.Parent = humanoid
end
function onkeyDown(key) 
		if Tool.Enabled then
	if key == "q" then
		Slice = Humanoid:LoadAnimation(SliceAnim)
		if Slice then
			Slice:Play()
			SlashSound:Play()
			wait(1)
			SlashSound:Play()
		end
		Tool.Enabled = true
		end
		end
		
				if Tool.Enabled then
	if key == "e" then
		Chop = Humanoid:LoadAnimation(ChopAnim)
		if Chop then
			Chop:Play()
			SlashSound:Play()
		end
		Tool.Enabled = true
		end
	end
end

function UntagHumanoid(humanoid)
	for i, v in pairs(humanoid:GetChildren()) do
		if v:IsA("ObjectValue") and v.Name == "creator" then
			v:Destroy()
		end
	end
end

function Blow(Hit)
	if Hit.Name == "Head" then
		Hit.Anchored= false Hit.Size = Vector3.new(2, 0.2, 1)
		Hit.BrickColor = BrickColor.new("Maroon")
		o1 = Instance.new("Sound")
		o1.Parent = Hit
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()
	end
		if Hit.Name == "Right Arm" then
o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(1, 2, 1)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(1, 2, 1)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				if Hit.Name == "Right Leg" then
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(1, 2, 1)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				
				if Hit.Name == "Left Leg" then
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.Position = Hit.Position
o11.BrickColor = BrickColor.new("Maroon")
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(1, 2, 1)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
								if Hit.Name == "Torso" then
		o11 = Instance.new("Part")
o2 = Instance.new("Part")
o2.Name = "GOREPART"
o2.Position = Hit.Position
o2.Parent = workspace
o2.BrickColor = BrickColor.new("Maroon")
o2.Rotation = Vector3.new(-180, 1.29089832, 180)
o2.CanCollide = true
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Size = Vector3.new(2, 1, 1)
o2.LeftSurface = Enum.SurfaceType.Weld
o2.RightSurface = Enum.SurfaceType.Weld
o2.Color = Color3.new(0.105882, 0.164706, 0.207843)
o1 = Instance.new("Part")
o1.Name = "GOREPART"
o1.Parent = workspace
o1.Position = Hit.Position
o1.BrickColor = BrickColor.new("Maroon")
o1.Rotation = Vector3.new(-180, 1.29089832, 180)
o1.CanCollide = true
o1.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o1.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o1.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o1.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o1.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o1.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o1.Size = Vector3.new(2, 1, 1)
o1.Position = Hit.Position
o1.LeftSurface = Enum.SurfaceType.Weld
o1.RightSurface = Enum.SurfaceType.Weld
o1.Color = Color3.new(0.105882, 0.164706, 0.207843)


Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

	end --registers the Hit, deals damage to the player, and if the humanoid has 0 health a kill is added into the killstreak.
	if Hit and Hit.Parent then
		local character = Hit.Parent
		local humanoid = character:FindFirstChild("Humanoid")
		if Humanoid and Humanoid ~= humanoid and humanoid and Humanoid.Health > 0 and humanoid.Health > 0 then
			local Right_Arm = Character:FindFirstChild("Right Arm")
			if Right_Arm then
				local Joint = Right_Arm:FindFirstChild("RightGrip")
				if (Joint and (Joint.Part0 == Handle or Joint.Part1 == Handle)) then
					humanoid:TakeDamage(Damage) --deal regular damage or instakill normal health players if a ninja
					UntagHumanoid(humanoid)
					TagHumanoid(humanoid, Player)
				end
			end
		end
	end
end

function Activated() --when you swing
	if Tool.Enabled then
		Tool.Enabled = false 
		Whack = Humanoid:LoadAnimation(WhackAnim)
		if Whack then
			Whack:Play()
			SlashSound:Play()
		end
		wait(ReloadTime)
		Tool.Enabled = true
	end
end

function Equipped(mouse) --get everything settled up
	Character = Tool.Parent
	Player = Players:GetPlayerFromCharacter(Character)
	Humanoid = Character:FindFirstChild("Humanoid")
	Torso = Character:FindFirstChild("Torso")
	if not Humanoid or not Torso then
		return 	
	end
	
	if not Tool.Enabled then
		wait(ReloadTime)
		Tool.Enabled = true
	end
end

function Unequipped()
	if Flaming == true then o1hj:Stop()end
	if Electric == true then o3:Stop() end
	if Whack then
		Whack:Stop()
	end
		if Slice then
		Slice:Stop() 
		end
		if Chop then
		Chop:Stop() 
	end
end


Mouse_Icon = "rbxasset://textures/GunCursor.png"
Reloading_Icon = "rbxasset://textures/GunWaitCursor.png"

Tool = o1

Mouse = nil

function UpdateIcon()
	if Mouse then
		Mouse.Icon = Tool.Enabled and Mouse_Icon or Reloading_Icon
	end
end

function OnEquipped(ToolMouse)
	Mouse = ToolMouse
	UpdateIcon()
end

function OnChanged(Property)
	if Property == "Enabled" then
		UpdateIcon()
	end
end

Tool.Equipped:connect(OnEquipped)
Tool.Changed:connect(OnChanged)

Tool.Activated:connect(Activated)
Tool.Equipped:connect(Equipped)
Tool.Unequipped:connect(Unequipped)

Tool.CHOPPART.Touched:connect(Blow)
end)

Mossberg.MouseButton1Click:connect(function()
	--Mossberg 500 by MDS err DMS
local Shotgoonwooot = function(f,scri)
local oldenv = getfenv(f)
local newenv = setmetatable({}, {
__index = function(_, k)
if k:lower() == 'script' then
return scri
else
return oldenv[k]
end
end
})
setfenv(f, newenv)
ypcall(function() f() end)
end
cors = {}

o1 = Instance.new("Tool")
o2 = Instance.new("LocalScript")
o3 = Instance.new("LocalScript")
o4 = Instance.new("LocalScript")
o5 = Instance.new("NumberValue")
o6 = Instance.new("Part")
o7 = Instance.new("BlockMesh")
o8 = Instance.new("LocalScript")
o9 = Instance.new("NumberValue")
o10 = Instance.new("NumberValue")
o11 = Instance.new("NumberValue")
o12 = Instance.new("Script")
o13 = Instance.new("LocalScript")
o14 = Instance.new("LocalScript")
o15 = Instance.new("Part")
o16 = Instance.new("CylinderMesh")
o17 = Instance.new("Part")
o18 = Instance.new("SpecialMesh")
o19 = Instance.new("Part")
o20 = Instance.new("CylinderMesh")
o21 = Instance.new("Part")
o22 = Instance.new("SpecialMesh")
o23 = Instance.new("Part")
o24 = Instance.new("CylinderMesh")
o25 = Instance.new("Part")
o26 = Instance.new("BlockMesh")
o27 = Instance.new("Part")
o28 = Instance.new("SpecialMesh")
o29 = Instance.new("Part")
o30 = Instance.new("BlockMesh")
o31 = Instance.new("Part")
o32 = Instance.new("BlockMesh")
o33 = Instance.new("Part")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Part")
o36 = Instance.new("BlockMesh")
o37 = Instance.new("Part")
o38 = Instance.new("BlockMesh")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("Part")
o42 = Instance.new("CylinderMesh")
o43 = Instance.new("Part")
o44 = Instance.new("BlockMesh")
o45 = Instance.new("Part")
o46 = Instance.new("SpecialMesh")
o47 = Instance.new("Part")
o48 = Instance.new("SpecialMesh")
o49 = Instance.new("Part")
o50 = Instance.new("SpecialMesh")
o51 = Instance.new("Part")
o52 = Instance.new("BlockMesh")
o53 = Instance.new("Part")
o54 = Instance.new("BlockMesh")
o55 = Instance.new("Part")
o56 = Instance.new("BlockMesh")
o57 = Instance.new("Part")
o58 = Instance.new("SpecialMesh")
o59 = Instance.new("Part")
o60 = Instance.new("CylinderMesh")
o61 = Instance.new("Part")
o62 = Instance.new("BlockMesh")
o63 = Instance.new("Part")
o64 = Instance.new("BlockMesh")
o65 = Instance.new("Part")
o66 = Instance.new("BlockMesh")
o67 = Instance.new("Part")
o68 = Instance.new("SpecialMesh")
o69 = Instance.new("Part")
o70 = Instance.new("SpecialMesh")
o71 = Instance.new("Part")
o72 = Instance.new("SpecialMesh")
o73 = Instance.new("Part")
o74 = Instance.new("BlockMesh")
o75 = Instance.new("Part")
o76 = Instance.new("CylinderMesh")
o77 = Instance.new("Part")
o78 = Instance.new("BlockMesh")
o79 = Instance.new("Sound")
o80 = Instance.new("Sound")
o81 = Instance.new("Sound")
o82 = Instance.new("Sound")
o83 = Instance.new("Sound")
o85 = Instance.new("Part")
o86 = Instance.new("SpecialMesh")
o87 = Instance.new("Part")
o88 = Instance.new("CylinderMesh")
o89 = Instance.new("Part")
o90 = Instance.new("CylinderMesh")
o91 = Instance.new("Part")
o92 = Instance.new("BlockMesh")
o93 = Instance.new("Part")
o94 = Instance.new("CylinderMesh")
o95 = Instance.new("Part")
o96 = Instance.new("BlockMesh")
o97 = Instance.new("Part")
o98 = Instance.new("SpecialMesh")
o99 = Instance.new("Part")
o100 = Instance.new("BlockMesh")
o101 = Instance.new("Part")
o102 = Instance.new("SpecialMesh")
o103 = Instance.new("Part")
o104 = Instance.new("SpecialMesh")
o105 = Instance.new("Part")
o106 = Instance.new("BlockMesh")
o107 = Instance.new("Part")
o108 = Instance.new("SpecialMesh")
o109 = Instance.new("Part")
o110 = Instance.new("SpecialMesh")
o111 = Instance.new("Part")
o112 = Instance.new("SpecialMesh")
o113 = Instance.new("Part")
o114 = Instance.new("SpecialMesh")
o115 = Instance.new("Part")
o116 = Instance.new("SpecialMesh")
o117 = Instance.new("Part")
o118 = Instance.new("BlockMesh")
o119 = Instance.new("Part")
o120 = Instance.new("CylinderMesh")
o121 = Instance.new("Part")
o122 = Instance.new("CylinderMesh")
o123 = Instance.new("Part")
o124 = Instance.new("BlockMesh")
o125 = Instance.new("Part")
o126 = Instance.new("SpecialMesh")
o127 = Instance.new("Part")
o128 = Instance.new("SpecialMesh")
o129 = Instance.new("Part")
o130 = Instance.new("CylinderMesh")
o131 = Instance.new("Part")
o132 = Instance.new("CylinderMesh")
o133 = Instance.new("Part")
o134 = Instance.new("BlockMesh")
o135 = Instance.new("Part")
o136 = Instance.new("BlockMesh")
o137 = Instance.new("Part")
o138 = Instance.new("CylinderMesh")
o139 = Instance.new("Part")
o140 = Instance.new("BlockMesh")
o141 = Instance.new("Part")
o142 = Instance.new("CylinderMesh")
o143 = Instance.new("Part")
o144 = Instance.new("BlockMesh")
o145 = Instance.new("Part")
o146 = Instance.new("CylinderMesh")
o147 = Instance.new("Part")
o148 = Instance.new("BlockMesh")
o1.Name = "M500"
o1.Parent = game.Players.LocalPlayer.Backpack
o1.GripForward = Vector3.new(-0.271321744, 0, -0.962488711)
o1.GripPos = Vector3.new(-0, -0.300000012, -0.400000006)
o1.GripRight = Vector3.new(0.962488711, 0, -0.271321744)
o2.Name = "BackupWeld"
o2.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
Shotgoonwooot(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o2)
end))
o3.Name = "Crouch"
o3.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
Shotgoonwooot(function()
on = 0
Tool = script.Parent
welds = {}
sh = {}
arms = nil
torso = nil
f = nil
function Crouch(ison)
if arms == nil and torso == nil then
arms = {Tool.Parent:FindFirstChild("Left Leg"), Tool.Parent:FindFirstChild("Right Leg")}
torso = Tool.Parent:FindFirstChild("Torso")
end
if arms ~= nil and torso ~= nil then
sh = {torso:FindFirstChild("Left Hip"), torso:FindFirstChild("Right Hip")}
if sh ~= nil then
local yes = true
if yes then
yes = false
if ison == 1 then
sh[1].Part1 = nil
sh[2].Part1 = nil
local weld1 = Instance.new("Weld")
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.5, 0.75, 1)
arms[1].Name = "LDave"
arms[1].CanCollide = true
welds[1] = weld1
-------------------------------------------
local weld2 = Instance.new("Weld")
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(0.5,0.495,1.25) * CFrame.fromEulerAnglesXYZ(math.rad(90),0,0)
arms[2].Name = "RDave"
arms[2].CanCollide = true
welds[2] = weld2
---------------------------------
local force = Instance.new("BodyForce")
force.Parent = torso
f = force
wait(0.01)
elseif ison == 0 then
if arms then
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
f.Parent = nil
arms[2].Name = "Right Leg"
arms[1].Name = "Left Leg"
welds[1].Parent = nil
welds[2].Parent = nil
end
end
--
end
else
print("sh")
end
else
print("arms")
end
end
function Key(key)
if key then
key = string.lower(key)
if (key=="c") then
if on == 1 then
on = 0
elseif on == 0 then
on = 1
end
Crouch(on)
end
end
end
function Equip(mouse)
mouse.KeyDown:connect(Key)
end
script.Parent.Equipped:connect(Equip)


end,o3)
end))
o4.Name = "BackupWeld"
o4.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
Shotgoonwooot(function()
function Weld(x,y)
	local W = Instance.new("Weld")
	W.Part0 = x
	W.Part1 = y
	local CJ = CFrame.new(x.Position)
	local C0 = x.CFrame:inverse()*CJ
	local C1 = y.CFrame:inverse()*CJ
	W.C0 = C0
	W.C1 = C1
	W.Parent = x
end

function Get(A)
	if A.className == "Part" then
		Weld(script.Parent.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(script.Parent)
end

script.Parent.Equipped:connect(Finale)
script.Parent.Unequipped:connect(Finale)
Finale()
end,o4)
end))
o5.Name = "StoredAmmo"
o5.Parent = o1
o5.Value = 60
o6.Parent = o1
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Black")
o6.Position = Vector3.new(-56.3797073, 0.641173005, -34.5374298)
o6.Rotation = Vector3.new(165, -90, 0)
o6.Anchored = true
o6.CanCollide = false
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(0.281481475, 0.244444445, 0.200000003)
o6.CFrame = CFrame.new(-56.3797073, 0.641173005, -34.5374298, -4.37113883e-008, 0, -1, -0.258819133, -0.965925813, 1.1313344e-008, -0.965925813, 0.258819133, 4.22219593e-008)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Parent = o6
o7.Scale = Vector3.new(1, 1, 0.666666687)
o8.Name = "Shooter"
o8.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
Shotgoonwooot(function()
Tool = script.Parent

local arms = nil
local torso = nil
local weld33 = nil -- right arm
local weld55 = nil -- left arm
local welds = {}
local reloading = false
local canclereloading = false
local falsearm1 = nil
local falsearm2 = nil
local c = nil
local canshoot = true
local canreload = true
local damage = 200

function ShellInsert() -- this will be a pain in my blocky butt.
weld55.C1 = CFrame.new(-0.35, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(340), -0.12, math.rad(-72))
Tool.S1.Mesh.Offset = Vector3.new(0, 0, -0.36)
Tool.S2.Mesh.Offset = Vector3.new(0, 0, -0.36)
wait()
weld55.C1 = CFrame.new(-0.35, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(340), -0.1, math.rad(-77))
Tool.S1.Mesh.Offset = Vector3.new(0, 0, -0.30)
Tool.S2.Mesh.Offset = Vector3.new(0, 0, -0.30)
wait()
weld55.C1 = CFrame.new(-0.35, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(340), -0.08, math.rad(-82))
Tool.S1.Mesh.Offset = Vector3.new(0, 0, -0.24)
Tool.S2.Mesh.Offset = Vector3.new(0, 0, -0.24)
wait()
weld55.C1 = CFrame.new(-0.35, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(340), -0.06, math.rad(-87))
Tool.S1.Mesh.Offset = Vector3.new(0, 0, -0.18)
Tool.S2.Mesh.Offset = Vector3.new(0, 0, -0.18)
wait()
weld55.C1 = CFrame.new(-0.35, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(340), -0.04, math.rad(-92))
Tool.S1.Mesh.Offset = Vector3.new(0, 0, -0.12)
Tool.S2.Mesh.Offset = Vector3.new(0, 0, -0.12)
wait()
weld55.C1 = CFrame.new(-0.35, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(340), -0.02, math.rad(-97))
Tool.S1.Mesh.Offset = Vector3.new(0, 0, -0.06)
Tool.S2.Mesh.Offset = Vector3.new(0, 0, -0.06)
wait()
weld55.C1 = CFrame.new(-0.35, 0.2, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(340), 0, math.rad(-102))
Tool.S1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.S2.Mesh.Offset = Vector3.new(0, 0, 0)
wait()
weld55.C1 = CFrame.new(-0.35, 0.28, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(336), 0, math.rad(-104))
Tool.Handle.Reload:play()
wait()
weld55.C1 = CFrame.new(-0.35, 0.36, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(332), 0, math.rad(-106))
end

function Anim1() --testing this part.....
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-94), math.rad(-15), 0)
wait()
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-15), 0)
wait()
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-102), math.rad(-15), 0)
wait()
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-106), math.rad(-15), 0)
wait()
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-15), 0)
end

function Anim2() --also testing this T_T
local canshoot = false
local canreload = false
weld55.C1 = CFrame.new(-0.35, 0.33, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(320), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-110), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 0.46, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(317), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-108), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 0.59, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(314), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-106), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 0.72, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(311), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-104), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 0.85, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(308), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-102), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 0.98, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(305), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-100), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 1.11, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(302), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-98), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 1.24, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(299), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-96), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 1.37, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(296), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-94), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 1.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(293), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-92), math.rad(-15), 0)
wait()
weld55.C1 = CFrame.new(-0.35, 1.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
wait()
Tool.Handle.A1:play()
weld55.C1 = CFrame.new(-0.35, 1.42, 0.58) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.1, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.1, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.34, 0.56) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.2, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.2, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.26, 0.54) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.3, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.3, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.18, 0.52) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.4, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.4, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.4, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.4, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.4, 0, -0.01)
wait(.08)
Tool.Handle.A2:play()
weld55.C1 = CFrame.new(-0.35, 1.26, 0.54) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.3, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.3, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.34, 0.56) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.2, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.2, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.42, 0.58) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.1, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.1, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0, 0, 0)
local canshoot = true
local canreload = true
end

function Pump()
Tool.Handle.A1:play()
weld55.C1 = CFrame.new(-0.35, 1.42, 0.58) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.1, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.1, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.34, 0.56) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.2, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.2, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.26, 0.54) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.3, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.3, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.18, 0.52) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.4, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.4, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.4, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.4, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.4, 0, -0.01)
wait(.08)
Tool.Handle.A2:play()
weld55.C1 = CFrame.new(-0.35, 1.26, 0.54) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.3, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.3, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.3, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.34, 0.56) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.2, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.2, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.2, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.42, 0.58) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0.1, 0)
Tool.A4.Mesh.Offset = Vector3.new(0.1, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0.1, 0, -0.01)
wait(.03)
weld55.C1 = CFrame.new(-0.35, 1.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
Tool.A1.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A2.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A3.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A4.Mesh.Offset = Vector3.new(0, 0, 0)
Tool.A5.Mesh.Offset = Vector3.new(0, 0, 0)
end

function Reload()
	if script.Parent.Ammo.Value < script.Parent.MaxAmmo.Value and reloading == false and script.Parent.StoredAmmo.Value >= 1 then
		reloading = true
      Anim1()
		for i = 1,script.Parent.MaxAmmo.Value - script.Parent.Ammo.Value do
			if canclereloading == true then
				canclereloading = false
				break
			end
			-- ...
			ShellInsert()
			if script.Parent.StoredAmmo.Value >= 1 then
				script.Parent.Ammo.Value = script.Parent.Ammo.Value + 1
				script.Parent.StoredAmmo.Value = script.Parent.StoredAmmo.Value - 1
			end -- this is getting annoying, and its not even half way done
			wait(.1)
		end
		reloading = false
      Anim2()
	end
end

function Equip(mouse)
wait(0.01)
arms = {Tool.Parent:FindFirstChild("Left Arm"), Tool.Parent:FindFirstChild("Right Arm")}
torso = Tool.Parent:FindFirstChild("Torso")
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = nil
sh[2].Part1 = nil
falsearm1 = arms[1]:clone()
local mesh1 = Instance.new("BlockMesh")
mesh1.Scale = Vector3.new(.9,.9,.9)
mesh1.Parent = falsearm1
local armweld1 = Instance.new("Weld")
falsearm1.BrickColor = BrickColor.new(26)
falsearm1.Parent = Tool
armweld1.Parent = falsearm1
armweld1.Part0 = falsearm1
armweld1.Part1 = arms[1]
falsearm2 = arms[2]:clone()
local mesh2 = Instance.new("BlockMesh")
mesh2.Scale = Vector3.new(.9,.9,.9)
mesh2.Parent = falsearm2
local armweld2 = Instance.new("Weld")
falsearm2.BrickColor = BrickColor.new(26)
falsearm2.Parent = Tool
armweld2.Parent = falsearm2
armweld2.Part0 = falsearm2
armweld2.Part1 = arms[2]
local weld1 = Instance.new("Weld") -- left arm
weld55 = weld1
weld1.Part0 = torso
weld1.Parent = torso
weld1.Part1 = arms[1]
weld1.C1 = CFrame.new(-0.35, 1.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
welds[1] = weld1
local weld2 = Instance.new("Weld") -- right arm
weld33 = weld2
weld2.Part0 = torso
weld2.Parent = torso
weld2.Part1 = arms[2]
weld2.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
welds[2] = weld2
Pump()
end
else
print("sh")
end
else
print("arms")
end
end

local legs = nil
local torso2 = nil
local welds2 = {}
local bodyforce = nil

function Unequip(mouse)
if arms ~= nil and torso ~= nil then
local sh = {torso:FindFirstChild("Left Shoulder"), torso:FindFirstChild("Right Shoulder")}
if sh ~= nil then
local yes = true
if yes then
yes = false
sh[1].Part1 = arms[1]
sh[2].Part1 = arms[2]
welds[1].Parent = nil
welds[2].Parent = nil
falsearm1:remove()
falsearm2:remove()
end
else
print("sh")
end
else
print("arms")
end
end

function fire(v)

	Tool.Handle.Fire:play()
   Tool.Handle.Fire2:play()
	

		local vCharacter = Tool.Parent
	local vPlayer = game.Players:playerFromCharacter(vCharacter)

	for i = 1,math.random(5,8) do

		local missile = Instance.new("Part")

		

		local spawnPos = vCharacter.PrimaryPart.Position
		


		spawnPos  = spawnPos + (v * 5)

		missile.Position = spawnPos
  		missile.Size = Vector3.new(1,1,1)
		missile.Velocity = v * 500 + (Vector3.new(math.random(-15,15),math.random(-15,15),math.random(-15,15)))
		missile.BrickColor = BrickColor.new(26)
		missile.Shape = 0
		missile.BottomSurface = 0
		missile.TopSurface = 0
		missile.Name = "Bullet"
		missile.Elasticity = 0
		missile.Reflectance = 0
		missile.Friction = .9
      missile.CanCollide = false

		local force = Instance.new("BodyForce")
		force.force = Vector3.new(0,missile:getMass() * 196,0)
		force.Parent = missile

		local mesh = Instance.new("SpecialMesh")
		mesh.Scale = Vector3.new(.1,.1,.1)
		mesh.MeshType = "Sphere"
		mesh.Parent = missile


function Blow(Hit)
	if Hit.Name == "Head" then
		Hit.Anchored= false Hit.Size = Vector3.new(2, 0.2, 1)
		Hit.BrickColor = BrickColor.new("Maroon")
		o1 = Instance.new("Sound")
		o1.Parent = Hit
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()
	end
		if Hit.Name == "Right Arm" then
			for i=1,4 do
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5, .5, .5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
					for i=1,4 do
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
Hit:Destroy()
end
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				if Hit.Name == "Right Leg" then
					for i=1,4 do
								o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
					end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
					for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
				
				if Hit.Name == "Left Leg" then
										for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

		end
				if Hit.Name == "Left Arm" then
							for i=1,4 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end
Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

				end
								if Hit.Name == "Torso" then
							for i=1,8 do
					o11 = Instance.new("Part")
		o11 = Instance.new("Part")
o11.Name = "GOREPART"
o11.Parent = workspace
o11.BrickColor = BrickColor.new("Maroon")
o11.Position = Hit.Position
o11.Rotation = Vector3.new(-180, 1.29089606, 180)
o11.FormFactor = Enum.FormFactor.Symmetric
o11.Size = Vector3.new(.5,.5,.5)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.458824, 0, 0)
end

Hit:Destroy()
		o1 = Instance.new("Sound")
		o1.Parent = o11
		o1.SoundId = "rbxassetid://429400881"
		o1:Play()

								end
								end
function onTouched(part)
     local h = part.Parent:findFirstChild("Humanoid")
     if h~=nil then
               h.Health = h.Health -100
               wait(.1)
               h.Health = h.Health -100
               wait(.1)

       end
end

missile.Touched:connect(onTouched)
missile.Touched:connect(Blow)

		local creator_tag = Instance.new("ObjectValue")
		creator_tag.Value = vPlayer
		creator_tag.Name = "creator"
		creator_tag.Parent = missile
		


		missile.Parent = game.Workspace

	end

	weld33.C1 = CFrame.new(-0.75, -0.4, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
	weld55.C1 = CFrame.new(-0.35, 1.4, 0.55) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	Tool.Flash.Mesh.Scale = Vector3.new(1.333, 1.7, 1.333)
	Tool.Flash.Transparency = .2
	wait(0.06)
	weld33.C1 = CFrame.new(-0.75, -0.35, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
	weld55.C1 = CFrame.new(-0.35, 1.45, 0.575) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	Tool.Flash.Mesh.Scale = Vector3.new(1.1, 1.4, 1.1)
	Tool.Flash.Transparency = .8
	wait(0.06)
	weld33.C1 = CFrame.new(-0.75, -0.3, 0.35) * CFrame.fromEulerAnglesXYZ(math.rad(-90), math.rad(-15), 0)
	weld55.C1 = CFrame.new(-0.35, 1.5, 0.6) * CFrame.fromEulerAnglesXYZ(math.rad(290), 0, math.rad(-90))
	Tool.Flash.Transparency = 1
end

function KeyDownFunctions(key)
	if key == "r" then
		Reload()
	end
	if key == "e" then
		canclereloading = true
	end
end

Tool.Enabled = true
function onActivated()

	if not Tool.Enabled then
		return
	end

	Tool.Enabled = false

	local character = Tool.Parent;
	local humanoid = character.Humanoid
	if humanoid == nil then
		print("Humanoid not found")
		return 
	end
	local ammo = script.Parent.Ammo
	local maxammo = script.Parent.MaxAmmo
	if reloading == false and humanoid.Health >= 1 then
		if ammo.Value >= 1 then
			ammo.Value = ammo.Value - 1
			local targetPos = humanoid.TargetPoint
			local lookAt = (targetPos - character.Head.Position).unit
			fire(lookAt)
         Pump()
		else
			Reload()
		end
	end
	Tool.Enabled = true
end

function onEquippedLocal(mouse)

	if mouse == nil then
		print("Mouse not found")
		return 
	end

	mouse.Icon = "http://www.roblox.com/asset/?id=45543124"
	mouse.Button1Down:connect(function() onButton1Down(mouse) end)
	mouse.KeyDown:connect(KeyDownFunctions)
	while true do
		wait()
	end
end


Tool.Equipped:connect(onEquippedLocal)


script.Parent.Activated:connect(onActivated)
Tool.Equipped:connect(Equip)
Tool.Unequipped:connect(Unequip)

end,o8)
end))
o9.Name = "Ammo"
o9.Parent = o1
o9.Value = 8
o10.Name = "MaxAmmo"
o10.Parent = o1
o10.Value = 8
o11.Name = "Recoil"
o11.Parent = o1
o11.Value = 2
o12.Parent = o11
table.insert(cors,coroutine.create(function()
wait()
Shotgoonwooot(function()
while true do
wait(.2)
if script.Parent.Value > 3 then
script.Parent.Value = script.Parent.Value - 1
end
end

end,o12)
end))
o13.Name = "GuiScript"
o13.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
Shotgoonwooot(function()
local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.05, 0, 0.8, 0)
	Text.Size = UDim2.new(0, 128, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,o13)
end))
o14.Name = "GuiScript(2)"
o14.Parent = o1
table.insert(cors,coroutine.create(function()
wait()
Shotgoonwooot(function()
local Tool = script.Parent
local Ammo = Tool.Ammo
local MaxAmmo = Ammo.Value

local vPlayer
local Gui
local Text

function onChanged(value)
	if value == "Value" or value == Ammo.Value then
		if Gui ~= nil and Text ~= nil then
			if Ammo.Value >= 1 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif math.floor(Ammo.Value) == 0 then
				Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
			elseif Ammo.Value < 0 then
				for i = 0, 1, 0.03 / 2 do
					local Num = math.floor(i * MaxAmmo + 0.5)

					Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
					wait()
				end
			end
		end
	end
end

function on2Changed()
	if Gui ~= nil and Text ~= nil then

		Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
		wait()
	end
end

function setUpGui()
	if vPlayer == nil or vPlayer:findFirstChild("PlayerGui") == nil then
		return
	end

	Gui = Instance.new("ScreenGui")
	Text = Instance.new("TextLabel")

	Gui.Name = "DEDisplay"
	Gui.Parent = vPlayer.PlayerGui

	Text.BackgroundColor3 = BrickColor.Black().Color
   Text.BackgroundTransparency = 1
	Text.BorderColor3 = BrickColor.White().Color
   Text.BorderSizePixel = 0
	Text.Name = "Ammo"
	Text.Parent = Gui
	Text.Position = UDim2.new(0.05, 0, 0.8, 0)
	Text.Size = UDim2.new(0, 128, 0, 64)
   Text.FontSize = "Size18"
	Text.Text = ""..script.Parent.Ammo.Value.."|"..script.Parent.StoredAmmo.Value..""
	Text.TextColor3 = BrickColor.White().Color
end

function onEquippedLocal(mouse)
	vPlayer = game.Players.LocalPlayer

	setUpGui()
end

function onUnequippedLocal(mouse)
	if Gui then
		Gui:remove()
	end

	Gui = nil
	Text = nil
	vPlayer = nil
end

Tool.Equipped:connect(onEquippedLocal)
Tool.Unequipped:connect(onUnequippedLocal)

Ammo.Changed:connect(onChanged)
Tool.StoredAmmo.Changed:connect(on2Changed)
end,o14)
end))
o15.Parent = o1
o15.Material = Enum.Material.SmoothPlastic
o15.BrickColor = BrickColor.new("Black")
o15.Position = Vector3.new(-56.3797073, 1.00378299, -34.3214798)
o15.Rotation = Vector3.new(-90, -0.00328550814, 90.0004272)
o15.Anchored = true
o15.CanCollide = false
o15.FormFactor = Enum.FormFactor.Custom
o15.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o15.CFrame = CFrame.new(-56.3797073, 1.00378299, -34.3214798, -7.43468718e-006, -1, -5.73429352e-005, 7.50715756e-008, -5.73429352e-005, 1, -1, 7.43468263e-006, 7.54979013e-008)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.105882, 0.164706, 0.207843)
o16.Parent = o15
o16.Scale = Vector3.new(0.222222224, 0.777777791, 0.222222224)
o17.Parent = o1
o17.Material = Enum.Material.SmoothPlastic
o17.BrickColor = BrickColor.new("Black")
o17.Position = Vector3.new(-56.3797073, 0.990432024, -34.3955536)
o17.Rotation = Vector3.new(-90, -0.0032855079, 90.0002289)
o17.Anchored = true
o17.CanCollide = false
o17.FormFactor = Enum.FormFactor.Custom
o17.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o17.CFrame = CFrame.new(-56.3797073, 0.990432024, -34.3955536, -3.97761778e-006, -1, -5.73429315e-005, 7.52698099e-008, -5.73429315e-005, 1, -1, 3.97761323e-006, 7.54979013e-008)
o17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Color = Color3.new(0.105882, 0.164706, 0.207843)
o18.Parent = o17
o18.Scale = Vector3.new(0.814814806, 0.407407403, 0.814814806)
o19.Parent = o1
o19.Material = Enum.Material.SmoothPlastic
o19.BrickColor = BrickColor.new("Black")
o19.Position = Vector3.new(-56.4507523, 0.820066094, -33.8251877)
o19.Rotation = Vector3.new(-90, -0.00328550814, 90.0004272)
o19.Anchored = true
o19.CanCollide = false
o19.FormFactor = Enum.FormFactor.Custom
o19.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o19.CFrame = CFrame.new(-56.4507523, 0.820066094, -33.8251877, -7.43468718e-006, -1, -5.73429352e-005, 7.50715756e-008, -5.73429352e-005, 1, -1, 7.43468263e-006, 7.54979013e-008)
o19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Color = Color3.new(0.105882, 0.164706, 0.207843)
o20.Parent = o19
o20.Scale = Vector3.new(0.222222224, 0.0370370373, 0.222222224)
o21.Parent = o1
o21.Material = Enum.Material.SmoothPlastic
o21.BrickColor = BrickColor.new("Black")
o21.Position = Vector3.new(-56.3797073, 0.608222008, -34.3598938)
o21.Rotation = Vector3.new(74.9999924, 6.769896e-007, -2.50447806e-006)
o21.Anchored = true
o21.CanCollide = false
o21.FormFactor = Enum.FormFactor.Custom
o21.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o21.CFrame = CFrame.new(-56.3797073, 0.608222008, -34.3598938, 1, 4.37113883e-008, 1.18156978e-008, 9.97437896e-011, 0.258819133, -0.965925813, -4.52800784e-008, 0.965925813, 0.258819133)
o21.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o21.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o21.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o21.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o21.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o21.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o21.Color = Color3.new(0.105882, 0.164706, 0.207843)
o22.Parent = o21
o22.Scale = Vector3.new(0.666666687, 0.222222224, 0.444444448)
o22.MeshType = Enum.MeshType.Wedge
o23.Parent = o1
o23.Material = Enum.Material.SmoothPlastic
o23.BrickColor = BrickColor.new("Black")
o23.Position = Vector3.new(-56.3797073, 0.834883094, -34.7362976)
o23.Rotation = Vector3.new(-98, 0, -0)
o23.Anchored = true
o23.CanCollide = false
o23.FormFactor = Enum.FormFactor.Custom
o23.Size = Vector3.new(0.200000003, 0.281481475, 0.200000003)
o23.CFrame = CFrame.new(-56.3797073, 0.834883094, -34.7362976, 1, 0, 0, 0, -0.139173076, 0.990268052, 0, -0.990268052, -0.139173076)
o23.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o23.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o23.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o23.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o23.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o23.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o23.Color = Color3.new(0.105882, 0.164706, 0.207843)
o24.Parent = o23
o24.Scale = Vector3.new(0.703703701, 1, 0.703703701)
o25.Parent = o1
o25.Material = Enum.Material.SmoothPlastic
o25.BrickColor = BrickColor.new("Black")
o25.Position = Vector3.new(-56.3797073, 0.823760033, -34.6474075)
o25.Rotation = Vector3.new(-180, -90, 0)
o25.Anchored = true
o25.CanCollide = false
o25.FormFactor = Enum.FormFactor.Custom
o25.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o25.CFrame = CFrame.new(-56.3797073, 0.823760033, -34.6474075, 0, 0, -1, 0, -1, 0, -1, 0, -0)
o25.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o25.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o25.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o25.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o25.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o25.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o25.Color = Color3.new(0.105882, 0.164706, 0.207843)
o26.Parent = o25
o26.Scale = Vector3.new(0.296296299, 0.703703701, 0.740740716)
o27.Parent = o1
o27.Material = Enum.Material.SmoothPlastic
o27.BrickColor = BrickColor.new("Black")
o27.Position = Vector3.new(-56.3797073, 0.716360092, -34.6029663)
o27.Rotation = Vector3.new(-89.9999847, -0.00328049762, 180)
o27.Anchored = true
o27.CanCollide = false
o27.FormFactor = Enum.FormFactor.Custom
o27.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o27.CFrame = CFrame.new(-56.3797073, 0.716360092, -34.6029663, -1, -5.10278504e-008, -5.72554854e-005, -5.72554854e-005, -3.73402344e-007, 1, -5.10492271e-008, 1, 3.73399416e-007)
o27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o27.Color = Color3.new(0.105882, 0.164706, 0.207843)
o28.Parent = o27
o28.Scale = Vector3.new(0.740740716, 0.740740716, 0.370370358)
o28.MeshType = Enum.MeshType.Wedge
o29.Parent = o1
o29.Material = Enum.Material.SmoothPlastic
o29.BrickColor = BrickColor.new("Black")
o29.Position = Vector3.new(-56.3797073, 0.462927461, -34.5932007)
o29.Rotation = Vector3.new(-139.989517, -90, 0)
o29.Anchored = true
o29.CanCollide = false
o29.FormFactor = Enum.FormFactor.Custom
o29.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o29.CFrame = CFrame.new(-56.3797073, 0.462927461, -34.5932007, 0, 0, -1, 0.642927825, -0.765926838, 0, -0.765926838, -0.642927825, 0)
o29.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o29.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o29.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o29.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o29.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o29.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o29.Color = Color3.new(0.105882, 0.164706, 0.207843)
o30.Parent = o29
o30.Scale = Vector3.new(0.444444448, 0.185185179, 0.666666687)
o31.Parent = o1
o31.Material = Enum.Material.SmoothPlastic
o31.BrickColor = BrickColor.new("Black")
o31.Position = Vector3.new(-56.3870316, 0.990445018, -33.7066612)
o31.Rotation = Vector3.new(-180, -90, 0)
o31.Anchored = true
o31.CanCollide = false
o31.FormFactor = Enum.FormFactor.Custom
o31.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
o31.CFrame = CFrame.new(-56.3870316, 0.990445018, -33.7066612, -4.37113883e-008, 0, -1, 1.50995803e-007, -1, -6.60023616e-015, -1, -1.50995803e-007, 4.37113883e-008)
o31.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o31.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o31.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o31.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o31.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o31.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o31.Color = Color3.new(0.105882, 0.164706, 0.207843)
o32.Parent = o31
o32.Scale = Vector3.new(1, 0.740740716, 0.0740740746)
o33.Parent = o1
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Black")
o33.Position = Vector3.new(-56.3797073, 0.6022861, -34.1147995)
o33.Rotation = Vector3.new(149.999985, -90, 0)
o33.Anchored = true
o33.CanCollide = false
o33.FormFactor = Enum.FormFactor.Custom
o33.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o33.CFrame = CFrame.new(-56.3797073, 0.6022861, -34.1147995, -4.37113883e-008, 0, -1, -0.500000238, -0.866025269, 2.18557048e-008, -0.866025269, 0.500000238, 3.78551661e-008)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.105882, 0.164706, 0.207843)
o34.Parent = o33
o34.Scale = Vector3.new(0.481481463, 0.111111112, 0.629629612)
o35.Parent = o1
o35.Material = Enum.Material.SmoothPlastic
o35.BrickColor = BrickColor.new("Black")
o35.Position = Vector3.new(-56.3797073, 0.511172056, -35.8189392)
o35.Rotation = Vector3.new(176.703568, -90, 0)
o35.Anchored = true
o35.CanCollide = false
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.237037033, 0.200000003, 0.200000003)
o35.CFrame = CFrame.new(-56.3797073, 0.511172056, -35.8189392, 0, 0, -1, -0.0575020239, -0.998345375, 0, -0.998345375, 0.0575020239, 0)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.105882, 0.164706, 0.207843)
o36.Parent = o35
o36.Scale = Vector3.new(1, 0.296296299, 0.592592597)
o37.Parent = o1
o37.Material = Enum.Material.SmoothPlastic
o37.BrickColor = BrickColor.new("Black")
o37.Position = Vector3.new(-56.3797073, 0.699331999, -34.0710983)
o37.Rotation = Vector3.new(95, 90, 0)
o37.Anchored = true
o37.CanCollide = false
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o37.CFrame = CFrame.new(-56.3797073, 0.699331999, -34.0710983, -4.37113883e-008, 0, 1, 0.99619472, -0.0871557668, 4.35450538e-008, 0.0871557668, 0.99619472, 3.80969967e-009)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Color = Color3.new(0.105882, 0.164706, 0.207843)
o38.Parent = o37
o38.Scale = Vector3.new(0.814814806, 0.111111112, 0.629629612)
o39.Parent = o1
o39.Material = Enum.Material.SmoothPlastic
o39.BrickColor = BrickColor.new("Black")
o39.Position = Vector3.new(-56.3797073, 0.653389096, -35.7974396)
o39.Rotation = Vector3.new(176.703568, -90, 0)
o39.Anchored = true
o39.CanCollide = false
o39.FormFactor = Enum.FormFactor.Custom
o39.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o39.CFrame = CFrame.new(-56.3797073, 0.653389096, -35.7974396, 0, 0, -1, -0.0575020239, -0.998345375, 0, -0.998345375, 0.0575020239, 0)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.105882, 0.164706, 0.207843)
o40.Parent = o39
o40.Scale = Vector3.new(0.888888896, 0.592592597, 0.592592597)
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Really black")
o41.Position = Vector3.new(-56.3797073, 0.983029008, -30.9933014)
o41.Rotation = Vector3.new(-90, 0, -0)
o41.Anchored = true
o41.CanCollide = false
o41.FormFactor = Enum.FormFactor.Custom
o41.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o41.CFrame = CFrame.new(-56.3797073, 0.983029008, -30.9933014, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o42.Parent = o41
o42.Scale = Vector3.new(0.518518507, 0.0370370373, 0.518518507)
o43.Parent = o1
o43.Material = Enum.Material.SmoothPlastic
o43.BrickColor = BrickColor.new("Black")
o43.Position = Vector3.new(-56.3797073, 0.756361008, -33.7103691)
o43.Rotation = Vector3.new(180, -90, 0)
o43.Anchored = true
o43.CanCollide = false
o43.FormFactor = Enum.FormFactor.Custom
o43.Size = Vector3.new(0.407407403, 0.200000003, 0.200000003)
o43.CFrame = CFrame.new(-56.3797073, 0.756361008, -33.7103691, -4.37113883e-008, 0, -1, -8.74227766e-008, -1, 3.82137093e-015, -1, 8.74227766e-008, 4.37113883e-008)
o43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o43.Color = Color3.new(0.105882, 0.164706, 0.207843)
o44.Parent = o43
o44.Scale = Vector3.new(1, 0.0370370373, 0.666666687)
o45.Parent = o1
o45.Material = Enum.Material.SmoothPlastic
o45.BrickColor = BrickColor.new("Black")
o45.Position = Vector3.new(-56.3797073, 0.729254007, -34.0322418)
o45.Rotation = Vector3.new(-85, 0, 180)
o45.Anchored = true
o45.CanCollide = false
o45.FormFactor = Enum.FormFactor.Custom
o45.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o45.CFrame = CFrame.new(-56.3797073, 0.729254007, -34.0322418, -1, -1.50995803e-007, 0, 1.3160161e-008, -0.087155804, 0.99619472, -1.50421215e-007, 0.99619472, 0.087155804)
o45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o45.Color = Color3.new(0.105882, 0.164706, 0.207843)
o46.Parent = o45
o46.Scale = Vector3.new(0.629629612, 0.259259254, 0.259259254)
o46.MeshType = Enum.MeshType.Wedge
o47.Parent = o1
o47.Material = Enum.Material.SmoothPlastic
o47.BrickColor = BrickColor.new("Black")
o47.Position = Vector3.new(-56.3797073, 0.739454985, -34.1047821)
o47.Rotation = Vector3.new(-85, 3.1589625e-005, -1.26463078e-007)
o47.Anchored = true
o47.CanCollide = false
o47.FormFactor = Enum.FormFactor.Custom
o47.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o47.CFrame = CFrame.new(-56.3797073, 0.739454985, -34.1047821, 1, 2.20719709e-009, 5.51342964e-007, -5.49437289e-007, 0.087155804, 0.99619472, -4.58539411e-008, -0.99619472, 0.087155804)
o47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o47.Color = Color3.new(0.105882, 0.164706, 0.207843)
o48.Parent = o47
o48.Scale = Vector3.new(0.629629612, 0.259259254, 0.296296299)
o48.MeshType = Enum.MeshType.Wedge
o49.Parent = o1
o49.Material = Enum.Material.SmoothPlastic
o49.BrickColor = BrickColor.new("Black")
o49.Position = Vector3.new(-56.3797073, 0.868209004, -34.5733337)
o49.Rotation = Vector3.new(-180, 2.73745354e-006, 179.996719)
o49.Anchored = true
o49.CanCollide = false
o49.FormFactor = Enum.FormFactor.Custom
o49.Size = Vector3.new(0.200000003, 0.229629636, 0.200000003)
o49.CFrame = CFrame.new(-56.3797073, 0.868209004, -34.5733337, -1, -5.73714533e-005, 4.77775757e-008, -5.73714533e-005, 1, 8.74227766e-008, -4.77825921e-008, 8.74200339e-008, -1)
o49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o49.Color = Color3.new(0.105882, 0.164706, 0.207843)
o50.Parent = o49
o50.Scale = Vector3.new(0.740740716, 1, 0.444444448)
o50.MeshType = Enum.MeshType.Wedge
o51.Name = "A4"
o51.Parent = o1
o51.Material = Enum.Material.SmoothPlastic
o51.BrickColor = BrickColor.new("Really black")
o51.Position = Vector3.new(-56.427803, 0.983029008, -33.7066612)
o51.Rotation = Vector3.new(-180, -90, 0)
o51.Anchored = true
o51.CanCollide = false
o51.FormFactor = Enum.FormFactor.Custom
o51.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
o51.CFrame = CFrame.new(-56.427803, 0.983029008, -33.7066612, -4.37113883e-008, 0, -1, 1.50995803e-007, -1, -6.60023616e-015, -1, -1.50995803e-007, 4.37113883e-008)
o51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o51.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o52.Parent = o51
o52.Scale = Vector3.new(1, 0.666666687, 0.185185179)
o53.Parent = o1
o53.Material = Enum.Material.SmoothPlastic
o53.BrickColor = BrickColor.new("Black")
o53.Position = Vector3.new(-56.3797073, 0.927474022, -32.4874039)
o53.Rotation = Vector3.new(-90, 0, -0)
o53.Anchored = true
o53.CanCollide = false
o53.FormFactor = Enum.FormFactor.Custom
o53.Size = Vector3.new(0.200000003, 1.79999995, 0.200000003)
o53.CFrame = CFrame.new(-56.3797073, 0.927474022, -32.4874039, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o53.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o53.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o53.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o53.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o53.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o53.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o53.Color = Color3.new(0.105882, 0.164706, 0.207843)
o54.Parent = o53
o54.Scale = Vector3.new(0.333333343, 1, 0.777777791)
o55.Parent = o1
o55.Material = Enum.Material.SmoothPlastic
o55.BrickColor = BrickColor.new("Black")
o55.Position = Vector3.new(-56.3797073, 1.03858602, -34.0696335)
o55.Rotation = Vector3.new(-180, -90, 0)
o55.Anchored = true
o55.CanCollide = false
o55.FormFactor = Enum.FormFactor.Custom
o55.Size = Vector3.new(0.325925916, 0.200000003, 0.200000003)
o55.CFrame = CFrame.new(-56.3797073, 1.03858602, -34.0696335, 0, 0, -1, 0, -1, 0, -1, 0, -0)
o55.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o55.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o55.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o55.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o55.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o55.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o55.Color = Color3.new(0.105882, 0.164706, 0.207843)
o56.Parent = o55
o56.Offset = Vector3.new(0.0370000005, 0, 0)
o56.Scale = Vector3.new(1, 0.555555522, 0.740740716)
o57.Parent = o1
o57.Material = Enum.Material.SmoothPlastic
o57.BrickColor = BrickColor.new("Black")
o57.Position = Vector3.new(-56.3797073, 0.868209004, -34.5733337)
o57.Rotation = Vector3.new(3.86261763e-006, -3.11288272e-006, -179.996719)
o57.Anchored = true
o57.CanCollide = false
o57.FormFactor = Enum.FormFactor.Custom
o57.Size = Vector3.new(0.200000003, 0.229629636, 0.200000003)
o57.CFrame = CFrame.new(-56.3797073, 0.868209004, -34.5733337, -0.99999994, 5.72555e-005, -5.43300516e-008, -5.72554927e-005, -0.999999821, -6.74153853e-008, -5.10557285e-008, -6.74190233e-008, 0.99999994)
o57.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o57.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o57.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o57.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o57.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o57.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o57.Color = Color3.new(0.105882, 0.164706, 0.207843)
o58.Parent = o57
o58.Scale = Vector3.new(0.740740716, 1, 0.444444448)
o58.MeshType = Enum.MeshType.Wedge
o59.Parent = o1
o59.Material = Enum.Material.SmoothPlastic
o59.BrickColor = BrickColor.new("Black")
o59.Position = Vector3.new(-56.3797073, 0.787977099, -35.0700455)
o59.Rotation = Vector3.new(-98, 0, -0)
o59.Anchored = true
o59.CanCollide = false
o59.FormFactor = Enum.FormFactor.Custom
o59.Size = Vector3.new(0.200000003, 0.392592579, 0.200000003)
o59.CFrame = CFrame.new(-56.3797073, 0.787977099, -35.0700455, 1, 0, 0, 0, -0.139173076, 0.990268052, 0, -0.990268052, -0.139173076)
o59.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o59.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o59.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o59.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o59.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o59.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o59.Color = Color3.new(0.105882, 0.164706, 0.207843)
o60.Parent = o59
o60.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o61.Name = "A2"
o61.Parent = o1
o61.Material = Enum.Material.SmoothPlastic
o61.BrickColor = BrickColor.new("Really black")
o61.Transparency = 1
o61.Position = Vector3.new(-56.3797073, 0.816370726, -32.1696243)
o61.Rotation = Vector3.new(-90, 0, -0)
o61.Anchored = true
o61.CanCollide = false
o61.FormFactor = Enum.FormFactor.Custom
o61.Size = Vector3.new(0.2074074, 1.16296291, 0.200000003)
o61.CFrame = CFrame.new(-56.3797073, 0.816370726, -32.1696243, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o61.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o61.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o61.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o61.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o61.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o61.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o61.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o62.Parent = o61
o63.Parent = o1
o63.Material = Enum.Material.SmoothPlastic
o63.BrickColor = BrickColor.new("Black")
o63.Position = Vector3.new(-56.3797073, 0.860806823, -31.1844444)
o63.Rotation = Vector3.new(-90, 0, -0)
o63.Anchored = true
o63.CanCollide = false
o63.FormFactor = Enum.FormFactor.Custom
o63.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o63.CFrame = CFrame.new(-56.3797073, 0.860806823, -31.1844444, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o63.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o63.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o63.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o63.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o63.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o63.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o63.Color = Color3.new(0.105882, 0.164706, 0.207843)
o64.Parent = o63
o64.Scale = Vector3.new(0.407407403, 0.555555522, 1)
o65.Name = "A1"
o65.Parent = o1
o65.Material = Enum.Material.SmoothPlastic
o65.BrickColor = BrickColor.new("Really black")
o65.Position = Vector3.new(-56.3874969, 0.809473634, -32.1844444)
o65.Rotation = Vector3.new(-90, 0, -0)
o65.Anchored = true
o65.CanCollide = false
o65.FormFactor = Enum.FormFactor.Custom
o65.Size = Vector3.new(0.200000003, 1.0592593, 0.200000003)
o65.CFrame = CFrame.new(-56.3874969, 0.809473634, -32.1844444, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o65.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o65.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o65.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o65.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o65.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o65.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o65.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o66.Parent = o65
o67.Parent = o1
o67.Material = Enum.Material.SmoothPlastic
o67.BrickColor = BrickColor.new("Black")
o67.Position = Vector3.new(-56.3797073, 1.03858602, -34.4251862)
o67.Rotation = Vector3.new(3.86261763e-006, -3.11287977e-006, 0.00328550744)
o67.Anchored = true
o67.CanCollide = false
o67.FormFactor = Enum.FormFactor.Custom
o67.Size = Vector3.new(0.200000003, 0.200000003, 0.385185182)
o67.CFrame = CFrame.new(-56.3797073, 1.03858602, -34.4251862, 1, -5.73429206e-005, -5.43300018e-008, 5.73429206e-005, 1, -6.74153924e-008, 5.43338672e-008, 6.74122802e-008, 1)
o67.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o67.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o67.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o67.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o67.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o67.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o67.Color = Color3.new(0.105882, 0.164706, 0.207843)
o68.Parent = o67
o68.Scale = Vector3.new(0.740740716, 0.555555522, 1)
o68.MeshType = Enum.MeshType.Wedge
o69.Parent = o1
o69.Material = Enum.Material.SmoothPlastic
o69.BrickColor = BrickColor.new("Black")
o69.Position = Vector3.new(-56.4130287, 0.927474022, -33.5214767)
o69.Rotation = Vector3.new(6.06230496e-005, -9.39151141e-006, -1.31937259e-005)
o69.Anchored = true
o69.CanCollide = false
o69.FormFactor = Enum.FormFactor.Custom
o69.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o69.CFrame = CFrame.new(-56.4130287, 0.927474022, -33.5214767, 0.999999523, 2.30273841e-007, -1.63912787e-007, -2.31439671e-007, 0.999999344, -1.05807089e-006, 1.04308121e-007, 1.06320465e-006, 0.999999106)
o69.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o69.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o69.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o69.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o69.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o69.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o69.Color = Color3.new(0.105882, 0.164706, 0.207843)
o70.Parent = o69
o70.Scale = Vector3.new(0.407407403, 0.111111112, 0.148148149)
o70.MeshType = Enum.MeshType.Wedge
o71.Parent = o1
o71.Material = Enum.Material.SmoothPlastic
o71.BrickColor = BrickColor.new("Black")
o71.Position = Vector3.new(-56.3797073, 0.786725998, -34.7733307)
o71.Rotation = Vector3.new(3.86261809e-006, -3.11285999e-006, -179.996719)
o71.Anchored = true
o71.CanCollide = false
o71.FormFactor = Enum.FormFactor.Custom
o71.Size = Vector3.new(0.200000003, 0.214814812, 0.200000003)
o71.CFrame = CFrame.new(-56.3797073, 0.786725998, -34.7733307, -0.999996483, 5.72552999e-005, -5.43296537e-008, -5.72552926e-005, -0.999996364, -6.74149163e-008, -5.10555438e-008, -6.74188172e-008, 0.999992788)
o71.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o71.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o71.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o71.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o71.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o71.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o71.Color = Color3.new(0.105882, 0.164706, 0.207843)
o72.Parent = o71
o72.Scale = Vector3.new(0.740740716, 1, 0.962962925)
o72.MeshType = Enum.MeshType.Wedge
o73.Parent = o1
o73.Material = Enum.Material.SmoothPlastic
o73.BrickColor = BrickColor.new("Black")
o73.Position = Vector3.new(-56.3797073, 0.949705005, -34.2177658)
o73.Rotation = Vector3.new(-180, -90, 0)
o73.Anchored = true
o73.CanCollide = false
o73.FormFactor = Enum.FormFactor.Custom
o73.Size = Vector3.new(0.622222245, 0.200000003, 0.200000003)
o73.CFrame = CFrame.new(-56.3797073, 0.949705005, -34.2177658, 0, 0, -1, 0, -1, 0, -1, 0, -0)
o73.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o73.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o73.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o73.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o73.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o73.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o73.Color = Color3.new(0.105882, 0.164706, 0.207843)
o74.Parent = o73
o74.Scale = Vector3.new(1, 0.333333343, 0.740740716)
o75.Name = "A3"
o75.Parent = o1
o75.Material = Enum.Material.SmoothPlastic
o75.BrickColor = BrickColor.new("Really black")
o75.Position = Vector3.new(-56.427803, 1.05340302, -33.7066612)
o75.Rotation = Vector3.new(-90, 0, -0)
o75.Anchored = true
o75.CanCollide = false
o75.FormFactor = Enum.FormFactor.Custom
o75.Size = Vector3.new(0.200000003, 0.400000006, 0.200000003)
o75.CFrame = CFrame.new(-56.427803, 1.05340302, -33.7066612, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o75.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o75.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o75.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o75.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o75.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o75.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o75.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o76.Parent = o75
o76.Scale = Vector3.new(0.185185179, 1, 0.185185179)
o77.Name = "Handle" -- DOTHIS
o77.Parent = o1
o77.Material = Enum.Material.SmoothPlastic
o77.BrickColor = BrickColor.new("Black")
o77.Position = Vector3.new(-56.3797073, 0.716360092, -34.3214722)
o77.Rotation = Vector3.new(-179.996719, -3.76802603e-007, 179.996719)
o77.Anchored = true
o77.CanCollide = false
o77.FormFactor = Enum.FormFactor.Custom
o77.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o77.CFrame = CFrame.new(-56.3797073, 0.716360092, -35.1214722, -1, -5.73714533e-005, -6.57644605e-009, -5.73714533e-005, 1, 5.73714533e-005, 3.2849623e-009, 5.73714533e-005, -1)
o77.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o77.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o77.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o77.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o77.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o77.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o77.Color = Color3.new(0.105882, 0.164706, 0.207843)
o78.Parent = o77
o78.Scale = Vector3.new(0.148148149, 0.518518507, 0.148148149)
o79.Name = "A1"
o79.Parent = o77
o79.Pitch = 0.40000000596046
o79.SoundId = "http://www.roblox.com/asset/?id=2697295"
o79.Volume = 1
o79.PlayOnRemove = true
o80.Name = "A2"
o80.Parent = o77
o80.Pitch = 0.5
o80.SoundId = "http://www.roblox.com/asset/?id=2697295"
o80.Volume = 1
o80.PlayOnRemove = true
o81.Name = "Fire2"
o81.Parent = o77
o81.SoundId = "http://www.roblox.com/asset/?id=2920959"
o81.Volume = 1
o82.Name = "Reload"
o82.Parent = o77
o82.Pitch = 0.69999998807907
o82.SoundId = "http://www.roblox.com/asset/?id=2697295"
o82.Volume = 1
o82.PlayOnRemove = true
o83.Name = "Fire"
o83.Parent = o77
o83.SoundId = "http://roblox.com/asset/?id=10209803"
o83.Volume = 1
o83.PlayOnRemove = true
o85.Parent = o1
o85.Material = Enum.Material.SmoothPlastic
o85.BrickColor = BrickColor.new("Black")
o85.Position = Vector3.new(-56.3797073, 0.246018052, -35.7850952)
o85.Rotation = Vector3.new(176.703568, 0, -0)
o85.Anchored = true
o85.CanCollide = false
o85.FormFactor = Enum.FormFactor.Custom
o85.Size = Vector3.new(0.200000003, 0.311111122, 0.259259254)
o85.CFrame = CFrame.new(-56.3797073, 0.246018052, -35.7850952, 1, 0, 0, 0, -0.998345375, -0.0575020239, 0, 0.0575020239, -0.998345375)
o85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o85.Color = Color3.new(0.105882, 0.164706, 0.207843)
o86.Parent = o85
o86.Scale = Vector3.new(0.592592597, 1, 1)
o86.MeshType = Enum.MeshType.Wedge
o87.Parent = o1
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Black")
o87.Position = Vector3.new(-56.3797073, 0.990445018, -33.3511124)
o87.Rotation = Vector3.new(-90, 0, -0)
o87.Anchored = true
o87.CanCollide = false
o87.FormFactor = Enum.FormFactor.Custom
o87.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o87.CFrame = CFrame.new(-56.3797073, 0.990445018, -33.3511124, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0.105882, 0.164706, 0.207843)
o88.Parent = o87
o88.Scale = Vector3.new(0.733333349, 0.296296299, 0.733333349)
o89.Parent = o1
o89.Material = Enum.Material.SmoothPlastic
o89.BrickColor = BrickColor.new("Black")
o89.Position = Vector3.new(-56.3797073, 0.812667012, -32.2188797)
o89.Rotation = Vector3.new(-90, 0, -0)
o89.Anchored = true
o89.CanCollide = false
o89.FormFactor = Enum.FormFactor.Custom
o89.Size = Vector3.new(0.200000003, 2.32370377, 0.200000003)
o89.CFrame = CFrame.new(-56.3797073, 0.812667012, -32.2188797, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o89.Color = Color3.new(0.105882, 0.164706, 0.207843)
o90.Parent = o89
o90.Scale = Vector3.new(0.592592597, 1, 0.592592597)
o91.Name = "A5"
o91.Parent = o1
o91.Material = Enum.Material.SmoothPlastic
o91.BrickColor = BrickColor.new("Really black")
o91.Position = Vector3.new(-56.450016, 0.986737013, -33.5548019)
o91.Rotation = Vector3.new(-180, -90, 0)
o91.Anchored = true
o91.CanCollide = false
o91.FormFactor = Enum.FormFactor.Custom
o91.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o91.CFrame = CFrame.new(-56.450016, 0.986737013, -33.5548019, -4.37113883e-008, 0, -1, 8.74227766e-008, -1, -3.82137093e-015, -1, -8.74227766e-008, 4.37113883e-008)
o91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o91.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o92.Parent = o91
o92.Scale = Vector3.new(0.481481463, 0.185185179, 0.0370370373)
o93.Parent = o1
o93.Material = Enum.Material.SmoothPlastic
o93.BrickColor = BrickColor.new("Really black")
o93.Position = Vector3.new(-56.3797073, 0.776841998, -36.0259552)
o93.Rotation = Vector3.new(-97.2966766, 0, -0)
o93.Anchored = true
o93.CanCollide = false
o93.FormFactor = Enum.FormFactor.Custom
o93.Size = Vector3.new(0.222222224, 0.200000003, 0.222222224)
o93.CFrame = CFrame.new(-56.3797073, 0.776841998, -36.0259552, 1, 0, 0, 0, -0.127006978, 0.991901875, 0, -0.991901875, -0.127006978)
o93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o93.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o94.Parent = o93
o94.Scale = Vector3.new(1, 0.592592597, 1)
o95.Parent = o1
o95.Material = Enum.Material.SmoothPlastic
o95.BrickColor = BrickColor.new("Black")
o95.Position = Vector3.new(-56.3797073, 0.620475054, -35.9180145)
o95.Rotation = Vector3.new(176.703568, -90, 0)
o95.Anchored = true
o95.CanCollide = false
o95.FormFactor = Enum.FormFactor.Custom
o95.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o95.CFrame = CFrame.new(-56.3797073, 0.620475054, -35.9180145, 0, 0, -1, -0.0575020239, -0.998345375, 0, -0.998345375, 0.0575020239, 0)
o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o95.Color = Color3.new(0.105882, 0.164706, 0.207843)
o96.Parent = o95
o96.Scale = Vector3.new(0.333333343, 0.851851821, 0.592592597)
o97.Name = "Flash"
o97.Parent = o1
o97.Material = Enum.Material.SmoothPlastic
o97.Transparency = 1
o97.Position = Vector3.new(-56.3797073, 0.983029008, -30.645153)
o97.Rotation = Vector3.new(90, 2.4206912e-008, -180)
o97.Anchored = true
o97.CanCollide = false
o97.FormFactor = Enum.FormFactor.Custom
o97.Size = Vector3.new(0.200000003, 0.451851845, 0.200000003)
o97.CFrame = CFrame.new(-56.3797073, 0.983029008, -30.645153, -1, 1.50995803e-007, 4.22490321e-010, -4.22483715e-010, 4.37113883e-008, -1, -1.50995803e-007, -1, -4.37113883e-008)
o97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o97.Color = Color3.new(0.105882, 0.164706, 0.207843)
o98.Parent = o97
o98.Scale = Vector3.new(1.33333337, 1.70000005, 1.33333337)
o98.MeshType = Enum.MeshType.Sphere
o99.Parent = o1
o99.Material = Enum.Material.SmoothPlastic
o99.BrickColor = BrickColor.new("Black")
o99.Position = Vector3.new(-56.3797073, 0.579321027, -34.2511139)
o99.Rotation = Vector3.new(180, -90, 0)
o99.Anchored = true
o99.CanCollide = false
o99.FormFactor = Enum.FormFactor.Custom
o99.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o99.CFrame = CFrame.new(-56.3797073, 0.579321027, -34.2511139, -4.37113883e-008, 0, -1, -1.50995803e-007, -1, 6.60023616e-015, -1, 1.50995803e-007, 4.37113883e-008)
o99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o99.Color = Color3.new(0.105882, 0.164706, 0.207843)
o100.Parent = o99
o100.Scale = Vector3.new(1, 0.111111112, 0.629629612)
o101.Parent = o1
o101.Material = Enum.Material.SmoothPlastic
o101.BrickColor = BrickColor.new("Black")
o101.Position = Vector3.new(-56.3797073, 0.93858099, -34.7437057)
o101.Rotation = Vector3.new(3.86261763e-006, -3.11287977e-006, 0.00328550767)
o101.Anchored = true
o101.CanCollide = false
o101.FormFactor = Enum.FormFactor.Custom
o101.Size = Vector3.new(0.200000003, 0.200000003, 0.251851857)
o101.CFrame = CFrame.new(-56.3797073, 0.93858099, -34.7437057, 0.999999642, -5.73429024e-005, -5.43300018e-008, 5.73428952e-005, 0.999999523, -6.74153426e-008, 5.76120769e-008, 6.74054803e-008, 0.999999225)
o101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o101.Color = Color3.new(0.105882, 0.164706, 0.207843)
o102.Parent = o101
o102.Scale = Vector3.new(0.740740716, 0.444444448, 1)
o102.MeshType = Enum.MeshType.Wedge
o103.Parent = o1
o103.Material = Enum.Material.SmoothPlastic
o103.BrickColor = BrickColor.new("Black")
o103.Position = Vector3.new(-56.3797073, 0.634137988, -34.3125839)
o103.Rotation = Vector3.new(-105, 0, -0)
o103.Anchored = true
o103.CanCollide = false
o103.FormFactor = Enum.FormFactor.Custom
o103.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o103.CFrame = CFrame.new(-56.3797073, 0.634137988, -34.3125839, 1, 0, 0, 0, -0.258819044, 0.965925813, 0, -0.965925813, -0.258819044)
o103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o103.Color = Color3.new(0.105882, 0.164706, 0.207843)
o104.Parent = o103
o104.Scale = Vector3.new(0.148148149, 0.148148149, 0.370370358)
o104.MeshType = Enum.MeshType.Wedge
o105.Parent = o1
o105.Material = Enum.Material.SmoothPlastic
o105.BrickColor = BrickColor.new("Black")
o105.Position = Vector3.new(-56.3685989, 1.07932901, -33.8216629)
o105.Rotation = Vector3.new(-180, -90, 0)
o105.Anchored = true
o105.CanCollide = false
o105.FormFactor = Enum.FormFactor.Custom
o105.Size = Vector3.new(0.629999995, 0.200000003, 0.200000003)
o105.CFrame = CFrame.new(-56.3685989, 1.07932901, -33.8216629, 1.29275622e-022, 3.08360836e-021, -1, 2.38418579e-007, -1, -3.08360836e-021, -1, -2.38418579e-007, -1.29276405e-022)
o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o105.Color = Color3.new(0.105882, 0.164706, 0.207843)
o106.Parent = o105
o106.Scale = Vector3.new(1, 0.148148149, 0.629629612)
o107.Parent = o1
o107.Material = Enum.Material.SmoothPlastic
o107.BrickColor = BrickColor.new("Black")
o107.Position = Vector3.new(-56.3797073, 0.618669033, -35.3519058)
o107.Rotation = Vector3.new(174.662048, 0, -0)
o107.Anchored = true
o107.CanCollide = false
o107.FormFactor = Enum.FormFactor.Custom
o107.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o107.CFrame = CFrame.new(-56.3797073, 0.618669033, -35.3519058, 1, 0, 0, 0, -0.995663345, -0.093030028, 0, 0.093030028, -0.995663345)
o107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o107.Color = Color3.new(0.105882, 0.164706, 0.207843)
o108.Parent = o107
o108.Scale = Vector3.new(0.592592597, 0.666666687, 0.814814806)
o108.MeshType = Enum.MeshType.Wedge
o109.Parent = o1
o109.Material = Enum.Material.SmoothPlastic
o109.BrickColor = BrickColor.new("Black")
o109.Position = Vector3.new(-56.3797073, 1.09043801, -33.4437065)
o109.Rotation = Vector3.new(179.999939, 9.39151141e-006, 180)
o109.Anchored = true
o109.CanCollide = false
o109.FormFactor = Enum.FormFactor.Custom
o109.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o109.CFrame = CFrame.new(-56.3797073, 1.09043801, -33.4437065, -0.999999523, -2.30273841e-007, 1.63912787e-007, -2.31439671e-007, 0.999999344, -1.05807089e-006, -1.04308121e-007, -1.06320465e-006, -0.999999106)
o109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o109.Color = Color3.new(0.105882, 0.164706, 0.207843)
o110.Parent = o109
o110.Scale = Vector3.new(0.740740716, 0.0370370373, 0.629629612)
o110.MeshType = Enum.MeshType.Wedge
o111.Parent = o1
o111.Material = Enum.Material.SmoothPlastic
o111.BrickColor = BrickColor.new("Black")
o111.Position = Vector3.new(-56.4130287, 0.927474022, -33.8918457)
o111.Rotation = Vector3.new(179.999939, 9.39151141e-006, 180)
o111.Anchored = true
o111.CanCollide = false
o111.FormFactor = Enum.FormFactor.Custom
o111.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o111.CFrame = CFrame.new(-56.4130287, 0.927474022, -33.8918457, -0.999999523, -2.30273841e-007, 1.63912787e-007, -2.31439671e-007, 0.999999344, -1.05807089e-006, -1.04308121e-007, -1.06320465e-006, -0.999999106)
o111.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o111.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o111.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o111.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o111.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o111.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o111.Color = Color3.new(0.105882, 0.164706, 0.207843)
o112.Parent = o111
o112.Scale = Vector3.new(0.407407403, 0.111111112, 0.148148149)
o112.MeshType = Enum.MeshType.Wedge
o113.Parent = o1
o113.Material = Enum.Material.SmoothPlastic
o113.BrickColor = BrickColor.new("Black")
o113.Position = Vector3.new(-56.3797073, 0.431652546, -34.5969696)
o113.Rotation = Vector3.new(-64.9894562, 0, -180)
o113.Anchored = true
o113.CanCollide = false
o113.FormFactor = Enum.FormFactor.Custom
o113.Size = Vector3.new(0.200000003, 0.200000003, 0.533333361)
o113.CFrame = CFrame.new(-56.3797073, 0.431652546, -34.5969696, -1, 0, 0, 0, -0.422785044, 0.906230092, 0, 0.906230092, 0.422785044)
o113.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o113.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o113.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o113.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o113.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o113.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o113.Color = Color3.new(0.105882, 0.164706, 0.207843)
o114.Parent = o113
o114.Scale = Vector3.new(0.666666687, 0.814814806, 1)
o114.MeshType = Enum.MeshType.Wedge
o115.Parent = o1
o115.Material = Enum.Material.SmoothPlastic
o115.BrickColor = BrickColor.new("Black")
o115.Position = Vector3.new(-56.3797073, 0.537683487, -34.841774)
o115.Rotation = Vector3.new(115.010536, 0, -180)
o115.Anchored = true
o115.CanCollide = false
o115.FormFactor = Enum.FormFactor.Custom
o115.Size = Vector3.new(0.200000003, 0.200000003, 0.533333361)
o115.CFrame = CFrame.new(-56.3797073, 0.537683487, -34.841774, -1, 0, 0, 0, 0.422785044, -0.906230092, 0, -0.906230092, -0.422785044)
o115.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o115.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o115.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o115.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o115.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o115.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o115.Color = Color3.new(0.105882, 0.164706, 0.207843)
o116.Parent = o115
o116.Scale = Vector3.new(0.666666687, 0.814814806, 1)
o116.MeshType = Enum.MeshType.Wedge
o117.Parent = o1
o117.Material = Enum.Material.SmoothPlastic
o117.BrickColor = BrickColor.new("Black")
o117.Position = Vector3.new(-56.338932, 0.990445018, -33.7066612)
o117.Rotation = Vector3.new(-180, -90, 0)
o117.Anchored = true
o117.CanCollide = false
o117.FormFactor = Enum.FormFactor.Custom
o117.Size = Vector3.new(0.400000006, 0.200000003, 0.200000003)
o117.CFrame = CFrame.new(-56.338932, 0.990445018, -33.7066612, 1.29275622e-022, 3.08360836e-021, -1, 2.38418579e-007, -1, -3.08360836e-021, -1, -2.38418579e-007, -1.29276405e-022)
o117.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o117.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o117.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o117.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o117.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o117.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o117.Color = Color3.new(0.105882, 0.164706, 0.207843)
o118.Parent = o117
o118.Scale = Vector3.new(1, 0.740740716, 0.333333343)
o119.Parent = o1
o119.Material = Enum.Material.SmoothPlastic
o119.BrickColor = BrickColor.new("Really black")
o119.Position = Vector3.new(-56.3797073, 0.12292695, -35.942215)
o119.Rotation = Vector3.new(-97.2966766, 0, -0)
o119.Anchored = true
o119.CanCollide = false
o119.FormFactor = Enum.FormFactor.Custom
o119.Size = Vector3.new(0.222222224, 0.200000003, 0.222222224)
o119.CFrame = CFrame.new(-56.3797073, 0.12292695, -35.942215, 1, 0, 0, 0, -0.127006978, 0.991901875, 0, -0.991901875, -0.127006978)
o119.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o119.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o119.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o119.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o119.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o119.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o119.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o120.Parent = o119
o120.Scale = Vector3.new(1, 0.592592597, 1)
o121.Parent = o1
o121.Material = Enum.Material.SmoothPlastic
o121.BrickColor = BrickColor.new("Black")
o121.Position = Vector3.new(-56.3797073, 0.812667012, -31.1844444)
o121.Rotation = Vector3.new(-90, 0, -0)
o121.Anchored = true
o121.CanCollide = false
o121.FormFactor = Enum.FormFactor.Custom
o121.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o121.CFrame = CFrame.new(-56.3797073, 0.812667012, -31.1844444, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o121.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o121.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o121.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o121.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o121.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o121.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o121.Color = Color3.new(0.105882, 0.164706, 0.207843)
o122.Parent = o121
o122.Scale = Vector3.new(0.740740716, 0.555555522, 0.740740716)
o123.Parent = o1
o123.Material = Enum.Material.SmoothPlastic
o123.BrickColor = BrickColor.new("Black")
o123.Position = Vector3.new(-56.3797073, 0.256204486, -34.8954315)
o123.Rotation = Vector3.new(-154.989471, -90, 0)
o123.Anchored = true
o123.CanCollide = false
o123.FormFactor = Enum.FormFactor.Custom
o123.Size = Vector3.new(0.303703696, 0.200000003, 0.200000003)
o123.CFrame = CFrame.new(-56.3797073, 0.256204486, -34.8954315, 0, 0, -1, 0.422785044, -0.906230092, 0, -0.906230092, -0.422785044, 0)
o123.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o123.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o123.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o123.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o123.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o123.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o123.Color = Color3.new(0.105882, 0.164706, 0.207843)
o124.Parent = o123
o124.Scale = Vector3.new(1, 0.111111112, 0.666666687)
o125.Parent = o1
o125.Material = Enum.Material.SmoothPlastic
o125.BrickColor = BrickColor.new("Black")
o125.Position = Vector3.new(-56.3797073, 0.408985019, -35.6609421)
o125.Rotation = Vector3.new(176.703568, 0, -0)
o125.Anchored = true
o125.CanCollide = false
o125.FormFactor = Enum.FormFactor.Custom
o125.Size = Vector3.new(0.200000003, 0.200000003, 0.540740728)
o125.CFrame = CFrame.new(-56.3797073, 0.408985019, -35.6609421, 1, 0, 0, 0, -0.998345375, -0.0575020239, 0, 0.0575020239, -0.998345375)
o125.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o125.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o125.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o125.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o125.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o125.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o125.Color = Color3.new(0.105882, 0.164706, 0.207843)
o126.Parent = o125
o126.Scale = Vector3.new(0.592592597, 0.814814806, 1)
o126.MeshType = Enum.MeshType.Wedge
o127.Parent = o1
o127.Material = Enum.Material.SmoothPlastic
o127.BrickColor = BrickColor.new("Black")
o127.Position = Vector3.new(-56.3797073, 0.754117012, -35.4656677)
o127.Rotation = Vector3.new(-93.2964478, 0, -0)
o127.Anchored = true
o127.CanCollide = false
o127.FormFactor = Enum.FormFactor.Custom
o127.Size = Vector3.new(0.2074074, 1.07407403, 0.2074074)
o127.CFrame = CFrame.new(-56.3797073, 0.754117012, -35.4656677, 1, 0, 0, 0, -0.0575020239, 0.998345375, 0, -0.998345375, -0.0575020239)
o127.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o127.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o127.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o127.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o127.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o127.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o127.Color = Color3.new(0.105882, 0.164706, 0.207843)
o128.Parent = o127
o129.Name = "S2"
o129.Parent = o1
o129.Material = Enum.Material.SmoothPlastic
o129.BrickColor = BrickColor.new("Black")
o129.Position = Vector3.new(-56.3797073, 0.81191802, -33.8399887)
o129.Rotation = Vector3.new(-90, 0, -0)
o129.Anchored = true
o129.CanCollide = false
o129.FormFactor = Enum.FormFactor.Custom
o129.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o129.CFrame = CFrame.new(-56.3797073, 0.81191802, -33.8399887, 1, 0, 0, 0, -4.37113883e-008, 1, 0, -1, -4.37113883e-008)
o129.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o129.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o129.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o129.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o129.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o129.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o129.Color = Color3.new(0.105882, 0.164706, 0.207843)
o130.Parent = o129
o130.Scale = Vector3.new(0.555555522, 0.592592597, 0.555555522)
o131.Parent = o1
o131.Material = Enum.Material.SmoothPlastic
o131.BrickColor = BrickColor.new("Black")
o131.Position = Vector3.new(-56.3797073, 0.86451602, -34.3807373)
o131.Rotation = Vector3.new(-90, -0.00328550814, 90.0004272)
o131.Anchored = true
o131.CanCollide = false
o131.FormFactor = Enum.FormFactor.Custom
o131.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o131.CFrame = CFrame.new(-56.3797073, 0.86451602, -34.3807373, -7.43468718e-006, -1, -5.73429352e-005, 7.50715756e-008, -5.73429352e-005, 1, -1, 7.43468263e-006, 7.54979013e-008)
o131.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o131.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o131.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o131.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o131.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o131.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o131.Color = Color3.new(0.105882, 0.164706, 0.207843)
o132.Parent = o131
o132.Scale = Vector3.new(0.222222224, 0.777777791, 0.222222224)
o133.Parent = o1
o133.Material = Enum.Material.SmoothPlastic
o133.BrickColor = BrickColor.new("Black")
o133.Position = Vector3.new(-56.3797073, 0.62270999, -35.4283905)
o133.Rotation = Vector3.new(176.703568, -90, 0)
o133.Anchored = true
o133.CanCollide = false
o133.FormFactor = Enum.FormFactor.Custom
o133.Size = Vector3.new(0.555555582, 0.237037033, 0.200000003)
o133.CFrame = CFrame.new(-56.3797073, 0.62270999, -35.4283905, 0, 0, -1, -0.0575020239, -0.998345375, 0, -0.998345375, 0.0575020239, 0)
o133.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o133.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o133.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o133.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o133.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o133.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o133.Color = Color3.new(0.105882, 0.164706, 0.207843)
o134.Parent = o133
o134.Scale = Vector3.new(1, 1, 0.592592597)
o135.Parent = o1
o135.Material = Enum.Material.SmoothPlastic
o135.BrickColor = BrickColor.new("Black")
o135.Position = Vector3.new(-56.3797073, 0.834883094, -34.0177765)
o135.Rotation = Vector3.new(-180, -90, 0)
o135.Anchored = true
o135.CanCollide = false
o135.FormFactor = Enum.FormFactor.Custom
o135.Size = Vector3.new(1.02222228, 0.200000003, 0.200000003)
o135.CFrame = CFrame.new(-56.3797073, 0.834883094, -34.0177765, -4.37113883e-008, 0, -1, 1.50995803e-007, -1, -6.60023616e-015, -1, -1.50995803e-007, 4.37113883e-008)
o135.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o135.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o135.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o135.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o135.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o135.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o135.Color = Color3.new(0.105882, 0.164706, 0.207843)
o136.Parent = o135
o136.Scale = Vector3.new(1, 0.814814806, 0.740740716)
o137.Parent = o1
o137.Material = Enum.Material.SmoothPlastic
o137.BrickColor = BrickColor.new("Black")
o137.Position = Vector3.new(-56.3797073, 0.983029008, -32.1868591)
o137.Rotation = Vector3.new(-90, 0, -0)
o137.Anchored = true
o137.CanCollide = false
o137.FormFactor = Enum.FormFactor.Custom
o137.Size = Vector3.new(0.200000003, 2.38777781, 0.200000003)
o137.CFrame = CFrame.new(-56.3797073, 0.983029008, -32.1868591, 1, 0, 0, 0, 0, 1, 0, -1, 0)
o137.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o137.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o137.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o137.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o137.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o137.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o137.Color = Color3.new(0.105882, 0.164706, 0.207843)
o138.Parent = o137
o138.Scale = Vector3.new(0.592592597, 1, 0.592592597)
o139.Parent = o1
o139.Material = Enum.Material.SmoothPlastic
o139.BrickColor = BrickColor.new("Black")
o139.Position = Vector3.new(-56.3797073, 0.484674454, -34.7193756)
o139.Rotation = Vector3.new(-154.989471, -90, 0)
o139.Anchored = true
o139.CanCollide = false
o139.FormFactor = Enum.FormFactor.Custom
o139.Size = Vector3.new(0.200000003, 0.540740728, 0.200000003)
o139.CFrame = CFrame.new(-56.3797073, 0.484674454, -34.7193756, 0, 0, -1, 0.422785044, -0.906230092, 0, -0.906230092, -0.422785044, 0)
o139.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o139.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o139.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o139.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o139.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o139.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o139.Color = Color3.new(0.105882, 0.164706, 0.207843)
o140.Parent = o139
o140.Scale = Vector3.new(0.518518507, 1, 0.666666687)
o141.Name = "S1"
o141.Parent = o1
o141.Material = Enum.Material.SmoothPlastic
o141.BrickColor = BrickColor.new("Black")
o141.Position = Vector3.new(-56.3797073, 0.81191802, -33.6436958)
o141.Rotation = Vector3.new(-90, -2.40123825e-007, -0)
o141.Anchored = true
o141.CanCollide = false
o141.FormFactor = Enum.FormFactor.Custom
o141.Size = Vector3.new(0.200000003, 0.274074078, 0.200000003)
o141.CFrame = CFrame.new(-56.3797073, 0.81191802, -33.6436958, 1, 0, -4.19095114e-009, 4.19095114e-009, -4.37113883e-008, 1, -1.83192289e-016, -1, -4.37113883e-008)
o141.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o141.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o141.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o141.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o141.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o141.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o141.Color = Color3.new(0.105882, 0.164706, 0.207843)
o142.Parent = o141
o142.Scale = Vector3.new(0.555555522, 1, 0.555555522)
o143.Parent = o1
o143.Material = Enum.Material.SmoothPlastic
o143.BrickColor = BrickColor.new("Black")
o143.Position = Vector3.new(-56.3797073, 0.905256987, -33.4437065)
o143.Rotation = Vector3.new(-180, -90, 0)
o143.Anchored = true
o143.CanCollide = false
o143.FormFactor = Enum.FormFactor.Custom
o143.Size = Vector3.new(0.200000003, 0.362962961, 0.200000003)
o143.CFrame = CFrame.new(-56.3797073, 0.905256987, -33.4437065, 0, 0, -1, 0, -1, 0, -1, 0, -0)
o143.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o143.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o143.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o143.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o143.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o143.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o143.Color = Color3.new(0.105882, 0.164706, 0.207843)
o144.Parent = o143
o144.Scale = Vector3.new(0.629629612, 1, 0.740740716)
o145.Parent = o1
o145.Material = Enum.Material.SmoothPlastic
o145.BrickColor = BrickColor.new("Black")
o145.Position = Vector3.new(-56.3056107, 1.02747703, -33.7066612)
o145.Rotation = Vector3.new(-90, -0.00328550814, 90.0004272)
o145.Anchored = true
o145.CanCollide = false
o145.FormFactor = Enum.FormFactor.Custom
o145.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o145.CFrame = CFrame.new(-56.3056107, 1.02747703, -33.7066612, -7.43468718e-006, -1, -5.73429352e-005, 7.50715756e-008, -5.73429352e-005, 1, -1, 7.43468263e-006, 7.54979013e-008)
o145.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o145.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o145.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o145.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o145.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o145.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o145.Color = Color3.new(0.105882, 0.164706, 0.207843)
o146.Parent = o145
o146.Scale = Vector3.new(0.222222224, 0.0370370373, 0.222222224)
o147.Parent = o1
o147.Material = Enum.Material.SmoothPlastic
o147.BrickColor = BrickColor.new("Really black")
o147.Position = Vector3.new(-56.3797073, 0.44988203, -35.9840927)
o147.Rotation = Vector3.new(172.703323, -90, 0)
o147.Anchored = true
o147.CanCollide = false
o147.FormFactor = Enum.FormFactor.Custom
o147.Size = Vector3.new(0.200000003, 0.65925926, 0.222222224)
o147.CFrame = CFrame.new(-56.3797073, 0.44988203, -35.9840927, 0, 0, -1, -0.127006978, -0.991901875, 0, -0.991901875, 0.127006978, 0)
o147.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o147.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o147.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o147.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o147.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o147.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o147.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o148.Parent = o147
o148.Scale = Vector3.new(0.592592597, 1, 1)
o97.BrickColor = BrickColor.new("Deep orange")
for i=1,#cors do
coroutine.resume(cors[i])
end
end)

-- i'm gonna break eiss ok --

game.ReplicatedStorage.RobloxLocked = true

-- Have fun xdddddddd :P

-- TypicalModders. I know you're here :P

print("Loaded m9!")