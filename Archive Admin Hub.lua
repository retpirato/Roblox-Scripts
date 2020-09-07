-- Objects

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Commands = Instance.new("Frame")
local Noclip = Instance.new("TextButton")
local God = Instance.new("TextButton")
local Fly = Instance.new("TextButton")
local Trump = Instance.new("TextButton")
local Pepe = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local Fire = Instance.new("TextButton")
local Sparkles = Instance.new("TextButton")
local Smoke = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local Porn = Instance.new("TextButton")
local Title = Instance.new("TextLabel")
local Credits = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Com = Instance.new("TextButton")
local Cre = Instance.new("TextButton")
local Login = Instance.new("Frame")
local Login_2 = Instance.new("Frame")
local User = Instance.new("TextBox")
local Pass = Instance.new("TextBox")
local Submit = Instance.new("TextButton")
local TopBar = Instance.new("TextLabel")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui
Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0.176471, 0.180392, 0.188235)
Frame.Draggable = true
Frame.Position = UDim2.new(0.0489642173, 0, 0.440366983, 0)
Frame.Size = UDim2.new(0, 301, 0, 53)
Frame.Visible = false

Commands.Name = "Commands"
Commands.Parent = Frame
Commands.BackgroundColor3 = Color3.new(0.231373, 0.270588, 0.278431)
Commands.BorderColor3 = Color3.new(0.164706, 0.180392, 0.192157)
Commands.Position = UDim2.new(0, 0, 1.01886797, 0)
Commands.Size = UDim2.new(0, 301, 0, 183)

Noclip.Name = "Noclip"
Noclip.Parent = Commands
Noclip.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Noclip.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Noclip.Position = UDim2.new(0.0664451867, 0, 0.0547450744, 0)
Noclip.Size = UDim2.new(0, 71, 0, 28)
Noclip.Font = Enum.Font.SourceSans
Noclip.FontSize = Enum.FontSize.Size14
Noclip.Text = "Noclip"
Noclip.TextColor3 = Color3.new(1, 1, 1)
Noclip.TextSize = 14
Noclip.MouseButton1Down:connect(function()
	hop = Instance.new("HopperBin") 
script.Parent = hop 

local player = game:service("Players").LocalPlayer
local char = player.Character 
local Torsoz = char:findFirstChild("Torso") 
local RA = char:findFirstChild("Right Arm") 
local LA = char:findFirstChild("Left Arm") 
local RL = char:findFirstChild("Right Leg") 
local LL = char:findFirstChild("Left Leg") 
local H = char:findFirstChild("Head") 
local RS = Torsoz:findFirstChild("Right Shoulder") 
local LS = Torsoz:findFirstChild("Left Shoulder") 
local RH = Torsoz:findFirstChild("Right Hip") 
local LH = Torsoz:findFirstChild("Left Hip") 
local N = Torsoz:findFirstChild("Neck") 
local mouse = player:GetMouse() 
local T = Instance.new("TextButton") 
local FadeBox = Instance.new("Frame") 
local FadeText = Instance.new("TextLabel") 
local PrevWS = player.Character.Humanoid.WalkSpeed 
local Sprinting = false 
local QD = false 
local ED = false 
local RHoverPref = 0 
local xfade = false 
local HoverPart 
local TeleLines = {} 
local NoClipCons = {} 
local Options = {} 
local Change = {0, nil, nil}

local P = Instance.new("Part") 
P.Anchored = false 
P.CanCollide = false 
P.Name = "Part" 
P.formFactor = "Custom" 
P.Size = Vector3.new(0.5,0.5,0.5) 
P.Locked = true 
P.TopSurface = 0 
P.BottomSurface = 0 

local Binds = {{"Hover", 122}, {"Rise Hover", 101}, {"Descend Hover", 113}, {"Sprint", 48}, {"Teleport", 116}, {"No Clip", 110}} 
local Preferences = {{"Toggle Hover", true}, {"Hover Move Speed", 2}, {"Toggle Sprint", false}, {"Sprint Multiplier", 2}, {"Toggle No Clip", true}}

function WhatKey(key) 
local Key = key 
if Key == 50 then 
Key = "Left Ctrl" 
elseif Key == 49 then 
Key = "Right Ctrl" 
elseif Key == 32 then 
Key = "Space" 
elseif Key == 52 then 
Key = "Left Alt" 
elseif Key == 45 then 
Key = "Caps Lock" 
elseif Key == 48 then 
Key = "Left Shift" 
elseif Key == 47 then 
Key = "Right Shift" 
elseif Key == 13 then 
Key = "Enter" 
elseif Key == 8 then 
Key = "Backspace" 
elseif Key == 17 then 
Key = "Up Arrow" 
elseif Key == 18 then 
Key = "Down Arrow" 
elseif Key == 20 then 
Key = "Left Arrow" 
elseif Key == 19 then 
Key = "Right Arrow" 
elseif Key == 23 then 
Key = "End" 
elseif Key == 22 then 
Key = "Home" 
elseif Key == 127 then 
Key = "Delete" 
elseif Key == 21 then 
Key = "Insert" 
else 
Key = string.char(Key):upper() 
end 
return Key 
end 

function ChangePref(gui, txt) 
local val 
for i, v in pairs(Preferences) do 
if v[1] == txt then 
val = v 
break 
end 
end 
if val ~= nil then 
if gui.Type.Value == "boolean" then 
val[2] = not val[2] 
gui.Text = tostring(val[2]) 
elseif gui.Type.Value == "number" then 
Change = {2, val, gui} 
local g = Instance.new("ScreenGui", player.PlayerGui) 
g.Name = "EnterANum" 
local tb = Instance.new("TextButton", g) 
tb.Visible = false 
tb.Size = UDim2.new(1.1,0,1.1,0) 
tb.Position = UDim2.new(-0.05,0,-0.05,0) 
tb.BackgroundColor3 = Color3.new(0,0,0) 
tb.BackgroundTransparency = 0.15 
tb.AutoButtonColor = false 
local f = Instance.new("Frame", g) 
f.Visible = false 
f.Size = UDim2.new(0.3,0,0.22,0) 
f.Position = UDim2.new(0.35,0,0.39,0) 
f.BackgroundColor3 = Color3.new(0,0,0) 
f.BorderColor3 = Color3.new(0,0.4,0.7) 
local tl = Instance.new("TextLabel", f) 
tl.Text = [[Enter a number for 
]] .. txt:lower() .. " preference" 
tl.TextColor3 = Color3.new(0.4,0.6,0.8) 
tl.TextStrokeTransparency = 0 
tl.TextStrokeColor3 = Color3.new(tl.TextColor3.r-0.3,tl.TextColor3.g-0.3,tl.TextColor3.b-0.3) 
tl.Font = "ArialBold" 
tl.FontSize = 7 
tl.Size = UDim2.new(1,0,0.5,0) 
tl.BackgroundTransparency = 1 
tl.TextWrap = true 
local b = Instance.new("TextBox", f) 
b.BackgroundColor3 = Color3.new(0,0,0) 
b.TextColor3 = Color3.new(0.4,0.6,0.8) 
b.Size = UDim2.new(0.6,0,0.25,0) 
b.Position = UDim2.new(0.2,0,0.575,0) 
b.Font = "ArialBold" 
b.FontSize = 6 
b.BorderColor3 = Color3.new(0,0.4,0.7) 
b.Text = "- - - - -"
local thecon = b.FocusLost:connect(function() 
local num = tonumber(b.Text) 
if num == nil then 
b.Text = "That was not a number" 
else 
val[2] = num 
gui.Text = val[2] 
if val[1] == "Sprint Multiplier" then 
gui.Text = "x"..val[2] 
end 
for i, v in pairs(player.PlayerGui:children()) do 
if v.Name == "EnterANum" and v.className == "ScreenGui" then 
v:remove() 
end 
end 
gui.TextColor3 = Color3.new(0.5,0.6,0.8) 
gui.TextStrokeColor3 = Color3.new(Change[3].TextColor3.r-0.3,Change[3].TextColor3.g-0.3,Change[3].TextColor3.b-0.3) 
Change = {0, nil, nil} 
thecon:disconnect() 
end 
end) 

wait(0.02) 
tb.Visible = true 
f.Visible = true 
end 
end 
end 

function ChangeBind(gui, txt) 
if Change[1] == 0 then 
local val 
for i, v in pairs(Binds) do 
if v[1] == txt then 
val = v 
break 
end 
end 
if val ~= nil then 
Change = {1, val, gui} 
local g = Instance.new("ScreenGui", player.PlayerGui) 
g.Name = "EnterAKey" 
local tb = Instance.new("TextButton") 
tb.Size = UDim2.new(1.1,0,1.1,0) 
tb.Position = UDim2.new(-0.05,0,-0.05,0) 
tb.BackgroundColor3 = Color3.new(0,0,0) 
tb.BackgroundTransparency = 0.15 
tb.Text = "Press a key for the " .. txt:lower() .. " action" 
tb.TextColor3 = Color3.new(0.4,0.6,0.8) 
tb.TextStrokeTransparency = 0 
tb.TextStrokeColor3 = Color3.new(tb.TextColor3.r-0.3,tb.TextColor3.g-0.3,tb.TextColor3.b-0.3) 
tb.Font = "ArialBold" 
tb.FontSize = 7 
tb.AutoButtonColor = false 
wait(0.025) 
tb.Parent = g 
end 
end 
end 

function ConfigGui() 
for i, v in pairs(player.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "ConfigGui" then 
v:remove()
end 
end 
local g = Instance.new("ScreenGui", player.PlayerGui) 
g.Name = "ConfigGui" 


----- border ----- 

local fr = Instance.new("Frame", g)
fr.Visible = false 
fr.Position = UDim2.new(0.3,0,0.3,0) 
fr.Size = UDim2.new(0.4,0,0.4,0) 
fr.BackgroundColor3 = Color3.new(0,0,0) 
fr.BorderColor3 = Color3.new(0,0.4,0.7) 
-- fr.AutoButtonColor = false 
-- fr.Draggable = true 

local e = Instance.new("ImageLabel", fr) 
e.Size = UDim2.new(0.12,0,0.12,0) 
e.BackgroundColor3 = Color3.new(0,0,0) 
e.BorderColor3 = Color3.new(0,0.4,0.7) 
e.ZIndex = 10 
local esx = (e.Size.X.Scale /2) - 0.01
local esy = (e.Size.Y.Scale /2) - 0.01

e.Position = UDim2.new(-esx,0,-esy,0) 

local e = e:Clone() 
e.Parent = fr 
e.Position = UDim2.new(1-(esx*1.25),0,1-(esy*1.25),0) 
local e = e:Clone() 
e.Parent = fr 
e.Position = UDim2.new(-esx,0,1-(esy*1.25),0) 

local e = Instance.new("ImageLabel", fr) 
e.Size = UDim2.new(0.12,0,0.12,0) 
e.BackgroundColor3 = Color3.new(0,0,0) 
e.BorderColor3 = Color3.new(0,0.4,0.7) 
e.ZIndex = 10 
e.Position = UDim2.new(1-(esx*1.25),0,-esy,0) 

local t = Instance.new("TextButton", e) 
t.Position = UDim2.new(0.2,0,0,0)
t.Size = UDim2.new(0.6,0,0.8,0) 
t.BackgroundTransparency = 1
t.TextColor3 = Color3.new(0.6,0,0) 
t.Font = "ArialBold" 
t.Text = "x" 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(0.4,0,0) 
t.FontSize = 8 
t.ZIndex = 10 
t.MouseEnter:connect(function() xfade = true end) 
t.MouseLeave:connect(function() xfade = false end) 
t.MouseButton1Up:connect(function() 
for i, v in pairs(player.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "ConfigGui" then 
v:remove()
end 
end 
end) 
T = t 

local f = Instance.new("Frame", fr) 
f.Position = UDim2.new(0.02,0,0.02,0) 
f.Size = UDim2.new(0.96,0,0.96,0) 
f.BackgroundColor3 = Color3.new(0,0,0) 
f.BorderColor3 = Color3.new(0,0.4,0.7) 

local t = Instance.new("TextLabel", f) 
t.Position = UDim2.new(0.5,0,0.08,0) 
t.Text = "Configuration" 
t.TextColor3 = Color3.new(0.4,0.6,0.8) 
t.Font = "ArialBold" 
t.FontSize = 8 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 

local t = Instance.new("TextLabel", f) 
t.Position = UDim2.new(0.5,0,0.95,0) 
t.Text = [[Say "-config-" to open this menu]] 
t.TextColor3 = Color3.new(0.5,0.5,0.5) 
t.Font = "ArialBold" 
t.FontSize = 5 
t.Transparency = 0.7 
FadeText = t 

local f = Instance.new("Frame", f) 
f.Position = UDim2.new(0.05,0,0.2,0) 
f.Size = UDim2.new(0.9,0,0.7,0) 
f.Transparency = 1 
local b = Instance.new("Frame", f) 
b.Position = UDim2.new(0.4925,0,-0.02,0) 
b.Size = UDim2.new(0.01,0,1.04,0) 
b.BackgroundColor3 = Color3.new(0,0.1,0.175) 
b.BorderColor3 = Color3.new(0,0.2,0.35) 
b.Transparency = 0.4

local fa = Instance.new("Frame", f) 
fa.Position = UDim2.new(0.505,0,0,0) 
fa.Size = UDim2.new(0.495,0,1,0) 
fa.BackgroundColor3 = Color3.new(0,0,0) 
fa.BorderSizePixel = 0 
fa.Transparency = 0 
fa.ZIndex = 6 
FadeBox = fa 

local kbw = Instance.new("Frame", f) 
kbw.Name = "Menu" 
kbw.Position = UDim2.new(0.5,0,0,0) 
kbw.Size = UDim2.new(0.5,0,1,0) 
kbw.Transparency = 1 

local t = Instance.new("TextLabel", kbw) 
t.Position = UDim2.new(0.01,0,0.05,0) 
t.Size = UDim2.new(0.55,0,0.15,0) 
t.Text = "Action" 
t.TextColor3 = Color3.new(0.4,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 6 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
local t = t:Clone() 
t.Parent = kbw 
t.Position = UDim2.new(0.56,0,0.05,0) 
t.Size = UDim2.new(0.43,0,0.15,0) 
t.Text = "Key binded" 

for i, v in pairs(Binds) do 
local tl = Instance.new("TextLabel", kbw) 
tl.Position = UDim2.new(0.01,0,0.2+(0.1*(i-1)),0) 
tl.Size = UDim2.new(0.55,0,0.1,0) 
tl.Text = v[1] 
tl.TextColor3 = Color3.new(0.5,0.6,0.8) 
tl.BackgroundTransparency = 1 
tl.Font = "ArialBold" 
tl.FontSize = 5 
tl.TextStrokeTransparency = 0 
tl.TextStrokeColor3 = Color3.new(tl.TextColor3.r-0.3,tl.TextColor3.g-0.3,tl.TextColor3.b-0.3) 
local bar = Instance.new("Frame", kbw) 
bar.Position = UDim2.new(0.04,0,0.2+(0.1*(i-1)),-1) 
bar.Size = UDim2.new(0.92,0,0,2) 
bar.BackgroundColor3 = Color3.new(0,0.15,0.22) 
bar.BorderSizePixel = 0 
local t = Instance.new("TextButton", kbw) 
t.Position = UDim2.new(0.56,0,0.2+(0.1*(i-1)),0) 
t.Size = UDim2.new(0.43,0,0.1,0) 
t.Text = WhatKey(v[2]) 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 5 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
t.MouseEnter:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.8,0.6,0.5) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
end 
end) 
t.MouseLeave:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3)
end 
end) 
t.MouseButton1Up:connect(function() 
if Change[1] == 0 then 
ChangeBind(t, tl.Text) 
end 
end) 
end 

local pw = Instance.new("Frame", f) 
pw.Name = "Menu" 
pw.Position = UDim2.new(0.5,0,0,0) 
pw.Size = UDim2.new(0.5,0,1,0) 
pw.Transparency = 1 
pw.Visible = false 

local t = Instance.new("TextLabel", pw) 
t.Position = UDim2.new(0.01,0,0.05,0) 
t.Size = UDim2.new(0.55,0,0.15,0) 
t.Text = "Action" 
t.TextColor3 = Color3.new(0.4,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 6 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
local t = t:Clone() 
t.Parent = pw 
t.Position = UDim2.new(0.56,0,0.05,0) 
t.Size = UDim2.new(0.43,0,0.15,0) 
t.Text = "Preference" 

for i, v in pairs(Preferences) do 
local tl = Instance.new("TextLabel", pw) 
tl.Position = UDim2.new(0.01,0,0.2+(0.1*(i-1)),0) 
tl.Size = UDim2.new(0.55,0,0.1,0) 
tl.Text = v[1] 
tl.TextColor3 = Color3.new(0.5,0.6,0.8) 
tl.BackgroundTransparency = 1 
tl.Font = "ArialBold" 
tl.FontSize = 5 
tl.TextStrokeTransparency = 0 
tl.TextStrokeColor3 = Color3.new(tl.TextColor3.r-0.3,tl.TextColor3.g-0.3,tl.TextColor3.b-0.3) 
local bar = Instance.new("Frame", pw) 
bar.Position = UDim2.new(0.04,0,0.2+(0.1*(i-1)),-1) 
bar.Size = UDim2.new(0.92,0,0,2) 
bar.BackgroundColor3 = Color3.new(0,0.15,0.22) 
bar.BorderSizePixel = 0 
local t = Instance.new("TextButton", pw) 
t.Position = UDim2.new(0.56,0,0.2+(0.1*(i-1)),0) 
t.Size = UDim2.new(0.43,0,0.1,0) 
t.Text = tostring(v[2]) 
if v[1] == "Sprint Multiplier" then 
t.Text = "x"..tostring(v[2]) 
end 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.BackgroundTransparency = 1 
t.Font = "ArialBold" 
t.FontSize = 5 
t.TextStrokeTransparency = 0 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
t.MouseEnter:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.8,0.6,0.5) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
end 
end) 
t.MouseLeave:connect(function() 
if Change[1] == 0 then 
t.TextColor3 = Color3.new(0.5,0.6,0.8) 
t.TextStrokeColor3 = Color3.new(t.TextColor3.r-0.3,t.TextColor3.g-0.3,t.TextColor3.b-0.3) 
end 
end) 
t.MouseButton1Up:connect(function() 
ChangePref(t, tl.Text) 
end) 
local val = Instance.new("StringValue", t)
val.Name = "Type" 
val.Value = tostring(type(v[2])) 
end 

Options = {} 
for i = 0, 1 do 
local o = Instance.new("TextButton", f) 
o.Size = UDim2.new(0.47,0,0.185,0) 
o.Position = UDim2.new(0,0,0.2*i,0) 
o.FontSize = 6 
o.Font = "ArialBold" 
o.TextXAlignment = "Left" 
o.BackgroundColor3 = Color3.new(0.07,0.07,0.07) 
o.TextColor3 = Color3.new(0.5,0.5,0.5) 
o.BorderSizePixel = 0 
o.AutoButtonColor = false 
if i == 0 then 
o.Text = "   Keybindings" 
o.Selected = true 
elseif i == 1 then 
o.Text = "   Preferences" 
end 
o.MouseEnter:connect(function() 
o.TextWrap = true 
end) 
o.MouseLeave:connect(function() 
o.TextWrap = false 
end) 
o.MouseButton1Up:connect(function() 
if o.Selected == false then 
for _, v in pairs(f:children()) do 
if v.Name == "Menu" then 
v.Visible = false 
end 
end 
if i == 0 then 
kbw.Visible = true 
elseif i == 1 then 
pw.Visible = true 
end 
FadeBox.Transparency = 0 
end 
for _, v in pairs(Options) do 
v[1].Selected = false 
end 
o.Selected = true 
end) 
if i == 0 then 
table.insert(Options, {o, 0.8, 0.075}) 
else 
table.insert(Options, {o, 0.8, 0}) 
end 
end 

wait(0.01) 
fr.Visible = true 

end 

ConfigGui() 

function KD(key) 
if Change[1] == 1 and string.byte(key) ~= 27 then 
Change[3].Text = WhatKey(string.byte(key)) 
Change[3].TextColor3 = Color3.new(0.5,0.6,0.8) 
Change[3].TextStrokeColor3 = Color3.new(Change[3].TextColor3.r-0.3,Change[3].TextColor3.g-0.3,Change[3].TextColor3.b-0.3) 
Change[2][2] = string.byte(key) 
Change = {0, nil, nil} 
for i, v in pairs(player.PlayerGui:children()) do 
if v.className == "ScreenGui" and v.Name == "EnterAKey" then 
v:remove() 
end 
end 
elseif Change[1] == 0 then 
local Key = string.byte(key) 
local func 
for i, v in pairs(Binds) do 
if v[2] == Key then 
func = v[1] 
break 
end 
end 

if func == "Teleport" then 
if mouse.Target ~= nil then 
local torsoz = player.Character.Torso.Position 
local thepos = mouse.Hit.p + Vector3.new(0,3,0) 
local thepos2 = CFrame.new(thepos, Vector3.new(torsoz.x, thepos.y, torsoz.z)) 
player.Character.Torso.CFrame = thepos2 * CFrame.Angles(0,math.pi,0) 
local l = P:Clone() 
l.Parent = player.Character.Torso 
l.BrickColor = BrickColor.new("Deep blue") 
l.Transparency = 0.2 
l.Anchored = true 
l.CFrame = CFrame.new((torsoz + thepos)/2, torsoz) 
local mesh = Instance.new("SpecialMesh", l) 
mesh.MeshType = "Brick" 
mesh.Name = "Mesh" 
mesh.Scale = Vector3.new(1.2,2.6,(torsoz - thepos).magnitude*2) 
table.insert(TeleLines, l) 
local l = l:Clone() 
l.Parent = player.Character.Torso 
l.Mesh.Scale = l.Mesh.Scale - Vector3.new(0.3,0.75,0.75) 
l.BrickColor = BrickColor.new("Cyan") 
table.insert(TeleLines, l) 
end 

elseif func == "Hover" then 
if player.Character.Torso:findFirstChild("HotkeyHoverBP") ~= nil then 
for i, v in pairs(player.Character.Torso:children()) do 
if v.className == "BodyPosition" and v.Name == "HotkeyHoverBP" then 
v:remove() 
end 
end 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
else 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
if player.Character:findFirstChild("Torso") ~= nil then 
local p = P:Clone() 
p.Name = "HoverPart" 
p.Parent = workspace.CurrentCamera
p.Transparency = 1 
p.Size = Vector3.new(8,0.5,8) 
HoverPart = p 
local bp = Instance.new("BodyPosition", player.Character:findFirstChild("Torso")) 
bp.Name = "HotkeyHoverBP" 
bp.maxForce = Vector3.new(math.huge,math.huge,math.huge) 
bp.position = player.Character.Torso.Position 
bp.P = 10000 
wait(0.028) 
bp.maxForce = Vector3.new(0,math.huge,0) 
end 
end 
for i, v in pairs(Preferences) do 
if v[1] == "Hover Move Speed" then 
RHoverPref = v[2] 
end 
end 
ED = true 
for i, v in pairs(Preferences) do 
if v[1] == "Hover Move Speed" then 
RHoverPref = v[2] 
end 
end 
QD = true 

elseif func == "No Clip" then 
if #NoClipCons == 0 then 
local con = game:service("RunService").Stepped:connect(function() 
pcall(function() player.Character.Torso.CanCollide = false end) 
pcall(function() player.Character.Head.CanCollide = false end) 
end) 
table.insert(NoClipCons, con) 
else 
for i, v in pairs(NoClipCons) do 
v:disconnect() 
table.remove(NoClipCons, i) 
end 
end 

end 

end 
end 

function KU(key) 
local HoverPref 
local SprintPref 
local NoClipPref 
for i, v in pairs(Preferences) do 
if v[1] == "Toggle Hover" then 
HoverPref = v[2] 
elseif v[1] == "Toggle Sprint" then 
SprintPref = v[2] 
elseif v[1] == "Hover Move Speed" then 
RHoverPref = v[2] 
elseif v[1] == "Toggle No Clip" then 
NoClipPref = v[2] 
end 
end 
local Key = string.byte(key) 
local func 
for i, v in pairs(Binds) do 
if v[2] == Key then 
func = v[1] 
break 
end 
end 

if func == "Hover" then 
if HoverPref == false then 
for i, v in pairs(player.Character.Torso:children()) do 
if v.className == "BodyPosition" and v.Name == "HotkeyHoverBP" then 
v:remove() 
end 
end 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
end 

elseif func == "Sprint" then 
if Sprinting == true and SprintPref == false then 
player.Character.Humanoid.WalkSpeed = PrevWS 
Sprinting = false 
end 

elseif func == "Rise Hover" then 
ED = false 
elseif func == "Descend Hover" then 
QD = false 

elseif func == "No Clip" then 
if NoClipPref == false then 
for i, v in pairs(NoClipCons) do 
v:disconnect() 
table.remove(NoClipCons, i) 
end 
end 

end 

end 

function Chat(msg) 
if msg == "-config-" then 
ConfigGui() 
end 
end 

mouse.KeyDown:connect(KD) 
mouse.KeyUp:connect(KU) 
player.Chatted:connect(Chat) 

local fadenum = 0.5 
while true do 
if xfade == true then 
fadenum = fadenum + 0.045 
if fadenum > 1 then 
fadenum = 1 
end 
T.TextColor3 = Color3.new(0,fadenum*0.2,fadenum) 
T.TextStrokeColor3 = Color3.new(0,fadenum*0.2,fadenum*0.45) 
else 
fadenum = fadenum - 0.045 
if fadenum < 0.5 then 
fadenum = 0.5 
end 
T.TextColor3 = Color3.new(0,fadenum*0.2,fadenum) 
T.TextStrokeColor3 = Color3.new(0,fadenum*0.2,fadenum*0.45) 
end 

for i, v in pairs(Options) do 
if v[1].TextWrap == true or v[1].Selected == true then 
v[2] = v[2] + 0.028 
v[3] = v[3] + 0.0056 
if v[2] > 0.8 then 
v[2] = 0.8 
end 
if v[3] > 0.06 then 
v[3] = 0.06 
end 
v[1].TextColor3 = Color3.new(v[2]-0.2,v[2],v[2]+0.2) 
v[1].BackgroundColor3 = Color3.new(v[3]+0.02,v[3]+0.04,v[3]+0.07) 
v[1].Size = UDim2.new(0.38+(v[3]*1.4),0,0.185,0) 
if v[1].Selected == true then 
v[1].Size = UDim2.new(0.38+(v[3]*1.4),0,0.185,0) 
v[1].BackgroundColor3 = Color3.new(v[3]+0.02,v[3]+0.06,v[3]+0.15) 
end 
else 
v[2] = v[2] - 0.028 
v[3] = v[3] - 0.0056 
if v[2] < 0.5 then 
v[2] = 0.5
end 
if v[3] < 0 then 
v[3] = 0 
end 
v[1].TextColor3 = Color3.new(v[2]-0.2,v[2],v[2]+0.2) 
v[1].BackgroundColor3 = Color3.new(v[3]+0.02,v[3]+0.04,v[3]+0.07) 
v[1].Size = UDim2.new(0.38+(v[3]*1.4),0,0.185,0) 
end 
end 

for i, v in pairs(TeleLines) do 
v.Transparency = v.Transparency + 0.05 
if v.Transparency > 0.9 then 
v:remove() 
table.remove(TeleLines, i) 
end 
end 

if FadeBox.Transparency < 1 then 
FadeBox.Transparency = FadeBox.Transparency + 0.05 
else 
FadeBox.Transparency = 1 
end 

if FadeText.BorderSizePixel == 0 then 
FadeText.Transparency = FadeText.Transparency + 0.0125 
if FadeText.Transparency > 0.76 then 
FadeText.BorderSizePixel = 1 
end 
else 
FadeText.Transparency = FadeText.Transparency - 0.0125 
if FadeText.Transparency < 0.38 then 
FadeText.BorderSizePixel = 0 
end 
end 

local tors = player.Character:findFirstChild("Torso") 
if QD == true or ED == true then 
if tors ~= nil then 
if tors:findFirstChild("HotkeyHoverBP") ~= nil then 
if QD == true then 
tors:findFirstChild("HotkeyHoverBP").position = tors.Position - Vector3.new(0,RHoverPref,0) 
end 
if ED == true then 
tors:findFirstChild("HotkeyHoverBP").position = tors.Position + Vector3.new(0,RHoverPref,0) 
end 
end 
end 
end 

if tors ~= nil then 
if HoverPart ~= nil and tors:findFirstChild("HotkeyHoverBP") ~= nil then 
HoverPart.Size = Vector3.new(3.5,0.5,3.5) 
HoverPart.Anchored = true 
HoverPart.CanCollide = true 
HoverPart.CFrame = CFrame.new(tors.Position-Vector3.new(0,3.5,0)) 
elseif HoverPart ~= nil and tors:findFirstChild("HotkeyHoverBP") == nil then 
for i, v in pairs(workspace.CurrentCamera:children()) do 
if v.className == "Part" and v.Name == "HoverPart" then 
v:remove() 
end 
end 
HoverPart = nil 
end 
end 


wait(0.025) 
end 
end)

God.Name = "God"
God.Parent = Commands
God.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
God.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
God.Position = UDim2.new(0.0664451867, 0, 0.306562394, 0)
God.Size = UDim2.new(0, 71, 0, 28)
God.Font = Enum.Font.SourceSans
God.FontSize = Enum.FontSize.Size14
God.Text = "God"
God.TextColor3 = Color3.new(1, 1, 1)
God.TextSize = 14
God.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 999999999
	wait(0.1)
	game.Players.LocalPlayer.Character.Humanoid.Health = 999999999
end)

Fly.Name = "Fly"
Fly.Parent = Commands
Fly.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Fly.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Fly.Position = UDim2.new(0.0664451867, 0, 0.547400594, 0)
Fly.Size = UDim2.new(0, 71, 0, 28)
Fly.Font = Enum.Font.SourceSans
Fly.FontSize = Enum.FontSize.Size14
Fly.Text = "Fly"
Fly.TextColor3 = Color3.new(1, 1, 1)
Fly.TextSize = 14
Fly.MouseButton1Down:connect(function()
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

Trump.Name = "Trump"
Trump.Parent = Commands
Trump.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Trump.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Trump.Position = UDim2.new(0.0664451867, 0, 0.793803573, 0)
Trump.Size = UDim2.new(0, 71, 0, 28)
Trump.Font = Enum.Font.SourceSans
Trump.FontSize = Enum.FontSize.Size14
Trump.Text = "Trumpify"
Trump.TextColor3 = Color3.new(1, 1, 1)
Trump.TextSize = 14
trum = Instance.new("ParticleEmitter")
Trump.MouseButton1Down:connect(function()
	trum.Texture = "http://www.roblox.com/asset/?id=526577438"
	trum.Parent = game.Players.LocalPlayer.Character.Torso
end)

Pepe.Name = "Pepe"
Pepe.Parent = Commands
Pepe.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Pepe.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Pepe.Position = UDim2.new(0.382059813, 0, 0.0547450744, 0)
Pepe.Size = UDim2.new(0, 71, 0, 28)
Pepe.Font = Enum.Font.SourceSans
Pepe.FontSize = Enum.FontSize.Size14
Pepe.Text = "Pepefy"
Pepe.TextColor3 = Color3.new(1, 1, 1)
Pepe.TextSize = 14
parti = Instance.new("ParticleEmitter")
Pepe.MouseButton1Down:connect(function()
	parti.Texture = "http://www.roblox.com/asset/?id=783009532"
	parti.Parent = game.Players.LocalPlayer.Character.Torso
end)

Speed.Name = "Speed"
Speed.Parent = Commands
Speed.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Speed.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Speed.Position = UDim2.new(0.382059813, 0, 0.306562394, 0)
Speed.Size = UDim2.new(0, 71, 0, 28)
Speed.Font = Enum.Font.SourceSans
Speed.FontSize = Enum.FontSize.Size14
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.TextSize = 14
Speed.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 160
end)

Jump.Name = "Jump"
Jump.Parent = Commands
Jump.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Jump.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Jump.Position = UDim2.new(0.382059813, 0, 0.547450721, 0)
Jump.Size = UDim2.new(0, 71, 0, 28)
Jump.Font = Enum.Font.SourceSans
Jump.FontSize = Enum.FontSize.Size14
Jump.Text = "Jump"
Jump.TextColor3 = Color3.new(1, 1, 1)
Jump.TextSize = 14
Jump.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 160
end)

Fire.Name = "Fire"
Fire.Parent = Commands
Fire.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Fire.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Fire.Position = UDim2.new(0.382059813, 0, 0.793803573, 0)
Fire.Size = UDim2.new(0, 71, 0, 28)
Fire.Font = Enum.Font.SourceSans
Fire.FontSize = Enum.FontSize.Size14
Fire.Text = "Fire"
Fire.TextColor3 = Color3.new(1, 1, 1)
Fire.TextSize = 14
fir = Instance.new("Fire")
Fire.MouseButton1Down:connect(function()
	fir.Parent = game.Players.LocalPlayer.Character.Torso
end)

Sparkles.Name = "Sparkles"
Sparkles.Parent = Commands
Sparkles.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Sparkles.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Sparkles.Position = UDim2.new(0.699335515, 0, 0.0547450744, 0)
Sparkles.Size = UDim2.new(0, 71, 0, 28)
Sparkles.Font = Enum.Font.SourceSans
Sparkles.FontSize = Enum.FontSize.Size14
Sparkles.Text = "Sparkles"
Sparkles.TextColor3 = Color3.new(1, 1, 1)
Sparkles.TextSize = 14
spark = Instance.new("Sparkles")
Sparkles.MouseButton1Down:connect(function()
	spark.Parent = game.Players.LocalPlayer.Character.Torso
end)

Smoke.Name = "Smoke"
Smoke.Parent = Commands
Smoke.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Smoke.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Smoke.Position = UDim2.new(0.700996697, 0, 0.306562394, 0)
Smoke.Size = UDim2.new(0, 71, 0, 28)
Smoke.Font = Enum.Font.SourceSans
Smoke.FontSize = Enum.FontSize.Size14
Smoke.Text = "Smoke"
Smoke.TextColor3 = Color3.new(1, 1, 1)
Smoke.TextSize = 14
smok = Instance.new("Smoke")
Smoke.MouseButton1Down:connect(function()
	smok.Parent = game.Players.LocalPlayer.Character.Torso
end)

Btools.Name = "Btools"
Btools.Parent = Commands
Btools.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Btools.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Btools.Position = UDim2.new(0.700996697, 0, 0.547450721, 0)
Btools.Size = UDim2.new(0, 71, 0, 28)
Btools.Font = Enum.Font.SourceSans
Btools.FontSize = Enum.FontSize.Size14
Btools.Text = "Btools"
Btools.TextColor3 = Color3.new(1, 1, 1)
Btools.TextSize = 14
Btools.MouseButton1Down:connect(function()
	bin1 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	bin2 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
	bin3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)	
	bin1.BinType = "Hammer"
	bin2.BinType = "GameTool"
	bin3.BinType = "Clone" 
end)

Porn.Name = "Porn"
Porn.Parent = Commands
Porn.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Porn.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Porn.Position = UDim2.new(0.700996637, 0, 0.793803573, 0)
Porn.Size = UDim2.new(0, 71, 0, 28)
Porn.Font = Enum.Font.SourceSans
Porn.FontSize = Enum.FontSize.Size14
Porn.Text = "Porn"
Porn.TextColor3 = Color3.new(1, 1, 1)
Porn.TextSize = 14
Porn.MouseButton1Down:connect(function()
Values = {{0.694,0.592,0.608},{0.694,0.592,0.608},{0.686,0.58,0.596},{0.698,0.596,0.608},{0.69,0.584,0.6},{0.69,0.58,0.596},{0.69,0.584,0.6},{0.702,0.6,0.612},{0.714,0.616,0.627},{0.714,0.62,0.631},{0.714,0.612,0.624},{0.718,0.624,0.635},{0.729,0.635,0.647},{0.729,0.631,0.643},{0.725,0.631,0.639},{0.722,0.624,0.635},{0.706,0.608,0.62},{0.694,0.592,0.604},{0.702,0.6,0.616},{0.718,0.624,0.635},{0.749,0.659,0.671},{0.749,0.663,0.671},{0.737,0.643,0.655},{0.749,0.663,0.675},{0.757,0.663,0.675},{0.753,0.667,0.675},{0.757,0.663,0.675},{0.769,0.675,0.686},{0.788,0.698,0.71},{0.796,0.702,0.714},{0.804,0.718,0.729},{0.812,0.718,0.729},{0.8,0.698,0.706},{0.753,0.533,0.42},{0.769,0.533,0.4},{0.784,0.553,0.416},{0.792,0.549,0.412},{0.8,0.557,0.42},{0.796,0.553,0.408},{0.788,0.541,0.4},{0.78,0.537,0.396},{0.773,0.522,0.384},{0.757,0.506,0.369},{0.741,0.49,0.353},{0.729,0.478,0.341},{0.722,0.467,0.337},{0.71,0.455,0.322},{0.69,0.435,0.298},{0.671,0.408,0.278},{0.655,0.388,0.259},{0.639,0.376,0.251},{0.627,0.369,0.243},{0.612,0.349,0.224},
{0.6,0.337,0.224},{0.584,0.325,0.208},{0.58,0.322,0.208},{0.569,0.31,0.192},{0.565,0.31,0.192},{0.549,0.29,0.176},{0.541,0.282,0.173},{0.533,0.275,0.169},{0.518,0.263,0.157},{0.514,0.259,0.153},{0.502,0.247,0.145},{0.502,0.251,0.145},{0.506,0.247,0.145},{0.502,0.247,0.145},{0.498,0.239,0.137},{0.502,0.247,0.145},{0.494,0.235,0.137},{0.502,0.247,0.145},{0.498,0.243,0.141},{0.498,0.239,0.141},{0.498,0.239,0.137},{0.486,0.235,0.133},{0.494,0.235,0.133},{0.49,0.235,0.133},{0.49,0.231,0.129},{0.478,0.224,0.129},{0.467,0.212,0.118},{0.471,0.22,0.125},{0.451,0.196,0.114},{0.435,0.18,0.102},{0.431,0.176,0.098},{0.408,0.161,0.09},{0.4,0.153,0.082},{0.4,0.153,0.082},{0.388,0.149,0.078},{0.388,0.145,0.075},{0.392,0.149,0.082},{0.396,0.157,0.086},{0.392,0.153,0.082},{0.4,0.161,0.09},{0.396,0.161,0.09},{0.396,0.161,0.09},{0.4,0.161,0.094},{0.396,0.161,0.09},{0.384,0.153,0.09},{0.365,0.141,0.075},{0.337,0.129,0.067},{0.655,0.541,0.557},{0.655,0.541,0.557},{0.643,0.522,0.541},{0.643,0.525,0.541},{0.639,0.525,0.541},{0.639,0.522,0.541},
{0.635,0.514,0.533},{0.631,0.518,0.533},{0.631,0.514,0.533},{0.643,0.525,0.545},{0.651,0.533,0.553},{0.663,0.549,0.565},{0.694,0.588,0.604},{0.69,0.584,0.596},{0.686,0.58,0.592},{0.69,0.584,0.596},{0.69,0.584,0.596},{0.678,0.565,0.58},{0.69,0.584,0.596},{0.694,0.592,0.604},{0.698,0.6,0.612},{0.71,0.608,0.624},{0.702,0.604,0.616},{0.71,0.612,0.624},{0.718,0.624,0.635},{0.722,0.627,0.639},{0.729,0.635,0.647},{0.729,0.635,0.643},{0.737,0.639,0.651},{0.745,0.655,0.663},{0.765,0.667,0.678},{0.765,0.671,0.682},{0.769,0.678,0.69},{0.753,0.62,0.588},{0.769,0.537,0.408},{0.788,0.553,0.424},{0.804,0.573,0.431},{0.808,0.569,0.427},{0.812,0.569,0.427},{0.8,0.557,0.412},{0.792,0.545,0.408},{0.78,0.533,0.392},{0.776,0.525,0.384},{0.765,0.522,0.38},{0.753,0.502,0.365},{0.729,0.475,0.337},{0.718,0.463,0.325},{0.698,0.439,0.306},{0.678,0.42,0.286},{0.675,0.408,0.278},{0.655,0.392,0.259},{0.631,0.373,0.243},{0.62,0.361,0.235},{0.604,0.345,0.22},{0.604,0.341,0.224},{0.592,0.329,0.216},{0.58,0.322,0.204},{0.58,0.318,0.204},{0.557,0.298,0.184},
{0.549,0.298,0.18},{0.545,0.29,0.176},{0.533,0.278,0.173},{0.525,0.267,0.165},{0.514,0.263,0.157},{0.514,0.259,0.153},{0.518,0.263,0.153},{0.518,0.259,0.153},{0.522,0.263,0.153},{0.518,0.259,0.157},{0.518,0.263,0.157},{0.514,0.259,0.153},{0.518,0.259,0.153},{0.518,0.259,0.153},{0.514,0.259,0.149},{0.51,0.255,0.145},{0.502,0.243,0.137},{0.498,0.243,0.137},{0.494,0.235,0.133},{0.49,0.235,0.129},{0.482,0.227,0.125},{0.482,0.227,0.129},{0.467,0.212,0.122},{0.451,0.196,0.114},{0.435,0.18,0.102},{0.42,0.165,0.094},{0.42,0.169,0.098},{0.42,0.169,0.098},{0.412,0.165,0.09},{0.408,0.161,0.09},{0.412,0.161,0.094},{0.408,0.165,0.094},{0.408,0.161,0.094},{0.412,0.173,0.102},{0.412,0.173,0.102},{0.416,0.173,0.102},{0.412,0.173,0.102},{0.408,0.169,0.098},{0.4,0.161,0.09},{0.376,0.149,0.082},{0.349,0.129,0.067},{0.616,0.498,0.514},{0.616,0.498,0.514},{0.608,0.486,0.506},{0.604,0.482,0.502},{0.6,0.478,0.498},{0.596,0.475,0.498},{0.604,0.482,0.502},{0.604,0.482,0.502},{0.6,0.478,0.498},{0.596,0.475,0.494},{0.6,0.478,0.498},{0.612,0.494,0.514},
{0.627,0.514,0.529},{0.635,0.522,0.537},{0.643,0.529,0.545},{0.647,0.533,0.545},{0.651,0.537,0.549},{0.639,0.525,0.537},{0.616,0.506,0.518},{0.62,0.502,0.51},{0.624,0.514,0.522},{0.627,0.514,0.525},{0.631,0.518,0.525},{0.639,0.525,0.537},{0.651,0.541,0.553},{0.659,0.549,0.561},{0.667,0.557,0.565},{0.675,0.573,0.584},{0.686,0.576,0.588},{0.686,0.576,0.588},{0.69,0.592,0.604},{0.706,0.604,0.616},{0.714,0.616,0.627},{0.729,0.631,0.643},{0.737,0.557,0.478},{0.788,0.557,0.424},{0.812,0.584,0.447},{0.82,0.584,0.447},{0.816,0.58,0.435},{0.812,0.576,0.431},{0.804,0.561,0.424},{0.796,0.549,0.408},{0.784,0.537,0.396},{0.769,0.522,0.38},{0.765,0.518,0.38},{0.749,0.494,0.357},{0.733,0.478,0.341},{0.722,0.471,0.337},{0.694,0.435,0.302},{0.686,0.424,0.29},{0.675,0.412,0.282},{0.655,0.396,0.271},{0.627,0.369,0.243},{0.624,0.365,0.243},{0.604,0.341,0.22},{0.604,0.341,0.22},{0.592,0.329,0.212},{0.58,0.322,0.204},{0.565,0.306,0.188},{0.557,0.302,0.184},{0.553,0.302,0.184},{0.549,0.294,0.18},{0.545,0.286,0.176},{0.541,0.282,0.176},{0.537,0.278,0.169},
{0.541,0.282,0.169},{0.537,0.278,0.169},{0.533,0.278,0.169},{0.537,0.286,0.173},{0.529,0.278,0.169},{0.525,0.271,0.161},{0.522,0.263,0.157},{0.522,0.267,0.157},{0.522,0.267,0.161},{0.51,0.251,0.149},{0.506,0.251,0.145},{0.506,0.247,0.141},{0.502,0.243,0.141},{0.502,0.243,0.137},{0.494,0.239,0.133},{0.49,0.235,0.133},{0.478,0.224,0.129},{0.463,0.204,0.118},{0.459,0.2,0.114},{0.451,0.192,0.11},{0.443,0.184,0.102},{0.435,0.18,0.098},{0.435,0.176,0.102},{0.435,0.18,0.102},{0.439,0.184,0.11},{0.431,0.18,0.106},{0.431,0.176,0.102},{0.427,0.18,0.106},{0.424,0.176,0.106},{0.424,0.176,0.106},{0.412,0.169,0.098},{0.408,0.169,0.098},{0.404,0.165,0.094},{0.384,0.153,0.09},{0.365,0.141,0.075},{0.612,0.494,0.51},{0.612,0.494,0.51},{0.596,0.475,0.494},{0.592,0.471,0.49},{0.58,0.459,0.478},{0.573,0.455,0.475},{0.573,0.455,0.475},{0.569,0.451,0.471},{0.565,0.447,0.467},{0.561,0.443,0.463},{0.561,0.443,0.459},{0.553,0.439,0.455},{0.573,0.455,0.475},{0.592,0.475,0.486},{0.6,0.486,0.494},{0.612,0.498,0.506},{0.608,0.498,0.502},{0.596,0.482,0.49},
{0.576,0.467,0.471},{0.561,0.443,0.451},{0.545,0.431,0.439},{0.549,0.431,0.439},{0.561,0.443,0.451},{0.561,0.447,0.451},{0.561,0.447,0.451},{0.561,0.447,0.451},{0.557,0.443,0.447},{0.557,0.447,0.451},{0.569,0.455,0.459},{0.573,0.459,0.459},{0.58,0.467,0.475},{0.596,0.482,0.486},{0.62,0.502,0.51},{0.631,0.518,0.525},{0.651,0.529,0.525},{0.749,0.529,0.416},{0.808,0.576,0.447},{0.824,0.596,0.459},{0.82,0.584,0.447},{0.82,0.584,0.443},{0.816,0.576,0.435},{0.804,0.561,0.42},{0.8,0.557,0.416},{0.784,0.537,0.396},{0.773,0.525,0.388},{0.757,0.506,0.369},{0.749,0.498,0.361},{0.729,0.475,0.337},{0.714,0.451,0.322},{0.702,0.451,0.318},{0.682,0.427,0.294},{0.667,0.408,0.278},{0.655,0.388,0.263},{0.639,0.376,0.247},{0.62,0.353,0.227},{0.608,0.345,0.22},{0.604,0.341,0.22},{0.596,0.337,0.212},{0.584,0.318,0.2},{0.58,0.314,0.196},{0.569,0.306,0.188},{0.553,0.29,0.176},{0.557,0.298,0.184},{0.553,0.298,0.184},{0.561,0.302,0.188},{0.557,0.298,0.184},{0.553,0.294,0.176},{0.549,0.294,0.176},{0.541,0.286,0.176},{0.529,0.271,0.161},{0.522,0.267,0.161},
{0.514,0.255,0.153},{0.502,0.247,0.141},{0.498,0.239,0.137},{0.49,0.235,0.133},{0.494,0.239,0.137},{0.486,0.231,0.129},{0.494,0.239,0.133},{0.49,0.235,0.129},{0.486,0.231,0.125},{0.478,0.227,0.129},{0.478,0.227,0.137},{0.471,0.216,0.129},{0.463,0.208,0.125},{0.459,0.204,0.118},{0.459,0.204,0.122},{0.455,0.196,0.114},{0.451,0.196,0.11},{0.455,0.196,0.114},{0.459,0.2,0.122},{0.455,0.2,0.114},{0.451,0.196,0.118},{0.447,0.192,0.114},{0.443,0.184,0.114},{0.431,0.18,0.11},{0.42,0.176,0.106},{0.42,0.176,0.102},{0.408,0.169,0.098},{0.4,0.161,0.094},{0.38,0.149,0.086},{0.62,0.498,0.518},{0.62,0.498,0.518},{0.612,0.494,0.51},{0.6,0.478,0.498},{0.584,0.463,0.482},{0.565,0.447,0.463},{0.553,0.439,0.451},{0.537,0.42,0.439},{0.525,0.404,0.424},{0.498,0.376,0.396},{0.494,0.376,0.392},{0.49,0.373,0.388},{0.494,0.376,0.392},{0.502,0.388,0.404},{0.506,0.388,0.4},{0.498,0.384,0.392},{0.498,0.384,0.392},{0.51,0.396,0.396},{0.502,0.388,0.388},{0.478,0.365,0.361},{0.467,0.349,0.353},{0.451,0.333,0.325},{0.439,0.322,0.314},{0.427,0.31,0.302},
{0.427,0.31,0.302},{0.42,0.306,0.294},{0.412,0.294,0.286},{0.408,0.29,0.282},{0.404,0.286,0.278},{0.4,0.286,0.275},{0.412,0.298,0.286},{0.435,0.318,0.314},{0.459,0.341,0.337},{0.482,0.369,0.365},{0.522,0.404,0.396},{0.58,0.435,0.404},{0.78,0.549,0.427},{0.816,0.596,0.463},{0.824,0.592,0.455},{0.824,0.592,0.455},{0.816,0.58,0.439},{0.816,0.58,0.439},{0.808,0.569,0.427},{0.8,0.557,0.416},{0.784,0.537,0.396},{0.776,0.522,0.384},{0.765,0.514,0.376},{0.749,0.494,0.361},{0.733,0.486,0.349},{0.71,0.455,0.318},{0.698,0.443,0.31},{0.69,0.431,0.298},{0.667,0.404,0.275},{0.663,0.396,0.271},{0.647,0.384,0.255},{0.627,0.361,0.235},{0.627,0.357,0.235},{0.608,0.341,0.22},{0.6,0.333,0.212},{0.588,0.318,0.2},{0.584,0.318,0.2},{0.592,0.329,0.212},{0.584,0.314,0.196},{0.58,0.318,0.192},{0.58,0.318,0.2},{0.565,0.306,0.188},{0.557,0.298,0.18},{0.545,0.29,0.176},{0.522,0.267,0.161},{0.498,0.243,0.145},{0.486,0.235,0.133},{0.475,0.224,0.129},{0.451,0.204,0.11},{0.443,0.192,0.106},{0.431,0.18,0.098},{0.439,0.188,0.098},{0.451,0.196,0.106},
{0.451,0.196,0.106},{0.459,0.204,0.114},{0.463,0.212,0.118},{0.463,0.212,0.125},{0.463,0.208,0.125},{0.467,0.212,0.125},{0.471,0.216,0.129},{0.471,0.22,0.137},{0.463,0.208,0.118},{0.459,0.204,0.118},{0.463,0.204,0.114},{0.467,0.208,0.118},{0.467,0.212,0.133},{0.475,0.22,0.141},{0.475,0.22,0.141},{0.459,0.204,0.129},{0.451,0.192,0.122},{0.451,0.196,0.122},{0.443,0.192,0.118},{0.435,0.184,0.114},{0.424,0.18,0.11},{0.404,0.165,0.094},{0.392,0.149,0.086},{0.596,0.478,0.494},{0.596,0.478,0.494},{0.588,0.471,0.482},{0.584,0.467,0.482},{0.569,0.447,0.463},{0.557,0.439,0.455},{0.541,0.427,0.443},{0.537,0.424,0.439},{0.518,0.4,0.416},{0.49,0.373,0.388},{0.467,0.345,0.365},{0.447,0.329,0.341},{0.424,0.306,0.322},{0.404,0.286,0.302},{0.388,0.275,0.278},{0.384,0.267,0.275},{0.373,0.259,0.263},{0.369,0.251,0.247},{0.376,0.259,0.251},{0.365,0.247,0.239},{0.337,0.224,0.216},{0.302,0.192,0.18},{0.275,0.165,0.149},{0.267,0.161,0.141},{0.247,0.137,0.122},{0.239,0.129,0.114},{0.235,0.122,0.106},{0.227,0.118,0.102},{0.235,0.125,0.11},{0.243,0.129,0.114},
{0.247,0.133,0.118},{0.247,0.137,0.122},{0.271,0.157,0.145},{0.31,0.196,0.18},{0.357,0.239,0.227},{0.408,0.29,0.282},{0.569,0.4,0.341},{0.804,0.576,0.447},{0.82,0.592,0.459},{0.824,0.596,0.463},{0.824,0.592,0.451},{0.82,0.584,0.447},{0.82,0.58,0.443},{0.812,0.573,0.431},{0.8,0.557,0.412},{0.784,0.537,0.396},{0.776,0.529,0.392},{0.761,0.51,0.369},{0.745,0.498,0.361},{0.729,0.475,0.337},{0.714,0.459,0.322},{0.698,0.439,0.306},{0.682,0.416,0.286},{0.671,0.408,0.278},{0.663,0.396,0.271},{0.655,0.388,0.263},{0.635,0.369,0.239},{0.627,0.365,0.235},{0.62,0.349,0.224},{0.612,0.345,0.224},{0.612,0.345,0.224},{0.608,0.337,0.216},{0.612,0.341,0.22},{0.596,0.325,0.204},{0.576,0.314,0.192},{0.553,0.294,0.18},{0.525,0.267,0.161},{0.482,0.231,0.137},{0.447,0.2,0.11},{0.427,0.18,0.098},{0.4,0.153,0.075},{0.373,0.141,0.067},{0.353,0.122,0.047},{0.337,0.106,0.039},{0.333,0.106,0.039},{0.333,0.102,0.039},{0.329,0.106,0.039},{0.314,0.09,0.027},{0.322,0.102,0.039},{0.376,0.157,0.075},{0.427,0.188,0.106},{0.455,0.208,0.122},{0.471,0.216,0.133},
{0.478,0.224,0.137},{0.49,0.235,0.145},{0.482,0.224,0.137},{0.49,0.231,0.137},{0.494,0.235,0.137},{0.49,0.235,0.145},{0.494,0.239,0.153},{0.494,0.235,0.153},{0.486,0.231,0.145},{0.471,0.22,0.145},{0.467,0.212,0.133},{0.459,0.204,0.129},{0.447,0.196,0.125},{0.447,0.192,0.122},{0.431,0.184,0.11},{0.412,0.169,0.102},{0.396,0.157,0.09},{0.494,0.376,0.384},{0.494,0.376,0.384},{0.506,0.392,0.396},{0.502,0.388,0.392},{0.51,0.396,0.404},{0.514,0.396,0.404},{0.502,0.384,0.396},{0.502,0.384,0.392},{0.494,0.376,0.384},{0.478,0.365,0.376},{0.451,0.341,0.345},{0.42,0.306,0.31},{0.396,0.286,0.286},{0.365,0.247,0.255},{0.322,0.212,0.216},{0.294,0.184,0.184},{0.267,0.165,0.157},{0.251,0.149,0.133},{0.224,0.133,0.114},{0.204,0.106,0.09},{0.18,0.094,0.071},{0.173,0.078,0.059},{0.161,0.067,0.043},{0.153,0.055,0.035},{0.141,0.047,0.024},{0.137,0.039,0.02},{0.133,0.039,0.02},{0.137,0.039,0.016},{0.137,0.039,0.02},{0.153,0.047,0.027},{0.161,0.051,0.031},{0.153,0.051,0.027},{0.161,0.059,0.035},{0.18,0.075,0.055},{0.208,0.102,0.082},{0.251,0.141,0.125},
{0.298,0.18,0.165},{0.616,0.42,0.325},{0.808,0.576,0.447},{0.824,0.592,0.463},{0.827,0.6,0.467},{0.824,0.588,0.451},{0.824,0.588,0.447},{0.816,0.584,0.443},{0.808,0.576,0.431},{0.796,0.557,0.42},{0.78,0.533,0.392},{0.769,0.522,0.38},{0.753,0.506,0.365},{0.741,0.486,0.345},{0.737,0.482,0.349},{0.714,0.459,0.322},{0.698,0.435,0.302},{0.69,0.427,0.298},{0.675,0.412,0.278},{0.667,0.408,0.275},{0.663,0.4,0.271},{0.651,0.384,0.255},{0.647,0.384,0.255},{0.639,0.376,0.251},{0.631,0.365,0.235},{0.627,0.357,0.231},{0.604,0.341,0.22},{0.584,0.318,0.204},{0.533,0.275,0.165},{0.475,0.224,0.125},{0.404,0.157,0.075},{0.365,0.125,0.055},{0.341,0.106,0.043},{0.318,0.09,0.031},{0.31,0.082,0.024},{0.306,0.082,0.024},{0.302,0.078,0.02},{0.29,0.071,0.016},{0.282,0.067,0.016},{0.278,0.067,0.02},{0.298,0.09,0.047},{0.314,0.106,0.067},{0.376,0.204,0.18},{0.357,0.169,0.122},{0.388,0.161,0.09},{0.447,0.2,0.118},{0.467,0.22,0.133},{0.478,0.224,0.137},{0.482,0.227,0.137},{0.49,0.231,0.145},{0.502,0.243,0.145},{0.514,0.251,0.153},{0.518,0.259,0.165},
{0.514,0.255,0.161},{0.506,0.247,0.157},{0.498,0.239,0.157},{0.49,0.235,0.153},{0.478,0.224,0.141},{0.467,0.212,0.133},{0.459,0.212,0.133},{0.455,0.196,0.122},{0.443,0.192,0.122},{0.427,0.18,0.11},{0.404,0.169,0.098},{0.498,0.38,0.384},{0.498,0.38,0.384},{0.482,0.365,0.361},{0.471,0.353,0.353},{0.459,0.337,0.333},{0.455,0.337,0.337},{0.455,0.341,0.341},{0.447,0.329,0.333},{0.435,0.325,0.318},{0.424,0.314,0.318},{0.416,0.302,0.306},{0.388,0.271,0.271},{0.357,0.239,0.235},{0.314,0.2,0.2},{0.267,0.165,0.149},{0.231,0.133,0.122},{0.196,0.102,0.086},{0.161,0.078,0.059},{0.141,0.059,0.043},{0.125,0.043,0.024},{0.11,0.027,0.012},{0.098,0.016,0.008},{0.094,0.012,0.008},{0.09,0.008,0.008},{0.09,0.008,0.008},{0.09,0.008,0.008},{0.094,0.012,0.012},{0.09,0.012,0.008},{0.098,0.008,0.008},{0.098,0.008,0.008},{0.102,0.012,0.008},{0.11,0.016,0.008},{0.114,0.016,0.008},{0.122,0.02,0.008},{0.129,0.027,0.008},{0.141,0.039,0.024},{0.165,0.063,0.043},{0.231,0.114,0.082},{0.686,0.471,0.357},{0.808,0.576,0.451},{0.827,0.604,0.475},{0.831,0.604,0.471},
{0.827,0.6,0.459},{0.82,0.588,0.451},{0.816,0.58,0.439},{0.804,0.565,0.427},{0.796,0.549,0.412},{0.776,0.529,0.388},{0.769,0.522,0.384},{0.761,0.51,0.369},{0.745,0.494,0.357},{0.729,0.475,0.337},{0.722,0.467,0.333},{0.71,0.451,0.314},{0.694,0.431,0.294},{0.69,0.431,0.302},{0.682,0.424,0.286},{0.671,0.404,0.271},{0.659,0.392,0.263},{0.643,0.38,0.251},{0.635,0.376,0.243},{0.604,0.345,0.224},{0.573,0.31,0.2},{0.506,0.251,0.157},{0.404,0.165,0.086},{0.329,0.098,0.031},{0.302,0.078,0.02},{0.278,0.063,0.012},{0.302,0.078,0.027},{0.329,0.106,0.055},{0.353,0.118,0.067},{0.404,0.161,0.106},{0.431,0.184,0.125},{0.435,0.18,0.125},{0.439,0.2,0.157},{0.459,0.235,0.224},{0.478,0.251,0.243},{0.451,0.208,0.2},{0.537,0.396,0.38},{0.443,0.275,0.227},{0.392,0.165,0.086},{0.447,0.2,0.114},{0.475,0.22,0.137},{0.49,0.235,0.149},{0.494,0.239,0.145},{0.498,0.239,0.149},{0.506,0.243,0.141},{0.525,0.263,0.165},{0.537,0.278,0.18},{0.533,0.275,0.184},{0.522,0.263,0.176},{0.522,0.263,0.176},{0.506,0.247,0.161},{0.49,0.231,0.149},{0.482,0.227,0.145},
{0.467,0.212,0.133},{0.455,0.196,0.125},{0.447,0.192,0.122},{0.435,0.184,0.114},{0.42,0.176,0.106},{0.545,0.427,0.439},{0.545,0.427,0.439},{0.518,0.4,0.404},{0.49,0.373,0.369},{0.463,0.345,0.337},{0.451,0.333,0.325},{0.439,0.318,0.31},{0.424,0.306,0.298},{0.408,0.29,0.282},{0.388,0.271,0.263},{0.349,0.231,0.224},{0.322,0.212,0.204},{0.29,0.18,0.169},{0.247,0.149,0.133},{0.224,0.125,0.11},{0.2,0.098,0.082},{0.165,0.075,0.055},{0.141,0.059,0.035},{0.118,0.039,0.016},{0.098,0.016,0.008},{0.082,0.008,0.008},{0.067,0.004,0.004},{0.059,0.004,0.004},{0.055,0.004,0.004},{0.063,0.004,0.004},{0.063,0.004,0.004},{0.071,0.004,0.008},{0.075,0.004,0.008},{0.078,0.004,0.008},{0.078,0.008,0.008},{0.082,0.004,0.008},{0.082,0.004,0.008},{0.082,0.008,0.008},{0.086,0.004,0.012},{0.086,0.008,0.004},{0.09,0.008,0.008},{0.098,0.008,0.008},{0.118,0.016,0.008},{0.251,0.122,0.078},{0.741,0.51,0.388},{0.804,0.58,0.451},{0.812,0.588,0.459},{0.816,0.6,0.467},{0.816,0.592,0.455},{0.816,0.592,0.451},{0.804,0.565,0.427},{0.804,0.557,0.424},{0.788,0.545,0.408},
{0.784,0.537,0.4},{0.773,0.525,0.384},{0.753,0.502,0.361},{0.745,0.49,0.353},{0.733,0.482,0.349},{0.729,0.475,0.341},{0.718,0.459,0.322},{0.706,0.447,0.31},{0.69,0.427,0.298},{0.675,0.416,0.286},{0.651,0.384,0.259},{0.627,0.365,0.243},{0.584,0.329,0.212},{0.518,0.267,0.157},{0.427,0.184,0.102},{0.325,0.098,0.035},{0.278,0.063,0.016},{0.302,0.086,0.035},{0.353,0.125,0.071},{0.424,0.18,0.122},{0.49,0.235,0.173},{0.525,0.271,0.2},{0.553,0.29,0.22},{0.58,0.318,0.243},{0.565,0.302,0.227},{0.525,0.263,0.2},{0.494,0.231,0.173},{0.467,0.2,0.161},{0.435,0.173,0.137},{0.376,0.133,0.094},{0.278,0.078,0.039},{0.345,0.129,0.063},{0.416,0.176,0.098},{0.463,0.208,0.125},{0.471,0.216,0.129},{0.486,0.235,0.145},{0.506,0.247,0.149},{0.514,0.255,0.153},{0.522,0.255,0.161},{0.525,0.263,0.169},{0.537,0.278,0.18},{0.545,0.29,0.188},{0.545,0.286,0.18},{0.533,0.271,0.169},{0.522,0.259,0.161},{0.506,0.247,0.161},{0.494,0.239,0.153},{0.482,0.227,0.149},{0.467,0.216,0.137},{0.459,0.208,0.133},{0.447,0.192,0.125},{0.431,0.184,0.114},{0.533,0.42,0.431},
{0.533,0.42,0.431},{0.525,0.408,0.416},{0.502,0.384,0.392},{0.475,0.361,0.361},{0.459,0.341,0.337},{0.447,0.325,0.322},{0.416,0.298,0.29},{0.384,0.267,0.259},{0.361,0.239,0.231},{0.318,0.2,0.188},{0.278,0.165,0.153},{0.251,0.137,0.125},{0.224,0.114,0.102},{0.196,0.098,0.082},{0.18,0.078,0.063},{0.153,0.063,0.047},{0.133,0.051,0.024},{0.118,0.031,0.008},{0.098,0.012,0.008},{0.082,0.008,0.008},{0.063,0.004,0.004},{0.051,0.004,0.004},{0.047,0,0},{0.043,0.004,0},{0.043,0.004,0},{0.047,0.004,0},{0.043,0,0},{0.047,0.004,0.004},{0.055,0.004,0.004},{0.055,0.004,0.004},{0.059,0.004,0.004},{0.059,0.004,0.004},{0.063,0.004,0.008},{0.071,0.004,0.004},{0.067,0.004,0.004},{0.075,0.004,0.004},{0.071,0.004,0.008},{0.09,0.008,0.008},{0.31,0.173,0.129},{0.761,0.525,0.404},{0.765,0.537,0.416},{0.78,0.557,0.431},{0.788,0.561,0.427},{0.792,0.569,0.435},{0.796,0.565,0.431},{0.796,0.557,0.424},{0.792,0.553,0.416},{0.784,0.541,0.404},{0.776,0.525,0.388},{0.773,0.522,0.384},{0.757,0.506,0.365},{0.745,0.494,0.357},{0.737,0.486,0.353},
{0.722,0.467,0.337},{0.694,0.435,0.306},{0.663,0.404,0.275},{0.624,0.369,0.243},{0.58,0.333,0.212},{0.518,0.267,0.161},{0.427,0.184,0.102},{0.314,0.09,0.035},{0.282,0.063,0.02},{0.361,0.122,0.075},{0.435,0.173,0.122},{0.49,0.224,0.157},{0.525,0.263,0.192},{0.58,0.318,0.239},{0.635,0.384,0.306},{0.651,0.4,0.325},{0.639,0.388,0.318},{0.588,0.333,0.275},{0.525,0.271,0.22},{0.455,0.208,0.161},{0.373,0.137,0.102},{0.275,0.075,0.051},{0.212,0.035,0.024},{0.247,0.059,0.027},{0.345,0.125,0.059},{0.384,0.153,0.078},{0.416,0.173,0.094},{0.459,0.208,0.122},{0.475,0.22,0.133},{0.494,0.239,0.145},{0.514,0.259,0.153},{0.522,0.263,0.157},{0.529,0.275,0.169},{0.545,0.29,0.18},{0.553,0.298,0.188},{0.553,0.298,0.188},{0.549,0.294,0.184},{0.545,0.286,0.18},{0.537,0.278,0.173},{0.525,0.271,0.18},{0.514,0.259,0.176},{0.494,0.243,0.165},{0.486,0.235,0.149},{0.482,0.227,0.149},{0.463,0.212,0.133},{0.455,0.2,0.133},{0.51,0.392,0.396},{0.51,0.392,0.396},{0.498,0.384,0.392},{0.486,0.373,0.38},{0.471,0.353,0.349},{0.439,0.322,0.31},{0.427,0.31,0.302},
{0.404,0.286,0.278},{0.365,0.243,0.235},{0.322,0.2,0.188},{0.278,0.157,0.149},{0.255,0.137,0.129},{0.235,0.125,0.11},{0.212,0.102,0.09},{0.2,0.094,0.078},{0.176,0.075,0.059},{0.161,0.063,0.043},{0.149,0.051,0.024},{0.125,0.031,0.012},{0.11,0.016,0.008},{0.09,0.008,0.008},{0.075,0.004,0.008},{0.071,0.008,0.008},{0.059,0.004,0.004},{0.055,0.004,0.004},{0.051,0.004,0},{0.047,0.004,0},{0.043,0.004,0.004},{0.039,0,0.004},{0.039,0,0.004},{0.039,0.004,0.004},{0.039,0,0.004},{0.039,0.004,0.004},{0.039,0.004,0.004},{0.039,0.004,0.004},{0.043,0,0.004},{0.051,0.004,0.004},{0.051,0.004,0.004},{0.063,0.004,0.004},{0.055,0.004,0.004},{0.431,0.263,0.196},{0.69,0.451,0.337},{0.678,0.443,0.329},{0.698,0.467,0.349},{0.729,0.49,0.365},{0.745,0.514,0.384},{0.765,0.529,0.396},{0.773,0.537,0.404},{0.776,0.533,0.396},{0.78,0.545,0.408},{0.773,0.533,0.392},{0.757,0.51,0.365},{0.737,0.486,0.353},{0.71,0.459,0.329},{0.663,0.416,0.282},{0.612,0.361,0.239},{0.541,0.298,0.188},{0.471,0.231,0.137},{0.384,0.157,0.078},{0.302,0.086,0.031},
{0.275,0.063,0.024},{0.341,0.114,0.067},{0.482,0.231,0.165},{0.627,0.365,0.29},{0.686,0.412,0.325},{0.706,0.416,0.318},{0.71,0.427,0.329},{0.702,0.427,0.333},{0.678,0.416,0.341},{0.627,0.369,0.302},{0.533,0.286,0.227},{0.341,0.137,0.102},{0.212,0.047,0.031},{0.2,0.035,0.016},{0.224,0.047,0.02},{0.278,0.075,0.031},{0.325,0.11,0.047},{0.353,0.129,0.059},{0.376,0.145,0.078},{0.396,0.161,0.086},{0.416,0.173,0.098},{0.447,0.196,0.106},{0.467,0.22,0.133},{0.49,0.235,0.149},{0.506,0.247,0.149},{0.525,0.267,0.165},{0.541,0.286,0.176},{0.557,0.298,0.192},{0.565,0.31,0.2},{0.569,0.306,0.196},{0.561,0.302,0.192},{0.553,0.298,0.184},{0.545,0.286,0.184},{0.537,0.278,0.188},{0.533,0.282,0.184},{0.518,0.267,0.176},{0.506,0.251,0.169},{0.49,0.235,0.149},{0.475,0.22,0.141},{0.451,0.2,0.125},{0.498,0.38,0.388},{0.498,0.38,0.388},{0.482,0.365,0.373},{0.463,0.345,0.345},{0.459,0.341,0.333},{0.42,0.302,0.294},{0.396,0.278,0.271},{0.361,0.239,0.231},{0.325,0.208,0.2},{0.298,0.18,0.169},{0.267,0.153,0.137},{0.259,0.141,0.129},{0.243,0.129,0.114},
{0.216,0.106,0.086},{0.188,0.078,0.063},{0.176,0.071,0.051},{0.165,0.059,0.039},{0.149,0.047,0.027},{0.137,0.035,0.016},{0.129,0.024,0.008},{0.106,0.012,0.008},{0.094,0.008,0.008},{0.086,0.008,0.008},{0.082,0.004,0.008},{0.075,0.004,0.008},{0.067,0.004,0.008},{0.059,0.004,0.004},{0.055,0.004,0.004},{0.051,0.004,0.004},{0.047,0,0.004},{0.043,0.004,0.004},{0.039,0,0},{0.035,0.004,0.004},{0.039,0.004,0.004},{0.031,0.004,0.004},{0.039,0.004,0.004},{0.031,0.004,0.004},{0.039,0.004,0.004},{0.035,0.004,0.004},{0.035,0,0.004},{0.059,0.012,0.012},{0.482,0.29,0.208},{0.514,0.29,0.2},{0.478,0.263,0.173},{0.553,0.329,0.22},{0.647,0.408,0.29},{0.69,0.447,0.329},{0.718,0.478,0.353},{0.729,0.49,0.361},{0.737,0.494,0.365},{0.729,0.486,0.353},{0.71,0.463,0.333},{0.659,0.408,0.278},{0.592,0.345,0.227},{0.49,0.255,0.153},{0.373,0.145,0.075},{0.29,0.082,0.027},{0.255,0.055,0.016},{0.267,0.055,0.024},{0.4,0.157,0.102},{0.541,0.278,0.192},{0.608,0.345,0.259},{0.702,0.435,0.345},{0.784,0.533,0.447},{0.808,0.565,0.467},{0.796,0.553,0.455},
{0.729,0.471,0.388},{0.608,0.349,0.282},{0.431,0.22,0.176},{0.278,0.098,0.075},{0.208,0.035,0.02},{0.259,0.055,0.02},{0.31,0.09,0.035},{0.341,0.118,0.051},{0.357,0.133,0.063},{0.357,0.133,0.059},{0.365,0.137,0.063},{0.365,0.141,0.067},{0.376,0.145,0.075},{0.396,0.161,0.086},{0.404,0.165,0.09},{0.42,0.173,0.094},{0.443,0.192,0.106},{0.451,0.2,0.114},{0.471,0.216,0.133},{0.51,0.251,0.157},{0.533,0.275,0.173},{0.549,0.298,0.188},{0.561,0.306,0.196},{0.569,0.31,0.2},{0.569,0.306,0.196},{0.561,0.306,0.196},{0.561,0.302,0.196},{0.549,0.294,0.192},{0.537,0.286,0.184},{0.522,0.267,0.176},{0.51,0.251,0.173},{0.494,0.239,0.157},{0.475,0.224,0.145},{0.463,0.216,0.141},{0.478,0.361,0.369},{0.478,0.361,0.369},{0.463,0.345,0.353},{0.443,0.325,0.322},{0.431,0.31,0.302},{0.396,0.278,0.271},{0.353,0.235,0.227},{0.329,0.212,0.2},{0.31,0.192,0.184},{0.29,0.169,0.161},{0.255,0.141,0.125},{0.247,0.133,0.118},{0.231,0.118,0.098},{0.208,0.098,0.082},{0.188,0.078,0.063},{0.18,0.067,0.055},{0.165,0.055,0.039},{0.153,0.047,0.024},{0.141,0.039,0.016},
{0.133,0.031,0.012},{0.125,0.024,0.008},{0.118,0.012,0.008},{0.098,0.012,0.008},{0.094,0.008,0.012},{0.09,0.008,0.008},{0.086,0.004,0.008},{0.086,0.008,0.008},{0.078,0.004,0.008},{0.071,0.004,0.008},{0.067,0.004,0.004},{0.063,0.004,0.004},{0.055,0.004,0.004},{0.055,0.004,0.004},{0.043,0.004,0.004},{0.047,0,0},{0.043,0.004,0.004},{0.043,0.004,0.004},{0.047,0.004,0},{0.043,0.004,0.004},{0.043,0.004,0.004},{0.035,0,0.004},{0.082,0.035,0.024},{0.376,0.188,0.125},{0.255,0.078,0.031},{0.29,0.098,0.043},{0.412,0.196,0.114},{0.506,0.282,0.18},{0.565,0.329,0.224},{0.588,0.361,0.243},{0.596,0.361,0.243},{0.569,0.329,0.216},{0.506,0.275,0.169},{0.408,0.18,0.106},{0.302,0.09,0.039},{0.227,0.031,0.012},{0.208,0.02,0.008},{0.251,0.047,0.027},{0.376,0.149,0.098},{0.569,0.318,0.227},{0.694,0.443,0.329},{0.753,0.51,0.404},{0.8,0.565,0.475},{0.831,0.608,0.522},{0.82,0.588,0.506},{0.769,0.522,0.443},{0.651,0.384,0.322},{0.345,0.133,0.102},{0.157,0.016,0.012},{0.204,0.024,0.012},{0.271,0.059,0.02},{0.322,0.098,0.035},{0.349,0.125,0.051},
{0.361,0.137,0.063},{0.365,0.141,0.067},{0.365,0.141,0.067},{0.361,0.133,0.059},{0.357,0.133,0.059},{0.353,0.129,0.055},{0.353,0.129,0.059},{0.353,0.129,0.055},{0.365,0.133,0.059},{0.365,0.133,0.063},{0.373,0.141,0.067},{0.38,0.145,0.075},{0.396,0.157,0.086},{0.424,0.18,0.098},{0.451,0.208,0.118},{0.482,0.239,0.145},{0.506,0.259,0.161},{0.541,0.29,0.184},{0.565,0.31,0.2},{0.58,0.322,0.212},{0.569,0.31,0.204},{0.557,0.298,0.196},{0.537,0.282,0.184},{0.529,0.278,0.188},{0.518,0.263,0.18},{0.51,0.255,0.173},{0.502,0.247,0.165},{0.486,0.227,0.153},{0.482,0.369,0.376},{0.482,0.369,0.376},{0.475,0.361,0.365},{0.455,0.337,0.337},{0.427,0.31,0.302},{0.4,0.282,0.278},{0.361,0.243,0.235},{0.314,0.196,0.188},{0.29,0.169,0.157},{0.275,0.157,0.145},{0.255,0.141,0.129},{0.243,0.129,0.11},{0.22,0.106,0.09},{0.196,0.086,0.071},{0.184,0.071,0.055},{0.169,0.059,0.043},{0.157,0.047,0.024},{0.145,0.043,0.016},{0.137,0.039,0.016},{0.133,0.035,0.016},{0.133,0.027,0.012},{0.129,0.02,0.008},{0.118,0.016,0.008},{0.114,0.012,0.008},{0.11,0.008,0.008},
{0.098,0.008,0.008},{0.098,0.008,0.008},{0.09,0.012,0.008},{0.086,0.008,0.008},{0.086,0.004,0.008},{0.086,0.008,0.008},{0.086,0.008,0.008},{0.082,0.008,0.008},{0.082,0.008,0.008},{0.078,0.008,0.008},{0.082,0.012,0.008},{0.086,0.008,0.004},{0.075,0.004,0.008},{0.063,0.004,0.004},{0.055,0.004,0.004},{0.047,0.004,0.004},{0.059,0.012,0.008},{0.271,0.133,0.098},{0.208,0.051,0.027},{0.165,0.012,0.008},{0.2,0.027,0.008},{0.247,0.063,0.02},{0.282,0.086,0.035},{0.298,0.102,0.051},{0.286,0.086,0.043},{0.243,0.055,0.027},{0.208,0.024,0.008},{0.188,0.016,0.008},{0.208,0.027,0.02},{0.318,0.106,0.071},{0.424,0.18,0.125},{0.549,0.282,0.2},{0.663,0.408,0.306},{0.753,0.522,0.412},{0.812,0.604,0.498},{0.835,0.635,0.541},{0.835,0.631,0.549},{0.788,0.569,0.49},{0.698,0.455,0.384},{0.545,0.298,0.239},{0.239,0.075,0.059},{0.173,0.012,0.008},{0.259,0.051,0.016},{0.302,0.082,0.024},{0.329,0.11,0.039},{0.345,0.125,0.051},{0.353,0.133,0.055},{0.353,0.133,0.055},{0.357,0.133,0.063},{0.357,0.133,0.063},{0.353,0.133,0.059},{0.349,0.129,0.055},{0.349,0.129,0.055},
{0.341,0.122,0.051},{0.341,0.118,0.043},{0.329,0.106,0.039},{0.322,0.098,0.035},{0.325,0.102,0.039},{0.322,0.098,0.031},{0.314,0.09,0.031},{0.314,0.086,0.027},{0.325,0.094,0.027},{0.337,0.106,0.043},{0.365,0.122,0.055},{0.455,0.212,0.129},{0.561,0.31,0.2},{0.58,0.322,0.212},{0.569,0.314,0.204},{0.561,0.302,0.2},{0.549,0.29,0.188},{0.537,0.278,0.184},{0.529,0.271,0.188},{0.518,0.263,0.18},{0.51,0.251,0.173},{0.498,0.243,0.157},{0.486,0.373,0.38},{0.486,0.373,0.38},{0.459,0.345,0.349},{0.459,0.341,0.337},{0.427,0.31,0.302},{0.392,0.275,0.267},{0.345,0.231,0.22},{0.302,0.184,0.176},{0.275,0.153,0.145},{0.255,0.141,0.129},{0.243,0.129,0.11},{0.22,0.106,0.09},{0.196,0.086,0.071},{0.184,0.071,0.055},{0.176,0.063,0.047},{0.169,0.055,0.031},{0.157,0.047,0.027},{0.145,0.039,0.016},{0.141,0.039,0.02},{0.141,0.035,0.016},{0.141,0.043,0.016},{0.141,0.043,0.02},{0.149,0.047,0.024},{0.153,0.051,0.024},{0.169,0.051,0.031},{0.173,0.059,0.035},{0.188,0.067,0.035},{0.196,0.075,0.043},{0.2,0.078,0.039},{0.208,0.082,0.039},{0.216,0.086,0.043},
{0.2,0.075,0.031},{0.196,0.071,0.027},{0.188,0.071,0.031},{0.2,0.078,0.035},{0.192,0.071,0.024},{0.184,0.063,0.027},{0.169,0.051,0.02},{0.161,0.051,0.024},{0.18,0.063,0.031},{0.224,0.094,0.055},{0.392,0.216,0.169},{0.439,0.239,0.184},{0.345,0.165,0.118},{0.173,0.024,0.012},{0.153,0.008,0.004},{0.161,0.008,0.008},{0.169,0.008,0.008},{0.173,0.008,0.008},{0.169,0.008,0.008},{0.165,0.008,0.008},{0.22,0.047,0.035},{0.361,0.141,0.102},{0.494,0.235,0.161},{0.561,0.286,0.204},{0.624,0.349,0.259},{0.69,0.427,0.329},{0.733,0.502,0.412},{0.769,0.557,0.467},{0.776,0.576,0.494},{0.737,0.533,0.463},{0.667,0.443,0.376},{0.584,0.337,0.278},{0.373,0.173,0.129},{0.125,0.02,0.016},{0.176,0.012,0.008},{0.259,0.055,0.016},{0.306,0.086,0.027},{0.322,0.102,0.035},{0.337,0.114,0.043},{0.345,0.122,0.051},{0.349,0.133,0.059},{0.349,0.125,0.059},{0.349,0.129,0.063},{0.349,0.125,0.055},{0.345,0.125,0.051},{0.349,0.125,0.051},{0.341,0.114,0.047},{0.349,0.118,0.055},{0.361,0.125,0.067},{0.373,0.133,0.075},{0.388,0.145,0.094},{0.404,0.157,0.106},{0.416,0.165,0.122},
{0.435,0.173,0.137},{0.459,0.188,0.153},{0.459,0.196,0.157},{0.498,0.314,0.275},{0.42,0.208,0.161},{0.412,0.161,0.09},{0.545,0.294,0.192},{0.557,0.302,0.2},{0.549,0.29,0.192},{0.549,0.29,0.188},{0.545,0.29,0.192},{0.541,0.282,0.192},{0.537,0.282,0.192},{0.533,0.275,0.188},{0.518,0.255,0.173},{0.506,0.247,0.169},{0.467,0.357,0.361},{0.467,0.357,0.361},{0.463,0.349,0.353},{0.447,0.329,0.325},{0.4,0.286,0.278},{0.361,0.243,0.235},{0.318,0.2,0.188},{0.298,0.176,0.169},{0.255,0.145,0.129},{0.231,0.122,0.106},{0.224,0.11,0.09},{0.208,0.09,0.075},{0.184,0.075,0.059},{0.173,0.059,0.043},{0.165,0.051,0.035},{0.161,0.047,0.027},{0.157,0.051,0.024},{0.169,0.059,0.035},{0.188,0.071,0.047},{0.212,0.094,0.063},{0.239,0.114,0.082},{0.271,0.137,0.102},{0.29,0.153,0.11},{0.306,0.165,0.118},{0.318,0.176,0.129},{0.325,0.18,0.125},{0.322,0.173,0.118},{0.306,0.165,0.106},{0.29,0.149,0.094},{0.275,0.137,0.082},{0.271,0.129,0.078},{0.29,0.145,0.09},{0.322,0.169,0.106},{0.345,0.18,0.106},{0.357,0.18,0.098},{0.345,0.169,0.09},{0.337,0.161,0.09},
{0.337,0.165,0.09},{0.341,0.169,0.09},{0.365,0.188,0.122},{0.439,0.255,0.2},{0.447,0.255,0.196},{0.427,0.231,0.173},{0.341,0.161,0.122},{0.192,0.055,0.035},{0.133,0.008,0.004},{0.153,0.008,0.008},{0.157,0.008,0.004},{0.192,0.031,0.024},{0.29,0.102,0.075},{0.435,0.212,0.161},{0.608,0.357,0.282},{0.71,0.471,0.376},{0.757,0.514,0.42},{0.741,0.49,0.4},{0.71,0.447,0.361},{0.663,0.408,0.325},{0.635,0.408,0.329},{0.608,0.388,0.318},{0.565,0.333,0.271},{0.498,0.247,0.188},{0.424,0.165,0.11},{0.255,0.075,0.047},{0.086,0.004,0.004},{0.173,0.012,0.008},{0.239,0.047,0.012},{0.282,0.075,0.016},{0.322,0.098,0.035},{0.357,0.129,0.059},{0.384,0.153,0.082},{0.408,0.173,0.102},{0.431,0.188,0.122},{0.439,0.192,0.133},{0.443,0.2,0.137},{0.463,0.212,0.153},{0.482,0.227,0.169},{0.506,0.247,0.188},{0.518,0.259,0.196},{0.529,0.259,0.204},{0.541,0.259,0.2},{0.553,0.278,0.216},{0.557,0.278,0.216},{0.557,0.259,0.2},{0.557,0.298,0.271},{0.596,0.345,0.337},{0.608,0.373,0.361},{0.596,0.357,0.353},{0.675,0.525,0.51},{0.69,0.569,0.553},{0.404,0.149,0.082},
{0.506,0.251,0.169},{0.525,0.275,0.184},{0.537,0.278,0.184},{0.537,0.278,0.18},{0.545,0.286,0.188},{0.541,0.286,0.196},{0.537,0.278,0.184},{0.533,0.275,0.188},{0.525,0.271,0.184},{0.518,0.267,0.188},{0.463,0.349,0.349},{0.463,0.349,0.349},{0.435,0.322,0.318},{0.412,0.294,0.286},{0.376,0.263,0.251},{0.341,0.224,0.208},{0.31,0.192,0.176},{0.267,0.153,0.141},{0.239,0.125,0.11},{0.22,0.102,0.086},{0.196,0.082,0.067},{0.176,0.067,0.051},{0.169,0.063,0.043},{0.169,0.055,0.039},{0.176,0.063,0.043},{0.212,0.09,0.063},{0.271,0.137,0.106},{0.318,0.176,0.137},{0.349,0.2,0.149},{0.369,0.212,0.153},{0.376,0.212,0.153},{0.376,0.212,0.149},{0.369,0.212,0.145},{0.361,0.204,0.137},{0.349,0.192,0.122},{0.333,0.18,0.114},{0.329,0.176,0.114},{0.345,0.188,0.125},{0.365,0.196,0.129},{0.376,0.204,0.125},{0.38,0.192,0.11},{0.392,0.208,0.125},{0.388,0.2,0.118},{0.38,0.196,0.114},{0.373,0.188,0.106},{0.365,0.176,0.098},{0.353,0.165,0.086},{0.361,0.176,0.094},{0.388,0.196,0.125},{0.463,0.267,0.208},{0.475,0.263,0.2},{0.439,0.224,0.161},{0.373,0.161,0.098},
{0.294,0.102,0.047},{0.208,0.047,0.016},{0.141,0.027,0.02},{0.263,0.098,0.075},{0.404,0.192,0.137},{0.533,0.29,0.208},{0.624,0.373,0.275},{0.698,0.443,0.349},{0.808,0.584,0.498},{0.847,0.631,0.545},{0.812,0.592,0.51},{0.741,0.506,0.431},{0.651,0.4,0.329},{0.561,0.318,0.243},{0.498,0.267,0.196},{0.475,0.247,0.18},{0.459,0.224,0.165},{0.439,0.192,0.133},{0.404,0.157,0.102},{0.314,0.114,0.078},{0.22,0.059,0.043},{0.337,0.118,0.082},{0.424,0.184,0.125},{0.49,0.231,0.165},{0.541,0.275,0.208},{0.545,0.271,0.204},{0.533,0.255,0.192},{0.553,0.282,0.216},{0.569,0.31,0.239},{0.588,0.337,0.263},{0.624,0.373,0.286},{0.655,0.396,0.314},{0.671,0.412,0.325},{0.671,0.412,0.325},{0.671,0.408,0.325},{0.663,0.396,0.318},{0.682,0.408,0.333},{0.694,0.427,0.349},{0.682,0.416,0.329},{0.647,0.361,0.286},{0.624,0.388,0.365},{0.675,0.478,0.49},{0.624,0.416,0.42},{0.565,0.329,0.322},{0.608,0.443,0.42},{0.569,0.439,0.424},{0.392,0.149,0.082},{0.447,0.2,0.125},{0.475,0.22,0.141},{0.486,0.231,0.145},{0.506,0.247,0.165},{0.529,0.275,0.18},{0.545,0.286,0.188},
{0.549,0.29,0.188},{0.545,0.286,0.188},{0.533,0.275,0.18},{0.541,0.298,0.224},{0.439,0.318,0.314},{0.439,0.318,0.314},{0.412,0.294,0.29},{0.38,0.263,0.251},{0.341,0.224,0.216},{0.306,0.192,0.176},{0.29,0.173,0.161},{0.251,0.137,0.118},{0.227,0.114,0.094},{0.212,0.094,0.078},{0.196,0.082,0.067},{0.196,0.078,0.063},{0.227,0.106,0.078},{0.294,0.157,0.125},{0.357,0.208,0.161},{0.4,0.239,0.188},{0.412,0.251,0.188},{0.412,0.239,0.173},{0.404,0.235,0.161},{0.392,0.224,0.149},{0.384,0.212,0.145},{0.376,0.208,0.137},{0.373,0.2,0.129},{0.38,0.216,0.141},{0.416,0.239,0.161},{0.439,0.255,0.161},{0.443,0.251,0.157},{0.451,0.255,0.165},{0.431,0.239,0.153},{0.384,0.2,0.11},{0.376,0.188,0.106},{0.388,0.2,0.114},{0.404,0.212,0.129},{0.396,0.208,0.122},{0.373,0.184,0.102},{0.4,0.204,0.122},{0.459,0.243,0.169},{0.51,0.275,0.204},{0.51,0.255,0.184},{0.498,0.243,0.169},{0.486,0.235,0.161},{0.471,0.227,0.153},{0.459,0.224,0.153},{0.459,0.231,0.161},{0.455,0.231,0.165},{0.506,0.271,0.192},{0.573,0.333,0.243},{0.655,0.412,0.306},{0.725,0.482,0.373},
{0.757,0.51,0.4},{0.788,0.549,0.443},{0.816,0.596,0.502},{0.812,0.604,0.514},{0.761,0.541,0.459},{0.655,0.412,0.341},{0.545,0.294,0.224},{0.498,0.243,0.18},{0.475,0.235,0.169},{0.471,0.235,0.169},{0.475,0.235,0.165},{0.478,0.231,0.165},{0.482,0.235,0.165},{0.518,0.259,0.184},{0.565,0.29,0.212},{0.612,0.329,0.243},{0.655,0.373,0.286},{0.702,0.427,0.337},{0.749,0.475,0.392},{0.769,0.478,0.396},{0.745,0.451,0.376},{0.737,0.463,0.388},{0.729,0.455,0.376},{0.757,0.498,0.416},{0.796,0.561,0.482},{0.82,0.6,0.522},{0.827,0.604,0.529},{0.824,0.604,0.529},{0.804,0.58,0.502},{0.765,0.525,0.451},{0.737,0.494,0.42},{0.69,0.439,0.373},{0.62,0.373,0.306},{0.522,0.267,0.212},{0.404,0.157,0.118},{0.329,0.102,0.082},{0.298,0.086,0.067},{0.275,0.071,0.039},{0.251,0.051,0.02},{0.306,0.094,0.039},{0.369,0.137,0.067},{0.388,0.149,0.078},{0.404,0.157,0.086},{0.431,0.176,0.106},{0.482,0.224,0.141},{0.529,0.271,0.184},{0.557,0.298,0.2},{0.561,0.302,0.196},{0.549,0.29,0.188},{0.533,0.275,0.176},{0.561,0.329,0.259},{0.435,0.318,0.314},{0.435,0.318,0.314},
{0.4,0.282,0.278},{0.353,0.235,0.227},{0.306,0.192,0.18},{0.286,0.173,0.161},{0.286,0.169,0.145},{0.298,0.165,0.133},{0.267,0.141,0.114},{0.282,0.149,0.11},{0.337,0.192,0.149},{0.424,0.263,0.2},{0.459,0.294,0.227},{0.467,0.302,0.231},{0.455,0.286,0.208},{0.443,0.267,0.188},{0.42,0.243,0.173},{0.408,0.231,0.157},{0.408,0.231,0.153},{0.412,0.235,0.161},{0.427,0.251,0.169},{0.451,0.271,0.188},{0.486,0.302,0.212},{0.506,0.31,0.208},{0.494,0.298,0.192},{0.49,0.294,0.188},{0.475,0.278,0.173},{0.408,0.216,0.125},{0.373,0.184,0.098},{0.404,0.208,0.122},{0.431,0.239,0.145},{0.427,0.235,0.145},{0.404,0.216,0.133},{0.396,0.212,0.133},{0.471,0.271,0.192},{0.569,0.345,0.267},{0.549,0.318,0.247},{0.502,0.263,0.192},{0.482,0.235,0.169},{0.475,0.235,0.165},{0.463,0.235,0.161},{0.467,0.239,0.165},{0.49,0.255,0.176},{0.529,0.29,0.2},{0.608,0.361,0.255},{0.682,0.439,0.325},{0.733,0.502,0.388},{0.769,0.537,0.42},{0.776,0.545,0.431},{0.776,0.537,0.439},{0.765,0.529,0.42},{0.745,0.514,0.416},{0.706,0.467,0.376},{0.631,0.376,0.298},{0.557,0.294,0.22},
{0.541,0.278,0.2},{0.541,0.271,0.192},{0.553,0.282,0.196},{0.565,0.294,0.212},{0.6,0.329,0.235},{0.651,0.38,0.286},{0.71,0.451,0.349},{0.776,0.514,0.404},{0.812,0.541,0.431},{0.831,0.569,0.463},{0.847,0.592,0.486},{0.847,0.592,0.494},{0.847,0.588,0.498},{0.875,0.631,0.549},{0.871,0.631,0.553},{0.867,0.627,0.549},{0.863,0.639,0.561},{0.855,0.643,0.569},{0.824,0.62,0.549},{0.765,0.549,0.482},{0.678,0.451,0.38},{0.58,0.353,0.298},{0.475,0.259,0.212},{0.361,0.165,0.125},{0.267,0.086,0.063},{0.2,0.039,0.024},{0.173,0.02,0.012},{0.169,0.012,0.012},{0.18,0.02,0.012},{0.22,0.035,0.016},{0.267,0.063,0.02},{0.306,0.082,0.031},{0.325,0.098,0.043},{0.341,0.118,0.051},{0.353,0.114,0.051},{0.361,0.122,0.055},{0.373,0.129,0.063},{0.408,0.149,0.082},{0.498,0.243,0.153},{0.565,0.306,0.208},{0.576,0.318,0.212},{0.565,0.306,0.2},{0.549,0.29,0.196},{0.529,0.271,0.184},{0.596,0.384,0.325},{0.42,0.302,0.294},{0.42,0.302,0.294},{0.373,0.255,0.247},{0.322,0.204,0.188},{0.302,0.18,0.161},{0.325,0.192,0.157},{0.373,0.227,0.169},{0.514,0.341,0.247},
{0.741,0.541,0.396},{0.82,0.616,0.451},{0.792,0.592,0.427},{0.745,0.541,0.384},{0.69,0.482,0.329},{0.584,0.384,0.259},{0.518,0.322,0.212},{0.486,0.294,0.2},{0.467,0.278,0.192},{0.459,0.267,0.184},{0.459,0.275,0.188},{0.49,0.31,0.216},{0.525,0.345,0.247},{0.549,0.361,0.251},{0.541,0.349,0.227},{0.522,0.322,0.208},{0.51,0.31,0.192},{0.494,0.298,0.184},{0.463,0.267,0.165},{0.451,0.251,0.153},{0.459,0.263,0.161},{0.455,0.259,0.173},{0.451,0.267,0.176},{0.443,0.259,0.173},{0.447,0.255,0.169},{0.443,0.247,0.165},{0.659,0.447,0.357},{0.643,0.42,0.337},{0.592,0.353,0.275},{0.557,0.314,0.235},{0.541,0.29,0.208},{0.533,0.29,0.2},{0.545,0.314,0.216},{0.573,0.337,0.231},{0.624,0.373,0.267},{0.671,0.42,0.306},{0.71,0.463,0.349},{0.741,0.502,0.388},{0.749,0.51,0.4},{0.749,0.51,0.4},{0.718,0.482,0.38},{0.678,0.431,0.337},{0.651,0.392,0.302},{0.612,0.345,0.263},{0.608,0.337,0.247},{0.659,0.376,0.29},{0.694,0.416,0.322},{0.737,0.475,0.373},{0.757,0.506,0.396},{0.757,0.502,0.392},{0.776,0.529,0.416},{0.824,0.58,0.471},{0.859,0.62,0.514},
{0.886,0.659,0.553},{0.918,0.698,0.6},{0.933,0.706,0.612},{0.941,0.729,0.639},{0.945,0.737,0.655},{0.941,0.745,0.667},{0.933,0.741,0.671},{0.906,0.718,0.651},{0.847,0.639,0.569},{0.757,0.522,0.463},{0.596,0.38,0.333},{0.4,0.212,0.176},{0.235,0.082,0.059},{0.149,0.024,0.016},{0.125,0.008,0.008},{0.125,0.004,0.008},{0.141,0.008,0.008},{0.173,0.012,0.008},{0.208,0.024,0.008},{0.239,0.039,0.012},{0.271,0.063,0.024},{0.306,0.086,0.043},{0.341,0.11,0.059},{0.376,0.137,0.082},{0.396,0.153,0.102},{0.42,0.169,0.118},{0.451,0.188,0.141},{0.478,0.208,0.161},{0.506,0.235,0.18},{0.51,0.302,0.251},{0.455,0.22,0.161},{0.451,0.188,0.11},{0.557,0.298,0.2},{0.6,0.337,0.231},{0.592,0.337,0.227},{0.576,0.318,0.216},{0.553,0.298,0.204},{0.541,0.282,0.196},{0.624,0.427,0.376},{0.384,0.267,0.259},{0.384,0.267,0.259},{0.345,0.227,0.212},{0.349,0.22,0.192},{0.404,0.259,0.2},{0.651,0.463,0.333},{0.882,0.678,0.494},{0.965,0.761,0.561},{0.961,0.749,0.541},{0.922,0.71,0.494},{0.882,0.663,0.447},{0.843,0.627,0.416},{0.812,0.592,0.392},{0.765,0.549,0.369},
{0.671,0.451,0.29},{0.553,0.341,0.22},{0.541,0.341,0.22},{0.604,0.404,0.278},{0.624,0.435,0.314},{0.612,0.427,0.31},{0.588,0.4,0.278},{0.561,0.369,0.247},{0.545,0.353,0.231},{0.533,0.333,0.212},{0.514,0.314,0.188},{0.482,0.286,0.176},{0.467,0.271,0.165},{0.467,0.271,0.173},{0.467,0.271,0.18},{0.459,0.263,0.176},{0.459,0.263,0.176},{0.443,0.247,0.157},{0.435,0.239,0.145},{0.494,0.29,0.204},{0.702,0.482,0.392},{0.671,0.431,0.337},{0.675,0.42,0.314},{0.671,0.416,0.306},{0.667,0.412,0.298},{0.655,0.4,0.286},{0.643,0.384,0.267},{0.643,0.388,0.271},{0.663,0.4,0.282},{0.667,0.404,0.29},{0.659,0.396,0.286},{0.647,0.388,0.286},{0.596,0.333,0.235},{0.561,0.294,0.2},{0.569,0.298,0.204},{0.616,0.345,0.239},{0.663,0.388,0.278},{0.714,0.451,0.341},{0.765,0.514,0.408},{0.8,0.561,0.455},{0.816,0.588,0.486},{0.796,0.549,0.459},{0.765,0.522,0.435},{0.741,0.49,0.392},{0.729,0.478,0.373},{0.729,0.486,0.388},{0.753,0.506,0.42},{0.78,0.553,0.467},{0.792,0.569,0.486},{0.769,0.537,0.467},{0.714,0.486,0.424},{0.616,0.412,0.357},{0.475,0.298,0.251},
{0.373,0.192,0.161},{0.31,0.125,0.098},{0.278,0.102,0.075},{0.286,0.122,0.094},{0.333,0.145,0.106},{0.384,0.173,0.133},{0.439,0.208,0.157},{0.463,0.216,0.169},{0.467,0.216,0.169},{0.467,0.216,0.169},{0.475,0.224,0.173},{0.49,0.235,0.176},{0.522,0.267,0.204},{0.545,0.286,0.22},{0.573,0.302,0.231},{0.573,0.286,0.224},{0.561,0.282,0.216},{0.561,0.282,0.212},{0.557,0.255,0.188},{0.608,0.345,0.298},{0.647,0.388,0.373},{0.694,0.451,0.431},{0.714,0.467,0.443},{0.8,0.686,0.671},{0.71,0.569,0.541},{0.573,0.306,0.204},{0.624,0.357,0.243},{0.612,0.345,0.243},{0.592,0.329,0.227},{0.584,0.322,0.22},{0.576,0.314,0.212},{0.553,0.294,0.196},{0.647,0.459,0.416},{0.388,0.259,0.243},{0.388,0.259,0.243},{0.537,0.373,0.294},{0.784,0.592,0.439},{0.937,0.733,0.529},{0.992,0.78,0.561},{0.973,0.761,0.545},{0.953,0.737,0.518},{0.902,0.682,0.467},{0.855,0.631,0.42},{0.804,0.576,0.373},{0.761,0.529,0.333},{0.737,0.502,0.314},{0.69,0.459,0.286},{0.729,0.506,0.337},{0.816,0.608,0.435},{0.878,0.678,0.498},{0.812,0.616,0.439},{0.714,0.51,0.341},{0.616,0.416,0.271},
{0.565,0.369,0.239},{0.537,0.341,0.216},{0.525,0.322,0.196},{0.498,0.294,0.169},{0.471,0.271,0.149},{0.467,0.255,0.149},{0.471,0.267,0.165},{0.471,0.267,0.169},{0.463,0.259,0.165},{0.439,0.235,0.141},{0.42,0.22,0.133},{0.443,0.243,0.153},{0.482,0.286,0.196},{0.588,0.376,0.286},{0.69,0.455,0.365},{0.714,0.463,0.349},{0.718,0.463,0.345},{0.714,0.459,0.333},{0.69,0.431,0.31},{0.671,0.408,0.286},{0.667,0.4,0.278},{0.659,0.388,0.271},{0.651,0.38,0.259},{0.627,0.349,0.235},{0.616,0.337,0.227},{0.627,0.353,0.239},{0.663,0.388,0.271},{0.725,0.463,0.345},{0.773,0.518,0.4},{0.788,0.533,0.424},{0.78,0.525,0.416},{0.773,0.522,0.412},{0.769,0.518,0.408},{0.757,0.51,0.404},{0.733,0.482,0.38},{0.675,0.416,0.314},{0.624,0.361,0.278},{0.62,0.365,0.271},{0.62,0.365,0.271},{0.608,0.357,0.263},{0.58,0.314,0.235},{0.545,0.263,0.188},{0.525,0.235,0.165},{0.49,0.204,0.137},{0.463,0.204,0.145},{0.49,0.235,0.165},{0.553,0.282,0.2},{0.604,0.322,0.231},{0.635,0.357,0.275},{0.663,0.388,0.306},{0.678,0.392,0.31},{0.667,0.373,0.29},{0.643,0.345,0.275},
{0.639,0.353,0.278},{0.651,0.38,0.294},{0.678,0.42,0.337},{0.69,0.439,0.353},{0.698,0.443,0.361},{0.702,0.451,0.369},{0.706,0.447,0.365},{0.694,0.427,0.345},{0.678,0.404,0.329},{0.718,0.447,0.376},{0.718,0.439,0.365},{0.718,0.427,0.341},{0.722,0.424,0.353},{0.749,0.518,0.467},{0.847,0.678,0.678},{0.89,0.729,0.722},{0.886,0.718,0.702},{0.941,0.875,0.863},{0.831,0.71,0.678},{0.635,0.365,0.247},{0.627,0.361,0.243},{0.612,0.349,0.239},{0.592,0.329,0.231},{0.584,0.318,0.22},{0.573,0.314,0.212},{0.565,0.302,0.204},{0.667,0.494,0.455},{0.812,0.616,0.447},{0.812,0.616,0.447},{0.988,0.796,0.576},{0.996,0.804,0.58},{0.976,0.769,0.545},{0.922,0.698,0.482},{0.855,0.635,0.427},{0.788,0.565,0.369},{0.718,0.49,0.31},{0.682,0.459,0.286},{0.698,0.471,0.302},{0.78,0.569,0.388},{0.843,0.639,0.463},{0.894,0.694,0.518},{0.929,0.733,0.549},{0.906,0.706,0.506},{0.867,0.655,0.443},{0.8,0.588,0.384},{0.722,0.502,0.329},{0.616,0.412,0.259},{0.529,0.325,0.192},{0.475,0.271,0.145},{0.463,0.259,0.133},{0.478,0.275,0.149},{0.494,0.29,0.173},{0.494,0.286,0.173},
{0.471,0.263,0.157},{0.447,0.235,0.129},{0.447,0.235,0.129},{0.518,0.31,0.2},{0.604,0.404,0.29},{0.651,0.459,0.337},{0.682,0.502,0.388},{0.671,0.447,0.341},{0.714,0.463,0.345},{0.733,0.478,0.353},{0.733,0.475,0.345},{0.725,0.467,0.333},{0.722,0.459,0.329},{0.718,0.455,0.325},{0.718,0.459,0.325},{0.725,0.455,0.325},{0.729,0.463,0.337},{0.745,0.478,0.353},{0.761,0.502,0.38},{0.784,0.537,0.416},{0.8,0.569,0.451},{0.8,0.565,0.451},{0.784,0.541,0.431},{0.761,0.514,0.4},{0.749,0.494,0.384},{0.741,0.475,0.373},{0.733,0.471,0.369},{0.714,0.451,0.357},{0.698,0.427,0.329},{0.667,0.392,0.294},{0.643,0.369,0.267},{0.624,0.357,0.259},{0.62,0.361,0.267},{0.631,0.376,0.286},{0.639,0.376,0.282},{0.655,0.384,0.286},{0.667,0.4,0.298},{0.686,0.424,0.325},{0.733,0.471,0.365},{0.761,0.49,0.384},{0.788,0.514,0.412},{0.804,0.537,0.435},{0.827,0.58,0.478},{0.839,0.584,0.494},{0.839,0.576,0.494},{0.843,0.576,0.502},{0.82,0.537,0.463},{0.82,0.561,0.478},{0.804,0.545,0.459},{0.816,0.58,0.498},{0.835,0.612,0.529},{0.855,0.627,0.553},{0.871,0.651,0.576},
{0.871,0.659,0.584},{0.867,0.643,0.561},{0.859,0.62,0.541},{0.875,0.631,0.561},{0.875,0.62,0.549},{0.875,0.624,0.553},{0.855,0.58,0.506},{0.835,0.545,0.482},{0.827,0.533,0.467},{0.831,0.537,0.455},{0.769,0.478,0.38},{0.671,0.388,0.29},{0.643,0.361,0.247},{0.635,0.365,0.243},{0.624,0.361,0.247},{0.616,0.353,0.243},{0.608,0.345,0.239},{0.596,0.333,0.227},{0.584,0.322,0.22},{0.573,0.31,0.212},{0.69,0.537,0.514},{0.992,0.8,0.565},{0.992,0.8,0.565},{0.969,0.769,0.541},{0.91,0.69,0.471},{0.843,0.627,0.412},{0.824,0.608,0.404},{0.831,0.62,0.424},{0.839,0.631,0.439},{0.863,0.659,0.471},{0.894,0.698,0.514},{0.933,0.737,0.557},{0.937,0.749,0.569},{0.898,0.706,0.525},{0.851,0.651,0.459},{0.812,0.6,0.404},{0.8,0.58,0.376},{0.765,0.549,0.365},{0.706,0.486,0.314},{0.635,0.416,0.263},{0.537,0.325,0.192},{0.49,0.286,0.165},{0.498,0.294,0.176},{0.514,0.314,0.192},{0.522,0.318,0.2},{0.529,0.333,0.216},{0.553,0.357,0.235},{0.608,0.416,0.29},{0.671,0.486,0.361},{0.729,0.557,0.439},{0.769,0.612,0.494},{0.788,0.631,0.522},{0.796,0.643,0.533},
{0.773,0.616,0.51},{0.725,0.482,0.365},{0.769,0.518,0.384},{0.776,0.518,0.38},{0.788,0.533,0.396},{0.796,0.545,0.408},{0.796,0.545,0.404},{0.788,0.533,0.396},{0.792,0.537,0.396},{0.804,0.553,0.416},{0.808,0.553,0.416},{0.804,0.545,0.42},{0.796,0.533,0.404},{0.788,0.525,0.404},{0.776,0.514,0.396},{0.757,0.49,0.373},{0.745,0.478,0.361},{0.765,0.502,0.384},{0.788,0.522,0.404},{0.796,0.522,0.412},{0.788,0.514,0.404},{0.78,0.478,0.376},{0.78,0.482,0.388},{0.788,0.482,0.392},{0.773,0.463,0.365},{0.757,0.447,0.345},{0.761,0.467,0.365},{0.792,0.525,0.416},{0.827,0.584,0.482},{0.851,0.616,0.522},{0.882,0.655,0.565},{0.886,0.671,0.58},{0.914,0.678,0.592},{0.922,0.682,0.592},{0.925,0.69,0.608},{0.922,0.698,0.616},{0.922,0.686,0.608},{0.898,0.659,0.576},{0.898,0.651,0.557},{0.898,0.651,0.565},{0.906,0.667,0.584},{0.906,0.671,0.596},{0.906,0.682,0.612},{0.925,0.714,0.643},{0.941,0.745,0.682},{0.957,0.769,0.706},{0.957,0.757,0.69},{0.945,0.733,0.659},{0.929,0.714,0.631},{0.894,0.663,0.569},{0.851,0.6,0.51},{0.839,0.588,0.506},{0.839,0.588,0.498},
{0.812,0.537,0.435},{0.757,0.463,0.365},{0.702,0.4,0.294},{0.671,0.365,0.251},{0.667,0.369,0.255},{0.663,0.384,0.267},{0.659,0.388,0.271},{0.659,0.392,0.278},{0.647,0.388,0.271},{0.639,0.38,0.263},{0.631,0.369,0.247},{0.612,0.349,0.239},{0.6,0.337,0.231},{0.584,0.322,0.224},{0.71,0.569,0.545},{0.937,0.722,0.506},{0.937,0.722,0.506},{0.918,0.702,0.482},{0.925,0.71,0.49},{0.937,0.729,0.518},{0.937,0.733,0.537},{0.945,0.741,0.545},{0.957,0.765,0.576},{0.961,0.776,0.592},{0.902,0.718,0.537},{0.855,0.663,0.478},{0.804,0.6,0.416},{0.765,0.561,0.373},{0.769,0.557,0.369},{0.741,0.533,0.361},{0.702,0.494,0.329},{0.631,0.42,0.267},{0.569,0.357,0.212},{0.522,0.31,0.176},{0.49,0.29,0.165},{0.494,0.294,0.18},{0.51,0.314,0.204},{0.533,0.337,0.224},{0.565,0.373,0.247},{0.612,0.424,0.298},{0.671,0.49,0.38},{0.71,0.537,0.435},{0.722,0.557,0.455},{0.718,0.565,0.463},{0.722,0.561,0.463},{0.714,0.549,0.451},{0.682,0.514,0.412},{0.678,0.482,0.373},{0.78,0.529,0.4},{0.824,0.576,0.439},{0.847,0.6,0.459},{0.859,0.612,0.475},{0.859,0.608,0.467},
{0.851,0.604,0.463},{0.847,0.6,0.455},{0.843,0.592,0.447},{0.843,0.592,0.455},{0.839,0.588,0.451},{0.831,0.58,0.443},{0.831,0.576,0.439},{0.816,0.561,0.424},{0.808,0.549,0.416},{0.812,0.557,0.427},{0.824,0.58,0.451},{0.847,0.6,0.471},{0.867,0.62,0.494},{0.886,0.643,0.529},{0.91,0.671,0.573},{0.918,0.675,0.584},{0.91,0.643,0.553},{0.91,0.651,0.553},{0.925,0.682,0.592},{0.941,0.71,0.624},{0.937,0.718,0.627},{0.941,0.718,0.631},{0.949,0.741,0.655},{0.949,0.757,0.667},{0.945,0.753,0.671},{0.957,0.757,0.678},{0.965,0.753,0.671},{0.969,0.749,0.663},{0.965,0.741,0.663},{0.965,0.753,0.675},{0.969,0.765,0.682},{0.965,0.761,0.678},{0.953,0.745,0.671},{0.941,0.729,0.651},{0.914,0.698,0.616},{0.878,0.651,0.573},{0.831,0.592,0.522},{0.804,0.553,0.471},{0.78,0.522,0.427},{0.773,0.498,0.4},{0.769,0.49,0.38},{0.753,0.459,0.341},{0.729,0.427,0.302},{0.725,0.42,0.286},{0.725,0.42,0.294},{0.725,0.424,0.298},{0.722,0.427,0.302},{0.71,0.416,0.29},{0.702,0.404,0.278},{0.702,0.412,0.294},{0.694,0.416,0.298},{0.686,0.412,0.294},{0.686,0.42,0.294},
{0.682,0.416,0.298},{0.671,0.404,0.29},{0.663,0.396,0.278},{0.651,0.388,0.275},{0.643,0.373,0.255},{0.631,0.369,0.255},{0.616,0.349,0.239},{0.6,0.345,0.247},{0.729,0.596,0.584},{0.988,0.765,0.537},{0.988,0.765,0.537},{0.984,0.776,0.557},{0.984,0.78,0.565},{0.988,0.808,0.608},{0.984,0.816,0.627},{0.941,0.769,0.604},{0.871,0.694,0.537},{0.82,0.635,0.475},{0.769,0.573,0.408},{0.741,0.545,0.373},{0.729,0.529,0.369},{0.722,0.525,0.369},{0.698,0.502,0.349},{0.635,0.431,0.282},{0.588,0.388,0.251},{0.561,0.357,0.227},{0.557,0.357,0.231},{0.557,0.361,0.235},{0.565,0.365,0.239},{0.569,0.376,0.251},{0.565,0.376,0.259},{0.588,0.404,0.29},{0.592,0.412,0.31},{0.596,0.424,0.329},{0.596,0.42,0.325},{0.6,0.42,0.322},{0.596,0.416,0.314},{0.588,0.404,0.298},{0.592,0.416,0.31},{0.588,0.416,0.325},{0.541,0.38,0.302},{0.58,0.38,0.298},{0.824,0.584,0.455},{0.867,0.627,0.49},{0.89,0.651,0.518},{0.902,0.663,0.529},{0.894,0.655,0.525},{0.89,0.655,0.522},{0.894,0.647,0.51},{0.89,0.643,0.506},{0.875,0.627,0.49},{0.871,0.62,0.482},{0.859,0.612,0.467},
{0.847,0.592,0.451},{0.851,0.6,0.463},{0.847,0.604,0.475},{0.847,0.612,0.482},{0.843,0.616,0.486},{0.855,0.627,0.502},{0.859,0.631,0.506},{0.867,0.631,0.514},{0.878,0.643,0.533},{0.894,0.659,0.553},{0.914,0.678,0.576},{0.941,0.718,0.627},{0.965,0.761,0.678},{0.953,0.745,0.663},{0.945,0.737,0.655},{0.922,0.725,0.647},{0.914,0.725,0.643},{0.918,0.714,0.635},{0.933,0.737,0.663},{0.949,0.753,0.678},{0.933,0.729,0.647},{0.878,0.659,0.576},{0.722,0.506,0.439},{0.522,0.357,0.314},{0.471,0.282,0.247},{0.435,0.224,0.192},{0.396,0.173,0.137},{0.353,0.125,0.086},{0.337,0.09,0.043},{0.361,0.094,0.035},{0.435,0.145,0.075},{0.502,0.208,0.118},{0.565,0.271,0.165},{0.62,0.325,0.212},{0.667,0.376,0.255},{0.686,0.408,0.282},{0.71,0.431,0.306},{0.714,0.439,0.31},{0.722,0.439,0.314},{0.725,0.463,0.329},{0.729,0.463,0.337},{0.729,0.467,0.341},{0.729,0.463,0.337},{0.725,0.463,0.337},{0.722,0.463,0.337},{0.714,0.451,0.325},{0.71,0.451,0.329},{0.702,0.443,0.318},{0.69,0.424,0.306},{0.682,0.42,0.298},{0.671,0.404,0.286},{0.655,0.388,0.271},{0.643,0.38,0.267},
{0.624,0.357,0.243},{0.624,0.376,0.278},{0.737,0.616,0.604},{0.992,0.808,0.592},{0.992,0.808,0.592},{0.988,0.827,0.627},{0.933,0.773,0.592},{0.859,0.682,0.525},{0.788,0.616,0.467},{0.757,0.58,0.439},{0.725,0.549,0.4},{0.714,0.529,0.388},{0.71,0.529,0.396},{0.722,0.545,0.416},{0.718,0.545,0.424},{0.69,0.518,0.396},{0.659,0.478,0.361},{0.643,0.463,0.341},{0.627,0.439,0.322},{0.624,0.439,0.314},{0.62,0.431,0.306},{0.616,0.427,0.31},{0.612,0.439,0.325},{0.58,0.412,0.31},{0.537,0.369,0.275},{0.475,0.306,0.216},{0.431,0.251,0.161},{0.416,0.212,0.122},{0.392,0.184,0.086},{0.376,0.165,0.071},{0.361,0.157,0.071},{0.302,0.118,0.059},{0.247,0.082,0.039},{0.239,0.067,0.031},{0.286,0.086,0.047},{0.408,0.176,0.106},{0.835,0.596,0.467},{0.898,0.663,0.533},{0.925,0.698,0.569},{0.929,0.698,0.576},{0.925,0.69,0.565},{0.918,0.675,0.545},{0.914,0.675,0.549},{0.91,0.675,0.549},{0.906,0.682,0.557},{0.902,0.682,0.557},{0.898,0.675,0.553},{0.894,0.671,0.545},{0.882,0.655,0.533},{0.882,0.651,0.533},{0.878,0.643,0.514},{0.867,0.624,0.494},{0.863,0.624,0.494},
{0.851,0.612,0.482},{0.831,0.588,0.467},{0.812,0.569,0.455},{0.816,0.58,0.467},{0.831,0.596,0.478},{0.847,0.608,0.498},{0.855,0.616,0.506},{0.839,0.596,0.498},{0.827,0.592,0.494},{0.804,0.573,0.478},{0.792,0.553,0.467},{0.769,0.525,0.443},{0.722,0.459,0.384},{0.675,0.384,0.31},{0.596,0.278,0.212},{0.486,0.161,0.102},{0.373,0.09,0.051},{0.133,0.008,0.008},{0.196,0.008,0.008},{0.259,0.031,0.008},{0.306,0.055,0.016},{0.329,0.071,0.02},{0.357,0.082,0.027},{0.373,0.09,0.031},{0.392,0.106,0.043},{0.412,0.122,0.051},{0.443,0.161,0.078},{0.482,0.208,0.114},{0.529,0.259,0.157},{0.565,0.29,0.184},{0.604,0.341,0.227},{0.643,0.384,0.267},{0.675,0.416,0.298},{0.702,0.443,0.322},{0.722,0.467,0.341},{0.733,0.478,0.357},{0.733,0.486,0.365},{0.737,0.482,0.365},{0.737,0.482,0.361},{0.737,0.482,0.365},{0.725,0.467,0.349},{0.722,0.467,0.345},{0.718,0.459,0.337},{0.702,0.443,0.318},{0.69,0.431,0.31},{0.671,0.408,0.286},{0.663,0.396,0.282},{0.643,0.38,0.267},{0.655,0.424,0.333},{0.753,0.635,0.631},{0.804,0.616,0.427},{0.804,0.616,0.427},{0.682,0.478,0.306},
{0.647,0.447,0.29},{0.647,0.459,0.318},{0.69,0.518,0.388},{0.718,0.561,0.439},{0.733,0.584,0.467},{0.725,0.573,0.459},{0.706,0.545,0.435},{0.675,0.506,0.396},{0.651,0.471,0.353},{0.631,0.447,0.322},{0.624,0.443,0.322},{0.616,0.439,0.329},{0.576,0.404,0.306},{0.498,0.333,0.239},{0.486,0.318,0.224},{0.459,0.286,0.188},{0.435,0.263,0.165},{0.388,0.224,0.125},{0.349,0.176,0.082},{0.349,0.165,0.078},{0.373,0.18,0.082},{0.408,0.208,0.106},{0.42,0.216,0.118},{0.424,0.22,0.122},{0.443,0.235,0.145},{0.463,0.259,0.169},{0.431,0.235,0.157},{0.404,0.216,0.141},{0.455,0.239,0.161},{0.459,0.224,0.145},{0.745,0.498,0.388},{0.902,0.667,0.537},{0.937,0.714,0.592},{0.949,0.733,0.616},{0.945,0.733,0.616},{0.937,0.718,0.6},{0.925,0.71,0.588},{0.929,0.722,0.596},{0.925,0.718,0.6},{0.925,0.714,0.604},{0.925,0.718,0.6},{0.918,0.706,0.584},{0.914,0.698,0.576},{0.91,0.69,0.569},{0.906,0.671,0.553},{0.902,0.663,0.541},{0.898,0.655,0.529},{0.89,0.655,0.529},{0.859,0.627,0.51},{0.843,0.612,0.502},{0.851,0.608,0.494},{0.835,0.584,0.475},{0.816,0.549,0.443},
{0.788,0.518,0.408},{0.757,0.467,0.357},{0.722,0.427,0.325},{0.682,0.392,0.294},{0.651,0.365,0.271},{0.62,0.333,0.247},{0.596,0.294,0.204},{0.588,0.267,0.176},{0.584,0.255,0.165},{0.573,0.243,0.161},{0.565,0.235,0.153},{0.498,0.196,0.133},{0.439,0.153,0.102},{0.408,0.129,0.078},{0.376,0.098,0.051},{0.353,0.086,0.031},{0.345,0.078,0.024},{0.357,0.082,0.027},{0.361,0.09,0.031},{0.365,0.09,0.031},{0.361,0.094,0.035},{0.361,0.098,0.035},{0.361,0.102,0.035},{0.38,0.118,0.051},{0.404,0.137,0.067},{0.431,0.173,0.094},{0.467,0.208,0.125},{0.51,0.251,0.161},{0.561,0.302,0.208},{0.604,0.349,0.251},{0.659,0.412,0.302},{0.69,0.443,0.329},{0.714,0.463,0.345},{0.733,0.482,0.369},{0.741,0.486,0.369},{0.741,0.486,0.369},{0.733,0.475,0.357},{0.725,0.471,0.349},{0.71,0.451,0.325},{0.69,0.431,0.31},{0.682,0.424,0.306},{0.667,0.408,0.294},{0.682,0.471,0.396},{0.765,0.647,0.643},{0.706,0.506,0.345},{0.706,0.506,0.345},{0.706,0.525,0.388},{0.714,0.557,0.431},{0.706,0.561,0.451},{0.686,0.545,0.443},{0.624,0.478,0.373},{0.573,0.416,0.31},{0.565,0.388,0.275},
{0.584,0.4,0.278},{0.592,0.408,0.282},{0.596,0.408,0.29},{0.573,0.388,0.282},{0.498,0.306,0.212},{0.439,0.247,0.157},{0.435,0.255,0.169},{0.439,0.263,0.173},{0.384,0.216,0.129},{0.345,0.18,0.106},{0.361,0.18,0.102},{0.376,0.196,0.106},{0.4,0.208,0.11},{0.416,0.224,0.125},{0.424,0.231,0.133},{0.427,0.235,0.141},{0.447,0.251,0.157},{0.459,0.267,0.173},{0.486,0.286,0.2},{0.482,0.282,0.196},{0.482,0.286,0.2},{0.482,0.282,0.2},{0.482,0.282,0.2},{0.502,0.302,0.224},{0.561,0.345,0.259},{0.847,0.608,0.482},{0.937,0.706,0.592},{0.953,0.729,0.616},{0.953,0.741,0.627},{0.945,0.741,0.631},{0.945,0.741,0.624},{0.949,0.745,0.624},{0.949,0.749,0.631},{0.945,0.741,0.624},{0.941,0.733,0.616},{0.933,0.718,0.6},{0.922,0.702,0.588},{0.918,0.698,0.58},{0.91,0.682,0.561},{0.906,0.682,0.565},{0.906,0.682,0.569},{0.906,0.686,0.584},{0.918,0.706,0.608},{0.925,0.706,0.604},{0.918,0.675,0.569},{0.882,0.62,0.506},{0.847,0.565,0.459},{0.824,0.533,0.431},{0.824,0.533,0.431},{0.816,0.529,0.42},{0.788,0.502,0.388},{0.737,0.447,0.345},{0.722,0.424,0.325},
{0.702,0.412,0.306},{0.682,0.392,0.294},{0.678,0.392,0.29},{0.686,0.392,0.29},{0.678,0.38,0.275},{0.675,0.369,0.267},{0.655,0.341,0.247},{0.627,0.31,0.224},{0.596,0.275,0.192},{0.596,0.275,0.192},{0.573,0.259,0.184},{0.525,0.216,0.149},{0.49,0.188,0.118},{0.471,0.173,0.11},{0.455,0.165,0.102},{0.435,0.157,0.094},{0.42,0.141,0.082},{0.392,0.122,0.063},{0.38,0.118,0.063},{0.38,0.118,0.067},{0.384,0.122,0.067},{0.38,0.11,0.055},{0.369,0.094,0.039},{0.376,0.102,0.043},{0.431,0.161,0.086},{0.498,0.227,0.145},{0.631,0.373,0.263},{0.733,0.486,0.369},{0.757,0.51,0.392},{0.757,0.502,0.38},{0.753,0.498,0.38},{0.741,0.482,0.365},{0.725,0.471,0.353},{0.71,0.455,0.333},{0.702,0.447,0.329},{0.698,0.451,0.345},{0.71,0.525,0.467},{0.776,0.663,0.659},{0.6,0.412,0.278},{0.6,0.412,0.278},{0.58,0.4,0.278},{0.573,0.396,0.286},{0.561,0.396,0.294},{0.561,0.396,0.298},{0.596,0.431,0.329},{0.608,0.427,0.325},{0.565,0.384,0.278},{0.522,0.329,0.227},{0.482,0.278,0.176},{0.467,0.247,0.153},{0.49,0.278,0.18},{0.533,0.329,0.231},{0.537,0.333,0.231},
{0.478,0.251,0.149},{0.439,0.192,0.098},{0.424,0.18,0.086},{0.416,0.173,0.086},{0.404,0.161,0.075},{0.373,0.137,0.059},{0.365,0.133,0.055},{0.376,0.149,0.071},{0.404,0.184,0.094},{0.412,0.196,0.106},{0.424,0.208,0.11},{0.424,0.212,0.114},{0.412,0.192,0.106},{0.384,0.165,0.078},{0.361,0.141,0.059},{0.349,0.137,0.059},{0.361,0.145,0.071},{0.333,0.118,0.051},{0.263,0.067,0.027},{0.239,0.071,0.051},{0.573,0.365,0.294},{0.839,0.608,0.506},{0.945,0.729,0.608},{0.945,0.733,0.616},{0.945,0.737,0.62},{0.945,0.741,0.627},{0.953,0.749,0.635},{0.957,0.753,0.635},{0.957,0.753,0.647},{0.945,0.741,0.631},{0.937,0.737,0.616},{0.925,0.718,0.6},{0.918,0.714,0.608},{0.918,0.714,0.612},{0.929,0.725,0.62},{0.929,0.722,0.62},{0.929,0.714,0.616},{0.941,0.725,0.627},{0.945,0.725,0.631},{0.941,0.706,0.612},{0.922,0.667,0.565},{0.91,0.643,0.541},{0.914,0.643,0.541},{0.922,0.655,0.569},{0.918,0.667,0.573},{0.898,0.651,0.553},{0.886,0.639,0.541},{0.878,0.627,0.518},{0.851,0.596,0.482},{0.839,0.58,0.467},{0.839,0.588,0.478},{0.831,0.576,0.463},{0.827,0.569,0.463},
{0.824,0.565,0.471},{0.796,0.518,0.435},{0.765,0.471,0.392},{0.741,0.447,0.373},{0.706,0.4,0.318},{0.694,0.408,0.322},{0.671,0.376,0.286},{0.651,0.353,0.263},{0.627,0.337,0.247},{0.635,0.333,0.251},{0.624,0.314,0.239},{0.6,0.278,0.204},{0.6,0.29,0.216},{0.588,0.271,0.2},{0.588,0.263,0.208},{0.604,0.294,0.255},{0.6,0.275,0.227},{0.569,0.263,0.216},{0.502,0.247,0.196},{0.463,0.169,0.094},{0.635,0.365,0.255},{0.761,0.514,0.396},{0.788,0.541,0.424},{0.776,0.529,0.408},{0.769,0.522,0.4},{0.749,0.494,0.376},{0.741,0.486,0.369},{0.722,0.467,0.349},{0.71,0.455,0.333},{0.698,0.439,0.325},{0.722,0.549,0.498},{0.812,0.698,0.694},{0.627,0.427,0.29},{0.627,0.427,0.29},{0.62,0.427,0.294},{0.62,0.427,0.302},{0.584,0.4,0.29},{0.576,0.388,0.282},{0.576,0.388,0.278},{0.561,0.369,0.259},{0.553,0.357,0.247},{0.573,0.38,0.271},{0.584,0.392,0.286},{0.565,0.369,0.259},{0.525,0.318,0.208},{0.486,0.259,0.157},{0.459,0.212,0.106},{0.463,0.204,0.102},{0.467,0.204,0.098},{0.463,0.192,0.094},{0.455,0.184,0.086},{0.451,0.176,0.094},{0.435,0.161,0.086},
{0.424,0.157,0.082},{0.408,0.149,0.075},{0.392,0.137,0.063},{0.376,0.129,0.059},{0.384,0.137,0.063},{0.392,0.149,0.067},{0.408,0.169,0.082},{0.408,0.173,0.086},{0.404,0.173,0.086},{0.369,0.149,0.067},{0.325,0.102,0.027},{0.294,0.078,0.02},{0.259,0.059,0.012},{0.224,0.035,0.008},{0.227,0.035,0.008},{0.243,0.047,0.012},{0.369,0.161,0.098},{0.569,0.357,0.267},{0.847,0.616,0.494},{0.918,0.702,0.58},{0.937,0.722,0.604},{0.941,0.729,0.612},{0.945,0.733,0.616},{0.945,0.741,0.631},{0.941,0.741,0.624},{0.941,0.741,0.627},{0.941,0.737,0.635},{0.937,0.733,0.631},{0.941,0.737,0.639},{0.941,0.745,0.647},{0.945,0.737,0.647},{0.953,0.745,0.655},{0.957,0.741,0.651},{0.957,0.741,0.659},{0.953,0.725,0.639},{0.949,0.722,0.639},{0.965,0.757,0.682},{0.969,0.761,0.686},{0.969,0.765,0.69},{0.965,0.761,0.682},{0.961,0.753,0.678},{0.957,0.749,0.671},{0.937,0.714,0.631},{0.922,0.682,0.584},{0.918,0.675,0.576},{0.91,0.659,0.561},{0.902,0.647,0.553},{0.886,0.596,0.506},{0.863,0.576,0.498},{0.867,0.569,0.502},{0.875,0.604,0.537},{0.855,0.588,0.502},{0.847,0.596,0.506},
{0.835,0.588,0.502},{0.827,0.573,0.486},{0.812,0.557,0.463},{0.788,0.525,0.427},{0.776,0.49,0.404},{0.776,0.502,0.416},{0.776,0.482,0.388},{0.745,0.404,0.318},{0.773,0.51,0.478},{0.792,0.549,0.537},{0.804,0.545,0.522},{0.816,0.62,0.592},{0.863,0.78,0.761},{0.647,0.361,0.271},{0.753,0.49,0.369},{0.804,0.561,0.443},{0.8,0.561,0.439},{0.784,0.549,0.427},{0.776,0.533,0.412},{0.765,0.518,0.396},{0.745,0.498,0.376},{0.733,0.482,0.361},{0.725,0.471,0.353},{0.71,0.455,0.337},{0.741,0.584,0.545},{0.827,0.718,0.718},{0.706,0.514,0.373},{0.706,0.514,0.373},{0.694,0.506,0.376},{0.686,0.502,0.376},{0.698,0.514,0.4},{0.686,0.506,0.392},{0.651,0.463,0.349},{0.608,0.416,0.298},{0.557,0.357,0.239},{0.51,0.29,0.184},{0.494,0.267,0.165},{0.525,0.298,0.188},{0.545,0.329,0.22},{0.529,0.302,0.192},{0.541,0.302,0.188},{0.565,0.314,0.204},{0.545,0.29,0.184},{0.518,0.255,0.157},{0.502,0.235,0.149},{0.478,0.212,0.129},{0.463,0.188,0.11},{0.447,0.176,0.098},{0.431,0.161,0.09},{0.412,0.149,0.078},{0.396,0.137,0.071},{0.388,0.129,0.063},{0.38,0.133,0.059},
{0.373,0.133,0.059},{0.357,0.125,0.051},{0.349,0.125,0.047},{0.333,0.114,0.035},{0.325,0.106,0.031},{0.314,0.094,0.027},{0.298,0.082,0.02},{0.275,0.071,0.012},{0.255,0.063,0.008},{0.247,0.055,0.004},{0.251,0.055,0},{0.286,0.082,0.02},{0.694,0.431,0.29},{0.765,0.522,0.376},{0.808,0.573,0.439},{0.859,0.635,0.506},{0.902,0.682,0.561},{0.925,0.714,0.596},{0.933,0.725,0.608},{0.933,0.722,0.604},{0.933,0.729,0.616},{0.933,0.729,0.624},{0.941,0.741,0.643},{0.945,0.749,0.659},{0.949,0.757,0.667},{0.957,0.761,0.675},{0.957,0.757,0.671},{0.961,0.757,0.678},{0.965,0.761,0.682},{0.965,0.765,0.682},{0.969,0.773,0.69},{0.973,0.761,0.682},{0.965,0.753,0.678},{0.961,0.745,0.667},{0.945,0.722,0.647},{0.89,0.671,0.596},{0.894,0.663,0.573},{0.925,0.694,0.6},{0.941,0.714,0.631},{0.953,0.733,0.655},{0.949,0.729,0.659},{0.941,0.71,0.635},{0.929,0.69,0.616},{0.922,0.663,0.596},{0.929,0.69,0.631},{0.922,0.678,0.612},{0.929,0.71,0.643},{0.929,0.718,0.651},{0.937,0.71,0.643},{0.929,0.702,0.635},{0.914,0.671,0.596},{0.894,0.627,0.561},{0.91,0.655,0.592},
{0.894,0.627,0.557},{0.871,0.584,0.533},{0.894,0.643,0.616},{0.925,0.753,0.745},{0.941,0.773,0.753},{0.957,0.867,0.855},{0.976,0.941,0.929},{0.812,0.565,0.451},{0.816,0.569,0.439},{0.812,0.569,0.443},{0.804,0.561,0.439},{0.792,0.557,0.435},{0.784,0.545,0.424},{0.776,0.533,0.412},{0.765,0.514,0.396},{0.753,0.502,0.384},{0.741,0.49,0.373},{0.729,0.475,0.361},{0.757,0.624,0.592},{0.851,0.741,0.745},{0.796,0.612,0.471},{0.796,0.612,0.471},{0.776,0.592,0.455},{0.745,0.557,0.416},{0.714,0.514,0.38},{0.682,0.478,0.349},{0.667,0.463,0.341},{0.663,0.463,0.341},{0.663,0.463,0.337},{0.678,0.475,0.353},{0.675,0.467,0.341},{0.655,0.427,0.302},{0.616,0.373,0.251},{0.584,0.329,0.212},{0.588,0.325,0.204},{0.608,0.341,0.224},{0.6,0.329,0.216},{0.565,0.298,0.192},{0.537,0.267,0.165},{0.518,0.243,0.153},{0.486,0.216,0.137},{0.463,0.196,0.114},{0.443,0.176,0.094},{0.427,0.161,0.086},{0.408,0.149,0.082},{0.4,0.141,0.075},{0.4,0.145,0.075},{0.392,0.145,0.075},{0.38,0.141,0.067},{0.369,0.137,0.067},{0.361,0.133,0.059},{0.349,0.125,0.051},{0.337,0.118,0.043},
{0.329,0.11,0.035},{0.306,0.09,0.024},{0.282,0.078,0.012},{0.255,0.063,0.008},{0.243,0.051,0.012},{0.267,0.067,0.012},{0.671,0.416,0.271},{0.765,0.518,0.369},{0.784,0.537,0.396},{0.796,0.553,0.412},{0.812,0.576,0.435},{0.835,0.604,0.471},{0.875,0.647,0.518},{0.894,0.671,0.549},{0.914,0.698,0.584},{0.925,0.714,0.604},{0.937,0.733,0.635},{0.941,0.753,0.663},{0.945,0.761,0.671},{0.953,0.765,0.678},{0.961,0.769,0.686},{0.961,0.765,0.682},{0.965,0.757,0.678},{0.961,0.765,0.682},{0.941,0.725,0.643},{0.851,0.569,0.49},{0.706,0.353,0.282},{0.565,0.18,0.122},{0.486,0.118,0.063},{0.365,0.059,0.027},{0.341,0.098,0.063},{0.749,0.463,0.329},{0.843,0.569,0.42},{0.863,0.596,0.447},{0.867,0.608,0.467},{0.878,0.62,0.49},{0.875,0.612,0.486},{0.886,0.624,0.502},{0.89,0.627,0.518},{0.894,0.631,0.529},{0.906,0.655,0.557},{0.906,0.651,0.557},{0.898,0.639,0.541},{0.89,0.624,0.533},{0.878,0.612,0.522},{0.882,0.62,0.537},{0.89,0.627,0.545},{0.91,0.659,0.58},{0.918,0.659,0.596},{0.906,0.639,0.58},{0.878,0.576,0.502},{0.855,0.553,0.455},{0.824,0.541,0.427},
{0.804,0.537,0.412},{0.812,0.553,0.42},{0.812,0.565,0.435},{0.82,0.58,0.455},{0.816,0.573,0.451},{0.808,0.573,0.451},{0.796,0.565,0.443},{0.796,0.561,0.443},{0.788,0.545,0.424},{0.78,0.525,0.408},{0.769,0.514,0.392},{0.753,0.51,0.396},{0.776,0.647,0.631},{0.863,0.761,0.765},{0.886,0.733,0.608},{0.886,0.733,0.608},{0.871,0.718,0.6},{0.855,0.698,0.584},{0.82,0.659,0.545},{0.769,0.592,0.471},{0.682,0.482,0.365},{0.698,0.478,0.365},{0.749,0.506,0.384},{0.741,0.478,0.361},{0.718,0.443,0.329},{0.694,0.412,0.298},{0.667,0.396,0.286},{0.647,0.38,0.271},{0.651,0.38,0.263},{0.671,0.4,0.282},{0.667,0.392,0.267},{0.635,0.357,0.243},{0.6,0.318,0.216},{0.569,0.286,0.188},{0.537,0.255,0.161},{0.518,0.231,0.141},{0.494,0.216,0.125},{0.471,0.188,0.11},{0.447,0.176,0.098},{0.439,0.173,0.098},{0.431,0.165,0.094},{0.427,0.165,0.098},{0.431,0.173,0.098},{0.42,0.169,0.094},{0.404,0.161,0.086},{0.38,0.145,0.075},{0.369,0.141,0.071},{0.353,0.133,0.055},{0.329,0.11,0.043},{0.31,0.094,0.027},{0.275,0.075,0.016},{0.247,0.059,0.008},{0.247,0.059,0.012},
{0.6,0.345,0.224},{0.773,0.518,0.369},{0.792,0.541,0.396},{0.804,0.565,0.42},{0.82,0.584,0.439},{0.835,0.6,0.459},{0.843,0.608,0.467},{0.835,0.596,0.455},{0.835,0.596,0.467},{0.851,0.616,0.486},{0.871,0.643,0.522},{0.89,0.678,0.576},{0.933,0.725,0.639},{0.945,0.725,0.639},{0.945,0.725,0.635},{0.941,0.71,0.624},{0.937,0.714,0.624},{0.929,0.694,0.604},{0.898,0.62,0.525},{0.871,0.569,0.471},{0.831,0.514,0.424},{0.757,0.416,0.329},{0.686,0.318,0.239},{0.62,0.231,0.149},{0.522,0.149,0.086},{0.416,0.122,0.075},{0.702,0.42,0.294},{0.835,0.553,0.4},{0.839,0.565,0.404},{0.835,0.569,0.408},{0.835,0.561,0.4},{0.839,0.573,0.416},{0.827,0.549,0.392},{0.812,0.525,0.369},{0.812,0.522,0.373},{0.808,0.518,0.361},{0.792,0.486,0.337},{0.78,0.467,0.322},{0.78,0.463,0.318},{0.78,0.467,0.325},{0.773,0.463,0.325},{0.769,0.451,0.318},{0.765,0.455,0.318},{0.78,0.471,0.337},{0.784,0.49,0.353},{0.796,0.518,0.384},{0.808,0.545,0.408},{0.816,0.565,0.435},{0.82,0.58,0.455},{0.827,0.584,0.451},{0.831,0.592,0.463},{0.827,0.588,0.463},{0.824,0.588,0.467},
{0.816,0.584,0.463},{0.804,0.573,0.455},{0.8,0.557,0.443},{0.796,0.549,0.427},{0.788,0.533,0.408},{0.773,0.537,0.431},{0.792,0.675,0.663},{0.871,0.773,0.776},{0.843,0.631,0.494},{0.843,0.631,0.494},{0.82,0.588,0.447},{0.788,0.549,0.4},{0.737,0.49,0.349},{0.596,0.357,0.243},{0.671,0.424,0.314},{0.8,0.549,0.431},{0.808,0.537,0.42},{0.769,0.482,0.376},{0.698,0.412,0.314},{0.616,0.345,0.263},{0.502,0.275,0.2},{0.533,0.294,0.22},{0.675,0.408,0.302},{0.733,0.467,0.341},{0.733,0.455,0.329},{0.718,0.424,0.302},{0.694,0.392,0.271},{0.655,0.349,0.235},{0.624,0.314,0.204},{0.6,0.29,0.184},{0.561,0.259,0.161},{0.537,0.243,0.149},{0.522,0.227,0.141},{0.506,0.224,0.141},{0.482,0.208,0.122},{0.467,0.188,0.106},{0.463,0.188,0.11},{0.451,0.184,0.11},{0.435,0.176,0.098},{0.416,0.165,0.09},{0.396,0.153,0.086},{0.384,0.145,0.075},{0.357,0.133,0.059},{0.329,0.11,0.043},{0.298,0.09,0.027},{0.267,0.071,0.016},{0.247,0.063,0.008},{0.455,0.227,0.125},{0.773,0.514,0.369},{0.8,0.549,0.404},{0.812,0.576,0.431},{0.827,0.592,0.447},{0.835,0.6,0.459},
{0.851,0.616,0.478},{0.851,0.624,0.49},{0.855,0.627,0.494},{0.859,0.624,0.494},{0.855,0.624,0.49},{0.557,0.384,0.318},{0.255,0.165,0.173},{0.408,0.278,0.251},{0.588,0.431,0.38},{0.82,0.624,0.545},{0.941,0.729,0.635},{0.945,0.745,0.639},{0.941,0.737,0.639},{0.918,0.698,0.596},{0.878,0.631,0.525},{0.851,0.576,0.478},{0.808,0.502,0.42},{0.761,0.427,0.333},{0.698,0.322,0.227},{0.612,0.224,0.141},{0.471,0.129,0.075},{0.667,0.373,0.263},{0.82,0.537,0.392},{0.824,0.549,0.4},{0.824,0.545,0.396},{0.831,0.557,0.404},{0.827,0.561,0.404},{0.831,0.561,0.404},{0.824,0.549,0.388},{0.82,0.549,0.396},{0.82,0.537,0.384},{0.824,0.541,0.392},{0.816,0.533,0.392},{0.82,0.533,0.396},{0.816,0.533,0.396},{0.816,0.529,0.396},{0.816,0.529,0.396},{0.812,0.541,0.404},{0.816,0.545,0.404},{0.824,0.557,0.424},{0.835,0.576,0.439},{0.843,0.6,0.463},{0.851,0.616,0.482},{0.851,0.616,0.49},{0.859,0.62,0.498},{0.855,0.62,0.498},{0.847,0.616,0.494},{0.839,0.604,0.482},{0.831,0.596,0.475},{0.824,0.584,0.463},{0.82,0.58,0.459},{0.804,0.553,0.431},{0.792,0.573,0.482},
{0.812,0.706,0.694},{0.875,0.78,0.788},{0.804,0.541,0.38},{0.804,0.541,0.38},{0.792,0.529,0.369},{0.78,0.525,0.373},{0.706,0.451,0.314},{0.557,0.318,0.22},{0.808,0.576,0.482},{0.863,0.616,0.51},{0.812,0.545,0.435},{0.706,0.412,0.314},{0.584,0.294,0.212},{0.471,0.227,0.161},{0.231,0.094,0.063},{0.247,0.094,0.059},{0.643,0.384,0.282},{0.773,0.51,0.384},{0.78,0.494,0.369},{0.776,0.478,0.349},{0.753,0.455,0.329},{0.729,0.424,0.302},{0.698,0.384,0.259},{0.671,0.353,0.235},{0.639,0.322,0.212},{0.616,0.302,0.192},{0.588,0.29,0.184},{0.573,0.286,0.18},{0.557,0.271,0.165},{0.541,0.251,0.153},{0.533,0.247,0.149},{0.51,0.231,0.141},{0.498,0.227,0.133},{0.478,0.216,0.129},{0.451,0.192,0.11},{0.424,0.173,0.094},{0.4,0.157,0.082},{0.365,0.133,0.063},{0.325,0.11,0.047},{0.282,0.082,0.024},{0.255,0.063,0.012},{0.29,0.09,0.035},{0.725,0.467,0.325},{0.808,0.557,0.416},{0.824,0.588,0.447},{0.839,0.604,0.467},{0.843,0.608,0.471},{0.859,0.627,0.494},{0.863,0.647,0.514},{0.863,0.651,0.522},{0.871,0.647,0.522},{0.871,0.651,0.525},{0.482,0.337,0.286},
{0.129,0.067,0.086},{0.2,0.133,0.169},{0.082,0.027,0.039},{0.098,0.039,0.055},{0.263,0.161,0.145},{0.702,0.498,0.412},{0.894,0.667,0.561},{0.922,0.698,0.604},{0.906,0.667,0.573},{0.875,0.616,0.514},{0.839,0.561,0.459},{0.792,0.494,0.388},{0.729,0.392,0.298},{0.667,0.294,0.208},{0.612,0.216,0.137},{0.463,0.118,0.063},{0.6,0.314,0.212},{0.792,0.51,0.373},{0.82,0.545,0.396},{0.831,0.557,0.404},{0.827,0.569,0.412},{0.839,0.569,0.412},{0.839,0.576,0.424},{0.851,0.584,0.431},{0.847,0.588,0.439},{0.851,0.588,0.439},{0.851,0.584,0.443},{0.851,0.584,0.443},{0.855,0.588,0.451},{0.851,0.584,0.447},{0.855,0.588,0.451},{0.851,0.592,0.451},{0.851,0.596,0.459},{0.859,0.612,0.475},{0.867,0.627,0.494},{0.867,0.631,0.502},{0.875,0.639,0.514},{0.878,0.647,0.522},{0.875,0.639,0.522},{0.875,0.643,0.522},{0.867,0.631,0.514},{0.863,0.627,0.506},{0.855,0.624,0.498},{0.851,0.612,0.494},{0.839,0.604,0.478},{0.835,0.592,0.471},{0.812,0.616,0.537},{0.827,0.725,0.714},{0.875,0.784,0.788},{0.812,0.549,0.392},{0.812,0.549,0.392},{0.812,0.549,0.392},{0.812,0.561,0.416},
{0.655,0.424,0.31},{0.537,0.325,0.255},{0.855,0.639,0.561},{0.859,0.616,0.51},{0.761,0.478,0.376},{0.655,0.353,0.255},{0.565,0.282,0.2},{0.365,0.169,0.114},{0.09,0.024,0.016},{0.286,0.122,0.078},{0.706,0.455,0.345},{0.788,0.525,0.4},{0.808,0.522,0.392},{0.816,0.518,0.388},{0.8,0.502,0.373},{0.773,0.463,0.337},{0.745,0.431,0.31},{0.718,0.396,0.278},{0.69,0.369,0.255},{0.659,0.345,0.231},{0.647,0.337,0.224},{0.627,0.329,0.216},{0.616,0.325,0.212},{0.6,0.306,0.192},{0.584,0.294,0.184},{0.573,0.286,0.18},{0.557,0.278,0.169},{0.537,0.263,0.161},{0.51,0.247,0.153},{0.482,0.224,0.133},{0.451,0.192,0.11},{0.408,0.161,0.086},{0.361,0.133,0.063},{0.314,0.098,0.039},{0.259,0.071,0.016},{0.235,0.051,0.016},{0.49,0.259,0.161},{0.792,0.541,0.396},{0.824,0.584,0.443},{0.843,0.608,0.467},{0.851,0.616,0.482},{0.855,0.631,0.494},{0.863,0.651,0.518},{0.871,0.659,0.529},{0.878,0.663,0.537},{0.882,0.667,0.537},{0.765,0.569,0.467},{0.192,0.11,0.118},{0.188,0.129,0.161},{0.149,0.09,0.118},{0.102,0.047,0.067},{0.212,0.149,0.188},{0.29,0.169,0.149},
{0.706,0.443,0.302},{0.757,0.498,0.361},{0.831,0.576,0.459},{0.89,0.639,0.541},{0.89,0.639,0.541},{0.867,0.6,0.498},{0.831,0.545,0.447},{0.784,0.463,0.369},{0.722,0.345,0.259},{0.635,0.243,0.153},{0.486,0.129,0.071},{0.651,0.365,0.251},{0.82,0.541,0.396},{0.831,0.557,0.416},{0.835,0.576,0.424},{0.847,0.58,0.435},{0.859,0.6,0.459},{0.867,0.608,0.463},{0.867,0.612,0.463},{0.867,0.604,0.455},{0.867,0.608,0.463},{0.871,0.612,0.471},{0.875,0.62,0.482},{0.878,0.624,0.486},{0.886,0.635,0.494},{0.882,0.635,0.498},{0.882,0.631,0.498},{0.886,0.639,0.502},{0.89,0.651,0.514},{0.89,0.655,0.533},{0.89,0.651,0.533},{0.894,0.659,0.537},{0.89,0.659,0.537},{0.886,0.655,0.533},{0.882,0.647,0.529},{0.875,0.635,0.518},{0.867,0.635,0.514},{0.867,0.627,0.506},{0.859,0.624,0.502},{0.855,0.612,0.49},{0.816,0.635,0.573},{0.839,0.733,0.729},{0.875,0.776,0.784},{0.839,0.584,0.424},{0.839,0.584,0.424},{0.847,0.596,0.439},{0.843,0.6,0.463},{0.588,0.373,0.282},{0.561,0.341,0.259},{0.827,0.596,0.498},{0.855,0.604,0.494},{0.78,0.514,0.408},{0.765,0.498,0.392},
{0.631,0.38,0.302},{0.318,0.169,0.133},{0.161,0.047,0.031},{0.569,0.329,0.243},{0.761,0.514,0.408},{0.8,0.537,0.408},{0.827,0.549,0.416},{0.843,0.553,0.42},{0.824,0.525,0.396},{0.8,0.49,0.365},{0.776,0.463,0.337},{0.749,0.435,0.306},{0.722,0.404,0.286},{0.694,0.384,0.259},{0.675,0.369,0.247},{0.663,0.369,0.243},{0.643,0.357,0.235},{0.627,0.333,0.22},{0.62,0.322,0.212},{0.608,0.318,0.204},{0.592,0.31,0.192},{0.576,0.302,0.188},{0.549,0.282,0.173},{0.525,0.263,0.161},{0.498,0.239,0.137},{0.463,0.204,0.114},{0.404,0.161,0.086},{0.341,0.114,0.051},{0.278,0.078,0.02},{0.231,0.047,0.012},{0.235,0.051,0.02},{0.639,0.392,0.271},{0.808,0.561,0.42},{0.835,0.592,0.455},{0.847,0.612,0.471},{0.859,0.624,0.49},{0.867,0.643,0.514},{0.871,0.655,0.522},{0.882,0.671,0.541},{0.886,0.675,0.545},{0.894,0.675,0.545},{0.741,0.557,0.475},{0.184,0.106,0.118},{0.165,0.11,0.137},{0.106,0.051,0.075},{0.078,0.031,0.051},{0.184,0.122,0.141},{0.647,0.404,0.286},{0.725,0.451,0.306},{0.757,0.49,0.349},{0.784,0.522,0.38},{0.835,0.573,0.459},{0.882,0.627,0.533},
{0.89,0.624,0.529},{0.878,0.612,0.518},{0.847,0.565,0.475},{0.788,0.435,0.345},{0.686,0.271,0.192},{0.514,0.141,0.082},{0.729,0.447,0.314},{0.824,0.557,0.396},{0.843,0.584,0.435},{0.855,0.596,0.455},{0.871,0.616,0.475},{0.875,0.627,0.486},{0.882,0.631,0.486},{0.886,0.627,0.49},{0.875,0.616,0.478},{0.886,0.631,0.49},{0.898,0.647,0.506},{0.906,0.663,0.525},{0.902,0.659,0.522},{0.902,0.663,0.525},{0.902,0.655,0.525},{0.902,0.659,0.529},{0.906,0.671,0.545},{0.914,0.671,0.557},{0.91,0.675,0.561},{0.906,0.671,0.553},{0.91,0.678,0.561},{0.91,0.682,0.565},{0.902,0.675,0.557},{0.902,0.667,0.553},{0.894,0.667,0.545},{0.89,0.659,0.537},{0.878,0.635,0.518},{0.871,0.631,0.506},{0.824,0.663,0.608},{0.855,0.753,0.749},{0.875,0.78,0.788},{0.867,0.608,0.463},{0.867,0.608,0.463},{0.875,0.62,0.482},{0.851,0.616,0.486},{0.584,0.361,0.271},{0.604,0.349,0.243},{0.796,0.549,0.431},{0.851,0.6,0.482},{0.812,0.549,0.443},{0.827,0.584,0.482},{0.667,0.467,0.396},{0.231,0.118,0.09},{0.471,0.259,0.192},{0.733,0.486,0.392},{0.796,0.549,0.435},{0.824,0.565,0.435},
{0.839,0.569,0.431},{0.835,0.553,0.416},{0.827,0.537,0.4},{0.816,0.518,0.384},{0.792,0.482,0.353},{0.769,0.459,0.329},{0.737,0.427,0.302},{0.714,0.4,0.282},{0.69,0.384,0.259},{0.663,0.361,0.243},{0.647,0.357,0.239},{0.643,0.349,0.235},{0.631,0.345,0.227},{0.616,0.329,0.216},{0.604,0.314,0.2},{0.588,0.306,0.188},{0.569,0.294,0.176},{0.537,0.275,0.165},{0.51,0.247,0.145},{0.475,0.216,0.129},{0.431,0.184,0.098},{0.369,0.141,0.067},{0.302,0.098,0.031},{0.239,0.051,0.012},{0.2,0.024,0.008},{0.259,0.071,0.035},{0.682,0.431,0.302},{0.816,0.565,0.424},{0.835,0.592,0.451},{0.851,0.608,0.471},{0.867,0.631,0.498},{0.871,0.655,0.522},{0.878,0.667,0.529},{0.886,0.675,0.541},{0.894,0.678,0.541},{0.894,0.667,0.529},{0.749,0.533,0.427},{0.29,0.196,0.204},{0.165,0.106,0.141},{0.047,0.012,0.02},{0.133,0.071,0.082},{0.612,0.365,0.255},{0.682,0.412,0.275},{0.714,0.435,0.298},{0.718,0.447,0.31},{0.729,0.455,0.325},{0.733,0.471,0.341},{0.792,0.533,0.427},{0.882,0.643,0.557},{0.875,0.624,0.545},{0.843,0.561,0.494},{0.78,0.427,0.365},{0.675,0.255,0.184},
{0.529,0.169,0.106},{0.784,0.514,0.373},{0.855,0.6,0.451},{0.859,0.6,0.455},{0.871,0.62,0.475},{0.878,0.624,0.478},{0.894,0.639,0.502},{0.902,0.651,0.51},{0.906,0.655,0.518},{0.914,0.663,0.525},{0.918,0.678,0.537},{0.925,0.694,0.553},{0.925,0.686,0.549},{0.922,0.694,0.561},{0.918,0.678,0.545},{0.922,0.682,0.557},{0.918,0.682,0.561},{0.929,0.698,0.58},{0.929,0.698,0.588},{0.922,0.69,0.573},{0.922,0.694,0.573},{0.922,0.702,0.588},{0.925,0.698,0.588},{0.918,0.682,0.573},{0.91,0.682,0.565},{0.906,0.675,0.557},{0.894,0.663,0.541},{0.886,0.651,0.529},{0.827,0.678,0.639},{0.859,0.761,0.757},{0.875,0.78,0.784},{0.878,0.624,0.478},{0.878,0.624,0.478},{0.894,0.643,0.506},{0.875,0.639,0.51},{0.678,0.439,0.329},{0.643,0.373,0.251},{0.769,0.51,0.388},{0.82,0.569,0.455},{0.824,0.565,0.455},{0.776,0.514,0.404},{0.518,0.322,0.259},{0.302,0.145,0.098},{0.678,0.431,0.353},{0.78,0.533,0.431},{0.804,0.549,0.435},{0.82,0.557,0.427},{0.824,0.549,0.412},{0.835,0.553,0.412},{0.835,0.541,0.408},{0.827,0.529,0.396},{0.808,0.502,0.373},{0.784,0.475,0.345},
{0.761,0.455,0.325},{0.737,0.439,0.306},{0.71,0.404,0.282},{0.682,0.38,0.263},{0.663,0.361,0.247},{0.651,0.361,0.243},{0.643,0.357,0.235},{0.635,0.341,0.227},{0.62,0.329,0.22},{0.596,0.31,0.196},{0.584,0.302,0.184},{0.557,0.286,0.173},{0.533,0.263,0.161},{0.498,0.235,0.137},{0.463,0.208,0.118},{0.412,0.169,0.086},{0.333,0.118,0.047},{0.251,0.063,0.016},{0.196,0.024,0.008},{0.18,0.016,0.008},{0.267,0.075,0.035},{0.635,0.384,0.267},{0.812,0.557,0.416},{0.839,0.592,0.451},{0.855,0.616,0.475},{0.871,0.639,0.498},{0.878,0.655,0.514},{0.886,0.663,0.522},{0.886,0.659,0.522},{0.886,0.655,0.518},{0.882,0.643,0.498},{0.804,0.573,0.447},{0.4,0.318,0.302},{0.173,0.271,0.31},{0.424,0.318,0.275},{0.627,0.361,0.243},{0.647,0.373,0.247},{0.655,0.373,0.251},{0.663,0.384,0.267},{0.659,0.376,0.255},{0.647,0.369,0.255},{0.651,0.376,0.263},{0.682,0.408,0.294},{0.761,0.494,0.388},{0.831,0.584,0.525},{0.847,0.561,0.514},{0.788,0.416,0.353},{0.675,0.259,0.184},{0.592,0.243,0.165},{0.827,0.561,0.416},{0.863,0.612,0.467},{0.878,0.627,0.486},{0.89,0.635,0.498},
{0.902,0.651,0.514},{0.91,0.663,0.529},{0.918,0.671,0.533},{0.922,0.678,0.545},{0.925,0.686,0.545},{0.929,0.702,0.561},{0.937,0.706,0.569},{0.933,0.706,0.569},{0.937,0.702,0.573},{0.941,0.706,0.576},{0.941,0.706,0.58},{0.937,0.702,0.584},{0.937,0.718,0.596},{0.941,0.718,0.596},{0.933,0.71,0.588},{0.933,0.71,0.592},{0.937,0.714,0.596},{0.933,0.71,0.588},{0.929,0.706,0.588},{0.925,0.694,0.576},{0.91,0.678,0.557},{0.902,0.671,0.557},{0.827,0.698,0.675},{0.867,0.769,0.765},{0.875,0.773,0.784},{0.89,0.631,0.49},{0.89,0.631,0.49},{0.906,0.655,0.522},{0.902,0.655,0.525},{0.835,0.592,0.467},{0.769,0.502,0.361},{0.769,0.498,0.369},{0.753,0.49,0.376},{0.753,0.498,0.388},{0.71,0.455,0.353},{0.49,0.275,0.2},{0.604,0.353,0.263},{0.741,0.482,0.376},{0.773,0.51,0.392},{0.78,0.518,0.384},{0.796,0.529,0.392},{0.816,0.541,0.4},{0.839,0.553,0.412},{0.851,0.553,0.42},{0.843,0.545,0.412},{0.827,0.529,0.396},{0.804,0.498,0.369},{0.776,0.471,0.341},{0.753,0.455,0.322},{0.725,0.427,0.302},{0.71,0.408,0.29},{0.698,0.388,0.271},{0.678,0.38,0.259},
{0.678,0.376,0.259},{0.671,0.373,0.251},{0.655,0.357,0.235},{0.631,0.341,0.22},{0.608,0.318,0.204},{0.58,0.302,0.184},{0.553,0.282,0.169},{0.522,0.259,0.153},{0.49,0.231,0.133},{0.435,0.184,0.102},{0.337,0.118,0.051},{0.255,0.067,0.012},{0.192,0.027,0.012},{0.176,0.012,0.008},{0.2,0.027,0.008},{0.29,0.094,0.027},{0.502,0.271,0.161},{0.733,0.478,0.341},{0.812,0.557,0.416},{0.847,0.6,0.455},{0.863,0.624,0.478},{0.875,0.635,0.494},{0.878,0.643,0.498},{0.882,0.647,0.502},{0.882,0.647,0.506},{0.745,0.624,0.537},{0.804,0.624,0.518},{0.6,0.384,0.31},{0.624,0.376,0.271},{0.671,0.404,0.282},{0.671,0.396,0.271},{0.655,0.373,0.251},{0.635,0.353,0.239},{0.612,0.329,0.224},{0.62,0.345,0.239},{0.631,0.353,0.247},{0.655,0.38,0.271},{0.675,0.4,0.29},{0.714,0.451,0.357},{0.859,0.659,0.616},{0.843,0.537,0.494},{0.773,0.38,0.318},{0.647,0.227,0.161},{0.694,0.376,0.271},{0.847,0.588,0.443},{0.871,0.624,0.478},{0.89,0.639,0.502},{0.902,0.655,0.518},{0.906,0.659,0.522},{0.91,0.659,0.522},{0.922,0.678,0.545},{0.925,0.682,0.545},{0.925,0.682,0.545},
{0.933,0.694,0.557},{0.937,0.706,0.569},{0.937,0.71,0.573},{0.937,0.706,0.576},{0.949,0.718,0.596},{0.957,0.725,0.608},{0.953,0.737,0.612},{0.961,0.733,0.612},{0.953,0.733,0.608},{0.949,0.737,0.616},{0.953,0.729,0.608},{0.945,0.722,0.604},{0.941,0.71,0.592},{0.937,0.71,0.584},{0.929,0.698,0.576},{0.914,0.694,0.58},{0.831,0.714,0.698},{0.878,0.788,0.788},{0.875,0.78,0.788},{0.898,0.639,0.498},{0.898,0.639,0.498},{0.91,0.659,0.518},{0.906,0.655,0.514},{0.878,0.627,0.486},{0.835,0.569,0.427},{0.78,0.494,0.361},{0.71,0.424,0.294},{0.608,0.337,0.227},{0.549,0.294,0.192},{0.576,0.322,0.224},{0.639,0.384,0.278},{0.663,0.4,0.282},{0.698,0.435,0.302},{0.733,0.467,0.333},{0.757,0.49,0.353},{0.788,0.518,0.38},{0.82,0.537,0.408},{0.855,0.573,0.443},{0.855,0.565,0.431},{0.835,0.545,0.408},{0.812,0.518,0.384},{0.788,0.494,0.365},{0.765,0.471,0.341},{0.737,0.451,0.322},{0.725,0.443,0.314},{0.725,0.424,0.306},{0.714,0.416,0.294},{0.71,0.424,0.298},{0.706,0.416,0.286},{0.694,0.396,0.271},{0.671,0.38,0.255},{0.643,0.353,0.235},{0.608,0.322,0.208},
{0.58,0.302,0.188},{0.533,0.271,0.165},{0.49,0.235,0.137},{0.431,0.188,0.11},{0.349,0.125,0.055},{0.263,0.067,0.02},{0.196,0.027,0.012},{0.173,0.012,0.008},{0.196,0.027,0.008},{0.294,0.102,0.031},{0.333,0.118,0.047},{0.369,0.153,0.071},{0.373,0.161,0.09},{0.455,0.227,0.141},{0.525,0.286,0.184},{0.612,0.361,0.243},{0.678,0.424,0.286},{0.714,0.459,0.318},{0.753,0.502,0.361},{0.761,0.537,0.4},{0.729,0.722,0.702},{0.765,0.608,0.522},{0.682,0.427,0.31},{0.694,0.431,0.314},{0.655,0.392,0.278},{0.604,0.329,0.235},{0.573,0.298,0.212},{0.588,0.318,0.235},{0.6,0.329,0.239},{0.631,0.353,0.259},{0.663,0.38,0.282},{0.706,0.424,0.322},{0.749,0.478,0.365},{0.824,0.588,0.49},{0.902,0.765,0.733},{0.776,0.435,0.373},{0.729,0.341,0.271},{0.667,0.306,0.22},{0.827,0.561,0.424},{0.859,0.604,0.463},{0.882,0.631,0.49},{0.89,0.635,0.502},{0.902,0.651,0.514},{0.914,0.663,0.529},{0.925,0.678,0.545},{0.929,0.686,0.553},{0.929,0.698,0.561},{0.937,0.706,0.573},{0.941,0.706,0.573},{0.941,0.714,0.58},{0.949,0.725,0.6},{0.949,0.725,0.604},{0.957,0.733,0.612},
{0.953,0.733,0.608},{0.961,0.733,0.612},{0.965,0.745,0.624},{0.969,0.749,0.62},{0.965,0.741,0.616},{0.953,0.733,0.612},{0.957,0.741,0.616},{0.949,0.725,0.6},{0.945,0.718,0.596},{0.902,0.706,0.616},{0.831,0.722,0.706},{0.886,0.8,0.8},{0.882,0.792,0.8},{0.902,0.639,0.498},{0.902,0.639,0.498},{0.91,0.655,0.518},{0.922,0.671,0.533},{0.914,0.659,0.522},{0.878,0.612,0.471},{0.831,0.549,0.408},{0.753,0.467,0.333},{0.651,0.376,0.251},{0.565,0.298,0.188},{0.529,0.271,0.173},{0.541,0.278,0.176},{0.561,0.302,0.192},{0.58,0.318,0.204},{0.58,0.318,0.208},{0.545,0.286,0.18},{0.533,0.255,0.161},{0.655,0.369,0.259},{0.82,0.549,0.42},{0.835,0.565,0.427},{0.812,0.529,0.396},{0.788,0.498,0.365},{0.761,0.471,0.337},{0.745,0.459,0.329},{0.733,0.455,0.322},{0.741,0.471,0.337},{0.749,0.467,0.341},{0.745,0.463,0.333},{0.741,0.467,0.333},{0.725,0.447,0.318},{0.706,0.416,0.29},{0.686,0.392,0.267},{0.659,0.365,0.243},{0.624,0.341,0.224},{0.596,0.318,0.2},{0.549,0.294,0.184},{0.494,0.239,0.141},{0.42,0.18,0.098},{0.341,0.125,0.051},{0.267,0.071,0.02},
{0.204,0.031,0.008},{0.18,0.02,0.008},{0.22,0.047,0.012},{0.333,0.137,0.063},{0.431,0.204,0.098},{0.565,0.318,0.173},{0.651,0.38,0.22},{0.537,0.275,0.149},{0.373,0.125,0.047},{0.341,0.094,0.031},{0.349,0.094,0.024},{0.38,0.118,0.039},{0.42,0.161,0.067},{0.475,0.216,0.106},{0.533,0.286,0.173},{0.627,0.486,0.42},{0.608,0.357,0.263},{0.553,0.302,0.224},{0.533,0.275,0.204},{0.537,0.278,0.208},{0.573,0.302,0.227},{0.604,0.325,0.243},{0.639,0.353,0.259},{0.698,0.4,0.298},{0.753,0.467,0.357},{0.788,0.522,0.412},{0.824,0.576,0.463},{0.847,0.624,0.51},{0.878,0.686,0.596},{0.886,0.745,0.69},{0.769,0.451,0.337},{0.741,0.471,0.373},{0.792,0.549,0.447},{0.843,0.596,0.471},{0.867,0.612,0.478},{0.882,0.631,0.506},{0.894,0.647,0.518},{0.906,0.659,0.529},{0.906,0.659,0.525},{0.922,0.675,0.537},{0.925,0.69,0.553},{0.933,0.702,0.569},{0.937,0.71,0.573},{0.945,0.725,0.596},{0.945,0.718,0.596},{0.941,0.722,0.6},{0.953,0.722,0.604},{0.953,0.725,0.604},{0.957,0.729,0.604},{0.965,0.737,0.612},{0.969,0.745,0.62},{0.961,0.729,0.6},{0.969,0.737,0.612},
{0.953,0.737,0.612},{0.953,0.729,0.604},{0.945,0.722,0.6},{0.902,0.71,0.627},{0.835,0.729,0.722},{0.882,0.796,0.796},{0.89,0.792,0.804},{0.914,0.647,0.514},{0.914,0.647,0.514},{0.929,0.671,0.541},{0.941,0.69,0.573},{0.941,0.69,0.569},{0.929,0.678,0.541},{0.906,0.647,0.506},{0.851,0.58,0.431},{0.745,0.467,0.329},{0.627,0.357,0.231},{0.545,0.278,0.176},{0.514,0.251,0.165},{0.502,0.243,0.157},{0.478,0.224,0.141},{0.455,0.204,0.122},{0.502,0.224,0.133},{0.545,0.239,0.137},{0.533,0.208,0.118},{0.678,0.376,0.267},{0.796,0.514,0.376},{0.776,0.502,0.361},{0.765,0.482,0.349},{0.737,0.459,0.329},{0.722,0.447,0.322},{0.714,0.427,0.306},{0.714,0.388,0.275},{0.737,0.424,0.329},{0.749,0.435,0.333},{0.737,0.463,0.333},{0.733,0.463,0.329},{0.725,0.447,0.314},{0.706,0.412,0.29},{0.678,0.384,0.263},{0.647,0.357,0.239},{0.608,0.329,0.216},{0.557,0.29,0.184},{0.506,0.247,0.149},{0.416,0.165,0.086},{0.314,0.102,0.035},{0.255,0.067,0.016},{0.22,0.047,0.012},{0.255,0.075,0.024},{0.486,0.259,0.153},{0.725,0.471,0.294},{0.804,0.541,0.337},{0.792,0.522,0.322},
{0.749,0.471,0.275},{0.702,0.42,0.239},{0.639,0.353,0.192},{0.506,0.231,0.11},{0.443,0.169,0.071},{0.427,0.153,0.055},{0.404,0.141,0.047},{0.392,0.133,0.047},{0.404,0.145,0.055},{0.451,0.196,0.106},{0.529,0.29,0.22},{0.533,0.282,0.212},{0.569,0.302,0.227},{0.627,0.349,0.263},{0.682,0.404,0.31},{0.733,0.451,0.345},{0.769,0.494,0.388},{0.808,0.533,0.431},{0.824,0.561,0.455},{0.843,0.592,0.494},{0.859,0.624,0.533},{0.886,0.678,0.596},{0.886,0.686,0.616},{0.882,0.678,0.616},{0.867,0.643,0.569},{0.796,0.541,0.443},{0.78,0.537,0.447},{0.855,0.635,0.541},{0.871,0.635,0.522},{0.875,0.631,0.514},{0.878,0.635,0.506},{0.882,0.631,0.506},{0.898,0.647,0.525},{0.902,0.655,0.522},{0.91,0.663,0.529},{0.922,0.678,0.549},{0.925,0.686,0.557},{0.925,0.69,0.565},{0.922,0.686,0.565},{0.933,0.694,0.58},{0.937,0.702,0.584},{0.941,0.71,0.58},{0.949,0.722,0.596},{0.953,0.729,0.604},{0.949,0.722,0.588},{0.953,0.718,0.588},{0.953,0.725,0.596},{0.953,0.729,0.604},{0.945,0.714,0.584},{0.941,0.71,0.58},{0.886,0.698,0.62},{0.839,0.733,0.725},{0.882,0.796,0.796},
{0.886,0.792,0.8},{0.925,0.671,0.541},{0.925,0.671,0.541},{0.945,0.702,0.584},{0.949,0.714,0.596},{0.945,0.698,0.573},{0.933,0.682,0.545},{0.922,0.667,0.529},{0.894,0.643,0.498},{0.82,0.565,0.416},{0.714,0.443,0.306},{0.631,0.361,0.235},{0.553,0.294,0.184},{0.51,0.251,0.153},{0.545,0.275,0.176},{0.655,0.373,0.255},{0.655,0.376,0.271},{0.588,0.337,0.247},{0.792,0.506,0.38},{0.729,0.408,0.29},{0.78,0.502,0.365},{0.761,0.49,0.357},{0.741,0.467,0.333},{0.71,0.416,0.298},{0.694,0.333,0.239},{0.682,0.275,0.2},{0.651,0.243,0.196},{0.635,0.239,0.22},{0.722,0.31,0.247},{0.722,0.396,0.282},{0.729,0.455,0.322},{0.729,0.451,0.318},{0.729,0.435,0.306},{0.722,0.435,0.31},{0.694,0.412,0.29},{0.643,0.369,0.251},{0.596,0.325,0.22},{0.549,0.282,0.188},{0.447,0.196,0.114},{0.298,0.09,0.031},{0.224,0.043,0.012},{0.376,0.173,0.09},{0.714,0.467,0.29},{0.827,0.576,0.376},{0.82,0.565,0.365},{0.769,0.51,0.322},{0.729,0.463,0.278},{0.706,0.427,0.251},{0.671,0.396,0.227},{0.631,0.361,0.204},{0.592,0.318,0.169},{0.518,0.251,0.129},{0.443,0.173,0.078},
{0.412,0.145,0.059},{0.384,0.161,0.086},{0.349,0.286,0.263},{0.392,0.322,0.294},{0.576,0.322,0.243},{0.643,0.384,0.294},{0.733,0.463,0.361},{0.784,0.514,0.408},{0.8,0.537,0.435},{0.812,0.561,0.455},{0.839,0.6,0.502},{0.855,0.612,0.51},{0.863,0.624,0.537},{0.882,0.651,0.573},{0.875,0.647,0.576},{0.875,0.635,0.573},{0.871,0.631,0.58},{0.863,0.624,0.576},{0.859,0.612,0.557},{0.824,0.565,0.478},{0.769,0.518,0.431},{0.827,0.608,0.533},{0.894,0.698,0.62},{0.875,0.639,0.537},{0.867,0.616,0.498},{0.878,0.624,0.514},{0.886,0.639,0.522},{0.898,0.651,0.525},{0.898,0.655,0.533},{0.91,0.663,0.541},{0.906,0.651,0.525},{0.898,0.651,0.525},{0.89,0.643,0.522},{0.898,0.651,0.533},{0.902,0.655,0.533},{0.898,0.651,0.529},{0.894,0.651,0.529},{0.89,0.647,0.529},{0.894,0.647,0.525},{0.886,0.635,0.518},{0.886,0.639,0.522},{0.914,0.671,0.549},{0.914,0.678,0.553},{0.918,0.675,0.545},{0.855,0.671,0.6},{0.847,0.745,0.737},{0.882,0.8,0.8},{0.886,0.792,0.8},{0.929,0.678,0.549},{0.929,0.678,0.549},{0.933,0.706,0.6},{0.91,0.686,0.576},{0.886,0.639,0.506},
{0.89,0.639,0.502},{0.871,0.612,0.478},{0.843,0.576,0.443},{0.804,0.537,0.416},{0.776,0.518,0.376},{0.741,0.478,0.329},{0.671,0.4,0.259},{0.69,0.408,0.282},{0.725,0.439,0.318},{0.659,0.376,0.267},{0.298,0.082,0.047},{0.373,0.129,0.082},{0.667,0.365,0.259},{0.745,0.455,0.329},{0.765,0.502,0.361},{0.761,0.494,0.361},{0.729,0.4,0.29},{0.733,0.318,0.247},{0.725,0.298,0.239},{0.545,0.196,0.173},{0.306,0.071,0.067},{0.667,0.239,0.231},{0.737,0.302,0.243},{0.722,0.341,0.247},{0.757,0.471,0.341},{0.749,0.463,0.333},{0.765,0.486,0.353},{0.78,0.506,0.373},{0.753,0.482,0.353},{0.706,0.431,0.31},{0.659,0.388,0.271},{0.608,0.329,0.224},{0.518,0.255,0.165},{0.353,0.129,0.063},{0.502,0.271,0.161},{0.796,0.537,0.353},{0.82,0.565,0.373},{0.784,0.533,0.341},{0.749,0.486,0.306},{0.722,0.455,0.278},{0.69,0.424,0.259},{0.663,0.392,0.235},{0.627,0.361,0.212},{0.588,0.322,0.184},{0.545,0.286,0.157},{0.51,0.251,0.129},{0.475,0.216,0.106},{0.345,0.204,0.145},{0.278,0.278,0.259},{0.337,0.18,0.137},{0.412,0.188,0.122},{0.69,0.431,0.337},{0.776,0.525,0.42},
{0.812,0.557,0.455},{0.835,0.584,0.486},{0.843,0.604,0.518},{0.859,0.635,0.557},{0.878,0.651,0.569},{0.875,0.643,0.565},{0.855,0.604,0.537},{0.835,0.561,0.51},{0.843,0.557,0.522},{0.851,0.573,0.541},{0.859,0.596,0.565},{0.859,0.592,0.565},{0.871,0.616,0.584},{0.851,0.561,0.518},{0.776,0.506,0.431},{0.769,0.518,0.439},{0.867,0.651,0.584},{0.894,0.682,0.6},{0.882,0.643,0.529},{0.871,0.627,0.522},{0.89,0.651,0.549},{0.898,0.655,0.541},{0.894,0.655,0.537},{0.894,0.647,0.529},{0.89,0.635,0.522},{0.886,0.635,0.522},{0.863,0.612,0.502},{0.851,0.6,0.49},{0.831,0.576,0.467},{0.812,0.545,0.435},{0.8,0.522,0.404},{0.796,0.537,0.427},{0.788,0.514,0.408},{0.765,0.494,0.376},{0.765,0.502,0.38},{0.761,0.498,0.38},{0.737,0.478,0.357},{0.722,0.475,0.357},{0.769,0.6,0.553},{0.855,0.753,0.749},{0.89,0.804,0.804},{0.89,0.796,0.804},{0.918,0.671,0.537},{0.918,0.671,0.537},{0.839,0.616,0.498},{0.71,0.475,0.365},{0.761,0.502,0.369},{0.847,0.584,0.455},{0.835,0.561,0.443},{0.788,0.506,0.396},{0.706,0.42,0.31},{0.494,0.275,0.196},{0.702,0.451,0.325},
{0.839,0.569,0.42},{0.89,0.635,0.51},{0.859,0.588,0.463},{0.761,0.475,0.357},{0.643,0.333,0.231},{0.769,0.475,0.361},{0.859,0.596,0.467},{0.863,0.596,0.459},{0.831,0.561,0.424},{0.78,0.416,0.306},{0.808,0.4,0.337},{0.776,0.373,0.322},{0.667,0.306,0.267},{0.106,0.035,0.031},{0.376,0.106,0.106},{0.745,0.306,0.294},{0.78,0.341,0.29},{0.753,0.357,0.267},{0.796,0.506,0.38},{0.796,0.51,0.38},{0.816,0.545,0.412},{0.82,0.565,0.431},{0.804,0.533,0.4},{0.78,0.502,0.384},{0.733,0.451,0.341},{0.678,0.384,0.282},{0.58,0.31,0.208},{0.624,0.357,0.227},{0.788,0.525,0.341},{0.788,0.529,0.349},{0.761,0.502,0.325},{0.729,0.471,0.302},{0.694,0.431,0.271},{0.675,0.412,0.259},{0.647,0.388,0.235},{0.631,0.373,0.231},{0.584,0.329,0.2},{0.549,0.294,0.176},{0.506,0.251,0.145},{0.478,0.227,0.125},{0.384,0.231,0.161},{0.29,0.224,0.184},{0.376,0.149,0.078},{0.227,0.176,0.161},{0.224,0.29,0.286},{0.733,0.486,0.388},{0.808,0.569,0.471},{0.839,0.616,0.541},{0.863,0.631,0.553},{0.875,0.612,0.525},{0.867,0.588,0.506},{0.8,0.522,0.459},{0.745,0.439,0.388},
{0.808,0.525,0.494},{0.867,0.6,0.576},{0.878,0.588,0.565},{0.882,0.584,0.569},{0.878,0.545,0.525},{0.867,0.545,0.529},{0.867,0.557,0.545},{0.875,0.565,0.553},{0.847,0.553,0.522},{0.725,0.435,0.341},{0.792,0.545,0.475},{0.886,0.675,0.616},{0.886,0.675,0.604},{0.894,0.698,0.627},{0.89,0.686,0.612},{0.878,0.647,0.565},{0.867,0.624,0.514},{0.851,0.596,0.486},{0.851,0.596,0.494},{0.847,0.58,0.482},{0.808,0.537,0.447},{0.765,0.498,0.412},{0.725,0.459,0.365},{0.659,0.388,0.302},{0.592,0.329,0.247},{0.482,0.243,0.173},{0.392,0.18,0.129},{0.31,0.133,0.09},{0.227,0.086,0.059},{0.18,0.055,0.031},{0.192,0.047,0.027},{0.239,0.067,0.039},{0.675,0.541,0.518},{0.851,0.749,0.749},{0.882,0.796,0.796},{0.886,0.796,0.804},{0.878,0.643,0.502},{0.878,0.643,0.502},{0.698,0.486,0.388},{0.627,0.416,0.322},{0.78,0.525,0.404},{0.867,0.612,0.498},{0.824,0.557,0.447},{0.761,0.471,0.361},{0.694,0.416,0.306},{0.318,0.165,0.118},{0.463,0.243,0.173},{0.839,0.588,0.455},{0.945,0.71,0.6},{0.929,0.678,0.569},{0.839,0.573,0.447},{0.776,0.494,0.384},{0.878,0.612,0.498},
{0.906,0.643,0.522},{0.898,0.627,0.506},{0.871,0.596,0.478},{0.851,0.486,0.412},{0.827,0.467,0.431},{0.733,0.318,0.267},{0.722,0.529,0.486},{0.106,0.043,0.039},{0.525,0.184,0.176},{0.82,0.392,0.38},{0.851,0.451,0.412},{0.796,0.384,0.29},{0.824,0.529,0.408},{0.835,0.557,0.424},{0.851,0.573,0.447},{0.859,0.584,0.463},{0.855,0.584,0.467},{0.851,0.584,0.478},{0.82,0.541,0.435},{0.761,0.467,0.357},{0.694,0.412,0.286},{0.769,0.498,0.318},{0.769,0.506,0.325},{0.745,0.49,0.322},{0.722,0.467,0.306},{0.702,0.447,0.29},{0.671,0.412,0.267},{0.659,0.4,0.263},{0.639,0.388,0.251},{0.62,0.369,0.235},{0.58,0.325,0.204},{0.557,0.302,0.192},{0.529,0.278,0.169},{0.502,0.255,0.145},{0.4,0.263,0.208},{0.451,0.216,0.129},{0.443,0.322,0.251},{0.282,0.239,0.208},{0.231,0.282,0.267},{0.702,0.471,0.369},{0.82,0.588,0.49},{0.835,0.584,0.506},{0.804,0.525,0.463},{0.749,0.459,0.416},{0.69,0.38,0.341},{0.776,0.482,0.439},{0.863,0.588,0.565},{0.89,0.612,0.549},{0.894,0.627,0.612},{0.898,0.608,0.592},{0.914,0.627,0.612},{0.902,0.588,0.565},{0.898,0.553,0.533},
{0.882,0.514,0.498},{0.871,0.498,0.486},{0.867,0.494,0.475},{0.757,0.435,0.361},{0.722,0.404,0.337},{0.827,0.573,0.51},{0.855,0.627,0.569},{0.875,0.663,0.627},{0.89,0.698,0.663},{0.878,0.663,0.612},{0.851,0.6,0.506},{0.812,0.541,0.455},{0.769,0.486,0.42},{0.714,0.412,0.369},{0.612,0.314,0.286},{0.467,0.2,0.176},{0.337,0.125,0.102},{0.212,0.059,0.047},{0.114,0.02,0.016},{0.067,0.004,0.008},{0.082,0.012,0.008},{0.176,0.043,0.02},{0.306,0.09,0.043},{0.416,0.141,0.067},{0.463,0.173,0.082},{0.502,0.208,0.114},{0.737,0.592,0.565},{0.851,0.757,0.757},{0.89,0.812,0.816},{0.902,0.812,0.824},{0.831,0.608,0.467},{0.831,0.608,0.467},{0.612,0.408,0.318},{0.647,0.427,0.349},{0.859,0.639,0.553},{0.89,0.643,0.537},{0.824,0.565,0.455},{0.812,0.553,0.443},{0.776,0.537,0.443},{0.408,0.251,0.212},{0.408,0.204,0.145},{0.753,0.506,0.4},{0.867,0.624,0.498},{0.898,0.647,0.529},{0.792,0.494,0.373},{0.686,0.322,0.216},{0.82,0.494,0.38},{0.89,0.616,0.494},{0.882,0.62,0.482},{0.855,0.557,0.427},{0.855,0.451,0.376},{0.824,0.439,0.396},{0.718,0.314,0.271},
{0.698,0.514,0.482},{0.149,0.024,0.024},{0.549,0.184,0.176},{0.847,0.431,0.412},{0.878,0.506,0.467},{0.796,0.4,0.306},{0.839,0.545,0.431},{0.851,0.569,0.443},{0.867,0.592,0.467},{0.882,0.616,0.494},{0.902,0.651,0.553},{0.914,0.682,0.604},{0.878,0.62,0.518},{0.804,0.529,0.412},{0.761,0.49,0.322},{0.769,0.506,0.333},{0.753,0.494,0.329},{0.725,0.467,0.318},{0.714,0.459,0.31},{0.698,0.443,0.302},{0.682,0.427,0.29},{0.675,0.42,0.286},{0.659,0.404,0.278},{0.639,0.388,0.259},{0.616,0.365,0.239},{0.6,0.349,0.224},{0.584,0.325,0.204},{0.561,0.31,0.188},{0.486,0.357,0.298},{0.486,0.322,0.239},{0.427,0.447,0.431},{0.192,0.306,0.325},{0.345,0.235,0.188},{0.663,0.431,0.333},{0.737,0.506,0.427},{0.604,0.349,0.294},{0.451,0.176,0.137},{0.533,0.239,0.188},{0.765,0.435,0.396},{0.859,0.518,0.494},{0.89,0.58,0.565},{0.894,0.596,0.522},{0.902,0.639,0.624},{0.918,0.651,0.631},{0.918,0.639,0.624},{0.902,0.635,0.624},{0.882,0.569,0.553},{0.855,0.518,0.506},{0.808,0.459,0.447},{0.769,0.427,0.416},{0.722,0.384,0.337},{0.698,0.357,0.286},{0.749,0.467,0.4},
{0.788,0.537,0.475},{0.784,0.573,0.529},{0.776,0.549,0.51},{0.769,0.537,0.494},{0.702,0.431,0.365},{0.627,0.345,0.29},{0.522,0.239,0.204},{0.408,0.137,0.106},{0.322,0.063,0.047},{0.18,0.008,0.008},{0.141,0.012,0.008},{0.165,0.02,0.012},{0.239,0.047,0.024},{0.325,0.086,0.039},{0.42,0.141,0.063},{0.471,0.18,0.094},{0.498,0.208,0.114},{0.514,0.224,0.122},{0.522,0.227,0.125},{0.522,0.235,0.141},{0.757,0.62,0.596},{0.855,0.761,0.757},{0.902,0.82,0.82},{0.906,0.82,0.827},{0.788,0.608,0.478},{0.788,0.608,0.478},{0.643,0.451,0.349},{0.682,0.459,0.369},{0.922,0.706,0.624},{0.898,0.651,0.557},{0.812,0.541,0.435},{0.769,0.494,0.392},{0.718,0.467,0.376},{0.412,0.255,0.212},{0.216,0.075,0.043},{0.659,0.416,0.318},{0.843,0.6,0.482},{0.867,0.608,0.471},{0.89,0.624,0.486},{0.91,0.635,0.506},{0.929,0.667,0.537},{0.922,0.651,0.522},{0.898,0.635,0.49},{0.863,0.592,0.459},{0.859,0.475,0.38},{0.835,0.42,0.357},{0.761,0.314,0.267},{0.58,0.165,0.133},{0.259,0.02,0.016},{0.482,0.149,0.141},{0.863,0.435,0.416},{0.859,0.416,0.349},{0.847,0.494,0.392},
{0.847,0.557,0.431},{0.859,0.588,0.455},{0.886,0.624,0.498},{0.906,0.643,0.533},{0.918,0.667,0.565},{0.922,0.682,0.604},{0.882,0.627,0.522},{0.784,0.51,0.365},{0.773,0.502,0.329},{0.765,0.506,0.345},{0.745,0.486,0.333},{0.733,0.475,0.333},{0.725,0.471,0.333},{0.714,0.463,0.333},{0.706,0.455,0.325},{0.698,0.447,0.318},{0.694,0.447,0.318},{0.686,0.435,0.31},{0.667,0.42,0.29},{0.647,0.396,0.267},{0.631,0.376,0.247},{0.608,0.353,0.224},{0.529,0.42,0.353},{0.498,0.408,0.357},{0.396,0.565,0.6},{0.18,0.282,0.294},{0.376,0.188,0.114},{0.655,0.431,0.333},{0.702,0.455,0.38},{0.737,0.443,0.376},{0.545,0.235,0.196},{0.482,0.161,0.11},{0.725,0.408,0.318},{0.859,0.514,0.431},{0.886,0.576,0.478},{0.82,0.514,0.396},{0.882,0.588,0.494},{0.906,0.631,0.557},{0.89,0.584,0.506},{0.871,0.569,0.486},{0.835,0.533,0.443},{0.773,0.455,0.369},{0.753,0.447,0.365},{0.725,0.424,0.361},{0.682,0.384,0.337},{0.71,0.369,0.329},{0.733,0.435,0.38},{0.741,0.478,0.424},{0.671,0.431,0.373},{0.659,0.42,0.361},{0.6,0.337,0.271},{0.471,0.196,0.141},{0.349,0.102,0.063},
{0.282,0.059,0.031},{0.255,0.039,0.02},{0.278,0.051,0.02},{0.322,0.075,0.027},{0.373,0.106,0.047},{0.416,0.133,0.067},{0.451,0.165,0.082},{0.486,0.204,0.11},{0.51,0.231,0.133},{0.525,0.239,0.141},{0.525,0.247,0.149},{0.533,0.247,0.149},{0.529,0.247,0.145},{0.537,0.267,0.173},{0.773,0.647,0.635},{0.851,0.753,0.757},{0.898,0.816,0.82},{0.914,0.824,0.831},{0.792,0.659,0.573},{0.792,0.659,0.573},{0.776,0.635,0.537},{0.706,0.514,0.412},{0.851,0.624,0.518},{0.906,0.663,0.561},{0.863,0.588,0.482},{0.8,0.51,0.412},{0.702,0.431,0.349},{0.494,0.302,0.247},{0.208,0.086,0.055},{0.596,0.361,0.271},{0.835,0.596,0.482},{0.871,0.612,0.478},{0.894,0.624,0.486},{0.91,0.635,0.502},{0.929,0.659,0.533},{0.937,0.678,0.553},{0.929,0.659,0.529},{0.906,0.639,0.502},{0.875,0.608,0.471},{0.855,0.518,0.412},{0.839,0.435,0.369},{0.776,0.337,0.286},{0.678,0.235,0.196},{0.639,0.22,0.192},{0.835,0.42,0.373},{0.863,0.486,0.392},{0.882,0.604,0.475},{0.878,0.608,0.467},{0.882,0.62,0.478},{0.898,0.647,0.514},{0.906,0.643,0.518},{0.914,0.659,0.549},{0.918,0.667,0.565},
{0.875,0.62,0.506},{0.773,0.506,0.341},{0.773,0.518,0.357},{0.765,0.51,0.361},{0.757,0.502,0.357},{0.757,0.506,0.369},{0.749,0.502,0.369},{0.737,0.49,0.365},{0.725,0.478,0.349},{0.725,0.471,0.345},{0.725,0.478,0.349},{0.718,0.471,0.341},{0.706,0.455,0.325},{0.686,0.431,0.298},{0.671,0.412,0.275},{0.651,0.392,0.255},{0.627,0.384,0.251},{0.478,0.553,0.557},{0.404,0.549,0.576},{0.282,0.424,0.447},{0.129,0.055,0.035},{0.627,0.396,0.298},{0.718,0.486,0.408},{0.82,0.557,0.498},{0.78,0.471,0.396},{0.612,0.282,0.196},{0.608,0.275,0.18},{0.765,0.455,0.322},{0.792,0.494,0.361},{0.82,0.514,0.384},{0.878,0.588,0.455},{0.925,0.655,0.557},{0.773,0.486,0.388},{0.784,0.502,0.396},{0.733,0.447,0.345},{0.706,0.376,0.302},{0.741,0.42,0.345},{0.765,0.482,0.404},{0.718,0.439,0.373},{0.678,0.353,0.302},{0.706,0.431,0.373},{0.667,0.42,0.353},{0.588,0.337,0.286},{0.494,0.251,0.188},{0.396,0.153,0.094},{0.345,0.106,0.051},{0.322,0.078,0.031},{0.341,0.09,0.039},{0.369,0.11,0.047},{0.404,0.137,0.067},{0.439,0.165,0.086},{0.471,0.192,0.098},{0.494,0.22,0.125},
{0.518,0.239,0.141},{0.529,0.255,0.153},{0.541,0.271,0.161},{0.549,0.278,0.169},{0.553,0.286,0.176},{0.557,0.29,0.18},{0.561,0.294,0.184},{0.576,0.322,0.231},{0.784,0.667,0.663},{0.839,0.733,0.737},{0.906,0.82,0.827},{0.914,0.827,0.835},{0.804,0.69,0.635},{0.804,0.69,0.635},{0.796,0.678,0.62},{0.812,0.69,0.62},{0.796,0.663,0.573},{0.82,0.651,0.549},{0.851,0.651,0.541},{0.863,0.639,0.522},{0.847,0.608,0.49},{0.78,0.545,0.435},{0.631,0.404,0.314},{0.78,0.533,0.427},{0.871,0.624,0.502},{0.898,0.643,0.522},{0.906,0.639,0.51},{0.918,0.643,0.51},{0.933,0.659,0.529},{0.941,0.671,0.541},{0.945,0.675,0.549},{0.937,0.667,0.537},{0.925,0.659,0.529},{0.898,0.635,0.498},{0.875,0.608,0.475},{0.855,0.553,0.431},{0.831,0.518,0.4},{0.839,0.549,0.424},{0.875,0.58,0.455},{0.894,0.635,0.498},{0.882,0.631,0.49},{0.886,0.627,0.486},{0.89,0.627,0.49},{0.894,0.639,0.502},{0.894,0.639,0.51},{0.898,0.643,0.522},{0.886,0.631,0.51},{0.812,0.557,0.424},{0.776,0.514,0.345},{0.776,0.522,0.369},{0.773,0.522,0.373},{0.773,0.525,0.388},{0.769,0.522,0.388},
{0.769,0.525,0.388},{0.761,0.518,0.384},{0.753,0.502,0.373},{0.757,0.502,0.373},{0.757,0.506,0.373},{0.753,0.502,0.373},{0.741,0.494,0.357},{0.718,0.467,0.325},{0.706,0.447,0.31},{0.69,0.431,0.294},{0.631,0.463,0.361},{0.541,0.573,0.549},{0.384,0.631,0.69},{0.396,0.655,0.706},{0.18,0.251,0.275},{0.569,0.357,0.275},{0.627,0.412,0.329},{0.659,0.4,0.333},{0.655,0.349,0.29},{0.671,0.349,0.306},{0.706,0.337,0.263},{0.643,0.208,0.145},{0.525,0.129,0.094},{0.588,0.247,0.216},{0.667,0.306,0.271},{0.753,0.427,0.376},{0.722,0.38,0.329},{0.69,0.345,0.298},{0.667,0.302,0.271},{0.655,0.294,0.267},{0.659,0.302,0.271},{0.635,0.275,0.247},{0.659,0.345,0.286},{0.631,0.325,0.267},{0.624,0.365,0.302},{0.565,0.325,0.267},{0.478,0.235,0.176},{0.396,0.157,0.09},{0.373,0.122,0.059},{0.384,0.129,0.063},{0.4,0.137,0.075},{0.431,0.165,0.094},{0.459,0.196,0.114},{0.482,0.22,0.133},{0.514,0.251,0.157},{0.529,0.267,0.161},{0.545,0.278,0.169},{0.561,0.294,0.18},{0.573,0.302,0.18},{0.573,0.302,0.188},{0.592,0.314,0.196},{0.596,0.322,0.204},{0.596,0.322,0.208},
{0.6,0.329,0.216},{0.62,0.376,0.282},{0.788,0.675,0.667},{0.82,0.71,0.714},{0.894,0.812,0.812},{0.902,0.812,0.82},{0.776,0.663,0.631},{0.776,0.663,0.631},{0.812,0.694,0.651},{0.804,0.69,0.643},{0.792,0.675,0.624},{0.804,0.678,0.608},{0.843,0.706,0.624},{0.855,0.714,0.62},{0.847,0.694,0.58},{0.82,0.651,0.518},{0.792,0.608,0.459},{0.788,0.588,0.439},{0.827,0.604,0.467},{0.894,0.647,0.529},{0.925,0.671,0.549},{0.925,0.663,0.537},{0.929,0.659,0.529},{0.941,0.663,0.537},{0.941,0.667,0.537},{0.945,0.671,0.537},{0.941,0.675,0.541},{0.937,0.667,0.529},{0.925,0.663,0.525},{0.914,0.659,0.514},{0.91,0.659,0.518},{0.91,0.659,0.518},{0.914,0.663,0.522},{0.91,0.659,0.518},{0.902,0.651,0.51},{0.89,0.635,0.494},{0.886,0.627,0.49},{0.886,0.627,0.49},{0.886,0.631,0.494},{0.875,0.62,0.486},{0.859,0.608,0.475},{0.78,0.522,0.376},{0.784,0.525,0.365},{0.788,0.533,0.384},{0.784,0.537,0.392},{0.784,0.545,0.404},{0.784,0.545,0.408},{0.784,0.545,0.412},{0.788,0.545,0.404},{0.776,0.533,0.4},{0.78,0.533,0.4},{0.784,0.537,0.4},{0.78,0.529,0.392},
{0.776,0.529,0.392},{0.749,0.502,0.365},{0.737,0.482,0.345},{0.725,0.475,0.333},{0.604,0.475,0.396},{0.176,0.208,0.224},{0.035,0.047,0.051},{0.243,0.439,0.482},{0.396,0.627,0.678},{0.478,0.341,0.29},{0.545,0.31,0.231},{0.604,0.357,0.286},{0.627,0.337,0.275},{0.635,0.325,0.267},{0.635,0.31,0.259},{0.69,0.376,0.318},{0.698,0.373,0.31},{0.608,0.247,0.188},{0.604,0.267,0.212},{0.62,0.259,0.216},{0.635,0.286,0.255},{0.659,0.31,0.275},{0.659,0.306,0.271},{0.643,0.282,0.251},{0.635,0.286,0.255},{0.627,0.29,0.251},{0.643,0.373,0.294},{0.6,0.357,0.294},{0.545,0.325,0.259},{0.463,0.231,0.169},{0.412,0.169,0.11},{0.412,0.161,0.098},{0.431,0.176,0.106},{0.455,0.2,0.125},{0.482,0.227,0.145},{0.51,0.255,0.165},{0.533,0.278,0.173},{0.553,0.29,0.188},{0.576,0.314,0.2},{0.588,0.322,0.204},{0.604,0.329,0.212},{0.62,0.353,0.227},{0.631,0.361,0.239},{0.627,0.349,0.227},{0.624,0.353,0.231},{0.624,0.349,0.231},{0.624,0.345,0.227},{0.624,0.349,0.231},{0.655,0.424,0.329},{0.792,0.678,0.675},{0.812,0.702,0.71},{0.835,0.729,0.737},{0.839,0.725,0.737},
{0.718,0.604,0.592},{0.718,0.604,0.592},{0.725,0.612,0.592},{0.749,0.635,0.608},{0.788,0.671,0.627},{0.804,0.682,0.627},{0.792,0.667,0.592},{0.8,0.667,0.573},{0.831,0.694,0.6},{0.863,0.722,0.631},{0.863,0.718,0.612},{0.839,0.675,0.549},{0.812,0.635,0.49},{0.804,0.616,0.459},{0.839,0.616,0.471},{0.882,0.639,0.502},{0.914,0.651,0.525},{0.922,0.647,0.522},{0.929,0.651,0.525},{0.933,0.655,0.525},{0.933,0.659,0.529},{0.929,0.659,0.525},{0.925,0.667,0.529},{0.922,0.667,0.529},{0.918,0.667,0.529},{0.922,0.671,0.533},{0.922,0.671,0.529},{0.922,0.671,0.529},{0.918,0.667,0.525},{0.91,0.659,0.518},{0.898,0.651,0.51},{0.894,0.643,0.502},{0.89,0.635,0.502},{0.867,0.62,0.482},{0.827,0.58,0.451},{0.757,0.506,0.361},{0.792,0.541,0.392},{0.796,0.553,0.408},{0.8,0.557,0.416},{0.8,0.553,0.42},{0.8,0.561,0.427},{0.804,0.565,0.431},{0.812,0.565,0.435},{0.812,0.573,0.439},{0.808,0.561,0.424},{0.808,0.569,0.427},{0.804,0.565,0.42},{0.796,0.553,0.412},{0.78,0.537,0.396},{0.773,0.529,0.388},{0.725,0.482,0.345},{0.314,0.173,0.118},{0.035,0.008,0.008},
{0.024,0.016,0.016},{0.008,0.012,0.012},{0.196,0.341,0.376},{0.51,0.357,0.31},{0.616,0.369,0.271},{0.639,0.38,0.286},{0.643,0.384,0.294},{0.635,0.365,0.278},{0.624,0.337,0.243},{0.612,0.325,0.239},{0.588,0.302,0.231},{0.592,0.31,0.243},{0.58,0.29,0.227},{0.592,0.29,0.239},{0.616,0.29,0.243},{0.616,0.286,0.243},{0.624,0.298,0.243},{0.624,0.306,0.255},{0.612,0.29,0.243},{0.6,0.314,0.255},{0.624,0.38,0.31},{0.561,0.361,0.294},{0.475,0.255,0.188},{0.439,0.196,0.129},{0.455,0.216,0.149},{0.478,0.235,0.161},{0.506,0.255,0.169},{0.533,0.282,0.184},{0.565,0.314,0.208},{0.584,0.329,0.22},{0.604,0.345,0.235},{0.612,0.349,0.231},{0.631,0.361,0.239},{0.635,0.373,0.251},{0.651,0.376,0.255},{0.663,0.392,0.267},{0.659,0.384,0.263},{0.663,0.392,0.271},{0.659,0.388,0.263},{0.655,0.384,0.263},{0.647,0.373,0.255},{0.651,0.376,0.255},{0.694,0.471,0.388},{0.796,0.682,0.678},{0.812,0.706,0.714},{0.82,0.725,0.725},{0.831,0.718,0.725},{0.706,0.588,0.58},{0.706,0.588,0.58},{0.714,0.596,0.588},{0.714,0.596,0.588},{0.718,0.604,0.592},{0.725,0.608,0.592},
{0.757,0.647,0.612},{0.788,0.671,0.624},{0.812,0.682,0.608},{0.827,0.694,0.608},{0.831,0.694,0.6},{0.839,0.702,0.6},{0.859,0.722,0.624},{0.875,0.729,0.624},{0.863,0.71,0.592},{0.847,0.678,0.541},{0.839,0.651,0.506},{0.839,0.631,0.482},{0.851,0.631,0.482},{0.855,0.627,0.478},{0.851,0.624,0.475},{0.859,0.635,0.49},{0.875,0.659,0.525},{0.878,0.667,0.537},{0.875,0.667,0.533},{0.863,0.647,0.51},{0.867,0.643,0.506},{0.871,0.655,0.518},{0.871,0.647,0.51},{0.843,0.612,0.475},{0.824,0.588,0.451},{0.8,0.561,0.427},{0.776,0.541,0.4},{0.741,0.506,0.361},{0.694,0.455,0.306},{0.741,0.494,0.353},{0.792,0.545,0.4},{0.808,0.573,0.424},{0.812,0.58,0.439},{0.82,0.584,0.443},{0.82,0.58,0.451},{0.82,0.588,0.451},{0.827,0.592,0.459},{0.831,0.6,0.467},{0.827,0.588,0.447},{0.831,0.596,0.455},{0.82,0.588,0.447},{0.82,0.584,0.439},{0.808,0.573,0.431},{0.765,0.529,0.396},{0.337,0.204,0.153},{0.035,0.008,0.008},{0.016,0.008,0.012},{0.012,0.008,0.012},{0.02,0.008,0.012},{0.004,0.004,0.004},{0.427,0.243,0.18},{0.624,0.369,0.263},{0.639,0.373,0.267},
{0.651,0.38,0.278},{0.667,0.4,0.294},{0.678,0.42,0.318},{0.71,0.459,0.357},{0.714,0.455,0.353},{0.722,0.471,0.361},{0.702,0.443,0.333},{0.647,0.376,0.278},{0.616,0.329,0.247},{0.635,0.345,0.267},{0.639,0.345,0.278},{0.616,0.325,0.251},{0.608,0.302,0.239},{0.624,0.349,0.271},{0.616,0.404,0.341},{0.514,0.302,0.235},{0.482,0.255,0.18},{0.498,0.255,0.176},{0.525,0.275,0.188},{0.549,0.294,0.192},{0.576,0.329,0.22},{0.616,0.365,0.259},{0.631,0.376,0.259},{0.643,0.384,0.267},{0.659,0.404,0.282},{0.667,0.404,0.282},{0.671,0.408,0.282},{0.686,0.416,0.294},{0.69,0.424,0.302},{0.694,0.424,0.298},{0.698,0.427,0.298},{0.694,0.416,0.29},{0.682,0.408,0.282},{0.678,0.404,0.278},{0.675,0.396,0.278},{0.675,0.4,0.278},{0.722,0.514,0.439},{0.796,0.678,0.678},{0.808,0.702,0.71},{0.827,0.725,0.733},{0.839,0.725,0.737},{0.702,0.584,0.576},{0.702,0.584,0.576},{0.702,0.584,0.573},{0.706,0.588,0.576},{0.71,0.592,0.584},{0.714,0.6,0.588},{0.722,0.604,0.592},{0.714,0.6,0.584},{0.718,0.6,0.58},{0.741,0.624,0.58},{0.784,0.663,0.6},{0.824,0.69,0.608},
{0.835,0.702,0.612},{0.839,0.706,0.62},{0.867,0.729,0.643},{0.886,0.753,0.659},{0.902,0.765,0.663},{0.902,0.761,0.647},{0.902,0.753,0.643},{0.902,0.745,0.627},{0.898,0.737,0.612},{0.894,0.733,0.604},{0.89,0.725,0.592},{0.89,0.729,0.596},{0.898,0.729,0.6},{0.894,0.733,0.604},{0.89,0.729,0.6},{0.882,0.714,0.584},{0.859,0.694,0.573},{0.816,0.639,0.506},{0.776,0.588,0.447},{0.741,0.537,0.388},{0.722,0.494,0.333},{0.722,0.486,0.322},{0.725,0.498,0.341},{0.749,0.506,0.373},{0.804,0.561,0.416},{0.816,0.58,0.443},{0.824,0.592,0.455},{0.831,0.596,0.459},{0.843,0.612,0.475},{0.847,0.616,0.478},{0.851,0.62,0.486},{0.851,0.62,0.486},{0.851,0.616,0.478},{0.847,0.612,0.471},{0.843,0.608,0.467},{0.843,0.608,0.467},{0.78,0.553,0.42},{0.302,0.18,0.141},{0.059,0.012,0.02},{0.11,0.067,0.086},{0.02,0.004,0.004},{0.039,0.024,0.027},{0.016,0.012,0.016},{0.016,0.008,0.008},{0.255,0.137,0.106},{0.58,0.325,0.239},{0.631,0.369,0.271},{0.663,0.388,0.278},{0.671,0.392,0.294},{0.678,0.412,0.306},{0.694,0.427,0.325},{0.706,0.439,0.341},{0.682,0.424,0.325},
{0.694,0.439,0.337},{0.706,0.451,0.349},{0.675,0.408,0.302},{0.671,0.396,0.298},{0.663,0.4,0.29},{0.647,0.373,0.259},{0.651,0.361,0.267},{0.62,0.365,0.282},{0.557,0.353,0.286},{0.529,0.31,0.231},{0.545,0.306,0.216},{0.573,0.325,0.216},{0.596,0.341,0.224},{0.627,0.373,0.255},{0.647,0.388,0.271},{0.667,0.412,0.29},{0.678,0.424,0.298},{0.69,0.431,0.298},{0.694,0.431,0.302},{0.706,0.447,0.325},{0.71,0.447,0.314},{0.722,0.459,0.325},{0.718,0.455,0.322},{0.718,0.455,0.325},{0.718,0.455,0.329},{0.718,0.447,0.322},{0.722,0.455,0.325},{0.714,0.451,0.322},{0.706,0.439,0.314},{0.694,0.424,0.302},{0.741,0.545,0.475},{0.796,0.682,0.682},{0.808,0.702,0.706},{0.831,0.733,0.733},{0.847,0.737,0.741},{0.71,0.592,0.588},{0.71,0.592,0.588},{0.706,0.592,0.58},{0.698,0.58,0.573},{0.69,0.569,0.561},{0.714,0.596,0.584},{0.718,0.6,0.592},{0.714,0.596,0.584},{0.706,0.592,0.576},{0.71,0.592,0.576},{0.722,0.608,0.588},{0.725,0.604,0.573},{0.753,0.627,0.569},{0.784,0.655,0.576},{0.788,0.663,0.584},{0.792,0.667,0.584},{0.831,0.698,0.608},{0.863,0.729,0.631},
{0.886,0.753,0.651},{0.902,0.769,0.663},{0.898,0.753,0.639},{0.882,0.722,0.596},{0.863,0.69,0.557},{0.839,0.663,0.518},{0.804,0.627,0.471},{0.8,0.616,0.455},{0.8,0.616,0.455},{0.804,0.616,0.459},{0.82,0.635,0.482},{0.831,0.651,0.502},{0.847,0.667,0.529},{0.863,0.694,0.557},{0.886,0.725,0.6},{0.898,0.745,0.627},{0.878,0.725,0.612},{0.757,0.529,0.4},{0.812,0.576,0.439},{0.827,0.592,0.455},{0.839,0.608,0.467},{0.855,0.624,0.49},{0.859,0.624,0.486},{0.867,0.635,0.51},{0.871,0.643,0.514},{0.871,0.639,0.502},{0.871,0.639,0.51},{0.871,0.631,0.498},{0.863,0.635,0.498},{0.835,0.612,0.478},{0.412,0.29,0.267},{0.129,0.071,0.09},{0.086,0.039,0.055},{0.067,0.024,0.035},{0.086,0.051,0.063},{0.012,0.004,0.008},{0.02,0.012,0.016},{0.012,0.008,0.008},{0.067,0.035,0.031},{0.553,0.322,0.239},{0.588,0.329,0.247},{0.616,0.349,0.259},{0.627,0.357,0.263},{0.643,0.376,0.282},{0.627,0.353,0.263},{0.608,0.333,0.239},{0.608,0.329,0.231},{0.624,0.349,0.247},{0.655,0.384,0.271},{0.678,0.408,0.294},{0.682,0.412,0.294},{0.686,0.404,0.282},{0.678,0.392,0.271},
{0.635,0.361,0.267},{0.569,0.341,0.263},{0.565,0.349,0.271},{0.58,0.345,0.247},{0.592,0.345,0.231},{0.627,0.376,0.259},{0.663,0.408,0.282},{0.682,0.427,0.302},{0.694,0.439,0.31},{0.71,0.447,0.318},{0.729,0.475,0.349},{0.737,0.482,0.353},{0.737,0.478,0.345},{0.741,0.486,0.357},{0.745,0.49,0.357},{0.749,0.494,0.361},{0.749,0.486,0.353},{0.745,0.478,0.349},{0.741,0.482,0.357},{0.745,0.478,0.353},{0.737,0.471,0.345},{0.737,0.478,0.349},{0.729,0.467,0.341},{0.729,0.463,0.341},{0.765,0.576,0.518},{0.8,0.686,0.686},{0.808,0.702,0.71},{0.839,0.741,0.741},{0.863,0.753,0.761},{0.718,0.604,0.604},{0.718,0.604,0.604},{0.686,0.569,0.561},{0.667,0.545,0.537},{0.663,0.541,0.533},{0.694,0.58,0.569},{0.706,0.588,0.576},{0.694,0.58,0.569},{0.69,0.573,0.561},{0.686,0.565,0.553},{0.702,0.584,0.569},{0.718,0.6,0.584},{0.71,0.592,0.573},{0.718,0.6,0.573},{0.749,0.631,0.592},{0.78,0.663,0.608},{0.8,0.678,0.608},{0.808,0.682,0.6},{0.824,0.694,0.616},{0.847,0.718,0.631},{0.882,0.745,0.651},{0.902,0.757,0.647},{0.902,0.749,0.62},{0.902,0.737,0.608},
{0.902,0.741,0.616},{0.906,0.749,0.627},{0.894,0.745,0.624},{0.886,0.737,0.62},{0.851,0.694,0.573},{0.816,0.643,0.514},{0.788,0.612,0.467},{0.769,0.58,0.427},{0.765,0.569,0.408},{0.769,0.569,0.412},{0.757,0.557,0.404},{0.749,0.525,0.396},{0.816,0.596,0.463},{0.835,0.608,0.478},{0.851,0.624,0.49},{0.859,0.643,0.51},{0.867,0.643,0.514},{0.875,0.659,0.525},{0.882,0.655,0.525},{0.882,0.651,0.525},{0.886,0.663,0.537},{0.89,0.663,0.537},{0.878,0.663,0.533},{0.678,0.49,0.416},{0.133,0.075,0.098},{0.169,0.114,0.149},{0.082,0.031,0.047},{0.122,0.063,0.09},{0.098,0.047,0.071},{0.09,0.047,0.059},{0.024,0.012,0.016},{0.031,0.016,0.02},{0.059,0.043,0.047},{0.443,0.255,0.188},{0.565,0.314,0.224},{0.569,0.298,0.22},{0.569,0.302,0.227},{0.58,0.31,0.231},{0.592,0.314,0.224},{0.588,0.31,0.235},{0.6,0.314,0.22},{0.608,0.322,0.224},{0.631,0.341,0.239},{0.667,0.38,0.267},{0.69,0.404,0.286},{0.69,0.404,0.282},{0.647,0.369,0.259},{0.506,0.247,0.173},{0.439,0.231,0.169},{0.612,0.384,0.282},{0.639,0.392,0.278},{0.655,0.404,0.282},{0.682,0.427,0.302},
{0.71,0.455,0.325},{0.722,0.471,0.341},{0.737,0.486,0.357},{0.749,0.498,0.361},{0.761,0.51,0.376},{0.769,0.514,0.38},{0.773,0.522,0.384},{0.776,0.522,0.388},{0.784,0.533,0.4},{0.776,0.522,0.384},{0.773,0.514,0.38},{0.769,0.514,0.38},{0.773,0.514,0.384},{0.773,0.514,0.388},{0.765,0.502,0.38},{0.757,0.494,0.376},{0.749,0.49,0.369},{0.753,0.494,0.369},{0.78,0.604,0.553},{0.8,0.686,0.69},{0.808,0.702,0.71},{0.839,0.741,0.745},{0.867,0.769,0.776},{0.733,0.62,0.627},{0.733,0.62,0.627},{0.678,0.561,0.557},{0.659,0.537,0.529},{0.663,0.541,0.533},{0.686,0.569,0.561},{0.69,0.573,0.561},{0.678,0.561,0.549},{0.667,0.545,0.533},{0.667,0.541,0.529},{0.694,0.576,0.565},{0.694,0.573,0.561},{0.706,0.588,0.573},{0.702,0.584,0.569},{0.71,0.596,0.58},{0.71,0.596,0.576},{0.729,0.612,0.588},{0.753,0.635,0.592},{0.796,0.678,0.624},{0.816,0.698,0.643},{0.827,0.702,0.639},{0.843,0.718,0.651},{0.871,0.749,0.667},{0.906,0.78,0.686},{0.929,0.796,0.69},{0.937,0.796,0.682},{0.929,0.784,0.667},{0.918,0.773,0.643},{0.91,0.753,0.624},{0.886,0.722,0.588},
{0.859,0.686,0.537},{0.843,0.663,0.51},{0.824,0.643,0.486},{0.816,0.631,0.478},{0.792,0.62,0.482},{0.749,0.529,0.412},{0.816,0.604,0.475},{0.843,0.62,0.486},{0.855,0.639,0.51},{0.867,0.651,0.525},{0.882,0.671,0.541},{0.894,0.686,0.557},{0.898,0.69,0.565},{0.906,0.69,0.569},{0.906,0.694,0.573},{0.898,0.678,0.553},{0.902,0.686,0.565},{0.635,0.471,0.412},{0.263,0.2,0.247},{0.137,0.086,0.118},{0.275,0.239,0.29},{0.255,0.239,0.275},{0.263,0.255,0.286},{0.271,0.263,0.282},{0.275,0.271,0.294},{0.188,0.18,0.192},{0.102,0.094,0.098},{0.275,0.165,0.133},{0.573,0.329,0.227},{0.565,0.314,0.216},{0.553,0.298,0.216},{0.565,0.306,0.212},{0.573,0.31,0.216},{0.561,0.302,0.216},{0.592,0.322,0.227},{0.612,0.345,0.239},{0.627,0.353,0.247},{0.643,0.349,0.239},{0.655,0.376,0.255},{0.631,0.361,0.251},{0.545,0.318,0.247},{0.427,0.224,0.169},{0.553,0.337,0.255},{0.659,0.416,0.294},{0.682,0.427,0.306},{0.706,0.455,0.329},{0.725,0.471,0.345},{0.753,0.498,0.369},{0.757,0.502,0.369},{0.78,0.529,0.396},{0.784,0.529,0.396},{0.796,0.549,0.416},{0.804,0.553,0.424},
{0.804,0.553,0.424},{0.804,0.553,0.416},{0.8,0.545,0.412},{0.804,0.549,0.416},{0.804,0.549,0.42},{0.804,0.553,0.424},{0.8,0.541,0.412},{0.8,0.541,0.416},{0.792,0.529,0.4},{0.792,0.533,0.408},{0.784,0.529,0.408},{0.776,0.522,0.396},{0.792,0.624,0.573},{0.8,0.686,0.686},{0.812,0.702,0.71},{0.835,0.741,0.745},{0.871,0.769,0.78},{0.737,0.635,0.639},{0.737,0.635,0.639},{0.702,0.584,0.588},{0.647,0.529,0.522},{0.651,0.525,0.522},{0.675,0.553,0.549},{0.69,0.573,0.569},{0.682,0.561,0.553},{0.647,0.525,0.518},{0.655,0.525,0.518},{0.678,0.557,0.549},{0.671,0.549,0.537},{0.678,0.561,0.545},{0.694,0.573,0.561},{0.706,0.588,0.576},{0.714,0.596,0.58},{0.718,0.596,0.584},{0.718,0.596,0.576},{0.733,0.616,0.596},{0.737,0.624,0.596},{0.753,0.635,0.604},{0.773,0.655,0.616},{0.796,0.678,0.631},{0.808,0.69,0.631},{0.824,0.702,0.639},{0.847,0.722,0.651},{0.867,0.741,0.663},{0.878,0.749,0.667},{0.875,0.737,0.651},{0.863,0.725,0.639},{0.847,0.71,0.616},{0.843,0.702,0.612},{0.82,0.682,0.6},{0.804,0.671,0.608},{0.78,0.643,0.584},{0.725,0.506,0.404},
{0.808,0.592,0.471},{0.843,0.627,0.506},{0.863,0.651,0.518},{0.886,0.675,0.545},{0.898,0.686,0.561},{0.906,0.698,0.576},{0.91,0.702,0.58},{0.918,0.71,0.592},{0.91,0.702,0.58},{0.914,0.702,0.58},{0.906,0.698,0.576},{0.855,0.663,0.565},{0.482,0.486,0.518},{0.459,0.49,0.533},{0.4,0.412,0.451},{0.31,0.306,0.341},{0.298,0.275,0.314},{0.122,0.09,0.114},{0.047,0.031,0.035},{0.039,0.027,0.035},{0.004,0,0.004},{0.016,0.008,0.008},{0.412,0.231,0.165},{0.522,0.286,0.2},{0.51,0.278,0.192},{0.502,0.267,0.184},{0.498,0.263,0.184},{0.506,0.275,0.192},{0.51,0.267,0.184},{0.518,0.267,0.184},{0.529,0.278,0.184},{0.537,0.278,0.184},{0.533,0.282,0.184},{0.573,0.341,0.278},{0.753,0.651,0.631},{0.682,0.525,0.478},{0.675,0.431,0.318},{0.718,0.467,0.345},{0.741,0.486,0.365},{0.757,0.502,0.376},{0.776,0.525,0.392},{0.792,0.537,0.412},{0.8,0.549,0.42},{0.812,0.561,0.435},{0.82,0.569,0.439},{0.824,0.576,0.447},{0.831,0.584,0.455},{0.835,0.588,0.455},{0.835,0.584,0.451},{0.831,0.584,0.447},{0.835,0.584,0.455},{0.831,0.58,0.447},{0.831,0.584,0.451},
{0.824,0.576,0.447},{0.82,0.569,0.435},{0.812,0.557,0.424},{0.804,0.549,0.427},{0.796,0.541,0.42},{0.792,0.533,0.404},{0.808,0.647,0.6},{0.796,0.682,0.682},{0.816,0.706,0.714},{0.831,0.729,0.737},{0.863,0.761,0.769},{0.729,0.624,0.627},{0.729,0.624,0.627},{0.729,0.616,0.624},{0.678,0.561,0.553},{0.667,0.545,0.541},{0.682,0.561,0.561},{0.69,0.573,0.573},{0.678,0.557,0.549},{0.647,0.518,0.514},{0.651,0.529,0.518},{0.671,0.549,0.541},{0.667,0.545,0.533},{0.663,0.541,0.529},{0.663,0.537,0.525},{0.675,0.553,0.541},{0.694,0.573,0.565},{0.702,0.584,0.573},{0.706,0.588,0.573},{0.702,0.584,0.569},{0.706,0.588,0.576},{0.702,0.584,0.569},{0.725,0.608,0.596},{0.733,0.62,0.6},{0.745,0.627,0.608},{0.745,0.631,0.608},{0.741,0.624,0.596},{0.749,0.627,0.604},{0.765,0.647,0.616},{0.773,0.655,0.624},{0.773,0.651,0.62},{0.761,0.639,0.6},{0.757,0.631,0.592},{0.753,0.631,0.596},{0.765,0.643,0.616},{0.773,0.655,0.627},{0.733,0.522,0.439},{0.784,0.553,0.431},{0.843,0.631,0.506},{0.867,0.655,0.529},{0.89,0.678,0.553},{0.906,0.698,0.576},{0.918,0.706,0.584},
{0.922,0.714,0.592},{0.925,0.718,0.604},{0.922,0.71,0.592},{0.925,0.718,0.596},{0.914,0.702,0.584},{0.878,0.667,0.553},{0.282,0.2,0.216},{0.2,0.137,0.18},{0.114,0.059,0.086},{0.137,0.078,0.11},{0.082,0.035,0.055},{0.078,0.035,0.051},{0.043,0.024,0.031},{0.008,0.004,0.004},{0.004,0,0.004},{0.016,0.008,0.008},{0.067,0.031,0.024},{0.357,0.169,0.102},{0.365,0.165,0.094},{0.337,0.145,0.082},{0.322,0.133,0.075},{0.314,0.122,0.067},{0.298,0.114,0.059},{0.294,0.098,0.051},{0.306,0.098,0.055},{0.294,0.09,0.047},{0.545,0.349,0.31},{0.737,0.537,0.498},{0.792,0.624,0.588},{0.686,0.459,0.361},{0.729,0.482,0.361},{0.765,0.506,0.388},{0.796,0.549,0.42},{0.804,0.549,0.42},{0.816,0.561,0.427},{0.827,0.576,0.447},{0.839,0.588,0.459},{0.843,0.6,0.467},{0.851,0.604,0.478},{0.855,0.612,0.482},{0.855,0.616,0.486},{0.855,0.612,0.486},{0.855,0.616,0.482},{0.859,0.62,0.486},{0.859,0.624,0.494},{0.859,0.62,0.482},{0.851,0.612,0.478},{0.847,0.596,0.467},{0.847,0.596,0.463},{0.835,0.584,0.455},{0.827,0.573,0.451},{0.816,0.561,0.435},{0.816,0.561,0.439},
{0.816,0.655,0.612},{0.796,0.678,0.678},{0.816,0.702,0.71},{0.827,0.722,0.729},{0.863,0.749,0.761},{0.737,0.639,0.647},{0.737,0.639,0.647},{0.737,0.639,0.643},{0.729,0.624,0.631},{0.71,0.592,0.596},{0.706,0.592,0.592},{0.702,0.584,0.584},{0.659,0.537,0.525},{0.635,0.506,0.498},{0.655,0.529,0.522},{0.671,0.549,0.537},{0.663,0.541,0.533},{0.671,0.549,0.537},{0.667,0.537,0.529},{0.667,0.533,0.525},{0.678,0.553,0.545},{0.698,0.576,0.569},{0.698,0.58,0.573},{0.702,0.58,0.569},{0.722,0.604,0.596},{0.71,0.592,0.584},{0.702,0.58,0.569},{0.706,0.58,0.569},{0.71,0.588,0.576},{0.698,0.573,0.561},{0.698,0.573,0.561},{0.706,0.58,0.569},{0.714,0.592,0.58},{0.725,0.612,0.596},{0.725,0.612,0.6},{0.729,0.612,0.596},{0.729,0.612,0.6},{0.729,0.616,0.6},{0.737,0.624,0.608},{0.749,0.631,0.62},{0.729,0.545,0.494},{0.773,0.514,0.388},{0.835,0.612,0.486},{0.867,0.651,0.529},{0.89,0.671,0.553},{0.914,0.702,0.58},{0.925,0.714,0.596},{0.929,0.722,0.6},{0.933,0.718,0.612},{0.933,0.725,0.604},{0.929,0.718,0.6},{0.925,0.71,0.592},{0.91,0.694,0.576},
{0.478,0.345,0.322},{0.149,0.086,0.122},{0.137,0.086,0.114},{0.075,0.027,0.047},{0.047,0.012,0.02},{0.047,0.02,0.027},{0.02,0.008,0.012},{0.02,0.008,0.012},{0,0,0},{0,0,0},{0,0,0},{0.208,0.082,0.043},{0.235,0.075,0.031},{0.22,0.063,0.02},{0.216,0.059,0.02},{0.208,0.055,0.016},{0.2,0.043,0.012},{0.196,0.031,0.012},{0.227,0.051,0.027},{0.408,0.208,0.173},{0.718,0.541,0.529},{0.8,0.569,0.533},{0.718,0.455,0.388},{0.737,0.498,0.376},{0.78,0.533,0.408},{0.808,0.565,0.443},{0.824,0.576,0.451},{0.843,0.592,0.463},{0.851,0.608,0.475},{0.859,0.62,0.494},{0.871,0.631,0.51},{0.867,0.627,0.51},{0.867,0.624,0.506},{0.871,0.624,0.502},{0.871,0.639,0.514},{0.871,0.635,0.506},{0.871,0.635,0.506},{0.871,0.631,0.498},{0.871,0.627,0.49},{0.875,0.635,0.51},{0.867,0.624,0.486},{0.863,0.612,0.471},{0.859,0.608,0.475},{0.855,0.608,0.475},{0.843,0.592,0.467},{0.835,0.573,0.443},{0.824,0.569,0.447},{0.827,0.671,0.624},{0.796,0.682,0.69},{0.812,0.706,0.714},{0.827,0.725,0.733},{0.867,0.753,0.761},{0.733,0.635,0.643},
{0.733,0.635,0.643},{0.741,0.651,0.647},{0.745,0.647,0.651},{0.745,0.643,0.647},{0.718,0.608,0.612},{0.682,0.565,0.561},{0.655,0.529,0.525},{0.643,0.518,0.514},{0.651,0.525,0.518},{0.667,0.545,0.537},{0.667,0.541,0.533},{0.69,0.569,0.561},{0.682,0.561,0.553},{0.667,0.537,0.529},{0.675,0.549,0.537},{0.71,0.592,0.58},{0.702,0.584,0.573},{0.702,0.584,0.573},{0.71,0.592,0.584},{0.702,0.58,0.569},{0.686,0.561,0.549},{0.686,0.553,0.545},{0.694,0.573,0.561},{0.698,0.576,0.565},{0.694,0.569,0.561},{0.706,0.576,0.569},{0.714,0.596,0.58},{0.733,0.616,0.608},{0.729,0.616,0.6},{0.729,0.612,0.6},{0.725,0.612,0.6},{0.729,0.62,0.604},{0.722,0.604,0.592},{0.733,0.62,0.604},{0.714,0.498,0.451},{0.757,0.471,0.357},{0.816,0.553,0.431},{0.863,0.639,0.522},{0.886,0.671,0.553},{0.906,0.69,0.569},{0.918,0.698,0.58},{0.929,0.722,0.604},{0.941,0.733,0.627},{0.941,0.733,0.616},{0.929,0.718,0.6},{0.925,0.71,0.596},{0.91,0.694,0.576},{0.784,0.58,0.486},{0.227,0.153,0.173},{0.122,0.067,0.094},{0.055,0.016,0.027},{0.059,0.027,0.039},{0.035,0.02,0.027},
{0.008,0.004,0.008},{0,0,0},{0,0,0},{0,0,0},{0.016,0.004,0.008},{0.247,0.094,0.047},{0.22,0.071,0.024},{0.216,0.067,0.024},{0.216,0.059,0.016},{0.2,0.051,0.016},{0.251,0.078,0.043},{0.376,0.157,0.102},{0.522,0.259,0.184},{0.624,0.345,0.278},{0.753,0.478,0.435},{0.816,0.573,0.533},{0.722,0.486,0.384},{0.78,0.533,0.412},{0.812,0.58,0.447},{0.843,0.604,0.475},{0.855,0.612,0.478},{0.867,0.616,0.494},{0.875,0.631,0.51},{0.886,0.647,0.533},{0.886,0.651,0.537},{0.89,0.655,0.537},{0.886,0.659,0.537},{0.89,0.651,0.533},{0.886,0.655,0.529},{0.89,0.655,0.529},{0.894,0.655,0.529},{0.886,0.651,0.522},{0.886,0.643,0.518},{0.886,0.651,0.518},{0.886,0.643,0.514},{0.882,0.635,0.502},{0.875,0.627,0.502},{0.867,0.62,0.49},{0.859,0.612,0.482},{0.847,0.596,0.467},{0.835,0.584,0.451},{0.839,0.675,0.62},{0.804,0.69,0.698},{0.812,0.71,0.714},{0.824,0.725,0.725},{0.863,0.765,0.769},{0.694,0.576,0.58},{0.694,0.576,0.58},{0.725,0.627,0.631},{0.741,0.643,0.647},{0.749,0.647,0.659},{0.729,0.62,0.627},{0.671,0.549,0.557},
{0.647,0.525,0.518},{0.647,0.525,0.522},{0.663,0.541,0.533},{0.663,0.541,0.533},{0.667,0.541,0.533},{0.671,0.545,0.541},{0.667,0.541,0.533},{0.663,0.537,0.525},{0.659,0.525,0.518},{0.69,0.569,0.557},{0.706,0.584,0.576},{0.698,0.58,0.573},{0.694,0.573,0.565},{0.678,0.557,0.545},{0.686,0.561,0.553},{0.678,0.549,0.541},{0.69,0.561,0.553},{0.698,0.576,0.565},{0.698,0.573,0.565},{0.71,0.588,0.576},{0.725,0.608,0.6},{0.741,0.624,0.616},{0.725,0.612,0.6},{0.729,0.612,0.604},{0.737,0.62,0.612},{0.737,0.62,0.612},{0.718,0.596,0.588},{0.714,0.592,0.58},{0.725,0.573,0.549},{0.749,0.482,0.404},{0.788,0.506,0.388},{0.851,0.612,0.49},{0.878,0.667,0.541},{0.902,0.686,0.569},{0.918,0.71,0.588},{0.925,0.714,0.596},{0.933,0.725,0.608},{0.929,0.718,0.596},{0.925,0.714,0.592},{0.922,0.71,0.588},{0.91,0.694,0.573},{0.886,0.671,0.545},{0.51,0.365,0.318},{0.161,0.106,0.137},{0.067,0.02,0.031},{0.051,0.012,0.024},{0.024,0.012,0.016},{0,0,0},{0.004,0,0},{0,0,0},{0,0,0},{0.098,0.043,0.027},{0.271,0.106,0.051},
{0.235,0.082,0.035},{0.235,0.075,0.027},{0.302,0.118,0.063},{0.404,0.18,0.118},{0.529,0.267,0.196},{0.639,0.357,0.267},{0.694,0.408,0.318},{0.784,0.529,0.459},{0.859,0.635,0.592},{0.753,0.518,0.447},{0.769,0.533,0.416},{0.808,0.576,0.455},{0.839,0.604,0.478},{0.859,0.624,0.494},{0.878,0.643,0.522},{0.886,0.647,0.529},{0.886,0.647,0.525},{0.898,0.663,0.545},{0.894,0.659,0.541},{0.898,0.663,0.549},{0.902,0.671,0.553},{0.906,0.675,0.557},{0.906,0.678,0.561},{0.902,0.663,0.545},{0.906,0.671,0.545},{0.906,0.671,0.545},{0.898,0.663,0.537},{0.894,0.651,0.522},{0.898,0.655,0.525},{0.89,0.647,0.518},{0.882,0.639,0.51},{0.882,0.639,0.51},{0.867,0.62,0.49},{0.859,0.612,0.482},{0.851,0.6,0.471},{0.847,0.682,0.631},{0.816,0.702,0.706},{0.827,0.729,0.733},{0.827,0.729,0.733},{0.863,0.749,0.761},{0.69,0.573,0.58},{0.69,0.573,0.58},{0.678,0.561,0.565},{0.706,0.588,0.596},{0.741,0.639,0.647},{0.737,0.631,0.639},{0.706,0.588,0.596},{0.651,0.525,0.522},{0.635,0.51,0.502},{0.651,0.525,0.518},{0.647,0.522,0.514},{0.651,0.522,0.514},{0.651,0.518,0.514},
{0.659,0.525,0.518},{0.659,0.525,0.518},{0.671,0.537,0.529},{0.686,0.565,0.557},{0.678,0.553,0.541},{0.678,0.553,0.545},{0.675,0.545,0.541},{0.667,0.537,0.529},{0.671,0.537,0.529},{0.682,0.553,0.545},{0.678,0.545,0.537},{0.69,0.569,0.557},{0.698,0.569,0.561},{0.706,0.584,0.576},{0.714,0.592,0.584},{0.733,0.616,0.608},{0.733,0.616,0.608},{0.745,0.627,0.62},{0.749,0.631,0.624},{0.737,0.62,0.612},{0.725,0.608,0.6},{0.714,0.592,0.58},{0.702,0.576,0.565},{0.69,0.549,0.529},{0.729,0.502,0.431},{0.804,0.545,0.427},{0.867,0.635,0.518},{0.882,0.667,0.545},{0.902,0.69,0.561},{0.91,0.702,0.58},{0.914,0.714,0.592},{0.922,0.718,0.596},{0.918,0.71,0.588},{0.91,0.702,0.58},{0.894,0.682,0.561},{0.878,0.659,0.537},{0.808,0.592,0.471},{0.306,0.192,0.173},{0.082,0.035,0.051},{0.024,0.008,0.008},{0.004,0.004,0.004},{0,0,0},{0.004,0,0.004},{0.004,0.004,0.004},{0.012,0.004,0.004},{0.247,0.11,0.059},{0.282,0.11,0.059},{0.361,0.165,0.11},{0.522,0.278,0.208},{0.616,0.345,0.263},{0.702,0.42,0.333},{0.753,0.467,0.376},{0.788,0.506,0.42},
{0.827,0.557,0.475},{0.863,0.631,0.573},{0.8,0.573,0.518},{0.745,0.51,0.408},{0.796,0.557,0.435},{0.824,0.584,0.455},{0.855,0.62,0.498},{0.871,0.639,0.518},{0.882,0.659,0.533},{0.902,0.671,0.553},{0.906,0.675,0.557},{0.906,0.675,0.553},{0.91,0.671,0.553},{0.914,0.678,0.565},{0.914,0.69,0.573},{0.922,0.694,0.58},{0.922,0.698,0.58},{0.925,0.698,0.584},{0.922,0.694,0.576},{0.918,0.69,0.573},{0.918,0.69,0.573},{0.914,0.682,0.561},{0.91,0.675,0.549},{0.906,0.667,0.545},{0.898,0.667,0.545},{0.89,0.655,0.533},{0.882,0.647,0.518},{0.878,0.639,0.506},{0.871,0.631,0.506},{0.867,0.694,0.631},{0.82,0.706,0.706},{0.808,0.698,0.706},{0.82,0.718,0.729},{0.859,0.749,0.757},{0.698,0.58,0.588},{0.698,0.58,0.588},{0.675,0.553,0.561},{0.682,0.565,0.573},{0.682,0.565,0.573},{0.698,0.58,0.588},{0.71,0.592,0.6},{0.671,0.549,0.545},{0.647,0.525,0.518},{0.643,0.522,0.514},{0.639,0.51,0.502},{0.639,0.506,0.502},{0.643,0.51,0.502},{0.655,0.522,0.514},{0.655,0.518,0.51},{0.663,0.529,0.525},{0.675,0.541,0.537},{0.675,0.545,0.541},{0.667,0.533,0.525},
{0.659,0.522,0.518},{0.659,0.522,0.514},{0.671,0.537,0.529},{0.675,0.541,0.533},{0.682,0.549,0.541},{0.69,0.565,0.553},{0.694,0.569,0.557},{0.714,0.592,0.584},{0.714,0.592,0.584},{0.718,0.596,0.588},{0.725,0.608,0.6},{0.725,0.608,0.6},{0.733,0.616,0.608},{0.741,0.624,0.616},{0.729,0.608,0.6},{0.714,0.592,0.584},{0.698,0.573,0.561},{0.69,0.557,0.549},{0.686,0.545,0.537},{0.714,0.525,0.478},{0.812,0.569,0.467},{0.863,0.635,0.514},{0.878,0.671,0.545},{0.894,0.682,0.561},{0.902,0.69,0.569},{0.906,0.69,0.565},{0.902,0.682,0.565},{0.894,0.667,0.549},{0.878,0.651,0.529},{0.808,0.576,0.459},{0.608,0.353,0.251},{0.314,0.102,0.063},{0.114,0.035,0.027},{0.075,0.016,0.008},{0.086,0.012,0.008},{0.106,0.016,0.008},{0.192,0.071,0.055},{0.275,0.114,0.094},{0.333,0.149,0.11},{0.463,0.224,0.157},{0.565,0.306,0.231},{0.682,0.424,0.337},{0.765,0.51,0.42},{0.804,0.561,0.471},{0.831,0.588,0.506},{0.847,0.604,0.525},{0.851,0.616,0.537},{0.859,0.635,0.576},{0.788,0.545,0.49},{0.71,0.459,0.369},{0.769,0.529,0.408},{0.812,0.576,0.455},{0.843,0.612,0.482},
{0.863,0.635,0.514},{0.878,0.663,0.537},{0.898,0.671,0.545},{0.906,0.682,0.557},{0.918,0.702,0.588},{0.918,0.694,0.58},{0.922,0.694,0.584},{0.925,0.702,0.592},{0.929,0.702,0.588},{0.933,0.71,0.604},{0.929,0.698,0.588},{0.937,0.71,0.596},{0.929,0.702,0.588},{0.929,0.706,0.592},{0.929,0.71,0.592},{0.933,0.706,0.588},{0.922,0.702,0.58},{0.914,0.69,0.569},{0.906,0.678,0.557},{0.902,0.667,0.537},{0.902,0.667,0.541},{0.894,0.651,0.525},{0.886,0.643,0.514},{0.878,0.698,0.62},{0.831,0.718,0.714},{0.808,0.694,0.706},{0.816,0.706,0.718},{0.843,0.729,0.741},{0.702,0.584,0.596},{0.702,0.584,0.596},{0.69,0.573,0.58},{0.682,0.565,0.573},{0.682,0.565,0.573},{0.682,0.561,0.569},{0.675,0.553,0.557},{0.647,0.525,0.518},{0.631,0.51,0.502},{0.639,0.518,0.51},{0.639,0.51,0.502},{0.655,0.533,0.525},{0.651,0.525,0.522},{0.647,0.525,0.518},{0.651,0.518,0.51},{0.647,0.518,0.514},{0.667,0.537,0.529},{0.659,0.529,0.525},{0.659,0.525,0.518},{0.663,0.529,0.522},{0.667,0.537,0.529},{0.678,0.549,0.541},{0.686,0.565,0.557},{0.706,0.584,0.576},{0.706,0.588,0.576},
{0.686,0.565,0.557},{0.714,0.592,0.584},{0.722,0.604,0.596},{0.722,0.604,0.596},{0.725,0.608,0.6},{0.737,0.62,0.612},{0.733,0.616,0.608},{0.725,0.608,0.6},{0.71,0.588,0.58},{0.702,0.58,0.569},{0.702,0.58,0.569},{0.714,0.596,0.584},{0.714,0.588,0.58},{0.702,0.573,0.565},{0.71,0.561,0.541},{0.765,0.573,0.506},{0.831,0.612,0.502},{0.871,0.643,0.522},{0.875,0.639,0.514},{0.878,0.639,0.518},{0.875,0.635,0.51},{0.847,0.608,0.478},{0.733,0.478,0.357},{0.553,0.278,0.176},{0.463,0.208,0.125},{0.439,0.212,0.133},{0.384,0.18,0.106},{0.396,0.192,0.11},{0.467,0.251,0.157},{0.529,0.294,0.22},{0.565,0.302,0.231},{0.569,0.31,0.231},{0.62,0.357,0.271},{0.686,0.427,0.341},{0.745,0.498,0.412},{0.792,0.561,0.475},{0.831,0.588,0.51},{0.851,0.616,0.541},{0.863,0.643,0.569},{0.863,0.635,0.561},{0.847,0.612,0.541},{0.776,0.522,0.455},{0.678,0.431,0.345},{0.765,0.529,0.412},{0.808,0.576,0.455},{0.824,0.584,0.463},{0.843,0.612,0.49},{0.863,0.635,0.518},{0.878,0.667,0.545},{0.898,0.678,0.565},{0.918,0.706,0.588},{0.925,0.71,0.592},{0.929,0.71,0.596},
{0.941,0.729,0.616},{0.941,0.722,0.612},{0.937,0.718,0.604},{0.945,0.718,0.612},{0.949,0.729,0.627},{0.945,0.725,0.616},{0.941,0.718,0.608},{0.941,0.725,0.612},{0.941,0.725,0.616},{0.937,0.725,0.608},{0.929,0.71,0.596},{0.929,0.71,0.592},{0.929,0.702,0.584},{0.922,0.694,0.573},{0.922,0.69,0.573},{0.906,0.667,0.545},{0.902,0.667,0.545},{0.89,0.698,0.612},{0.847,0.733,0.729},{0.808,0.694,0.706},{0.82,0.706,0.722},{0.831,0.718,0.729},{0.71,0.596,0.608},{0.71,0.596,0.608},{0.686,0.569,0.576},{0.682,0.565,0.569},{0.682,0.565,0.573},{0.675,0.553,0.561},{0.659,0.533,0.545},{0.655,0.533,0.533},{0.651,0.529,0.525},{0.651,0.529,0.525},{0.655,0.533,0.525},{0.663,0.541,0.533},{0.655,0.529,0.522},{0.659,0.529,0.525},{0.659,0.529,0.525},{0.659,0.529,0.522},{0.659,0.529,0.522},{0.659,0.529,0.525},{0.663,0.533,0.525},{0.667,0.541,0.533},{0.678,0.553,0.549},{0.671,0.545,0.537},{0.678,0.557,0.549},{0.698,0.576,0.569},{0.698,0.576,0.569},{0.706,0.584,0.576},{0.729,0.612,0.604},{0.729,0.612,0.604},{0.722,0.6,0.592},{0.729,0.612,0.604},{0.733,0.616,0.608},
{0.737,0.62,0.612},{0.729,0.612,0.604},{0.722,0.604,0.596},{0.714,0.596,0.584},{0.714,0.596,0.588},{0.722,0.604,0.596},{0.729,0.612,0.604},{0.718,0.596,0.588},{0.71,0.588,0.576},{0.702,0.576,0.565},{0.702,0.565,0.545},{0.753,0.58,0.498},{0.796,0.573,0.447},{0.788,0.545,0.42},{0.776,0.529,0.404},{0.698,0.431,0.31},{0.596,0.325,0.212},{0.576,0.318,0.208},{0.569,0.322,0.208},{0.596,0.341,0.212},{0.608,0.353,0.227},{0.58,0.337,0.243},{0.612,0.365,0.294},{0.663,0.416,0.337},{0.698,0.443,0.357},{0.714,0.455,0.365},{0.725,0.467,0.384},{0.741,0.482,0.404},{0.765,0.51,0.431},{0.784,0.529,0.451},{0.796,0.545,0.478},{0.788,0.545,0.478},{0.769,0.522,0.455},{0.698,0.435,0.373},{0.537,0.278,0.227},{0.498,0.243,0.169},{0.663,0.408,0.302},{0.761,0.529,0.412},{0.816,0.6,0.478},{0.835,0.616,0.486},{0.847,0.624,0.502},{0.863,0.647,0.529},{0.878,0.663,0.545},{0.894,0.682,0.569},{0.914,0.698,0.588},{0.922,0.71,0.588},{0.933,0.722,0.608},{0.933,0.714,0.6},{0.941,0.718,0.604},{0.945,0.722,0.608},{0.949,0.737,0.627},{0.961,0.749,0.643},{0.957,0.741,0.643},
{0.957,0.745,0.647},{0.957,0.745,0.639},{0.957,0.749,0.643},{0.953,0.745,0.639},{0.945,0.737,0.627},{0.949,0.733,0.627},{0.945,0.733,0.612},{0.933,0.718,0.604},{0.929,0.706,0.592},{0.922,0.686,0.573},{0.91,0.682,0.561},{0.902,0.698,0.604},{0.867,0.753,0.749},{0.816,0.702,0.714},{0.82,0.706,0.722},{0.835,0.722,0.729},{0.718,0.612,0.627},{0.718,0.612,0.627},{0.702,0.584,0.592},{0.698,0.584,0.588},{0.686,0.569,0.576},{0.686,0.569,0.576},{0.671,0.549,0.557},{0.671,0.553,0.557},{0.671,0.549,0.557},{0.663,0.537,0.537},{0.659,0.537,0.529},{0.655,0.533,0.525},{0.655,0.525,0.522},{0.655,0.522,0.518},{0.651,0.522,0.518},{0.655,0.525,0.518},{0.651,0.514,0.51},{0.659,0.525,0.522},{0.667,0.537,0.533},{0.667,0.545,0.537},{0.667,0.537,0.529},{0.671,0.541,0.537},{0.694,0.573,0.565},{0.69,0.569,0.561},{0.694,0.573,0.565},{0.714,0.596,0.592},{0.729,0.612,0.604},{0.71,0.588,0.58},{0.718,0.6,0.596},{0.733,0.616,0.612},{0.741,0.624,0.616},{0.741,0.624,0.616},{0.733,0.616,0.608},{0.706,0.584,0.576},{0.698,0.576,0.569},{0.71,0.588,0.58},{0.733,0.616,0.608},
{0.733,0.616,0.608},{0.714,0.596,0.584},{0.706,0.588,0.576},{0.71,0.588,0.58},{0.702,0.58,0.569},{0.706,0.569,0.533},{0.725,0.533,0.4},{0.651,0.424,0.271},{0.663,0.42,0.306},{0.631,0.373,0.243},{0.624,0.361,0.231},{0.608,0.345,0.216},{0.576,0.325,0.212},{0.549,0.318,0.224},{0.576,0.345,0.271},{0.635,0.388,0.31},{0.667,0.42,0.341},{0.69,0.443,0.357},{0.706,0.455,0.373},{0.702,0.439,0.361},{0.698,0.435,0.361},{0.698,0.439,0.369},{0.667,0.404,0.345},{0.592,0.325,0.278},{0.498,0.247,0.208},{0.408,0.165,0.137},{0.282,0.09,0.071},{0.137,0.027,0.016},{0.184,0.024,0.008},{0.38,0.149,0.082},{0.537,0.294,0.2},{0.659,0.412,0.306},{0.745,0.51,0.396},{0.804,0.588,0.467},{0.831,0.62,0.498},{0.855,0.643,0.529},{0.859,0.647,0.529},{0.871,0.651,0.537},{0.89,0.675,0.557},{0.914,0.69,0.573},{0.933,0.725,0.612},{0.941,0.729,0.616},{0.949,0.737,0.62},{0.949,0.733,0.624},{0.961,0.757,0.643},{0.969,0.757,0.655},{0.973,0.769,0.671},{0.976,0.78,0.682},{0.969,0.769,0.663},{0.969,0.769,0.667},{0.965,0.765,0.663},{0.961,0.757,0.655},{0.957,0.757,0.647},
{0.957,0.749,0.643},{0.953,0.745,0.639},{0.945,0.729,0.627},{0.937,0.722,0.612},{0.929,0.71,0.596},{0.914,0.694,0.588},{0.875,0.757,0.749},{0.827,0.718,0.725},{0.816,0.702,0.714},{0.835,0.722,0.729},{0.718,0.612,0.627},{0.718,0.612,0.627},{0.706,0.592,0.604},{0.702,0.588,0.596},{0.698,0.58,0.588},{0.694,0.576,0.584},{0.659,0.537,0.545},{0.667,0.545,0.553},{0.659,0.533,0.545},{0.659,0.533,0.537},{0.659,0.537,0.533},{0.655,0.533,0.525},{0.651,0.529,0.522},{0.655,0.525,0.525},{0.647,0.522,0.518},{0.659,0.533,0.525},{0.651,0.518,0.514},{0.659,0.522,0.518},{0.659,0.525,0.522},{0.659,0.525,0.525},{0.663,0.533,0.529},{0.663,0.533,0.529},{0.678,0.557,0.545},{0.698,0.576,0.569},{0.698,0.576,0.569},{0.706,0.584,0.58},{0.71,0.588,0.58},{0.725,0.608,0.6},{0.725,0.608,0.604},{0.737,0.62,0.616},{0.733,0.612,0.604},{0.714,0.592,0.584},{0.714,0.592,0.584},{0.71,0.588,0.58},{0.725,0.608,0.6},{0.741,0.627,0.62},{0.749,0.631,0.624},{0.741,0.627,0.62},{0.729,0.612,0.604},{0.714,0.592,0.576},{0.718,0.596,0.58},{0.71,0.584,0.573},{0.678,0.514,0.463},
{0.675,0.443,0.322},{0.639,0.384,0.247},{0.612,0.357,0.224},{0.584,0.329,0.204},{0.557,0.318,0.208},{0.533,0.314,0.224},{0.561,0.337,0.255},{0.608,0.373,0.286},{0.647,0.408,0.314},{0.659,0.416,0.337},{0.663,0.42,0.341},{0.647,0.396,0.322},{0.608,0.345,0.275},{0.549,0.278,0.216},{0.471,0.192,0.145},{0.376,0.11,0.075},{0.294,0.047,0.024},{0.224,0.012,0.008},{0.18,0.008,0.008},{0.102,0.004,0.004},{0.063,0.004,0.004},{0.118,0.004,0.004},{0.184,0.008,0.008},{0.235,0.031,0.012},{0.31,0.086,0.039},{0.427,0.188,0.122},{0.533,0.29,0.204},{0.624,0.384,0.286},{0.702,0.467,0.357},{0.757,0.518,0.412},{0.796,0.573,0.451},{0.824,0.6,0.478},{0.851,0.627,0.506},{0.882,0.667,0.549},{0.922,0.702,0.584},{0.941,0.725,0.612},{0.957,0.745,0.635},{0.961,0.753,0.635},{0.969,0.761,0.655},{0.976,0.776,0.667},{0.973,0.78,0.675},{0.976,0.776,0.678},{0.976,0.776,0.671},{0.973,0.773,0.663},{0.976,0.773,0.671},{0.973,0.776,0.675},{0.969,0.773,0.675},{0.965,0.769,0.667},{0.961,0.765,0.659},{0.957,0.753,0.651},{0.953,0.745,0.639},{0.945,0.725,0.616},{0.937,0.714,0.608},
{0.894,0.761,0.729},{0.855,0.741,0.745},{0.82,0.706,0.718},{0.827,0.714,0.722},{0.722,0.624,0.635},{0.722,0.624,0.635},{0.702,0.584,0.6},{0.698,0.584,0.592},{0.694,0.576,0.584},{0.675,0.557,0.565},{0.663,0.537,0.549},{0.659,0.533,0.545},{0.667,0.541,0.553},{0.671,0.553,0.561},{0.671,0.549,0.553},{0.659,0.533,0.537},{0.647,0.522,0.522},{0.643,0.518,0.51},{0.651,0.529,0.522},{0.651,0.529,0.529},{0.659,0.525,0.522},{0.651,0.518,0.514},{0.651,0.518,0.514},{0.663,0.529,0.525},{0.655,0.522,0.518},{0.659,0.522,0.518},{0.675,0.541,0.533},{0.675,0.545,0.541},{0.69,0.573,0.565},{0.714,0.596,0.588},{0.725,0.608,0.604},{0.718,0.596,0.592},{0.718,0.6,0.596},{0.706,0.584,0.576},{0.69,0.565,0.561},{0.714,0.592,0.584},{0.733,0.616,0.612},{0.745,0.627,0.624},{0.737,0.62,0.62},{0.757,0.639,0.643},{0.757,0.643,0.647},{0.757,0.643,0.635},{0.745,0.627,0.62},{0.745,0.627,0.62},{0.718,0.576,0.545},{0.686,0.471,0.369},{0.651,0.396,0.263},{0.616,0.361,0.235},{0.588,0.333,0.212},{0.549,0.318,0.212},{0.533,0.314,0.227},{0.549,0.329,0.247},{0.596,0.365,0.278},
{0.631,0.396,0.306},{0.651,0.412,0.314},{0.663,0.424,0.337},{0.647,0.408,0.325},{0.616,0.373,0.29},{0.584,0.337,0.263},{0.561,0.314,0.239},{0.537,0.286,0.216},{0.529,0.271,0.2},{0.514,0.255,0.184},{0.494,0.235,0.173},{0.447,0.204,0.149},{0.388,0.176,0.133},{0.306,0.141,0.11},{0.243,0.086,0.063},{0.192,0.031,0.024},{0.196,0.012,0.008},{0.212,0.024,0.008},{0.227,0.027,0.012},{0.247,0.035,0.012},{0.278,0.059,0.024},{0.325,0.098,0.047},{0.404,0.165,0.098},{0.486,0.239,0.161},{0.573,0.325,0.231},{0.651,0.408,0.302},{0.733,0.494,0.384},{0.808,0.58,0.467},{0.871,0.647,0.533},{0.922,0.71,0.596},{0.949,0.741,0.639},{0.957,0.753,0.635},{0.965,0.761,0.655},{0.973,0.769,0.655},{0.973,0.769,0.667},{0.973,0.769,0.667},{0.976,0.78,0.675},{0.976,0.784,0.678},{0.976,0.784,0.682},{0.98,0.784,0.686},{0.976,0.788,0.686},{0.976,0.792,0.694},{0.973,0.776,0.678},{0.973,0.776,0.678},{0.973,0.773,0.671},{0.961,0.753,0.655},{0.949,0.737,0.635},{0.91,0.745,0.694},{0.867,0.753,0.757},{0.835,0.722,0.725},{0.824,0.71,0.722},{0.686,0.569,0.58},{0.686,0.569,0.58},
{0.682,0.565,0.573},{0.69,0.569,0.58},{0.675,0.557,0.565},{0.663,0.541,0.553},{0.663,0.541,0.549},{0.655,0.529,0.541},{0.651,0.529,0.537},{0.667,0.545,0.557},{0.678,0.553,0.565},{0.663,0.545,0.545},{0.659,0.529,0.541},{0.663,0.537,0.541},{0.663,0.537,0.545},{0.655,0.529,0.533},{0.651,0.525,0.522},{0.651,0.525,0.525},{0.655,0.518,0.518},{0.659,0.525,0.522},{0.655,0.522,0.518},{0.678,0.553,0.553},{0.675,0.549,0.549},{0.678,0.553,0.545},{0.702,0.576,0.58},{0.741,0.624,0.631},{0.745,0.627,0.631},{0.733,0.616,0.616},{0.71,0.592,0.588},{0.718,0.6,0.6},{0.725,0.608,0.6},{0.725,0.608,0.604},{0.714,0.596,0.588},{0.718,0.6,0.592},{0.71,0.592,0.584},{0.702,0.576,0.569},{0.694,0.569,0.561},{0.706,0.58,0.573},{0.702,0.576,0.569},{0.694,0.549,0.518},{0.671,0.443,0.329},{0.635,0.392,0.263},{0.616,0.373,0.251},{0.565,0.325,0.224},{0.541,0.318,0.231},{0.561,0.333,0.251},{0.592,0.357,0.271},{0.627,0.388,0.294},{0.651,0.412,0.31},{0.663,0.431,0.322},{0.671,0.443,0.345},{0.671,0.451,0.361},{0.675,0.451,0.361},{0.675,0.455,0.365},{0.675,0.451,0.373},
{0.667,0.427,0.353},{0.651,0.408,0.333},{0.627,0.388,0.31},{0.608,0.373,0.294},{0.58,0.341,0.263},{0.553,0.306,0.231},{0.549,0.294,0.224},{0.553,0.286,0.22},{0.557,0.278,0.216},{0.541,0.259,0.196},{0.506,0.227,0.165},{0.396,0.149,0.102},{0.278,0.067,0.035},{0.216,0.02,0.008},{0.224,0.024,0.012},{0.227,0.027,0.012},{0.247,0.035,0.012},{0.259,0.043,0.012},{0.286,0.063,0.02},{0.333,0.094,0.043},{0.404,0.157,0.094},{0.525,0.267,0.18},{0.675,0.427,0.322},{0.792,0.561,0.451},{0.878,0.659,0.553},{0.922,0.718,0.608},{0.945,0.737,0.635},{0.953,0.757,0.647},{0.957,0.753,0.643},{0.969,0.769,0.659},{0.973,0.776,0.671},{0.976,0.784,0.678},{0.984,0.788,0.682},{0.98,0.784,0.678},{0.98,0.796,0.694},{0.98,0.788,0.694},{0.98,0.792,0.698},{0.976,0.792,0.702},{0.976,0.78,0.686},{0.969,0.765,0.675},{0.957,0.745,0.659},{0.933,0.745,0.671},{0.871,0.761,0.757},{0.855,0.741,0.749},{0.835,0.722,0.729},{0.682,0.561,0.573},{0.682,0.561,0.573},{0.675,0.557,0.565},{0.675,0.557,0.569},{0.667,0.545,0.557},{0.655,0.533,0.541},{0.651,0.525,0.537},{0.651,0.525,0.533},
{0.655,0.529,0.537},{0.659,0.533,0.545},{0.663,0.537,0.549},{0.667,0.541,0.553},{0.667,0.545,0.553},{0.659,0.533,0.545},{0.667,0.541,0.549},{0.663,0.537,0.545},{0.655,0.525,0.529},{0.655,0.533,0.533},{0.659,0.529,0.533},{0.663,0.529,0.525},{0.667,0.545,0.545},{0.702,0.58,0.584},{0.71,0.592,0.6},{0.714,0.596,0.6},{0.71,0.592,0.596},{0.753,0.639,0.643},{0.741,0.624,0.627},{0.741,0.627,0.631},{0.737,0.62,0.624},{0.741,0.627,0.631},{0.753,0.635,0.643},{0.745,0.631,0.631},{0.737,0.62,0.62},{0.722,0.6,0.596},{0.706,0.584,0.576},{0.698,0.573,0.565},{0.682,0.553,0.545},{0.675,0.541,0.533},{0.643,0.506,0.482},{0.573,0.392,0.314},{0.494,0.318,0.235},{0.604,0.388,0.294},{0.541,0.325,0.239},{0.545,0.325,0.239},{0.588,0.357,0.259},{0.616,0.38,0.278},{0.639,0.4,0.302},{0.651,0.416,0.31},{0.655,0.42,0.31},{0.663,0.424,0.322},{0.659,0.439,0.337},{0.678,0.455,0.357},{0.698,0.482,0.384},{0.706,0.49,0.396},{0.718,0.49,0.408},{0.718,0.482,0.4},{0.706,0.471,0.388},{0.698,0.463,0.38},{0.682,0.447,0.369},{0.671,0.424,0.341},{0.675,0.427,0.345},
{0.663,0.392,0.314},{0.655,0.384,0.298},{0.635,0.361,0.275},{0.6,0.329,0.255},{0.557,0.282,0.216},{0.533,0.259,0.188},{0.525,0.247,0.184},{0.459,0.192,0.141},{0.376,0.137,0.098},{0.337,0.102,0.071},{0.29,0.063,0.039},{0.239,0.031,0.016},{0.239,0.031,0.012},{0.247,0.035,0.012},{0.259,0.039,0.012},{0.271,0.043,0.012},{0.314,0.063,0.027},{0.376,0.114,0.063},{0.467,0.192,0.129},{0.525,0.251,0.176},{0.573,0.298,0.22},{0.616,0.345,0.259},{0.647,0.369,0.286},{0.667,0.388,0.302},{0.71,0.431,0.337},{0.776,0.51,0.412},{0.867,0.631,0.525},{0.949,0.753,0.643},{0.976,0.788,0.682},{0.984,0.796,0.698},{0.98,0.8,0.706},{0.98,0.8,0.71},{0.98,0.8,0.706},{0.976,0.788,0.698},{0.965,0.769,0.678},{0.953,0.749,0.663},{0.894,0.769,0.753},{0.859,0.749,0.749},{0.847,0.733,0.741},{0.682,0.561,0.58},{0.682,0.561,0.58},{0.682,0.561,0.573},{0.678,0.561,0.569},{0.667,0.549,0.557},{0.663,0.541,0.553},{0.663,0.537,0.549},{0.655,0.533,0.541},{0.659,0.537,0.545},{0.659,0.537,0.545},{0.675,0.553,0.561},{0.682,0.561,0.569},{0.671,0.549,0.557},{0.659,0.533,0.545},
{0.655,0.533,0.541},{0.655,0.529,0.533},{0.651,0.525,0.533},{0.667,0.541,0.549},{0.659,0.537,0.533},{0.667,0.545,0.541},{0.678,0.557,0.561},{0.706,0.588,0.596},{0.714,0.596,0.604},{0.737,0.624,0.631},{0.745,0.631,0.635},{0.737,0.624,0.627},{0.729,0.616,0.62},{0.737,0.624,0.631},{0.745,0.627,0.635},{0.765,0.651,0.659},{0.769,0.659,0.663},{0.761,0.647,0.651},{0.753,0.639,0.639},{0.737,0.62,0.62},{0.741,0.624,0.624},{0.686,0.573,0.557},{0.608,0.482,0.447},{0.553,0.408,0.369},{0.435,0.263,0.196},{0.49,0.282,0.204},{0.514,0.298,0.216},{0.533,0.31,0.22},{0.561,0.329,0.231},{0.588,0.349,0.247},{0.627,0.384,0.278},{0.655,0.408,0.302},{0.671,0.435,0.322},{0.667,0.427,0.314},{0.675,0.439,0.329},{0.675,0.447,0.337},{0.69,0.467,0.365},{0.714,0.494,0.388},{0.729,0.506,0.404},{0.737,0.51,0.412},{0.749,0.525,0.427},{0.761,0.529,0.435},{0.765,0.525,0.443},{0.769,0.533,0.451},{0.773,0.529,0.447},{0.753,0.514,0.427},{0.733,0.478,0.392},{0.722,0.455,0.365},{0.718,0.451,0.357},{0.706,0.443,0.349},{0.69,0.431,0.345},{0.639,0.369,0.282},{0.604,0.325,0.247},
{0.576,0.31,0.239},{0.573,0.298,0.224},{0.557,0.278,0.212},{0.529,0.251,0.188},{0.514,0.227,0.169},{0.502,0.224,0.161},{0.463,0.192,0.137},{0.471,0.196,0.141},{0.482,0.204,0.145},{0.494,0.212,0.149},{0.514,0.227,0.161},{0.533,0.231,0.169},{0.537,0.239,0.165},{0.553,0.251,0.176},{0.576,0.275,0.2},{0.635,0.322,0.239},{0.663,0.329,0.247},{0.69,0.337,0.263},{0.733,0.388,0.314},{0.725,0.4,0.306},{0.682,0.345,0.239},{0.655,0.322,0.208},{0.725,0.435,0.337},{0.871,0.639,0.537},{0.976,0.792,0.698},{0.98,0.808,0.714},{0.984,0.812,0.722},{0.984,0.796,0.706},{0.973,0.776,0.686},{0.965,0.761,0.671},{0.922,0.761,0.706},{0.863,0.749,0.749},{0.855,0.741,0.745},{0.686,0.565,0.58},{0.686,0.565,0.58},{0.69,0.569,0.584},{0.694,0.576,0.592},{0.694,0.576,0.588},{0.686,0.569,0.58},{0.69,0.573,0.584},{0.667,0.549,0.557},{0.663,0.541,0.549},{0.659,0.537,0.549},{0.659,0.541,0.549},{0.663,0.537,0.549},{0.667,0.541,0.553},{0.675,0.553,0.561},{0.667,0.545,0.553},{0.667,0.541,0.553},{0.663,0.533,0.545},{0.682,0.557,0.569},{0.698,0.58,0.588},{0.698,0.58,0.588},
{0.718,0.604,0.612},{0.725,0.616,0.62},{0.733,0.616,0.624},{0.733,0.62,0.627},{0.733,0.616,0.62},{0.725,0.608,0.616},{0.71,0.592,0.596},{0.714,0.596,0.6},{0.741,0.627,0.635},{0.745,0.631,0.639},{0.757,0.643,0.655},{0.757,0.643,0.647},{0.749,0.635,0.635},{0.753,0.639,0.647},{0.745,0.631,0.631},{0.722,0.639,0.616},{0.549,0.373,0.306},{0.537,0.314,0.235},{0.545,0.31,0.227},{0.561,0.325,0.235},{0.584,0.345,0.247},{0.604,0.357,0.259},{0.616,0.376,0.271},{0.631,0.392,0.282},{0.647,0.416,0.302},{0.667,0.435,0.322},{0.678,0.439,0.329},{0.698,0.451,0.341},{0.714,0.475,0.365},{0.725,0.486,0.376},{0.741,0.506,0.396},{0.753,0.518,0.404},{0.769,0.537,0.427},{0.773,0.541,0.435},{0.784,0.549,0.447},{0.792,0.553,0.459},{0.792,0.553,0.459},{0.792,0.541,0.447},{0.761,0.49,0.396},{0.753,0.478,0.384},{0.78,0.498,0.404},{0.792,0.494,0.404},{0.796,0.506,0.408},{0.8,0.533,0.431},{0.796,0.537,0.435},{0.773,0.51,0.408},{0.745,0.463,0.369},{0.741,0.455,0.369},{0.737,0.459,0.369},{0.718,0.447,0.361},{0.671,0.396,0.322},{0.631,0.353,0.278},{0.612,0.325,0.251},
{0.616,0.329,0.255},{0.639,0.357,0.278},{0.651,0.373,0.286},{0.667,0.392,0.294},{0.675,0.392,0.294},{0.675,0.373,0.282},{0.698,0.396,0.302},{0.722,0.42,0.325},{0.729,0.42,0.325},{0.753,0.451,0.361},{0.773,0.482,0.404},{0.769,0.443,0.369},{0.82,0.553,0.514},{0.816,0.533,0.506},{0.824,0.545,0.506},{0.831,0.584,0.525},{0.878,0.78,0.745},{0.812,0.616,0.549},{0.918,0.71,0.604},{0.98,0.804,0.706},{0.984,0.812,0.722},{0.984,0.808,0.714},{0.98,0.792,0.706},{0.98,0.784,0.694},{0.965,0.773,0.69},{0.882,0.761,0.745},{0.859,0.741,0.749},{0.706,0.588,0.608},{0.706,0.588,0.608},{0.706,0.596,0.612},{0.706,0.592,0.608},{0.69,0.573,0.588},{0.686,0.569,0.58},{0.686,0.565,0.58},{0.663,0.541,0.553},{0.663,0.541,0.549},{0.663,0.541,0.553},{0.667,0.545,0.553},{0.663,0.541,0.549},{0.663,0.541,0.553},{0.663,0.537,0.549},{0.663,0.537,0.549},{0.667,0.541,0.553},{0.667,0.541,0.549},{0.682,0.557,0.565},{0.702,0.584,0.592},{0.714,0.596,0.604},{0.694,0.573,0.584},{0.698,0.576,0.588},{0.729,0.612,0.62},{0.718,0.6,0.608},{0.722,0.604,0.612},{0.714,0.596,0.604},
{0.682,0.561,0.561},{0.702,0.58,0.584},{0.725,0.612,0.616},{0.718,0.6,0.612},{0.718,0.6,0.608},{0.737,0.62,0.624},{0.745,0.627,0.635},{0.745,0.635,0.639},{0.718,0.627,0.6},{0.627,0.408,0.322},{0.639,0.396,0.294},{0.643,0.396,0.286},{0.643,0.392,0.29},{0.651,0.408,0.298},{0.647,0.404,0.294},{0.655,0.416,0.31},{0.663,0.431,0.318},{0.663,0.427,0.31},{0.671,0.435,0.318},{0.69,0.455,0.341},{0.698,0.471,0.361},{0.718,0.482,0.369},{0.733,0.49,0.376},{0.745,0.502,0.388},{0.753,0.514,0.396},{0.769,0.529,0.416},{0.773,0.537,0.424},{0.776,0.541,0.427},{0.788,0.541,0.435},{0.784,0.533,0.424},{0.78,0.518,0.412},{0.776,0.498,0.396},{0.796,0.518,0.416},{0.824,0.537,0.439},{0.855,0.584,0.49},{0.871,0.6,0.502},{0.867,0.592,0.494},{0.875,0.612,0.506},{0.878,0.62,0.514},{0.859,0.6,0.498},{0.839,0.58,0.478},{0.847,0.592,0.494},{0.847,0.588,0.49},{0.847,0.588,0.498},{0.835,0.569,0.478},{0.827,0.553,0.467},{0.808,0.533,0.439},{0.773,0.471,0.384},{0.773,0.49,0.408},{0.784,0.522,0.431},{0.796,0.541,0.443},{0.816,0.561,0.463},{0.82,0.553,0.451},
{0.812,0.533,0.435},{0.788,0.506,0.412},{0.82,0.561,0.475},{0.855,0.596,0.51},{0.859,0.588,0.498},{0.827,0.525,0.443},{0.925,0.757,0.729},{0.945,0.796,0.804},{0.929,0.729,0.729},{0.933,0.71,0.698},{0.969,0.878,0.859},{0.945,0.835,0.808},{0.957,0.753,0.659},{0.98,0.816,0.722},{0.984,0.816,0.725},{0.984,0.816,0.725},{0.984,0.808,0.722},{0.984,0.804,0.714},{0.98,0.784,0.694},{0.929,0.776,0.729},{0.863,0.745,0.745},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.694,0.576,0.592},{0.682,0.561,0.58},{0.686,0.565,0.584},{0.69,0.573,0.588},{0.671,0.549,0.561},{0.659,0.541,0.549},{0.667,0.545,0.553},{0.659,0.537,0.549},{0.667,0.541,0.553},{0.671,0.549,0.557},{0.663,0.541,0.549},{0.675,0.549,0.561},{0.655,0.533,0.541},{0.655,0.533,0.541},{0.655,0.529,0.541},{0.659,0.537,0.545},{0.667,0.537,0.549},{0.671,0.545,0.549},{0.71,0.588,0.596},{0.718,0.604,0.612},{0.714,0.6,0.6},{0.718,0.6,0.608},{0.725,0.608,0.612},{0.714,0.596,0.604},{0.733,0.62,0.624},{0.745,0.635,0.643},{0.733,0.624,0.624},{0.729,0.616,0.624},{0.729,0.616,0.616},
{0.741,0.624,0.627},{0.737,0.639,0.631},{0.706,0.533,0.459},{0.749,0.51,0.388},{0.741,0.494,0.373},{0.725,0.478,0.361},{0.706,0.467,0.353},{0.698,0.459,0.345},{0.694,0.451,0.337},{0.71,0.467,0.349},{0.714,0.475,0.353},{0.714,0.475,0.353},{0.714,0.475,0.357},{0.714,0.478,0.365},{0.722,0.486,0.373},{0.718,0.486,0.373},{0.718,0.475,0.365},{0.729,0.478,0.369},{0.745,0.498,0.388},{0.753,0.51,0.388},{0.765,0.514,0.4},{0.78,0.529,0.416},{0.792,0.533,0.427},{0.804,0.549,0.439},{0.82,0.561,0.451},{0.835,0.58,0.471},{0.855,0.6,0.486},{0.855,0.588,0.478},{0.863,0.596,0.486},{0.867,0.596,0.49},{0.875,0.608,0.502},{0.882,0.62,0.506},{0.89,0.631,0.522},{0.89,0.635,0.525},{0.878,0.627,0.522},{0.89,0.643,0.537},{0.91,0.667,0.569},{0.914,0.675,0.588},{0.902,0.647,0.569},{0.875,0.62,0.541},{0.906,0.678,0.616},{0.871,0.604,0.51},{0.863,0.616,0.525},{0.886,0.643,0.557},{0.898,0.659,0.561},{0.91,0.678,0.584},{0.918,0.678,0.58},{0.91,0.663,0.561},{0.89,0.624,0.518},{0.886,0.608,0.51},{0.89,0.624,0.522},{0.898,0.639,0.545},{0.882,0.604,0.506},
{0.886,0.584,0.49},{0.922,0.659,0.588},{0.941,0.69,0.612},{0.945,0.714,0.62},{0.957,0.761,0.678},{0.973,0.773,0.682},{0.98,0.796,0.702},{0.98,0.804,0.714},{0.984,0.808,0.718},{0.984,0.812,0.722},{0.988,0.812,0.725},{0.984,0.804,0.714},{0.984,0.804,0.714},{0.976,0.792,0.714},{0.89,0.769,0.761},{0.698,0.584,0.6},{0.698,0.584,0.6},{0.714,0.604,0.62},{0.714,0.604,0.62},{0.686,0.569,0.588},{0.686,0.569,0.584},{0.69,0.569,0.588},{0.686,0.565,0.584},{0.667,0.549,0.561},{0.675,0.553,0.569},{0.678,0.561,0.573},{0.698,0.576,0.588},{0.702,0.588,0.596},{0.686,0.569,0.576},{0.667,0.549,0.557},{0.667,0.545,0.557},{0.655,0.529,0.541},{0.663,0.537,0.549},{0.667,0.545,0.553},{0.682,0.561,0.573},{0.702,0.584,0.592},{0.725,0.612,0.62},{0.741,0.635,0.643},{0.761,0.659,0.663},{0.761,0.663,0.671},{0.753,0.647,0.659},{0.745,0.635,0.643},{0.745,0.631,0.639},{0.749,0.643,0.647},{0.749,0.639,0.647},{0.749,0.631,0.639},{0.729,0.612,0.612},{0.733,0.616,0.624},{0.804,0.722,0.71},{0.78,0.592,0.494},{0.776,0.537,0.416},{0.765,0.529,0.404},{0.757,0.525,0.4},
{0.745,0.514,0.392},{0.737,0.506,0.388},{0.749,0.514,0.396},{0.753,0.514,0.388},{0.753,0.51,0.384},{0.749,0.506,0.384},{0.741,0.506,0.384},{0.729,0.49,0.373},{0.718,0.475,0.357},{0.714,0.467,0.349},{0.718,0.471,0.353},{0.729,0.486,0.369},{0.733,0.49,0.38},{0.757,0.51,0.392},{0.784,0.537,0.42},{0.804,0.553,0.435},{0.812,0.565,0.455},{0.824,0.58,0.467},{0.835,0.596,0.478},{0.847,0.6,0.486},{0.863,0.612,0.506},{0.863,0.624,0.51},{0.863,0.612,0.502},{0.863,0.608,0.498},{0.859,0.604,0.494},{0.863,0.604,0.494},{0.851,0.592,0.49},{0.835,0.569,0.486},{0.804,0.533,0.443},{0.729,0.424,0.337},{0.686,0.369,0.282},{0.69,0.396,0.325},{0.698,0.439,0.376},{0.714,0.486,0.431},{0.816,0.569,0.51},{0.875,0.616,0.533},{0.859,0.588,0.51},{0.796,0.522,0.435},{0.741,0.463,0.376},{0.725,0.455,0.361},{0.722,0.455,0.357},{0.725,0.459,0.357},{0.741,0.475,0.373},{0.757,0.502,0.392},{0.78,0.529,0.42},{0.804,0.553,0.447},{0.827,0.576,0.463},{0.847,0.6,0.486},{0.875,0.635,0.525},{0.902,0.667,0.561},{0.929,0.706,0.608},{0.953,0.741,0.647},{0.965,0.765,0.675},
{0.973,0.773,0.678},{0.98,0.788,0.694},{0.984,0.78,0.69},{0.984,0.784,0.69},{0.988,0.804,0.714},{0.988,0.816,0.725},{0.984,0.816,0.722},{0.988,0.812,0.722},{0.945,0.792,0.749},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.694,0.576,0.596},{0.69,0.569,0.588},{0.694,0.576,0.596},{0.682,0.565,0.584},{0.686,0.565,0.584},{0.675,0.553,0.573},{0.682,0.561,0.58},{0.686,0.569,0.584},{0.698,0.576,0.592},{0.714,0.592,0.608},{0.725,0.612,0.627},{0.714,0.596,0.604},{0.698,0.58,0.588},{0.678,0.557,0.565},{0.667,0.545,0.553},{0.671,0.549,0.557},{0.686,0.565,0.576},{0.694,0.576,0.584},{0.718,0.604,0.612},{0.753,0.651,0.663},{0.776,0.678,0.686},{0.761,0.663,0.671},{0.745,0.647,0.655},{0.745,0.635,0.643},{0.741,0.627,0.635},{0.733,0.62,0.627},{0.737,0.624,0.631},{0.737,0.62,0.627},{0.741,0.624,0.631},{0.741,0.627,0.631},{0.729,0.612,0.616},{0.733,0.631,0.624},{0.765,0.584,0.498},{0.78,0.537,0.412},{0.792,0.553,0.424},{0.796,0.553,0.427},{0.788,0.557,0.431},{0.78,0.549,0.424},{0.776,0.541,0.424},{0.769,0.525,0.408},{0.769,0.522,0.4},{0.769,0.525,0.404},
{0.769,0.529,0.408},{0.773,0.525,0.404},{0.765,0.522,0.396},{0.761,0.506,0.388},{0.769,0.518,0.396},{0.769,0.518,0.4},{0.776,0.525,0.408},{0.784,0.549,0.431},{0.784,0.545,0.431},{0.792,0.561,0.455},{0.812,0.58,0.471},{0.82,0.584,0.471},{0.827,0.588,0.475},{0.835,0.596,0.486},{0.847,0.596,0.49},{0.843,0.584,0.475},{0.831,0.573,0.463},{0.827,0.545,0.439},{0.831,0.545,0.443},{0.831,0.557,0.455},{0.812,0.537,0.431},{0.776,0.502,0.404},{0.729,0.439,0.341},{0.655,0.341,0.247},{0.525,0.267,0.188},{0.439,0.247,0.18},{0.349,0.169,0.114},{0.255,0.102,0.067},{0.259,0.043,0.024},{0.275,0.039,0.016},{0.282,0.035,0.012},{0.298,0.039,0.012},{0.337,0.063,0.027},{0.361,0.082,0.039},{0.384,0.094,0.043},{0.412,0.118,0.063},{0.447,0.149,0.086},{0.498,0.208,0.137},{0.533,0.247,0.169},{0.565,0.282,0.196},{0.6,0.318,0.239},{0.635,0.365,0.278},{0.663,0.396,0.31},{0.698,0.439,0.349},{0.725,0.467,0.376},{0.761,0.518,0.424},{0.804,0.557,0.463},{0.851,0.608,0.514},{0.898,0.667,0.569},{0.953,0.737,0.643},{0.984,0.78,0.682},{0.992,0.8,0.702},{0.992,0.812,0.718},
{0.988,0.82,0.729},{0.988,0.82,0.729},{0.98,0.796,0.714},{0.69,0.573,0.592},{0.69,0.573,0.592},{0.686,0.565,0.584},{0.69,0.569,0.588},{0.698,0.576,0.596},{0.694,0.58,0.596},{0.678,0.557,0.576},{0.686,0.569,0.584},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.698,0.58,0.596},{0.725,0.612,0.627},{0.725,0.62,0.631},{0.722,0.608,0.62},{0.686,0.565,0.58},{0.675,0.553,0.565},{0.682,0.557,0.569},{0.69,0.573,0.58},{0.698,0.58,0.588},{0.706,0.588,0.596},{0.729,0.62,0.627},{0.765,0.667,0.678},{0.765,0.667,0.678},{0.769,0.671,0.682},{0.749,0.655,0.663},{0.749,0.643,0.655},{0.749,0.643,0.651},{0.745,0.635,0.643},{0.729,0.612,0.62},{0.722,0.604,0.612},{0.733,0.616,0.624},{0.737,0.624,0.627},{0.749,0.635,0.643},{0.737,0.62,0.624},{0.757,0.624,0.569},{0.796,0.561,0.435},{0.816,0.584,0.459},{0.816,0.58,0.459},{0.812,0.576,0.451},{0.804,0.569,0.443},{0.784,0.549,0.427},{0.78,0.537,0.416},{0.78,0.545,0.42},{0.792,0.557,0.435},{0.808,0.573,0.455},{0.812,0.573,0.459},{0.804,0.557,0.443},{0.804,0.557,0.439},{0.808,0.569,0.447},{0.8,0.549,0.435},
{0.784,0.533,0.416},{0.788,0.541,0.427},{0.8,0.561,0.447},{0.816,0.573,0.463},{0.827,0.584,0.467},{0.835,0.584,0.471},{0.827,0.565,0.451},{0.82,0.549,0.439},{0.812,0.533,0.424},{0.812,0.522,0.42},{0.812,0.522,0.42},{0.831,0.537,0.455},{0.831,0.533,0.451},{0.839,0.557,0.459},{0.831,0.549,0.439},{0.808,0.541,0.427},{0.741,0.482,0.38},{0.463,0.427,0.373},{0.42,0.396,0.345},{0.42,0.404,0.349},{0.533,0.424,0.337},{0.518,0.231,0.153},{0.549,0.22,0.129},{0.533,0.188,0.114},{0.506,0.161,0.098},{0.447,0.125,0.075},{0.388,0.09,0.055},{0.329,0.063,0.031},{0.306,0.043,0.016},{0.318,0.051,0.012},{0.337,0.059,0.02},{0.353,0.075,0.035},{0.38,0.09,0.043},{0.4,0.102,0.055},{0.408,0.106,0.055},{0.404,0.106,0.059},{0.392,0.094,0.051},{0.412,0.114,0.067},{0.459,0.149,0.094},{0.51,0.192,0.129},{0.549,0.22,0.161},{0.616,0.275,0.208},{0.667,0.341,0.251},{0.686,0.361,0.263},{0.745,0.451,0.349},{0.871,0.635,0.533},{0.973,0.784,0.686},{0.988,0.824,0.733},{0.992,0.824,0.733},{0.988,0.808,0.722},{0.686,0.569,0.584},{0.686,0.569,0.584},{0.682,0.561,0.584},
{0.69,0.569,0.588},{0.682,0.561,0.584},{0.682,0.565,0.584},{0.682,0.561,0.58},{0.682,0.561,0.58},{0.69,0.569,0.588},{0.682,0.565,0.58},{0.686,0.565,0.58},{0.69,0.569,0.584},{0.694,0.576,0.592},{0.675,0.553,0.569},{0.663,0.541,0.553},{0.667,0.549,0.557},{0.686,0.569,0.576},{0.698,0.58,0.588},{0.718,0.604,0.616},{0.733,0.624,0.635},{0.745,0.643,0.655},{0.757,0.655,0.667},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.745,0.643,0.655},{0.749,0.647,0.655},{0.749,0.643,0.651},{0.745,0.631,0.639},{0.741,0.631,0.639},{0.733,0.624,0.631},{0.741,0.635,0.639},{0.757,0.651,0.655},{0.753,0.639,0.643},{0.741,0.631,0.631},{0.792,0.596,0.498},{0.831,0.608,0.486},{0.839,0.604,0.486},{0.839,0.604,0.486},{0.831,0.596,0.478},{0.816,0.573,0.459},{0.808,0.569,0.455},{0.812,0.576,0.463},{0.82,0.588,0.471},{0.827,0.6,0.482},{0.831,0.596,0.486},{0.827,0.592,0.478},{0.824,0.588,0.478},{0.827,0.588,0.478},{0.812,0.58,0.467},{0.796,0.573,0.463},{0.82,0.588,0.478},{0.835,0.592,0.478},{0.847,0.596,0.482},{0.863,0.624,0.51},{0.871,0.631,0.518},
{0.871,0.624,0.506},{0.867,0.608,0.498},{0.867,0.6,0.498},{0.875,0.6,0.498},{0.878,0.604,0.502},{0.89,0.62,0.525},{0.902,0.643,0.545},{0.902,0.643,0.549},{0.898,0.639,0.541},{0.882,0.627,0.529},{0.714,0.529,0.443},{0.525,0.616,0.557},{0.482,0.624,0.6},{0.443,0.49,0.463},{0.525,0.478,0.427},{0.702,0.435,0.333},{0.757,0.482,0.38},{0.714,0.404,0.31},{0.643,0.306,0.22},{0.6,0.251,0.169},{0.596,0.247,0.165},{0.616,0.278,0.188},{0.624,0.29,0.196},{0.616,0.286,0.196},{0.616,0.286,0.196},{0.62,0.29,0.204},{0.616,0.286,0.2},{0.62,0.286,0.2},{0.624,0.298,0.208},{0.627,0.306,0.216},{0.627,0.306,0.22},{0.635,0.318,0.235},{0.667,0.357,0.282},{0.686,0.376,0.302},{0.69,0.373,0.31},{0.741,0.471,0.427},{0.753,0.471,0.443},{0.78,0.506,0.471},{0.812,0.584,0.529},{0.878,0.765,0.729},{0.859,0.659,0.576},{0.984,0.831,0.741},{0.988,0.831,0.745},{0.988,0.816,0.725},{0.675,0.553,0.573},{0.675,0.553,0.573},{0.671,0.549,0.569},{0.678,0.557,0.576},{0.678,0.561,0.58},{0.678,0.557,0.576},{0.686,0.569,0.588},{0.69,0.569,0.588},{0.69,0.569,0.588},
{0.682,0.561,0.58},{0.686,0.565,0.584},{0.682,0.561,0.58},{0.675,0.557,0.569},{0.671,0.549,0.565},{0.667,0.545,0.557},{0.682,0.565,0.573},{0.694,0.576,0.588},{0.71,0.596,0.608},{0.729,0.616,0.627},{0.733,0.627,0.639},{0.749,0.647,0.659},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.741,0.643,0.655},{0.749,0.655,0.663},{0.757,0.655,0.667},{0.761,0.659,0.671},{0.753,0.643,0.655},{0.757,0.655,0.663},{0.757,0.659,0.667},{0.765,0.667,0.675},{0.765,0.667,0.667},{0.757,0.643,0.651},{0.729,0.616,0.62},{0.824,0.733,0.706},{0.812,0.604,0.49},{0.847,0.627,0.518},{0.855,0.631,0.522},{0.851,0.624,0.506},{0.839,0.616,0.498},{0.835,0.608,0.498},{0.835,0.608,0.494},{0.831,0.612,0.506},{0.839,0.616,0.51},{0.839,0.62,0.514},{0.835,0.612,0.506},{0.824,0.608,0.502},{0.816,0.604,0.498},{0.816,0.604,0.506},{0.831,0.608,0.51},{0.835,0.6,0.494},{0.835,0.6,0.49},{0.843,0.608,0.498},{0.847,0.608,0.502},{0.863,0.627,0.518},{0.875,0.635,0.525},{0.878,0.635,0.522},{0.886,0.639,0.529},{0.894,0.643,0.537},{0.902,0.647,0.537},{0.906,0.655,0.549},
{0.918,0.671,0.576},{0.91,0.667,0.565},{0.906,0.671,0.569},{0.906,0.667,0.565},{0.675,0.58,0.518},{0.51,0.502,0.455},{0.533,0.6,0.576},{0.616,0.784,0.773},{0.714,0.576,0.506},{0.886,0.651,0.549},{0.878,0.627,0.529},{0.863,0.612,0.518},{0.835,0.569,0.486},{0.792,0.514,0.431},{0.761,0.482,0.404},{0.769,0.502,0.424},{0.784,0.529,0.439},{0.792,0.541,0.451},{0.8,0.545,0.447},{0.804,0.553,0.459},{0.8,0.549,0.443},{0.796,0.545,0.443},{0.8,0.545,0.439},{0.8,0.541,0.447},{0.812,0.541,0.447},{0.8,0.498,0.42},{0.804,0.525,0.447},{0.784,0.502,0.424},{0.769,0.486,0.412},{0.875,0.698,0.69},{0.867,0.667,0.663},{0.878,0.667,0.659},{0.89,0.663,0.659},{0.945,0.843,0.827},{0.922,0.769,0.71},{0.98,0.82,0.729},{0.984,0.827,0.737},{0.984,0.812,0.729},{0.671,0.549,0.569},{0.671,0.549,0.569},{0.675,0.553,0.576},{0.678,0.557,0.576},{0.671,0.549,0.569},{0.671,0.549,0.569},{0.667,0.541,0.561},{0.682,0.561,0.58},{0.694,0.573,0.592},{0.69,0.569,0.588},{0.682,0.561,0.576},{0.682,0.561,0.58},{0.675,0.553,0.569},{0.686,0.565,0.58},{0.686,0.565,0.58},
{0.694,0.573,0.588},{0.718,0.6,0.612},{0.733,0.62,0.631},{0.737,0.631,0.647},{0.749,0.651,0.663},{0.749,0.651,0.663},{0.749,0.651,0.663},{0.753,0.655,0.667},{0.745,0.647,0.659},{0.745,0.647,0.659},{0.761,0.663,0.675},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.753,0.647,0.663},{0.753,0.651,0.659},{0.761,0.663,0.671},{0.761,0.663,0.667},{0.753,0.647,0.659},{0.745,0.631,0.643},{0.725,0.608,0.616},{0.741,0.624,0.631},{0.8,0.682,0.651},{0.812,0.596,0.486},{0.824,0.608,0.49},{0.831,0.612,0.498},{0.831,0.616,0.498},{0.824,0.608,0.49},{0.82,0.604,0.494},{0.816,0.608,0.498},{0.808,0.592,0.486},{0.812,0.588,0.478},{0.812,0.584,0.475},{0.812,0.58,0.467},{0.82,0.584,0.471},{0.824,0.584,0.471},{0.824,0.588,0.478},{0.827,0.588,0.482},{0.831,0.596,0.49},{0.839,0.604,0.494},{0.859,0.624,0.514},{0.867,0.624,0.51},{0.875,0.631,0.529},{0.875,0.635,0.525},{0.871,0.639,0.525},{0.882,0.639,0.533},{0.89,0.647,0.541},{0.898,0.663,0.557},{0.898,0.663,0.561},{0.894,0.659,0.553},{0.886,0.647,0.545},{0.89,0.655,0.569},{0.835,0.616,0.541},{0.667,0.553,0.49},
{0.608,0.58,0.537},{0.698,0.671,0.631},{0.71,0.51,0.439},{0.937,0.733,0.647},{0.937,0.71,0.627},{0.922,0.675,0.592},{0.91,0.643,0.565},{0.922,0.694,0.627},{0.89,0.647,0.573},{0.878,0.62,0.541},{0.882,0.639,0.553},{0.886,0.671,0.596},{0.902,0.686,0.608},{0.918,0.706,0.627},{0.922,0.698,0.624},{0.914,0.69,0.608},{0.894,0.667,0.58},{0.89,0.655,0.573},{0.875,0.62,0.545},{0.878,0.616,0.537},{0.882,0.631,0.557},{0.867,0.608,0.522},{0.847,0.561,0.482},{0.906,0.71,0.675},{0.922,0.725,0.702},{0.941,0.725,0.678},{0.945,0.722,0.639},{0.965,0.788,0.714},{0.98,0.796,0.698},{0.98,0.812,0.722},{0.98,0.816,0.722},{0.984,0.808,0.722},{0.675,0.557,0.576},{0.675,0.557,0.576},{0.678,0.557,0.58},{0.686,0.565,0.584},{0.678,0.557,0.576},{0.671,0.549,0.569},{0.682,0.561,0.576},{0.69,0.569,0.588},{0.686,0.565,0.584},{0.686,0.573,0.588},{0.69,0.569,0.588},{0.686,0.565,0.584},{0.686,0.565,0.584},{0.678,0.557,0.576},{0.686,0.565,0.584},{0.694,0.576,0.592},{0.722,0.608,0.624},{0.737,0.624,0.639},{0.737,0.639,0.651},{0.745,0.647,0.659},{0.745,0.647,0.659},
{0.757,0.659,0.671},{0.765,0.667,0.682},{0.765,0.667,0.678},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.761,0.663,0.675},{0.749,0.639,0.655},{0.745,0.635,0.647},{0.749,0.639,0.647},{0.745,0.635,0.647},{0.741,0.627,0.639},{0.733,0.616,0.627},{0.729,0.616,0.624},{0.733,0.616,0.624},{0.737,0.62,0.624},{0.78,0.643,0.612},{0.816,0.6,0.482},{0.82,0.592,0.475},{0.816,0.6,0.478},{0.827,0.612,0.49},{0.827,0.604,0.482},{0.827,0.596,0.471},{0.827,0.592,0.471},{0.82,0.58,0.463},{0.827,0.58,0.455},{0.827,0.58,0.451},{0.831,0.573,0.451},{0.831,0.58,0.447},{0.835,0.58,0.447},{0.831,0.576,0.443},{0.831,0.573,0.447},{0.839,0.58,0.459},{0.851,0.592,0.475},{0.863,0.608,0.486},{0.875,0.624,0.498},{0.878,0.624,0.506},{0.886,0.635,0.525},{0.89,0.624,0.522},{0.898,0.639,0.533},{0.91,0.663,0.561},{0.914,0.671,0.573},{0.894,0.655,0.553},{0.882,0.635,0.529},{0.843,0.588,0.482},{0.804,0.541,0.439},{0.757,0.494,0.384},{0.702,0.447,0.349},{0.667,0.525,0.463},{0.71,0.537,0.459},{0.733,0.482,0.388},{0.765,0.514,0.431},{0.863,0.608,0.533},
{0.929,0.686,0.612},{0.949,0.737,0.682},{0.941,0.71,0.647},{0.925,0.682,0.608},{0.933,0.714,0.639},{0.937,0.722,0.639},{0.941,0.729,0.651},{0.941,0.722,0.639},{0.914,0.682,0.592},{0.894,0.651,0.565},{0.882,0.643,0.549},{0.878,0.635,0.533},{0.875,0.627,0.529},{0.878,0.62,0.514},{0.89,0.643,0.545},{0.906,0.671,0.565},{0.929,0.694,0.592},{0.953,0.733,0.635},{0.973,0.773,0.675},{0.976,0.78,0.69},{0.976,0.773,0.675},{0.98,0.773,0.675},{0.976,0.796,0.706},{0.98,0.808,0.718},{0.98,0.816,0.722},{0.98,0.804,0.71},{0.678,0.557,0.58},{0.678,0.557,0.58},{0.682,0.557,0.58},{0.682,0.561,0.584},{0.694,0.573,0.592},{0.686,0.565,0.584},{0.69,0.569,0.588},{0.678,0.557,0.576},{0.678,0.561,0.58},{0.686,0.569,0.588},{0.686,0.569,0.584},{0.682,0.561,0.58},{0.675,0.553,0.573},{0.678,0.557,0.576},{0.686,0.565,0.584},{0.686,0.569,0.584},{0.71,0.592,0.608},{0.729,0.62,0.635},{0.733,0.635,0.647},{0.741,0.643,0.655},{0.753,0.655,0.667},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.753,0.651,0.663},{0.765,0.667,0.678},{0.765,0.667,0.678},{0.765,0.667,0.678},
{0.757,0.659,0.671},{0.753,0.647,0.659},{0.745,0.635,0.647},{0.741,0.631,0.643},{0.745,0.627,0.643},{0.745,0.635,0.647},{0.741,0.627,0.639},{0.733,0.616,0.624},{0.741,0.624,0.631},{0.741,0.624,0.631},{0.722,0.604,0.612},{0.753,0.588,0.541},{0.808,0.569,0.455},{0.812,0.58,0.463},{0.82,0.588,0.467},{0.82,0.584,0.459},{0.816,0.576,0.447},{0.816,0.569,0.443},{0.808,0.561,0.439},{0.812,0.569,0.447},{0.816,0.58,0.459},{0.82,0.58,0.463},{0.827,0.588,0.467},{0.827,0.588,0.467},{0.831,0.6,0.482},{0.827,0.596,0.478},{0.835,0.608,0.494},{0.839,0.604,0.494},{0.843,0.6,0.486},{0.863,0.616,0.498},{0.878,0.627,0.514},{0.886,0.639,0.529},{0.894,0.639,0.529},{0.894,0.639,0.529},{0.902,0.647,0.545},{0.914,0.659,0.561},{0.902,0.651,0.549},{0.902,0.663,0.569},{0.894,0.659,0.565},{0.878,0.643,0.545},{0.851,0.604,0.494},{0.824,0.565,0.455},{0.831,0.584,0.475},{0.82,0.584,0.478},{0.784,0.545,0.443},{0.757,0.471,0.369},{0.702,0.357,0.267},{0.694,0.329,0.239},{0.741,0.404,0.322},{0.765,0.439,0.361},{0.741,0.424,0.341},{0.682,0.365,0.29},{0.584,0.271,0.212},
{0.502,0.18,0.129},{0.443,0.118,0.071},{0.447,0.114,0.063},{0.459,0.137,0.078},{0.478,0.157,0.098},{0.494,0.18,0.114},{0.514,0.204,0.137},{0.541,0.224,0.153},{0.561,0.247,0.173},{0.616,0.298,0.22},{0.694,0.392,0.302},{0.792,0.498,0.404},{0.91,0.675,0.573},{0.976,0.788,0.694},{0.98,0.812,0.722},{0.98,0.808,0.718},{0.98,0.8,0.714},{0.98,0.812,0.722},{0.98,0.812,0.722},{0.98,0.8,0.71},{0.69,0.573,0.588},{0.69,0.573,0.588},{0.69,0.569,0.588},{0.678,0.553,0.576},{0.686,0.565,0.588},{0.682,0.561,0.58},{0.678,0.557,0.58},{0.686,0.565,0.588},{0.686,0.565,0.584},{0.675,0.553,0.565},{0.678,0.557,0.576},{0.678,0.557,0.573},{0.682,0.561,0.58},{0.698,0.576,0.596},{0.702,0.584,0.6},{0.694,0.573,0.592},{0.706,0.592,0.608},{0.733,0.624,0.635},{0.737,0.635,0.647},{0.741,0.643,0.655},{0.733,0.624,0.639},{0.745,0.639,0.655},{0.753,0.655,0.667},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.765,0.667,0.678},{0.769,0.671,0.682},{0.757,0.659,0.671},{0.757,0.655,0.667},{0.749,0.647,0.663},{0.749,0.647,0.659},{0.745,0.635,0.651},{0.749,0.639,0.651},
{0.757,0.639,0.655},{0.749,0.639,0.651},{0.745,0.627,0.639},{0.745,0.627,0.639},{0.741,0.624,0.635},{0.745,0.631,0.639},{0.769,0.608,0.569},{0.82,0.588,0.478},{0.843,0.6,0.482},{0.831,0.58,0.455},{0.816,0.557,0.424},{0.804,0.549,0.416},{0.796,0.537,0.408},{0.788,0.533,0.404},{0.788,0.533,0.408},{0.788,0.541,0.416},{0.8,0.553,0.431},{0.812,0.565,0.439},{0.831,0.588,0.467},{0.839,0.6,0.482},{0.851,0.612,0.502},{0.863,0.627,0.518},{0.871,0.631,0.522},{0.875,0.627,0.518},{0.878,0.627,0.518},{0.882,0.639,0.537},{0.894,0.651,0.553},{0.902,0.647,0.557},{0.91,0.659,0.569},{0.914,0.675,0.584},{0.922,0.678,0.596},{0.922,0.69,0.6},{0.918,0.69,0.6},{0.91,0.682,0.584},{0.898,0.651,0.549},{0.902,0.647,0.541},{0.914,0.659,0.557},{0.918,0.675,0.58},{0.898,0.655,0.561},{0.871,0.612,0.525},{0.847,0.565,0.475},{0.82,0.522,0.431},{0.824,0.529,0.435},{0.831,0.545,0.447},{0.808,0.51,0.412},{0.769,0.463,0.361},{0.737,0.412,0.318},{0.714,0.38,0.282},{0.69,0.353,0.259},{0.686,0.337,0.243},{0.675,0.318,0.227},{0.659,0.298,0.208},{0.639,0.278,0.192},
{0.639,0.282,0.196},{0.639,0.29,0.204},{0.631,0.282,0.2},{0.651,0.306,0.243},{0.694,0.357,0.286},{0.71,0.357,0.275},{0.714,0.392,0.298},{0.804,0.549,0.451},{0.957,0.769,0.675},{0.98,0.831,0.737},{0.98,0.816,0.725},{0.98,0.804,0.714},{0.98,0.812,0.718},{0.984,0.804,0.71},{0.69,0.569,0.588},{0.69,0.569,0.588},{0.682,0.561,0.584},{0.675,0.553,0.576},{0.69,0.569,0.588},{0.69,0.569,0.588},{0.69,0.573,0.588},{0.694,0.573,0.592},{0.686,0.565,0.584},{0.682,0.565,0.584},{0.686,0.565,0.58},{0.682,0.561,0.576},{0.69,0.569,0.588},{0.69,0.569,0.588},{0.69,0.573,0.588},{0.69,0.569,0.588},{0.702,0.58,0.6},{0.725,0.612,0.627},{0.729,0.624,0.639},{0.741,0.631,0.647},{0.741,0.643,0.655},{0.741,0.639,0.651},{0.745,0.643,0.655},{0.749,0.651,0.663},{0.741,0.643,0.659},{0.749,0.651,0.663},{0.749,0.647,0.659},{0.749,0.651,0.663},{0.757,0.659,0.671},{0.753,0.651,0.663},{0.757,0.655,0.667},{0.765,0.667,0.678},{0.757,0.659,0.671},{0.757,0.655,0.667},{0.753,0.651,0.659},{0.757,0.651,0.663},{0.761,0.655,0.667},{0.753,0.639,0.651},{0.745,0.627,0.635},
{0.749,0.635,0.647},{0.749,0.624,0.616},{0.78,0.604,0.553},{0.804,0.6,0.506},{0.796,0.569,0.467},{0.788,0.596,0.522},{0.788,0.624,0.569},{0.812,0.686,0.643},{0.843,0.749,0.714},{0.675,0.475,0.392},{0.659,0.427,0.322},{0.69,0.451,0.333},{0.725,0.475,0.357},{0.757,0.502,0.38},{0.784,0.525,0.408},{0.812,0.557,0.443},{0.843,0.596,0.478},{0.871,0.62,0.51},{0.878,0.62,0.514},{0.89,0.631,0.529},{0.91,0.647,0.557},{0.914,0.659,0.569},{0.918,0.663,0.576},{0.922,0.667,0.58},{0.925,0.69,0.608},{0.922,0.698,0.627},{0.925,0.706,0.639},{0.929,0.706,0.651},{0.941,0.722,0.671},{0.933,0.694,0.624},{0.855,0.58,0.49},{0.941,0.698,0.616},{0.937,0.698,0.62},{0.91,0.647,0.573},{0.898,0.635,0.565},{0.918,0.686,0.624},{0.918,0.675,0.6},{0.918,0.678,0.6},{0.922,0.698,0.62},{0.922,0.698,0.612},{0.914,0.694,0.608},{0.902,0.667,0.576},{0.878,0.635,0.541},{0.863,0.616,0.522},{0.851,0.6,0.506},{0.855,0.6,0.514},{0.843,0.569,0.482},{0.808,0.529,0.439},{0.776,0.486,0.392},{0.753,0.451,0.369},{0.82,0.58,0.565},{0.831,0.588,0.576},{0.831,0.565,0.553},
{0.851,0.608,0.569},{0.91,0.812,0.78},{0.886,0.671,0.58},{0.984,0.831,0.745},{0.984,0.82,0.725},{0.984,0.816,0.722},{0.98,0.804,0.714},{0.98,0.796,0.706},{0.675,0.553,0.576},{0.675,0.553,0.576},{0.686,0.565,0.584},{0.686,0.565,0.584},{0.678,0.557,0.576},{0.702,0.584,0.6},{0.698,0.584,0.6},{0.702,0.584,0.6},{0.702,0.584,0.6},{0.702,0.584,0.604},{0.706,0.588,0.604},{0.69,0.573,0.592},{0.702,0.584,0.6},{0.702,0.584,0.6},{0.698,0.58,0.6},{0.69,0.569,0.588},{0.694,0.573,0.592},{0.706,0.588,0.604},{0.737,0.631,0.643},{0.733,0.631,0.647},{0.733,0.627,0.643},{0.737,0.624,0.639},{0.741,0.627,0.643},{0.733,0.627,0.643},{0.737,0.639,0.651},{0.737,0.635,0.647},{0.737,0.627,0.643},{0.737,0.624,0.639},{0.737,0.631,0.643},{0.741,0.635,0.651},{0.745,0.639,0.655},{0.745,0.647,0.659},{0.757,0.655,0.671},{0.757,0.659,0.671},{0.757,0.655,0.667},{0.749,0.647,0.659},{0.745,0.627,0.643},{0.737,0.624,0.631},{0.737,0.62,0.627},{0.729,0.616,0.624},{0.733,0.616,0.624},{0.729,0.612,0.62},{0.729,0.612,0.62},{0.745,0.627,0.635},{0.737,0.62,0.627},
{0.745,0.627,0.631},{0.729,0.608,0.612},{0.678,0.51,0.471},{0.659,0.443,0.337},{0.686,0.451,0.341},{0.698,0.451,0.337},{0.714,0.459,0.345},{0.729,0.478,0.357},{0.733,0.475,0.357},{0.749,0.494,0.376},{0.761,0.506,0.384},{0.776,0.522,0.396},{0.796,0.541,0.42},{0.816,0.561,0.443},{0.855,0.6,0.486},{0.91,0.651,0.553},{0.925,0.678,0.584},{0.929,0.678,0.584},{0.918,0.663,0.569},{0.894,0.631,0.545},{0.882,0.635,0.553},{0.878,0.62,0.545},{0.863,0.592,0.525},{0.851,0.569,0.518},{0.757,0.463,0.404},{0.525,0.208,0.153},{0.808,0.541,0.443},{0.933,0.686,0.588},{0.937,0.69,0.624},{0.949,0.718,0.655},{0.953,0.722,0.655},{0.949,0.725,0.655},{0.953,0.745,0.671},{0.969,0.769,0.69},{0.973,0.784,0.706},{0.973,0.776,0.702},{0.965,0.761,0.682},{0.949,0.729,0.655},{0.925,0.698,0.624},{0.91,0.667,0.592},{0.914,0.667,0.604},{0.902,0.667,0.592},{0.871,0.604,0.506},{0.843,0.565,0.478},{0.89,0.682,0.667},{0.91,0.702,0.69},{0.918,0.698,0.671},{0.933,0.733,0.698},{0.976,0.898,0.875},{0.961,0.78,0.702},{0.984,0.82,0.733},{0.984,0.82,0.725},{0.984,0.808,0.71},
{0.984,0.796,0.702},{0.984,0.792,0.706},{0.69,0.573,0.592},{0.69,0.573,0.592},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.686,0.565,0.584},{0.698,0.58,0.6},{0.698,0.576,0.596},{0.706,0.592,0.608},{0.71,0.596,0.612},{0.706,0.592,0.608},{0.71,0.596,0.612},{0.706,0.592,0.608},{0.702,0.584,0.6},{0.694,0.576,0.596},{0.698,0.576,0.596},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.71,0.592,0.612},{0.729,0.616,0.631},{0.725,0.616,0.631},{0.729,0.616,0.631},{0.729,0.616,0.631},{0.729,0.62,0.635},{0.729,0.616,0.627},{0.729,0.62,0.635},{0.725,0.612,0.627},{0.729,0.612,0.631},{0.725,0.612,0.627},{0.737,0.62,0.639},{0.745,0.639,0.651},{0.741,0.643,0.655},{0.745,0.647,0.659},{0.749,0.647,0.659},{0.741,0.631,0.643},{0.741,0.631,0.643},{0.741,0.631,0.643},{0.737,0.624,0.639},{0.733,0.616,0.627},{0.722,0.608,0.616},{0.714,0.596,0.604},{0.718,0.6,0.608},{0.71,0.592,0.6},{0.714,0.596,0.604},{0.725,0.608,0.616},{0.718,0.6,0.608},{0.722,0.604,0.608},{0.706,0.58,0.576},{0.682,0.463,0.365},{0.678,0.451,0.345},{0.69,0.455,0.345},{0.706,0.459,0.345},
{0.718,0.463,0.349},{0.725,0.478,0.361},{0.733,0.478,0.365},{0.753,0.502,0.38},{0.769,0.518,0.392},{0.776,0.522,0.396},{0.784,0.529,0.4},{0.8,0.545,0.416},{0.804,0.549,0.416},{0.831,0.58,0.451},{0.867,0.608,0.49},{0.898,0.651,0.545},{0.929,0.694,0.612},{0.929,0.69,0.608},{0.906,0.663,0.573},{0.894,0.639,0.553},{0.878,0.608,0.518},{0.827,0.525,0.435},{0.784,0.475,0.388},{0.761,0.459,0.376},{0.565,0.231,0.165},{0.698,0.404,0.302},{0.922,0.671,0.537},{0.949,0.702,0.584},{0.953,0.714,0.596},{0.961,0.729,0.62},{0.965,0.733,0.627},{0.969,0.745,0.631},{0.976,0.757,0.647},{0.973,0.749,0.643},{0.973,0.757,0.651},{0.973,0.749,0.647},{0.965,0.741,0.643},{0.957,0.733,0.639},{0.953,0.706,0.612},{0.949,0.706,0.616},{0.933,0.69,0.588},{0.929,0.675,0.584},{0.933,0.671,0.592},{0.941,0.682,0.596},{0.953,0.706,0.6},{0.969,0.749,0.643},{0.98,0.788,0.69},{0.984,0.808,0.714},{0.98,0.816,0.725},{0.984,0.812,0.718},{0.984,0.804,0.706},{0.984,0.796,0.702},{0.984,0.788,0.702},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.694,0.576,0.596},{0.706,0.584,0.604},
{0.706,0.584,0.604},{0.706,0.584,0.604},{0.698,0.576,0.596},{0.702,0.588,0.604},{0.702,0.58,0.6},{0.702,0.58,0.6},{0.706,0.588,0.608},{0.706,0.592,0.608},{0.698,0.58,0.6},{0.698,0.58,0.6},{0.694,0.576,0.596},{0.698,0.576,0.596},{0.702,0.584,0.604},{0.706,0.588,0.604},{0.718,0.6,0.62},{0.729,0.62,0.635},{0.729,0.616,0.631},{0.722,0.608,0.624},{0.714,0.596,0.616},{0.725,0.612,0.627},{0.725,0.612,0.627},{0.722,0.604,0.624},{0.729,0.62,0.635},{0.729,0.616,0.631},{0.729,0.616,0.631},{0.737,0.631,0.647},{0.749,0.643,0.659},{0.745,0.647,0.659},{0.753,0.655,0.667},{0.745,0.639,0.651},{0.749,0.643,0.655},{0.745,0.643,0.655},{0.733,0.627,0.635},{0.741,0.624,0.631},{0.722,0.608,0.616},{0.714,0.596,0.604},{0.714,0.596,0.604},{0.725,0.608,0.616},{0.729,0.612,0.62},{0.722,0.608,0.616},{0.725,0.608,0.616},{0.729,0.612,0.62},{0.71,0.545,0.506},{0.714,0.471,0.353},{0.686,0.451,0.341},{0.686,0.451,0.341},{0.702,0.459,0.345},{0.718,0.475,0.361},{0.729,0.478,0.361},{0.741,0.49,0.373},{0.753,0.506,0.384},{0.773,0.522,0.404},{0.78,0.525,0.4},
{0.8,0.545,0.42},{0.808,0.561,0.431},{0.816,0.565,0.431},{0.835,0.584,0.451},{0.851,0.604,0.471},{0.867,0.62,0.486},{0.878,0.639,0.514},{0.902,0.659,0.557},{0.933,0.706,0.624},{0.941,0.71,0.635},{0.933,0.702,0.624},{0.914,0.663,0.58},{0.859,0.553,0.463},{0.788,0.459,0.369},{0.761,0.427,0.337},{0.667,0.298,0.204},{0.604,0.271,0.184},{0.851,0.584,0.455},{0.949,0.702,0.565},{0.965,0.725,0.588},{0.965,0.722,0.588},{0.969,0.722,0.584},{0.976,0.733,0.596},{0.98,0.741,0.608},{0.976,0.733,0.6},{0.98,0.749,0.62},{0.984,0.765,0.635},{0.984,0.765,0.639},{0.984,0.757,0.635},{0.98,0.765,0.643},{0.973,0.753,0.639},{0.969,0.745,0.635},{0.961,0.737,0.631},{0.957,0.718,0.627},{0.969,0.733,0.627},{0.973,0.769,0.667},{0.976,0.784,0.682},{0.98,0.804,0.702},{0.984,0.812,0.714},{0.984,0.804,0.71},{0.988,0.804,0.706},{0.984,0.808,0.714},{0.984,0.788,0.698},{0.698,0.584,0.6},{0.698,0.584,0.6},{0.702,0.584,0.604},{0.71,0.596,0.612},{0.706,0.592,0.608},{0.69,0.569,0.588},{0.69,0.573,0.592},{0.698,0.58,0.596},{0.686,0.569,0.588},{0.698,0.576,0.596},
{0.698,0.576,0.596},{0.702,0.58,0.6},{0.702,0.584,0.604},{0.71,0.596,0.612},{0.706,0.592,0.612},{0.71,0.596,0.612},{0.714,0.6,0.616},{0.706,0.584,0.604},{0.714,0.592,0.612},{0.718,0.6,0.616},{0.722,0.604,0.62},{0.722,0.608,0.624},{0.718,0.604,0.62},{0.725,0.612,0.627},{0.733,0.62,0.635},{0.733,0.627,0.639},{0.741,0.639,0.651},{0.737,0.627,0.639},{0.741,0.627,0.639},{0.737,0.627,0.643},{0.745,0.639,0.655},{0.757,0.659,0.671},{0.749,0.651,0.663},{0.745,0.643,0.659},{0.749,0.651,0.663},{0.749,0.639,0.655},{0.737,0.627,0.635},{0.71,0.592,0.6},{0.714,0.596,0.604},{0.722,0.604,0.612},{0.745,0.631,0.643},{0.757,0.647,0.659},{0.745,0.631,0.639},{0.733,0.62,0.627},{0.741,0.627,0.635},{0.729,0.612,0.62},{0.706,0.49,0.404},{0.706,0.467,0.345},{0.69,0.455,0.341},{0.678,0.439,0.329},{0.694,0.447,0.337},{0.71,0.459,0.349},{0.725,0.478,0.361},{0.733,0.482,0.369},{0.753,0.514,0.392},{0.769,0.518,0.396},{0.784,0.533,0.408},{0.8,0.549,0.424},{0.812,0.561,0.427},{0.831,0.58,0.447},{0.847,0.604,0.471},{0.863,0.616,0.482},{0.875,0.631,0.506},
{0.886,0.643,0.51},{0.894,0.651,0.525},{0.902,0.659,0.537},{0.918,0.675,0.576},{0.941,0.718,0.635},{0.945,0.725,0.647},{0.933,0.706,0.635},{0.886,0.604,0.514},{0.82,0.49,0.392},{0.765,0.412,0.314},{0.706,0.31,0.22},{0.553,0.192,0.122},{0.671,0.369,0.267},{0.91,0.659,0.522},{0.957,0.706,0.565},{0.965,0.714,0.565},{0.965,0.71,0.569},{0.969,0.722,0.58},{0.969,0.722,0.58},{0.976,0.729,0.592},{0.984,0.741,0.608},{0.984,0.757,0.624},{0.984,0.757,0.631},{0.984,0.765,0.639},{0.976,0.753,0.635},{0.98,0.773,0.659},{0.973,0.757,0.651},{0.969,0.741,0.639},{0.969,0.749,0.647},{0.976,0.773,0.671},{0.98,0.788,0.686},{0.98,0.788,0.686},{0.984,0.796,0.698},{0.98,0.792,0.694},{0.984,0.792,0.69},{0.984,0.788,0.686},{0.984,0.776,0.678},{0.698,0.58,0.6},{0.698,0.58,0.6},{0.702,0.584,0.6},{0.702,0.58,0.6},{0.702,0.58,0.6},{0.694,0.576,0.596},{0.69,0.576,0.596},{0.698,0.584,0.604},{0.698,0.58,0.6},{0.698,0.58,0.6},{0.702,0.584,0.604},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.71,0.596,0.612},{0.714,0.6,0.616},{0.706,0.592,0.608},
{0.71,0.6,0.612},{0.706,0.592,0.608},{0.706,0.588,0.608},{0.706,0.588,0.608},{0.71,0.596,0.612},{0.718,0.604,0.62},{0.714,0.6,0.616},{0.722,0.608,0.624},{0.725,0.612,0.627},{0.729,0.62,0.635},{0.741,0.631,0.643},{0.733,0.624,0.639},{0.729,0.616,0.631},{0.737,0.631,0.647},{0.737,0.639,0.651},{0.741,0.643,0.655},{0.741,0.639,0.651},{0.737,0.635,0.643},{0.745,0.643,0.655},{0.729,0.616,0.631},{0.702,0.584,0.596},{0.702,0.584,0.592},{0.706,0.588,0.596},{0.733,0.62,0.631},{0.745,0.639,0.647},{0.749,0.635,0.647},{0.741,0.627,0.635},{0.722,0.604,0.612},{0.714,0.596,0.604},{0.698,0.553,0.533},{0.71,0.467,0.353},{0.698,0.455,0.337},{0.682,0.439,0.325},{0.678,0.439,0.325},{0.686,0.443,0.329},{0.702,0.455,0.337},{0.714,0.463,0.349},{0.725,0.478,0.361},{0.749,0.506,0.384},{0.769,0.522,0.4},{0.776,0.529,0.404},{0.792,0.541,0.416},{0.812,0.565,0.427},{0.835,0.588,0.459},{0.851,0.604,0.467},{0.871,0.631,0.502},{0.878,0.643,0.514},{0.89,0.647,0.518},{0.902,0.659,0.529},{0.914,0.678,0.553},{0.925,0.69,0.565},{0.929,0.694,0.58},{0.918,0.675,0.58},
{0.918,0.671,0.588},{0.929,0.686,0.608},{0.902,0.631,0.537},{0.867,0.553,0.447},{0.82,0.482,0.373},{0.773,0.408,0.298},{0.694,0.318,0.22},{0.612,0.263,0.176},{0.749,0.459,0.333},{0.91,0.647,0.502},{0.937,0.678,0.518},{0.945,0.686,0.533},{0.945,0.686,0.533},{0.957,0.706,0.557},{0.965,0.714,0.573},{0.976,0.745,0.612},{0.98,0.749,0.612},{0.984,0.761,0.627},{0.988,0.765,0.639},{0.98,0.765,0.647},{0.98,0.757,0.639},{0.976,0.761,0.643},{0.976,0.761,0.651},{0.976,0.769,0.671},{0.98,0.773,0.671},{0.984,0.769,0.659},{0.984,0.776,0.675},{0.984,0.769,0.663},{0.988,0.769,0.671},{0.984,0.773,0.667},{0.984,0.765,0.663},{0.686,0.565,0.584},{0.686,0.565,0.584},{0.698,0.576,0.596},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.702,0.588,0.604},{0.702,0.584,0.6},{0.698,0.58,0.596},{0.698,0.58,0.6},{0.706,0.588,0.608},{0.706,0.592,0.608},{0.714,0.6,0.616},{0.714,0.6,0.616},{0.722,0.608,0.624},{0.725,0.612,0.627},{0.722,0.616,0.627},{0.722,0.608,0.624},{0.714,0.604,0.616},{0.71,0.592,0.608},{0.71,0.592,0.608},{0.714,0.6,0.616},{0.714,0.6,0.616},
{0.71,0.588,0.608},{0.706,0.584,0.604},{0.71,0.596,0.612},{0.706,0.588,0.608},{0.71,0.588,0.608},{0.706,0.588,0.604},{0.714,0.6,0.616},{0.722,0.604,0.62},{0.722,0.604,0.62},{0.725,0.612,0.627},{0.725,0.608,0.624},{0.714,0.596,0.612},{0.714,0.6,0.612},{0.698,0.576,0.588},{0.682,0.561,0.573},{0.678,0.553,0.565},{0.702,0.58,0.592},{0.725,0.612,0.624},{0.737,0.62,0.635},{0.729,0.612,0.627},{0.714,0.592,0.604},{0.714,0.596,0.608},{0.706,0.588,0.596},{0.702,0.502,0.439},{0.702,0.463,0.345},{0.678,0.439,0.322},{0.667,0.427,0.31},{0.667,0.424,0.31},{0.682,0.439,0.325},{0.69,0.447,0.329},{0.698,0.447,0.329},{0.714,0.463,0.349},{0.737,0.49,0.373},{0.757,0.51,0.392},{0.773,0.518,0.4},{0.788,0.537,0.416},{0.808,0.565,0.435},{0.824,0.573,0.447},{0.851,0.608,0.471},{0.875,0.643,0.518},{0.886,0.647,0.518},{0.902,0.659,0.525},{0.91,0.671,0.549},{0.922,0.682,0.557},{0.929,0.686,0.561},{0.941,0.71,0.592},{0.941,0.714,0.6},{0.925,0.686,0.573},{0.914,0.643,0.561},{0.937,0.702,0.627},{0.945,0.733,0.655},{0.933,0.722,0.639},{0.898,0.635,0.541},
{0.824,0.518,0.42},{0.765,0.427,0.325},{0.682,0.322,0.224},{0.565,0.22,0.137},{0.604,0.278,0.184},{0.671,0.353,0.251},{0.745,0.439,0.318},{0.871,0.576,0.435},{0.937,0.671,0.514},{0.961,0.702,0.561},{0.976,0.725,0.592},{0.98,0.745,0.616},{0.98,0.749,0.624},{0.984,0.765,0.639},{0.984,0.757,0.631},{0.984,0.757,0.643},{0.98,0.749,0.635},{0.98,0.753,0.647},{0.98,0.757,0.655},{0.984,0.757,0.647},{0.988,0.757,0.655},{0.992,0.757,0.647},{0.988,0.749,0.639},{0.988,0.753,0.647},{0.98,0.765,0.651},{0.694,0.576,0.592},{0.694,0.576,0.592},{0.698,0.58,0.6},{0.698,0.584,0.6},{0.702,0.58,0.6},{0.706,0.592,0.608},{0.702,0.588,0.604},{0.702,0.584,0.6},{0.706,0.592,0.608},{0.714,0.6,0.616},{0.718,0.604,0.62},{0.714,0.6,0.62},{0.714,0.604,0.62},{0.722,0.608,0.624},{0.733,0.62,0.635},{0.725,0.616,0.631},{0.725,0.612,0.631},{0.722,0.608,0.624},{0.718,0.608,0.624},{0.71,0.596,0.612},{0.706,0.588,0.608},{0.71,0.588,0.608},{0.706,0.588,0.608},{0.702,0.58,0.6},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.698,0.58,0.6},{0.714,0.596,0.612},
{0.722,0.604,0.62},{0.722,0.608,0.624},{0.718,0.6,0.616},{0.714,0.596,0.616},{0.725,0.616,0.631},{0.722,0.604,0.624},{0.698,0.576,0.588},{0.686,0.565,0.576},{0.682,0.561,0.573},{0.706,0.588,0.596},{0.733,0.62,0.631},{0.733,0.62,0.631},{0.722,0.604,0.616},{0.702,0.584,0.592},{0.706,0.584,0.596},{0.718,0.6,0.612},{0.702,0.565,0.557},{0.702,0.471,0.365},{0.69,0.447,0.329},{0.663,0.424,0.31},{0.647,0.408,0.298},{0.655,0.42,0.306},{0.667,0.42,0.306},{0.678,0.427,0.314},{0.69,0.443,0.318},{0.702,0.447,0.329},{0.722,0.467,0.353},{0.741,0.486,0.373},{0.773,0.525,0.4},{0.784,0.537,0.416},{0.804,0.549,0.427},{0.831,0.588,0.455},{0.851,0.604,0.471},{0.867,0.635,0.498},{0.894,0.651,0.518},{0.91,0.675,0.549},{0.914,0.675,0.545},{0.925,0.686,0.565},{0.933,0.702,0.58},{0.937,0.702,0.58},{0.949,0.714,0.592},{0.953,0.725,0.604},{0.953,0.722,0.6},{0.949,0.718,0.604},{0.949,0.722,0.624},{0.965,0.753,0.678},{0.969,0.78,0.71},{0.945,0.745,0.667},{0.902,0.651,0.561},{0.835,0.537,0.431},{0.753,0.4,0.29},{0.729,0.369,0.255},{0.733,0.373,0.255},
{0.729,0.369,0.251},{0.733,0.369,0.263},{0.788,0.447,0.322},{0.867,0.565,0.424},{0.953,0.694,0.561},{0.98,0.737,0.604},{0.98,0.741,0.62},{0.98,0.757,0.635},{0.984,0.765,0.639},{0.984,0.765,0.643},{0.973,0.725,0.612},{0.969,0.729,0.612},{0.98,0.757,0.639},{0.984,0.757,0.647},{0.984,0.753,0.643},{0.988,0.749,0.639},{0.988,0.749,0.635},{0.98,0.745,0.635},{0.976,0.741,0.631},{0.702,0.588,0.604},{0.702,0.588,0.604},{0.698,0.58,0.6},{0.698,0.58,0.596},{0.706,0.584,0.604},{0.702,0.58,0.6},{0.706,0.588,0.608},{0.702,0.588,0.604},{0.714,0.6,0.616},{0.725,0.612,0.627},{0.718,0.604,0.62},{0.714,0.6,0.616},{0.718,0.604,0.62},{0.714,0.604,0.62},{0.725,0.612,0.627},{0.722,0.608,0.627},{0.718,0.608,0.624},{0.714,0.596,0.612},{0.698,0.58,0.6},{0.698,0.576,0.6},{0.69,0.569,0.588},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.706,0.588,0.604},{0.698,0.58,0.6},{0.706,0.588,0.604},{0.706,0.588,0.604},{0.718,0.6,0.616},{0.729,0.616,0.631},{0.729,0.612,0.631},{0.725,0.616,0.631},{0.737,0.627,0.643},{0.722,0.608,0.624},{0.706,0.584,0.6},
{0.694,0.573,0.584},{0.71,0.596,0.608},{0.737,0.635,0.647},{0.741,0.631,0.647},{0.733,0.624,0.639},{0.729,0.624,0.635},{0.722,0.608,0.62},{0.698,0.576,0.588},{0.694,0.576,0.588},{0.698,0.573,0.584},{0.694,0.502,0.435},{0.702,0.463,0.341},{0.671,0.435,0.318},{0.647,0.412,0.298},{0.635,0.4,0.286},{0.635,0.396,0.286},{0.647,0.4,0.286},{0.663,0.416,0.302},{0.675,0.424,0.306},{0.69,0.439,0.322},{0.714,0.459,0.341},{0.725,0.467,0.349},{0.757,0.51,0.384},{0.776,0.522,0.4},{0.8,0.549,0.424},{0.835,0.592,0.459},{0.859,0.608,0.482},{0.867,0.616,0.486},{0.89,0.647,0.514},{0.902,0.659,0.525},{0.914,0.675,0.545},{0.925,0.69,0.565},{0.933,0.694,0.565},{0.941,0.706,0.58},{0.949,0.722,0.596},{0.957,0.729,0.612},{0.961,0.725,0.604},{0.961,0.733,0.612},{0.961,0.729,0.6},{0.957,0.725,0.604},{0.961,0.737,0.639},{0.973,0.776,0.706},{0.969,0.796,0.733},{0.961,0.776,0.714},{0.929,0.69,0.588},{0.882,0.612,0.49},{0.855,0.573,0.455},{0.855,0.584,0.49},{0.875,0.631,0.592},{0.875,0.596,0.561},{0.898,0.675,0.604},{0.949,0.804,0.729},{0.961,0.722,0.596},
{0.976,0.737,0.616},{0.98,0.757,0.631},{0.984,0.765,0.639},{0.984,0.761,0.639},{0.984,0.745,0.624},{0.98,0.745,0.627},{0.98,0.749,0.635},{0.98,0.737,0.627},{0.98,0.749,0.635},{0.984,0.749,0.631},{0.98,0.749,0.635},{0.98,0.745,0.631},{0.969,0.725,0.616},{0.706,0.596,0.612},{0.706,0.596,0.612},{0.702,0.58,0.6},{0.706,0.584,0.604},{0.714,0.596,0.612},{0.706,0.592,0.612},{0.706,0.588,0.608},{0.706,0.596,0.616},{0.722,0.608,0.627},{0.722,0.612,0.627},{0.722,0.616,0.631},{0.729,0.616,0.635},{0.729,0.616,0.635},{0.729,0.616,0.635},{0.714,0.604,0.62},{0.725,0.612,0.627},{0.718,0.604,0.62},{0.722,0.608,0.624},{0.706,0.592,0.608},{0.698,0.58,0.596},{0.694,0.573,0.592},{0.694,0.576,0.596},{0.694,0.576,0.592},{0.71,0.592,0.608},{0.714,0.6,0.616},{0.71,0.588,0.608},{0.718,0.604,0.62},{0.71,0.596,0.612},{0.725,0.612,0.627},{0.741,0.635,0.647},{0.741,0.635,0.651},{0.733,0.627,0.639},{0.718,0.6,0.612},{0.714,0.592,0.604},{0.733,0.624,0.635},{0.749,0.647,0.659},{0.749,0.651,0.663},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.741,0.635,0.647},
{0.714,0.592,0.604},{0.69,0.569,0.58},{0.698,0.576,0.588},{0.686,0.545,0.537},{0.702,0.467,0.353},{0.686,0.447,0.329},{0.651,0.412,0.298},{0.627,0.388,0.278},{0.612,0.373,0.263},{0.62,0.38,0.267},{0.627,0.38,0.271},{0.639,0.392,0.282},{0.659,0.408,0.294},{0.678,0.427,0.306},{0.698,0.447,0.322},{0.722,0.471,0.349},{0.745,0.49,0.373},{0.773,0.518,0.392},{0.8,0.549,0.427},{0.824,0.576,0.447},{0.847,0.6,0.467},{0.867,0.62,0.482},{0.886,0.639,0.502},{0.902,0.655,0.518},{0.914,0.667,0.533},{0.925,0.686,0.557},{0.937,0.71,0.584},{0.937,0.71,0.58},{0.945,0.722,0.604},{0.949,0.722,0.6},{0.953,0.729,0.604},{0.961,0.729,0.6},{0.961,0.725,0.596},{0.961,0.725,0.604},{0.961,0.718,0.588},{0.961,0.718,0.58},{0.961,0.722,0.608},{0.953,0.733,0.631},{0.945,0.725,0.608},{0.929,0.694,0.569},{0.91,0.643,0.518},{0.918,0.686,0.592},{0.925,0.714,0.639},{0.941,0.722,0.647},{0.961,0.784,0.71},{0.98,0.835,0.761},{0.973,0.741,0.627},{0.976,0.729,0.608},{0.984,0.745,0.624},{0.988,0.753,0.631},{0.988,0.757,0.635},{0.988,0.749,0.635},{0.98,0.745,0.627},
{0.98,0.741,0.624},{0.973,0.729,0.612},{0.973,0.729,0.612},{0.976,0.741,0.627},{0.976,0.737,0.616},{0.973,0.725,0.616},{0.965,0.725,0.612},{0.702,0.584,0.604},{0.702,0.584,0.604},{0.706,0.592,0.608},{0.706,0.588,0.608},{0.718,0.604,0.62},{0.722,0.612,0.627},{0.722,0.612,0.627},{0.718,0.608,0.627},{0.722,0.616,0.631},{0.722,0.616,0.635},{0.733,0.631,0.647},{0.725,0.62,0.639},{0.718,0.616,0.635},{0.725,0.62,0.635},{0.722,0.608,0.627},{0.722,0.612,0.627},{0.722,0.608,0.624},{0.718,0.6,0.62},{0.71,0.592,0.608},{0.706,0.592,0.608},{0.702,0.58,0.6},{0.706,0.592,0.608},{0.71,0.596,0.616},{0.714,0.596,0.616},{0.718,0.604,0.62},{0.718,0.6,0.62},{0.714,0.6,0.616},{0.718,0.612,0.627},{0.757,0.659,0.671},{0.761,0.663,0.675},{0.729,0.627,0.639},{0.714,0.592,0.612},{0.714,0.596,0.612},{0.741,0.639,0.651},{0.753,0.655,0.667},{0.757,0.659,0.671},{0.749,0.643,0.659},{0.745,0.647,0.659},{0.733,0.627,0.639},{0.729,0.616,0.627},{0.694,0.573,0.58},{0.698,0.58,0.588},{0.678,0.549,0.561},{0.694,0.494,0.427},{0.694,0.455,0.333},{0.671,0.427,0.314},
{0.635,0.396,0.282},{0.608,0.369,0.263},{0.592,0.349,0.247},{0.6,0.357,0.247},{0.612,0.365,0.255},{0.624,0.373,0.263},{0.643,0.388,0.278},{0.663,0.412,0.294},{0.678,0.424,0.306},{0.698,0.443,0.322},{0.733,0.478,0.361},{0.761,0.51,0.384},{0.784,0.533,0.404},{0.82,0.573,0.443},{0.843,0.596,0.463},{0.863,0.616,0.482},{0.882,0.635,0.502},{0.898,0.651,0.518},{0.918,0.675,0.545},{0.929,0.686,0.561},{0.941,0.702,0.576},{0.945,0.714,0.588},{0.949,0.722,0.604},{0.949,0.714,0.588},{0.953,0.725,0.592},{0.957,0.725,0.592},{0.957,0.725,0.6},{0.961,0.725,0.596},{0.961,0.722,0.588},{0.961,0.718,0.58},{0.953,0.706,0.569},{0.953,0.71,0.573},{0.949,0.702,0.561},{0.941,0.698,0.549},{0.937,0.69,0.545},{0.933,0.686,0.545},{0.945,0.71,0.576},{0.957,0.729,0.596},{0.976,0.749,0.62},{0.976,0.761,0.639},{0.976,0.753,0.639},{0.976,0.729,0.62},{0.976,0.733,0.616},{0.98,0.737,0.62},{0.984,0.741,0.616},{0.976,0.729,0.604},{0.98,0.737,0.616},{0.98,0.737,0.616},{0.973,0.725,0.604},{0.973,0.718,0.6},{0.973,0.722,0.604},{0.969,0.718,0.604},{0.961,0.714,0.596},
{0.961,0.722,0.604},{0.706,0.592,0.608},{0.706,0.592,0.608},{0.71,0.592,0.612},{0.718,0.604,0.624},{0.722,0.608,0.627},{0.725,0.616,0.635},{0.729,0.62,0.639},{0.725,0.62,0.639},{0.729,0.624,0.639},{0.722,0.608,0.627},{0.714,0.604,0.624},{0.718,0.604,0.624},{0.729,0.62,0.635},{0.729,0.616,0.635},{0.722,0.608,0.627},{0.722,0.608,0.624},{0.718,0.604,0.62},{0.702,0.584,0.608},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.694,0.573,0.592},{0.698,0.58,0.596},{0.698,0.58,0.6},{0.694,0.573,0.592},{0.698,0.576,0.596},{0.702,0.58,0.6},{0.718,0.608,0.624},{0.745,0.643,0.659},{0.745,0.643,0.655},{0.725,0.612,0.627},{0.702,0.584,0.6},{0.733,0.62,0.635},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.741,0.639,0.651},{0.741,0.643,0.655},{0.745,0.635,0.651},{0.714,0.596,0.604},{0.69,0.569,0.576},{0.682,0.561,0.573},{0.671,0.518,0.498},{0.706,0.467,0.353},{0.682,0.439,0.322},{0.647,0.412,0.298},{0.608,0.373,0.259},{0.58,0.345,0.243},{0.569,0.329,0.231},{0.573,0.329,0.231},{0.588,0.345,0.239},{0.604,0.357,0.247},
{0.624,0.376,0.267},{0.647,0.392,0.278},{0.663,0.408,0.294},{0.694,0.443,0.322},{0.722,0.463,0.341},{0.749,0.494,0.369},{0.78,0.525,0.4},{0.804,0.561,0.431},{0.831,0.58,0.447},{0.851,0.6,0.471},{0.871,0.62,0.486},{0.89,0.639,0.506},{0.906,0.659,0.525},{0.922,0.675,0.549},{0.937,0.694,0.573},{0.941,0.706,0.576},{0.949,0.71,0.588},{0.949,0.71,0.584},{0.949,0.714,0.588},{0.953,0.722,0.588},{0.957,0.718,0.584},{0.957,0.722,0.584},{0.961,0.722,0.588},{0.961,0.714,0.576},{0.961,0.718,0.584},{0.961,0.714,0.573},{0.953,0.702,0.561},{0.949,0.702,0.561},{0.941,0.694,0.553},{0.941,0.698,0.553},{0.945,0.694,0.553},{0.953,0.706,0.565},{0.969,0.725,0.588},{0.976,0.733,0.604},{0.976,0.737,0.616},{0.98,0.733,0.624},{0.984,0.745,0.627},{0.984,0.749,0.627},{0.98,0.729,0.6},{0.976,0.71,0.576},{0.976,0.706,0.573},{0.976,0.714,0.588},{0.965,0.702,0.573},{0.961,0.706,0.576},{0.965,0.714,0.592},{0.957,0.71,0.58},{0.957,0.71,0.58},{0.953,0.698,0.569},{0.725,0.616,0.635},{0.725,0.616,0.635},{0.722,0.608,0.627},{0.722,0.612,0.627},{0.722,0.616,0.635},
{0.722,0.612,0.627},{0.71,0.6,0.62},{0.722,0.616,0.631},{0.729,0.62,0.635},{0.722,0.612,0.627},{0.722,0.612,0.631},{0.718,0.604,0.624},{0.725,0.612,0.631},{0.722,0.612,0.627},{0.725,0.612,0.627},{0.722,0.608,0.627},{0.718,0.6,0.62},{0.702,0.584,0.604},{0.694,0.576,0.596},{0.698,0.584,0.6},{0.706,0.588,0.608},{0.71,0.592,0.612},{0.702,0.588,0.604},{0.698,0.584,0.6},{0.698,0.576,0.596},{0.71,0.596,0.612},{0.741,0.635,0.651},{0.745,0.643,0.659},{0.718,0.6,0.616},{0.722,0.604,0.62},{0.741,0.639,0.651},{0.761,0.663,0.678},{0.761,0.663,0.675},{0.757,0.659,0.671},{0.753,0.655,0.667},{0.741,0.639,0.655},{0.718,0.6,0.62},{0.698,0.58,0.592},{0.698,0.58,0.588},{0.714,0.596,0.608},{0.69,0.565,0.576},{0.671,0.545,0.553},{0.698,0.478,0.384},{0.698,0.451,0.329},{0.659,0.424,0.302},{0.62,0.384,0.271},{0.576,0.341,0.243},{0.545,0.314,0.224},{0.541,0.306,0.216},{0.549,0.306,0.216},{0.561,0.318,0.224},{0.58,0.325,0.22},{0.592,0.337,0.235},{0.616,0.369,0.251},{0.643,0.388,0.275},{0.678,0.424,0.306},{0.702,0.443,0.318},{0.733,0.478,0.353},
{0.769,0.514,0.384},{0.804,0.557,0.424},{0.827,0.58,0.443},{0.851,0.604,0.463},{0.871,0.62,0.482},{0.894,0.639,0.506},{0.91,0.663,0.529},{0.918,0.671,0.533},{0.937,0.694,0.565},{0.941,0.698,0.565},{0.945,0.702,0.576},{0.953,0.71,0.58},{0.953,0.714,0.584},{0.953,0.706,0.573},{0.953,0.71,0.576},{0.953,0.71,0.573},{0.961,0.718,0.58},{0.961,0.718,0.58},{0.961,0.722,0.58},{0.953,0.714,0.573},{0.953,0.702,0.561},{0.949,0.698,0.553},{0.945,0.694,0.549},{0.945,0.698,0.553},{0.945,0.698,0.553},{0.945,0.702,0.549},{0.957,0.706,0.561},{0.965,0.714,0.569},{0.969,0.725,0.592},{0.973,0.729,0.6},{0.98,0.733,0.608},{0.98,0.733,0.608},{0.98,0.722,0.592},{0.976,0.698,0.573},{0.973,0.69,0.557},{0.965,0.686,0.541},{0.961,0.694,0.565},{0.957,0.694,0.569},{0.953,0.702,0.576},{0.953,0.71,0.576},{0.949,0.702,0.569},{0.945,0.698,0.565}}
Width = 100
Height = 100
scale = 2
StarterCFrame = CFrame.new(30,5,0)
p = Instance.new("Part",workspace)
p.CFrame = StarterCFrame
p.Anchored = true
p.Transparency = 1
p.CanCollide = false
m = Instance.new("BillboardGui") 
m.Parent = p
m.Adornee = p
m.Size = UDim2.new(0,100*scale,0,100*scale) 
m.AlwaysOnTop = true
i = 0
for x=1,Height do
for y=1,Width do
i=i+1
b = Instance.new("Frame") --- less laggy o3o
b.Size = UDim2.new(0,scale,0,scale) 
coroutine.resume(coroutine.create(function()
b.Position = UDim2.new(0,x*scale,0,y*scale) --- pixel movement o3o
b.Parent = m 
b.BorderSizePixel = 0
b.BackgroundColor3 = Color3.new(Values[i][1],Values[i][2],Values[i][3])
end))
end
wait(0.04)
end
end)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(0.176471, 0.180392, 0.188235)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(1.86264515e-09, 0, -0.000948756933, 0)
Title.Size = UDim2.new(0, 98, 0, 22)
Title.Font = Enum.Font.SourceSans
Title.FontSize = Enum.FontSize.Size14
Title.Text = "Archive Admin GUI"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 14

Credits.Name = "Credits"
Credits.Parent = Frame
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.Position = UDim2.new(0, 0, 1.02094507, 0)
Credits.Size = UDim2.new(0, 301, 0, 183)
Credits.Visible = false

TextLabel.Parent = Credits
TextLabel.BackgroundColor3 = Color3.new(0.227451, 0.266667, 0.27451)
TextLabel.Size = UDim2.new(0, 301, 0, 183)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "All credits go to their respectful owners                                                    This GUI was made for a cool guy named Tahnx                                                      					                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            He better be Tahnxful for this GUI (pls dont neg rep me)"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

Com.Name = "Com"
Com.Parent = Frame
Com.BackgroundColor3 = Color3.new(0.176471, 0.180392, 0.188235)
Com.BorderSizePixel = 0
Com.Position = UDim2.new(0, 0, 0.41761595, 0)
Com.Size = UDim2.new(0, 151, 0, 32)
Com.Font = Enum.Font.SourceSans
Com.FontSize = Enum.FontSize.Size14
Com.Text = "Commands"
Com.TextColor3 = Color3.new(1, 1, 1)
Com.TextSize = 14
Com.MouseButton1Down:connect(function()
	Commands.Visible = true
	Credits.Visible = false
end)

Cre.Name = "Cre"
Cre.Parent = Frame
Cre.BackgroundColor3 = Color3.new(0.176471, 0.180392, 0.188235)
Cre.BorderSizePixel = 0
Cre.Position = UDim2.new(0.501661122, 0, 0.415094316, 0)
Cre.Size = UDim2.new(0, 150, 0, 32)
Cre.Font = Enum.Font.SourceSans
Cre.FontSize = Enum.FontSize.Size14
Cre.Text = "Credits"
Cre.TextColor3 = Color3.new(1, 1, 1)
Cre.TextSize = 14
Cre.MouseButton1Down:connect(function()
	Credits.Visible = true
	Commands.Visible = false
end)

Login.Name = "Login"
Login.Parent = ScreenGui
Login.BackgroundColor3 = Color3.new(1, 1, 1)
Login.BorderColor3 = Color3.new(0.164706, 0.180392, 0.192157)
Login.Position = UDim2.new(0.53295666, 0, 0.559633017, 0)
Login.Size = UDim2.new(0, 136, 0, 31)
Login.Active = true
Login.Draggable = true

Login_2.Name = "Login"
Login_2.Parent = Login
Login_2.BackgroundColor3 = Color3.new(0.231373, 0.270588, 0.278431)
Login_2.BorderColor3 = Color3.new(0.164706, 0.180392, 0.192157)
Login_2.Position = UDim2.new(-0.00292178988, 0, 1.01317501, 0)
Login_2.Size = UDim2.new(0, 136, 0, 163)

User.Name = "User"
User.Parent = Login_2
User.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
User.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
User.Position = UDim2.new(0.055147171, 0, 0.0921934098, 0)
User.Size = UDim2.new(0, 121, 0, 30)
User.Font = Enum.Font.SourceSans
User.FontSize = Enum.FontSize.Size14
User.Text = "User"
User.TextColor3 = Color3.new(1, 1, 1)
User.TextSize = 14

Pass.Name = "Pass"
Pass.Parent = Login_2
Pass.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Pass.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Pass.Position = UDim2.new(0.0588235855, 0, 0.362582266, 0)
Pass.Size = UDim2.new(0, 121, 0, 30)
Pass.Font = Enum.Font.SourceSans
Pass.FontSize = Enum.FontSize.Size14
Pass.Text = "Pass"
Pass.TextColor3 = Color3.new(1, 1, 1)
Pass.TextSize = 14

Submit.Name = "Submit"
Submit.Parent = Login_2
Submit.BackgroundColor3 = Color3.new(0.12549, 0.662745, 0.427451)
Submit.BorderColor3 = Color3.new(0.203922, 0.490196, 0.372549)
Submit.Position = UDim2.new(0.238970518, 0, 0.676366329, 0)
Submit.Size = UDim2.new(0, 71, 0, 28)
Submit.Font = Enum.Font.SourceSans
Submit.FontSize = Enum.FontSize.Size14
Submit.Text = "Submit"
Submit.TextColor3 = Color3.new(1, 1, 1)
Submit.TextSize = 14
Submit.MouseButton1Down:connect(function()
	if User.Text == "PingyPat19" and Pass.Text == "Tahnner$/1" then
		Login.Visible = false
		Frame.Visible = true
	end
end)

TopBar.Name = "TopBar"
TopBar.Parent = Login_2
TopBar.BackgroundColor3 = Color3.new(0.176471, 0.180392, 0.188235)
TopBar.BorderColor3 = Color3.new(0.160784, 0.192157, 0.203922)
TopBar.Position = UDim2.new(0, 0, -0.202791706, 0)
TopBar.Size = UDim2.new(0, 136, 0, 31)
TopBar.Font = Enum.Font.SourceSans
TopBar.FontSize = Enum.FontSize.Size14
TopBar.Text = "Login Page"
TopBar.TextColor3 = Color3.new(1, 1, 1)
TopBar.TextSize = 14