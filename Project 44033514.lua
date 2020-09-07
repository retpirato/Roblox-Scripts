--Yeahh, idk anymore. Since no one buys scripts anymore, i might aswell just throw this on the internet for all of you to enjoy--
--IF IT DOESN'T WORK, YOU'LL HAVE TO WEAR A SHIRT AND A PANTS, THIS IS A COMMON PROBLEM!--
--Since VengefulExtras showcased my script, i saw a couple of flaws, i will try to fix this.--
--Feel free to edit this however you like, but please, do not turn this into some lame ass edit which pretty much 1 shots anything/everyone--
--WIP(because nothing is perfect)--
--Inspired by the one and only, yes, TheDarkRevenant(KingAbsalom)--
--V is to transform, however, it currently does nothing besides changing the idle animation and outfit, V2 will have this changed--
--RIP Forums 12/4/17--
Player=game:GetService("Players").LocalPlayer
Character=Player.Character
Character.Humanoid.Name = "noneofurbusiness"
hum = Character.noneofurbusiness
LeftArm=Character["Left Arm"]
LeftLeg=Character["Left Leg"]
RightArm=Character["Right Arm"]
RightLeg=Character["Right Leg"]
Root=Character["HumanoidRootPart"]
Head=Character["Head"]
Torso=Character["Torso"]
attacking = false
walking = false
position = "Idle"
local sine = 0
removeuseless = game:GetService("Debris")
local change = 2
debounce = false
tauntdebounce = false
mouse = Player:GetMouse()
sID = rbxassetid
create = Instance.new
local soundtable = {907329532,907330011,907330103,907328384,907328262,907328908,907328689,907332997,907329293,907328516,907329893,907332670,907332856,907333294}
local soundtable2 = {"0&hash=6bed87228104d8c3443be33081b6021c","0&hash=646ef2bf9c3a8b039864711d51d424e5"}
local soundtable3 = {834001797,834001752,834001699,834001828}
rdnm3 = #soundtable3
rdnm = #soundtable
rototota = false
rdnm2 = #soundtable
rototota = false
i = 1
running = false
damagedebounce = false
comingouttoplay = true
transf1 = false
balldebounce = false
donttransform = false
damageall={}
Repeater={}
Repeater2={}
nonmeshRepeater={}
nonmeshRepeater2={}
dmgii={}
DamageAll2={}
SlowlyFade={}
TheEnd={}
TheEnd2={}
TheEnd3={}
Extreme={}
ExtremeM={}
TheEnd4={}
UpMover={}
openshocktable={}
LessSize={}
ForwardMover={}

punchexplosion = Instance.new("Sound", LeftArm)
punchexplosion.SoundId = "rbxassetid://909258891"
punchexplosion.Looped = false
punchexplosion.Volume = 2

punchexplosion2 = Instance.new("Sound", LeftArm)
punchexplosion2.SoundId = "rbxassetid://907528019"
punchexplosion2.Looped = false
punchexplosion2.Volume = 2

punchexplosion3 = Instance.new("Sound", LeftArm)
punchexplosion3.SoundId = "rbxassetid://564533374"
punchexplosion3.Looped = false
punchexplosion3.Volume = 2

punchcharge = Instance.new("Sound", LeftArm)
punchcharge.SoundId = "rbxassetid://909253995"
punchcharge.Looped = false
punchcharge.Volume = 2

punchcharge2 = Instance.new("Sound", LeftArm)
punchcharge2.SoundId = "rbxassetid://907532684"
punchcharge2.Looped = false
punchcharge2.Volume = 2

LSSJ = Instance.new("Sound", Torso)
LSSJ.SoundId = "rbxassetid://1412058990"
LSSJ.Volume = 8

punchcharge3 = Instance.new("Sound", LeftArm)
punchcharge3.SoundId = "rbxassetid://1177784554"
punchcharge3.Looped = false
punchcharge3.Volume = 2

boomswoosh = Instance.new("Sound", Torso)
boomswoosh.SoundId = "rbxassetid://633627961"
boomswoosh.Looped = false
boomswoosh.Volume = 1.5

TheEndSound = Instance.new("Sound", Torso)
TheEndSound.SoundId = "rbxassetid://264358562"
TheEndSound.Looped = false
TheEndSound.Volume = 3

TheEndSound2 = Instance.new("Sound", Torso)
TheEndSound2.SoundId = "rbxassetid://907530407"
TheEndSound2.Looped = true
TheEndSound2.Volume = 3

ROOOAAAAH = Instance.new("Sound", Torso)
ROOOAAAAH.SoundId = "rbxassetid://774733972"
ROOOAAAAH.Looped = false
ROOOAAAAH.Volume = 2

x0412 = Instance.new("Sound", Torso)
x0412.SoundId = "rbxassetid://962379106"
x0412.Looped = false
x0412.Volume = 8

local HEADLERP = Instance.new("ManualWeld")
HEADLERP.Parent = Head
HEADLERP.Part0 = Head
HEADLERP.Part1 = Torso
HEADLERP.C0 = CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local TORSOLERP = Instance.new("ManualWeld")
TORSOLERP.Parent = Torso
TORSOLERP.Part0 = Torso
TORSOLERP.Part1 = Torso
TORSOLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local ROOTLERP = Instance.new("ManualWeld")
ROOTLERP.Parent = Root
ROOTLERP.Part0 = Root
ROOTLERP.Part1 = Torso
ROOTLERP.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTARMLERP = Instance.new("ManualWeld")
RIGHTARMLERP.Parent = RightArm
RIGHTARMLERP.Part0 = RightArm
RIGHTARMLERP.Part1 = Torso
RIGHTARMLERP.C0 = CFrame.new(-1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTARMLERP = Instance.new("ManualWeld")
LEFTARMLERP.Parent = LeftArm
LEFTARMLERP.Part0 = LeftArm
LEFTARMLERP.Part1 = Torso
LEFTARMLERP.C0 = CFrame.new(1.5, 0, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local RIGHTLEGLERP = Instance.new("ManualWeld")
RIGHTLEGLERP.Parent = RightLeg
RIGHTLEGLERP.Part0 = RightLeg
RIGHTLEGLERP.Part1 = Torso
RIGHTLEGLERP.C0 = CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

local LEFTLEGLERP = Instance.new("ManualWeld")
LEFTLEGLERP.Parent = LeftLeg
LEFTLEGLERP.Part0 = LeftLeg
LEFTLEGLERP.Part1 = Torso
LEFTLEGLERP.C0 = CFrame.new(0.42, 2.0, 0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0))

HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.3) * CFrame.Angles(math.rad(20 + 3*math.cos(sine/18)), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(20), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0.1, 0.7) * CFrame.Angles(math.rad(-15), math.rad(30), math.rad(0.01)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, 0.3, 0.8) * CFrame.Angles(math.rad(-30), math.rad(-25), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.42, 2.0, 0.2) * CFrame.Angles(math.rad(0), math.rad(-20), math.rad(3)), 0.5)

local function weldBetween(a, b)
    local weld = Instance.new("ManualWeld", a)
    weld.Part0 = a
    weld.Part1 = b
    weld.C0 = a.CFrame:inverse() * b.CFrame
    return weld
end

godmode = coroutine.wrap(function()
while true do
hum.MaxHealth = math.huge
wait(0.0000001)
hum.Health = math.huge
wait()
end
end)
godmode()
ff = Instance.new("ForceField", Character)
ff.Visible = false

while comingouttoplay do
hum.WalkSpeed = 0
for i = 1, 15 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,-7.5,0), .8)
wait()
end
Root.Anchored = true
smallrift = Instance.new("Part", Torso)
smallrift.Size = Vector3.new(0.1, 0.1, 0.1)
smallrift.Material = "Neon"
smallrift.Transparency = 1
smallrift.Anchored = true
smallrift.CanCollide = false
smallrift.CFrame = Root.CFrame * CFrame.new(0,-3,0)
smallriftdecal = Instance.new("Decal", smallrift)
smallriftdecal.Face = "Top"
smallriftdecal.Texture = "rbxassetid://702583926"
local sm = weldBetween(smallrift, Root)
sm.C0 = CFrame.new(0, 0, 0)
sound = Instance.new("Sound", smallrift)
sound.Volume = 1
sound.Pitch = 1.2
sound.SoundId = "rbxassetid://344894344"
sound:Play()
local rotete = coroutine.wrap(function()
while comingouttoplay do
smallrift.CFrame = smallrift.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0), math.rad(1 + 5),0)
wait()
end
end)
rotete()
for i = 1, 50 do
smallrift.Size = smallrift.Size + Vector3.new(.4,0,.4)
wait()
end
wait(1)
for _,n in pairs(Character:GetChildren()) do
if n:IsA("Accessory") then n:Remove() end
end
for _,x in pairs(Character:GetChildren()) do
if x:IsA("Decal") then x:Remove() end
end
Torso.BrickColor = BrickColor.new("Really black")
Head.BrickColor = BrickColor.new("Really black")
Character.Shirt:Destroy()
Character.Pants:Destroy()
shirt = Instance.new("Shirt", Character)
shirt.Name = "Shirt"
pants = Instance.new("Pants", Character)
pants.Name = "Pants"
Character.Shirt.ShirtTemplate = "http://www.roblox.com/asset/?id=520226382"
Character.Pants.PantsTemplate = "http://www.roblox.com/asset/?id=520226569"

local DarkReaper = Instance.new("Part",Character)
DarkReaper.Size = Vector3.new(2,2,2)
DarkReaper.CFrame = Head.CFrame
DarkReaper.CanCollide = false
local DarkReaperWeld = Instance.new("Weld",DarkReaper)
DarkReaperWeld.Part0 = DarkReaper
DarkReaperWeld.Part1 = Head
DarkReaperWeld.C0 = DarkReaper.CFrame:inverse() * Head.CFrame
mdark = Instance.new("SpecialMesh", DarkReaper)
mdark.MeshType = "FileMesh"
mdark.Scale = Vector3.new(1.08, 1.08, 1.08)
mdark.MeshId,mdark.TextureId = 'http://www.roblox.com/asset/?id=16150814','http://www.roblox.com/asset/?id=16150799'
mdark.VertexColor = Vector3.new(1,1,1)

local DarkReaperANTLERS = Instance.new("Part",Character)
DarkReaperANTLERS.Size = Vector3.new(2,2,2)
DarkReaperANTLERS.CFrame = Head.CFrame
DarkReaperANTLERS.CanCollide = false
local DarkReaperWeld2 = Instance.new("Weld",DarkReaperANTLERS)
DarkReaperWeld2.Part0 = DarkReaperANTLERS
DarkReaperWeld2.Part1 = Head
DarkReaperWeld2.C0 = DarkReaperANTLERS.CFrame:inverse() * Head.CFrame * CFrame.new(0,-1.2,0)
local mdark2 = Instance.new("SpecialMesh", DarkReaperANTLERS)
mdark2.MeshType = "FileMesh"
mdark2.Scale = Vector3.new(1.08, 1.08, 1.08)
mdark2.MeshId,mdark2.TextureId = 'http://www.roblox.com/asset/?id=1271547','http://www.roblox.com/asset/?id=147540850'
mdark2.VertexColor = Vector3.new(255,0,0)	

HandCannonTop1 = Instance.new("Part", LeftArm)
HandCannonTop1.CanCollide = false
HandCannonTop1.Size = Vector3.new(1.1, 0.1, 1.1)
HandCannonTop1.BottomSurface = "SmoothNoOutlines"
HandCannonTop1.TopSurface = "SmoothNoOutlines"
HandCannonTop1.LeftSurface = "SmoothNoOutlines"
HandCannonTop1.RightSurface = "SmoothNoOutlines"
HandCannonTop1.FrontSurface = "SmoothNoOutlines"
HandCannonTop1.BackSurface = "SmoothNoOutlines"
HandCannonTop1.Material = "Metal"
local weld2 = weldBetween(HandCannonTop1, LeftArm)
weld2.C0 = CFrame.new(0, .9, 0)

FixedER = Instance.new("Part", LeftArm)
FixedER.CanCollide = false
FixedER.Size = Vector3.new(1.1, 0.1, 1.1)
FixedER.BottomSurface = "SmoothNoOutlines"
FixedER.TopSurface = "SmoothNoOutlines"
FixedER.LeftSurface = "SmoothNoOutlines"
FixedER.RightSurface = "SmoothNoOutlines"
FixedER.FrontSurface = "SmoothNoOutlines"
FixedER.BackSurface = "SmoothNoOutlines"
FixedER.Material = "Metal"
local weldFixedER = weldBetween(FixedER, LeftArm)
weldFixedER.C0 = CFrame.new(0, .7, 0)


FixedER4 = Instance.new("Part", LeftArm)
FixedER4.CanCollide = false
FixedER4.Size = Vector3.new(1.1, 0.1, 1.1)
FixedER4.BottomSurface = "SmoothNoOutlines"
FixedER4.TopSurface = "SmoothNoOutlines"
FixedER4.LeftSurface = "SmoothNoOutlines"
FixedER4.RightSurface = "SmoothNoOutlines"
FixedER4.FrontSurface = "SmoothNoOutlines"
FixedER4.BackSurface = "SmoothNoOutlines"
FixedER4.Material = "Metal"
local weldFixedER4 = weldBetween(FixedER4, LeftArm)
weldFixedER4.C0 = CFrame.new(0, .5, 0)

FixedER5 = Instance.new("Part", LeftArm)
FixedER5.CanCollide = false
FixedER5.Size = Vector3.new(1.1, 0.1, 1.1)
FixedER5.BottomSurface = "SmoothNoOutlines"
FixedER5.TopSurface = "SmoothNoOutlines"
FixedER5.LeftSurface = "SmoothNoOutlines"
FixedER5.RightSurface = "SmoothNoOutlines"
FixedER5.FrontSurface = "SmoothNoOutlines"
FixedER5.BackSurface = "SmoothNoOutlines"
FixedER5.Material = "Metal"
local weldFixedER5 = weldBetween(FixedER5, LeftArm)
weldFixedER5.C0 = CFrame.new(0, -.5, 0)

FixedER2 = Instance.new("Part", LeftArm)
FixedER2.CanCollide = false
FixedER2.Size = Vector3.new(1.1, 0.1, 1.1)
FixedER2.BottomSurface = "SmoothNoOutlines"
FixedER2.TopSurface = "SmoothNoOutlines"
FixedER2.LeftSurface = "SmoothNoOutlines"
FixedER2.RightSurface = "SmoothNoOutlines"
FixedER2.FrontSurface = "SmoothNoOutlines"
FixedER2.BackSurface = "SmoothNoOutlines"
FixedER2.Material = "Metal"
local weldFixedER2 = weldBetween(FixedER2, LeftArm)
weldFixedER2.C0 = CFrame.new(0, -.7, 0)


FixedER3 = Instance.new("Part", LeftArm)
FixedER3.CanCollide = false
FixedER3.Size = Vector3.new(1.1, 0.1, 1.1)
FixedER3.BottomSurface = "SmoothNoOutlines"
FixedER3.TopSurface = "SmoothNoOutlines"
FixedER3.LeftSurface = "SmoothNoOutlines"
FixedER3.RightSurface = "SmoothNoOutlines"
FixedER3.FrontSurface = "SmoothNoOutlines"
FixedER3.BackSurface = "SmoothNoOutlines"
FixedER3.Material = "Metal"
local weldFixedER3 = weldBetween(FixedER3, LeftArm)
weldFixedER3.C0 = CFrame.new(0, -.9, 0)

HandCannonTop2 = Instance.new("Part", LeftArm)
HandCannonTop2.CanCollide = false
HandCannonTop2.Size = Vector3.new(1.1, 0.3, 1.1)
HandCannonTop2.BottomSurface = "SmoothNoOutlines"
HandCannonTop2.TopSurface = "SmoothNoOutlines"
HandCannonTop2.LeftSurface = "SmoothNoOutlines"
HandCannonTop2.RightSurface = "SmoothNoOutlines"
HandCannonTop2.FrontSurface = "SmoothNoOutlines"
HandCannonTop2.BackSurface = "SmoothNoOutlines"
HandCannonTop2.Material = "Metal"
HandCannonTop2.Transparency = 1
local weld3 = weldBetween(HandCannonTop2, LeftArm)
weld3.C0 = CFrame.new(0, -.8, 0)

HandCannonTop3 = Instance.new("Part", LeftArm)
HandCannonTop3.CanCollide = false
HandCannonTop3.Size = Vector3.new(1.1, 0.3, 1.1)
HandCannonTop3.BottomSurface = "SmoothNoOutlines"
HandCannonTop3.TopSurface = "SmoothNoOutlines"
HandCannonTop3.Material = "Metal"
HandCannonTop3.LeftSurface = "SmoothNoOutlines"
HandCannonTop3.RightSurface = "SmoothNoOutlines"
HandCannonTop3.FrontSurface = "SmoothNoOutlines"
HandCannonTop3.BackSurface = "SmoothNoOutlines"
local weld4 = weldBetween(HandCannonTop3, LeftArm)
weld4.C0 = CFrame.new(0, 0, 0)

secretpart = Instance.new("Part", LeftArm)
secretpart.CanCollide = false
secretpart.Size = Vector3.new(1.15, 0.25, 1.15)
secretpart.BottomSurface = "SmoothNoOutlines"
secretpart.TopSurface = "SmoothNoOutlines"
secretpart.Material = "Metal"
secretpart.BrickColor = BrickColor.new("Really black")
secretpart.LeftSurface = "SmoothNoOutlines"
secretpart.RightSurface = "SmoothNoOutlines"
secretpart.FrontSurface = "SmoothNoOutlines"
secretpart.BackSurface = "SmoothNoOutlines"
local secret = weldBetween(secretpart, LeftArm)
secret.C0 = CFrame.new(0, 0, 0)

HandCannonTop4 = Instance.new("Part", LeftArm)
HandCannonTop4.CanCollide = false
HandCannonTop4.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop4.BottomSurface = "SmoothNoOutlines"
HandCannonTop4.TopSurface = "SmoothNoOutlines"
HandCannonTop4.Material = "Granite"
HandCannonTop4.BrickColor = BrickColor.new("Crimson")
local weld5 = weldBetween(HandCannonTop4, LeftArm)
weld5.C0 = CFrame.new(0, 0, 0)

HandCannonTop5 = Instance.new("Part", LeftArm)
HandCannonTop5.CanCollide = false
HandCannonTop5.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop5.BottomSurface = "SmoothNoOutlines"
HandCannonTop5.TopSurface = "SmoothNoOutlines"
HandCannonTop5.Material = "Granite"
HandCannonTop5.BrickColor = BrickColor.new("Crimson")
local weld6 = weldBetween(HandCannonTop5, LeftArm)
weld6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0)

HandCannonTop6 = Instance.new("Part", LeftArm)
HandCannonTop6.CanCollide = false
HandCannonTop6.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop6.BottomSurface = "SmoothNoOutlines"
HandCannonTop6.TopSurface = "SmoothNoOutlines"
HandCannonTop6.Material = "Granite"
HandCannonTop6.BrickColor = BrickColor.new("Crimson")
local weld7 = weldBetween(HandCannonTop6, LeftArm)
weld7.C0 = CFrame.new(.2, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0)

HandCannonTop7 = Instance.new("Part", LeftArm)
HandCannonTop7.CanCollide = false
HandCannonTop7.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop7.BottomSurface = "SmoothNoOutlines"
HandCannonTop7.TopSurface = "SmoothNoOutlines"
HandCannonTop7.Material = "Granite"
HandCannonTop7.BrickColor = BrickColor.new("Crimson")
local weld8 = weldBetween(HandCannonTop7, LeftArm)
weld8.C0 = CFrame.new(.4, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0)

HandCannonTop8 = Instance.new("Part", LeftArm)
HandCannonTop8.CanCollide = false
HandCannonTop8.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop8.BottomSurface = "SmoothNoOutlines"
HandCannonTop8.TopSurface = "SmoothNoOutlines"
HandCannonTop8.Material = "Granite"
HandCannonTop8.BrickColor = BrickColor.new("Crimson")
local weld9 = weldBetween(HandCannonTop8, LeftArm)
weld9.C0 = CFrame.new(-.2, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0)


HandCannonTop9 = Instance.new("Part", LeftArm)
HandCannonTop9.CanCollide = false
HandCannonTop9.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop9.BottomSurface = "SmoothNoOutlines"
HandCannonTop9.TopSurface = "SmoothNoOutlines"
HandCannonTop9.Material = "Granite"
HandCannonTop9.BrickColor = BrickColor.new("Crimson")
local weld10 = weldBetween(HandCannonTop9, LeftArm)
weld10.C0 = CFrame.new(-.4, 0, 0) * CFrame.Angles(math.rad(0), math.rad(90), 0)

HandCannonTop10 = Instance.new("Part", LeftArm)
HandCannonTop10.CanCollide = false
HandCannonTop10.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop10.BottomSurface = "SmoothNoOutlines"
HandCannonTop10.TopSurface = "SmoothNoOutlines"
HandCannonTop10.Material = "Granite"
HandCannonTop10.BrickColor = BrickColor.new("Crimson")
local weld11 = weldBetween(HandCannonTop10, LeftArm)
weld11.C0 = CFrame.new(-.4, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

HandCannonTop11 = Instance.new("Part", LeftArm)
HandCannonTop11.CanCollide = false
HandCannonTop11.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop11.BottomSurface = "SmoothNoOutlines"
HandCannonTop11.TopSurface = "SmoothNoOutlines"
HandCannonTop11.Material = "Granite"
HandCannonTop11.BrickColor = BrickColor.new("Crimson")
local weld12 = weldBetween(HandCannonTop10, LeftArm)
weld12.C0 = CFrame.new(-.2, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

HandCannonTop12 = Instance.new("Part", LeftArm)
HandCannonTop12.CanCollide = false
HandCannonTop12.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop12.BottomSurface = "SmoothNoOutlines"
HandCannonTop12.TopSurface = "SmoothNoOutlines"
HandCannonTop12.Material = "Granite"
HandCannonTop12.BrickColor = BrickColor.new("Crimson")
local weld13 = weldBetween(HandCannonTop12, LeftArm)
weld13.C0 = CFrame.new(.2, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

HandCannonTop13 = Instance.new("Part", LeftArm)
HandCannonTop13.CanCollide = false
HandCannonTop13.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop13.BottomSurface = "SmoothNoOutlines"
HandCannonTop13.TopSurface = "SmoothNoOutlines"
HandCannonTop13.Material = "Granite"
HandCannonTop13.BrickColor = BrickColor.new("Crimson")
local weld14 = weldBetween(HandCannonTop13, LeftArm)
weld14.C0 = CFrame.new(.4, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)


HandCannonTop14 = Instance.new("Part", LeftArm)
HandCannonTop14.CanCollide = false
HandCannonTop14.Size = Vector3.new(0.1, 1.7, 1.03)
HandCannonTop14.BottomSurface = "SmoothNoOutlines"
HandCannonTop14.TopSurface = "SmoothNoOutlines"
HandCannonTop14.Material = "Granite"
HandCannonTop14.BrickColor = BrickColor.new("Crimson")
local weld15 = weldBetween(HandCannonTop14, LeftArm)
weld15.C0 = CFrame.new(-.4, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

corecircle = Instance.new("Part", LeftArm)
corecircle.CanCollide = false
corecircle.Size = Vector3.new(0,0,0)
corecircle.Material = "Slate"
corecircleMESH = Instance.new("SpecialMesh", corecircle)
corecircleMESH.Scale = Vector3.new(8,17,17)
corecircleMESH.MeshType = "Cylinder"
local weldcore = weldBetween(corecircle, HandCannonTop3)
weldcore.C0 = CFrame.new(.4, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

corecircle2 = Instance.new("Part", LeftArm)
corecircle2.CanCollide = false
corecircle2.Size = Vector3.new(0,0,0)
corecircle2.Material = "Fabric"
corecircle2.BrickColor = BrickColor.new("Really black")
corecircleMESH2 = Instance.new("SpecialMesh", corecircle2)
corecircleMESH2.Scale = Vector3.new(7,18,18)
corecircleMESH2.MeshType = "Cylinder"
local weldcore2 = weldBetween(corecircle2, HandCannonTop3)
weldcore2.C0 = CFrame.new(.4, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

TheCore = Instance.new("Part", LeftArm)
TheCore.CanCollide = false
TheCore.Size = Vector3.new(0,0,0)
TheCore.Material = "Fabric"
TheCore.BrickColor = BrickColor.new("Crimson")
TheCoreMESH = Instance.new("SpecialMesh", TheCore)
TheCoreMESH.Scale = Vector3.new(.3,.3,.3)
TheCoreMESH.MeshId = "rbxassetid://19251107"
local TheCoreweld = weldBetween(TheCore, HandCannonTop3)
TheCoreweld.C0 = CFrame.new(0, .6, 0) * CFrame.Angles(math.rad(90), math.rad(90), math.rad(0))

local fidgetspinner = coroutine.wrap(function()
while true do
TheCoreweld.C0 = TheCoreweld.C0 * CFrame.Angles(math.rad(1), math.rad(0), math.rad(0))
wait()
end
end)
fidgetspinner()

Gear1 = Instance.new("Part", LeftArm)
Gear1.CanCollide = false
Gear1.Size = Vector3.new(1, 1, 1)
Gear1.CFrame = CFrame.new(0, 1, 0)
Gear1.BrickColor = BrickColor.new("Really black")
GearMesh1 = Instance.new("FileMesh", Gear1)
GearMesh1.MeshId = "rbxassetid://156292343"
local weld6 = weldBetween(Gear1, HandCannonTop2)
weld6.C0 = CFrame.new(0, 0, -.2) * CFrame.Angles(math.rad(90), math.rad(0), 0)

Gear2 = Instance.new("Part", LeftArm)
Gear2.CanCollide = false
Gear2.Size = Vector3.new(1, 1, 1)
Gear2.CFrame = CFrame.new(0, -1, 0)
Gear2.BrickColor = BrickColor.new("Really black")
GearMesh2 = Instance.new("FileMesh", Gear2)
GearMesh2.MeshId = "rbxassetid://156292343"
local weld7 = weldBetween(Gear2, HandCannonTop1)
weld7.C0 = CFrame.new(0, 0, .1) * CFrame.Angles(math.rad(90), math.rad(0), 0)

EnergyCorePART = Instance.new("Part", LeftArm)
EnergyCorePART.Size = Vector3.new(0.5, 0.5, 0.5)
EnergyCorePART.Material = "Neon"
EnergyCorePART.BrickColor = BrickColor.new("Crimson")
EnergyCore1 = Instance.new("SpecialMesh", EnergyCorePART)
EnergyCore1.MeshType = "Sphere"
EnergyCore1.Scale = Vector3.new(1,1,1)
local weldENERGY = weldBetween(EnergyCorePART, Gear1)
weldENERGY.C0 = CFrame.new(0, -0.1, -0) * CFrame.Angles(math.rad(90), math.rad(0), 0)

CorruptedArm = Instance.new("Part", LeftArm)
CorruptedArm.CanCollide = false
CorruptedArm.Size = Vector3.new(1.001, 2.001, 1.001)
CorruptedArm.BottomSurface = "SmoothNoOutlines"
CorruptedArm.TopSurface = "SmoothNoOutlines"
CorruptedArm.Material = "Neon"
CorruptedArm.Transparency = 0
CorruptedArm.BrickColor = BrickColor.new("Really red")
local weldcor = weldBetween(CorruptedArm, LeftArm)
weldcor.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

CorruptedArm2 = Instance.new("Part", LeftArm)
CorruptedArm2.CanCollide = false
CorruptedArm2.Size = Vector3.new(1.028, 2.028, 1.028)
CorruptedArm2.BottomSurface = "SmoothNoOutlines"
CorruptedArm2.TopSurface = "SmoothNoOutlines"
CorruptedArm2.Material = "Neon"
CorruptedArm2.Transparency = 1
CorruptedArm2.BrickColor = BrickColor.new("Crimson")
local weldcor2 = weldBetween(CorruptedArm2, LeftArm)
weldcor2.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)

ArmorPlating = Instance.new("Part", LeftArm)
ArmorPlating.CanCollide = false
ArmorPlating.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating.BottomSurface = "SmoothNoOutlines"
ArmorPlating.TopSurface = "SmoothNoOutlines"
ArmorPlating.Material = "Neon"
ArmorPlating.BrickColor = BrickColor.new("Crimson")
ArmorPlating.LeftSurface = "SmoothNoOutlines"
ArmorPlating.RightSurface = "SmoothNoOutlines"
ArmorPlating.FrontSurface = "SmoothNoOutlines"
ArmorPlating.BackSurface = "SmoothNoOutlines"
local Armoring = weldBetween(ArmorPlating, HandCannonTop3)
Armoring.C0 = CFrame.new(.4, 0, .53)

ArmorPlating2 = Instance.new("Part", LeftArm)
ArmorPlating2.CanCollide = false
ArmorPlating2.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating2.BottomSurface = "SmoothNoOutlines"
ArmorPlating2.TopSurface = "SmoothNoOutlines"
ArmorPlating2.Material = "Neon"
ArmorPlating2.BrickColor = BrickColor.new("Crimson")
ArmorPlating2.LeftSurface = "SmoothNoOutlines"
ArmorPlating2.RightSurface = "SmoothNoOutlines"
ArmorPlating2.FrontSurface = "SmoothNoOutlines"
ArmorPlating2.BackSurface = "SmoothNoOutlines"
local Armoring2 = weldBetween(ArmorPlating2, HandCannonTop3)
Armoring2.C0 = CFrame.new(.2, 0, .53)

ArmorPlating3 = Instance.new("Part", LeftArm)
ArmorPlating3.CanCollide = false
ArmorPlating3.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating3.BottomSurface = "SmoothNoOutlines"
ArmorPlating3.TopSurface = "SmoothNoOutlines"
ArmorPlating3.Material = "Neon"
ArmorPlating3.BrickColor = BrickColor.new("Crimson")
ArmorPlating3.LeftSurface = "SmoothNoOutlines"
ArmorPlating3.RightSurface = "SmoothNoOutlines"
ArmorPlating3.FrontSurface = "SmoothNoOutlines"
ArmorPlating3.BackSurface = "SmoothNoOutlines"
local Armoring3 = weldBetween(ArmorPlating3, HandCannonTop3)
Armoring3.C0 = CFrame.new(0, 0, .53)

ArmorPlating4 = Instance.new("Part", LeftArm)
ArmorPlating4.CanCollide = false
ArmorPlating4.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating4.BottomSurface = "SmoothNoOutlines"
ArmorPlating4.TopSurface = "SmoothNoOutlines"
ArmorPlating4.Material = "Neon"
ArmorPlating4.BrickColor = BrickColor.new("Crimson")
ArmorPlating4.LeftSurface = "SmoothNoOutlines"
ArmorPlating4.RightSurface = "SmoothNoOutlines"
ArmorPlating4.FrontSurface = "SmoothNoOutlines"
ArmorPlating4.BackSurface = "SmoothNoOutlines"
local Armoring4 = weldBetween(ArmorPlating4, HandCannonTop3)
Armoring4.C0 = CFrame.new(-.2, 0, .53)

ArmorPlating5 = Instance.new("Part", LeftArm)
ArmorPlating5.CanCollide = false
ArmorPlating5.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating5.BottomSurface = "SmoothNoOutlines"
ArmorPlating5.TopSurface = "SmoothNoOutlines"
ArmorPlating5.Material = "Neon"
ArmorPlating5.BrickColor = BrickColor.new("Crimson")
ArmorPlating5.LeftSurface = "SmoothNoOutlines"
ArmorPlating5.RightSurface = "SmoothNoOutlines"
ArmorPlating5.FrontSurface = "SmoothNoOutlines"
ArmorPlating5.BackSurface = "SmoothNoOutlines"
local Armoring5 = weldBetween(ArmorPlating5, HandCannonTop3)
Armoring5.C0 = CFrame.new(-.4, 0, .53)

ArmorPlating6 = Instance.new("Part", LeftArm)
ArmorPlating6.CanCollide = false
ArmorPlating6.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating6.BottomSurface = "SmoothNoOutlines"
ArmorPlating6.TopSurface = "SmoothNoOutlines"
ArmorPlating6.Material = "Neon"
ArmorPlating6.BrickColor = BrickColor.new("Crimson")
ArmorPlating6.LeftSurface = "SmoothNoOutlines"
ArmorPlating6.RightSurface = "SmoothNoOutlines"
ArmorPlating6.FrontSurface = "SmoothNoOutlines"
ArmorPlating6.BackSurface = "SmoothNoOutlines"
local Armoring6 = weldBetween(ArmorPlating6, HandCannonTop3)
Armoring6.C0 = CFrame.new(.4, 0, -.53)

ArmorPlating7 = Instance.new("Part", LeftArm)
ArmorPlating7.CanCollide = false
ArmorPlating7.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating7.BottomSurface = "SmoothNoOutlines"
ArmorPlating7.TopSurface = "SmoothNoOutlines"
ArmorPlating7.Material = "Neon"
ArmorPlating7.BrickColor = BrickColor.new("Crimson")
ArmorPlating7.LeftSurface = "SmoothNoOutlines"
ArmorPlating7.RightSurface = "SmoothNoOutlines"
ArmorPlating7.FrontSurface = "SmoothNoOutlines"
ArmorPlating7.BackSurface = "SmoothNoOutlines"
local Armoring7 = weldBetween(ArmorPlating7, HandCannonTop3)
Armoring7.C0 = CFrame.new(.2, 0, -.53)

ArmorPlating8 = Instance.new("Part", LeftArm)
ArmorPlating8.CanCollide = false
ArmorPlating8.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating8.BottomSurface = "SmoothNoOutlines"
ArmorPlating8.TopSurface = "SmoothNoOutlines"
ArmorPlating8.Material = "Neon"
ArmorPlating8.BrickColor = BrickColor.new("Crimson")
ArmorPlating8.LeftSurface = "SmoothNoOutlines"
ArmorPlating8.RightSurface = "SmoothNoOutlines"
ArmorPlating8.FrontSurface = "SmoothNoOutlines"
ArmorPlating8.BackSurface = "SmoothNoOutlines"
local Armoring8 = weldBetween(ArmorPlating8, HandCannonTop3)
Armoring8.C0 = CFrame.new(0, 0, -.53)

ArmorPlating9 = Instance.new("Part", LeftArm)
ArmorPlating9.CanCollide = false
ArmorPlating9.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating9.BottomSurface = "SmoothNoOutlines"
ArmorPlating9.TopSurface = "SmoothNoOutlines"
ArmorPlating9.Material = "Neon"
ArmorPlating9.BrickColor = BrickColor.new("Crimson")
ArmorPlating9.LeftSurface = "SmoothNoOutlines"
ArmorPlating9.RightSurface = "SmoothNoOutlines"
ArmorPlating9.FrontSurface = "SmoothNoOutlines"
ArmorPlating9.BackSurface = "SmoothNoOutlines"
local Armoring9 = weldBetween(ArmorPlating9, HandCannonTop3)
Armoring9.C0 = CFrame.new(-.2, 0, -.53)

ArmorPlating10 = Instance.new("Part", LeftArm)
ArmorPlating10.CanCollide = false
ArmorPlating10.Size = Vector3.new(0.1, 0.28, 0.1)
ArmorPlating10.BottomSurface = "SmoothNoOutlines"
ArmorPlating10.TopSurface = "SmoothNoOutlines"
ArmorPlating10.Material = "Neon"
ArmorPlating10.BrickColor = BrickColor.new("Crimson")
ArmorPlating10.LeftSurface = "SmoothNoOutlines"
ArmorPlating10.RightSurface = "SmoothNoOutlines"
ArmorPlating10.FrontSurface = "SmoothNoOutlines"
ArmorPlating10.BackSurface = "SmoothNoOutlines"
local Armoring10 = weldBetween(ArmorPlating10, HandCannonTop3)
Armoring10.C0 = CFrame.new(-.4, 0, -.53)

light = Instance.new("PointLight", Torso)
light.Color = Color3.new(255,0,0)
light.Range = 5
light.Brightness = 50

local Switcher = coroutine.wrap(function()
while true do
for i = 1, 50 do
CorruptedArm2.Transparency = CorruptedArm2.Transparency - 0.005
CorruptedArm.Transparency = CorruptedArm.Transparency + 0.02
wait()
end
for i = 1, 50 do
CorruptedArm2.Transparency = CorruptedArm2.Transparency + 0.005
CorruptedArm.Transparency = CorruptedArm.Transparency - 0.02
wait()
end
wait()
end
end)
Switcher()
Root.Anchored = false
Root.CanCollide = false
local removesize = coroutine.wrap(function()
while comingouttoplay do
smallrift.Size = smallrift.Size - Vector3.new(1,1,1)
wait()
end
end)
removesize()
sound2 = Instance.new("Sound", Torso)
sound2.SoundId = "rbxassetid://1292034965"
sound2.Volume = 4
sound2:Play()
for i = 1, 10 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0,7.5,0), .4)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0.3) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,0,-.2) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,0,-.2) * CFrame.Angles(math.rad(20),math.rad(0),math.rad(0)), 0.8)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
wait()
end
local shockwefe = coroutine.wrap(function()
shockwave = Instance.new("Part", Torso)
shockwave.Size = Vector3.new(5, 5, 5)
shockwave.Transparency = 0
shockwave.BrickColor = BrickColor.new("Artichoke")
shockwave.Anchored = true
shockwave.CanCollide = false
shockwave.CFrame = Root.CFrame*CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(0))
sh1 = Instance.new("SpecialMesh", shockwave) 
sh1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sh1.Scale = Vector3.new(0, 0, 0)
removeuseless:AddItem(shockwave,5)
for i = 1, 100 do
sh1.Scale = sh1.Scale + Vector3.new(3,3,0)
shockwave.Transparency = shockwave.Transparency + 0.05
wait()
end
end)
shockwefe()
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-5), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(-10), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
wait()
end
removeuseless:AddItem(smallrift,4)
comingouttoplay = false
wait()
end

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='m' then
if debounce then return end
debounce = true
attacking = true
hum.WalkSpeed = 0
maketransparencysetto = coroutine.wrap(function()
brolycharge = Instance.new("Sound", Torso)
brolycharge.SoundId = "rbxassetid://722133423"
brolycharge.Volume = 4
brolycharge:Play()
Shield = Instance.new("Part", Torso)
Shield.Material = "Neon"
Shield.Anchored = true
Shield.Transparency = 1
Shield.CanCollide = false
Shield.BrickColor = BrickColor.new("Crimson")
Shield.Size = Vector3.new(10,10,10)
ShieldShape = Instance.new("SpecialMesh", Shield)
ShieldShape.MeshType = "Sphere"
ShieldShape.Scale = Vector3.new(50,50,50)
Shield.CFrame = Root.CFrame
while Shield.Transparency > .5 do
Shield.Transparency = Shield.Transparency - 0.03
wait()
end
end)
maketransparencysetto()
quicklerp = coroutine.wrap(function()
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), .3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7, .35, 0) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(15)), 0.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7, .35, 0) * CFrame.Angles(math.rad(-25), math.rad(0), math.rad(-15)), 0.8)
wait()
end
end)
quicklerp()
for i = 1, 100 do
ShieldShape.Scale = ShieldShape.Scale - Vector3.new(.5,.5,.5)
wait()
end
wait(.5)
ShieldShape.Scale = Vector3.new(1,1,1)
Shield.Transparency = .5
wait(.01)
Shield.Transparency = 1
wait(.01)
Shield.Transparency = .5
wait(.01)
Shield.Transparency = 1
wait(.01)
Shield.Transparency = .5
wait(.01)
Shield.Transparency = 1
wait(.01)
Shield.Transparency = .5
wait(.01)
Shield.Transparency = 1
wait(.01)
Shield.Transparency = .5
wait(.01)
Shield.Transparency = 1
wait(.01)
Shield.Transparency = .5
wait(.01)
Shield.Transparency = 1
wait(.01)
Shield.Transparency = .5
huah = Instance.new("Sound", Torso)
huah.Volume = 8
huah.SoundId = "rbxassetid://1502082459"
huah:Play()
explosionsound = Instance.new("Sound", Torso)
explosionsound.SoundId = "rbxassetid://919941001"
explosionsound.Volume = 3
explosionsound:Play()
quicklerp2 = coroutine.wrap(function()
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.7, .45, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(20)), 0.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.7, .45, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(-20)), 0.8)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
end)
quicklerp2()
Shield:Remove()
blastwave = Instance.new("Part", Torso)
blastwave.Size = Vector3.new(1, 1, 1)
blastwave.Transparency = 0
blastwave.BrickColor = BrickColor.new("Crimson")
blastwave.Material = "Neon"
blastwave.Anchored = true
blastwave.CanCollide = false
blastwave.CFrame = CFrame.new(Root.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave,5)
DDTblastwave = Instance.new("SpecialMesh", blastwave) 
DDTblastwave.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave.Scale = Vector3.new(1, 1, 1)
blastwave2 = Instance.new("Part", Torso)
blastwave2.Size = Vector3.new(1, 1, 1)
blastwave2.Transparency = 0
blastwave2.BrickColor = BrickColor.new("Crimson")
blastwave2.Material = "Neon"
blastwave2.Anchored = true
blastwave2.CanCollide = false
blastwave2.CFrame = CFrame.new(Root.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave2,5)
DDTblastwave2 = Instance.new("SpecialMesh", blastwave2) 
DDTblastwave2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave2.Scale = Vector3.new(1, 1, 1)
blastwave3 = Instance.new("Part", Torso)
blastwave3.Size = Vector3.new(1, 1, 1)
blastwave3.Transparency = 0
blastwave3.BrickColor = BrickColor.new("Crimson")
blastwave3.Material = "Neon"
blastwave3.Anchored = true
blastwave3.CanCollide = false
blastwave3.CFrame = CFrame.new(Root.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave3,5)
DDTblastwave3 = Instance.new("SpecialMesh", blastwave3) 
DDTblastwave3.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave3.Scale = Vector3.new(1, 1, 1)
blastwave4 = Instance.new("Part", Torso)
blastwave4.Size = Vector3.new(1, 1, 1)
blastwave4.Transparency = 0
blastwave4.BrickColor = BrickColor.new("Crimson")
blastwave4.Material = "Neon"
blastwave4.Anchored = true
blastwave4.CanCollide = false
blastwave4.CFrame = CFrame.new(Root.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave4,5)
DDTblastwave4 = Instance.new("SpecialMesh", blastwave4) 
DDTblastwave4.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave4.Scale = Vector3.new(1, 1, 1)
blastwave5 = Instance.new("Part", Torso)
blastwave5.Size = Vector3.new(1, 1, 1)
blastwave5.Transparency = 0
blastwave5.BrickColor = BrickColor.new("Crimson")
blastwave5.Material = "Neon"
blastwave5.Anchored = true
blastwave5.CanCollide = false
blastwave5.CFrame = CFrame.new(Root.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
removeuseless:AddItem(blastwave5,5)
DDTblastwave5 = Instance.new("SpecialMesh", blastwave5) 
DDTblastwave5.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTblastwave5.Scale = Vector3.new(1, 1, 1)
Blastcircle = Instance.new("Part", Torso)
Blastcircle.Material = "Neon"
Blastcircle.Anchored = true
Blastcircle.Transparency = 0
Blastcircle.CanCollide = false
Blastcircle.BrickColor = BrickColor.new("Really red")
Blastcircle.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle,5)
BlastShape = Instance.new("SpecialMesh", Blastcircle)
BlastShape.MeshType = "Sphere"
BlastShape.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle.CFrame = Root.CFrame
Blastcircle2 = Instance.new("Part", Torso)
Blastcircle2.Material = "Neon"
Blastcircle2.Anchored = true
Blastcircle2.Transparency = 0
Blastcircle2.CanCollide = false
Blastcircle2.BrickColor = BrickColor.new("Crimson")
Blastcircle2.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle2,5)
BlastShape2 = Instance.new("SpecialMesh", Blastcircle2)
BlastShape2.MeshType = "Sphere"
BlastShape2.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle2.CFrame = Root.CFrame
Blastcircle3 = Instance.new("Part", Torso)
Blastcircle3.Material = "Neon"
Blastcircle3.Anchored = true
Blastcircle3.Transparency = 0
Blastcircle3.CanCollide = false
Blastcircle3.BrickColor = BrickColor.new("Crimson")
Blastcircle3.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle3,5)
BlastShape3 = Instance.new("SpecialMesh", Blastcircle3)
BlastShape3.MeshType = "Sphere"
BlastShape3.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle3.CFrame = Root.CFrame
Blastcircle4 = Instance.new("Part", Torso)
Blastcircle4.Material = "Neon"
Blastcircle4.Anchored = true
Blastcircle4.Transparency = 0
Blastcircle4.CanCollide = false
Blastcircle4.BrickColor = BrickColor.new("Really red")
Blastcircle4.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle4,5)
BlastShape4 = Instance.new("SpecialMesh", Blastcircle4)
BlastShape4.MeshType = "Sphere"
BlastShape4.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle4.CFrame = Root.CFrame
Blastcircle5 = Instance.new("Part", Torso)
Blastcircle5.Material = "Neon"
Blastcircle5.Anchored = true
Blastcircle5.Transparency = 0
Blastcircle5.CanCollide = false
Blastcircle5.BrickColor = BrickColor.new("Really red")
Blastcircle5.Size = Vector3.new(10,10,10)
removeuseless:AddItem(Blastcircle5,5)
BlastShape5 = Instance.new("SpecialMesh", Blastcircle5)
BlastShape5.MeshType = "Sphere"
BlastShape5.Scale = Vector3.new(0.1,0.1,0.1)
Blastcircle5.CFrame = Root.CFrame

shockwav = Instance.new("Part", Torso)
shockwav.Size = Vector3.new(1, 1, 1)
shockwav.Transparency = 0
shockwav.BrickColor = BrickColor.new("Crimson")
shockwav.Material = "Neon"
shockwav.Anchored = true
shockwav.CanCollide = false
shockwav.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
removeuseless:AddItem(shockwav,5)
dea = Instance.new("SpecialMesh", shockwav) 
dea.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav.CFrame = Root.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
shockwav2 = Instance.new("Part", Torso)
shockwav2.Size = Vector3.new(1, 1, 1)
shockwav2.Transparency = 0
shockwav2.BrickColor = BrickColor.new("Really red")
shockwav2.Material = "Neon"
shockwav2.Anchored = true
shockwav2.CanCollide = false
shockwav2.CFrame = Root.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
removeuseless:AddItem(shockwav2,5)
dea2 = Instance.new("SpecialMesh", shockwav2) 
dea2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea2.Scale = Vector3.new(0.1, 0.4, 0.1)
shockwav2.CFrame = Root.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
local Hit = damagealll(50,Torso.Position)		
for _,v in pairs(Hit) do
local velo2 = Instance.new("BodyVelocity", v)
velo2.MaxForce = Vector3.new(999999, 999999, 999999)
velo2.Velocity = v.Torso.CFrame.lookVector * 200
removeuseless:AddItem(velo2,2)
v.Humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)				
v.Humanoid:TakeDamage(math.random(48,89))
end

opopo = coroutine.wrap(function()
for i = 1, 100 do
dea.Scale = dea.Scale + Vector3.new(5,5,5)
shockwav.Transparency = shockwav.Transparency + 0.02
dea2.Scale = dea2.Scale + Vector3.new(1,1,1)
shockwav2.Transparency = shockwav2.Transparency + 0.010
DDTblastwave.Scale = DDTblastwave.Scale + Vector3.new(1, .5, 1)
DDTblastwave2.Scale = DDTblastwave2.Scale + Vector3.new(6, 6, 6)
DDTblastwave3.Scale = DDTblastwave3.Scale + Vector3.new(2, .5, 2)
DDTblastwave4.Scale = DDTblastwave4.Scale + Vector3.new(3, .5, 3)
DDTblastwave5.Scale = DDTblastwave5.Scale + Vector3.new(.5, .1, .5)
blastwave.Transparency = blastwave.Transparency + .01
blastwave2.Transparency = blastwave2.Transparency + .03
blastwave3.Transparency = blastwave3.Transparency + .02
blastwave4.Transparency = blastwave4.Transparency + .015
blastwave5.Transparency = blastwave5.Transparency + .01
BlastShape.Scale = BlastShape.Scale + Vector3.new(.2,.2,.2)
BlastShape2.Scale = BlastShape2.Scale + Vector3.new(.4,.4,.4)
BlastShape3.Scale = BlastShape3.Scale + Vector3.new(.1,.1,.1)
BlastShape4.Scale = BlastShape4.Scale + Vector3.new(.05,.05,.05)
Blastcircle.Transparency = Blastcircle.Transparency + .01
Blastcircle2.Transparency = Blastcircle2.Transparency + .02
Blastcircle3.Transparency = Blastcircle3.Transparency + .012
Blastcircle4.Transparency = Blastcircle4.Transparency + .015
Blastcircle5.Transparency = Blastcircle5.Transparency + 0.01
BlastShape5.Scale = BlastShape5.Scale + Vector3.new(.5,.5,.5)
wait()
end
end)
opopo()
wait(2)
hum.WalkSpeed = 13
debounce = false
attacking = false
end
end)

EnergyIdle = Instance.new("Sound", Torso)
EnergyIdle.SoundId = "rbxassetid://865160364"
EnergyIdle.Looped = true
EnergyIdle.Volume = .2
EnergyIdle:Play()
doommusucus = Instance.new("Sound", Torso)
doommusucus.SoundId = "rbxassetid://261681311"
doommusucus.Looped = true
doommusucus.Volume = 1.5
doommusucus:Play()
hum.WalkSpeed = 13

function damagealll(Radius,Position)		
	local Returning = {}		
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end		
		end		
	end		
	return Returning		
end

function damagealll2(Radius,Position)		
	local Returning = {}	
while wait() do	
	for _,v in pairs(workspace:GetChildren()) do		
		if v~=Character and v:FindFirstChild('Humanoid') and v:FindFirstChild('Torso') then		
			local Mag = (v.Torso.Position - Position).magnitude		
			if Mag < Radius then		
				table.insert(Returning,v)		
			end		
		end		
	end
end
        return Returning				
end

footsteps = Instance.new("Sound", Torso)
footsteps.SoundId = "sID://320886417"
footsteps.Looped = true
footsteps.Volume = 5

checks1 = coroutine.wrap(function() -------Checks
while true do
if Root.Velocity.Magnitude > 0.5 and running == false then
position = "Walking"
elseif Root.Velocity.Magnitude < 0.5 and running == false and LSSJn then
position = "Idle2"
elseif Root.Velocity.Magnitude < 0.5 and running == false then
position = "Idle"
elseif Root.Velocity.Magnitude > 15 then
position = "Running"
else
end
wait()
end
end)
checks1()

mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='p' then
if debounce == true then return end
debounce = true
walking = false
attacking = true
punchcharge:Play()
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2, 0, 0.501) * CFrame.Angles(math.rad(-90), math.rad(45), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(0, 2, 0.5) * CFrame.Angles(math.rad(-90), math.rad(90), math.rad(0)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.5)
wait()
end
punchexplosion:Play()
hitboxpert = Instance.new("Part", LeftArm)
hitboxpert.Size = Vector3.new(2, 2, 2)
hitboxpert.CanCollide = false
hitboxpert.Transparency = 1
local hitboxweld = weldBetween(hitboxpert, LeftArm)
hitboxweld.C0 = CFrame.new(0,2.2,0)
hitboxpert.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChild("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
Slachtoffer = hit.Parent:findFirstChild("Humanoid")
Slachtoffer:TakeDamage(32)
end
end)
local punchplosion = coroutine.wrap(function()
plosion = Instance.new("Part", LeftArm)
plosion.Size = Vector3.new(1, 1, 1)
plosion.Transparency = 0.2
plosion.BrickColor = BrickColor.new("Crimson")
plosion.Anchored = true
plosion.CanCollide = false
plosion.CFrame = Root.CFrame * CFrame.new(-1,0,-3)
dea1 = Instance.new("SpecialMesh", plosion) 
dea1.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea1.Scale = Vector3.new(0.1, 0.1, 0.1)
for i = 1, 25 do
dea1.Scale = dea1.Scale + Vector3.new(0.8,0.8,0.8)
plosion.Transparency = plosion.Transparency + 0.07
wait()
end
end)
punchplosion()
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 1.5, 0.501) * CFrame.Angles(math.rad(-100), math.rad(-20), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.3, 1, 1.5) * CFrame.Angles(math.rad(-45), math.rad(72), math.rad(0)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-30), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(15), math.rad(5), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.42, 2.0, 0.2) * CFrame.Angles(math.rad(0), math.rad(10), math.rad(0)), 0.5)
wait()
end
hitboxpert:Destroy()
hitboxweld:Destroy()
plosion:Destroy()
attacking = false
damagedebounce = false
debounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='t' then
if tauntdebounce == true then return end
tauntdebounce = true
rdnm = soundtable[math.random(1,#soundtable)]
tauntsound = Instance.new("Sound", Head)
tauntsound.Volume = .8
tauntsound.SoundId = "http://www.roblox.com/asset/?id="..rdnm
tauntsound.Looped = false
tauntsound:Play()
wait(tauntsound.TimeLength)
wait(3)
tauntsound:Remove()
wait(1)
tauntdebounce = false
debounce = false
end
end)


mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='l' then
if debounce then return end
debounce = true
attacking = true
punchcharge2:Play()
hum.WalkSpeed = 13
for i = 1, 8 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, 1.5, 0.501) * CFrame.Angles(math.rad(-130), math.rad(-20), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.3, 1, 1.5) * CFrame.Angles(math.rad(-45), math.rad(72), math.rad(0)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 2, 0.2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.42, 2.0, 0.2) * CFrame.Angles(math.rad(-10), math.rad(0), math.rad(0)), 0.5)
wait()
end
local shockwavv = coroutine.wrap(function()
shockwav = Instance.new("Part", LeftArm)
shockwav.Size = Vector3.new(1, 1, 1)
shockwav.Transparency = 0
shockwav.BrickColor = BrickColor.new("Really black")
shockwav.Anchored = true
shockwav.CanCollide = false
shockwav.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.rad(-90), 0, 0)
dea2 = Instance.new("SpecialMesh", shockwav) 
dea2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea2.Scale = Vector3.new(0.1, 0.1, 0.1)
removeuseless:AddItem(shockwav,5) ---------Just in case it messes up

shockwav2 = Instance.new("Part", LeftArm)
shockwav2.Size = Vector3.new(1, 1, 1)
shockwav2.Transparency = 0
shockwav2.BrickColor = BrickColor.new("Crimson")
shockwav2.Anchored = true
shockwav2.CanCollide = false
shockwav2.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.rad(-90), 0, 0)
dea3 = Instance.new("SpecialMesh", shockwav2) 
dea3.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea3.Scale = Vector3.new(0.1, 0.1, 0.1)
removeuseless:AddItem(shockwav2,5)

shockesr = Instance.new("Part", Torso)
shockesr.Size = Vector3.new(0.5, 0.5, 0.5)
shockesr.Material = "Neon"
shockesr.BrickColor = BrickColor.new("Crimson")
shockesr.Transparency = 0
shockesr.Anchored = true
shockesr.CanCollide = false
shockerMESH = Instance.new("SpecialMesh", shockesr)
shockerMESH.MeshType = "Sphere"
shockerMESH.Scale = Vector3.new(1,1,1)
shockesr.CFrame = Root.CFrame * CFrame.new(0,-1,0) * CFrame.Angles(math.rad(0), 0, 0)
removeuseless:AddItem(shockesr,5)

local Hit = damagealll(14,Torso.Position)		
for _,v in pairs(Hit) do
local velo2 = Instance.new("BodyVelocity", v)
velo2.MaxForce = Vector3.new(999999, 999999, 999999)
velo2.Velocity = v.Torso.CFrame.lookVector * 200
removeuseless:AddItem(velo2,2)
v.Humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)				
v.Humanoid:TakeDamage(30)
end
	
for i = 1, 25 do
dea2.Scale = dea2.Scale + Vector3.new(2,2,2)
shockwav.Transparency = shockwav.Transparency + 0.07
dea3.Scale = dea3.Scale + Vector3.new(1,1,1)
shockwav2.Transparency = shockwav2.Transparency + 0.07
shockesr.Transparency = shockesr.Transparency + 0.07
shockerMESH.Scale = shockerMESH.Scale + Vector3.new(4, 4, 4)
wait()
end
end)
shockwavv()
punchexplosion2:Play()
chunks = Instance.new("Part", workspace)
chunks.BrickColor = BrickColor.new("Really red")
chunks.Size = Vector3.new(2, 2, 2)
chunks.Anchored = true
chunks.Material = "Neon"
chunks.TopSurface = "Smooth"
chunks.BottomSurface = "Smooth"
chunks.CanCollide = false
chunks.CFrame = LeftLeg.CFrame * CFrame.new(math.random(-500,500)/100,0,math.random(-500,500)/100)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
table.insert(SlowlyFade,chunks)
removeuseless:AddItem(chunks,5)
chunks2 = Instance.new("Part", workspace)
chunks2.BrickColor = BrickColor.new("Crimson")
chunks2.Size = Vector3.new(2, 2, 2)
chunks2.Anchored = true
chunks2.Material = "Neon"
chunks2.TopSurface = "Smooth"
chunks2.BottomSurface = "Smooth"
chunks2.CanCollide = false
chunks2.CFrame = LeftLeg.CFrame * CFrame.new(math.random(-500,500)/100,0,math.random(-500,500)/100)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
table.insert(SlowlyFade,chunks2)
removeuseless:AddItem(chunks2,5)
chunks3 = Instance.new("Part", workspace)
chunks3.BrickColor = BrickColor.new("Really red")
chunks3.Size = Vector3.new(2, 2, 2)
chunks3.Anchored = true
chunks3.Material = "Neon"
chunks3.CanCollide = false
chunks3.TopSurface = "Smooth"
chunks3.BottomSurface = "Smooth"
chunks3.CFrame = RightLeg.CFrame * CFrame.new(math.random(-500,500)/100,0,math.random(-500,500)/100)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
table.insert(SlowlyFade,chunks3)
removeuseless:AddItem(chunks3,5)
chunks4 = Instance.new("Part", workspace)
chunks4.BrickColor = BrickColor.new("Crimson")
chunks4.Size = Vector3.new(2, 2, 2)
chunks4.Anchored = true
chunks4.TopSurface = "Smooth"
chunks4.BottomSurface = "Smooth"
chunks4.Material = "Neon"
chunks4.CanCollide = false
chunks4.CFrame = RightLeg.CFrame * CFrame.new(math.random(-500,500)/100,0,math.random(-500,500)/100)*CFrame.Angles(math.random(-50,50),math.random(-50,50),math.random(-50,50))
table.insert(SlowlyFade,chunks4)
removeuseless:AddItem(chunks4,5)
hum.WalkSpeed = 0
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, 0.8, 0.501) * CFrame.Angles(math.rad(-70), math.rad(-5), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.3, 1, 1.5) * CFrame.Angles(math.rad(-45), math.rad(72), math.rad(0)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1.3, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, 0.2) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0, 0.2) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.5)
wait()
end
hum.WalkSpeed = 13
attacking = false
damagedebounce = false
shockwav:Remove()
shockwav2:Remove()
shockesr:Remove()
debounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='k' then
if debounce then return end
debounce = true
attacking = true
punchcharge2:Play()
hum.WalkSpeed = 0
for i = 1, 8 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.1) * CFrame.Angles(math.rad(6), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(-20), math.rad(90)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 2, 0) * CFrame.Angles(math.rad(14), math.rad(20), math.rad(-90)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
punchexplosion3:Play()
local wtfboomzorz = coroutine.wrap(function()
shockesr = Instance.new("Part", Torso)
shockesr.Size = Vector3.new(0.5, 0.5, 0.5)
shockesr.Material = "Neon"
shockesr.BrickColor = BrickColor.new("Crimson")
shockesr.Transparency = 0
shockesr.Anchored = true
shockesr.CanCollide = false
shockerMESH = Instance.new("SpecialMesh", shockesr)
shockerMESH.MeshType = "Sphere"
shockerMESH.Scale = Vector3.new(1,1,1)
shockesr.CFrame = Root.CFrame * CFrame.new(0,0,-3)
removeuseless:AddItem(shockesr,5)

shockwav = Instance.new("Part", LeftArm)
shockwav.Size = Vector3.new(1, 1, 1)
shockwav.Transparency = 0
shockwav.BrickColor = BrickColor.new("Really red")
shockwav.Anchored = true
shockwav.CanCollide = false
shockwav.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
dea2 = Instance.new("SpecialMesh", shockwav) 
dea2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea2.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav.CFrame = Root.CFrame * CFrame.new(0,0,-3)
removeuseless:AddItem(shockwav,5)

shockwav2 = Instance.new("Part", LeftArm)
shockwav2.Size = Vector3.new(1, 1, 1)
shockwav2.Transparency = 0
shockwav2.BrickColor = BrickColor.new("Crimson")
shockwav2.Anchored = true
shockwav2.CanCollide = false
shockwav2.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
dea3 = Instance.new("SpecialMesh", shockwav2) 
dea3.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea3.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav.CFrame = Root.CFrame * CFrame.new(0,0,-3)
removeuseless:AddItem(shockwav2,5)

shockwav3 = Instance.new("Part", LeftArm)
shockwav3.Size = Vector3.new(1, 1, 1)
shockwav3.Transparency = 0
shockwav3.BrickColor = BrickColor.new("Really red")
shockwav3.Anchored = true
shockwav3.CanCollide = false
shockwav3.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
dea4 = Instance.new("SpecialMesh", shockwav3) 
dea4.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea4.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav3.CFrame = Root.CFrame * CFrame.new(0,0,-3)
removeuseless:AddItem(shockwav3,5)

local Hit = damagealll(35,Torso.Position)		
for _,v in pairs(Hit) do				
v:BreakJoints()
end
for i = 1, 25 do
dea2.Scale = dea2.Scale + Vector3.new(2.5,2.5,2.5)
shockwav.Transparency = shockwav.Transparency + 0.07
dea3.Scale = dea3.Scale + Vector3.new(3,3,3)
dea4.Scale = dea4.Scale + Vector3.new(2,2,2)
shockwav2.Transparency = shockwav2.Transparency + 0.07
shockwav3.Transparency = shockwav2.Transparency + 0.07
shockesr.Transparency = shockesr.Transparency + 0.08
shockerMESH.Scale = shockerMESH.Scale + Vector3.new(4, 4, 4)
wait()
end
end)
wtfboomzorz()
for i = 1, 8 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5, 1, -1) * CFrame.Angles(math.rad(-110), math.rad(0), math.rad(90)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 1, -1) * CFrame.Angles(math.rad(-110), math.rad(0), math.rad(-90)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
for i = 1, 26 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.5, 1, -1) * CFrame.Angles(math.rad(-50), math.rad(-20), math.rad(90)), 0.06)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.5, 1, -1) * CFrame.Angles(math.rad(-50), math.rad(20), math.rad(-90)), 0.06)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
hum.WalkSpeed = 13
debounce = false
attacking = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='o' then
if debounce then return end
debounce = true
attacking = true
hum.WalkSpeed = 0
local theendbegin = coroutine.wrap(function()
shockwav = Instance.new("Part", Torso)
shockwav.Size = Vector3.new(1, 1, 1)
shockwav.Transparency = 0
shockwav.BrickColor = BrickColor.new("Really red")
shockwav.Material = "Neon"
shockwav.Anchored = true
shockwav.CanCollide = false
shockwav.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
dea2 = Instance.new("SpecialMesh", shockwav) 
dea2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea2.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav.CFrame = Root.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
removeuseless:AddItem(shockwav,5)
shockwav2 = Instance.new("Part", Torso)
shockwav2.Size = Vector3.new(1, 1, 1)
shockwav2.Transparency = 0
shockwav2.Material = "Neon"
shockwav2.BrickColor = BrickColor.new("Crimson")
shockwav2.Anchored = true
shockwav2.CanCollide = false
shockwav2.CFrame = Root.CFrame * CFrame.new(0,-2.2,0) * CFrame.Angles(math.random(1, 100), math.random(1, 100), math.random(1, 100))
dea3 = Instance.new("SpecialMesh", shockwav2) 
dea3.MeshId = "http://www.roblox.com/asset/?id=3270017" 
dea3.Scale = Vector3.new(0.1, 0.1, 0.1)
shockwav2.CFrame = Root.CFrame * CFrame.new(0,-3,0) * CFrame.Angles(math.rad(90), 0, 0)
removeuseless:AddItem(shockwav2,5)
for i = 1, 125 do
shockwav.Transparency = shockwav.Transparency + 0.03
dea2.Scale = dea2.Scale + Vector3.new(1, 1, 1)
shockwav2.Transparency = shockwav2.Transparency + 0.02
dea3.Scale = dea3.Scale + Vector3.new(1.5, 1.5, 1.5)
wait()
end
end)
theendbegin()
boomswoosh:Play()
for i = 1, 50 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
wait()
end
EndOfTimes = true
local TheEnd = coroutine.wrap(function()
while EndOfTimes do
TheEndTimeWave = Instance.new("Part", Torso)
TheEndTimeWave.Size = Vector3.new(1, 1, 1)
TheEndTimeWave.Transparency = 1
TheEndTimeWave.BrickColor = BrickColor.new("Really red")
TheEndTimeWave.Material = "Neon"
TheEndTimeWave.Anchored = true
TheEndTimeWave.CanCollide = false
TheEndTimeWave.CFrame = Torso.CFrame * CFrame.Angles(math.random(1, 100),math.random(1, 100),math.random(1, 100))
DDT = Instance.new("SpecialMesh", TheEndTimeWave) 
DDT.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDT.Scale = Vector3.new(50, 50, 50)
removeuseless:AddItem(TheEndTimeWave,2)
table.insert(TheEnd,TheEndTimeWave)
table.insert(TheEnd2,DDT)
wait(0.1)
end
end)
TheEnd()
local EndOrb = coroutine.wrap(function()
EnddOrb = Instance.new("Part", Torso)
EnddOrb.Size = Vector3.new(0.5, 0.5, 0.5)
EnddOrb.Material = "Neon"
EnddOrb.BrickColor = BrickColor.new("Crimson")
EnddOrb.Transparency = 1
EnddOrb.Anchored = true
EnddOrb.CanCollide = false
EnddOrbMESH = Instance.new("SpecialMesh", EnddOrb)
EnddOrbMESH.MeshType = "Sphere"
EnddOrbMESH.Scale = Vector3.new(100,100,100)
EnddOrb.CFrame = Torso.CFrame
while EnddOrb.Transparency > 0 do
EnddOrbMESH.Scale = EnddOrbMESH.Scale - Vector3.new(1,1,1)
EnddOrb.Transparency = EnddOrb.Transparency - 0.007
wait()
end
end)
EndOrb()
TheEndSound2:Play()
while EnddOrb.Transparency > 0 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(100)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-100)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
TheEndSound2:Stop()
TheEndSound:Play()
EndOfTimes = false
for i = 1, 100 do
EnddOrb.CFrame = Torso.CFrame
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 20, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.06)
wait()
end
wait(2)
local dissapend = coroutine.wrap(function()
for i = 1, 100 do
EnddOrbMESH.Scale = EnddOrbMESH.Scale - Vector3.new(1, 1, 1)
EnddOrb.Transparency = EnddOrb.Transparency + 0.05
wait()
end
end)
dissapend()
ROOOAAAAH:Play()
local opforr = coroutine.wrap(function()
while true do
if loowki then break end
TheEndTimeWave2 = Instance.new("Part", Torso)
TheEndTimeWave2.Size = Vector3.new(1, 1, 1)
TheEndTimeWave2.Transparency = 0.4
TheEndTimeWave2.BrickColor = BrickColor.new("Crimson")
TheEndTimeWave2.Material = "Neon"
TheEndTimeWave2.Anchored = true
TheEndTimeWave2.CanCollide = false
TheEndTimeWave2.CFrame = Torso.CFrame * CFrame.Angles(math.random(1, 100),math.random(1, 100),math.random(1, 100))
DDT2 = Instance.new("SpecialMesh", TheEndTimeWave2) 
DDT2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDT2.Scale = Vector3.new(1, 1, 1)
removeuseless:AddItem(TheEndTimeWave2,3)
table.insert(TheEnd4,TheEndTimeWave2)
table.insert(TheEnd3,DDT2)
EnddOrb2 = Instance.new("Part", Torso)
EnddOrb2.Size = Vector3.new(0.5, 0.5, 0.5)
EnddOrb2.Material = "Neon"
EnddOrb2.BrickColor = BrickColor.new("Really red")
EnddOrb2.Transparency = 0
EnddOrb2.Anchored = true
EnddOrb2.CanCollide = false
EnddOrbMESH2 = Instance.new("SpecialMesh", EnddOrb2)
EnddOrbMESH2.MeshType = "Sphere"
EnddOrbMESH2.Scale = Vector3.new(2,2,2)
EnddOrb2.CFrame = Root.CFrame * CFrame.new(0, 20, 0)
removeuseless:AddItem(EnddOrb2,2)
table.insert(TheEnd2,EnddOrbMESH2)
table.insert(SlowlyFade,EnddOrb2)
wait(0.1)
end
end)
opforr()
for i = 1, 20 do
local Hit = damagealll(60,Torso.Position)		
for _,v in pairs(Hit) do				
v.Humanoid:TakeDamage(3)
end
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0.1) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0.4, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(100)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(10), math.rad(0), math.rad(-100)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 20, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0.4) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0.4) * CFrame.Angles(math.rad(30), math.rad(0), math.rad(10)), 0.5)
wait()
end
local damgog = coroutine.wrap(function()
while true do
if loowki then return end
local Hit = damagealll(60,Torso.Position)		
for _,v in pairs(Hit) do				
v.Humanoid:TakeDamage(1)
end
wait()
end
end)
damgog()
wait(ROOOAAAAH.TimeLength)
loowki = true
wait(.5)
for i = 1, 40 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 20, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
for i = 1, 100 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(15), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.05)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.5)
wait()
end
attacking = false
debounce = false
loowki = false
EndOfTimes = false
hum.WalkSpeed = 13
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='j' then
if debounce then return end
debounce = true
attacking = true
zorro = true
local timereft = coroutine.wrap(function()
shockesr = Instance.new("Part", Torso)
shockesr.Size = Vector3.new(0.5, 0.5, 0.5)
shockesr.Material = "Neon"
shockesr.BrickColor = BrickColor.new("Crimson")
shockesr.Transparency = 0
shockesr.Anchored = true
shockesr.CanCollide = false
shockerMESH = Instance.new("SpecialMesh", shockesr)
shockerMESH.MeshType = "Cylinder"
shockerMESH.Scale = Vector3.new(.1,0.01,0.01)
shockesr.CFrame = CFrame.new(mouse.Hit.p) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
riftopen = Instance.new("Sound", shockesr)
riftopen.SoundId = "rbxassetid://93724183"
riftopen.Looped = false
riftopen.Volume = 2
riftopen:Play()
while zorro do
shockesr.Size = shockesr.Size + Vector3.new(0,16,16)
wait()
end
end)
timereft()
for i = 1, 50 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.35, 1.25, 0.45) * CFrame.Angles(math.rad(-90), math.rad(48), math.rad(0)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
zorro = false
punchcharge3:Play()
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(-130), math.rad(-48), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
astral = true
local astralshocks = coroutine.wrap(function()
while astral do
Astralshock = Instance.new("Part", Torso)
Astralshock.Size = Vector3.new(1, 1, 1)
Astralshock.Transparency = 0
Astralshock.BrickColor = BrickColor.new("Really red")
Astralshock.Material = "Neon"
Astralshock.Anchored = true
Astralshock.CanCollide = false
Astralshock.CFrame = shockesr.CFrame * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
DDTASTRAL = Instance.new("SpecialMesh", Astralshock) 
DDTASTRAL.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDTASTRAL.Scale = Vector3.new(1, 1, 1)
table.insert(TheEnd3,DDTASTRAL)
table.insert(SlowlyFade,Astralshock)
removeuseless:AddItem(Astralshock,2)
wait(0.3)
end
end)
local astralshocks2 = coroutine.wrap(function()
while astral do
Astralshock2 = Instance.new("Part", Torso)
Astralshock2.Size = Vector3.new(1, 1, 1)
Astralshock2.Transparency = 0
Astralshock2.BrickColor = BrickColor.new("Crimson")
Astralshock2.Material = "Neon"
Astralshock2.Anchored = true
Astralshock2.CanCollide = false
Astralshock2.CFrame = shockesr.CFrame * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
DDTASTRAL2 = Instance.new("SpecialMesh", Astralshock2) 
DDTASTRAL2.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDTASTRAL2.Scale = Vector3.new(15, 15, 15)
table.insert(UpMover,Astralshock2)
table.insert(SlowlyFade,Astralshock2)
removeuseless:AddItem(Astralshock2,2)
wait(0.2)
end
end)
astralshocks2()
astralshocks()
riftopen2 = Instance.new("Sound", shockesr)
riftopen2.SoundId = "rbxassetid://907527750"
riftopen2.Looped = false
riftopen2.Volume = 2
riftopen2:Play()
local fofp = coroutine.wrap(function()
riftopen3 = Instance.new("Sound", shockesr)
riftopen3.SoundId = "rbxassetid://1190833720"
riftopen3.Looped = false
riftopen3.Volume = 0
removeuseless:AddItem(riftopen3,10)
removeuseless:AddItem(shockesr,6)
riftopen3:Play()
while riftopen3.Volume < 3 do
riftopen3.Volume = riftopen3.Volume + 0.2
wait()
end
while astral do
wait()
end
while riftopen3.Volume > 0 do
riftopen3.Volume = riftopen3.Volume - 0.1
wait()
end
end)
fofp()
local astraldmg = coroutine.wrap(function()
for i = 1, 5 do
local Hit = damagealll(20,shockesr.Position)		
for _,v in pairs(Hit) do				
v.Humanoid:TakeDamage(25)
end
wait(1)
end
end)
astraldmg()
while shockesr.Transparency < 1 do
shockesr.Size = shockesr.Size + Vector3.new(80,0,0)
shockesr.Transparency = shockesr.Transparency + 0.02
wait()
end
astral = false
debounce = false
attacking = false
riftopen:Remove()
riftopen2:Remove()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='r' then
if debounce then return end
debounce = true
attacking = true
borb = true
hum.WalkSpeed = 0
punchcharge:Play()
for i = 1, 8 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(-15)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-1.5, 1.5, 0) * CFrame.Angles(math.rad(-5), math.rad(10), math.rad(180)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0.6, 0) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)), 0.5)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-.2, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-15)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.5)
wait()
end
BlackPowerBall = Instance.new("Part", Torso)
BlackPowerBall.BrickColor = BrickColor.new("Crimson")
BlackPowerBall.Anchored = true
BlackPowerBall.Shape = 0
BlackPowerBall.Material = "Neon"
BlackPowerBall.Size = Vector3.new(0.1,0.1,0.1)
BlackPowerBall.CanCollide = false
BlackPowerBall.CFrame = Root.CFrame * CFrame.new(-1.3,3,-2)
local increasesizeball = coroutine.wrap(function()
for i = 1, 20 do
BlackPowerBall.Size = BlackPowerBall.Size + Vector3.new(0.15,0.15,.15)
wait()
end
end)
increasesizeball()
OMEGABLASTER = Instance.new("Sound", RightArm)
OMEGABLASTER.SoundId = "rbxassetid://876800936"
OMEGABLASTER.Pitch = 1.5
OMEGABLASTER.Volume = 2
OMEGABLASTER:Play()
for i = 1, 25 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-40), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2, 1.5, .5) * CFrame.Angles(math.rad(-85), math.rad(-40), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
for i = 1, 8 do
BlackPowerBall.CFrame = BlackPowerBall.CFrame:lerp(Root.CFrame * CFrame.new(-.6,3.5,2), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-.6, 1.9, 0.2) * CFrame.Angles(math.rad(-85), math.rad(-120), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
local shootthemballs = coroutine.wrap(function()
BlackPowerBall.Anchored = false
local PB2 = Instance.new("BodyVelocity", BlackPowerBall)
PB2.MaxForce = Vector3.new(999999, 999999, 999999)
BlackPowerBall.CFrame = CFrame.new(BlackPowerBall.Position,mouse.Hit.p)
PB2.Velocity = BlackPowerBall.CFrame.lookVector * 80
wait()
end)
shootthemballs()
for i = 1, 12 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-10), math.rad(-50), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-1, 0, -.1) * CFrame.Angles(math.rad(85), math.rad(-120), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.2, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(-12)), 0.5)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-35), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(-10), math.rad(-15), math.rad(10)), 0.5)
wait()
end
BlackPowerBall.Touched:connect(function(OnHit)
if hitters == true then return end
hitters = true
BlackPowerBall.Anchored = true
BlackPowerBall.Transparency = 1
local Hit = damagealll(32,BlackPowerBall.Position)		
for _,v in pairs(Hit) do				
v.Humanoid:TakeDamage(40)
end
explosivesound = Instance.new("Sound", BlackPowerBall)
explosivesound.SoundId = "rbxassetid://400765078"
explosivesound.Looped = false
explosivesound.Volume = 2
explosivesound.Pitch = 2
explosivesound:Play()
for i = 1, 3 do
ExplosionBall = Instance.new("Part", Torso)
ExplosionBall.BrickColor = BrickColor.new("Crimson")
ExplosionBall.Anchored = true
ExplosionBall.Shape = 0
ExplosionBall.Material = "Neon"
ExplosionBall.CFrame = BlackPowerBall.CFrame
ExplosionBall.CanCollide = false
ExplosionBall.Size = BlackPowerBall.Size
ExplosionBallshock = Instance.new("Part", Torso)
ExplosionBallshock.Size = Vector3.new(1, 1, 1)
ExplosionBallshock.Transparency = 0
ExplosionBallshock.BrickColor = BrickColor.new("Really red")
ExplosionBallshock.Material = "Neon"
ExplosionBallshock.Anchored = true
ExplosionBallshock.CanCollide = false
ExplosionBallshock.CFrame = BlackPowerBall.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
ExplosionBallshockDDT = Instance.new("SpecialMesh", ExplosionBallshock) 
ExplosionBallshockDDT.MeshId = "http://www.roblox.com/asset/?id=3270017" 
ExplosionBallshockDDT.Scale = Vector3.new(3,3,3)
table.insert(Extreme,ExplosionBall)
table.insert(SlowlyFade,ExplosionBall)
table.insert(SlowlyFade,ExplosionBallshock)
table.insert(ExtremeM,ExplosionBallshockDDT)
removeuseless:AddItem(ExplosionBall,2)
removeuseless:AddItem(ExplosionBallshock,2)
wait(0.1)
end
borb = false
hitters = false
end)
hum.WalkSpeed = 13
local time = coroutine.wrap(function()
for i = 1, 100 do
if borb == false then break end
wait()
end
BlackPowerBall:Remove()
debounce = false
balldebounce = false
hitters = false
end)
time()
attacking = false
while wait() do
if borb == false then break end
wait()
end
balldebounce = false
debounce = false
hitters = false
end
end)

mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='h' then
if debounce == true then return end
debounce = true
walking = false
hit = false
attacking = true
punchcharge:Play()
bbm = Instance.new("Sound", Torso)
bbm.SoundId = "rbxassetid://1412100204"
bbm.Volume = 6
bbm:Play()
hum.WalkSpeed = 0
local createnergyblast = coroutine.wrap(function()
BlastWave = Instance.new("Part", Torso)
BlastWave.Material = "Neon"
BlastWave.Anchored = true
BlastWave.CanCollide = false
BlastWave.BrickColor = BrickColor.new("Crimson")
BlastWave.Size = Vector3.new(.1,.1,.1)
BlastShape = Instance.new("SpecialMesh", BlastWave)
BlastShape.MeshType = "Sphere"
BlastShape.Scale = Vector3.new(0.1,.1,.1)
BlastWave.CFrame = Root.CFrame * CFrame.new(0, .4, -5.2)
end)
createnergyblast()
local sizeincrease = coroutine.wrap(function()
for i = 1, 45 do
BlastWave.Size = BlastWave.Size + Vector3.new(1,1,1)
wait()
end
end)
sizeincrease()
local RetrEnergy2 = coroutine.wrap(function()
for i = 1, 10 do
circlescircles = Instance.new("Part", Torso)
circlescircles.Size = Vector3.new(1, 1, 1)
circlescircles.Transparency = 0.2
circlescircles.BrickColor = BrickColor.new("Really red")
circlescircles.Material = "Neon"
circlescircles.Anchored = true
circlescircles.CanCollide = false
circlescircles.CFrame = BlastWave.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
circlescirclesmesh = Instance.new("SpecialMesh", circlescircles) 
circlescirclesmesh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
circlescirclesmesh.Scale = Vector3.new(15, 15, 15)
removeuseless:AddItem(circlescircles,1)
table.insert(nonmeshRepeater2,circlescircles)
table.insert(TheEnd2,circlescirclesmesh)
wait(.1)
end
end)
RetrEnergy2()
local RetrEnergy = coroutine.wrap(function()
for i = 1, 7 do
RetrEnergy1 = Instance.new("Part", Torso)
RetrEnergy1.Material = "Neon"
RetrEnergy1.Anchored = true
RetrEnergy1.CanCollide = false
RetrEnergy1.BrickColor = BrickColor.new("Really red")
RetrEnergy1.Transparency = 0.5
RetrEnergy1.Size = Vector3.new(10,10,10)
RetrEnergy1Shape = Instance.new("SpecialMesh", RetrEnergy1)
RetrEnergy1Shape.MeshType = "Sphere"
RetrEnergy1Shape.Scale = Vector3.new(1,1,1)
RetrEnergy1.CFrame = BlastWave.CFrame 
table.insert(LessSize,RetrEnergy1)
table.insert(Repeater2,RetrEnergy1)
removeuseless:AddItem(RetrEnergy1,2)
wait(0.2)
end
end)
RetrEnergy()
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0, 2, 0.5) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(90)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
wait(1)
local shocks = coroutine.wrap(function()
while BlastWave.Transparency < 1 do
shockoftheblast = Instance.new("Part", Torso)
shockoftheblast.Size = Vector3.new(1, 1, 1)
shockoftheblast.Transparency = 0
shockoftheblast.BrickColor = BrickColor.new("Really red")
shockoftheblast.Material = "Neon"
shockoftheblast.Anchored = true
shockoftheblast.CanCollide = false
shockoftheblast.CFrame = CFrame.new(0,0,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
shockoftheblast.CFrame = LeftArm.CFrame * CFrame.new(0, -2.4 -(i/.4), 0) * CFrame.Angles(math.rad(90), 0, math.rad(0))
sotbmesh = Instance.new("SpecialMesh", shockoftheblast) 
sotbmesh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
sotbmesh.Scale = Vector3.new(15, 15, 15)
removeuseless:AddItem(shockoftheblast,.5)
table.insert(ForwardMover,shockoftheblast)
table.insert(nonmeshRepeater2,shockoftheblast)
wait(.1)
end
end)
shocks()
x0412:Play()
ReaperLaunch = Instance.new("Sound", LeftArm)
ReaperLaunch.Volume = 3
ReaperLaunch.SoundId = "rbxassetid://138677306"
ReaperLaunch:Play()
hum.WalkSpeed = 2
TheBeam = Instance.new("Part", LeftArm)
TheBeam.CanCollide = false
TheBeam.Size = Vector3.new(1,3,3)
TheBeam.Material = "Neon"
TheBeam.Anchored = true
TheBeam.BrickColor = BrickColor.new("Crimson")
TheBeamMESH = Instance.new("SpecialMesh", TheBeam)
TheBeamMESH.Scale = Vector3.new(1,1,1)
TheBeamMESH.MeshType = "Cylinder"
TheBeam.CFrame = BlastWave.CFrame * CFrame.new(0,2,0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
TheBeam.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChild("Humanoid") then
Slachtoffer = hit.Parent:findFirstChild("Humanoid")
Slachtoffer:TakeDamage(30)
wait(.6)
end
end)
for i = 1, 100 do
TheBeam.Size = TheBeam.Size + Vector3.new(5, 0, 0)
TheBeam.CFrame = LeftArm.CFrame * CFrame.new(0, -2.4 -(i/.4), 0) * CFrame.Angles(0, 0, math.rad(90))
BlastWave.CFrame = LeftArm.CFrame * CFrame.new(0, -3, 0) * CFrame.Angles(0, 0, math.rad(0))
wait()
end
while TheBeam.Transparency < 1 and BlastWave.Transparency < 1 do
TheBeam.Transparency = TheBeam.Transparency + 0.1
BlastWave.Transparency = BlastWave.Transparency + 0.1
wait()
end
debounce = false
attacking = false
TheBeam:Remove()
BlastWave:Remove()
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='q' then
if debounce then return end
debounce = true
attacking = true
open = true
nepo = true
hum.WalkSpeed = 0
bigrift = Instance.new("Part", Torso)
bigrift.Size = Vector3.new(0.1, 0.1, 0.1)
bigrift.Material = "Neon"
bigrift.Transparency = 1
bigrift.Anchored = true
bigrift.CanCollide = false
bigriftdecal = Instance.new("Decal", bigrift)
bigriftdecal.Face = "Top"
bigriftdecal.Texture = "rbxassetid://702583926"
local bigriftopen = coroutine.wrap(function()
bigrift.CFrame = CFrame.new(mouse.Hit.p) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
while open do
bigrift.Size = bigrift.Size + Vector3.new(2,0,2)
wait()
end
end)
bigriftopen()
local rotate = coroutine.wrap(function()
while nepo do
bigrift.CFrame = bigrift.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0), math.rad(1 + 5),0)
wait()
end
end)
rotate()
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 0.7, 1) * CFrame.Angles(math.rad(-40), math.rad(-48), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
open = false
for i = 1, 8 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1, 2, 0) * CFrame.Angles(math.rad(-130), math.rad(-48), math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(4), math.rad(-10)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
local openshocks = coroutine.wrap(function()
for i = 1, 2 do
openshock2 = Instance.new("Part", Torso)
openshock2.Size = Vector3.new(1, 1, 1)
openshock2.Transparency = 0
openshock2.BrickColor = BrickColor.new("Really red")
openshock2.Material = "Neon"
openshock2.Anchored = true
openshock2.CanCollide = false
openshock2.CFrame = CFrame.new(bigrift.Position) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0))
DDTopenshock2 = Instance.new("SpecialMesh", openshock2) 
DDTopenshock2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTopenshock2.Scale = Vector3.new(1, 2, 1)
removeuseless:AddItem(openshock2,2)
table.insert(TheEnd3,DDTopenshock2)
table.insert(SlowlyFade,openshock2)
openshock = Instance.new("Part", Torso)
openshock.Size = Vector3.new(1, 1, 1)
openshock.Transparency = 0
openshock.BrickColor = BrickColor.new("Really red")
openshock.Material = "Neon"
openshock.Anchored = true
openshock.CanCollide = false
openshock.CFrame = CFrame.new(bigrift.Position) * CFrame.Angles(math.rad(90),math.rad(0),math.rad(0))
DDTopenshock = Instance.new("SpecialMesh", openshock) 
DDTopenshock.MeshId = "http://www.roblox.com/asset/?id=3270017" 
DDTopenshock.Scale = Vector3.new(1, 2, 1)
removeuseless:AddItem(openshock,2)
table.insert(TheEnd3,DDTopenshock)
table.insert(SlowlyFade,openshock)
wait(.2)
end
end)
openshocks()
wreckingbrick = Instance.new("Part", Torso)
wreckingbrick.Size = Vector3.new(10, 10, 10)
wreckingbrick.Material = "Neon"
wreckingbrick.Transparency = 0
wreckingbrick.Anchored = true
wreckingbrick.BrickColor = BrickColor.new("Crimson")
wreckingbrick.CanCollide = false
wreckingbrick.CFrame = bigrift.CFrame * CFrame.new(0,1,0)
iffalsedontspin = true
local rotq = coroutine.wrap(function()
while iffalsedontspin do
wreckingbrick.CFrame = wreckingbrick.CFrame * CFrame.Angles(math.rad(1 + 2),math.rad(1),math.rad(1 + 3))
wait()
end
end)
rotq()
swooshsound = Instance.new("Sound", wreckingbrick)
swooshsound.Volume = 1
swooshsound.SoundId = "rbxassetid://148894535"
swooshsound.Looped = false
swooshsound:Play()
removeuseless:AddItem(swooshsound,2)
for i = 1, 10 do
wreckingbrick.CFrame = wreckingbrick.CFrame:lerp(CFrame.new(bigrift.Position) * CFrame.new(0,13,0) * CFrame.Angles(math.rad(25),math.rad(34),math.rad(50)), 0.5)
wait()
end
for i = 1, 8 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(-.6, 1.9, 0.2) * CFrame.Angles(math.rad(-85), math.rad(-120), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-5)), 0.5)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(50), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
local removeportal = coroutine.wrap(function()
for i = 1, 20 do
bigrift.Size = bigrift.Size - Vector3.new(2,0,2)
wait()
end
nepo = false
bigrift:Remove()
end)
removeportal()
wait(.5)
iffalsedontspin = false
wreckingbrick.Anchored = false
local velo = Instance.new("BodyVelocity", wreckingbrick)
velo.MaxForce = Vector3.new(999999, 999999, 999999)
wreckingbrick.CFrame = CFrame.new(wreckingbrick.Position,mouse.Hit.p)
velo.Velocity = wreckingbrick.CFrame.lookVector * 200
removeuseless:AddItem(wreckingbrick,5)
function onTouchedBrick(part)
local h = part.Parent:findFirstChild("Humanoid")
if h~=nil and game.Players:GetPlayerFromCharacter(h.Parent)~=game.Players.LocalPlayer then
if hit then return end
hit = true
h:ChangeState(Enum.HumanoidStateType.Ragdoll)
heavyhitimpact = Instance.new("Sound", wreckingbrick)
heavyhitimpact.Volume = 1
heavyhitimpact.SoundId = "rbxassetid://541909913"
heavyhitimpact.Looped = false
heavyhitimpact:Play()
removeuseless:AddItem(heavyhitimpact,2)
h.Health = h.Health - 35
wait(1)
hit = false
end
end
wreckingbrick.Touched:connect(onTouchedBrick)
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0, 2, 0.5) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(95)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(5), math.rad(-8)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
for i = 1, 2 do 
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(0, 2, 0.5) * CFrame.Angles(math.rad(0), math.rad(-90), math.rad(85)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(0), math.rad(1), math.rad(-2)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-85), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.5)
wait()
end
attacking = false
hum.WalkSpeed = 13
wait(0.3)
debounce = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='x' then
if debounce then return end
debounce = true
attacking = true
notbreakeffect = true
hum.WalkSpeed = 0
step = Instance.new("Sound", Torso)
step.SoundId = "rbxassetid://337064700"
step.Volume = 2
step:Play()
for i = 1, 12 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5, 0.8, 0.501) * CFrame.Angles(math.rad(-70), math.rad(-5), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.3, 1, 1.5) * CFrame.Angles(math.rad(-45), math.rad(72), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1.3, 0) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, 0.2) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 2.0, 0.2) * CFrame.Angles(math.rad(30), math.rad(20), math.rad(0)), 0.3)
wait()
end
knockbackhitbox = Instance.new("Part", Torso)
knockbackhitbox.Size = Vector3.new(5,5,3)
knockbackhitbox.Transparency = 1
local knockbackhitboxweld = weldBetween(knockbackhitbox, Torso)
local flyposition = coroutine.wrap(function()
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -0.3, 1.2) * CFrame.Angles(math.rad(-90), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.55, 0.1, 0) * CFrame.Angles(math.rad(5), math.rad(1), math.rad(8)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(5), math.rad(1), math.rad(-8)), 0.5)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-86.13379001), math.rad(-0), math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, .2) * CFrame.Angles(math.rad(10), math.rad(8), math.rad(-3)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, .2) * CFrame.Angles(math.rad(10), math.rad(-8), math.rad(3)), 0.5)
wait()
end
end)
local aftereffect = coroutine.wrap(function()
while notbreakeffect do
leftarmeffect = Instance.new("Part", Torso)
leftarmeffect.BrickColor = BrickColor.new("Really red")
leftarmeffect.Size = Vector3.new(1.001, 2.001, 1.001)
leftarmeffect.Material = "Neon"
leftarmeffect.Anchored = true
leftarmeffect.CanCollide = false
leftarmeffect.CFrame = Torso.CFrame * CFrame.new(1.55, 0.1, 0) * CFrame.Angles(math.rad(5), math.rad(1), math.rad(8))
table.insert(SlowlyFade,leftarmeffect)
removeuseless:AddItem(leftarmeffect,2)
rightarmeffect = Instance.new("Part", Torso)
rightarmeffect.BrickColor = BrickColor.new("Really red")
rightarmeffect.Size = Vector3.new(1.001, 2.001, 1.001)
rightarmeffect.Material = "Neon"
rightarmeffect.Anchored = true
rightarmeffect.CanCollide = false
rightarmeffect.CFrame = Torso.CFrame * CFrame.new(-1.55, 0.1, 0) * CFrame.Angles(math.rad(5), math.rad(1), math.rad(-8))
table.insert(SlowlyFade,rightarmeffect)
removeuseless:AddItem(rightarmeffect,2)
leftlegeffect = Instance.new("Part", Torso)
leftlegeffect.BrickColor = BrickColor.new("Really red")
leftlegeffect.Size = Vector3.new(1.001, 2.001, 1.001)
leftlegeffect.Material = "Neon"
leftlegeffect.Anchored = true
leftlegeffect.CanCollide = false
leftlegeffect.CFrame = Torso.CFrame * CFrame.new(0.4, 2.0, .2) * CFrame.Angles(math.rad(10), math.rad(-8), math.rad(3))
table.insert(SlowlyFade,leftlegeffect)
removeuseless:AddItem(leftlegeffect,2)
rightlegeffect = Instance.new("Part", Torso)
rightlegeffect.BrickColor = BrickColor.new("Really red")
rightlegeffect.Size = Vector3.new(1.001, 2.001, 1.001)
rightlegeffect.Material = "Neon"
rightlegeffect.Anchored = true
rightlegeffect.CanCollide = false
rightlegeffect.CFrame = Torso.CFrame * CFrame.new(-0.4, 2.0, .2) * CFrame.Angles(math.rad(10), math.rad(8), math.rad(-3))
table.insert(SlowlyFade,rightlegeffect)
removeuseless:AddItem(rightlegeffect,2)
wait()
end
end)
local sawnicboomzor = coroutine.wrap(function()
while notbreakeffect do
openshock2 = Instance.new("Part", Torso)
openshock2.Size = Vector3.new(1, 1, 1)
openshock2.Transparency = 0
openshock2.BrickColor = BrickColor.new("Really red")
openshock2.Material = "Neon"
openshock2.Anchored = true
openshock2.CanCollide = false
openshock2.CFrame = Root.CFrame * CFrame.Angles(math.rad(90),math.rad(90),math.rad(0))
DDTopenshock2 = Instance.new("SpecialMesh", openshock2) 
DDTopenshock2.MeshId = "http://www.roblox.com/asset/?id=20329976" 
DDTopenshock2.Scale = Vector3.new(1, 2, 1)
removeuseless:AddItem(openshock2,2)
table.insert(TheEnd3,DDTopenshock2)
table.insert(SlowlyFade,openshock2)
wait(0.1)
end
end)
local knockback = coroutine.wrap(function()
knockbackhitbox.Touched:connect(function(hit)
if hit.Parent:IsA("Part") then
elseif hit.Parent:IsA("SpecialMesh") then
elseif hit.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit.Parent:findFirstChild("Humanoid") then
if damagedebounce == true then return end
damagedebounce = true
knockbacktarget = hit.Parent:findFirstChild("Humanoid")
dmgsound = Instance.new("Sound", knockbacktarget.Torso)
dmgsound.SoundId = "rbxassetid://553324113"
dmgsound.Volume = 2
dmgsound:Play()
removeuseless:AddItem(dmgsound,2)
knockbacktarget:TakeDamage(10)
end
end)
end)
knockback()
aftereffect()
flyposition()
sawnicboomzor()
energy = Instance.new("Sound", Torso)
energy.Volume = 2
energy.SoundId = "rbxassetid://601621838"
energy:Play()
removeuseless:AddItem(energy,3)
energy2 = Instance.new("Sound", Torso)
energy2.Volume = 2
energy2.SoundId = "rbxassetid://303858412"
energy2:Play()
removeuseless:AddItem(energy2,3)
local fly = Instance.new("BodyVelocity", Torso)
fly.MaxForce = Vector3.new(999999, 999999, 999999)
fly.Velocity = Root.CFrame.lookVector * 90
Torso.CFrame = Root.CFrame * CFrame.new(0,0,-1)
wait(.7)
hum.WalkSpeed = 13
notbreakeffect = false
fly:Remove()
attacking = false
debounce = false
knockbackhitbox:Remove()
damagedebounce = false
end
end)

mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='c' then
if debounce == true then return end
debounce = true
attacking = true
hum.WalkSpeed = 0
coercion = Instance.new("Part", Torso)
coercion.BrickColor = BrickColor.new("Crimson")
coercion.Anchored = true
coercion.Shape = 0
coercion.Material = "Neon"
coercion.Size = Vector3.new(25,25,25)
coercion.CanCollide = false
coercion.Transparency = 1
coercion.CFrame = Root.CFrame * CFrame.new(0,0,0)
local coercion1 = coroutine.wrap(function()
for i = 1, 5 do
coercion.Size = coercion.Size - Vector3.new(5,5,5)
coercion.Transparency = coercion.Transparency - 0.25
wait()
end
end)
punchcharge:Play()
coercion1()
for i = 1, 8 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.5, -.5) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(40),math.rad(0)), 0.4)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(-40),math.rad(0)), 0.4)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 1.5, -.8) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(-3)), 0.4)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 1.5, -.8) * CFrame.Angles(math.rad(-50), math.rad(0), math.rad(3)), 0.4)
wait()
end
local coercion2 = coroutine.wrap(function()
for i = 1, 12 do
coercion.Size = coercion.Size + Vector3.new(5,5,5)
coercion.Transparency = coercion.Transparency + 0.1
wait()
end
end)
coercion2()
xboom = Instance.new("Sound", Torso)
xboom.SoundId = "rbxassetid://400765078"
xboom.Volume = 2
xboom:Play()
rdnm2 = soundtable2[math.random(1,#soundtable2)]
sound23 = Instance.new("Sound", Torso)
sound23.SoundId = "http://www.roblox.com/asset/?id="..rdnm2
sound23.Volume = 4
sound23:Play()
local Hit = damagealll(20,Torso.Position)		
for _,v in pairs(Hit) do				
v.Humanoid:TakeDamage(15)
end
for i = 1, 12 do
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .5, .5) * CFrame.Angles(math.rad(50), math.rad(0), math.rad(0)), 0.8)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.5,.9,-.5) * CFrame.Angles(math.rad(90),math.rad(20),math.rad(0)), 0.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5,.9,-.5) * CFrame.Angles(math.rad(90),math.rad(-20),math.rad(0)), 0.8)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 1.5, .8) * CFrame.Angles(math.rad(60), math.rad(10), math.rad(-9)), 0.8)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 1.5, .8) * CFrame.Angles(math.rad(60), math.rad(-10), math.rad(9)), 0.8)
wait()
end
debounce = false
attacking = false
coercion:Remove()
hum.WalkSpeed = 13
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='v' then
if debounce then return end
if transf1 == false then
print("You are not ready to transform!")
elseif transf1 and donttransform == false then
debounce = true
attacking = true
hum.WalkSpeed = 0
local timechange = coroutine.wrap(function()
game.Lighting.Brightness = -1
game.Lighting.Ambient = Color3.new(2.5,2.5,2.5)
wait(.1)
game.Lighting.Ambient = Color3.new(2.5,2.5,2.5)
wait(0.1)
game.Lighting.Ambient = Color3.new(2,2,2)
wait(0.1)
game.Lighting.Ambient = Color3.new(1.5,1.5,1.5)
wait(0.1)
game.Lighting.Ambient = Color3.new(1,1,1)
wait(0.1)
game.Lighting.Ambient = Color3.new(.5,.5,.5)
wait(0.1)
game.Lighting.Ambient = Color3.new(0,0,0)
wait(10)
game.Lighting.Ambient = Color3.new(-.5,-.5,-.5)
wait(0.1)
game.Lighting.Ambient = Color3.new(-.6,-.6,-.6)
wait(0.1)
game.Lighting.Ambient = Color3.new(-.7,-.7,-.7)
end)
local timechange2 = coroutine.wrap(function()
minutesAfterMidnight = -400
for i = 1, 100 do
	minutesAfterMidnight = minutesAfterMidnight + 5
	game.Lighting:SetMinutesAfterMidnight(minutesAfterMidnight)
	wait()
end
end)
timechange2()
local lri = coroutine.wrap(function()
light:Remove()
light = Instance.new("PointLight", Torso)
light.Color = Color3.new(0,255,0)
light.Range = 5
light.Brightness = 50
for i = 1, 150 do
light.Range = light.Range + 0.02
light.Brightness = light.Brightness + 0.05
wait()
end
end)
lri()
CorruptedArm3 = Instance.new("Part", LeftArm)
CorruptedArm3.CanCollide = false
CorruptedArm3.Size = Vector3.new(1.011, 2.011, 1.011)
CorruptedArm3.BottomSurface = "SmoothNoOutlines"
CorruptedArm3.TopSurface = "SmoothNoOutlines"
CorruptedArm3.Material = "Neon"
CorruptedArm3.Transparency = 1
CorruptedArm3.BrickColor = BrickColor.new("Lime green")
local weldcor = weldBetween(CorruptedArm3, LeftArm)
weldcor.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), 0)
sao = coroutine.wrap(function()
for i = 1, 100 do
CorruptedArm3.Transparency = CorruptedArm3.Transparency - 0.04
wait()
end
end)
sao()
for i = 1, 100 do
doommusucus.Volume = doommusucus.Volume - 0.02
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 15, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.003)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0.2) * CFrame.Angles(math.rad(-15), math.rad(0), math.rad(0)), 0.03)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(20)), 0.03)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-20)), 0.03)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-10)), 0.03)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(10)), 0.03)
wait()
end
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(40),math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(-40),math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1., .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
wait()
end
lssj = true
LSSJ:Play()
for i = 1, 40 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0.2) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(-20)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0.1) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.30, 2.0, 0.1) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 0.5)
wait()
end
rjjj = coroutine.wrap(function()
for i = 1, 62 do
unleashingpower = Instance.new("Part", Torso)
unleashingpower.Size = Vector3.new(1, 1, 1)
unleashingpower.Transparency = 0.5
unleashingpower.BrickColor = BrickColor.Random()
unleashingpower.Material = "Neon"
unleashingpower.Anchored = true
unleashingpower.CanCollide = false
unleashingpower.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
unleashingpowermesh = Instance.new("SpecialMesh", unleashingpower) 
unleashingpowermesh.MeshId = "http://www.roblox.com/asset/?id=3270017" 
unleashingpowermesh.Scale = Vector3.new(15, 15, 15)
removeuseless:AddItem(unleashingpower,2)
table.insert(Extreme,unleashingpower)
table.insert(nonmeshRepeater2,unleashingpower)
table.insert(ExtremeM,unleashingpowermesh)
unleashingpower2 = Instance.new("Part", Torso)
unleashingpower2.Size = Vector3.new(1, 1, 1)
unleashingpower2.Transparency = 0.5
unleashingpower2.Shape = 0
unleashingpower2.BrickColor = BrickColor.Random()
unleashingpower2.Material = "Neon"
unleashingpower2.Anchored = true
unleashingpower2.CanCollide = false
unleashingpower2.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
removeuseless:AddItem(unleashingpower2,2)
table.insert(Extreme,unleashingpower2)
table.insert(nonmeshRepeater2,unleashingpower2)
wait()
end
end)
rjjj()
mcs = coroutine.wrap(function()
while lssj do
light.Range = light.Range + 5
light.Brightness = light.Brightness + 5
light.Color = Color3.new(math.random(1,255)/255,math.random(1,255)/255,math.random(1,255)/255)
sine = sine + change
change = 4
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0.4) * CFrame.Angles(math.rad(-30 + 8 * math.cos(sine/4)), math.rad(0 + 10 * math.cos(sine/4)), math.rad(0 + 5 * math.cos(sine/4))), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(25 + 5 * math.cos(sine/4)), math.rad(0 - 2 * math.cos(sine/4)), math.rad(20 + 20 * math.cos(sine/4))), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(25 - 7 * math.cos(sine/4)), math.rad(0 + 2 * math.cos(sine/4)), math.rad(-20 + 20 * math.cos(sine/4))), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0.2) * CFrame.Angles(math.rad(10), math.rad(0 + 9 * math.cos(sine/4)), math.rad(-10 + 5 * math.cos(sine/4))), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.30, 2.0, 0.2) * CFrame.Angles(math.rad(10), math.rad(0 - 9 * math.cos(sine/4)), math.rad(10 - 5 * math.cos(sine/4))), 0.5)
wait()
end
end)
mcs()
wait(4)
lssj = false
light.Range = 50
light.Brightness = 9001
light.Color = Color3.new(255,0,0)
unleashingpower3 = Instance.new("Part", Torso)
unleashingpower3.Size = Vector3.new(1, 1, 1)
unleashingpower3.Transparency = 0
unleashingpower3.Shape = 0
unleashingpower3.BrickColor = BrickColor.New("Lime green")
unleashingpower3.Material = "Neon"
unleashingpower3.Anchored = true
unleashingpower3.CanCollide = false
unleashingpower3.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
table.insert(Extreme,unleashingpower3)
wait(1)
HandCannonTop1:Remove()
FixedER:Remove()
FixedER4:Remove()
FixedER5:Remove()
FixedER2:Remove()
FixedER3:Remove()
HandCannonTop2:Remove()
HandCannonTop3:Remove()
secretpart:Remove()
HandCannonTop4:Remove()
HandCannonTop5:Remove()
HandCannonTop6:Remove()
HandCannonTop7:Remove()
HandCannonTop8:Remove()
HandCannonTop9:Remove()
HandCannonTop10:Remove()
HandCannonTop11:Remove()
HandCannonTop12:Remove()
HandCannonTop13:Remove()
HandCannonTop14:Remove()
corecircle:Remove()
corecircle2:Remove()
TheCore:Remove()
Gear1:Remove()
Gear2:Remove()
EnergyCorePART:Remove()
CorruptedArm:Remove()
CorruptedArm2:Remove()
ArmorPlating:Remove()
ArmorPlating2:Remove()
ArmorPlating3:Remove()
ArmorPlating4:Remove()
ArmorPlating5:Remove()
ArmorPlating6:Remove()
ArmorPlating7:Remove()
ArmorPlating8:Remove()
ArmorPlating9:Remove()
ArmorPlating10:Remove()
CorruptedArm3:Remove()
unleashingpower5 = Instance.new("Part", Torso)
unleashingpower5.Size = Vector3.new(20, 20, 20)
unleashingpower5.Transparency = 0.5
unleashingpower5.BrickColor = BrickColor.New("Really red")
unleashingpower5.Material = "Neon"
unleashingpower5.Anchored = true
unleashingpower5.CanCollide = false
unleashingpower5.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
unleashingpowermesh5 = Instance.new("SpecialMesh", unleashingpower5) 
unleashingpowermesh5.MeshId = "http://www.roblox.com/asset/?id=3270017" 
unleashingpowermesh5.Scale = Vector3.new(15, 15, 15)
unleashingpower6 = Instance.new("Part", Torso)
unleashingpower6.Size = Vector3.new(20, 20, 20)
unleashingpower6.Transparency = 0.5
unleashingpower6.BrickColor = BrickColor.New("Really red")
unleashingpower6.Material = "Neon"
unleashingpower6.Anchored = true
unleashingpower6.CanCollide = false
unleashingpower6.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
unleashingpowermesh6 = Instance.new("SpecialMesh", unleashingpower6) 
unleashingpowermesh6.MeshId = "http://www.roblox.com/asset/?id=3270017" 
unleashingpowermesh6.Scale = Vector3.new(15, 15, 15)
quickcour = coroutine.wrap(function()
while wait() do
unleashingpower5.CFrame = unleashingpower5.CFrame * CFrame.Angles(math.rad(1+6),math.rad(1+4),math.rad(1-2))
unleashingpower6.CFrame = unleashingpower6.CFrame * CFrame.Angles(math.rad(1-6),math.rad(1-4),math.rad(1+2))
end
end)
quickcour()
light.Range = 10
light.Brightness = 25
light.Color = Color3.new(255,0,0)
unleashingpower4 = Instance.new("Part", Torso)
unleashingpower4.Size = Vector3.new(15, 15, 15)
unleashingpower4.Transparency = 0
unleashingpower4.Shape = 0
unleashingpower4.BrickColor = BrickColor.New("Really red")
unleashingpower4.Material = "Neon"
unleashingpower4.Anchored = true
unleashingpower4.CanCollide = false
unleashingpower4.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
mdark.MeshId,mdark.TextureId = 'http://www.roblox.com/asset/?id=21057410','http://www.roblox.com/asset/?id=73404388'
wait(1)
table.insert(nonmeshRepeater2,unleashingpower3)
removeuseless:AddItem(unleashingpower3,3)
wait(1)
unleashingpower7 = Instance.new("Part", Torso)
unleashingpower7.Size = Vector3.new(1, 1, 1)
unleashingpower7.Transparency = 0
unleashingpower7.Shape = 0
unleashingpower7.BrickColor = BrickColor.New("Really red")
unleashingpower7.Material = "Neon"
unleashingpower7.Anchored = true
unleashingpower7.CanCollide = false
unleashingpower7.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
table.insert(Extreme,unleashingpower7)
table.insert(nonmeshRepeater2,unleashingpower7)
removeuseless:AddItem(unleashingpower7,3)
wait(2)
unleashingpower8 = Instance.new("Part", Torso)
unleashingpower8.Size = Vector3.new(1, 1, 1)
unleashingpower8.Transparency = 0
unleashingpower8.Shape = 0
unleashingpower8.BrickColor = BrickColor.New("Really red")
unleashingpower8.Material = "Neon"
unleashingpower8.Anchored = true
unleashingpower8.CanCollide = false
unleashingpower8.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
table.insert(Extreme,unleashingpower8)
table.insert(nonmeshRepeater2,unleashingpower8)
removeuseless:AddItem(unleashingpower8,3)
wait(2)
unleashingpower9 = Instance.new("Part", Torso)
unleashingpower9.Size = Vector3.new(1, 1, 1)
unleashingpower9.Transparency = 0
unleashingpower9.Shape = 0
unleashingpower9.BrickColor = BrickColor.New("Really red")
unleashingpower9.Material = "Neon"
unleashingpower9.Anchored = true
unleashingpower9.CanCollide = false
unleashingpower9.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
table.insert(Extreme,unleashingpower9)
table.insert(nonmeshRepeater2,unleashingpower9)
removeuseless:AddItem(unleashingpower9,3)
wait(2)
table.insert(Extreme,unleashingpower4)
table.insert(nonmeshRepeater2,unleashingpower4)
removeuseless:AddItem(unleashingpower4,3)
wait(.1)
arti = coroutine.wrap(function()
for i = 1, 10 do
unleashingpower10 = Instance.new("Part", Torso)
unleashingpower10.Size = Vector3.new(1, 1, 1)
unleashingpower10.Transparency = 0.5
unleashingpower10.BrickColor = BrickColor.New("Crimson")
unleashingpower10.Material = "Neon"
unleashingpower10.Anchored = true
unleashingpower10.CanCollide = false
unleashingpower10.CFrame = Torso.CFrame * CFrame.Angles(math.random(1,100),math.random(1,100),math.random(1,100))
un = Instance.new("SpecialMesh", unleashingpower10) 
un.MeshId = "http://www.roblox.com/asset/?id=3270017" 
un.Scale = Vector3.new(15, 15, 15)
removeuseless:AddItem(unleashingpower10,2)
table.insert(Extreme,unleashingpower10)
table.insert(nonmeshRepeater2,unleashingpower10)
table.insert(ExtremeM,un)
wait()
end
end)
arti()
dso = coroutine.wrap(function()
for i = 1, 100 do
LSSJ.Volume = LSSJ.Volume - 0.4
wait()
end
end)
dso()
removeuseless:AddItem(unleashingpower6,2)
table.insert(Extreme,unleashingpower6)
table.insert(nonmeshRepeater2,unleashingpower6)
removeuseless:AddItem(unleashingpower5,2)
table.insert(Extreme,unleashingpower5)
table.insert(nonmeshRepeater2,unleashingpower5)
doommusucus.SoundId = "rbxassetid://296414388"
laugh = Instance.new("Sound", Torso)
laugh.SoundId = "rbxassetid://179774173"
laugh.Volume = 2.5
laugh:Play()
for i = 1, 10 do
doommusucus.Volume = doommusucus.Volume + 0.11
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(40),math.rad(0)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.2,0,.5) * CFrame.Angles(math.rad(-90),math.rad(-40),math.rad(0)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1., .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.0, .9) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(0)), 0.5)
wait()
end
for i = 1, 10 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, 0.2) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(0)), 0.5)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.5, 0) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(20)), 0.5)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.5, 0) * CFrame.Angles(math.rad(25), math.rad(0), math.rad(-20)), 0.5)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.3, 2, 0.1) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(-10)), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.30, 2.0, 0.1) * CFrame.Angles(math.rad(5), math.rad(0), math.rad(10)), 0.5)
wait()
end
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-5), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(-10), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
wait()
end
wait(1)
hum.WalkSpeed = 13
LSSJn = true
donttransform = true
attacking = false
debounce = false
end
end
end)

mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='b' then
if debounce == true then return end
debounce = true
walking = false
attacking = true
fpg = false
gpf = true
for i = 1, 5 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)), 0.6)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-90)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.6)
wait()
end
wind = Instance.new("Part", Torso)
wind.BrickColor = BrickColor.new("Crimson")
wind.Size = Vector3.new(5,5,5)
wind.CanCollide = false
wind.Transparency = 1
wind.Material = "Neon"
windmesh = Instance.new("SpecialMesh", wind)
windmesh.Scale = Vector3.new(2,2,2)
windmesh.MeshId = "rbxassetid://168892432"
windweld = weldBetween(wind, Torso)
wind2 = Instance.new("Part", Torso)
wind2.BrickColor = BrickColor.new("Crimson")
wind2.Size = Vector3.new(5,5,5)
wind2.CanCollide = false
wind2.Transparency = 1
wind2.Material = "Neon"
windmesh2 = Instance.new("SpecialMesh", wind2)
windmesh2.Scale = Vector3.new(4,4,4)
windmesh2.MeshId = "rbxassetid://168892432"
windweld2 = weldBetween(wind2, wind)
quickcourou = coroutine.wrap(function()
m = 1
for i = 1, 5 do
wind.Transparency = wind.Transparency - 0.1
wind2.Transparency = wind2.Transparency - 0.04
wait()
end
end)
quickcourou()
eORBleft = Instance.new("Part", Torso)
eORBleft.Size = Vector3.new(1, 1, 1)
eORBleft.Transparency = 0
eORBleft.Shape = 0
eORBleft.BrickColor = BrickColor.New("Really red")
eORBleft.Material = "Neon"
eORBleft.Anchored = false
eORBleft.CanCollide = false
eORBleft.CFrame = Root.CFrame * CFrame.new(4,0,0)
eorbweld1 = weldBetween(eORBleft, LeftArm)
eorbweld1.C0 = CFrame.new(0,1.3,0)
eORBright = Instance.new("Part", Torso)
eORBright.Size = Vector3.new(1, 1, 1)
eORBright.Transparency = 0
eORBright.Shape = 0
eORBright.BrickColor = BrickColor.New("Really red")
eORBright.Material = "Neon"
eORBright.Anchored = false
eORBright.CanCollide = false
eORBright.CFrame = Root.CFrame * CFrame.new(4,0,0)
eorbweld2 = weldBetween(eORBright, RightArm)
eorbweld2.C0 = CFrame.new(0,1.3,0)
hev = Instance.new("Part", Torso)
hev.Size = Vector3.new(15, 15, 15)
hev.Transparency = 0
hev.Shape = 0
hev.BrickColor = BrickColor.New("Really red")
hev.Material = "Neon"
hev.Anchored = true
hev.CanCollide = false
hev2 = Instance.new("Part", Torso)
hev2.Size = Vector3.new(15, 15, 15)
hev2.Transparency = 0
hev2.Shape = 0
hev2.BrickColor = BrickColor.New("Really red")
hev2.Material = "Neon"
hev2.Anchored = true
hev2.CanCollide = false
quickcour2 = coroutine.wrap(function()
while gpf do
local Hit = damagealll(8,Torso.Position)	
for _,v in pairs(Hit) do
local velo2 = Instance.new("BodyVelocity", v)
velo2.MaxForce = Vector3.new(999999, 999999, 999999)
velo2.Velocity = v.Torso.CFrame.lookVector * 200
removeuseless:AddItem(velo2,2)
v.Humanoid:ChangeState(Enum.HumanoidStateType.FallingDown)				
v.Humanoid:TakeDamage(10)
wait(.5)
end
wait()
end
end)
quickcour2()
quickcour = coroutine.wrap(function()
removeuseless:AddItem(hev,2)
removeuseless:AddItem(hev2,2)
for i = 1, 50 do
hev.Size = hev.Size - Vector3.new(1,1,1)
hev2.Size = hev2.Size - Vector3.new(1,1,1)
hev.CFrame = eORBleft.CFrame
hev2.CFrame = eORBright.CFrame
wait()
end
end)
quickcour()
particlemiter1 = Instance.new("ParticleEmitter", eORBleft)
particlemiter1.Enabled = true
particlemiter1.Texture = "rbxassetid://1415728949"
particlemiter1.Lifetime = NumberRange.new(2.5)
particlemiter1.Size = NumberSequence.new(1,0)
particlemiter1.Rate = 20
particlemiter1.RotSpeed = NumberRange.new(70)
particlemiter1.Speed = NumberRange.new(0)
particlemiter2 = Instance.new("ParticleEmitter", eORBright)
particlemiter2.Enabled = true
particlemiter2.Texture = "rbxassetid://1415728949"
particlemiter2.Lifetime = NumberRange.new(2.5)
particlemiter2.Size = NumberSequence.new(1,0)
particlemiter2.Rate = 20
particlemiter2.RotSpeed = NumberRange.new(70)
particlemiter2.Speed = NumberRange.new(0)
t = 1
for i = 1, 5 do
t = t + 1
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
sound = Instance.new("Sound", Torso)
sound.SoundId = "rbxassetid://730531499"
sound.Volume = 3
sound.Pitch = math.random(.8,1)
sound:Play()
for i = 1, 5 do
hum.WalkSpeed = 15
t = t + 2
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
sound2 = Instance.new("Sound", Torso)
sound2.SoundId = "rbxassetid://93186995"
sound2.Volume = 3
sound2.Pitch = math.random(.8,1)
sound2:Play()
for i = 1, 5 do
hum.WalkSpeed = 16
t = t + 3
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
sound3 = Instance.new("Sound", Torso)
sound3.SoundId = "rbxassetid://178090362"
sound3.Volume = 3
sound3.Pitch = math.random(.8,1)
sound3:Play()
for i = 1, 5 do
hum.WalkSpeed = 18
t = t + 4
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
sound4 = Instance.new("Sound", Torso)
sound4.SoundId = "rbxassetid://152091992"
sound4.Volume = 3
sound4.Pitch = 1
sound4.Looped = true
sound4:Play()
for i = 1, 5 do
hum.WalkSpeed = 20
t = t + 5
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
for i = 1, 5 do
hum.WalkSpeed = 25
t = t + 10
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
for i = 1, 5 do
hum.WalkSpeed = 30
t = t + 20
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
for i = 1, 5 do
hum.WalkSpeed = 35
t = t + 30
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
for i = 1, 150 do
hum.WalkSpeed = 40
t = t + 40
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, .4, 0) * CFrame.Angles(math.rad(0), math.rad(t), math.rad(0)), 0.6)
wait()
end
fpg = true
gpf = false
removeuseless:AddItem(sound4,5)
removeuseless:AddItem(eORBright,1)
removeuseless:AddItem(eORBleft,1)
removeuseless:AddItem(wind,1)
removeuseless:AddItem(wind2,1)
attacking = false
debounce = false
quikcour = coroutine.wrap(function()
while fpg do
wind.Transparency = wind.Transparency + 0.06
wind2.Transparency = wind2.Transparency + .06
eORBright.Size = eORBright.Size + Vector3.new(1,1,1)
eORBright.Transparency = eORBright.Transparency + 0.07
eORBleft.Size = eORBleft.Size + Vector3.new(1,1,1)
eORBleft.Transparency = eORBleft.Transparency + 0.07
sound4.Volume = sound4.Volume - 0.05
eORBright.Anchored = true
eORBleft.Anchored = true
wait()
end
end)
quikcour()
end
end)

mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='n' then
if debounce == true then return end
debounce = true
attacking = true
damageallow2 = true
combowombo = true
hum.WalkSpeed = 10
hitbox1 = Instance.new("Part", RightArm)
hitbox1.Size = Vector3.new(2,2,1)
hitbox1.Transparency = 1
hitbox1.CanCollide = false
local hitbox1w = weldBetween(hitbox1, RightArm)
hitbox1w.C0 = CFrame.new(0,2,0)
hitbox2 = Instance.new("Part", LeftArm)
hitbox2.Size = Vector3.new(2,2,1)
hitbox2.Transparency = 1
hitbox2.CanCollide = false
local hitbox2w = weldBetween(hitbox2, LeftArm)
hitbox2w.C0 = CFrame.new(0,2,0)
impactsound = Instance.new("Sound", nil)
impactsound.Volume = 3
impactsound.SoundId = "rbxassetid://281156569"
impactsound2 = Instance.new("Sound", nil)
impactsound2.Volume = 3
impactsound2.SoundId = "rbxassetid://281156569"
hitbox1.Touched:connect(function(hit1)
if hit1.Parent:IsA("Part") then
elseif hit1.Parent:IsA("SpecialMesh") then
elseif hit1.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit1.Parent:findFirstChild("Humanoid") then
if damageallow1 then return end
damageallow1 = true
Slachtoffer = hit1.Parent:findFirstChild("Humanoid")
impactsound.Parent = Slachtoffer.Torso
impactsound:Play()
Slachtoffer:TakeDamage(5)
end
end)
hitbox2.Touched:connect(function(hit2)
if hit2.Parent:IsA("Part") then
elseif hit2.Parent:IsA("SpecialMesh") then
elseif hit2.Parent.Name == game.Players.LocalPlayer.Name then
elseif hit2.Parent:findFirstChild("Humanoid") then
if damageallow2 then return end
damageallow2 = true
impactsound2.Parent = Slachtoffer.Torso
impactsound2:Play()
Slachtoffer = hit2.Parent:findFirstChild("Humanoid")
Slachtoffer:TakeDamage(5)
end
end)
punchsound = Instance.new("Sound", Torso)
punchsound.Volume = 3
punchsound.SoundId = "rbxassetid://515339961"
punchsound2 = Instance.new("Sound", Torso)
punchsound2.Volume = 3
punchsound2.SoundId = "rbxassetid://515339961"
punchsound2.Pitch = .9
while combowombo do
damageallow1 = false
punchsound:Play()
for i = 1, 3 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5, 0, -.9) * CFrame.Angles(math.rad(-140), math.rad(0), math.rad(90)), 0.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 1.85, -.26) * CFrame.Angles(math.rad(-19), math.rad(0), math.rad(-90)), 0.8)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(70), math.rad(0)), 0.8)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.8)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.8)
wait()
end
damageallow2 = false
punchsound2:Play()
for i = 1, 3 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)), 0.4)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(.5, 1.85, -.26) * CFrame.Angles(math.rad(-19), math.rad(0), math.rad(90)), 0.8)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.5, 0, -.9) * CFrame.Angles(math.rad(-140), math.rad(0), math.rad(-90)), 0.8)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-70), math.rad(0)), 0.8)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.4, 2, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(-3)), 0.8)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.4, 2.0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(3)), 0.8)
wait()
end
wait()
end
hitbox1:Remove()
hitbox2:Remove()
attacking = false
debounce = false
end
end)

mouse.KeyDown:connect(function(Press)
	Press=Press:lower()
	if Press=='e' then
if debounce == true then return end
debounce = true
walking = false
attacking = true
ll = false
bigrift = Instance.new("Part", Torso)
bigrift.Size = Vector3.new(0.1, 0.1, 0.1)
bigrift.Material = "Neon"
bigrift.Transparency = 1
bigrift.Anchored = true
bigrift.CanCollide = false
bigriftdecal = Instance.new("Decal", bigrift)
bigriftdecal.Face = "Top"
bigriftdecal.Texture = "rbxassetid://702583926"
bigrift2 = Instance.new("Part", Torso)
bigrift2.Size = Vector3.new(0.1, 0.1, 0.1)
bigrift2.Material = "Neon"
bigrift2.Transparency = 1
bigrift2.Anchored = true
bigrift2.CanCollide = false
bigriftdecal2 = Instance.new("Decal", bigrift2)
bigriftdecal2.Face = "Top"
bigriftdecal2.Texture = "rbxassetid://702583926"
rdnm3 = soundtable3[math.random(1,#soundtable3)]
luagh = Instance.new("Sound", Torso)
luagh.SoundId = "rbxassetid://"..rdnm3
luagh.Looped = false
luagh.Volume = 2
luagh:Play()
removeuseless:AddItem(luagh,10)
poop1 = coroutine.wrap(function()
for i = 1, 25 do
bigrift.Size = bigrift.Size + Vector3.new(1,0,1)
bigrift.CFrame = bigrift.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0), math.rad(1 + 5),0)
wait()
end
bigrift2.CFrame = CFrame.new(mouse.Hit.p)
for i = 1, 25 do
bigrift.Size = bigrift.Size - Vector3.new(1,0,1)
bigrift.CFrame = bigrift.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0), math.rad(1 - 5),0)
bigrift2.Size = bigrift2.Size + Vector3.new(1,0,1)
bigrift2.CFrame = bigrift2.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0), math.rad(1 + 5),0)
wait()
end
for i = 1, 25 do
ll = true
bigrift2.Size = bigrift2.Size - Vector3.new(1,0,1)
bigrift2.CFrame = bigrift2.CFrame * CFrame.new(0,0,0) * CFrame.Angles(math.rad(0), math.rad(1 - 5),0)
wait()
end
end)
poop1()
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-5), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-80), math.rad(-10), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
wait()
end
wait(1)
LeftLeg.CFrame = CFrame.new(bigrift2.Position) * CFrame.new(0,1,0)
for i = 1, 15 do
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), 0.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.4, 1, 0.501) * CFrame.Angles(math.rad(-80), math.rad(-5), math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(-30), math.rad(0), math.rad(0)), 0.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(-80), math.rad(-10), math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.2, .8) * CFrame.Angles(math.rad(-80), math.rad(0), math.rad(0)), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.3, 1.9, -.34) * CFrame.Angles(math.rad(-40), math.rad(0), math.rad(10)), 0.3)
wait()
end
debounce = false
attacking = false
ll = false
end
end)

mouse.KeyUp:connect(function(Press)
	Press=Press:lower()
	if Press=='n' then
combowombo = false
end
end)

mouse.KeyDown:connect(function(Press)
Press=Press:lower()
if Press=='0' then
if debounce then return end
debounce = true
running = true
hum.WalkSpeed = 28
end
end)

mouse.KeyUp:connect(function(Press)
Press=Press:lower()
if Press=='0' then
debounce = false
running = false
hum.WalkSpeed = 13
end
end)

doit = coroutine.wrap(function()
while wait() do
for _,v in pairs(Repeater) do
v.Scale =  v.Scale + Vector3.new(1, 1, 1)
end

for _,v in pairs(openshocktable) do
v.Scale =  v.Scale + Vector3.new(3, 3, 3)
end

for _,v in pairs(nonmeshRepeater) do
v.Size =  v.Size + Vector3.new(2, 2, 2)
end

for _,v in pairs(Extreme) do
v.Size =  v.Size + Vector3.new(6, 6, 6)
end

for _,v in pairs(LessSize) do
v.Size = v.Size - Vector3.new(1, 1, 1)
end

for _,v in pairs(nonmeshRepeater2) do
v.Transparency = v.Transparency + 0.05
end

for _,v in pairs(Repeater2) do
v.Transparency = v.Transparency + 0.01
end

for _,v in pairs(TheEnd) do
v.Transparency = v.Transparency - 0.008
end

for _,v in pairs(TheEnd2) do
v.Scale = v.Scale - Vector3.new(1, 1, 1)
end

for _,v in pairs(TheEnd3) do
v.Scale = v.Scale + Vector3.new(2, 2, 2)
end

for _,v in pairs(ExtremeM) do
v.Scale = v.Scale + Vector3.new(8, 8, 8)
end

for _,v in pairs(TheEnd4) do
v.Transparency = v.Transparency + 0.009
v.Rotation = v.Rotation + Vector3.new(3,0,0)
end

for _,v in pairs(SlowlyFade) do
v.Transparency = v.Transparency + 0.05
end

for _,v in pairs(UpMover) do
v.Position = v.Position + Vector3.new(0, 3, 0)
end

for _,v in pairs(ForwardMover) do
v.CFrame = v.CFrame * CFrame.new(0, 0, 2.4 +(i/.1)) * CFrame.Angles(0, 0, math.rad(0))
end

for _,v in pairs(DamageAll2) do
if attackdebounce then return end
Slachtoffer = hit.Parent:findFirstChild("Humanoid")
Slachtoffer:TakeDamage(20)
end
end
end)
doit()

vcoroutine = coroutine.wrap(function()
wait(1)
transf1 = true
end)
vcoroutine()

local anims = coroutine.wrap(function()
while true do
settime = 0.05
sine = sine + change
if position == "Walking" and attacking == false and running == false then
change = 2.2
walking = true
hum.WalkSpeed = 13
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.6, 0.1, 0) * CFrame.Angles(math.rad(-48 * math.sin(sine/8)), math.rad(-20 * math.sin(sine/8)), math.rad(-8)), 0.6)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.6, 0.1, 0) * CFrame.Angles(math.rad(48 * math.sin(sine/8)), math.rad(-20 * math.sin(sine/8)), math.rad(8)), 0.6)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(5 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.3)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.3) * CFrame.Angles(math.rad(20), math.rad(0 - 50 * Head.RotVelocity.Y / 30, math.cos(15 * math.cos(sine/10))), math.rad(0 - 20 * Head.RotVelocity.Y / 30, math.cos(15 * math.cos(sine/10)))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.92 - 0.35 * math.cos(sine/6)/2.8, 0.2 - math.sin(sine/6)/3.4) * CFrame.Angles(math.rad(10) + -math.sin(sine/6)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + RightLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.5)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.92 + 0.35 * math.cos(sine/6)/2.8, 0.2 + math.sin(sine/6)/3.4) * CFrame.Angles(math.rad(10) - -math.sin(sine/6)/2.3, math.rad(0)*math.cos(sine/1), math.rad(0)  + LeftLeg.RotVelocity.Y / 30, math.cos(25 * math.cos(sine/10))), 0.5)
elseif position == "Idle" and attacking == false and running == false then
walking = false
change = .9
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0.2) * CFrame.Angles(math.rad(15 + 2 * math.sin(sine/12)), math.rad(0), math.rad(0)), .3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1+ .05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(0), math.rad(0 * math.cos(sine/8)), math.rad(0)), .3)
TORSOLERP.C0 = TORSOLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.58, 0.1 + 0.05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(2 + 1 * math.sin(sine/8)), math.rad(2 - 2 * math.sin(sine/8)), math.rad(-8 - 3 * math.sin(sine/8))), .3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.58, 0.1 + 0.05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(2 + 1 * math.sin(sine/8)), math.rad(2 + 2 * math.sin(sine/8)), math.rad(8 + 3 * math.sin(sine/8))), .3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.9 + .05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(0 * math.sin(sine/8)), math.rad(1 - 2 * math.sin(sine/8)), math.rad(-2 - .5 * math.sin(sine/8))), .3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.9 + .05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2 + .5 * math.sin(sine/8))), .3)
elseif position == "Idle2" and attacking == false and running == false then
change = .7
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, -0) * CFrame.Angles(math.rad(0 + 2 * math.sin(sine/12)), math.rad(40), math.rad(0)), .3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.1+ .05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(0), math.rad(40), math.rad(0)), .3)
TORSOLERP.C0 = TORSOLERP.C0:lerp(CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)), .3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(80 - 1 * math.sin(sine/8)),math.rad(0)), 0.3)
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-.7,-.2,.4) * CFrame.Angles(math.rad(-87),math.rad(-88 + .7 * math.sin(sine/8)),math.rad(0)), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.45, 1.9 + .05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(0 * math.sin(sine/8)), math.rad(1 - 2 * math.sin(sine/8)), math.rad(-2 - .5 * math.sin(sine/8))), .3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.45, 1.9 + .05 * math.sin(sine/8), 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(2 + .5 * math.sin(sine/8))), .3)
elseif position == "Running" and attacking == false then
change = 2
hum.WalkSpeed = 26
RIGHTARMLERP.C0 = RIGHTARMLERP.C0:lerp(CFrame.new(-1.45+0.50*math.cos(sine/5),0.2-0.25*math.cos(sine/5),-0.2-0.5*math.cos(sine/5))*CFrame.Angles(math.rad(-20+120*math.cos(sine/5)),math.rad(0),math.rad(-4+30*math.cos(sine/5))),.3)
LEFTARMLERP.C0 = LEFTARMLERP.C0:lerp(CFrame.new(1.45+0.50*math.cos(sine/5),0.2-0.25*math.cos(sine/5),-0.2+0.5*math.cos(sine/5))*CFrame.Angles(math.rad(-20-120*math.cos(sine/5)),math.rad(0),math.rad(4+30*math.cos(sine/5))),.3)
ROOTLERP.C0 = ROOTLERP.C0:lerp(CFrame.new(0, -.05, 0) * CFrame.Angles(math.rad(-20 - 4 * math.cos(sine/4)), math.rad(0 + 0 * math.cos(sine/8)), math.rad(0) + Root.RotVelocity.Y / 30, math.cos(10 * math.cos(sine/10))), 0.3)
HEADLERP.C0 = HEADLERP.C0:lerp(CFrame.new(0, -1.5, .2) * CFrame.Angles(math.rad(-10), math.rad(0 + 20 * Head.RotVelocity.Y / 30, math.cos(15 * math.cos(sine/10))), math.rad(0 - 20 * Head.RotVelocity.Y / 30, math.cos(15 * math.cos(sine/10)))), 0.3)
RIGHTLEGLERP.C0 = RIGHTLEGLERP.C0:lerp(CFrame.new(-0.5, 1.8 - 0.45 * math.cos(sine/4)/2.8, -0.05) * CFrame.Angles(math.rad(-35)*math.sin(sine/4), math.rad(1)*math.cos(sine/1), math.rad(0) + RightLeg.RotVelocity.Y / 90, math.cos(25 * math.cos(sine/6))), 0.3)
LEFTLEGLERP.C0 = LEFTLEGLERP.C0:lerp(CFrame.new(0.5, 1.8 + 0.45 * math.cos(sine/4)/2.8, -0.05) * CFrame.Angles(math.rad(35)*math.sin(sine/4), math.rad(-1)*math.cos(sine/1), math.rad(0) + LeftLeg.RotVelocity.Y / 90, math.cos(25 * math.cos(sine/6))), 0.3)
end
wait()
end
end)
anims()
print("Project 44033514 loaded, made by Supr14.")