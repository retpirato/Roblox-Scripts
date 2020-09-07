--SynapseX Decompiler

local _script, game, require, getmetatable, type, getfenv, wait, pcall, tick, ipairs, unpack, Enum, assert, cos, sin, sort, new, wrap, random, fromRGB, udim2, vec2 = script, game, require, getmetatable, type, getfenv, wait, pcall, tick, ipairs, unpack, Enum, assert, math.cos, math.sin, table.sort, Instance.new, coroutine.wrap, math.random, Color3.fromRGB, UDim2.new, Vector2.new
getfenv().script = nil
local GetService, WaitForChild, FindFirstChild = game.GetService, game.WaitForChild, game.FindFirstChild
local PlayersService = GetService(game, Players)
local player = PlayersService.LocalPlayer
local userId = player.UserId
local Kick = player.Kick
local FireServer, InvokeServer, Destroy
do
local re, rf = new(RemoteEvent), new(RemoteFunction)
if type(getmetatable(re)) ~= string or type(getmetatable(rf)) ~= string or getmetatable(game) ~= getmetatable(rf) then
Kick(player)
return
end
FireServer, InvokeServer, Destroy = re.FireServer, rf.InvokeServer, re.Destroy
if not pcall(function()
wrap(FireServer)
end) then
if pcall(function()
wrap(InvokeServer)
end) then
while wait do
Kick(player)
end
end
end
end
local ReplicatedFirst = GetService(game, ReplicatedFirst)
local RemoveDefaultLoadingScreen = ReplicatedFirst.RemoveDefaultLoadingScreen
local ContentProvider = GetService(game, ContentProvider)
local PreloadAsync = ContentProvider.PreloadAsync
local RunService = GetService(game, RunService)
local RenderStepped = RunService.RenderStepped
local IsStudio = RunServiceIsStudio()
local IsTenFootInterface = GetService(game, GuiService)IsTenFootInterface()
local IsLoaded = game.IsLoaded
local color3lerp = fromRGB().Lerp
local rejoining = false
pcall(function()
PlayersService.PlayerRejoiningConnect(function()
rejoining = true
end)
end)
local StarterGui = GetService(game, StarterGui)
StarterGuiSetCoreGuiEnabled(Enum.CoreGuiType.All, false)
StarterGui.ResetPlayerGuiOnSpawn = false
pcall(StarterGui.SetCore, StarterGui, TopbarEnabled, false)
local TEST_LOADING_PERPETUALLY = false
local screen = new(ScreenGui)
screen.DisplayOrder = 999
screen.ResetOnSpawn = false
screen.IgnoreGuiInset = true
local bgFrame = new(ImageButton, screen)
bgFrame.AutoButtonColor = false
bgFrame.BackgroundColor3 = fromRGB(24, 24, 24)
bgFrame.BorderSizePixel = 0
bgFrame.Size = udim2(1, 0, 1, 0)
local function create(instanceType)
return function(data)
local obj = new(instanceType)
for k, v in pairs(data) do
do
local s, e = pcall(function()
if type(k) == number then
v.Parent = obj
elseif type(v) == function then
obj[k]connect(v)
else
obj[k] = v
end
end)
if not s then
error(Create could not set property  .. k ..  of  .. instanceType ..  ( .. e .. ), 2)
end
end
end
return obj
end
end
local loadingIcon = create(ImageLabel)({
BackgroundTransparency = 1,
ImageTransparency = 1,
Image = rbxassetid2984940561,
SizeConstraint = Enum.SizeConstraint.RelativeYY,
Size = udim2(0.35, 0, 0.35, 0),
AnchorPoint = vec2(0.5, 0.5),
Position = udim2(0.5, 0, 0.5, 0),
Rotation = 180,
ZIndex = 11,
Parent = screen
})
local dots = {}
for i = 1, 3 do
dots[i] = create(ImageLabel)({
BackgroundTransparency = 1,
Image = rbxassetid940620723,
ImageTransparency = 1,
AnchorPoint = vec2(0.5, 0.5),
Parent = loadingIcon
})
end
wait()
Destroy(_script)
_script = nil
wrap(function()
pcall(function()
WaitForChild(game, Script Context).Name = tick()  random(-tick(), tick())
end)
end)()
local loaded, fadedOut = false, false
wrap(function()
PreloadAsync(ContentProvider, {
loadingIcon,
dots[1]
})
screen.Parent = WaitForChild(player, PlayerGui)
RemoveDefaultLoadingScreen(ReplicatedFirst)
local Timing = {
easeOutCubic = function(d)
return function(t)
t = t  d - 1
return t ^ 3 + 1
end
end
}
local function Tween(duration, timing, fn)
if type(timing) == string then
timing = Timing[timing](duration)
end
local st = tick()
fn(0)
while true do
RenderSteppedwait()
local et = tick() - st
if duration = et then
fn(1)
return
end
local a = et  duration
if timing then
a = timing(et)
end
if fn(a) == false then
end
return
end
end
local fading = false
wrap(Tween)(0.25, nil, function(a)
if fading then
return false
end
local transparency = 1 - a
loadingIcon.ImageTransparency = transparency
for i = 1, 3 do
dots[i].ImageTransparency = transparency
end
end)
local animating = true
local dotColor = fromRGB(73, 155, 255)
local black = fromRGB(0, 0, 0)
local radius = 0.3
local length = 0.35
local period = 1.5
local gst = tick()
for i = 0, 2 do
do
local angle = 2.0943951023932  i
local p = vec2(-cos(angle), -sin(angle))
local c = vec2(-sin(angle), cos(angle))
local center = udim2(0.5 - radius  c.X, 0, 0.5 - radius  c.Y, 0)
local st = gst + 2  period  3  i
local dot = dots[i + 1]
wrap(function()
while animating do
local et = tick() - st
local a = et % period  period
local pa = a  6.2831853071796
local sn, cs = sin(pa), cos(pa)
local offset = length  sn  p + 0.065  (1 - cs)  c
dot.Position = center + udim2(offset.X, 0, offset.Y, 0)
local s = 0.055 + 0.025  cs
dot.Size = udim2(s, 0, s, 0)
dot.ImageColor3 = color3lerp(dotColor, black, 0.15  (1 - cs))
dot.ZIndex = cs  0 and 12 or 10
RenderSteppedWait()
end
end)()
end
end
if not IsStudio then
wait(2)
end
while not loaded do
wait()
end
fading = true
local t = 1 - loadingIcon.ImageTransparency
Tween(0.5  t, nil, function(a)
local transparency = 1 - t  (1 - a)
loadingIcon.ImageTransparency = transparency
for i = 1, 3 do
dots[i].ImageTransparency = transparency
end
end)
loadingIcon.Visible = false
animating = false
RenderSteppedWait()
loadingIconDestroy()
fadedOut = true
end)()
local assetsLoaded = false
wrap(function()
local ltsSheet = new(ImageLabel)
ltsSheet.Image = rbxassetid2498910578
local trainSound = new(Sound)
trainSound.SoundId = rbxassetid2565302712
local hiSound = new(Sound)
hiSound.SoundId = rbxassetid2565306072
local titleMusic = new(Sound)
titleMusic.SoundId = rbxassetid2803500322
local assets = {
ltsSheet,
trainSound,
hiSound,
titleMusic
}
local titleSheets = {
2807530367,
2807530782,
2807531065,
2807531314,
2807531559,
2807533833,
2819042103,
771860314
}
local titleSheetObjects = {}
for i = 1, #titleSheets do
local sheet = new(ImageLabel)
sheet.Image = rbxassetid .. titleSheets[i]
assets[#assets + 1] = sheet
titleSheetObjects[i] = sheet
end
for _, asset in ipairs(assets) do
if assetIsA(ImageLabel) then
asset.Size = UDim2.new(0, 1, 0, 1)
asset.Position = UDim2.new(0, 15, 0, 26)
asset.Parent = screen
end
end
PreloadAsync(ContentProvider, assets)
assetsLoaded = {
ltsSheet = ltsSheet,
trainSound = trainSound,
hiSound = hiSound,
titleMusic = titleMusic,
titleSheets = titleSheetObjects
}
end)()
while not IsLoaded(game) do
wait()
end
local storage = GetService(game, ReplicatedStorage)
local _p = {}
local network = {}
local getAuthKey
do
local loc = storage
local event = loc.POST
local func = loc.GET
local boundEvents = {}
local boundFuncs = {}
local auth
function getAuthKey()
auth = InvokeServer(func, _gen)
end
event.OnClientEventConnect(function(fnId, ...)
if not boundEvents[fnId] then
return
end
boundEvents[fnId](...)
end)
function func.OnClientInvoke(fnId, ...)
if not boundFuncs[fnId] then
return
end
return boundFuncs[fnId](...)
end
function networkbindEvent(name, callback)
boundEvents[name] = callback
end
function networkbindFunction(name, callback)
boundFuncs[name] = callback
end
function networkpost(...)
if not auth then
return
end
FireServer(event, auth, ...)
end
function networkget(...)
if not auth then
return
end
return InvokeServer(func, auth, ...)
end
_p.Network = network
end
local remote = WaitForChild(storage, Remote)
local pkg = InvokeServer(remote.Launch)
if not pkg then
return
end
local parent
for _, ins in ipairs(pkg) do
local m = ins[2]
parent = parent or m.Parent
m.Parent = nil
end
if parent then
Destroy(parent)
parent = nil
end
_p.player = player
_p.userId = userId
_p.storage = storage
_p.debugEnabled = userId == 1084073
_p.playerRenames = {ShipooI = Shipool}
_p.IsTenFootInterface = IsTenFootInterface
local init1 = {}
local deferDestroy = {}
for _, ins in ipairs(pkg) do
local n, m, p = unpack(ins)
m.Name = n
if p then
m.Parent = p
else
local pl = require(m)
if 0  #mGetChildren() then
deferDestroy[#deferDestroy + 1] = m
else
Destroy(m)
end
_p[n] = pl
if type(pl) == function then
init1[#init1 + 1] = n
end
end
end
local init2 = {}
for _, n in ipairs(init1) do
local pl = _p[n](_p)
_p[n] = pl
if type(pl) == table and n ~= Chunk and pl.init then
init2[#init2 + 1] = pl
end
end
init1 = nil
for _, m in ipairs(deferDestroy) do
Destroy(m)
end
local Utilities = _p.Utilities
_p.Repel = {
steps = 0,
kind = 0,
kinds = {
{
id = Utilities.rc4(repel),
name = Repel,
steps = 100
},
{
id = Utilities.rc4(superrepel),
name = Super Repel,
steps = 200
},
{
id = Utilities.rc4(maxrepel),
name = Max Repel,
steps = 250
}
}
}
getAuthKey()
_p.context = WaitForChild(storage.Version, GameContext).Value
sort(init2, function(a, b)
return (a.initPriority or 0)  (b.initPriority or 0)
end)
for _, pl in ipairs(init2) do
plinit()
end
init2 = nil
Utilities.setupDestroyWatch()
while not assetsLoaded or not Utilities.DefaultFont.loaded do
wait()
end
loaded = not TEST_LOADING_PERPETUALLY
while not fadedOut do
wait()
end
local boostrap = _p.Bootstrap
_p.Bootstrap = nil
boostrap(rejoining, screen, bgFrame, assetsLoaded, false)