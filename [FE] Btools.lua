local RunService = game:service("RunService")
local RbxUtility = LoadLibrary("RbxUtility")

local plr = game:service("Players").LocalPlayer
local m = plr:GetMouse()
--local coregui = game:service("CoreGui")
local bin = game.CoreGui

local state = false
local mode = 1

local stuff = {
["spectate"] = nil,
["sound"] = nil,
["musicbin"] = nil
}

for i,v in pairs(game.Workspace:children()) do
if v.ClassName == "Model" or v.ClassName == "Folder" then
if game.Players:FindFirstChild(v.Name) == nil then
stuff.musicbin = v
print("music bin found")
break
end
end
end

local modes = {}

local ModeP = {}
local ModeP_mt = {}

function ModeP:Create(Name, Call, Settings)
local New_Mode = {
["name"] = Name,
["call"] = Call,
["settings"] = Settings
}
setmetatable(New_Mode, ModeP_mt)
table.insert(modes, 1, New_Mode)
return New_Mode
end

function ModeP:Run(...)
print("run method found")
if bin:FindFirstChild("_COOL_SETTINGS") == nil then
self.call(self.settings, ...)
end
end

ModeP_mt.__index = function(ModeObj, Key)
return ModeP[Key]
end

ModeP:Create("Brick Bomb", function(settings, target, hitpoint)
print("XX", hitpoint)
local t
local doFunction
local blocks
if settings.players_only == true then
if game.Players:FindFirstChild(target.Parent.Name) then
t = game.Players:FindFirstChild(target.Parent.Name)
elseif game.Players:FindFirstChild(target.Parent.Parent.Name) then
t = game.Players:FindFirstChild(target.Parent.Parent.Name)
end
end
blocks = Instance.new("Model", workspace)
blocks.RobloxLocked = true
local blocks2 = nil
if settings.cleanup == true then
blocks2 = blocks
end
for i=1, settings.threads do
spawn(function()
print(settings.bricks_per_thread)
while true do
if settings.brick_spawn_delay == 0 then
RunService.Stepped:wait()
else
wait(settings.brick_spawn_delay)
end
if t ~= nil then
if t.Character ~= nil then
if t.Character:FindFirstChild("Torso") then
local p = Instance.new("Part")
p.Anchored = settings.anchored
p.CanCollide = settings.collision
p.RobloxLocked = true
p.Material = settings.material
p.Size = Vector3.new(settings.brick_size_x, settings.brick_size_y, settings.brick_size_z)
p.BrickColor = BrickColor.random()
p.CFrame = t.Character:FindFirstChild("Torso").CFrame
p.Parent = blocks
end
end
elseif settings.players_only == false then
local p = Instance.new("Part")
p.Anchored = settings.anchored
p.RobloxLocked = true
p.CanCollide = settings.collision
p.Material = settings.material
p.Size = Vector3.new(settings.brick_size_x, settings.brick_size_y, settings.brick_size_z)
p.BrickColor = BrickColor.random()
p.CFrame = hitpoint
p.Parent = blocks
end
end
end)
end
if settings.stop == true then
spawn(function()
wait(settings.stop_delay)
blocks = nil
end)
end
wait(settings.clean_delay)
blocks2:Destroy()
end, {
["threads"] = 8,
["brick_size_x"] = 5,
["brick_size_y"] = 5,
["brick_size_z"] = 5,
["cleanup"] = true,
["clean_delay"] = 60,
["brick_spawn_delay"] = 0.1,
["players_only"] = false,
["stop"] = true,
["stop_delay"] = 20,
["material"] = Enum.Material.Neon,
["anchored"] = false,
["collision"] = true
})

ModeP:Create("View", function(settings, target)
local cam = workspace.CurrentCamera
cam.CameraType = "Follow"
local setcam = game.Players:GetChildren()[math.random(1,#game.Players:GetChildren())]
if game.Players:FindFirstChild(tostring(target.Parent)) ~= nil then
setcam = game.Players:FindFirstChild(tostring(target.Parent))
elseif game.Players:FindFirstChild(tostring(target.Parent.Parent)) ~= nil then
setcam = game.Players:FindFirstChild(tostring(target.Parent.Parent))
end
if setcam:FindFirstChild("leaderstats") == nil then
local te = Instance.new("StringValue")
te.Name = "leaderstats"
end
--[[if stuff.spectate ~= nil then
stuff.spectate.Parent = setcam.leaderstats
stuff.spectate.Value = "Demon"
else
local fes = Instance.new("StringValue")
fes.Name = "Host"
stuff.spectate = fes
stuff.spectate.Parent = setcam.leaderstats
stuff.spectate.Value = "Demon"
end]]
cam.CameraSubject = setcam.Character.Head
end)

ModeP:Create("Freeze & Thaw", function(settings,target)
if game.Players:FindFirstChild(tostring(target.Parent)) then
if game.Players:FindFirstChild(tostring(target.Parent)).Character.Torso.Anchored == true then
game.Players:FindFirstChild(tostring(target.Parent)).Character.Torso.Anchored = false
else
game.Players:FindFirstChild(tostring(target.Parent)).Character.Torso.Anchored = true
end
elseif game.Players:FindFirstChild(tostring(target.Parent.Parent)) then
if game.Players:FindFirstChild(tostring(target.Parent.Parent)).Character.Torso.Anchored == true then
game.Players:FindFirstChild(tostring(target.Parent.Parent)).Character.Torso.Anchored = false
else
game.Players:FindFirstChild(tostring(target.Parent.Parent)).Character.Torso.Anchored = true
end
end
end)

ModeP:Create("Kick", function(settings, target)
if game.Players:FindFirstChild(tostring(target.Parent)) then
game.Players:FindFirstChild(tostring(target.Parent)):Kick("Kicked")
elseif game.Players:FindFirstChild(tostring(target.Parent.Parent)) then
game.Players:FindFirstChild(tostring(target.Parent.Parent)):Kick("Kicked")
end
end)

ModeP:Create("Humanoid Kill", function(settings, target)
if game.Players:FindFirstChild(tostring(target.Parent)) then
game.Players:FindFirstChild(tostring(target.Parent)).Character.Humanoid:Destroy()
elseif game.Players:FindFirstChild(tostring(target.Parent.Parent)) then
game.Players:FindFirstChild(tostring(target.Parent.Parent)).Character.Humanoid:Destroy()
end
end)

ModeP:Create("Delete", function(settings, target)
target:Destroy()
end)

ModeP:Create("Kill", function(settings, target)
if game.Players:FindFirstChild(tostring(target.Parent)) then
game.Players:FindFirstChild(tostring(target.Parent)).Character.Humanoid.Health = 0
elseif game.Players:FindFirstChild(tostring(target.Parent.Parent)) then
game.Players:FindFirstChild(tostring(target.Parent.Parent)).Character.Humanoid.Health = 0
end
end)

ModeP:Create("Send AWay", function(settings, target)
if game.Players:FindFirstChild(tostring(target.Parent)) then
target = game.Players:FindFirstChild(tostring(target.Parent))
elseif game.Players:FindFirstChild(tostring(target.Parent.Parent)) then
target = game.Players:FindFirstChild(tostring(target.Parent.Parent))
else
print("returning")
return
end

local p = Instance.new("Part")
local w = Instance.new("Weld")
w.Parent = p
w.Part0 = p
p.Size = Vector3.new(6, 7, 3)
p.BrickColor = BrickColor.random()
p.Material = Enum.Material.Neon
p.Anchored = true
p.CanCollide = false
p.Transparency = 0.5
p.Locked = true
p.Parent = workspace
p.CFrame = target.Character.Torso.CFrame
w.Part1 = target.Character.Torso
spawn(function()
while wait(0.1) do
p.BrickColor = BrickColor.random()
end
end)
local e
e = p.Changed:connect(function()
target.Character.Torso.CFrame = p.CFrame
end)

for i=1, settings.move_distance do
wait(settings.move_rate)
p.CFrame = p.CFrame + Vector3.new(0, settings.move_step, 0)
end
e:Disconnect()
p:Destroy()
end, {
["move_rate"] = 0,
["move_step"] = 1.5,
["move_distance"] = 1000,
["move_threads"] = 1
})

ModeP:Create("Tsunami Sushi", function(settings, target)
if game.Players:FindFirstChild(tostring(target.Parent)) then
target = game.Players:FindFirstChild(tostring(target.Parent))
elseif game.Players:FindFirstChild(tostring(target.Parent.Parent)) then
target = game.Players:FindFirstChild(tostring(target.Parent.Parent))
else
game.Workspace.GiveSystem.GiveItem:FireServer(game.Players.LocalPlayer, target)
plr.PlayerGui:WaitForChild("reciever", 15)
plr.PlayerGui.reciever:Destroy()
return
end

game.Workspace.GiveSystem.GiveItem:FireServer(game.Players.LocalPlayer, target.Character.Humanoid)
plr.PlayerGui:WaitForChild("reciever", 15)
plr.PlayerGui.reciever:Destroy()
end)


local gui = Instance.new("ScreenGui")

local music_frame = Instance.new("Frame")
music_frame.Size = UDim2.new(0, 150, 0, 60)
music_frame.Position = UDim2.new(0, 0, 1, -215)
music_frame.BorderSizePixel = 5
music_frame.BorderColor3 = Color3.new(255/255, 255/255, 255/255)
music_frame.BackgroundTransparency = 0.1
music_frame.BackgroundColor3 = Color3.new(57/255, 57/255, 57/255)

local music_entry = Instance.new("TextBox")
music_entry.BackgroundTransparency = 0.9
music_entry.Size = UDim2.new((2/3), 0, 0.5, 0)
music_entry.BackgroundColor3 = Color3.new(0/255, 0/255, 0/255)
music_entry.BorderSizePixel = 0
music_entry.TextColor3 = Color3.new(255/255, 255/255, 255/255)
music_entry.TextSize = 18
music_entry.Text = "Music ID"
music_entry.Font = "SciFi"

local volume = Instance.new("TextBox")
volume.BackgroundTransparency = 0.8
volume.Size = UDim2.new((1/3), 0, 0.5, 0)
volume.Position = UDim2.new((2/3), 0, 0, 0)
volume.BackgroundColor3 = Color3.new(0/255, 0/255, 0/255)
volume.BorderSizePixel = 0
volume.TextColor3 = Color3.new(255/255, 255/255, 255/255)
volume.TextSize = 16
volume.Text = "Vol"
volume.Font = "SciFi"

volume.FocusLost:connect(function()
if type(tonumber(volume.Text)) == type(1337) then
stuff.sound.Volume = tonumber(volume.Text)
volume.Text = tostring(stuff.sound.Volume)
else
volume.Text = tostring(stuff.sound.Volume)
end
end)

local play = Instance.new("TextButton")
play.BackgroundColor3 = Color3.new(22/255, 95/255, 0/255)
play.BorderSizePixel = 0
play.Position = UDim2.new(0, 0, 0.5, 0)
play.Size = UDim2.new((1/3), 0, 0.5, 0)
play.Font = "SciFi"
play.TextSize = 16
play.TextColor3 = Color3.new(255/255, 255/255, 255/255)
play.Text = "Plaay"

play.MouseButton1Click:connect(function()
if stuff.sound == nil then
stuff.sound = Instance.new("Sound", stuff.musicbin)
elseif stuff.sound.Parent ~= stuff.musicbin then
stuff.sound:Stop()
stuff.sound:Destroy()
stuff.sound = Instance.new("Sound", stuff.musicbin)
elseif stuff.sound.Parent == stuff.musicbin then
stuff.sound:Stop()
end
stuff.sound.SoundId = ("rbxassetid://" .. music_entry.Text)
stuff.sound:Play()
end)

local stop = Instance.new("TextButton")
stop.BackgroundColor3 = Color3.new(95/255, 0/255, 0/255)
stop.BorderSizePixel = 0
stop.Position = UDim2.new((1/3), 0, 0.5, 0)
stop.Size = UDim2.new((1/3), 0, 0.5, 0)
stop.Font = "SciFi"
stop.TextSize = 16
stop.TextColor3 = Color3.new(255/255, 255/255, 255/255)
stop.Text = "Stop"

stop.MouseButton1Click:connect(function()
stuff.sound:Stop()
stuff.sound:Destroy()
stuff.sound = nil
end)

local allstop = Instance.new("TextButton")
allstop.BackgroundColor3 = Color3.new(0/255, 0/255, 0/255)
allstop.BorderSizePixel = 0
allstop.Position = UDim2.new((2/3), 0, 0.5, 0)
allstop.Size = UDim2.new((1/3), 0, 0.5, 0)
allstop.Font = "SciFi"
allstop.TextSize = 16
allstop.TextColor3 = Color3.new(255/255, 255/255, 255/255)
allstop.Text = "Solo"

allstop.MouseButton1Click:connect(function()
local function search(container)
for i,v in pairs(container:children()) do
if #v:children() > 0 then
search(v)
elseif v.ClassName == "Sound" and v ~= stuff.sound then
v:Stop()
end
end
end
search(workspace)
end)

allstop.Parent = music_frame
stop.Parent = music_frame
play.Parent = music_frame
volume.Parent = music_frame
music_entry.Parent = music_frame

music_frame.Parent = gui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 150, 0, 100)
frame.Position = UDim2.new(0, 0, 1, -140)
frame.BackgroundColor3 = Color3.new(57/255, 57/255, 57/255)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 5
frame.BorderColor3 = Color3.new(255/255, 255/255, 255/255)

local a_line = Instance.new("Frame")
a_line.Size = UDim2.new(1, 0, 0, 5)
a_line.Position = UDim2.new(0, 0, 0, 17)
a_line.BorderSizePixel = 0
a_line.BackgroundColor3 = Color3.new(255/255, 255/255, 255/255)

local title = Instance.new("TextLabel")
title.Position = UDim2.new(0, 0, 0, 3)
title.Size = UDim2.new(1, 0, 0, 20)
title.BackgroundTransparency = 1
title.Font = "SciFi"
title.TextSize = 14
title.TextYAlignment = "Top"
if game.Workspace.FilteringEnabled ~= true then
title.TextColor3 = Color3.new(0/255, 255/255, 0/255)
else
title.TextColor3 = Color3.new(255/255, 0/255, 0/255)
end
title.Text = "Cooler Kids Gui2"

local instru = Instance.new("TextButton")
instru.Position = UDim2.new(0, 0, 0, 20)
instru.Size = UDim2.new(1, 0, 0, 20)
instru.BackgroundTransparency = 0.9
instru.Font = "SciFi"
instru.TextColor3 = Color3.new(255/255, 255/255, 255/255)
instru.TextSize = 14
instru.TextXAlignment = "Left"
instru.BorderSizePixel = 0
instru.Text = "On"

instru.MouseButton1Click:connect(function()
if instru.Text == "On" then
instru.Text = "Off"
else
instru.Text = "On"
end
end)

local mode_l = Instance.new("TextLabel")
mode_l.Position = UDim2.new(0, 0, 0, 40)
mode_l.Size = UDim2.new(1, 0, 0, 20)
mode_l.BackgroundTransparency = 1
mode_l.TextColor3 = Color3.new(255/255, 255/255, 255/255)
mode_l.Font = "SciFi"
mode_l.TextSize = 18
mode_l.Text = "[ Press E ]"

local sets_b = Instance.new("TextButton")
sets_b.Position = UDim2.new(0, 0, 1, -40)
sets_b.Size = UDim2.new(1, 0, 0, 20)
sets_b.BackgroundTransparency = 0.9
sets_b.TextColor3 = Color3.new(255/255, 255/255, 255/255)
sets_b.Font = "SciFi"
sets_b.TextSize = 32
sets_b.TextScaled = true
sets_b.BorderSizePixel = 0
sets_b.Modal = true
sets_b.Text = "[ Settings ]"

local sets_b_db = false
sets_b.MouseButton1Click:connect(function()
sets_b_db = true
if bin:FindFirstChild("_COOL_SETTINGS") then
bin:FindFirstChild("_COOL_SETTINGS"):Destroy()
else

local gui = Instance.new("ScreenGui")
gui.Name = "_COOL_SETTINGS"

local frame = Instance.new("Frame")
frame.BackgroundColor3 = Color3.new(57/255, 57/255, 57/255)
frame.BackgroundTransparency = 0.1
frame.BorderColor3 = Color3.new(255/255, 255/255, 255/255)
frame.BorderSizePixel = 5
frame.Position = UDim2.new(0.5, -150, 0.5, -250)
frame.Size = UDim2.new(0, 300, 0, 500)

local a_line = Instance.new("Frame")
a_line.BackgroundColor3 = Color3.new(255/255, 255/255, 255/255)
a_line.BorderSizePixel = 0
a_line.Position = UDim2.new(0, 0, 0, 22)
a_line.Size = UDim2.new(1, 0, 0, 5)

local title = Instance.new("TextLabel")
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 22)
title.TextColor3 = Color3.new(255/255, 255/255, 255/255)
title.TextScaled = true
title.Font = "SciFi"
title.TextXAlignment = "Left"
title.Text = "Mode Settings"

local scroller = Instance.new("ScrollingFrame")
scroller.BackgroundTransparency = 1
scroller.Position = UDim2.new(0, 0, 0, 27)
scroller.Size = UDim2.new(1, 0, 1, -27)
scroller.ScrollBarThickness = 0

local hostmode = modes[mode]

--scroller.CanvasSize = Vector2.new(0,(#hostmode*20))
for i,v in pairs(hostmode.settings) do
scroller.CanvasSize = UDim2.new(0, 0, 0, scroller.CanvasSize.Y.Offset+20)
local frame = Instance.new("Frame")
frame.BackgroundTransparency = 1
frame.Size = UDim2.new(1, 0, 0, 20)
frame.Position = UDim2.new(0, 0, 0, scroller.CanvasSize.Y.Offset-20)

local label = Instance.new("TextLabel")
label.BackgroundTransparency = 1
label.Size = UDim2.new(0.5, 0, 1, 0)
label.Font = "SciFi"
label.TextScaled = true
label.TextColor3 = Color3.new(255/255, 255/255, 255/255)
label.TextXAlignment = "Left"
label.Text = i

local input = Instance.new("TextBox")
input.BackgroundTransparency = 0.8
input.BackgroundColor3 = Color3.new(0/255, 0/255, 0/255)
input.TextColor3 = Color3.new(255/255, 255/255, 255/255)
input.BorderSizePixel = 0
input.ClearTextOnFocus = true
input.Position = UDim2.new(0.5, 0, 0, 0)
input.Size = UDim2.new(0.5, 0, 1, 0)
input.Font = "SciFi"
input.TextScaled = true
input.Text = tostring(v)

input.FocusLost:connect(function(property)
print("ffffffff")
if type(v) == type(true) then
if input.Text:lower() == "true" then
hostmode.settings[i] = true
elseif input.Text:lower() == "false" then
hostmode.settings[i] = false
else
input.Text = tostring(hostmode.settings[i])
end
elseif type(v) == type(45678) then
if tonumber(input.Text) ~= nil then
hostmode.settings[i] = tonumber(input.Text)
else
input.Text = tostring(hostmode.settings[i])
end
elseif type(v) == type(Enum.Material.Plastic) then
for _,v in pairs(Enum.Material:GetEnumItems()) do
print("TEST", tostring(v):lower() == ("enum.material."..input.Text), tostring(v):lower(), ("enum.material."..input.Text))
if tostring(v):lower() == ("enum.material."..input.Text) then
print(hostmode.settings[i])
hostmode.settings[i] = v
print("match", hostmode.settings[i])
return
end
end
input.Text = tostring(hostmode.settings[i])
end
end)

input.Parent = frame
label.Parent = frame

frame.Parent = scroller
end

scroller.Parent = frame
title.Parent = frame
a_line.Parent = frame

frame.Parent = gui

gui.Parent = bin

end
sets_b_db = false
end)

local lock = Instance.new("TextButton")
lock.Position = UDim2.new(0, 0, 1, -20)
lock.Size = UDim2.new(1, 0, 0, 20)
lock.BackgroundTransparency = 0.9
lock.TextColor3 = Color3.new(255/255, 255/255, 255/255)
lock.Font = "SciFi"
lock.TextSize = 32
lock.TextScaled = true
lock.BorderSizePixel = 0
lock.Text = "[ Unlocked ]"

lock.MouseButton1Click:connect(function()
state = not state
if state then
lock.Text = "[ Locked ]"
else
lock.Text = "[ Unlocked ]"
end
end)

lock.Parent = frame
sets_b.Parent = frame
mode_l.Parent = frame
instru.Parent = frame
title.Parent = frame
a_line.Parent = frame

frame.Parent = gui




gui.Parent = bin


m.Button1Down:connect(function()
if m.Target ~= nil and instru.Text == "On" and bin:FindFirstChild("_COOL_SETTINGS") == nil then
print(m.Hit)
modes[mode]:Run(m.Target, m.Hit)
end
end)

game:GetService("UserInputService").InputBegan:connect(function(iob, gpe)
if iob.KeyCode == Enum.KeyCode.E and not state and bin:FindFirstChild("_COOL_SETTINGS") == nil then
if mode < #modes then
mode = mode + 1
mode_l.Text = modes[mode].name
else
mode = 1
mode_l.Text = modes[mode].name
end
elseif iob.KeyCode == Enum.KeyCode.R then
for i,v in pairs(_G.csets) do
print(i)
for i,v in pairs(v) do
print("[[ " .. i .. " ]] -- " .. "[[ " .. v .. " ]]")
end
end
end
end)