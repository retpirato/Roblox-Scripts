wait(0.1)
-------------------------------
local p=game:service("Players").LocalPlayer
if  p.Name=="Reruderu" then
        p:Kick("go away, skid who uses crappy decompilers,v3rmie skid.")
elseif p.Name=="Rerumu" then
        p:Kick("no thanks, skid who uses crappy decompilers that they didnt make.also being an pathetic v3rmie kid")
end
local char=p.Character
script.Parent=char 
local torso=char.Torso
local hed=char.Head
local larm=char:FindFirstChild("Left Arm")
local rarm=char:FindFirstChild("Right Arm")
local lleg=char:FindFirstChild("Left Leg")
local rleg=char:FindFirstChild("Right Leg") 
local hum=char.Humanoid
local cam=workspace.CurrentCamera
local root=char.HumanoidRootPart
local mouse=p:GetMouse()
local hb=game:service("RunService").Heartbeat
local rs=game:service("RunService").Stepped
hum.MaxHealth=math.huge
hum.Health=hum.MaxHealth
char.Health:Destroy()
local pgui=Instance.new("ScreenGui",p.PlayerGui)
local rads=math.huge
local ammo=0
local maxammo=10
local range=math.huge
local minpush=math.huge
local pushforce=math.huge
local maxpush=math.huge
local megatons=math.huge
local megatons2=math.huge
random={25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,-25,-26,-27,-28,-29,-30,-31,-32,-33,-34,-35,-36,-37,-38,-39,-40,-41,-42,-43,-44,-45,-46,-47,-48,-49,-50,-51,-52,-53,-54,-55,-56,-57,-58,-59,-60,-61,-62,-63,-64,-65,-66,-67,-68,-69,-70,-71,-72,-73,-74,-75,-76,-77,-78,-79,-80,-81,-82,-83,-84,-85,-86,-87,-88,-89,-90,-91,-92,-93,-94,-95,-96,-97,-98,-99,-100}
coroutine.wrap(function()
while rs:wait() do
pushforce=math.random(minpush,maxpush)
end
end)()
local mindmg=math.huge
local maxdmg=math.huge
local precision=math.random(7,9)
local crouch=0
local normal=16
local fall=20
local run=35
local maxhp=hum.MaxHealth
local hp=hum.Health
function fnt(pos,dist,splr)
    if splr then return(splr.Torso.CFrame.p -pos).magnitude < dist end
        local list = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Model")then
                if v:findFirstChild("Torso")then
                    if v ~= char then
                        if(v.Torso.Position -pos).magnitude <= dist then
                            table.insert(list,v)
                        end
                    end
                end
            end
        end
    return list
end
function fnp(pos,dist,splr)
    if splr then return(splr.Torso.CFrame.p -pos).magnitude < dist end
        local list = {}
        for i,v in pairs(workspace:GetChildren())do
            if v:IsA("Part")then
                    if v ~= char and v.Name~="Car" and v~=torso and v.Name~="Base" and v.Name~="Baseplate" then
                        if(v.Position -pos).magnitude <= dist then
                            table.insert(list,v)
                        end
                end
            end
        end
    return list
end
function rpr()
precision=math.random(7,9)
end
fw = function(wp0, wp1, wc0x, wc0y, wc0z) -- fast weld
local wld = Instance.new("Weld", wp1)
wld.Part0 = wp0
wld.Part1 = wp1
wld.C0 = CFrame.new(wc0x, wc0y, wc0z)
end
o1 = Instance.new("Frame")
o2 = Instance.new("Frame")
o3 = Instance.new("TextButton")
o4 = Instance.new("TextLabel")
o5 = Instance.new("TextLabel")
o1.Name = "bk"
o1.Parent = pgui
o1.Position = UDim2.new(0.30000001192093,0,-0.10000000149012,0)
o1.Size = UDim2.new(0.40000000596046,0,0.30000001192093,0)
o1.Position = UDim2.new(0.30000001192093,0,-0.10000000149012,0)
o1.BackgroundColor3 = Color3.new(0.223529, 0.223529, 0.223529)
o1.BorderColor3 = Color3.new(0, 0, 0)
o1.BorderSizePixel = 6
o2.Name = "upbar"
o2.Parent = o1
o2.Position = UDim2.new(2,0,0,0)
o2.Size = UDim2.new(1,0,0.079999998211861,0)
o2.Position = UDim2.new(2,0,0,0)
o2.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
o2.BorderColor3 = Color3.new(0, 0, 0)
o2.BorderSizePixel = 3
o3.Name = "close"
o3.Parent = o2
o3.Position = UDim2.new(0,0,30,0)
o3.Size = UDim2.new(0.10000000149012,0,1,0)
o3.Text = "X"
o3.Position = UDim2.new(0,0,30,0)
o3.BackgroundColor3 = Color3.new(1, 0, 0)
o3.BorderColor3 = Color3.new(0, 0, 0)
o3.BorderSizePixel = 3
o3.Font = Enum.Font.ArialBold
o3.FontSize = Enum.FontSize.Size14
o3.TextColor3 = Color3.new(0, 0, 0)
o3.TextScaled = true
o3.TextWrapped = true
o4.Name = "txt"
o4.Parent = o2
o4.Position = UDim2.new(0.125,0,-14,0)
o4.Size = UDim2.new(0.85000002384186,0,0.89999997615814,0)
o4.Text = "Open message"
o4.Position = UDim2.new(0.125,0,-14,0)
o4.BackgroundColor3 = Color3.new(0.988235, 0.988235, 0.988235)
o4.BorderColor3 = Color3.new(0, 0, 0)
o4.BorderSizePixel = 3
o4.Font = Enum.Font.ArialBold
o4.FontSize = Enum.FontSize.Size14
o4.TextColor3 = Color3.new(0, 0, 0)
o4.TextScaled = true
o4.TextWrapped = true
o5.Name = "maintxt"
o5.Parent = o1
o5.Position = UDim2.new(-2,0,0,0)
o5.Size = UDim2.new(0.80000001192093,0,0.80000001192093,0)
o5.Text = "Nuke launcher loaded.Fully created by LegendOfDarknees"
o5.Position = UDim2.new(-2,0,0,0)
o5.BackgroundColor3 = Color3.new(0.976471, 0.976471, 0.976471)
o5.BorderColor3 = Color3.new(0, 0, 0)
o5.BorderSizePixel = 3
o5.Font = Enum.Font.ArialBold
o5.FontSize = Enum.FontSize.Size14
o5.TextColor3 = Color3.new(0, 0, 0)
o5.TextScaled = true
o5.TextWrapped = true
local hb=game:service("RunService").Heartbeat
local rs=game:service("RunService").Stepped
local sc=pgui
local bk=sc.bk
local upbar=bk.upbar
local close=upbar.close
local txt=upbar.txt
local maintxt=bk.maintxt
canclose=true
coroutine.wrap(function()
for i = 1, 120 do
bk.Position=bk.Position:lerp(UDim2.new(0.3,0,0.3,0),0.25)
upbar.Position=upbar.Position:lerp(UDim2.new(0,0,0,0),0.05)
close.Position=close.Position:lerp(UDim2.new(0,0,0,0),0.05)
txt.Position=txt.Position:lerp(UDim2.new(0.125,0,0.05,0),0.05)
maintxt.Position=maintxt.Position:lerp(UDim2.new(0.1,0,0.1,0),0.05)
rs:wait()
end
end)()
close.MouseButton1Click:connect(function()
if canclose==true then
	canclose=false
	for i = 1, 30 do
		bk.Position=bk.Position:lerp(UDim2.new(0.3,0,-0.5,0),0.1)
		upbar.Position=upbar.Position:lerp(UDim2.new(2,0,0,0),0.1)
		close.Position=close.Position:lerp(UDim2.new(0,0,30,0),0.1)
		txt.Position=txt.Position:lerp(UDim2.new(0.125,0,-14,0),0.1)
		maintxt.Position=maintxt.Position:lerp(UDim2.new(-2,0,0.1,0),0.1)
	   rs:wait()
	end
	bk:Destroy()
end
end)
------------guis------------
o1 = Instance.new("Frame")
o2 = Instance.new("TextLabel")
o3 = Instance.new("Frame")
o4 = Instance.new("Frame")
o5 = Instance.new("Frame")
o6 = Instance.new("TextLabel")
o1.Name = "sdbar"
o1.Parent = pgui
o1.Position = UDim2.new(0,0,0.050000000745058,0)
o1.Size = UDim2.new(0.10000000149012,0,0.94999998807907,0)
o1.Position = UDim2.new(0,0,0.050000000745058,0)
o1.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
o1.BorderColor3 = Color3.new(0, 0, 0)
o1.BorderSizePixel = 4
o2.Name = "txt"
o2.Parent = o1
o2.Size = UDim2.new(1,0,1,0)
o2.Text = "Ammo: 1"
o2.BackgroundColor3 = Color3.new(1, 1, 1)
o2.BackgroundTransparency = 1
o2.BorderSizePixel = 0
o2.Font = Enum.Font.Bodoni
o2.FontSize = Enum.FontSize.Size14
o2.TextColor3 = Color3.new(1, 1, 1)
o2.TextScaled = true
o2.TextWrapped = true
o3.Name = "bk"
o3.Parent = pgui
o3.Size = UDim2.new(1,0,0.050000000745058,0)
o3.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
o3.BorderColor3 = Color3.new(0, 0, 0)
o3.BorderSizePixel = 6
o3.ZIndex = 2
o4.Name = "bar1"
o4.Parent = o3
o4.Position = UDim2.new(0.050000000745058,0,0.15000000596046,0)
o4.Size = UDim2.new(0.89999997615814,0,0.60000002384186,0)
o4.Position = UDim2.new(0.050000000745058,0,0.15000000596046,0)
o4.BackgroundColor3 = Color3.new(0, 0, 0)
o4.BorderSizePixel = 0
o4.ZIndex = 2
o5.Name = "bar"
o5.Parent = o4
o5.Size = UDim2.new(1,0,1,0)
o5.BackgroundColor3 = Color3.new(0.333333, 1, 0)
o5.BorderSizePixel = 0
o5.ZIndex = 2
o6.Name = "txt"
o6.Parent = o5
o6.Size = UDim2.new(1,0,1,0)
o6.Text = "100/100 HP"
o6.BackgroundColor3 = Color3.new(1, 1, 1)
o6.BackgroundTransparency = 1
o6.BorderSizePixel = 0
o6.ZIndex = 2
o6.Font = Enum.Font.Bodoni
o6.FontSize = Enum.FontSize.Size14
o6.TextColor3 = Color3.new(0, 0, 0)
o6.TextScaled = true
o6.TextWrapped = true

coroutine.wrap(function()
while rs:wait() do
hp=hum.Health
maxhp=hum.MaxHealth
o6.Text=hp.."/"..maxhp.." HP"
o2.Text="Ammo: "..ammo
o5.Size=o5.Size:lerp(UDim2.new(hp/maxhp,0,1,0),0.05)
end
end)()

coroutine.wrap(function()
while wait(math.random(1,2)) do
if hum.Health < hum.MaxHealth then
hum.Health=hum.Health+hum.Health/math.random(7,10)
if hum.Health > hum.MaxHealth then
hum.Health=hum.MaxHealth
end
end
end
end)()

------------------------------------
local msgs=0
function say(msg,speed,tme)
msgs=msgs+1
local bg=Instance.new("BillboardGui",char)
bg.Enabled=true;
bg.Active=true
bg.Adornee=hed
bg.Size=UDim2.new(1,0,1,0)
bg.StudsOffset=Vector3.new(0,3+msgs,0)
local txt=Instance.new("TextLabel",bg)
txt.Position=UDim2.new(0,0,0,0)
txt.Size=UDim2.new(8,0,1.3,0)
txt.BackgroundTransparency=1
txt.BorderSizePixel=0
txt.Font="Bodoni"
txt.TextScaled=true;
txt.TextWrapped=true;
txt.TextColor3=Color3.new(255,255,255)
txt.TextStrokeTransparency=0
txt.TextStrokeColor3=Color3.new(0,0,0)
txt.Text=""
coroutine.wrap(function()
for i = 1,string.len(msg) do
        print(i)
        if speed>0 then
        wait(speed)
        else
        wait()
        end
        txt.Text=txt.Text..msg:sub(i,i)
end
wait(tme)
txt:Destroy()
bg:Destroy()
msgs=msgs-1
end)()

end
----------chat
p.Chatted:connect(function(m)
say(string.sub(m, 1, string.len(m)),0,3)
end)
------------------------------------
anim="idle"
local sine=0
local add=0
local value=0
local ffing=false
local msgs=0
attack=false
NoAnims=false
----preparing character----
fw(torso, larm, -1.5, 0.5, 0)
larm.Weld.C1 = CFrame.new(0, 0.5, 0)
fw(torso, rarm, 1.5, 0.5, 0)
rarm.Weld.C1 = CFrame.new(0, 0.5, 0)
fw(torso, hed, 0, 1.5, 0)
fw(torso, lleg, -0.5, -1, 0)
lleg.Weld.C1 = CFrame.new(0, 1, 0)
fw(torso, rleg, 0.5, -1, 0)
rleg.Weld.C1 = CFrame.new(0, 1, 0)
fw(root, torso, 0, -1, 0)
torso.Weld.C1 = CFrame.new(0, -1, 0)
--------------rot------------
local r=0
local radd=0.04
coroutine.wrap(function()
while rs:wait() do
r=r+radd
end
end)()
--------construction---------

local la=Instance.new("Part",char)
la.Name="Launcher"
la.CanCollide=false
la.Anchored=false
la.Transparency=0
la.Material="Neon"
la.Size=Vector3.new(1,1,3.6)

local m=Instance.new("SpecialMesh",la)
m.MeshId="rbxassetid://483920452"
m.TextureId="rbxassetid://483920455"
m.Scale=Vector3.new(0.2,0.2,0.27)

local w=Instance.new("Weld",larm)
w.Name="gunweld"
w.Part1=la
w.Part0=larm
w.C0=CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(90),0,0)

local pr=Instance.new("Part",char)
pr.Name="Projectile"
pr.CanCollide=false
pr.Anchored=false
pr.Transparency=0
pr.Material="Neon"
pr.Size=Vector3.new(0.7,2.5,0.6)
pr.BrickColor=BrickColor.new("Really black")

local m2=Instance.new("SpecialMesh",pr)
m2.MeshId="rbxassetid://544709735"
m2.Scale=Vector3.new(0.015,0.015,0.015)

local w2=Instance.new("Weld",pr)
w2.Name="projectileweld"
w2.Part1=pr
w2.Part0=la
w2.C0=CFrame.new(0,0,2)*CFrame.Angles(math.rad(90),0,math.pi)

local aiming=false

-----------attack----------
mouse.KeyDown:connect(function(key)
if key =="f"then
if aiming==false and attack==false and NoAnims==false then
aiming=true
NoAnims=true
elseif aiming==true and NoAnims==true and attack==false then
hum.WalkSpeed=normal
aiming=false
NoAnims=false
rpr()
end
end
end)

coroutine.wrap(function()
while true do
rs:wait()
if aiming==true then
hum.WalkSpeed=crouch
precision=0
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-2,0)*CFrame.Angles(math.rad(0),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-70),0,0),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,0,-0.6)*CFrame.Angles(math.rad(10),0,0),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(0.5,0.5+-math.sin(sine/20)/40,-0.45)*CFrame.Angles(math.rad(110)+-math.sin(sine/20)/40,0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.5+-math.sin(sine/20)/40,-0.1)*CFrame.Angles(math.rad(90)+-math.sin(sine/20)/40,0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),0,0.15),0.25)
rs:wait()
end
end
end)()

mouse.KeyDown:connect(function(key)
if key =="r" and ammo < 1 and aiming==false and attack==false then
attack=true
NoAnims=true
local pr2=pr:Clone()
pr2.Transparency=0
pr2.Parent=char
pr2.Name="reload"
local w3=pr2.projectileweld
w3.Part0=rarm
w3.C0=CFrame.new(0,-1.5,0)
for i = 1, 30 do
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0.1)*CFrame.Angles(math.rad(-20),0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.5,-0.1)*CFrame.Angles(math.rad(90),0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),0,0),0.25)
rs:wait()
end
for i = 1, 30 do
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(0.5,0.5,-0.8)*CFrame.Angles(math.rad(110),0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.5,-0.1)*CFrame.Angles(math.rad(90),0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),0,0),0.25)
rs:wait()
end
pr2:Destroy()
ammo=ammo+1
NoAnims=false
attack=false
end
end)

mouse.KeyDown:connect(function(key)
if key =="r" and ammo < 1 and aiming==true and attack==false then
attack=true
aiming=false
NoAnims=true
local pr2=pr:Clone()
pr2.Transparency=0
pr2.Parent=char
pr2.Name="reload"
local w3=pr2.projectileweld
w3.Part0=rarm
w3.C0=CFrame.new(0,-1.5,0)
for i = 1, 30 do
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-2,0)*CFrame.Angles(math.rad(0),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-70),0,0),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,0,-0.6)*CFrame.Angles(math.rad(10),0,0),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0.1)*CFrame.Angles(math.rad(-20),0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.5,-0.1)*CFrame.Angles(math.rad(90),0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),0,0.15),0.25)
rs:wait()
end
for i = 1, 30 do
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-2,0)*CFrame.Angles(math.rad(0),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-70),0,0),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,0,-0.6)*CFrame.Angles(math.rad(10),0,0),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(0.5,0.5,-0.8)*CFrame.Angles(math.rad(110),0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.5,-0.1)*CFrame.Angles(math.rad(90),0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),0,0),0.25)
rs:wait()
end
pr2:Destroy()
ammo=ammo+1
NoAnims=true
attack=false
aiming=true
end
end)

coroutine.wrap(function()
while rs:wait() do
if ammo == 0 then
pr.Transparency=1
else
pr.Transparency=0
end
end
end)()
mouse.KeyDown:connect(function(key)
if key =="g" and ammo > 0 and aiming==false and attack==false and hum.Health>40 then
attack=true
hum.Health=hum.Health-40
NoAnims=true

for i = 1, 30 do
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),math.pi/2,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0.1)*CFrame.Angles(math.rad(90),0,-80),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.55,0)*CFrame.Angles(math.rad(0),0,-0.15),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(0),80,0),0.25)
rs:wait()
end

local cf=root.CFrame*CFrame.new(0,0,-30).p

for i = 1, 30 do
cf=root.CFrame*CFrame.new(0,0,-30).p
local mb=pr:Clone()
for i,v in pairs(mb:GetChildren()) do
if v:IsA("Weld") then
v:Destroy()
end
end
mb.Parent=char
mb.Anchored=false
mb.Name="minibomb"
mb.CFrame=CFrame.new(cf)*CFrame.new(0,6,0)
mb.CFrame=mb.CFrame*CFrame.new(random[math.random(1,#random)]/10,0,random[math.random(1,#random)]/10)
mb.CFrame=mb.CFrame*CFrame.Angles(math.rad(90),0,0)
mb.CanCollide=false

mb.Touched:connect(function(hit)
local cf2=mb.CFrame
mb:Destroy()
local e=Instance.new("Part",char)
local s=Instance.new("Sound",e)
s.SoundId="rbxassetid://144140670"
s.Volume=1
s.Pitch=1
s:Play()
e.Name="explosion"
e.Shape="Ball"
e.Material="Neon"
e.BrickColor=BrickColor.new("New Yeller")
e.Size=Vector3.new(1,1,1)
e.CanCollide=false
e.Anchored=true
e.CFrame=cf2

coroutine.wrap(function()
for i = 1 ,30 do
e.Size=e.Size:lerp(e.Size+Vector3.new(2,2,2),0.25)
e.Transparency=e.Transparency+1/30
e.CFrame=cf2
rs:wait()
end
end)()

for i,v in pairs(fnt(cf2.p,15))do
if v:FindFirstChild("Humanoid") then
v.Humanoid:TakeDamage(math.random(30,70))
v.Torso.Velocity=v.Torso.CFrame.lookVector*100
end
end
for i,v in pairs(fnp(cf2.p,15))do
v.Velocity=v.CFrame.lookVector*100
local f=Instance.new("Fire",v)
coroutine.wrap(function()
wait(3)
f:Destroy()
end)()
for i,v in pairs(fnt(v.CFrame.p,3))do
if v:FindFirstChild("Humanoid") then
v.Humanoid:TakeDamage(math.random(30,60))
local f2=Instance.new("Fire",v.Torso)
coroutine.wrap(function()
wait(3)
f2:Destroy()
end)()

end
end


end

end)

wait()
end

NoAnims=false
attack=false
end
end)
mouse.KeyDown:connect(function(key)
if key =="e" then
if attack==false and ammo > 0 then
ammo=ammo-1
if aiming==true then
NoAnims=true
aiming=false
attack=true
local cf=la.CFrame*CFrame.new(0,0,5)
local cf2=cf
coroutine.wrap(function()
while rs:wait() do
for i,v in pairs(fnt(cf2.p,rads))do
if v:FindFirstChild("Humanoid") then
v.Humanoid:TakeDamage(math.random(6,9))
end
end
end
end)()
local pr2=pr:Clone()
pr2.Parent=pr.Parent
local s5=Instance.new("Sound",pr2)
s5.SoundId="rbxassetid://135792520"
s5.Volume=1.3
s5.Pitch=1
s5.Looped=true
local st=Instance.new("Sound",la)
st.Volume=3
st.SoundId="rbxassetid://147685821"
st:Play()
s5:Play()
pr2.Transparency=0
pr2.projectileweld:Destroy()
pr2.CFrame=cf
local g=Instance.new("BodyVelocity",pr2)
g.maxForce=Vector3.new(666,666,666)
pr2.CFrame=CFrame.new(cf.p,mouse.Hit.p)
g.velocity=pr2.CFrame.lookVector*65

pr2.CFrame=pr2.CFrame*CFrame.Angles(90,0,math.pi)

pr2.Touched:connect(function(hit)
if hit~=char and hit.Name~="projectile" then
cf=CFrame.new(pr2.CFrame.p)
for i,v in pairs(fnt(pr2.CFrame.p,range))do
if v:FindFirstChild("Humanoid") then
if v.Torso.Anchored==false then
v.Torso.Velocity=v.Torso.CFrame.lookVector*500
end
v.Humanoid:TakeDamage(math.random(mindmg,maxdmg))
end
end
for i,v in pairs(fnp(pr2.CFrame.p,range))do
if v.Anchored==false then
v.Velocity=pr2.CFrame.lookVector*pushforce
end
v.BrickColor=BrickColor.new("Really black")
v.Material="Slate"
local f=Instance.new("Fire",v)
f.Heat=25
f.Size=8
f.Color=BrickColor.new("Lime green").Color
f.SecondaryColor=BrickColor.new("Lime Green").Color
coroutine.wrap(function()
while rs:wait() do
for i,v in pairs(fnt(v.CFrame.p,rads))do
if v:FindFirstChild("Humanoid") then
v.Humanoid:TakeDamage(math.random(2,4))
end
end
end
end)()

end
pr2:Destroy()
local e1=Instance.new("Part",char)
e1.Name="Explode"
e1.Size=Vector3.new(1,1,1)
e1.CanCollide=false
e1.Anchored=true
e1.Material="Neon"
e1.CFrame=cf
e1.BrickColor=BrickColor.new("New Yeller")

local em1=Instance.new("SpecialMesh",e1)
em1.MeshType="Sphere"
em1.Scale=Vector3.new(5,2.5,5)

local e2=e1:Clone()
e2.Parent=e1
local em2=e2.Mesh
em2.Scale=Vector3.new(2.5,6,2.5)

local e3=e1:Clone()
e3.Parent=e1
e3.CFrame=e2.CFrame*CFrame.new(0,e2.Size.Y/2.1,0)
local em3=e3.Mesh
em3.Scale=Vector3.new(2.5,6,2.5)

local e4=e1:Clone()
e4.Parent=e1
e4.CFrame=e3.CFrame*CFrame.new(0,7,0)*CFrame.Angles(math.rad(90),0,0)
local em4=e4.Mesh
em4.MeshId="rbxassetid://3270017"
em4.Scale=Vector3.new(6,6,0.000001)

local e5=e4:Clone()
e5.Parent=e4
e5.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em5=e5.Mesh
em5.Scale=Vector3.new(6,6,6)

local e6=e5:Clone()
e6.Parent=e5
e6.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em6=e6.Mesh
em6.Scale=Vector3.new(6,6,6)

local e7=e5:Clone()
e7.Parent=e5
e7.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em7=e7.Mesh
em7.Scale=Vector3.new(6,6,0.1)

local e8=e5:Clone()
e8.Parent=e5
e8.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em8=e8.Mesh
em8.MeshId="rbxassetid://9982590"
em8.Scale=Vector3.new(3,3,3)

local e9=e5:Clone()
e9.Parent=e5
e9.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
local em9=e9.Mesh
em9.MeshId="rbxassetid://20329976"
em9.Scale=Vector3.new(6,6,6)

local e0=e5:Clone()
e0.Parent=e5
e0.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
local em0=e0.Mesh
em0.MeshId="rbxassetid://20329976"
em0.Scale=Vector3.new(6,6,6)

local e10=e5:Clone()
e10.Parent=e5
e10.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
e10.Shape="Ball"
e10.Size=Vector3.new(30,30,30)

coroutine.wrap(function()
for i = 1, megatons do
em1.Scale=em1.Scale+Vector3.new(1,0.1,1)
em2.Scale=em2.Scale+Vector3.new(0.25,2,0.25)
em3.Scale=em3.Scale+Vector3.new(0.75,0.15,0.75)
em4.Scale=em4.Scale+Vector3.new(0.75,0.75,0)
em5.Scale=em5.Scale+Vector3.new(0.75,0.75,0.75)
em6.Scale=em6.Scale+Vector3.new(1.5,1.5,0)
em7.Scale=em7.Scale+Vector3.new(0.75,0.75,0)
em8.Scale=em8.Scale+Vector3.new(0.15,0.15,0.15)
em9.Scale=em9.Scale+Vector3.new(1,0.15,1)
em0.Scale=em0.Scale+Vector3.new(0.95,0.3,0.95)
e10.Size=e10.Size+Vector3.new(1,1,1)
e3.CFrame=e2.CFrame*CFrame.new(0,em2.Scale.Y/2,0)
e4.CFrame=e3.CFrame*CFrame.new(0,7,0)*CFrame.Angles(math.rad(90),0,0)
e5.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
e6.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
e7.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
e8.CFrame=cf*CFrame.Angles(math.rad(r),r,r)
e9.CFrame=cf*CFrame.Angles(math.rad(0),r,0)
e0.CFrame=cf*CFrame.Angles(math.rad(0),-r,0)
e10.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
e1.Transparency=e1.Transparency+1/megatons
e2.Transparency=e2.Transparency+1/megatons
e3.Transparency=e3.Transparency+1/megatons
e4.Transparency=e4.Transparency+1/megatons
e5.Transparency=e5.Transparency+1/megatons
e6.Transparency=e6.Transparency+1/megatons
e7.Transparency=e7.Transparency+1/megatons
e8.Transparency=e8.Transparency+1/megatons
e9.Transparency=e9.Transparency+1/megatons
e0.Transparency=e0.Transparency+1/megatons
e10.Transparency=e10.Transparency+1/megatons
e1.Color=e1.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e2.Color=e2.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e3.Color=e3.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e4.Color=e4.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e5.Color=e5.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e6.Color=e6.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e7.Color=e7.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e8.Color=e8.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e9.Color=e9.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e0.Color=e0.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e10.Color=e10.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
rs:wait()
end
e1:Destroy()
end)()

end
end)

for i = 1, 30 do
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-2,0)*CFrame.Angles(math.rad(20),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(-90),0,0),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,0,-0.6)*CFrame.Angles(math.rad(30),0,0),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(0.5,0.6,-0.45)*CFrame.Angles(math.rad(140),0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.6,-0.1)*CFrame.Angles(math.rad(120),0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-10),0,0.15),0.25)
rs:wait()
end
NoAnims=false
attack=false
hum.WalkSpeed=normal








elseif aiming==false then







NoAnims=true
attack=true
local cf=la.CFrame*CFrame.new(0,0,5)
local cf2=cf
coroutine.wrap(function()
while rs:wait() do
for i,v in pairs(fnt(cf2.p,rads))do
if v:FindFirstChild("Humanoid") then
v.Humanoid:TakeDamage(math.random(6,9))
end
end
end
end)()
local pr2=pr:Clone()
pr2.Parent=pr.Parent
local s5=Instance.new("Sound",pr2)
s5.SoundId="rbxassetid://135792520"
s5.Volume=1.3
s5.Pitch=1
s5.Looped=true
local st=Instance.new("Sound",la)
st.Volume=3
st.SoundId="rbxassetid://147685821"
st:Play()
s5:Play()
pr2.Transparency=0
pr2.projectileweld:Destroy()
pr2.CFrame=cf
local g=Instance.new("BodyVelocity",pr2)
g.maxForce=Vector3.new(666,666,666)
pr2.CFrame=CFrame.new(cf.p,mouse.Hit.p)
g.velocity=pr2.CFrame.lookVector*65

pr2.CFrame=pr2.CFrame*CFrame.Angles(90,0,math.pi)

pr2.Touched:connect(function(hit)
if hit~=char and hit.Name~="projectile" then
cf=CFrame.new(pr2.CFrame.p)
for i,v in pairs(fnt(pr2.CFrame.p,range))do
if v:FindFirstChild("Humanoid") then
if v.Torso.Anchored==false then
v.Torso.Velocity=v.Torso.CFrame.lookVector*500
end
v.Humanoid:TakeDamage(math.random(mindmg,maxdmg))
end
end
for i,v in pairs(fnp(pr2.CFrame.p,range))do
if v.Anchored==false then
v.Velocity=pr2.CFrame.lookVector*pushforce
end
v.BrickColor=BrickColor.new("Really black")
v.Material="Slate"
local f=Instance.new("Fire",v)
f.Heat=25
f.Size=8
f.Color=BrickColor.new("Lime green").Color
f.SecondaryColor=BrickColor.new("Lime Green").Color
coroutine.wrap(function()
while rs:wait() do
for i,v in pairs(fnt(v.CFrame.p,rads))do
if v:FindFirstChild("Humanoid") then
v.Humanoid:TakeDamage(math.random(2,4))
end
end
end
end)()

end
pr2:Destroy()
local e1=Instance.new("Part",char)
e1.Name="Explode"
e1.Size=Vector3.new(1,1,1)
e1.CanCollide=false
e1.Anchored=true
e1.Material="Neon"
e1.CFrame=cf
e1.BrickColor=BrickColor.new("New Yeller")

local em1=Instance.new("SpecialMesh",e1)
em1.MeshType="Sphere"
em1.Scale=Vector3.new(5,2.5,5)

local e2=e1:Clone()
e2.Parent=e1
local em2=e2.Mesh
em2.Scale=Vector3.new(2.5,6,2.5)

local e3=e1:Clone()
e3.Parent=e1
e3.CFrame=e2.CFrame*CFrame.new(0,e2.Size.Y/2.1,0)
local em3=e3.Mesh
em3.Scale=Vector3.new(2.5,6,2.5)

local e4=e1:Clone()
e4.Parent=e1
e4.CFrame=e3.CFrame*CFrame.new(0,7,0)*CFrame.Angles(math.rad(90),0,0)
local em4=e4.Mesh
em4.MeshId="rbxassetid://3270017"
em4.Scale=Vector3.new(6,6,0.000001)

local e5=e4:Clone()
e5.Parent=e4
e5.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em5=e5.Mesh
em5.Scale=Vector3.new(6,6,6)

local e6=e5:Clone()
e6.Parent=e5
e6.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em6=e6.Mesh
em6.Scale=Vector3.new(6,6,6)

local e7=e5:Clone()
e7.Parent=e5
e7.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em7=e7.Mesh
em7.Scale=Vector3.new(6,6,0.1)

local e8=e5:Clone()
e8.Parent=e5
e8.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
local em8=e8.Mesh
em8.MeshId="rbxassetid://9982590"
em8.Scale=Vector3.new(3,3,3)

local e9=e5:Clone()
e9.Parent=e5
e9.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
local em9=e9.Mesh
em9.MeshId="rbxassetid://20329976"
em9.Scale=Vector3.new(6,6,6)

local e0=e5:Clone()
e0.Parent=e5
e0.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
local em0=e0.Mesh
em0.MeshId="rbxassetid://20329976"
em0.Scale=Vector3.new(6,6,6)

local e10=e5:Clone()
e10.Parent=e5
e10.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
e10.Shape="Ball"
e10.Size=Vector3.new(30,30,30)

coroutine.wrap(function()
for i = 1, megatons do
em1.Scale=em1.Scale+Vector3.new(1,0.1,1)
em2.Scale=em2.Scale+Vector3.new(0.25,2,0.25)
em3.Scale=em3.Scale+Vector3.new(0.75,0.15,0.75)
em4.Scale=em4.Scale+Vector3.new(0.75,0.75,0)
em5.Scale=em5.Scale+Vector3.new(0.75,0.75,0.75)
em6.Scale=em6.Scale+Vector3.new(1.5,1.5,0)
em7.Scale=em7.Scale+Vector3.new(0.75,0.75,0)
em8.Scale=em8.Scale+Vector3.new(0.15,0.15,0.15)
em9.Scale=em9.Scale+Vector3.new(1,0.15,1)
em0.Scale=em0.Scale+Vector3.new(0.95,0.3,0.95)
e10.Size=e10.Size+Vector3.new(1,1,1)
e3.CFrame=e2.CFrame*CFrame.new(0,em2.Scale.Y/2,0)
e4.CFrame=e3.CFrame*CFrame.new(0,7,0)*CFrame.Angles(math.rad(90),0,0)
e5.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
e6.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
e7.CFrame=cf*CFrame.Angles(math.rad(90),0,0)
e8.CFrame=cf*CFrame.Angles(math.rad(r),r,r)
e9.CFrame=cf*CFrame.Angles(math.rad(0),r,0)
e0.CFrame=cf*CFrame.Angles(math.rad(0),-r,0)
e10.CFrame=cf*CFrame.Angles(math.rad(0),0,0)
e1.Transparency=e1.Transparency+1/megatons
e2.Transparency=e2.Transparency+1/megatons
e3.Transparency=e3.Transparency+1/megatons
e4.Transparency=e4.Transparency+1/megatons
e5.Transparency=e5.Transparency+1/megatons
e6.Transparency=e6.Transparency+1/megatons
e7.Transparency=e7.Transparency+1/megatons
e8.Transparency=e8.Transparency+1/megatons
e9.Transparency=e9.Transparency+1/megatons
e0.Transparency=e0.Transparency+1/megatons
e10.Transparency=e10.Transparency+1/megatons
e1.Color=e1.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e2.Color=e2.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e3.Color=e3.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e4.Color=e4.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e5.Color=e5.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e6.Color=e6.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e7.Color=e7.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e8.Color=e8.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e9.Color=e9.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e0.Color=e0.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
e10.Color=e10.Color:lerp(BrickColor.new("Smoky gray").Color,0.05)
rs:wait()
end
e1:Destroy()
end)()

end
end)
torso.CFrame=torso.CFrame*CFrame.new(0,0,3)
for i = 1, 30 do
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1,3)*CFrame.Angles(math.rad(0),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,-0.1)*CFrame.Angles(math.rad(70),0,0.15),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,-0.1)*CFrame.Angles(math.rad(70),0,-0.15),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(0.5,0.6,-0.45)*CFrame.Angles(math.rad(160),0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.6,-0.1)*CFrame.Angles(math.rad(140),0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),0,0),0.25)
rs:wait()
end
NoAnims=false
attack=false
end

end
end
end)

-----animations-----
mouse.KeyDown:connect(function(key)
    if key=="0" then
        char.Humanoid.WalkSpeed = run
		hed.Velocity=hed.CFrame.lookVector*100
    end
end)
mouse.KeyUp:connect(function(key)
    if key=="0" then
        char.Humanoid.WalkSpeed = normal
    end
end)
game:GetService("RunService").RenderStepped:connect(function()
char.Humanoid.FreeFalling:connect(function(f)
if f then
ffing = true
else
ffing = false
end
end)
sine = sine + add
if ffing==true then
anim="jump"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 2 then
anim="idle"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude < 20 then
anim = "walk"
elseif (torso.Velocity*Vector3.new(1, 0, 1)).magnitude > 20 then
anim = "run"
end

if NoAnims==false then
if anim=="idle" then
add=0.5
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1,0)*CFrame.Angles(math.rad(0),0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1,0)*CFrame.Angles(math.rad(0),0,0.15),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0)*CFrame.Angles(math.rad(0),0,-0.15),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(0.5,0.5+-math.sin(sine/14)/20,-0.45)*CFrame.Angles(math.rad(110)+-math.sin(sine/14)/20,0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.5+-math.sin(sine/14)/20,-0.1)*CFrame.Angles(math.rad(90)+-math.sin(sine/14)/20,0,0),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(-5),0,0),0.25)
w.C0=w.C0:lerp(CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(90)+-math.sin(sine/14)/20,0,0),0.25)

elseif anim=="walk" then
add=1
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1+math.sin(sine/3.5)/3,0)*CFrame.Angles(math.rad(-10),0,0),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(0.5,0.5+-math.sin(sine/14)/20,-0.45)*CFrame.Angles(math.rad(110)+-math.sin(sine/14)/20,0,-7),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.35,0.5+-math.sin(sine/14)/20,-0.1)*CFrame.Angles(math.rad(90)+-math.sin(sine/14)/20,0,0),0.25)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1+math.sin(sine/7)/2,-0.15+-math.sin(sine/7)/2)*CFrame.Angles(math.rad(-20)+math.sin(sine/7)/2,0,0.05),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1+-math.sin(sine/7)/2,-0.15+math.sin(sine/7)/2)*CFrame.Angles(math.rad(-20)+-math.sin(sine/7)/2,0,-0.05),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(10),0,0),0.25)
w.C0=w.C0:lerp(CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(90)+-math.sin(sine/14)/20,0,0),0.25)

elseif anim=="run" then
add=1
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,-1+math.sin(sine/2)/3,0)*CFrame.Angles(math.rad(-37),0,0),0.05)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-1+math.sin(sine/4)/2,-0.15+-math.sin(sine/4)/2)*CFrame.Angles(math.rad(-20)+math.sin(sine/4)/2,0,0.05),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1+-math.sin(sine/4)/2,-0.15+math.sin(sine/4)/2)*CFrame.Angles(math.rad(-20)+-math.sin(sine/4)/2,0,-0.05),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0.1)*CFrame.Angles(math.rad(-20)+-math.sin(sine/17)/7,0,-6),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5,0.1)*CFrame.Angles(math.rad(-20)+-math.sin(sine/17)/7,0,6),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,0)*CFrame.Angles(math.rad(20),0,0),0.25)
w.C0=w.C0:lerp(CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(90)+-math.sin(sine/14)/14,0,0),0.25)

elseif anim=="jump" then
add=1
torso.Weld.C0=torso.Weld.C0:lerp(CFrame.new(0,.5,0)*CFrame.Angles(math.rad(0),0,0),0.05)
rleg.Weld.C0=rleg.Weld.C0:lerp(CFrame.new(.5,-0.7,-0.5)*CFrame.Angles(math.rad(10),0,0),0.25)
lleg.Weld.C0=lleg.Weld.C0:lerp(CFrame.new(-.5,-1,0.1)*CFrame.Angles(math.rad(-10),0,0),0.25)
rarm.Weld.C0=rarm.Weld.C0:lerp(CFrame.new(1.5,0.5,0)*CFrame.Angles(math.rad(50),0,90),0.25)
larm.Weld.C0=larm.Weld.C0:lerp(CFrame.new(-1.5,0.5,0)*CFrame.Angles(math.rad(50),0,-90),0.25)
hed.Weld.C0=hed.Weld.C0:lerp(CFrame.new(0,1.5,-0.1)*CFrame.Angles(math.rad(-20),0,0),0.25)
w.C0=w.C0:lerp(CFrame.new(0,0,-0.5)*CFrame.Angles(math.rad(90),0,0),0.25)

end
end
		 
end)