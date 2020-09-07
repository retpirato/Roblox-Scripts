
local wsmode = 1
local jpmode = 1
local gothrough = false
local lotptog = false
local bodyang = nil
local cameratoggle = false
local spintoggle = false
local flytoggle = false
local scg = Instance.new('ScreenGui',game.Players.LocalPlayer.PlayerGui)
scg.ResetOnSpawn = false
local frm = Instance.new('Frame',scg)
frm.BorderSizePixel = 0
frm.BackgroundColor3 = Color3.new(255/255,122/255,122/255)
frm.Size = UDim2.new(0.3,0,0.3,0)
frm.Position = UDim2.new(0.35,0,0.35,0)
frm.Draggable = true


local topl = Instance.new('TextLabel',frm)
topl.BorderSizePixel = 0
topl.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
topl.Size = UDim2.new(0.9,1,0.2,0)
topl.Position = UDim2.new(0,0,0,0)
topl.TextScaled = true
topl.Font = "SourceSansLight"
topl.TextColor3 = Color3.new(1,1,1)
topl.Text = "Newbie's FE Gui V1.1"
topl.Draggable = true

local scrl = Instance.new('ScrollingFrame',frm)
scrl.BorderSizePixel = 0
scrl.BackgroundColor3 = Color3.new(255/255,122/255,122/255)
scrl.Size = UDim2.new(1,0,0.8,0)
scrl.Position = UDim2.new(0,0,0.2,0)
scrl.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
scrl.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"






local plr = Instance.new('TextBox',scrl)
plr.BorderSizePixel = 0
plr.BackgroundColor3 = Color3.new(255/255,150/255,150/255)
plr.Size = UDim2.new(0.425,0,0.1,0)
plr.Position = UDim2.new(0.05,0,0.025,0)
plr.TextScaled = true
plr.Font = "SourceSansLight"
plr.TextColor3 = Color3.new(1,1,1)
plr.Text = "Player Name Here"


local plrsp = Instance.new('TextButton',scrl)
plrsp.BorderSizePixel = 0
plrsp.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
plrsp.Size = UDim2.new(0.425,0,0.1,0)
plrsp.Position = UDim2.new(0.5,0,0.025,0)
plrsp.TextScaled = true
plrsp.Font = "SourceSansLight"
plrsp.TextColor3 = Color3.new(1,1,1)
plrsp.Text = "Spawn Blocks"


local minim = Instance.new('TextButton',frm)
minim.BorderSizePixel = 0
minim.BackgroundColor3 = Color3.new(200/255,50/255,50/255)
minim.Size = UDim2.new(0.1,0,0.2,0)
minim.Position = UDim2.new(0.9,0,0,0)
minim.TextScaled = true
minim.Font = "SourceSansLight"
minim.TextColor3 = Color3.new(1,1,1)
minim.Text = "-"





function sblock()
for i=1,20 do
wait(1)
        for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA'Accoutrement' then
v.Parent=game.Players.LocalPlayer.Character
v.Parent = workspace.Terrain
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA'Accoutrement' then
for ape,hax in pairs(v.Handle:GetChildren()) do
hax:Destroy()
end
wait'.1'
v.Parent=game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt=Instance.new("Model", workspace);
        Instance.new("Part", prt).Name="Torso";
        Instance.new("Part", prt).Name="Head";
        Instance.new("Humanoid", prt).Name="Humanoid";
        game.Players.LocalPlayer.Character=prt

repeat wait(1) until game.Players.LocalPlayer.Character:FindFirstChild'Head'
for lol,dad in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if dad:IsA'Accoutrement' then
dad.Parent = game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt2=Instance.new("Model", workspace);
        Instance.new("Part", prt).Name="Torso";
        Instance.new("Part", prt).Name="Head";
        Instance.new("Humanoid", prt).Name="Humanoid";
        game.Players.LocalPlayer.Character=prt
end
end
plrsp.MouseButton1Click:connect(sblock)





local spin = Instance.new('TextButton',scrl)
spin.BorderSizePixel = 0
spin.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
spin.Size = UDim2.new(0.425,0,0.1,0)
spin.Position = UDim2.new(0.05,0,0.15,0)
spin.TextScaled = true
spin.Font = "SourceSansLight"
spin.TextColor3 = Color3.new(1,1,1)
spin.Text = "Crazy Spin: OFF"

local fly = Instance.new('TextButton',scrl)
fly.BorderSizePixel = 0
fly.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
fly.Size = UDim2.new(0.425,0,0.1,0)
fly.Position = UDim2.new(0.5,0,0.15,0)
fly.TextScaled = true
fly.Font = "SourceSansLight"
fly.TextColor3 = Color3.new(1,1,1)
fly.Text = "Fly: OFF"




local seethr = Instance.new('TextButton',scrl)
seethr.BorderSizePixel = 0
seethr.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
seethr.Size = UDim2.new(0.425,0,0.1,0)
seethr.Position = UDim2.new(0.05,0,0.275,0)
seethr.TextScaled = true
seethr.Font = "SourceSansLight"
seethr.TextColor3 = Color3.new(1,1,1)
seethr.Text = "See-Through: OFF"

local tpto = Instance.new('TextButton',scrl)
tpto.BorderSizePixel = 0
tpto.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
tpto.Size = UDim2.new(0.425,0,0.1,0)
tpto.Position = UDim2.new(0.5,0,0.275,0)
tpto.TextScaled = true
tpto.Font = "SourceSansLight"
tpto.TextColor3 = Color3.new(1,1,1)
tpto.Text = "Teleport To"



local ws = Instance.new('TextButton',scrl)
ws.BorderSizePixel = 0
ws.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
ws.Size = UDim2.new(0.425,0,0.1,0)
ws.Position = UDim2.new(0.05,0,0.4,0)
ws.TextScaled = true
ws.Font = "SourceSansLight"
ws.TextColor3 = Color3.new(1,1,1)
ws.Text = "WalkSpeed: Normal"

local jp = Instance.new('TextButton',scrl)
jp.BorderSizePixel = 0
jp.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
jp.Size = UDim2.new(0.425,0,0.1,0)
jp.Position = UDim2.new(0.5,0,0.4,0)
jp.TextScaled = true
jp.Font = "SourceSansLight"
jp.TextColor3 = Color3.new(1,1,1)
jp.Text = "JumpPower: Normal"





local lotp = Instance.new('TextButton',scrl)
lotp.BorderSizePixel = 0
lotp.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
lotp.Size = UDim2.new(0.425,0,0.1,0)
lotp.Position = UDim2.new(0.05,0,0.525,0)
lotp.TextScaled = true
lotp.Font = "SourceSansLight"
lotp.TextColor3 = Color3.new(1,1,1)
lotp.Text = "Loop-Teleport: OFF"

local sb = Instance.new('TextButton',scrl)
sb.BorderSizePixel = 0
sb.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
sb.Size = UDim2.new(0.425,0,0.1,0)
sb.Position = UDim2.new(0.5,0,0.525,0)
sb.TextScaled = true
sb.Font = "SourceSansLight"
sb.TextColor3 = Color3.new(1,1,1)
sb.Text = "Noclip"


local cr = Instance.new('TextLabel',scrl)
cr.BorderSizePixel = 0
cr.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
cr.Size = UDim2.new(0.875,0,0.225,0)
cr.Position = UDim2.new(0.05,0,0.65,0)
cr.TextScaled = true
cr.Font = "SourceSansLight"
cr.TextColor3 = Color3.new(1,1,1)
cr.Text = "Gui Created by Newbie15. Credit Goes to RGeeneus/Ignoramical for the Fly Script and Natural Modder for leaking the block spam script. but most importantly credits go to the users of this Gui."


local fl = Instance.new('TextLabel',scrl)
fl.BorderSizePixel = 0
fl.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
fl.Size = UDim2.new(0.875,0,0.075,0)
fl.Position = UDim2.new(0.05,0,0.9,0)
fl.TextScaled = true
fl.Font = "SourceSansLight"
fl.TextColor3 = Color3.new(1,1,1)
if game.Workspace.FilteringEnabled == true then
fl.Text = "Filtering is Enabled"
else
fl.Text = "Filtering is Disabled"
end




local gui2 = Instance.new('ScreenGui',game.Players.LocalPlayer.PlayerGui)
gui2.ResetOnSpawn = false


local oc = Instance.new('TextButton',gui2)
oc.BorderSizePixel = 0
oc.BackgroundColor3 = Color3.new(255/255,70/255,70/255)
oc.Size = UDim2.new(0,50,0,50)
oc.Position = UDim2.new(0,0,0,0)
oc.TextScaled = true
oc.Font = "SourceSansLight"
oc.TextColor3 = Color3.new(1,1,1)
oc.Text = "Close"
oc.Draggable = true













-- FLY SCRIPT BY RGEENEUS

-- The following code should be in a local script.
-- Only works on PC, not xbox or mobile. I do not have devices to test on.
-- Call the start fly function AFTER the character exists to fly. The function does not run if there is no character. 

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














function spintogl()
    if spintoggle == true then
        spintoggle = false
        spin.Text = "Crazy Spin: OFF"
    else
        spintoggle = true
        spin.Text = "Crazy Spin: ON"
        local bodyang = Instance.new('BodyAngularVelocity',game.Players.LocalPlayer.Character.PrimaryPart)
        bodyang.AngularVelocity = Vector3.new(90,999,0)
        bodyang.MaxTorque = Vector3.new(60000,100,3000)
        bodyang.P = 5000000
        repeat
            wait(0.001)
        until spintoggle == false
        bodyang:Destroy()
    end
end
spin.MouseButton1Click:connect(spintogl)


function flytogl()
    if flytoggle == true then
        flytoggle = false
        fly.Text = "Fly: OFF"
    else
        flytoggle = true
        fly.Text = "Fly: ON"
        startFly()
        repeat
            wait(0.001)
        until flytoggle == false
        endFly()
    end
end
fly.MouseButton1Click:connect(flytogl)



function opctogl()
    if scg.Enabled == true then
        scg.Enabled = false
        oc.Text = "Open"
    else
        scg.Enabled = true
        oc.Text = "Close"
    end
end
oc.MouseButton1Click:connect(opctogl)
function telep()
    game.Players.LocalPlayer.Character:MoveTo(game.Players:FindFirstChild(plr.Text).Character.PrimaryPart.Position)
end
tpto.MouseButton1Click:connect(telep)


function camtogl()
    if cameratoggle == false then
        cameratoggle = true
        game.Workspace.CurrentCamera.CameraType = "Follow"
        seethr.Text = "See-Through: ON"
    else
        cameratoggle = false
        game.Workspace.CurrentCamera.CameraType = "Custom"
        seethr.Text = "See-Through: OFF"
    end
end
seethr.MouseButton1Click:connect(camtogl)






function wsp()
    if wsmode ~= 5 then
        wsmode = wsmode + 1
    else
        wsmode = 1
    end
    if wsmode == 1 then
        ws.Text = "WalkSpeed: Normal"
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
    end
    if wsmode == 2 then
        ws.Text = "WalkSpeed: Fast"
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 32
    end
    if wsmode == 3 then
        ws.Text = "WalkSpeed: FASTER"
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 70
    end
    if wsmode == 4 then
        ws.Text = "WalkSpeed: EXTREME"
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
    end
    if wsmode == 5 then
        ws.Text = "WalkSpeed: The Speed of Light"
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 4357234785243
    end
end
ws.MouseButton1Click:connect(wsp)





function jpp()
    if jpmode ~= 5 then
        jpmode = jpmode + 1
    else
        jpmode = 1
    end
    if jpmode == 1 then
        jp.Text = "JumpPower: Normal"
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
    end
    if jpmode == 2 then
        jp.Text = "JumpPower: Trampoline"
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 100
    end
    if jpmode == 3 then
        jp.Text = "JumpPower: Big Trampoline"
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
    end
    if jpmode == 4 then
        jp.Text = "JumpPower: Bigger Trampoline"
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 400
    end
    if jpmode == 5 then
        jp.Text = "JumpPower:  Bounce into Heaven"
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 80000
    end
end
jp.MouseButton1Click:connect(jpp)

function spawnblock()
    if gothrough == false then
        gothrough = true
        sb.Text = "Noclip"
        local gc = game.Players.LocalPlayer.Character:GetChildren()
        for i = 1,#gc,1 do
            if (gc[i].ClassName == "Part") or (gc[i].ClassName == "MeshPart") then
            gc[i].CollisionGroupId = 29
            end
        end
        game:service("RunService").Stepped:wait()
    else
        gothrough = false
        sb.Text = "Noclip"
        local gc = game.Players.LocalPlayer.Character:GetChildren()
        for i = 1,#gc,1 do
            if (gc[i].ClassName == "Part") or (gc[i].ClassName == "MeshPart") then
            gc[i].CollisionGroupId = 1
            game:service("RunService").Stepped:wait()
            end
        end
    end
end
sb.MouseButton1Click:connect(spawnblock)
function looptelep()
    if lotptog == false then
        lotptog = true
        lotp.Text = "Loop-Teleport: ON"
        repeat
            game.Players.LocalPlayer.Character:MoveTo(game.Players:FindFirstChild(plr.Text).Character.PrimaryPart.Position)
            wait(0.001)
        until lotptog == false
    else
        lotptog = false
        lotp.Text = "Loop-Teleport: OFF"
    end
end
lotp.MouseButton1Click:connect(looptelep)


function minimi()
    scg.Enabled = false
    oc.Text = "Open"
end
minim.MouseButton1Click:connect(minimi)