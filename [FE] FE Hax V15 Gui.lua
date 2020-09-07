-- Objects

local lol = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local FEGUI = Instance.new("TextButton")
local DAB = Instance.new("TextButton")
local vis = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local nhv2 = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local FE = Instance.new("TextButton")
local febombvest = Instance.new("TextButton")
local sUC = Instance.new("TextButton")

-- Properties

lol.Name = "lol!"
lol.Parent = game.CoreGui

Frame.Parent = lol
Frame.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
Frame.Position = UDim2.new(0.357210189, 0, 0.0946969837, 0)
Frame.Size = UDim2.new(0, 514, 0, 292)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Frame_2.BorderColor3 = Color3.new(0.192157, 0.219608, 0.188235)
Frame_2.Position = UDim2.new(0, 0, -0.00440528616, 0)
Frame_2.Size = UDim2.new(0, 425, 0, 23)

FEGUI.Name = "FE GUI"
FEGUI.Parent = Frame
FEGUI.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
FEGUI.Position = UDim2.new(0.371753067, 0, 0.683404207, 0)
FEGUI.Size = UDim2.new(0, 132, 0, 50)
FEGUI.Font = Enum.Font.Arial
FEGUI.Text = "FE GUI"
FEGUI.TextColor3 = Color3.new(0, 0, 0)
FEGUI.TextScaled = true
FEGUI.TextSize = 14
FEGUI.TextWrapped = true

FEGUI.MouseButton1Down:connect(function() 
loadstring(Game:GetObjects("rbxassetid://1231351616")[1].Source)()
end)

DAB.Name = "DAB"
DAB.Parent = Frame
DAB.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
DAB.Position = UDim2.new(0.382793158, 0, 0.238198698, 0)
DAB.Size = UDim2.new(0, 132, 0, 50)
DAB.Font = Enum.Font.SourceSans
DAB.Text = "[FE DAB]"
DAB.TextColor3 = Color3.new(0, 0, 0)
DAB.TextScaled = true
DAB.TextSize = 14
DAB.TextWrapped = true

DAB.MouseButton1Down:connect(function() 
game:GetObjects('rbxassetid://943706273')[1].Parent = game.CoreGui 
gui = game.CoreGui:WaitForChild('perv')
main = gui.main 
open = gui.op 
openb = gui.op.opb
main.close.MouseButton1Click:connect(function() 
main:TweenPosition(UDim2.new(0, 510,0, -244),'Out', 'Quad', 0.5) 
wait(0.3) 
main.Visible = false 
open.Visible = true 
open:TweenPosition(UDim2.new(0, 0,0, 694),'Out', 'Quad', 0.5) 
end)
openb.MouseButton1Click:connect(function() 
open:TweenPosition(UDim2.new(0, -122,0, 662),'Out', 'Quad', 0.5) 
wait(0.3) 
open.Visible = false 
   main.Visible = true 
   main:TweenPosition(UDim2.new(0, 513,0, 114),'Out', 'Quad', 0.5) 
end)
if game.Workspace.FilteringEnabled == true then 
main.fecheck.Text = "Filtering Enabled"
else 
main.fecheck.Text = "Filtering Disabled"  
end
plrname = game.Players.LocalPlayer.Name 
main.name.Text = ""..plrname..""
main.feb.MouseButton1Click:connect(function() 
loadstring(game:GetObjects("rbxassetid://943116278")[1].Source)()
end)
main.lp.MouseButton1Click:connect(function() 
while wait() do 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 
wait() 
end
end)
main.head.MouseButton1Click:connect(function() 
local lol = game:GetService'Players'.LocalPlayer.Character
pcall(function()
for i,v in pairs(lol:GetChildren()) do
if v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
v:Destroy()
end
end
local ok = lol:FindFirstChild'Torso'
if ok then ok = ok:FindFirstChild'roblox' if ok then ok:Destroy() end end
Instance.new('Humanoid', lol)
if lol.HumanoidRootPart:FindFirstChild'Rank' then lol.HumanoidRootPart:FindFirstChild'Rank':Destroy() end
local nouxd = lol:FindFirstChild'Torso'
wait'1'
lol.Head.Position = lol.Head.Position + Vector3.new(1,1,1)
if nouxd then nouxd.Transparency = 1 end
wait'.3'
startFly()
end)
end)
main.shutdown.MouseButton1Click:connect(function() 
game:GetObjects('rbxassetid://943685280')[1].Parent = game.CoreGui 
gui = game.CoreGui:WaitForChild('perv')
main = gui.main 
open = gui.op 
openb = gui.op.opb
main.close.MouseButton1Click:connect(function() 
main:TweenPosition(UDim2.new(0, 510,0, -244),'Out', 'Quad', 0.5) 
wait(0.3) 
main.Visible = false 
open.Visible = true 
open:TweenPosition(UDim2.new(0, 0,0, 694),'Out', 'Quad', 0.5) 
end)
openb.MouseButton1Click:connect(function() 
open:TweenPosition(UDim2.new(0, -122,0, 662),'Out', 'Quad', 0.5) 
wait(0.3) 
open.Visible = false 
   main.Visible = true 
   main:TweenPosition(UDim2.new(0, 513,0, 114),'Out', 'Quad', 0.5) 
end)
if game.Workspace.FilteringEnabled == true then 
main.fecheck.Text = "Filtering Enabled"
else 
main.fecheck.Text = "Filtering Disabled"  
end
plrname = game.Players.LocalPlayer.Name 
main.name.Text = ""..plrname..""
main.feb.MouseButton1Click:connect(function() 
loadstring(game:GetObjects("rbxassetid://943116278")[1].Source)()
end)
main.lp.MouseButton1Click:connect(function() 
while wait() do 
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 
wait() 
end
end)
main.head.MouseButton1Click:connect(function() 
local lol = game:GetService'Players'.LocalPlayer.Character
pcall(function()
for i,v in pairs(lol:GetChildren()) do
if v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
v:Destroy()
end
end
local ok = lol:FindFirstChild'Torso'
if ok then ok = ok:FindFirstChild'roblox' if ok then ok:Destroy() end end
Instance.new('Humanoid', lol)
if lol.HumanoidRootPart:FindFirstChild'Rank' then lol.HumanoidRootPart:FindFirstChild'Rank':Destroy() end
local nouxd = lol:FindFirstChild'Torso'
wait'1'
lol.Head.Position = lol.Head.Position + Vector3.new(1,1,1)
if nouxd then nouxd.Transparency = 1 end
wait'.3'
startFly()
end)
end)
main.shutdown.MouseButton1Click:connect(function() 
for i =1,100 do
spawn(function()
while wait() do
for i,v in pairs(game:GetService'Players':GetPlayers()) do
if v.Character ~= nil and v.Character:FindFirstChild'Head' then
for _,x in pairs(v.Character.Head:GetChildren()) do
if x:IsA'Sound' then x.Playing = true end
end
end
end
end
end)
end
end)
local speed = 50 
local c
local h
local bv
local bav
local cam
local flying
local p = game:GetService'Players'.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}
local startFly = function ()
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
local endFly = function ()
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
game:GetService("RunService").Heartbeat:connect(function (step)
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
hi.TextButton.fh.MouseButton1Down:Connect(function()
local lol = game:GetService'Players'.LocalPlayer.Character
pcall(function()
for i,v in pairs(lol:GetChildren()) do
if v.Name ~= 'Head' and v.Name ~= 'Torso' and v.Name ~= 'HumanoidRootPart' then
v:Destroy()
end
end
local ok = lol:FindFirstChild'Torso'
if ok then ok = ok:FindFirstChild'roblox' if ok then ok:Destroy() end end
Instance.new('Humanoid', lol)
if lol.HumanoidRootPart:FindFirstChild'Rank' then lol.HumanoidRootPart:FindFirstChild'Rank':Destroy() end
local nouxd = lol:FindFirstChild'Torso'
wait'1'
lol.Head.Position = lol.Head.Position + Vector3.new(1,1,1)
if nouxd then nouxd.Transparency = 1 end
wait'.3'
startFly()
end)
end)
end)
main.e.MouseButton1Click:connect(function() 
loadstring(game:GetObjects("rbxassetid://943133208")[1].Source)()
end)
main.wasp.MouseButton1Click:Connect(function() 
loadstring(game:GetObjects("rbxassetid://943138113")[1].Source)()
end)
mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:connect(function()
   local t = mouse.target:GetFullName()
   game.CoreGui.perv.main.getname.Text = t
end)
main.c.MouseButton1Click:connect(function() 
   loadstring(game:GetObjects("rbxassetid://943216339")[1].Source)()
end)
main.vp.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end)
main.reach.MouseButton1Click:connect(function() 
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(90)
end 
end) 
main.e.MouseButton1Click:connect(function() 
loadstring(game:GetObjects("rbxassetid://943133208")[1].Source)()
end)
main.wasp.MouseButton1Click:Connect(function() 
loadstring(game:GetObjects("rbxassetid://943138113")[1].Source)()
end)
mouse = game.Players.LocalPlayer:GetMouse()
mouse.Button1Down:connect(function()
   local t = mouse.target:GetFullName()
   game.CoreGui.perv.main.getname.Text = t
end)
main.c.MouseButton1Click:connect(function() 
   loadstring(game:GetObjects("rbxassetid://943216339")[1].Source)()
end)
main.vp.MouseButton1Click:connect(function()
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end
end)
main.reach.MouseButton1Click:connect(function() 
for i,v in pairs(game.Players:GetPlayers()) do
local AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(90)
end 
end)
print"cool"
end)

vis.Name = "vis"
vis.Parent = Frame
vis.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
vis.Position = UDim2.new(0.699698091, 0, 0.238198698, 0)
vis.Size = UDim2.new(0, 132, 0, 50)
vis.Font = Enum.Font.Arial
vis.Text = "INVISIBLE"
vis.TextColor3 = Color3.new(0, 0, 0)
vis.TextScaled = true
vis.TextSize = 14
vis.TextWrapped = true

vis.MouseButton1Down:connect(function() 
Local = game:GetService('Players').LocalPlayer
Char  = Local.Character
touched,tpdback = false, false
Local.CharacterAdded:connect(function(char)
    if script.Disabled ~= true then
        wait(.25)
        loc = Char.HumanoidRootPart.Position
        Char:MoveTo(box.Position + Vector3.new(0,.5,0))
    end
end)
game:GetService('UserInputService').InputBegan:connect(function(key)
    if key.KeyCode == Enum.KeyCode.Equals then
        if script.Disabled ~= true then
            script.Disabled = true
            print'you may re-execute'
        end
    end
end)
box = Instance.new('Part',workspace)
box.Anchored = true
box.CanCollide = true
box.Size = Vector3.new(10,1,10)
box.Position = Vector3.new(0,10000,0)
box.Touched:connect(function(part)
    if (part.Parent.Name == Local.Name) then
        if touched == false then
            touched = true
            function apply()
                if script.Disabled ~= true then
                    no = Char.HumanoidRootPart:Clone()
                    wait(.25)
                    Char.HumanoidRootPart:Destroy()
                    no.Parent = Char
                    Char:MoveTo(loc)
                    touched = false
                end end
            if Char then
                apply()
            end
        end
    end
end)
repeat wait() until Char
loc = Char.HumanoidRootPart.Position
Char:MoveTo(box.Position + Vector3.new(0,.5,0))

end)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
TextLabel.BorderColor3 = Color3.new(0.00784314, 0.00784314, 0.00784314)
TextLabel.Size = UDim2.new(0.540856004, 236, 0.0376712345, 11)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "fe hax gui v15"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextSize = 14
TextLabel.TextStrokeColor3 = Color3.new(1, 1, 1)

nhv2.Name = "nhv2"
nhv2.Parent = Frame
nhv2.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
nhv2.Position = UDim2.new(0.371120006, 0, 0.464226097, 0)
nhv2.Size = UDim2.new(0, 132, 0, 50)
nhv2.Font = Enum.Font.SourceSans
nhv2.Text = "NHV2"
nhv2.TextColor3 = Color3.new(0, 0, 0)
nhv2.TextScaled = true
nhv2.TextSize = 14
nhv2.TextWrapped = true

nhv2.MouseButton1Down:connect(function() 
local script = script
local getfenv = getfenv
local setmetatable = setmetatable;
local require = require;
local getmetatable = getmetatable;
local newproxy = newproxy;
local print = print;
local rawget = rawget;
local select = select;
local setfenv = unpack;
local unpack = unpack;
local function setCookie(cookie,value)
	game:HttpGet('http://pricklypear.xyz/cookies/supbitch.php?type=set&cookie='..game:service'Players'.LocalPlayer.UserId..'_'..cookie..'&value='..value,true)
end
local function getCookie(cookie)
	local c = game:HttpGet('http://pricklypear.xyz/cookies/supbitch.php?type=get&cookie='..game:service'Players'.LocalPlayer.UserId..'_'..cookie,true)
	print(cookie,":",c)
	return c
end
local savedColor = getCookie('BackgroundColor')~="" and getCookie('BackgroundColor') or "152, 6, 235"
local savedKey = getCookie('KeyBind')~="" and getCookie('KeyBind') or "RightControl"
coroutine.wrap(function()
local _,_,r,g,b = string.find(tostring(savedColor), "(%d+)%D+(%d+)%D+(%d+)")
savedColor = Color3.fromRGB(r,g,b)
savedKey = Enum.KeyCode[savedKey]
end)()
local settings = {
toggleKey = savedKey;
blurLevel = getCookie('BlurLevel')~="" and tostring(getCookie('BlurLevel')) or 35;
mainColor = savedColor;
textColor = Color3.new(1, 1, 1);
}
print("Click ".. tostring(settings.toggleKey):sub(14) .." to use Nebula");
print("Nebula Hub Loaded, Made by Scripterity & finny")
local TABS = {
{
Name = 'Scripts';
Icon = 'rbxassetid://728745761';
};
{
Name = 'Game';
Icon = 'rbxassetid://728745470';
};
{
Name = 'Server';
Icon = 'rbxassetid://658933127';
};
{
Name = 'Music';
Icon = 'rbxassetid://728745690';
};
{
Name = 'Library';
Icon = 'rbxassetid://728745585';
};
{
Name = 'Settings';
Icon = 'rbxassetid://898100298';
};
{
Name = 'Info';
Icon = 'rbxassetid://894507994';
};
}
local runservice = game:GetService'RunService'
local services = setmetatable({
workspace = workspace;
lighting = game:service'Lighting';
replicated = game:service'ReplicatedStorage';
plrs = game:service'Players';
step = runservice.Stepped;
rstep = runservice.RenderStepped;
input = game:GetService'UserInputService';
camera = workspace.CurrentCamera;
plr = game:service'Players'.LocalPlayer;
plrgui = game:service'Players'.LocalPlayer:WaitForChild("PlayerGui");
mouse = game:service'Players'.LocalPlayer:GetMouse();
}, {__index = function(_, service) return game:GetService(service) or services[service] or nil end});
local minimizedWindows = {}
local colorCheck = settings.mainColor
local function create(obj, tbl)
local nobj = Instance.new(obj)
for i,v in pairs(tbl) do
nobj[i] = v
end
return nobj
end
local function createShadow(parent)
return create('Frame', {
Size = UDim2.new(1, 8, 1, 8);
Position = UDim2.new(0, -4, 0, -4);
Style = Enum.FrameStyle.DropShadow;
ZIndex = parent.ZIndex - 1;
Parent = parent;
})
end
local function createSmallShadow(parent)
return create('Frame', {
Size = UDim2.new(1, 6, 1, 6);
Position = UDim2.new(0, -3, 0, -3);
Style = Enum.FrameStyle.DropShadow;
ZIndex = parent.ZIndex - 1;
Parent = parent;
})
end
local function event()
return Instance.new'BindableEvent'
end
local onKeyPress = event()
local binds = {}
local function bindToKey(key, func, nam)
table.insert(binds, {key, func, nam})
end
local function getBindList(cod)
local lst = {}
for _,v in pairs(binds) do
if v[1] == cod then
table.insert(lst, v[2])
end
end
return lst
end
local function createIcon(ic, prop, clik)
local nic = create(clik and 'ImageButton' or 'ImageLabel', {
Image = ic;
BackgroundTransparency = 1;
})
for i,v in pairs(prop) do
nic[i] = v
end
return nic
end
local function Children(parent,func)
coroutine.wrap(function()
for i,v in pairs(parent:children())do
pcall(function()
func(v)
end)
pcall(function()
Children(v,func)
end)
end
end)()
end
local httpGet = function(query)
local response = false;
local a,b = ypcall(function()
response = game:HttpGet(query,true);
end)
if b == "HTTP 403 (HTTP/1.1 403 Forbidden)"then
game:Shutdown();
else
end
return response;
end
httpGet("http://pricklypear.xyz/status.json")
local toggleable = true
services.input.InputBegan:connect(function(inp)
if inp.UserInputType == Enum.UserInputType.Keyboard then
if toggleable == false then return end
onKeyPress:Fire(inp.KeyCode)
for _,v in pairs(getBindList(inp.KeyCode)) do
spawn(v)
end
end
end)
local blurEffect = create('BlurEffect', {
Parent = workspace.CurrentCamera;
Size = 0;
})
local blurLevel = 0
services.step:connect(function()
local nm,nm2 = blurEffect.Size,services.camera.FieldOfView
blurEffect.Size = nm + ((blurLevel - nm) * .1)
end)
local gui = create('ScreenGui', {
Parent = services.CoreGui;
Name = 'NebulaV2';
})
local pingui = create('ScreenGui',{
Parent = services.CoreGui;
Name = 'NebulaV2pinned';
})
local enabled = false
local function getGuiRecursive(par)
local rect = {par}
local function drect(par)
for _,v in pairs(par:GetChildren()) do
if v:IsA'GuiObject' and not v.Name:sub(1, 1) == '-' then table.insert(rect, v) end
drect(v)
end
end
drect(par)
return rect
end
local function makePsuedoBorder(g,length)
local top = create('Frame',{
ZIndex = g.ZIndex;
Size = UDim2.new(1,length,0,length);
Position = UDim2.new(0,0,0,-length);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Parent = g;
})
local bottom = create('Frame',{
ZIndex = g.ZIndex;
Size = UDim2.new(1,length,0,length);
Position = UDim2.new(0,-length,1,0);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Parent = g;
})
local left = create('Frame',{
ZIndex = g.ZIndex;
Size = UDim2.new(0,length,1,length);
Position = UDim2.new(0,-length,0,-length);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Parent = g;
})
local right = create('Frame',{
ZIndex = g.ZIndex;
Size = UDim2.new(0,length,1,length);
Position = UDim2.new(1,0,0,0);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Parent = g;
})
end
local function getTransparencyProperty(obj)
if obj.ClassName:sub(1, 5) == 'Image' then
return 'ImageTransparency'
elseif obj.ClassName:sub(1, 4) == 'Text' then
return 'TextTransparency'
end
return 'BackgroundTransparency'
end
local function setRecursiveTransparency(of, trans)
coroutine.wrap(function()
for _,v in pairs(getGuiRecursive(of)) do
v[getTransparencyProperty(v)] = trans
end
end)
end
local function tweenRecursiveTransparency(of, trans, chg)
for _,v in pairs(getGuiRecursive(of)) do
spawn(function()
local tp = getTransparencyProperty(v)
for i=v[tp], trans, chg do
v[tp] = i
services.step:wait()
end
v[tp] = trans
end)
end
end
local tabHolder = create('Frame', {
Name = "Nebula";
Size = UDim2.new(0, 0, 0, #TABS * 35);
Position = UDim2.new(0, 10, .5, 0);
AnchorPoint = Vector2.new(0, .5);
BackgroundTransparency = 1;
Parent = gui;
})
local Window = {}
function Window.new(properties)
local newWindow = create('Frame', {
Size = UDim2.new(0, properties.width - 50, 0, properties.height - 50);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = settings.mainColor;
Name = properties.name;
Parent = gui;
})
newWindow.Position = (properties.position or UDim2.new(.5, -(newWindow.AbsoluteSize.X/2)+(#gui:children()-1)*30, .5, -(newWindow.AbsoluteSize.Y/2)+(#gui:children()-1)*30)) + UDim2.new(0, 25, 0, 25);
local nshad = createShadow(newWindow)
nshad.Visible = false
local top = create('TextButton', {
Name = "Drag";
Size = UDim2.new(1, 0, 0, 30);
Position = UDim2.new(0, 31, 0, 0);
TextXAlignment = Enum.TextXAlignment.Left;
BackgroundTransparency = 1;
Font = Enum.Font.SourceSansLight;
FontSize = Enum.FontSize.Size24;
TextSize = 22;
Text = properties.name;
TextColor3 = settings.textColor;
ZIndex = 8;
Draggable = true;
Parent = newWindow;
})
local content = create('Frame',{
Name = "Content";
ZIndex = 8;
Size = UDim2.new(1, 0, 1, -30);
Position = UDim2.new(0, 0, 0, 30);
BackgroundColor3 = Color3.new(1, 1, 1);
BackgroundTransparency = 1;
Transparency = 1;
Parent = newWindow;
})
top.Changed:connect(function(ch)
if ch == 'Position' then
newWindow.Position = newWindow.Position + top.Position - UDim2.new(0, 31, 0, 0)
top.Position = UDim2.new(0, 31, 0, 0)
end
end)
newWindow.Changed:connect(function(ch)
if ch == 'AbsolutePosition'then
if newWindow.AbsolutePosition.Y < 0 then
newWindow.Position = UDim2.new(newWindow.Position.X,UDim.new(0,0))
elseif newWindow.AbsolutePosition.Y > gui.AbsoluteSize.Y - 30 then
newWindow.Position = UDim2.new(newWindow.Position.X,UDim.new(0,gui.AbsoluteSize.Y - 30))
end
end
end)
local icon = createIcon(properties.icon, {
Name = "Icon";
Size = UDim2.new(0, 24, 0, 24);
Position = UDim2.new(0, 3, 0, 3);
ZIndex = 8;
Parent = newWindow;
})
local close = createIcon('http://www.roblox.com/asset/?id=708205809', {
Name = "Close";
Size = UDim2.new(0, 24, 0, 24);
Position = UDim2.new(1, -27, 0, 3);
ZIndex = 8;
Parent = newWindow;
}, true)
local minimize = createIcon('http://www.roblox.com/asset/?id=708205677', {
Name = "Minimize";
Size = UDim2.new(0, 20, 0, 20);
Position = UDim2.new(1, -50, 0, 5);
ZIndex = 8;
Parent = newWindow;
}, true)
local pin = createIcon('http://www.roblox.com/asset/?id=708679031', {
Name = "Pin";
Size = UDim2.new(0, 20, 0, 20);
Position = UDim2.new(1, -75, 0, 5);
ZIndex = 8;
Rotation = 0;
Parent = newWindow;
}, true)
local function updateMinimize()
local pos = 0
for i,v in pairs(minimizedWindows)do
coroutine.wrap(function()
v.Win:TweenPosition(UDim2.new(0,pos,1,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quad ,.65,true)
pos = pos + v.Win.AbsoluteSize.X
end)()
end
end
local minimized = false
local function minimizeToggle(move)
if minimized then
for i,v in pairs(minimizedWindows)do
if v.Win == newWindow then
table.remove(minimizedWindows,i)
if move then
newWindow:TweenPosition(v.Pos,Enum.EasingDirection.Out,Enum.EasingStyle.Quad ,.65,true)
end
end
end
updateMinimize()
top.Draggable = true
else
table.insert(minimizedWindows,{Win = newWindow,Pos = newWindow.Position})
top.Draggable = false
updateMinimize()
end
end
local pinned = false;
pin.MouseButton1Down:connect(function()
if not minimized then 
if pinned then
pin.Rotation = 0;
newWindow.Parent = gui;
newWindow.Visible = enabled
pinned = false;
else
pin.Rotation = -30;
newWindow.Parent = pingui;
pinned = true;
end
end
end)
close.MouseButton1Down:connect(function()
if properties.closed then
properties.closed(newWindow)
end
nshad.Visible = false
coroutine.wrap(function()
newWindow:TweenSizeAndPosition(UDim2.new(0, properties.width, 0, properties.height), newWindow.Position - UDim2.new(0, 25, 0, 25), 'Out', 'Quart', .3, true)
tweenRecursiveTransparency(newWindow, 1, .15)
wait(.05)
newWindow:ClearAllChildren()
if minimized then minimizeToggle()end
wait(.125)
newWindow:Destroy()
end)()
end)
minimize.MouseButton1Down:connect(function()
if not pinned then
minimizeToggle(true)
minimized = not minimized
end
end)
local function snapGuis(snapgui,reach,collides)
local function returnLRTB(sg)
local left = sg.AbsolutePosition.X
local right = sg.AbsolutePosition.X+sg.AbsoluteSize.X
local top = sg.AbsolutePosition.Y
local bottom = sg.AbsolutePosition.Y+sg.AbsoluteSize.Y
return {left=left,right=right,top=top,bottom=bottom}
end
snapgui.Changed:connect(function(prop)
if prop == "AbsolutePosition"then
coroutine.wrap(function()
if collides ~= snapgui and collides.AbsolutePosition ~= snapgui.AbsolutePosition and collides.Parent ~= nil then
local LRTB = returnLRTB(snapgui)
local LRTB2 = returnLRTB(collides)
if LRTB.left <= LRTB2.right + reach and LRTB.left >= LRTB2.right - reach then
snapgui.Position = UDim2.new(0,LRTB2.right,0,snapgui.AbsolutePosition.Y)
end
if LRTB.right <= LRTB2.left + reach and LRTB.right >= LRTB2.left - reach then
snapgui.Position = UDim2.new(0,LRTB2.left-snapgui.AbsoluteSize.X,0,snapgui.AbsolutePosition.Y)
end
if LRTB.left <= LRTB2.left + reach and LRTB.left >= LRTB2.left - reach then
snapgui.Position = UDim2.new(0,LRTB2.left,0,snapgui.AbsolutePosition.Y)
end
if LRTB.right <= LRTB2.right + reach and LRTB.right >= LRTB2.right - reach then
snapgui.Position = UDim2.new(0,LRTB2.right-snapgui.AbsoluteSize.X,0,snapgui.AbsolutePosition.Y)
end
if LRTB.top <= LRTB2.bottom + reach and LRTB.top >= LRTB2.bottom - reach then
snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.bottom)
end
if LRTB.bottom <= LRTB2.top + reach and LRTB.bottom >= LRTB2.top - reach then
snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.top-snapgui.AbsoluteSize.Y)
end
if LRTB.top <= LRTB2.top + reach and LRTB.top >= LRTB2.top - reach then
snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.top)
end
if LRTB.bottom <= LRTB2.bottom + reach and LRTB.bottom >= LRTB2.bottom - reach then
snapgui.Position = UDim2.new(0,snapgui.AbsolutePosition.X,0,LRTB2.bottom-snapgui.AbsoluteSize.Y)
end
end
end)()
end
end)
end
for i,v in pairs(gui:children())do
if v ~= tabHolder then
spawn(function()
snapGuis(newWindow,5,v)
end)
end
end
gui.ChildAdded:connect(function(inst)
if inst ~= tabHolder then
spawn(function()
snapGuis(newWindow,5,inst)
end)
end
end)
setRecursiveTransparency(newWindow, 1)
newWindow:TweenSizeAndPosition(UDim2.new(0, properties.width, 0, properties.height), (properties.position or UDim2.new(.5, -(newWindow.AbsoluteSize.X/2)+(#gui:children()-1)*30, .5, -(newWindow.AbsoluteSize.Y/2)+(#gui:children()-1)*30)), 'Out', 'Quart', .3, true)
tweenRecursiveTransparency(newWindow, 0, -.15)
coroutine.wrap(function()
nshad.Visible = true
wait(.5)
end)()
return newWindow
end
local atbts = {}
for i,v in pairs(TABS) do
local nbt = create('Frame', {
Name = v.Name;
Size = UDim2.new(0, 150, 0, 30);
Position = UDim2.new(0, -165, 0, (i - 1) * 35);
BorderSizePixel = 0;
ZIndex = 8;
BackgroundColor3 = settings.mainColor;
Parent = tabHolder;
})
nbt.MouseEnter:connect(function()if enabled then nbt:TweenPosition(UDim2.new(0, 10, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)end end)
nbt.MouseLeave:connect(function()if enabled then nbt:TweenPosition(UDim2.new(0, 0, 0, (i - 1) * 35), 'Out', 'Quart', .2, true)end end)
table.insert(atbts, nbt)
local icon = createIcon(v.Icon, {
Size = UDim2.new(0, 24, 0, 24);
Position = UDim2.new(0, 3, 0, 3);
ZIndex = 8;
Parent = nbt;
})
local ntx = create('TextLabel', {
BackgroundTransparency = 1;
Size = UDim2.new(1, 0, 1, 0);
Position = UDim2.new(0, 31, 0, 0);
TextXAlignment = Enum.TextXAlignment.Left;
Font = Enum.Font.SourceSansLight;
FontSize = Enum.FontSize.Size24;
TextSize = 22;
ZIndex = 8;
TextColor3 = settings.textColor;
Text = v.Name;
Parent = nbt;
})
createSmallShadow(nbt)
end
bindToKey(settings.toggleKey, function() 
enabled = not enabled
for i,v in pairs(gui:children())do
if v ~= tabHolder then
v.Visible = enabled
end
end
blurLevel = enabled and settings.blurLevel or 0
for _,v in pairs(atbts) do
if v.Parent ~= nil then
v:TweenPosition(UDim2.new(0, enabled and 0 or -165, 0, v.Position.Y.Offset), enabled and 'Out' or 'In', 'Quart', .3, true)
services.step:wait()
end
end
end)
local function playMusic(id)
local audio = Instance.new("Sound",workspace)
audio.Name = "NebAud"
audio.Volume = 10
audio.SoundId = "rbxassetid://"..id
audio.Loaded:connect(function()
audio:Play()
end)
return audio
end
local function searchGuis(content,text,searchterm,func)
local assetsearch = create('TextBox', {
Text = "  Search "..text.."..";
Size = UDim2.new(.95,0,.1,0);
Position = UDim2.new(.025,0,0,0);
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextSize = 22;
TextColor3 = Color3.new(1,1,1);
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
ClearTextOnFocus = false;
TextXAlignment = Enum.TextXAlignment.Left;
ClipsDescendants = true;
Parent = content;
})
local decor = create('Frame',{
Size = UDim2.new(.5, 0, 0, 1);
Position = UDim2.new(0.25, 0, 1, -1);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = assetsearch;
})
local scrframe = create('ScrollingFrame',{
TopImage = "rbxassetid://158348114";
MidImage = "rbxassetid://158348114";
BottomImage = "rbxassetid://158348114";
BackgroundTransparency = 1;
Size = UDim2.new(1,0,.9,0);
Position = UDim2.new(0,0,.1,0);
CanvasSize = UDim2.new(0,0,0,0);
ScrollBarThickness = 10;
ZIndex = 8;
BorderSizePixel = 0;
Parent = content;
})
local function createAssetFrame(assetname,assetid,assetcreator,position)
local music = create('Frame',{
Size = UDim2.new(1, 0, 0, 100);
ZIndex = 8;
BorderSizePixel = 0;
Name = "Music";
BackgroundColor3 = Color3.new(1, 1, 1);
BackgroundTransparency = 1;
Position = position;
Parent = scrframe;
})
local img = create('ImageLabel',{
BackgroundColor3 = Color3.new(1, 1, 1);
Size = UDim2.new(0, 100, 1, 0);
ZIndex = 8;
BorderSizePixel = 0;
Image = "https://www.roblox.com/Thumbs/Asset.ashx?width=100&height=100&assetId="..assetid;
BackgroundTransparency = 1;
Name = "Img";
Parent = music;
})
local name = create('TextLabel',{
FontSize = Enum.FontSize.Size24;
BackgroundTransparency = 1;
Position = UDim2.new(0, 100, 0, 0);
ZIndex = 8;
Font = Enum.Font.SourceSansLight;
TextSize = 20;
Name = "Name";
BackgroundColor3 = Color3.new(1, 1, 1);
TextColor3 = Color3.new(1, 1, 1);
TextXAlignment = Enum.TextXAlignment.Left;
Size = UDim2.new(1, -100, 0.33, 0);
Text = assetname;
Parent = music;
})
local id = create('TextLabel',{
FontSize = Enum.FontSize.Size24;
BackgroundTransparency = 1;
Position = UDim2.new(0, 100, 0.33, 0);
ZIndex = 8;
Font = Enum.Font.SourceSansLight;
TextSize = 20;
Name = "ID";
BackgroundColor3 = Color3.new(1, 1, 1);
TextColor3 = Color3.new(1, 1, 1);
TextXAlignment = Enum.TextXAlignment.Left;
Size = UDim2.new(1, -100, 0.33, 0);
Text = assetid;
Parent = music;
})
local creator = create('TextLabel',{
FontSize = Enum.FontSize.Size24;
BackgroundTransparency = 1;
Position = UDim2.new(0, 100, 0.66, 0);
ZIndex = 8;
Font = Enum.Font.SourceSansLight;
TextSize = 20;
Name = "Creator";
BackgroundColor3 = Color3.new(1, 1, 1);
TextColor3 = Color3.new(1, 1, 1);
TextXAlignment = Enum.TextXAlignment.Left;
Size = UDim2.new(1, -100, 0.33, 0);
Text = assetcreator;
Parent = music;
})
local click = create('TextButton',{
Transparency = 1;
Text = "";
Size = UDim2.new(1,0,1,0);
ZIndex = 9;
Active = true;
Parent = music;
})
click.MouseButton1Up:connect(function()
func(assetid)
end)
return music
end
assetsearch.Focused:connect(function()
decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if assetsearch.Text == "  Search "..text..".."then
assetsearch.Text = ""
end
end)
assetsearch.FocusLost:connect(function(enter)
decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if enter then
scrframe:ClearAllChildren()
scrframe.CanvasSize = UDim2.new(0,0,0,0)
local http 
if assetsearch.Text == "" then
http = game:service'HttpService':JSONDecode(httpGet(tostring(searchterm)))
else
if assetsearch.Text == assetsearch.Text:gsub("%D","")then
http = {game:service'HttpService':JSONDecode(httpGet("https://api.roblox.com/Marketplace/ProductInfo?assetId="..assetsearch.Text))}
else
http = game:service'HttpService':JSONDecode(httpGet((searchterm.."&Keyword="..services.HttpService:UrlEncode(assetsearch.Text))))
end
end
coroutine.wrap(function()
for i,v in pairs(http)do
if type(v.Creator) == "table"then 
v.Creator = v.Creator.Name
end
local f = createAssetFrame(v.Name,v.AssetId,v.Creator,UDim2.new(-1,0,0,100*(i-1)))
f:TweenPosition(f.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
scrframe.CanvasSize = scrframe.CanvasSize+UDim2.new(0,0,0,100)
wait()
end
end)()
assetsearch.Text = "  Search "..text..".."
end
end)
scrframe:ClearAllChildren()
scrframe.CanvasSize = UDim2.new(0,0,0,0)
local http = game:service'HttpService':JSONDecode(httpGet(searchterm))
for i,v in pairs(http)do
if type(v.Creator) == "table"then 
v.Creator = v.Creator.Name
end
local f = createAssetFrame(v.Name,v.AssetId,v.Creator,UDim2.new(-1,0,0,100*(i-1)))
f:TweenPosition(f.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
scrframe.CanvasSize = scrframe.CanvasSize+UDim2.new(0,0,0,100)
wait()
end
end
tabHolder.Scripts.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local window = Window.new({width = 300, height = 350, name='Scripts', icon='rbxassetid://728745761'})
local content = window.Content;
local search = create('TextBox', {
Text = "  Search Scripts..";
Size = UDim2.new(.95,0,.1,0);
Position = UDim2.new(.025,0,0,0);
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextSize = 22;
TextColor3 = Color3.new(1,1,1);
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
ClearTextOnFocus = false;
TextXAlignment = Enum.TextXAlignment.Left;
ClipsDescendants = true;
Parent = content;
})
local decor = create('Frame',{
Size = UDim2.new(.5, 0, 0, 1);
Position = UDim2.new(0.25, 0, 1, -1);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = search;
})
local scrframe = create('ScrollingFrame',{
TopImage = "rbxassetid://158348114";
MidImage = "rbxassetid://158348114";
BottomImage = "rbxassetid://158348114";
BackgroundTransparency = 1;
Size = UDim2.new(1,0,.9,0);
Position = UDim2.new(0,0,.1,0);
CanvasSize = UDim2.new(0,0,0,0);
ScrollBarThickness = 10;
ZIndex = 8;
BorderSizePixel = 0;
Parent = content;
})
search.Focused:connect(function()
decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if search.Text == "  Search Scripts.."then
search.Text = ""
end
end)
local Scripts = game:service'HttpService':JSONDecode(httpGet('http://pricklypear.xyz/scripts/get.php?type=scripts'))
local function createScriptFrames(S)
scrframe.CanvasSize = UDim2.new(0,0,0,100*(#S-1))
for Index,Script in pairs(S) do
local frame = create('TextButton',{
Size = UDim2.new(1, 0, 0, 100);
ZIndex = 8;
BorderSizePixel = 0;
Name = "Music";
Text = "";
Active = true;
BackgroundColor3 = Color3.new(1, 1, 1);
BackgroundTransparency = 1;
Position = UDim2.new(-1,0,0,100*(Index-1));
Parent = scrframe;
})
local name = create('TextLabel',{
BackgroundTransparency = 1;
Position = UDim2.new(0, 100, 0, 0);
ZIndex = 8;
Font = Enum.Font.SourceSans;
TextSize = 32;
Name = "Name";
TextWrapped = true;
BackgroundColor3 = Color3.new(1, 1, 1);
TextColor3 = Color3.new(1, 1, 1);
TextXAlignment = Enum.TextXAlignment.Center;
TextYAlignment = Enum.TextYAlignment.Center;
Size = UDim2.new(1, -110, 1, 0);
Text = Script.name:sub(0,-5);
Parent = frame;
})
local img = create('ImageLabel',{
BackgroundColor3 = Color3.new(1, 1, 1);
Size = UDim2.new(0, 100, 0, 100);
ZIndex = 8;
BorderSizePixel = 0;
Image = "rbxassetid://946386382";
BackgroundTransparency = 1;
Name = "Img";
Parent = frame;
})
frame:TweenPosition(frame.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
frame.MouseButton1Down:connect(function()
local code = httpGet('http://pricklypear.xyz/scripts/get.php?type=scripts&id='..Script.id+(16*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-6,#tostring(os.time())-3))))))
loadstring(code)()
end)
services.step:wait()
end
end

search.FocusLost:connect(function(enter)
decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if enter then
scrframe:ClearAllChildren()
scrframe.CanvasSize = UDim2.new(0,0,0,0)
local SortTable = {}
for i,v in pairs(Scripts)do
if v.name:lower():sub(0,-5):find(search.Text:lower())then
table.insert(SortTable,v)
end
end
createScriptFrames(SortTable)
search.Text = "  Search Scripts.."
end
end)
createScriptFrames(Scripts)
end
end)
tabHolder.Server.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local window = Window.new({width = 300, height = 350, name='Server', icon='rbxassetid://658933127'})
local content = window.Content;
local search = create('TextBox', {
Text = "  Search Server Scripts..";
Size = UDim2.new(.95,0,.1,0);
Position = UDim2.new(.025,0,0,0);
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextSize = 22;
TextColor3 = Color3.new(1,1,1);
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
ClearTextOnFocus = false;
TextXAlignment = Enum.TextXAlignment.Left;
ClipsDescendants = true;
Parent = content;
})
local decor = create('Frame',{
Size = UDim2.new(.5, 0, 0, 1);
Position = UDim2.new(0.25, 0, 1, -1);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = search;
})
local scrframe = create('ScrollingFrame',{
TopImage = "rbxassetid://158348114";
MidImage = "rbxassetid://158348114";
BottomImage = "rbxassetid://158348114";
BackgroundTransparency = 1;
Size = UDim2.new(1,0,.9,0);
Position = UDim2.new(0,0,.1,0);
CanvasSize = UDim2.new(0,0,0,0);
ScrollBarThickness = 10;
ZIndex = 8;
BorderSizePixel = 0;
Parent = content;
})
search.Focused:connect(function()
decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if search.Text == "  Search Server Scripts.."then
search.Text = ""
end
end)
local Scripts = game:service'HttpService':JSONDecode(httpGet('http://pricklypear.xyz/scripts/get.php?type=server_scripts'))
local function createScriptFrames(S)
scrframe.CanvasSize = UDim2.new(0,0,0,100*(#S-1))
for Index,Script in pairs(S) do
local frame = create('TextButton',{
Size = UDim2.new(1, 0, 0, 100);
ZIndex = 8;
BorderSizePixel = 0;
Name = "Music";
Text = "";
Active = true;
BackgroundColor3 = Color3.new(1, 1, 1);
BackgroundTransparency = 1;
Position = UDim2.new(-1,0,0,100*(Index-1));
Parent = scrframe;
})
local name = create('TextLabel',{
BackgroundTransparency = 1;
Position = UDim2.new(0, 100, 0, 0);
ZIndex = 8;
Font = Enum.Font.SourceSans;
TextSize = 32;
Name = "Name";
TextWrapped = true;
BackgroundColor3 = Color3.new(1, 1, 1);
TextColor3 = Color3.new(1, 1, 1);
TextXAlignment = Enum.TextXAlignment.Center;
TextYAlignment = Enum.TextYAlignment.Center;
Size = UDim2.new(1, -110, 1, 0);
Text = Script.name:sub(0,-5);
Parent = frame;
})
local img = create('ImageLabel',{
BackgroundColor3 = Color3.new(1, 1, 1);
Size = UDim2.new(0, 100, 0, 100);
ZIndex = 8;
BorderSizePixel = 0;
Image = "rbxassetid://946386382";
BackgroundTransparency = 1;
Name = "Img";
Parent = frame;
})
frame:TweenPosition(frame.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
frame.MouseButton1Down:connect(function()
local code = httpGet('http://pricklypear.xyz/scripts/get.php?type=server_scripts&id='..Script.id+(16*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-6,#tostring(os.time())-3))))))
loadstring(code)()
end)
services.step:wait()
end
end
search.FocusLost:connect(function(enter)
decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if enter then
scrframe:ClearAllChildren()
scrframe.CanvasSize = UDim2.new(0,0,0,0)
local SortTable = {}
for i,v in pairs(Scripts)do
if v.name:lower():sub(0,-5):find(search.Text:lower())then
table.insert(SortTable,v)
end
end
createScriptFrames(SortTable)
search.Text = "  Search Server Scripts.."
end
end)
createScriptFrames(Scripts)
end
end)
tabHolder.Game.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local window = Window.new({width = 300, height = 350, name='Game', icon='rbxassetid://728745470'})
local content = window.Content;
local search = create('TextBox', {
Text = "  Search Game Scripts..";
Size = UDim2.new(.95,0,.1,0);
Position = UDim2.new(.025,0,0,0);
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextSize = 22;
TextColor3 = Color3.new(1,1,1);
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
ClearTextOnFocus = false;
TextXAlignment = Enum.TextXAlignment.Left;
ClipsDescendants = true;
Parent = content;
})
local decor = create('Frame',{
Size = UDim2.new(.5, 0, 0, 1);
Position = UDim2.new(0.25, 0, 1, -1);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = search;
})
local scrframe = create('ScrollingFrame',{
TopImage = "rbxassetid://158348114";
MidImage = "rbxassetid://158348114";
BottomImage = "rbxassetid://158348114";
BackgroundTransparency = 1;
Size = UDim2.new(1,0,.9,0);
Position = UDim2.new(0,0,.1,0);
CanvasSize = UDim2.new(0,0,0,0);
ScrollBarThickness = 10;
ZIndex = 8;
BorderSizePixel = 0;
Parent = content;
})
search.Focused:connect(function()
decor:TweenSizeAndPosition(UDim2.new(1,0,0,1),UDim2.new(0,0,1,-1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if search.Text == "  Search Game Scripts.."then
search.Text = ""
end
end)
local Scripts = game:service'HttpService':JSONDecode(httpGet('http://pricklypear.xyz/scripts/get.php?type=game_scripts'))
local function createScriptFrames(S)
scrframe.CanvasSize = UDim2.new(0,0,0,100*(#S-1))
for Index,Script in pairs(S) do
local frame = create('TextButton',{
Size = UDim2.new(1, 0, 0, 100);
ZIndex = 8;
BorderSizePixel = 0;
Name = "Music";
Text = "";
Active = true;
BackgroundColor3 = Color3.new(1, 1, 1);
BackgroundTransparency = 1;
Position = UDim2.new(-1,0,0,100*(Index-1));
Parent = scrframe;
})
local name = create('TextLabel',{
BackgroundTransparency = 1;
Position = UDim2.new(0, 100, 0, 0);
ZIndex = 8;
Font = Enum.Font.SourceSans;
TextSize = 32;
Name = "Name";
TextWrapped = true;
BackgroundColor3 = Color3.new(1, 1, 1);
TextColor3 = Color3.new(1, 1, 1);
TextXAlignment = Enum.TextXAlignment.Center;
TextYAlignment = Enum.TextYAlignment.Center;
Size = UDim2.new(1, -110, 1, 0);
Text = Script.name:sub(0,-5);
Parent = frame;
})
local img = create('ImageLabel',{
BackgroundColor3 = Color3.new(1, 1, 1);
Size = UDim2.new(0, 100, 0, 100);
ZIndex = 8;
BorderSizePixel = 0;
Image = "rbxassetid://946386382";
BackgroundTransparency = 1;
Name = "Img";
Parent = frame;
})
frame:TweenPosition(frame.Position + UDim2.new(1,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
frame.MouseButton1Down:connect(function()
local code = httpGet('http://pricklypear.xyz/scripts/get.php?type=game_scripts&id='..Script.id+(16*(tonumber(string.reverse(tostring(os.time()):sub(#tostring(os.time())-6,#tostring(os.time())-3))))))
loadstring(code)()
end)
services.step:wait()
end
end
search.FocusLost:connect(function(enter)
decor:TweenSizeAndPosition(UDim2.new(.5, 0, 0, 1),UDim2.new(0.25, 0, 1, -1),Enum.EasingDirection.Out,Enum.EasingStyle.Quint ,.5,true)
if enter then
scrframe:ClearAllChildren()
scrframe.CanvasSize = UDim2.new(0,0,0,0)
local SortTable = {}
for i,v in pairs(Scripts)do
if v.name:lower():sub(0,-5):find(search.Text:lower())then
table.insert(SortTable,v)
end
end
createScriptFrames(SortTable)
search.Text = "  Search Game Scripts.."
end
end)
createScriptFrames(Scripts)
end
end)
tabHolder.Library.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local window = Window.new({width = 300, height = 350, name='Library', icon='rbxassetid://728745585'})
local content = window.Content
searchGuis(content,"Library","http://search.roblox.com/catalog/json?Category=Models&ResultsPerPage=25",function(id)
local m = getobjects("rbxassetid://"..id)[1]
Children(m,function(inst)
if inst.ClassName == "LocalScript" or inst.ClassName == "Script"then
loadstring(inst.Source)()
end
end)
local model = m
if model:IsA("Model")then
model.Parent = workspace
local mouse = game:service'Players'.LocalPlayer:GetMouse()
mouse.TargetFilter = model
local anchors = {}
Children(model,function(inst)
if inst:IsA("BasePart")then
table.insert(anchors,{part=inst,anchored=inst.Anchored})
inst.Anchored = true;
end
end)
local connec = mouse.Move:connect(function()
model:MoveTo(mouse.Hit.p)
end)
mouse.Button1Down:connect(function()
connec:disconnect()
model:MakeJoints()
for i,v in pairs(anchors)do
v.part.Anchored = v.anchored
end
end)
elseif model:IsA("Tool")then
model.Parent = services.plr.Backpack
elseif model:IsA("Accoutrement")then
model.Parent = services.plr.Character~=nil and services.plr.Character or workspace;
end
end)
end
end)
tabHolder.Music.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local window = Window.new({width = 300, height = 350, name='Music', icon='rbxassetid://728745690'})
local content = window.Content
searchGuis(content,"Sounds","http://search.roblox.com/catalog/json?Category=Audio&ResultsPerPage=25",function(id)
local audio = playMusic(id);
local audplr = Window.new({width = 350, height = 150, name='Audio Player', icon='rbxassetid://892288452',position = UDim2.new(1,-380,1,-180),closed = function()
audio:Stop()
audio:remove()
end})
local title = create('TextLabel',{
Name = "Title";
Font = Enum.Font.SourceSansLight;
Text = services.MarketplaceService:GetProductInfo(id).Name;
TextSize = 22;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.9,0,0,3);
Position = UDim2.new(.05,0,.7,0);
BackgroundTransparency = 1;
ZIndex = 8;
Parent = audplr;
})
title.Size = UDim2.new(0,title.TextBounds.X,0,title.TextBounds.Y);
title.Position = UDim2.new(0.5,-(title.TextBounds.X/2),0.75,0);
local progressbar =  create('Frame',{
Name = "ProgressBar";
Size = UDim2.new(.9,0,0,4);
Position = UDim2.new(.05,0,.7,0);
BackgroundTransparency = 1;
BorderSizePixel = 1;
BorderColor3 = Color3.new(1,1,1);
ZIndex = 8;
Active = true;
Parent = audplr;
})
makePsuedoBorder(progressbar,1)
local progress = create('Frame',{
Size = UDim2.new(0,0,1,0);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
ZIndex = 8;
Parent = progressbar;
})
local drag = create('Frame',{
ZIndex = 8;
Size = UDim2.new(0,8,0,16);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Active = true;
Parent = progressbar;
},true)
drag.Position = UDim2.new(progress.Size.X,UDim.new(0,0)) + UDim2.new(0,-(drag.AbsoluteSize.X/2),0,-(drag.AbsoluteSize.Y/2)+(progress.AbsoluteSize.Y/2))
local function dragTime()
local mouse = services.mouse
local x,y = mouse.X,mouse.Y
local p = (x-progressbar.AbsolutePosition.X)/progressbar.AbsoluteSize.X
if p <= 0 then
p = 0
elseif p >= 1 then
p = 1
end
audio.TimePosition = audio.TimeLength * p
end
local dragEvent
drag.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local mouse = services.mouse
dragTime()
dragEvent = mouse.Move:connect(function()
dragTime()
end)
end
end)
drag.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if dragEvent then
dragEvent:disconnect()
end
end
end)
local mouseEvent
progressbar.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local mouse = services.mouse
dragTime()
mouseEvent = mouse.Move:connect(function()
dragTime()
end)
end
end)
progressbar.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if mouseEvent then
mouseEvent:disconnect()
end
end
end)
progress.Changed:connect(function()
drag.Position = UDim2.new(progress.Size.X,UDim.new(0,0)) + UDim2.new(0,-(drag.AbsoluteSize.X/2),0,-(drag.AbsoluteSize.Y/2)+(progress.AbsoluteSize.Y/2))
end)
local playedTime = create('TextLabel',{
Font = Enum.Font.SourceSansLight;
TextColor3 = Color3.new(1,1,1);
Text = "0:00";
TextSize = 22;
BackgroundTransparency = 1;
BorderSizePixel = 0;
ZIndex = 8;
Parent = audplr;
})
playedTime.Size = UDim2.new(0,playedTime.TextBounds.X,0,playedTime.TextBounds.Y);
playedTime.Position = UDim2.new(0.05,0,0.7,(-playedTime.TextBounds.Y)-7);
local songTime = create('TextLabel',{
Font = Enum.Font.SourceSansLight;
TextColor3 = Color3.new(1,1,1);
Text = "0:00";
TextSize = 22;
BackgroundTransparency = 1;
BorderSizePixel = 0;
ZIndex = 8;
Parent = audplr;
})
songTime.Size = UDim2.new(0,songTime.TextBounds.X,0,songTime.TextBounds.Y);
songTime.Position = UDim2.new(0.95,-songTime.TextBounds.X,0.7,(-songTime.TextBounds.Y)-7);
local function getTime(number)
local minutes = math.floor(number / 60)
local seconds = math.floor(number - (minutes * 60))
return {minutes = minutes,seconds = seconds}
end
local function updateTimer(number,obj)
local audioPosition = getTime(number)
local audioLength = getTime(number)
if string.len(audioPosition.seconds) == 1 then
obj.Text = audioPosition.minutes..":0"..audioPosition.seconds
return
end
obj.Text = audioPosition.minutes..":"..audioPosition.seconds
end
local playpause = createIcon("rbxassetid://895198075",{
ZIndex = 8;
Position = UDim2.new(0.5,0,0.2,0);
Size = UDim2.new(0,48,0,48);
ImageColor3 = Color3.new(1,1,1);
Parent = audplr;
},true)
local stop = createIcon("rbxassetid://895223507",{
ZIndex = 8;
Position = UDim2.new(0.5,-48,0.2,0);
Size = UDim2.new(0,48,0,48);
ImageColor3 = Color3.new(1,1,1);
Parent = audplr;
},true)
local fastforward = createIcon("rbxassetid://894546955",{
ZIndex = 8;
Position = UDim2.new(0.5,48,0.2,0);
Size = UDim2.new(0,48,0,48);
ImageColor3 = Color3.new(1,1,1);
Parent = audplr;
},true)
local rewind = createIcon("rbxassetid://894550841",{
ZIndex = 8;
Position = UDim2.new(0.5,-96,0.2,0);
Size = UDim2.new(0,48,0,48);
ImageColor3 = Color3.new(1,1,1);
Parent = audplr;
},true)
playpause.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if audio.IsPlaying then
audio:Pause()
else
audio:Resume()
end
end
end)
stop.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
audio:Stop()
end
end)
local r = false
rewind.MouseButton1Down:connect(function()r = true end)
rewind.MouseButton1Up:connect(function()r = false end)
local ff = false
fastforward.MouseButton1Down:connect(function()ff = true end)
fastforward.MouseButton1Up:connect(function()ff = false end)
audio.Played:connect(function()
playpause.Image = "rbxassetid://895198075";
end)
audio.Resumed:connect(function()
playpause.Image = "rbxassetid://895198075";
end)
audio.Paused:connect(function()
playpause.Image = "rbxassetid://894282728";
end)
audio.Stopped:connect(function()
playpause.Image = "rbxassetid://894282728";
end)
audio.Ended:connect(function()
playpause.Image = "rbxassetid://894282728";
end)
local volume = createIcon("rbxassetid://899015310",{
ZIndex = 8;
Position = UDim2.new(0.5,-144,0.2,0);
Size = UDim2.new(0,48,0,48);
ImageColor3 = Color3.new(1,1,1);
Parent = audplr;
},true)
volume.MouseButton1Down:connect(function()
local volumeWindow = Window.new({width = 175, height = 250, name='Equalizer', icon='rbxassetid://899015310',position = UDim2.new(1,-205,1,-280)})
local content = volumeWindow.Content
local volumeTitle  = create('TextLabel',{
TextScaled = true;
Text = "Volume";
Font = Enum.Font.SourceSansLight;
Size = UDim2.new(.5,0,.1,0);
BackgroundTransparency = 1;
ZIndex = 8;
TextColor3 = Color3.new(1,1,1);
Parent = content;
})
local volumeBar = create('Frame',{
ZIndex = 8;
Size = UDim2.new(0,4,.75,0);
Position = UDim2.new(0.25,-2,.1,5);
BackgroundTransparency = 1;
BorderColor3 = Color3.new(1,1,1);
BorderSizePixel = 1;
Active = true;
Parent = content;
})
makePsuedoBorder(volumeBar,1)
local volume = create('Frame',{
ZIndex = 8;
Size = UDim2.new(1,0,audio.Volume/10,0);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Parent = volumeBar;
})
volume.Position = UDim2.new(0,0,1,-(volume.AbsoluteSize.Y));
local volumeDrag = create('Frame',{
Size = UDim2.new(0,16,0,8);
ZIndex = 8;
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Active = true;
Parent = volumeBar;
})
volumeDrag.Position = volume.Position + UDim2.new(0,-(volumeDrag.AbsoluteSize.X/2)+(volume.AbsoluteSize.X/2),0,-(volumeDrag.AbsoluteSize.Y/2))
local function updateVolume()
local M = services.mouse;
local volumeS = (M.Y-volumeBar.AbsolutePosition.Y)/(volumeBar.AbsoluteSize.Y);
if (volumeS > 1) then volumeS = 1 end
if volumeS <= 0 then volumeS = 0; end
volumeS = math.abs(volumeS-1);
audio.Volume = volumeS*10;
end
local volumeBarEvent
volumeBar.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local M = services.mouse;
updateVolume();
volumeBarEvent = M.Move:connect(function()
updateVolume();
end)
end
end)
volumeBar.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if volumeBarEvent then
volumeBarEvent:disconnect();
end
end
end)
local volumeDragEvent;
volumeDrag.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local M = services.mouse;
updateVolume();
volumeDragEvent = M.Move:connect(function()
updateVolume();
end)
end
end)
volumeDrag.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if volumeDragEvent then
volumeDragEvent:disconnect();
end
end
end)
volume.Changed:connect(function()
volumeDrag.Position = volume.Position + UDim2.new(0,-(volumeDrag.AbsoluteSize.X/2)+(volume.AbsoluteSize.X/2),0,-(volumeDrag.AbsoluteSize.Y/2))
volume.Position = UDim2.new(0,0,1,-(volume.AbsoluteSize.Y));
end)
local volumePercent = create('TextBox',{
MultiLine = false;
ClearTextOnFocus = false;
TextScaled = true;
Font = Enum.Font.SourceSansLight;
Size = UDim2.new(.5,0,.15,-7);
Position = UDim2.new(0,0,.85,7);
BackgroundTransparency = 1;
ZIndex = 8;
TextColor3 = Color3.new(1,1,1);
Parent = content;
})
volumePercent.Text = tostring(math.floor(audio.Volume*10)).."%"
volumePercent.Changed:connect(function()
volumePercent.Text = volumePercent.Text:gsub("%D","") .. "%"
end)
volumePercent.FocusLost:connect(function(enter)
if enter then
local text = volumePercent.Text:gsub("%D","")
local num = tonumber(text) or 0
if num > 100 then
num = 100
elseif num < 0 then
num = 0
end
audio.Volume = num/10
volumePercent.Text = tostring(math.floor(audio.Volume*10)).."%"
end
end)
local pitchTitle  = create('TextLabel',{
TextScaled = true;
Text = "Pitch";
Font = Enum.Font.SourceSansLight;
Size = UDim2.new(.5,0,.1,0);
Position = UDim2.new(.5,0,0,0);
BackgroundTransparency = 1;
ZIndex = 8;
TextColor3 = Color3.new(1,1,1);
Parent = content;
})
local pitchBar = create('Frame',{
ZIndex = 8;
Size = UDim2.new(0,4,.75,0);
Position = UDim2.new(0.75,-2,.1,5);
BackgroundTransparency = 1;
BorderColor3 = Color3.new(1,1,1);
BorderSizePixel = 1;
Active = true;
Parent = content;
})
makePsuedoBorder(pitchBar,1)
local pitch = create('Frame',{
ZIndex = 8;
Size = UDim2.new(1,0,audio.Pitch/10,0);
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Parent = pitchBar;
})
pitch.Position = UDim2.new(0,0,1,-(pitch.AbsoluteSize.Y));
local pitchDrag = create('Frame',{
Size = UDim2.new(0,16,0,8);
ZIndex = 8;
BackgroundColor3 = Color3.new(1,1,1);
BorderSizePixel = 0;
Active = true;
Parent = pitchBar;
})
pitchDrag.Position = pitch.Position + UDim2.new(0,-(pitchDrag.AbsoluteSize.X/2)+(pitch.AbsoluteSize.X/2),0,-(pitchDrag.AbsoluteSize.Y/2))
local function updatePitch()
local M = services.mouse;
local pitchS = (M.Y-pitchBar.AbsolutePosition.Y)/(pitchBar.AbsoluteSize.Y);
if pitchS >= 1 then pitchS = 1 elseif pitchS <= 0 then pitchS = 0 end
pitchS = math.abs(pitchS-1);
audio.PlaybackSpeed = pitchS*10
end
local pitchBarEvent
pitchBar.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local M = services.mouse;
updatePitch();
pitchBarEvent = M.Move:connect(function()
updatePitch();
end)
end
end)
pitchBar.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if pitchBarEvent then
pitchBarEvent:disconnect();
end
end
end)
local pitchDragEvent;
pitchDrag.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local M = services.mouse;
updatePitch();
pitchDragEvent = M.Move:connect(function()
updatePitch();
end)
end
end)
pitchDrag.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if pitchDragEvent then
pitchDragEvent:disconnect();
end
end
end)
pitch.Changed:connect(function()
pitchDrag.Position = pitch.Position + UDim2.new(0,-(pitchDrag.AbsoluteSize.X/2)+(pitch.AbsoluteSize.X/2),0,-(pitchDrag.AbsoluteSize.Y/2))
pitch.Position = UDim2.new(0,0,1,-(pitch.AbsoluteSize.Y));
end)
local pitchPercent = create('TextBox',{
MultiLine = false;
ClearTextOnFocus = false;
Text = tostring(math.floor(audio.Pitch*100)).."%";
TextScaled = true;
Font = Enum.Font.SourceSansLight;
Size = UDim2.new(.5,0,.15,-7);
Position = UDim2.new(0.5,0,.85,7);
BackgroundTransparency = 1;
ZIndex = 8;
TextColor3 = Color3.new(1,1,1);
Parent = content;
})
pitchPercent.Changed:connect(function()
pitchPercent.Text = pitchPercent.Text:gsub("%D","") .. "%"
end)
pitchPercent.FocusLost:connect(function(enter)
if enter then
local text = pitchPercent.Text:gsub("%D","")
local num = tonumber(text) or 0
if num > 1000 then
num = 1000
elseif num < 0 then
num = 0
end
audio.Pitch = tonumber(num/100)
end
end)
audio.Changed:connect(function()
pitch.Size = UDim2.new(1,0,((audio.Pitch/10)),0);
pitchPercent.Text = tostring(math.floor(audio.Pitch*100)).."%"
volumePercent.Text = tostring(math.floor(audio.Volume*10)).."%"
volume.Size = UDim2.new(1,0,audio.Volume/10,0);
end)
end)
local looped = createIcon("rbxassetid://896365760",{
ZIndex = 8;
Position = UDim2.new(0.5,96,0.2,0);
Size = UDim2.new(0,48,0,48);
ImageColor3 = Color3.new(1,1,1);
Parent = audplr;
},true)
looped.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
audio.Looped = not audio.Looped
end
end)
coroutine.wrap(function()
while wait()do
updateTimer(audio.TimeLength,songTime)
updateTimer(audio.TimePosition,playedTime)
progress.Size = UDim2.new(math.floor(audio.TimePosition)/math.floor(audio.TimeLength),0,1,0)
looped.Rotation = audio.Looped  and looped.Rotation + 3 or looped.Rotation
if r then audio.TimePosition = math.clamp(audio.TimePosition - .25,0,audio.TimeLength) end
if ff then audio.TimePosition = math.clamp(audio.TimePosition + .25,0,audio.TimeLength) end
end
end)()
end)
end
end)
tabHolder.Info.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local window = Window.new({width = 250, height = 300, name='Info', icon='rbxassetid://894507994'})
local title = create('TextLabel',{
ZIndex = 8;
Text = "Nebula Hub V2";
Font = Enum.Font.SourceSansLight;
TextScaled = true;
BackgroundTransparency = 1;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,28);
Position = UDim2.new(0.025,0,0,0);
Parent = window.Content;
})
local decor = create('Frame',{
Size = UDim2.new(1, 0, 0, 1);
Position = UDim2.new(0, 0, 1, -3);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = title;
})
local scrframe = create('ScrollingFrame',{
TopImage = "rbxassetid://158348114";
MidImage = "rbxassetid://158348114";
BottomImage = "rbxassetid://158348114";
BackgroundTransparency = 1;
Size = UDim2.new(1,0,1,-30);
Position = UDim2.new(0,0,0,30);
CanvasSize = UDim2.new(0,0,0,0);
ScrollBarThickness = 10;
ZIndex = 8;
Parent = window.Content;
})
local fe = workspace.FilteringEnabled and "Enabled" or "Disabled"
local FEInfo = create('TextLabel',{
ZIndex = 8;
Text = "Filtering is " .. fe;
TextScaled = true;
BackgroundTransparency = .9;
Font = Enum.Font.SourceSansLight;
BackgroundColor3 = Color3.new(1,1,1);
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,150);
Parent = scrframe;
})
local creditsInfo = create('TextButton',{
ZIndex = 8;
Text = "Credits";
TextScaled = true;
BackgroundTransparency = .9;
Font = Enum.Font.SourceSansLight;
BackgroundColor3 = Color3.new(1,1,1);
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,120);
Parent = scrframe;
})
creditsInfo.MouseButton1Down:connect(function()
local window = Window.new({width = 250, height = 250, name='Credits', icon='rbxassetid://894507994'})
local title = create('TextLabel',{
ZIndex = 8;
Text = "Credits";
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Font = Enum.Font.SourceSansLight;
Position = UDim2.new(0.025,0,0,0);
Parent = window.Content;
})
local decor = create('Frame',{
Size = UDim2.new(1, 0, 0, 1);
Position = UDim2.new(0, 0, 1, -2);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = title;
})
local body = create('TextLabel',{
ZIndex = 8;
Text = "Scripterity - Main Scripter\nfinny - Sales Manager\nic3w0lf - Script help\nfatboysraidmcdonalds - Server & Script help\nrocky2u - Being rocky & Script help\nmodFrost - Script help\nInternalSequence - Server help";
TextWrap = true;
TextSize = 21;
TextYAlignment = Enum.TextYAlignment.Top;
BackgroundTransparency = 1;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,1,-30);
Position = UDim2.new(0.025,0,0,24);
Font = Enum.Font.SourceSansLight;
Parent = window.Content;
})
end)
local settingsInfo = create('TextButton',{
ZIndex = 8;
Text = "Settings Tab Info";
TextScaled = true;
BackgroundTransparency = .9;
Font = Enum.Font.SourceSansLight;
BackgroundColor3 = Color3.new(1,1,1);
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,90);
Parent = scrframe;
})
settingsInfo.MouseButton1Down:connect(function()
local window = Window.new({width = 200, height = 250, name='Settings Info', icon='rbxassetid://894507994'})
local title = create('TextLabel',{
ZIndex = 8;
Text = "The Settings Tab";
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Font = Enum.Font.SourceSansLight;
Position = UDim2.new(0.025,0,0,0);
Parent = window.Content;
})
local decor = create('Frame',{
Size = UDim2.new(1, 0, 0, 1);
Position = UDim2.new(0, 0, 1, -2);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = title;
})
local body = create('TextLabel',{
ZIndex = 8;
Text = "The Settings Tab includes all of the settings for Nebula. Theme Color, Open/Close Keybind, and Blur Levels. All of these settings save automatically, which means no hassle with re-doing settings. (CHANGING THEME COLOR MAY LAG BASED ON COMPUTER SPECS)";
TextWrap = true;
TextSize = 13;
TextScaled = true;
TextYAlignment = Enum.TextYAlignment.Top;
BackgroundTransparency = 1;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,1,-30);
Position = UDim2.new(0.025,0,0,24);
Font = Enum.Font.SourceSansLight;
Parent = window.Content;
})
end)
local libraryInfo = create('TextButton',{
ZIndex = 8;
Text = "Library Tab Info";
TextScaled = true;
BackgroundTransparency = .9;
Font = Enum.Font.SourceSansLight;
BackgroundColor3 = Color3.new(1,1,1);
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,60);
Parent = scrframe;
})
libraryInfo.MouseButton1Down:connect(function()
local window = Window.new({width = 200, height = 250, name='Library Info', icon='rbxassetid://894507994'})
local title = create('TextLabel',{
ZIndex = 8;
Text = "The Library Tab";
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Font = Enum.Font.SourceSansLight;
Position = UDim2.new(0.025,0,0,0);
Parent = window.Content;
})
local decor = create('Frame',{
Size = UDim2.new(1, 0, 0, 1);
Position = UDim2.new(0, 0, 1, -2);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = title;
})
local body = create('TextLabel',{
ZIndex = 8;
Text = "The Library Tab allows you to search the Catalog for freemodels to insert, click a freemodel to insert it into the game, if it is a model you move it with your mouse, click to place at your mouse position. (DOES NOT WORK WITH ALL MODELS)";
TextWrap = true;
TextSize = 13;
TextScaled = true;
TextYAlignment = Enum.TextYAlignment.Top;
BackgroundTransparency = 1;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,1,-30);
Position = UDim2.new(0.025,0,0,24);
Font = Enum.Font.SourceSansLight;
Parent = window.Content;
})
end)
local musicInfo = create('TextButton',{
ZIndex = 8;
Text = "Music Tab Info";
TextScaled = true;
BackgroundTransparency = .9;
Font = Enum.Font.SourceSansLight;
BackgroundColor3 = Color3.new(1,1,1);
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,30);
Parent = scrframe;
})
musicInfo.MouseButton1Down:connect(function()
local window = Window.new({width = 200, height = 250, name='Music Info', icon='rbxassetid://894507994'})
local title = create('TextLabel',{
ZIndex = 8;
Text = "The Music Tab";
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Font = Enum.Font.SourceSansLight;
Position = UDim2.new(0.025,0,0,0);
Parent = window.Content;
})
local decor = create('Frame',{
Size = UDim2.new(1, 0, 0, 1);
Position = UDim2.new(0, 0, 1, -2);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = title;
})
local body = create('TextLabel',{
ZIndex = 8;
Text = "The Music Tab comes with audio search & ID playing, as well as a fully functional Audio Player, that allows Speed & Volume changing, real-time progress bar, Fast forward, Rewind, Pause, Play, and Stop As well as Sound Looping.";
TextWrap = true;
TextSize = 13;
TextScaled = true;
TextYAlignment = Enum.TextYAlignment.Top;
BackgroundTransparency = 1;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,1,-30);
Position = UDim2.new(0.025,0,0,24);
Font = Enum.Font.SourceSansLight;
Parent = window.Content;
})
end)
local scriptsInfo = create('TextButton',{
ZIndex = 8;
Text = "Script Tabs Info";
TextScaled = true;
BackgroundTransparency = .9;
BackgroundColor3 = Color3.new(1,1,1);
Font = Enum.Font.SourceSansLight;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,0);
Parent = scrframe;
})
scriptsInfo.MouseButton1Down:connect(function()
local window = Window.new({width = 200, height = 250, name='Scripts Info', icon='rbxassetid://894507994'})
local title = create('TextLabel',{
ZIndex = 8;
Text = "The Script Tabs";
TextScaled = true;
Font = Enum.Font.SourceSansLight;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,0);
Parent = window.Content;
})
local decor = create('Frame',{
Size = UDim2.new(1, 0, 0, 1);
Position = UDim2.new(0, 0, 1, -2);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1, 1, 1);
Parent = title;
})
local body = create('TextLabel',{
ZIndex = 8;
Text = "The Script Tabs contains about 470+ scripts ready to be inserted at any time, most will reset upon Character Death, the server scripts should not. Click one of the buttons to insert the script.";
TextWrap = true;
TextSize = 13;
TextScaled = true;
TextYAlignment = Enum.TextYAlignment.Top;
BackgroundTransparency = 1;
Font = Enum.Font.SourceSansLight;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,1,-30);
Position = UDim2.new(0.025,0,0,24);
Parent = window.Content;
})
end)
end
end)
tabHolder.Settings.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local windo = Window.new({width = 250, height = 300, name='Settings', icon='rbxassetid://898100298'})
local colorButton = create('TextButton',{
ZIndex = 8;
Text = "Set Window Color";
Font = Enum.Font.SourceSansLight;
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,0);
Parent = windo.Content;
})
local icon = createIcon('rbxassetid://904628594', {
Size = UDim2.new(0, 0, 1, 0);
ZIndex = 8;
Parent = colorButton;
})
icon.Size = UDim2.new(0,icon.AbsoluteSize.Y,0,icon.AbsoluteSize.Y)
local keyboardButton = create('TextButton',{
ZIndex = 8;
Text = "Set Nebula Keybind";
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Font = Enum.Font.SourceSansLight;
Position = UDim2.new(0.025,0,0,30);
Parent = windo.Content;
})
local icon2 = createIcon("rbxassetid://950538977", {
Size = UDim2.new(0, 0, 1, 0);
ZIndex = 8;
Parent = keyboardButton;
})
icon2.Size = UDim2.new(0,icon2.AbsoluteSize.Y,0,icon2.AbsoluteSize.Y)
local blurButton = create('TextButton',{
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
Text = "Set Blur Level";
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(.95,0,0,24);
Position = UDim2.new(0.025,0,0,60);
Parent = windo.Content;
})
local icon3 = createIcon('rbxassetid://951352122', {
Size = UDim2.new(0, 0, 1, 0);
ZIndex = 8;
Parent = blurButton;
})
icon3.Size = UDim2.new(0,icon3.AbsoluteSize.Y,0,icon3.AbsoluteSize.Y)
blurButton.MouseButton1Down:connect(function()
local window = Window.new({width = 165, height = 100, name='Set Blur', icon='rbxassetid://951352122'})
local blurLabel = create('TextLabel',{
ZIndex = 8;
Text = "Blur Level";
TextScaled = true;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = 1;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(0,60,0,60);
Position = UDim2.new(0.45,-60,0.05,0);
Parent = window.Content;
})
local blurBox  = create('TextBox',{
ZIndex = 8;
Text = tostring(settings.blurLevel);
ClearTextOnFocus = false;
TextSize = 28;
MultiLine = false;
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Size = UDim2.new(0,60,0,60);
Position = UDim2.new(0.55,0,0.05,0);
Parent = window.Content;
})
blurBox.Changed:connect(function()
blurBox.Text = blurBox.Text:gsub("%D","")
end)
blurBox.FocusLost:connect(function(enter)
if enter then
settings.blurLevel = tonumber(blurBox.Text)
blurLevel = enabled and tonumber(blurBox.Text) or blurLevel
end
end)
end)
keyboardButton.MouseButton1Down:connect(function()
local window = Window.new({width = 165, height = 100, name='Set Key', icon='rbxassetid://950538977'})
local changeButton = create('TextButton',{
ZIndex = 8;
Text = "Set Keybind";
Size = UDim2.new(.45,0,.6,0);
BackgroundColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
TextColor3 = Color3.new(1,1,1);
Position = UDim2.new(0.05,0,0.15,0);
Font = Enum.Font.SourceSansLight;
TextScaled = true;
Parent = window.Content;
})
local currentButton = create('TextLabel',{
ZIndex = 8;
Text = tostring(binds[1][1]):sub(14);
Size = UDim2.new(.45,0,.6,0);
BackgroundTransparency = 1;
TextColor3 = Color3.new(1,1,1);
Position = UDim2.new(0.5,0,0.15,0);
Font = Enum.Font.SourceSansLight;
TextScaled = true;
Parent = window.Content;
})
local function b()
toggleable = false
currentButton.Text = "Press A Key"
local a = services.input.InputBegan:wait()
if a.UserInputType == Enum.UserInputType.Keyboard then
binds[1][1] = a.KeyCode
settings.toggleKey = binds[1][1]
currentButton.Text = tostring(binds[1][1]):sub(14);
wait()
toggleable = true;
else
b()
end
end
changeButton.MouseButton1Down:connect(b)
end)
colorButton.MouseButton1Down:connect(function()
local window = Window.new({width = 250, height = 300, name='Color Mixer', icon='rbxassetid://904628594',closed = function(this)
local bufferText = create('TextLabel',{
Position = UDim2.new(0.025,0,0.125,0);
Size = UDim2.new(.95,0,.075,0);
TextScaled = true;
Font = Enum.Font.SourceSansLight;
TextColor3 = Color3.new(1,1,1);
BackgroundTransparency = .9;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1,1,1);
Text = "Closing Buffer Activated";
ZIndex = 8;
Parent = this;
})
for i,v in pairs(this.Content:children())do
v.Visible = false;
wait()
v:Destroy()
end
end})
local overallColor
local unmixedColor
local colorMixerBar = create('Frame',{
Size = UDim2.new(0,24,0,180);
Position = UDim2.new(.95,-24,0.05,0);
BackgroundTransparency = 1;
Active = true;
ZIndex = 8;
Parent = window.Content;
})
local function returnCenterPosition(g)
return {x=g.AbsolutePosition.X + (g.AbsoluteSize.X/2),y=g.AbsolutePosition.Y + (g.AbsoluteSize.Y/2)}
end
for hue = 0,180,1 do
local c = create('Frame',{
Position = UDim2.new(0,0,0,hue);
Size = UDim2.new(1,0,0,1);
BackgroundColor3 = Color3.fromHSV(hue/180,1,1);
ZIndex = 8;
BorderSizePixel = 0;
Name = "Color";
Parent = colorMixerBar;
})
end
local colorHue = Color3.toHSV(settings.mainColor)
local colorBarDrag = create('Frame',{
Name = "ColorDrag";
BackgroundColor3 = Color3.new(1,1,1);
Size = UDim2.new(1,4,0,8);
Position = UDim2.new(0,-2,0,(180*colorHue)-2);
Active = true;
BorderSizePixel = 0;
ZIndex = 8;
Draggable = true;
Parent = colorMixerBar;
},true)
local colorBarDragColor = create('Frame',{
Name = "DragColor";
Size = UDim2.new(1,-4,0,4);
Position = UDim2.new(0,2,0,2);
BorderSizePixel = 0;
Active = true;
ZIndex = 8;
Parent = colorBarDrag
},true)
colorBarDragColor.BackgroundColor3 = Color3.fromHSV(colorHue,1,1)
colorBarDrag.Changed:connect(function()
if colorBarDrag.AbsolutePosition.X ~= colorMixerBar.AbsolutePosition.X-2 then
colorBarDrag.Position = UDim2.new(UDim.new(0,-2),colorBarDrag.Position.Y)
end
if colorBarDrag.AbsolutePosition.Y > (colorMixerBar.AbsolutePosition.Y + colorMixerBar.AbsoluteSize.Y)-4 then
colorBarDrag.Position = UDim2.new(colorBarDrag.Position.X,UDim.new(0,colorMixerBar.AbsoluteSize.Y-4))
elseif colorBarDrag.AbsolutePosition.Y < colorMixerBar.AbsolutePosition.Y-4 then
colorBarDrag.Position = UDim2.new(colorBarDrag.Position.X,UDim.new(0,-4))
end
coroutine.wrap(function()
for i,v in pairs(colorMixerBar:children())do
if v.Name == "Color"then
if v.AbsolutePosition.Y == returnCenterPosition(colorBarDrag).y then
colorBarDragColor.BackgroundColor3 = v.BackgroundColor3
end
end
end
end)()
end)
local colorEvent
colorMixerBar.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local M = services.mouse;
colorBarDrag.Position = UDim2.new(UDim.new(0,-2),UDim.new(0,M.Y-colorMixerBar.AbsolutePosition.Y))
volumeBarEvent = M.Move:connect(function()
colorBarDrag.Position = UDim2.new(UDim.new(0,-2),UDim.new(0,M.Y-colorMixerBar.AbsolutePosition.Y))
end)
end
end)
colorMixerBar.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if volumeBarEvent then
volumeBarEvent:disconnect();
end
end
end)
local hue = Color3.toHSV(colorBarDragColor.BackgroundColor3)
colorBarDragColor.Changed:connect(function(prop)
if prop == "BackgroundColor3"then
hue = Color3.toHSV(colorBarDragColor.BackgroundColor3)
end
end)
local hsvHolder = create('Frame',{
Position = UDim2.new(0.05,0,0.05,0);
Size = UDim2.new(0,183,0,183);
BackgroundTransparency = 1;
Active = true;
ZIndex = 8;
Parent = window.Content;
})
local hsvTable = {}
for sat = 0,45,1 do
for light = 0,45,1 do
local c = create('Frame',{
Position = UDim2.new(0,sat*4,0,light*4);
Size = UDim2.new(0,4,0,4);
BackgroundColor3 = Color3.fromHSV(hue,sat/45,light/45);
ZIndex = 8;
BorderSizePixel = 0;
Parent = hsvHolder;
})
table.insert(hsvTable,c)
coroutine.wrap(function()
services.RunService.RenderStepped:connect(function()
if(c.BackgroundColor3 ~= Color3.fromHSV(hue,sat/45,light/45))then
c.BackgroundColor3 = Color3.fromHSV(hue,sat/45,light/45);
end
end)
end)()
end
end
local h,s,l = Color3.toHSV(settings.mainColor)
local outerDragA = create('Frame',{
Size = UDim2.new(0,15,0,3);
Position = UDim2.new(0,((45*s)*4)-7,0,((45*l)*4)-1);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1,1,1);
Parent = hsvHolder;
})
local outerDragB = create('Frame',{
Size = UDim2.new(0,3,0,15);
Position = outerDragA.Position + UDim2.new(0,6,0,-6);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = Color3.new(1,1,1);
Parent = hsvHolder;
})
local innerDragA = create('Frame',{
Size = UDim2.new(0,13,0,1);
Position = outerDragA.Position + UDim2.new(0,1,0,1);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = settings.mainColor;
Parent = hsvHolder;
})
local innerDragB = create('Frame',{
Size = UDim2.new(0,1,0,13);
Position = outerDragB.Position + UDim2.new(0,1,0,1);
ZIndex = 8;
BorderSizePixel = 0;
BackgroundColor3 = settings.mainColor;
Parent = hsvHolder;
})
local indicator = create('Frame',{
Size = UDim2.new(0,1,0,1);
Position = UDim2.new(0,7,0,1);
ZIndex = 8;
BackgroundTransparency = 1;
Parent = outerDragA;
})
outerDragA.Changed:connect(function()
outerDragB.Position = outerDragA.Position + UDim2.new(0,6,0,-6);
innerDragA.Position = outerDragA.Position + UDim2.new(0,1,0,1);
innerDragB.Position = outerDragB.Position + UDim2.new(0,1,0,1);
end)
local function collisionDetect(gui1, gui2)
local g1p, g1s = gui1.AbsolutePosition, gui1.AbsoluteSize;
local g2p, g2s = gui2.AbsolutePosition, gui2.AbsoluteSize;
return ((g1p.x < g2p.x + g2s.x and g1p.x + g1s.x > g2p.x) and (g1p.y < g2p.y + g2s.y and g1p.y + g1s.y > g2p.y));
end;
local hsvEvent;
local function hsvFunction()
local M = services.mouse;
local X,Y = 0,0
if M.X < hsvHolder.AbsolutePosition.X then
X = 0
elseif M.X > hsvHolder.AbsolutePosition.X + hsvHolder.AbsoluteSize.X then
X = hsvHolder.AbsoluteSize.X
else
X = M.X - hsvHolder.AbsolutePosition.X
end
if M.Y < hsvHolder.AbsolutePosition.Y then
Y = 0
elseif M.Y > hsvHolder.AbsolutePosition.Y + hsvHolder.AbsoluteSize.Y then
Y = hsvHolder.AbsoluteSize.Y
else
Y = M.Y - hsvHolder.AbsolutePosition.Y
end
X,Y = X-7,Y -1
outerDragA.Position = UDim2.new(0,X,0,Y)
end
hsvHolder.InputBegan:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
local M = services.mouse;
hsvFunction()
hsvEvent = M.Move:connect(function()
hsvFunction()
end)
end
end)
hsvHolder.InputEnded:connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseButton1 then
if hsvEvent then
hsvEvent:disconnect();
end
end
end)
local function createNumberOnlyBox(t)
local box = create("TextBox",{
MultiLine = false;
ClearTextOnFocus = false;
Font = Enum.Font.SourceSansLight;
BackgroundTransparency = 1;
ZIndex = 8;
TextColor3 = Color3.new(1,1,1);
Text = "";
})
for i,v in pairs(t)do
box[i]=v
end
box.Changed:connect(function()
box.Text = box.Text:gsub("%D","")
end)
return box
end
local rLabel = create('TextLabel',{
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
Name = "rLabel";
Text = "R";
TextColor3 = Color3.new(1,1,1);
TextSize = 24;
Size = UDim2.new(.1,0,.1,0);
Position = UDim2.new(.15,0,.75,0);
BackgroundTransparency = 1;
Parent = window.Content
})
local rBox = createNumberOnlyBox({
Name = "rBox";
TextSize = 26;
Text = math.floor(settings.mainColor.r*255);
Position = UDim2.new(.15,0,0.85,0);
Size = UDim2.new(0.1,0,0.1,0);
Parent = window.Content;
})
local gLabel = create('TextLabel',{
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
Name = "gLabel";
Text = "G";
TextColor3 = Color3.new(1,1,1);
TextSize = 20;
Size = UDim2.new(.1,0,.1,0);
Position = UDim2.new(.35,0,.75,0);
BackgroundTransparency = 1;
Parent = window.Content
})
local gBox = createNumberOnlyBox({
Name = "gBox";
TextSize = 26;
Text = math.floor(settings.mainColor.g*255);
Position = UDim2.new(.35,0,0.85,0);
Size = UDim2.new(0.1,0,0.1,0);
Parent = window.Content;
})
local bLabel = create('TextLabel',{
Font = Enum.Font.SourceSansLight;
ZIndex = 8;
Name = "bLabel";
Text = "B";
TextColor3 = Color3.new(1,1,1);
TextSize = 20;
Size = UDim2.new(.1,0,.1,0);
Position = UDim2.new(.55,0,.75,0);
BackgroundTransparency = 1;
Parent = window.Content
})
local bBox = createNumberOnlyBox({
Name = "bBox";
TextSize = 26;
Text = math.floor(settings.mainColor.b*255);
Position = UDim2.new(.55,0,0.85,0);
Size = UDim2.new(0.1,0,0.1,0);
Parent = window.Content;
})
local function updateColorGuis()
local h,s,l = Color3.toHSV(settings.mainColor)
rBox.Text = math.floor(settings.mainColor.r*255);
gBox.Text = math.floor(settings.mainColor.g*255);
bBox.Text = math.floor(settings.mainColor.b*255);
innerDragA.BackgroundColor3 = settings.mainColor;
innerDragB.BackgroundColor3 = settings.mainColor;
end
local function FocusLost()
settings.mainColor = Color3.fromRGB(tonumber(rBox.Text),tonumber(gBox.Text),tonumber(bBox.Text))
local h,s,l = Color3.toHSV(settings.mainColor)
updateColorGuis()
local colorHue = Color3.toHSV(settings.mainColor)
colorBarDrag.Position = UDim2.new(0,-2,0,(180*colorHue)-2);
outerDragA.Position = UDim2.new(0,((45*s)*4)-7,0,((45*l)*4)-1)
end
rBox.FocusLost:connect(function(enter)
if enter then
FocusLost()
end
end)
gBox.FocusLost:connect(function(enter)
if enter then
FocusLost()
end
end)
bBox.FocusLost:connect(function(enter)
if enter then
FocusLost()
end
end)
local cEvent
indicator.Changed:connect(function(prop)
if prop == "AbsolutePosition"then
if cEvent then cEvent:disconnect() end
coroutine.wrap(function()
for i,v in pairs(hsvTable)do
if collisionDetect(indicator,v)then
settings.mainColor = v.BackgroundColor3
updateColorGuis()
cEvent = v.Changed:connect(function(prop)
if prop == "BackgroundColor3"then
settings.mainColor = v.BackgroundColor3
updateColorGuis()
end
end)
end
end
end)()
end
end)
end)
end
end)
local function alternateColors(object,property,oldColor3,newColor3,i)
coroutine.wrap(function()
for i = 0,1,i do
object[property] = oldColor3:lerp(newColor3,i)
game:service'RunService'.RenderStepped:wait()
end
object[property] = newColor3
end)()
end
local Colorables = {}
local function addRecolorables(inst)
if inst.BackgroundColor3 == colorCheck then
table.insert(Colorables,inst)
end
inst.ChildAdded:connect(function(i)
if i.BackgroundColor3 == colorCheck then
table.insert(Colorables,i)
end
end)
end
Children(gui,function(inst)
addRecolorables(inst)
end)
gui.ChildAdded:connect(function(i)
Children(i,function(inst)
addRecolorables(inst)
end)
addRecolorables(i)
end)
Children(pingui,function(inst)
addRecolorables(inst)
end)
pingui.ChildAdded:connect(function(i)
Children(i,function(inst)
addRecolorables(inst)
end)
addRecolorables(i)
end)
game:service'RunService'.Stepped:connect(function()
if colorCheck ~= settings.mainColor then
coroutine.wrap(function()
for i,v in pairs(Colorables)do
v.BackgroundColor3 = settings.mainColor
end
colorCheck = settings.mainColor
end)()
end
end)
services.Players.PlayerRemoving:connect(function(player)
setCookie('BackgroundColor',tostring(math.floor(settings.mainColor.r*255)..", "..math.floor(settings.mainColor.g*255)..", "..math.floor(settings.mainColor.b*255)));
setCookie('KeyBind',tostring(settings.toggleKey):sub(14))
setCookie('BlurLevel',tostring(settings.blurLevel))
end)
local Intro = createIcon('rbxassetid://1039272774',{
Size = UDim2.new(0,150,0,150);
Position = UDim2.new(.5,-50,0,-150);
Visible = true;
Parent = gui;
})
local IntroText2 = create('TextLabel',{
Transparency = 1;
Text = "Nebula Hub V2";
TextSize = 42;
TextColor3 = Color3.new(1,1,1);
Font = Enum.Font.SourceSansLight;
Position = UDim2.new(0,0,0,-42);
Size = UDim2.new(1,0,0,42);
Parent = Intro;
})
local IntroText = create('TextLabel',{
Transparency = 1;
Text = "Created by Scripterity & finny";
TextSize = 32;
TextColor3 = Color3.new(1,1,1);
Font = Enum.Font.SourceSansLight;
Position = UDim2.new(0,0,1,0);
Size = UDim2.new(1,0,0,30);
Parent = Intro;
})
repeat wait()until Intro.IsLoaded
Intro:TweenPosition(UDim2.new(.5,-75,.5,-75),Enum.EasingDirection.Out,Enum.EasingStyle.Back,.5,true)
wait(.75)
tweenRecursiveTransparency(IntroText2,0,-.05);
tweenRecursiveTransparency(IntroText,0,-.05);
wait(5)
Intro:TweenPosition(UDim2.new(.5,-75,1,0),Enum.EasingDirection.In,Enum.EasingStyle.Quint,.5,true)
tweenRecursiveTransparency(Intro,1,.05)
tweenRecursiveTransparency(IntroText,1,.05)
tweenRecursiveTransparency(IntroText2,1,.05)
repeat wait()until Intro.ImageTransparency == 1
Intro:Destroy()
end)

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(0.207843, 0.207843, 0.207843)
TextLabel_2.BorderColor3 = Color3.new(0.00784314, 0.00784314, 0.00784314)
TextLabel_2.Position = UDim2.new(0, 0, 0.924657524, 0)
TextLabel_2.Size = UDim2.new(0.5252918, 236, 0.0376712345, 11)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Maked by Valo/D39"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextSize = 14
TextLabel_2.TextStrokeColor3 = Color3.new(1, 1, 1)

FE.Name = "FE"
FE.Parent = lol
FE.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
FE.Position = UDim2.new(0.685202658, 0, 0.473484874, 0)
FE.Size = UDim2.new(0, 132, 0, 50)
FE.Font = Enum.Font.Arial
FE.Text = "FE ANIMATION GUI"
FE.TextColor3 = Color3.new(0, 0, 0)
FE.TextScaled = true
FE.TextSize = 14
FE.TextWrapped = true

FE.MouseButton1Down:connect(function() 
--FE Animation Gui Made by Dark Magic Rblx in ROBLOX Studio, please give credits if you use this.
--You can use all and me in the Name Here Section!
gui = Instance.new("ScreenGui",game.CoreGui)
gui.Name = "FE Animation Gui by Dark Magic Rblx"
box = Instance.new("Frame",gui)
box.Size = UDim2.new(0,400,0,100)
box.Position = UDim2.new(0,800,0,500)
box.BackgroundTransparency = 0
box.BackgroundColor3 = Color3.new(167,0,0)
box.BorderSizePixel = 5
box.BorderColor3 = Color3.new(27,42,53)

o = Instance.new("TextBox",gui)
o.Name = "Speed Here"
o.Size = UDim2.new(0,150,0,15)
o.Position = UDim2.new(0,1000,0,590)
o.BackgroundTransparency = 0
o.BackgroundColor3 = Color3.new(0,0,0)
o.BorderSizePixel = 0
o.Font = "Arcade"
o.TextColor3 = Color3.new(255,255,255)
o.TextScaled = true
o.TextWrapped = true
o.Text = "Speed Here"

a = Instance.new("TextBox",gui)
a.Name = "ID Here"
a.Size = UDim2.new(0,300,0,25)
a.Position = UDim2.new(0,900,0,530)
a.BackgroundTransparency = 0
a.BackgroundColor3 = Color3.new(0,0,0)
a.BorderSizePixel = 0
a.Font = "Arcade"
a.TextColor3 = Color3.new(255,255,255)
a.TextScaled = true
a.TextWrapped = true
a.Text = "ID Here"

b = Instance.new("TextBox",gui)
b.Name = "Namehere"
b.Size = UDim2.new(0,300,0,25)
b.Position = UDim2.new(0,900,0,560)
b.BackgroundTransparency = 0
b.BackgroundColor3 = Color3.new(0,0,0)
b.BorderSizePixel = 0
b.Font = "Arcade"
b.TextColor3 = Color3.new(255,255,255)
b.TextScaled = true
b.TextWrapped = true
b.Text = "Name here"

c = Instance.new("TextButton",gui)
c.Name = "Animation"
c.Size = UDim2.new(0,100,0,40)
c.Position = UDim2.new(0,800,0,520)
c.BackgroundTransparency = 0
c.BackgroundColor3 = Color3.new(0,0,0)
c.BorderSizePixel = 0
c.Font = "Arcade"
c.TextColor3 = Color3.new(255,255,255)
c.TextScaled = true
c.TextWrapped = true
c.Text = "Animation"

d = Instance.new("TextButton",gui)
d.Name = "Player"
d.Size = UDim2.new(0,100,0,40)
d.Position = UDim2.new(0,800,0,560)
d.BackgroundTransparency = 0
d.BackgroundColor3 = Color3.new(0,0,0)
d.BorderSizePixel = 0
d.Font = "Arcade"
d.TextColor3 = Color3.new(255,255,255)
d.TextScaled = true
d.TextWrapped = true
d.Text = "Player"

cred = Instance.new("TextLabel",gui)
cred.Name = "Credits"
cred.Size = UDim2.new(0,400,0,20)
cred.Position = UDim2.new(0,800,0,500)
cred.BackgroundTransparency = 0
cred.BackgroundColor3 = Color3.new(0,0,0)
box.BorderSizePixel = 5
box.BorderColor3 = Color3.new(27,42,53)
cred.Font = "Arcade"
cred.FontSize = "Size24"
cred.TextColor3 = Color3.new(255,255,255)
cred.Text = "FE Animation Gui by Dark Magic Rblx!"
cred.TextSize = 19

c.MouseButton1Down:connect(function()
local AnimationId = gui["ID Here"].Text
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Player = game.Players:FindFirstChild(gui.Namehere.Text)
if Player ~= nil then
local k = Player.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)
end 
if gui.Namehere.Text =="me" then
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
if gui.Namehere.Text =="all" then
for i,v in pairs(game.Players:GetChildren()) do
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
end
end)
   

d.MouseButton1Down:connect(function()
local AnimationId = gui["ID Here"].Text
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Player = game.Players:FindFirstChild(gui.Namehere.Text)
if Player ~= nil then
local k = Player.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)
end 
if gui.Namehere.Text =="me" then
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
if gui.Namehere.Text =="all" then
for i,v in pairs(game.Players:GetChildren()) do
local k = v.Character.Humanoid:LoadAnimation(Anim)
k:Play()  
k:AdjustSpeed(gui["Speed Here"].Text)	
end
end
end) 
end)

febombvest.Name = "fe bomb vest"
febombvest.Parent = lol
febombvest.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
febombvest.Position = UDim2.new(0.386684209, 0, 0.226835057, 0)
febombvest.Size = UDim2.new(0, 132, 0, 50)
febombvest.Font = Enum.Font.SourceSans
febombvest.Text = "FE BOMB VEST"
febombvest.TextColor3 = Color3.new(0, 0, 0)
febombvest.TextScaled = true
febombvest.TextSize = 14
febombvest.TextWrapped = true

febombvest.MouseButton1Down:connect(function() 
--Leaked by CrazyExploitz (https://youtube.com/fuzioncrazyexploitz)
--Cant tell you the original creator for risk of being caught
--Here is the link to the game it works on https://www.roblox.com/games/647711404/City-Life
--Enjoy rekking oders in fe lel

local Me = game:GetService("Players").LocalPlayer --You cannot use this on someone else. srry
local Char = Me.Character
local Torso = Char.Torso
local TickWait = 1
local Color = "Medium stone gray"
local Dead = false
 
local Tool = Instance.new("HopperBin", Me.Backpack)
Tool.Name = "Bomb Vest"
 
local Position = Vector3.new(0,100,0)
function NewPart(Parent)
    local Part = Instance.new("Part", Parent)
    Part.CanCollide = false
    Part.FormFactor = "Custom"
    Part.Position = Position
    Part.TopSurface = "Smooth"
    Part.BottomSurface = "Smooth"
    Part.BrickColor = BrickColor.new(Color)
    Position = Position + Vector3.new(0,Part.Size.Y + 10,0)
    return Part
end
 
local Model = Char:FindFirstChild("Bomb")
if Model then Model:Destroy() end
 
Model = Instance.new("Model", Char)
Model.Name = "Bomb"
 
local Belt = NewPart(Model)
Belt.Size = Vector3.new(2.2,0.5,1.2)
local Weld = Instance.new("Weld", Belt)
Weld.Part0 = Belt
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,1.1,0)
local Light = Instance.new("PointLight", Belt)
Light.Range = 15
Light.Brightness = 5
Light.Color = Color3.new(1,0,0)
local Beep = Instance.new("Sound", Belt)
Beep.SoundId = "http://www.roblox.com/asset/?id=188588790"
local ExplodeSound = Instance.new("Sound", Belt)
ExplodeSound.SoundId = "http://www.roblox.com/asset/?id="..(tonumber((math.ceil(1776.66^2)+17).."."..string.rep("36",3))*77)+0.00003 --144507765
ExplodeSound.Pitch = 2.8
ExplodeSound.Volume = 3
 
local Back = NewPart(Model)
Back.Size = Vector3.new(1.5,1.5,0.5)
local Weld = Instance.new("Weld", Back)
Weld.Part0 = Back
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,0.1,-0.75)
 
local StrapLeft = NewPart(Model)
StrapLeft.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapLeft)
Weld.Part0 = StrapLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,-0.9,-0.2)
 
local BuckleLeft = NewPart(Model)
BuckleLeft.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleLeft)
Weld.Part0 = BuckleLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,0.1,0.5)
 
local StrapRight = NewPart(Model)
StrapRight.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapRight)
Weld.Part0 = StrapRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,-0.9,-0.2)
 
local BuckleRight = NewPart(Model)
BuckleRight.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleRight)
Weld.Part0 = BuckleRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,0.1,0.5)
 
Tool.Selected:connect(function(Mouse)
    TickWait = 0.3
    Mouse.Icon = "http://www.roblox.com/asset/?id=9109985"
   
    Mouse.Button1Down:connect(function()
        if Dead == false then
            Dead = true
            ExplodeSound:Play()
            wait(1.4)
            game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('meme', '8', '1527622')
lp = game:GetService'Players'.LocalPlayer
hat = lp.Character:WaitForChild'meme'
hat.Handle.Transparency=1
hat.Handle.Mesh:Remove()
        end
    end)
end)
 
Tool.Deselected:connect(function()
    TickWait = 1
end)
 
coroutine.wrap(function()
    repeat
        wait(TickWait)
        Light.Enabled = not Light.Enabled
        Beep:Play()
    until Dead == true
end)()
local grabknife = h
function kill(plrtokill)
--boom--
assets = {540034631, 178993946, 461493477, 110288809}
me = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'
for i,v in pairs(me.Parent:GetChildren()) do
if v:IsA'Accoutrement' then v.Parent = nil end
end
for i,v in pairs(assets) do
  game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('xdd', tostring(game:GetService'MarketplaceService':GetProductInfo(v).AssetTypeId), v)
end
game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('boom', '8', '1527622')
game.Players.LocalPlayer.Character.boom.BootScript.Parent=workspace[plrtokill]
print(workspace[plrtokill] .. " has been killed")

end

game:GetService'RunService'.Stepped:wait()
grabknife.Parent = plr.Character
for i = 1,3 do
local lol = lp:FindFirstChildOfClass'Backpack':FindFirstChildOfClass'HopperBin'
if lol:FindFirstChild'LocalScript' then lol:Destroy() end
end

end)

sUC.Name = "sUC"
sUC.Parent = lol
sUC.BackgroundColor3 = Color3.new(0.337255, 0.337255, 0.337255)
sUC.Position = UDim2.new(0.395166785, 0, 0.473047197, 0)
sUC.Size = UDim2.new(0, 132, 0, 50)
sUC.Font = Enum.Font.SourceSans
sUC.Text = "FE SUCIDE GUN"
sUC.TextColor3 = Color3.new(0, 0, 0)
sUC.TextScaled = true
sUC.TextSize = 14
sUC.TextWrapped = true

sUC.MouseButton1Down:connect(function() 
--SUICIDE GUN REBORN BY DMS
o1 = Instance.new("Tool")
o2 = Instance.new("Part")
o3 = Instance.new("SpecialMesh")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
o6 = Instance.new("Part")
o7 = Instance.new("BlockMesh")
o8 = Instance.new("Part")
o9 = Instance.new("BlockMesh")
o10 = Instance.new("Part")
o11 = Instance.new("BlockMesh")
o12 = Instance.new("Part")
o13 = Instance.new("BlockMesh")
o14 = Instance.new("Part")
o15 = Instance.new("BlockMesh")
o16 = Instance.new("Part")
o17 = Instance.new("BlockMesh")
o18 = Instance.new("Part")
o19 = Instance.new("BlockMesh")
o20 = Instance.new("Part")
o21 = Instance.new("CylinderMesh")
o22 = Instance.new("Part")
o23 = Instance.new("CylinderMesh")
o24 = Instance.new("Part")
o25 = Instance.new("CylinderMesh")
o26 = Instance.new("Part")
o27 = Instance.new("BlockMesh")
o28 = Instance.new("Part")
o29 = Instance.new("CylinderMesh")
o30 = Instance.new("Part")
o31 = Instance.new("PointLight")
o32 = Instance.new("BillboardGui")
o33 = Instance.new("ImageLabel")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Part")
o36 = Instance.new("BlockMesh")
o37 = Instance.new("Part")
o38 = Instance.new("BlockMesh")
o39 = Instance.new("Part")
o40 = Instance.new("BlockMesh")
o41 = Instance.new("Part")
o42 = Instance.new("Decal")
o43 = Instance.new("CylinderMesh")
o44 = Instance.new("Part")
o45 = Instance.new("CylinderMesh")
o46 = Instance.new("Part")
o47 = Instance.new("BlockMesh")
o48 = Instance.new("Part")
o49 = Instance.new("SpecialMesh")
o50 = Instance.new("Part")
o51 = Instance.new("SpecialMesh")
o52 = Instance.new("Part")
o53 = Instance.new("BlockMesh")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("BlockMesh")
o58 = Instance.new("Part")
o59 = Instance.new("CylinderMesh")
o60 = Instance.new("Part")
o61 = Instance.new("SpecialMesh")
o62 = Instance.new("Part")
o63 = Instance.new("BlockMesh")
o64 = Instance.new("Part")
o65 = Instance.new("SpecialMesh")
o66 = Instance.new("Part")
o67 = Instance.new("BlockMesh")
o68 = Instance.new("Part")
o69 = Instance.new("BlockMesh")
o70 = Instance.new("Part")
o71 = Instance.new("SpecialMesh")
o72 = Instance.new("Part")
o73 = Instance.new("BlockMesh")
o74 = Instance.new("Part")
o75 = Instance.new("BlockMesh")
o76 = Instance.new("Part")
o77 = Instance.new("BlockMesh")
o78 = Instance.new("Part")
o79 = Instance.new("SpecialMesh")
o80 = Instance.new("Part")
o81 = Instance.new("CylinderMesh")
o82 = Instance.new("Part")
o83 = Instance.new("SpecialMesh")
o84 = Instance.new("Part")
o85 = Instance.new("BlockMesh")
o86 = Instance.new("Part")
o87 = Instance.new("SpecialMesh")
o88 = Instance.new("Part")
o89 = Instance.new("SpecialMesh")
o90 = Instance.new("Part")
o91 = Instance.new("BlockMesh")
o92 = Instance.new("Part")
o93 = Instance.new("BlockMesh")
o94 = Instance.new("Part")
o95 = Instance.new("SpecialMesh")
o96 = Instance.new("Part")
o97 = Instance.new("BlockMesh")
o98 = Instance.new("Part")
o99 = Instance.new("SpecialMesh")
o100 = Instance.new("Part")
o101 = Instance.new("BlockMesh")
o102 = Instance.new("Part")
o103 = Instance.new("BlockMesh")
o104 = Instance.new("Part")
o105 = Instance.new("SpecialMesh")
o106 = Instance.new("Part")
o107 = Instance.new("BlockMesh")
o108 = Instance.new("Part")
o109 = Instance.new("CylinderMesh")
o110 = Instance.new("Part")
o111 = Instance.new("BlockMesh")
o112 = Instance.new("Part")
o113 = Instance.new("SpecialMesh")
o114 = Instance.new("Part")
o115 = Instance.new("CylinderMesh")
o116 = Instance.new("Part")
o117 = Instance.new("BlockMesh")
o118 = Instance.new("Part")
o119 = Instance.new("SpecialMesh")
o120 = Instance.new("Part")
o121 = Instance.new("BlockMesh")
o122 = Instance.new("Part")
o123 = Instance.new("SpecialMesh")
o124 = Instance.new("Part")
o125 = Instance.new("SpecialMesh")
o126 = Instance.new("Part")
o127 = Instance.new("BlockMesh")
o128 = Instance.new("Part")
o129 = Instance.new("BlockMesh")
o130 = Instance.new("Part")
o131 = Instance.new("SpecialMesh")
o132 = Instance.new("Part")
o133 = Instance.new("BlockMesh")
o134 = Instance.new("Part")
o135 = Instance.new("BlockMesh")
o136 = Instance.new("Part")
o137 = Instance.new("SpecialMesh")
o138 = Instance.new("Part")
o139 = Instance.new("BlockMesh")
o140 = Instance.new("Part")
o141 = Instance.new("CylinderMesh")
o142 = Instance.new("Part")
o143 = Instance.new("BlockMesh")
o144 = Instance.new("Part")
o145 = Instance.new("SpecialMesh")
o146 = Instance.new("Part")
o147 = Instance.new("SpecialMesh")
o148 = Instance.new("Part")
o149 = Instance.new("Sound")
o150 = Instance.new("BlockMesh")
o1.Name = "Suicide"
o1.Parent = game.Players.LocalPlayer.Backpack
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Really black")
o2.Position = Vector3.new(18.950964, 0.850407004, 14.2854338)
o2.Rotation = Vector3.new(-2.19040904e-013, 2.50129006e-006, -180)
o2.Anchored = true
o2.FormFactor = Enum.FormFactor.Custom
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o2.CFrame = CFrame.new(18.950964, 0.850407004, 14.2854338, -1, 8.74227766e-008, 4.36557457e-008, -8.74227766e-008, -1, 3.82298495e-015, 4.36557457e-008, 3.92853881e-018, 1)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o3.Parent = o2
o3.Scale = Vector3.new(0.666666687, 0.388888866, 0.416666687)
o3.MeshType = Enum.MeshType.Wedge
o4.Parent = o1
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Really black")
o4.Position = Vector3.new(18.950964, 0.953182995, 14.5104237)
o4.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o4.Anchored = true
o4.FormFactor = Enum.FormFactor.Custom
o4.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o4.CFrame = CFrame.new(18.950964, 0.953182995, 14.5104237, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o5.Parent = o4
o5.Scale = Vector3.new(0.333333343, 0.194444433, 0.694444478)
o6.Parent = o1
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Black")
o6.Position = Vector3.new(18.950964, 1.13095105, 14.5993176)
o6.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o6.Anchored = true
o6.FormFactor = Enum.FormFactor.Custom
o6.Size = Vector3.new(0.566666663, 0.200000003, 0.200000003)
o6.CFrame = CFrame.new(18.950964, 1.13095105, 14.5993176, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.105882, 0.164706, 0.207843)
o7.Parent = o6
o7.Scale = Vector3.new(1, 0.583333313, 0.722222269)
o8.Name = "SightBack"
o8.Parent = o1
o8.Material = Enum.Material.SmoothPlastic
o8.Position = Vector3.new(18.950964, 1.23151195, 14.4882116)
o8.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o8.Anchored = true
o8.FormFactor = Enum.FormFactor.Custom
o8.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o8.CFrame = CFrame.new(18.950964, 1.23151195, 14.4882116, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Parent = o8
o9.Scale = Vector3.new(0.166666672, 0.111111112, 0.411111116)
o10.Parent = o1
o10.Material = Enum.Material.SmoothPlastic
o10.BrickColor = BrickColor.new("Really black")
o10.Position = Vector3.new(18.950964, 0.961513996, 14.5937595)
o10.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o10.Anchored = true
o10.FormFactor = Enum.FormFactor.Custom
o10.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o10.CFrame = CFrame.new(18.950964, 0.961513996, 14.5937595, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o10.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o11.Parent = o10
o11.Scale = Vector3.new(0.49999997, 0.277777761, 0.694444478)
o12.Parent = o1
o12.Material = Enum.Material.SmoothPlastic
o12.BrickColor = BrickColor.new("Really black")
o12.Position = Vector3.new(18.950964, 1.19539297, 14.5993176)
o12.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o12.Anchored = true
o12.FormFactor = Enum.FormFactor.Custom
o12.Size = Vector3.new(0.566666663, 0.200000003, 0.200000003)
o12.CFrame = CFrame.new(18.950964, 1.19539297, 14.5993176, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o12.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o13.Parent = o12
o13.Scale = Vector3.new(1, 0.249999985, 0.411111116)
o14.Parent = o1
o14.Material = Enum.Material.SmoothPlastic
o14.BrickColor = BrickColor.new("Really black")
o14.Position = Vector3.new(18.908186, 1.19095695, 14.5993176)
o14.Rotation = Vector3.new(-90, 44.9999962, 90)
o14.Anchored = true
o14.FormFactor = Enum.FormFactor.Custom
o14.Size = Vector3.new(0.566666663, 0.200000003, 0.200000003)
o14.CFrame = CFrame.new(18.908186, 1.19095695, 14.5993176, 0, -0.707106709, 0.707106709, 5.38120031e-018, 0.707106769, 0.707106769, -1, 2.04281037e-011, 9.59801127e-011)
o14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o14.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o15.Parent = o14
o15.Scale = Vector3.new(1, 0.194444433, 0.222222224)
o16.Name = "SightBack"
o16.Parent = o1
o16.Material = Enum.Material.SmoothPlastic
o16.Position = Vector3.new(18.9787407, 1.25372696, 14.4882116)
o16.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o16.Anchored = true
o16.FormFactor = Enum.FormFactor.Custom
o16.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o16.CFrame = CFrame.new(18.9787407, 1.25372696, 14.4882116, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Parent = o16
o17.Scale = Vector3.new(0.166666672, 0.111111112, 0.13333334)
o18.Name = "SightBack"
o18.Parent = o1
o18.Material = Enum.Material.SmoothPlastic
o18.Position = Vector3.new(18.9231701, 1.25372696, 14.4882002)
o18.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o18.Anchored = true
o18.FormFactor = Enum.FormFactor.Custom
o18.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o18.CFrame = CFrame.new(18.9231701, 1.25372696, 14.4882002, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Parent = o18
o19.Scale = Vector3.new(0.166666672, 0.111111112, 0.13333334)
o20.Parent = o1
o20.Material = Enum.Material.SmoothPlastic
o20.BrickColor = BrickColor.new("Black")
o20.Position = Vector3.new(18.950964, 0.886528015, 14.5798664)
o20.Rotation = Vector3.new(-90, -2.50447761e-006, -90)
o20.Anchored = true
o20.FormFactor = Enum.FormFactor.Custom
o20.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o20.CFrame = CFrame.new(18.950964, 0.886528015, 14.5798664, -8.74279067e-008, 1, -4.37113812e-008, -3.83195418e-015, 4.37113812e-008, 1, 1, 8.74279067e-008, -4.65359901e-018)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.105882, 0.164706, 0.207843)
o21.Parent = o20
o21.Scale = Vector3.new(0.416666687, 0.722222269, 0.416666687)
o22.Name = "SightLine"
o22.Parent = o1
o22.Material = Enum.Material.SmoothPlastic
o22.BrickColor = BrickColor.new("Smoky grey")
o22.Position = Vector3.new(18.950964, 1.21539295, 15.7804356)
o22.Rotation = Vector3.new(90, -2.50447761e-006, -90)
o22.Anchored = true
o22.FormFactor = Enum.FormFactor.Custom
o22.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o22.CFrame = CFrame.new(18.950964, 1.21539295, 15.7804356, 0, 1, -4.37113812e-008, 5.38120031e-018, -4.37113812e-008, -1, -1, 0, 6.1083781e-018)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.356863, 0.364706, 0.411765)
o23.Parent = o22
o23.Scale = Vector3.new(0.505999982, 0.150000006, 0.505999982)
o24.Parent = o1
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Black")
o24.Position = Vector3.new(18.950964, 0.96707201, 15.7326679)
o24.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o24.Anchored = true
o24.FormFactor = Enum.FormFactor.Custom
o24.Size = Vector3.new(0.200000003, 0.344444454, 0.200000003)
o24.CFrame = CFrame.new(18.950964, 0.96707201, 15.7326679, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.105882, 0.164706, 0.207843)
o25.Parent = o24
o25.Scale = Vector3.new(0.405599982, 1, 0.405599982)
o26.Parent = o1
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Black")
o26.Position = Vector3.new(18.950964, 1.01984501, 15.7298756)
o26.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o26.Anchored = true
o26.FormFactor = Enum.FormFactor.Custom
o26.Size = Vector3.new(0.338888884, 0.200000003, 0.200000003)
o26.CFrame = CFrame.new(18.950964, 1.01984501, 15.7298756, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.105882, 0.164706, 0.207843)
o27.Parent = o26
o27.Scale = Vector3.new(1, 0.527777731, 0.611111104)
o28.Parent = o1
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Black")
o28.Position = Vector3.new(18.950964, 0.96707201, 15.7298756)
o28.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o28.Anchored = true
o28.FormFactor = Enum.FormFactor.Custom
o28.Size = Vector3.new(0.200000003, 0.338888884, 0.200000003)
o28.CFrame = CFrame.new(18.950964, 0.96707201, 15.7298756, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.105882, 0.164706, 0.207843)
o29.Parent = o28
o29.Scale = Vector3.new(0.611111104, 1, 0.611111104)
o30.Name = "Main"
o30.Parent = o1
o30.Material = Enum.Material.SmoothPlastic
o30.BrickColor = BrickColor.new("Really black")
o30.Transparency = 1
o30.Position = Vector3.new(18.950964, 1.12816894, 15.9493256)
o30.Rotation = Vector3.new(90, -2.50447761e-006, 2.50796006e-006)
o30.Anchored = true
o30.FormFactor = Enum.FormFactor.Custom
o30.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o30.CFrame = CFrame.new(18.950964, 1.12816894, 15.9493256, 1, -4.3772161e-008, -4.37113812e-008, -4.37113812e-008, -1.49011594e-008, -1, 4.3772161e-008, 1, -1.49011603e-008)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o31.Name = "FlashFX"
o31.Parent = o30
o31.Color = Color3.new(1, 1, 0)
o31.Enabled = false
o31.Brightness = 10
o31.Range = 6
o31.Shadows = true
o32.Name = "FlashGui"
o32.Parent = o30
o32.Size = UDim2.new(1.1000000238419,0,1.1000000238419,0)
o32.Enabled = false
o33.Name = "Label"
o33.Parent = o32
o33.Size = UDim2.new(1,0,1,0)
o33.BackgroundTransparency = 1
o33.Image = "http://www.roblox.com/asset/?id=117472237"
o34.Parent = o30
o34.Scale = Vector3.new(0.99999994, 0.99999994, 0.99999994)
o35.Parent = o1
o35.Material = Enum.Material.SmoothPlastic
o35.BrickColor = BrickColor.new("Black")
o35.Position = Vector3.new(18.908186, 1.19095695, 15.5132236)
o35.Rotation = Vector3.new(-90, 44.9999962, 90)
o35.Anchored = true
o35.FormFactor = Enum.FormFactor.Custom
o35.Size = Vector3.new(0.772222221, 0.200000003, 0.200000003)
o35.CFrame = CFrame.new(18.908186, 1.19095695, 15.5132236, 0, -0.707106709, 0.707106709, 5.38120031e-018, 0.707106769, 0.707106769, -1, 2.04281037e-011, 9.59801127e-011)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.105882, 0.164706, 0.207843)
o36.Parent = o35
o36.Scale = Vector3.new(1, 0.194444433, 0.222222224)
o37.Parent = o1
o37.Material = Enum.Material.SmoothPlastic
o37.BrickColor = BrickColor.new("Black")
o37.Position = Vector3.new(18.950964, 1.19539297, 15.5132236)
o37.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o37.Anchored = true
o37.FormFactor = Enum.FormFactor.Custom
o37.Size = Vector3.new(0.772222221, 0.200000003, 0.200000003)
o37.CFrame = CFrame.new(18.950964, 1.19539297, 15.5132236, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Color = Color3.new(0.105882, 0.164706, 0.207843)
o38.Parent = o37
o38.Scale = Vector3.new(1, 0.249999985, 0.411111116)
o39.Parent = o1
o39.Material = Enum.Material.SmoothPlastic
o39.BrickColor = BrickColor.new("Black")
o39.Position = Vector3.new(18.950964, 1.13095105, 15.5132236)
o39.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o39.Anchored = true
o39.FormFactor = Enum.FormFactor.Custom
o39.Size = Vector3.new(0.772222221, 0.200000003, 0.200000003)
o39.CFrame = CFrame.new(18.950964, 1.13095105, 15.5132236, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o39.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o39.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o39.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o39.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o39.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o39.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o39.Color = Color3.new(0.105882, 0.164706, 0.207843)
o40.Parent = o39
o40.Scale = Vector3.new(1, 0.583333313, 0.722222269)
o41.Parent = o1
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Black")
o41.Position = Vector3.new(18.950964, 1.12816894, 15.3854284)
o41.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o41.Anchored = true
o41.FormFactor = Enum.FormFactor.Custom
o41.Size = Vector3.new(0.200000003, 1.06111109, 0.200000003)
o41.CFrame = CFrame.new(18.950964, 1.12816894, 15.3854284, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.105882, 0.164706, 0.207843)
o42.Parent = o41
o42.Texture = "http://www.roblox.com/asset/?id=47760372"
o42.Face = Enum.NormalId.Top
o43.Parent = o41
o43.Scale = Vector3.new(0.49999997, 1, 0.49999997)
o44.Parent = o1
o44.Material = Enum.Material.SmoothPlastic
o44.BrickColor = BrickColor.new("Black")
o44.Position = Vector3.new(18.950964, 0.961513996, 15.352108)
o44.Rotation = Vector3.new(-90, -2.50447761e-006, -180)
o44.Anchored = true
o44.FormFactor = Enum.FormFactor.Custom
o44.Size = Vector3.new(0.200000003, 0.416666627, 0.200000003)
o44.CFrame = CFrame.new(18.950964, 0.961513996, 15.352108, -1, 4.36557457e-008, -4.37113812e-008, -4.37113812e-008, 1.9122997e-015, 1, 4.36557457e-008, 1, -4.65359901e-018)
o44.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o44.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o44.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o44.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o44.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o44.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o44.Color = Color3.new(0.105882, 0.164706, 0.207843)
o45.Parent = o44
o45.Scale = Vector3.new(0.666666687, 1, 0.666666687)
o46.Name = "Mag"
o46.Parent = o1
o46.Material = Enum.Material.SmoothPlastic
o46.BrickColor = BrickColor.new("Black")
o46.Position = Vector3.new(18.950964, 0.129971996, 14.3866644)
o46.Rotation = Vector3.new(101, 90, 0)
o46.Anchored = true
o46.FormFactor = Enum.FormFactor.Custom
o46.Size = Vector3.new(0.200000003, 0.333333343, 0.200000003)
o46.CFrame = CFrame.new(18.950964, 0.129971996, 14.3866644, -2.79885857e-008, -5.49657244e-008, 1, 0.981627166, -0.190809026, 1.69563066e-008, 0.190809026, 0.981627107, 5.93718141e-008)
o46.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o46.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o46.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o46.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o46.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o46.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o46.Color = Color3.new(0.105882, 0.164706, 0.207843)
o47.Parent = o46
o47.Scale = Vector3.new(0.027777778, 1, 0.666666687)
o48.Parent = o1
o48.Material = Enum.Material.SmoothPlastic
o48.BrickColor = BrickColor.new("Black")
o48.Position = Vector3.new(18.950964, 0.161533996, 14.3493176)
o48.Rotation = Vector3.new(0.019784553, -6.66929267e-009, 180)
o48.Anchored = true
o48.FormFactor = Enum.FormFactor.Custom
o48.Size = Vector3.new(0.200000003, 0.200000003, 0.266666681)
o48.CFrame = CFrame.new(18.950964, 0.161533996, 14.3493176, -1, -8.74227979e-008, -1.16401111e-010, 8.74227766e-008, -0.99999994, -0.000345305598, 0, -0.000345305569, 0.99999994)
o48.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o48.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o48.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o48.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o48.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o48.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o48.Color = Color3.new(0.105882, 0.164706, 0.207843)
o49.Parent = o48
o49.Scale = Vector3.new(0.694444478, 0.222222224, 1)
o49.MeshType = Enum.MeshType.Wedge
o50.Parent = o1
o50.Material = Enum.Material.SmoothPlastic
o50.BrickColor = BrickColor.new("Really black")
o50.Position = Vector3.new(18.950964, 0.155975997, 14.3354216)
o50.Rotation = Vector3.new(3.08320072e-016, 0, -180)
o50.Anchored = true
o50.FormFactor = Enum.FormFactor.Custom
o50.Size = Vector3.new(0.200000003, 0.200000003, 0.438888878)
o50.CFrame = CFrame.new(18.950964, 0.155975997, 14.3354216, -1, 1.0960446e-021, 0, 1.0960446e-021, -1, -5.38120031e-018, 0, 5.38120031e-018, 1)
o50.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o50.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o50.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o50.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o50.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o50.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o50.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o51.Parent = o50
o51.Scale = Vector3.new(0.666666687, 0.333333343, 1)
o51.MeshType = Enum.MeshType.Wedge
o52.Parent = o1
o52.Material = Enum.Material.SmoothPlastic
o52.BrickColor = BrickColor.new("Black")
o52.Position = Vector3.new(18.950964, 0.239300996, 14.1882057)
o52.Rotation = Vector3.new(105, 90, 0)
o52.Anchored = true
o52.FormFactor = Enum.FormFactor.Custom
o52.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o52.CFrame = CFrame.new(18.950964, 0.239300996, 14.1882057, -1.07331601e-008, -6.40018527e-008, 1, 0.965925813, -0.258819044, -6.21114538e-009, 0.258819073, 0.965925813, 6.46105036e-008)
o52.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o52.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o52.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o52.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o52.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o52.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o52.Color = Color3.new(0.105882, 0.164706, 0.207843)
o53.Parent = o52
o53.Scale = Vector3.new(0.944444478, 0.111111112, 0.611111104)
o54.Parent = o1
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Really black")
o54.Position = Vector3.new(18.950964, 0.225419, 14.3520937)
o54.Rotation = Vector3.new(-3.25256337e-007, 90, 0)
o54.Anchored = true
o54.FormFactor = Enum.FormFactor.Custom
o54.Size = Vector3.new(0.26111111, 0.200000003, 0.200000003)
o54.CFrame = CFrame.new(18.950964, 0.225419, 14.3520937, 8.94069672e-008, -6.24762481e-015, 1, -5.6767937e-009, 1, 1.42108539e-014, -1, -5.6767937e-009, 8.94069672e-008)
o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o55.Parent = o54
o55.Scale = Vector3.new(1, 0.416666687, 0.694444478)
o56.Parent = o1
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Really black")
o56.Position = Vector3.new(18.950964, 0.197641, 14.2215319)
o56.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o56.Anchored = true
o56.FormFactor = Enum.FormFactor.Custom
o56.Size = Vector3.new(0.211111099, 0.200000003, 0.200000003)
o56.CFrame = CFrame.new(18.950964, 0.197641, 14.2215319, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o57.Parent = o56
o57.Scale = Vector3.new(1, 0.0833333358, 0.666666687)
o58.Parent = o1
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Really black")
o58.Position = Vector3.new(18.950964, 0.258204013, 14.3493176)
o58.Rotation = Vector3.new(-90, -2.50447761e-006, -90)
o58.Anchored = true
o58.FormFactor = Enum.FormFactor.Custom
o58.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o58.CFrame = CFrame.new(18.950964, 0.258204013, 14.3493176, -8.74279067e-008, 1, -4.37113812e-008, -3.83195418e-015, 4.37113812e-008, 1, 1, 8.74279067e-008, -4.65359901e-018)
o58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o58.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o59.Parent = o58
o59.Scale = Vector3.new(0.49999997, 0.722222269, 0.472222239)
o60.Parent = o1
o60.Material = Enum.Material.SmoothPlastic
o60.BrickColor = BrickColor.new("Really black")
o60.Position = Vector3.new(18.950964, 0.244874001, 14.1993141)
o60.Rotation = Vector3.new(0.019784553, -6.66929267e-009, 180)
o60.Anchored = true
o60.FormFactor = Enum.FormFactor.Custom
o60.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o60.CFrame = CFrame.new(18.950964, 0.244874001, 14.1993141, -1, -8.74227979e-008, -1.16401111e-010, 8.74227766e-008, -0.99999994, -0.000345305598, 0, -0.000345305569, 0.99999994)
o60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o60.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o61.Parent = o60
o61.Scale = Vector3.new(0.694444478, 0.222222224, 0.222222224)
o61.MeshType = Enum.MeshType.Wedge
o62.Parent = o1
o62.Material = Enum.Material.SmoothPlastic
o62.BrickColor = BrickColor.new("Black")
o62.Position = Vector3.new(18.993742, 1.19095695, 15.1076584)
o62.Rotation = Vector3.new(90, 44.9999962, -90)
o62.Anchored = true
o62.FormFactor = Enum.FormFactor.Custom
o62.Size = Vector3.new(1.58333337, 0.200000003, 0.200000003)
o62.CFrame = CFrame.new(18.993742, 1.19095695, 15.1076584, 0, 0.707106709, 0.707106709, 5.38120031e-018, 0.707106769, -0.707106769, -1, 9.59801127e-011, -2.04281037e-011)
o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.105882, 0.164706, 0.207843)
o63.Parent = o62
o63.Scale = Vector3.new(1, 0.194444433, 0.222222224)
o64.Parent = o1
o64.Material = Enum.Material.SmoothPlastic
o64.Position = Vector3.new(18.950964, 0.867092013, 15.1298876)
o64.Rotation = Vector3.new(180, 2.50796006e-006, 8.65142192e-006)
o64.Anchored = true
o64.FormFactor = Enum.FormFactor.Custom
o64.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o64.CFrame = CFrame.new(18.950964, 0.867092013, 15.1298876, 1, -1.50995803e-007, 4.3772161e-008, -1.50995803e-007, -1, -6.59664855e-015, 4.3772161e-008, 3.92853881e-018, -1)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o65.Parent = o64
o65.Scale = Vector3.new(0.611111104, 0.333333343, 0.138888881)
o65.MeshType = Enum.MeshType.Wedge
o66.Parent = o1
o66.Material = Enum.Material.SmoothPlastic
o66.Position = Vector3.new(18.950964, 0.83930999, 15.1048679)
o66.Rotation = Vector3.new(89.9999771, 90, 0)
o66.Anchored = true
o66.FormFactor = Enum.FormFactor.Custom
o66.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o66.CFrame = CFrame.new(18.950964, 0.83930999, 15.1048679, -8.74231674e-008, 2.50292942e-008, 1, 1, 4.33125763e-007, 8.74231461e-008, -4.33125791e-007, 1, -2.50292942e-008)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o67.Parent = o66
o67.Scale = Vector3.new(0.944444478, 0.111111112, 0.611111104)
o68.Parent = o1
o68.Material = Enum.Material.SmoothPlastic
o68.BrickColor = BrickColor.new("Fossil")
o68.Position = Vector3.new(18.950964, 0.716949999, 15.0719404)
o68.Rotation = Vector3.new(-45, 90, 0)
o68.Anchored = true
o68.FormFactor = Enum.FormFactor.Custom
o68.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o68.CFrame = CFrame.new(18.950964, 0.716949999, 15.0719404, -1.36843425e-010, -2.04281037e-011, 1, -0.707106769, 0.707106769, -1.0960446e-021, -0.707106709, -0.707106709, 0)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.623529, 0.631373, 0.67451)
o69.Parent = o68
o69.Scale = Vector3.new(0.527777731, 0.111111112, 0.611111104)
o70.Parent = o1
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Black")
o70.Position = Vector3.new(18.950964, 0.875427008, 15.0743237)
o70.Rotation = Vector3.new(3.08320072e-016, 0, -180)
o70.Anchored = true
o70.FormFactor = Enum.FormFactor.Custom
o70.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o70.CFrame = CFrame.new(18.950964, 0.875427008, 15.0743237, -1, 1.0960446e-021, 0, 1.0960446e-021, -1, -5.38120031e-018, 0, 5.38120031e-018, 1)
o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.105882, 0.164706, 0.207843)
o71.Parent = o70
o71.Scale = Vector3.new(0.611111104, 0.249999985, 0.194444433)
o71.MeshType = Enum.MeshType.Wedge
o72.Parent = o1
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Black")
o72.Position = Vector3.new(18.9315281, 1.09817195, 15.0048761)
o72.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o72.Anchored = true
o72.FormFactor = Enum.FormFactor.Custom
o72.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o72.CFrame = CFrame.new(18.9315281, 1.09817195, 15.0048761, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.105882, 0.164706, 0.207843)
o73.Parent = o72
o73.Scale = Vector3.new(1, 0.277777761, 0.527777731)
o74.Parent = o1
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Black")
o74.Position = Vector3.new(18.9870701, 1.13095105, 15.0048761)
o74.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o74.Anchored = true
o74.FormFactor = Enum.FormFactor.Custom
o74.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o74.CFrame = CFrame.new(18.9870701, 1.13095105, 15.0048761, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.105882, 0.164706, 0.207843)
o75.Parent = o74
o75.Scale = Vector3.new(1, 0.583333313, 0.361111134)
o76.Parent = o1
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Black")
o76.Position = Vector3.new(18.970396, 1.17595196, 15.0048761)
o76.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o76.Anchored = true
o76.FormFactor = Enum.FormFactor.Custom
o76.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o76.CFrame = CFrame.new(18.970396, 1.17595196, 15.0048761, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Color = Color3.new(0.105882, 0.164706, 0.207843)
o77.Parent = o76
o77.Scale = Vector3.new(1, 0.444444448, 0.216666669)
o78.Parent = o1
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Black")
o78.Position = Vector3.new(18.950964, 0.39764601, 14.6493216)
o78.Rotation = Vector3.new(180, 2.50796006e-006, 5.00895612e-006)
o78.Anchored = true
o78.FormFactor = Enum.FormFactor.Custom
o78.Size = Vector3.new(0.200000003, 0.550000012, 0.200000003)
o78.CFrame = CFrame.new(18.950964, 0.39764601, 14.6493216, 1, -8.74227766e-008, 4.3772161e-008, -8.74227766e-008, -1, -3.8177829e-015, 4.3772161e-008, 6.83386182e-018, -1)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.105882, 0.164706, 0.207843)
o79.Parent = o78
o79.Scale = Vector3.new(0.666666687, 1, 0.944444478)
o79.MeshType = Enum.MeshType.Wedge
o80.Parent = o1
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Black")
o80.Position = Vector3.new(18.8859501, 0.96707201, 15.0021019)
o80.Rotation = Vector3.new(-90, -2.50447761e-006, -90.0000076)
o80.Anchored = true
o80.FormFactor = Enum.FormFactor.Custom
o80.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o80.CFrame = CFrame.new(18.8859501, 0.96707201, 15.0021019, -1.51107088e-007, 1, -4.37113812e-008, -6.60488848e-015, 4.37113812e-008, 1, 1, 1.51107088e-007, -4.65359901e-018)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.105882, 0.164706, 0.207843)
o81.Parent = o80
o81.Scale = Vector3.new(0.249999985, 0.027777778, 0.249999985)
o82.Parent = o1
o82.Material = Enum.Material.SmoothPlastic
o82.BrickColor = BrickColor.new("Dark stone grey")
o82.Position = Vector3.new(18.950964, 0.858749986, 14.8770924)
o82.Rotation = Vector3.new(-180, -2.50796256e-006, 5.00895703e-006)
o82.Anchored = true
o82.FormFactor = Enum.FormFactor.Custom
o82.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o82.CFrame = CFrame.new(18.950964, 0.858749986, 14.8770924, 0.99999994, -8.74227837e-008, -4.37722036e-008, -8.74227837e-008, -0.99999994, 7.17606313e-018, -4.36557599e-008, 1.89421216e-015, -0.999999762)
o82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o82.Color = Color3.new(0.388235, 0.372549, 0.384314)
o83.Parent = o82
o83.Scale = Vector3.new(0.472222239, 0.416666687, 0.222222224)
o83.MeshType = Enum.MeshType.Wedge
o84.Parent = o1
o84.Material = Enum.Material.SmoothPlastic
o84.BrickColor = BrickColor.new("Black")
o84.Position = Vector3.new(18.950964, 1.05040395, 14.9382162)
o84.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o84.Anchored = true
o84.FormFactor = Enum.FormFactor.Custom
o84.Size = Vector3.new(1.24444449, 0.200000003, 0.200000003)
o84.CFrame = CFrame.new(18.950964, 1.05040395, 14.9382162, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o84.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o84.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o84.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o84.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o84.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o84.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o84.Color = Color3.new(0.105882, 0.164706, 0.207843)
o85.Parent = o84
o85.Scale = Vector3.new(1, 0.222222224, 0.722222269)
o86.Parent = o1
o86.Material = Enum.Material.SmoothPlastic
o86.BrickColor = BrickColor.new("Black")
o86.Position = Vector3.new(18.950964, 0.469879985, 14.2215319)
o86.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o86.Anchored = true
o86.FormFactor = Enum.FormFactor.Custom
o86.Size = Vector3.new(0.200000003, 0.527777791, 0.211111099)
o86.CFrame = CFrame.new(18.950964, 0.469879985, 14.2215319, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o86.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o86.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o86.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o86.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o86.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o86.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o86.Color = Color3.new(0.105882, 0.164706, 0.207843)
o87.Parent = o86
o87.Scale = Vector3.new(0.666666687, 1, 1)
o87.MeshType = Enum.MeshType.Wedge
o88.Parent = o1
o88.Material = Enum.Material.SmoothPlastic
o88.BrickColor = BrickColor.new("Dark stone grey")
o88.Position = Vector3.new(18.950964, 0.736557007, 14.8798761)
o88.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o88.Anchored = true
o88.FormFactor = Enum.FormFactor.Custom
o88.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o88.CFrame = CFrame.new(18.950964, 0.736557007, 14.8798761, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o88.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o88.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o88.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o88.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o88.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o88.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o88.Color = Color3.new(0.388235, 0.372549, 0.384314)
o89.Parent = o88
o89.Scale = Vector3.new(0.472222239, 0.416666687, 0.249999985)
o89.MeshType = Enum.MeshType.Wedge
o90.Parent = o1
o90.Material = Enum.Material.SmoothPlastic
o90.BrickColor = BrickColor.new("Smoky grey")
o90.Position = Vector3.new(18.950964, 0.683766007, 14.9020796)
o90.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o90.Anchored = true
o90.FormFactor = Enum.FormFactor.Custom
o90.Size = Vector3.new(0.283333331, 0.200000003, 0.200000003)
o90.CFrame = CFrame.new(18.950964, 0.683766007, 14.9020796, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o90.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o90.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o90.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o90.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o90.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o90.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o90.Color = Color3.new(0.356863, 0.364706, 0.411765)
o91.Parent = o90
o91.Scale = Vector3.new(1, 0.111111112, 0.611111104)
o92.Parent = o1
o92.Material = Enum.Material.SmoothPlastic
o92.BrickColor = BrickColor.new("Black")
o92.Position = Vector3.new(18.950964, 0.992074013, 14.9382162)
o92.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o92.Anchored = true
o92.FormFactor = Enum.FormFactor.Custom
o92.Size = Vector3.new(1.24444449, 0.200000003, 0.200000003)
o92.CFrame = CFrame.new(18.950964, 0.992074013, 14.9382162, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o92.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o92.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o92.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o92.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o92.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o92.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o92.Color = Color3.new(0.105882, 0.164706, 0.207843)
o93.Parent = o92
o93.Scale = Vector3.new(1, 0.361111134, 0.666666687)
o94.Parent = o1
o94.Material = Enum.Material.SmoothPlastic
o94.BrickColor = BrickColor.new("Black")
o94.Position = Vector3.new(18.950964, 0.708733976, 14.827096)
o94.Rotation = Vector3.new(-180, 0.0927856117, 180)
o94.Anchored = true
o94.FormFactor = Enum.FormFactor.Custom
o94.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o94.CFrame = CFrame.new(18.950964, 0.708733976, 14.827096, -0.999998689, -1.0960446e-021, 0.00161941373, -1.1745207e-017, 1, 4.66291637e-018, -0.00161941373, -5.38120031e-018, -0.999998689)
o94.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o94.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o94.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o94.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o94.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o94.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o94.Color = Color3.new(0.105882, 0.164706, 0.207843)
o95.Parent = o94
o95.Scale = Vector3.new(0.611111104, 0.138888881, 0.249999985)
o95.MeshType = Enum.MeshType.Wedge
o96.Parent = o1
o96.Material = Enum.Material.SmoothPlastic
o96.BrickColor = BrickColor.new("Black")
o96.Position = Vector3.new(18.950964, 0.797657013, 14.8104324)
o96.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o96.Anchored = true
o96.FormFactor = Enum.FormFactor.Custom
o96.Size = Vector3.new(0.200000003, 0.205555543, 0.200000003)
o96.CFrame = CFrame.new(18.950964, 0.797657013, 14.8104324, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o96.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o96.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o96.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o96.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o96.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o96.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o96.Color = Color3.new(0.105882, 0.164706, 0.207843)
o97.Parent = o96
o97.Scale = Vector3.new(0.472222239, 1, 0.444444448)
o98.Parent = o1
o98.Material = Enum.Material.SmoothPlastic
o98.BrickColor = BrickColor.new("Black")
o98.Position = Vector3.new(18.950964, 0.875427008, 14.8298864)
o98.Rotation = Vector3.new(-180, 0, -6.27987314e-020)
o98.Anchored = true
o98.FormFactor = Enum.FormFactor.Custom
o98.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o98.CFrame = CFrame.new(18.950964, 0.875427008, 14.8298864, 1, 1.0960446e-021, 0, -1.0960446e-021, -1, 5.38120031e-018, 0, 5.38120031e-018, -1)
o98.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o98.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o98.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o98.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o98.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o98.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o98.Color = Color3.new(0.105882, 0.164706, 0.207843)
o99.Parent = o98
o99.Scale = Vector3.new(0.666666687, 0.249999985, 0.194444433)
o99.MeshType = Enum.MeshType.Wedge
o100.Parent = o1
o100.Material = Enum.Material.SmoothPlastic
o100.BrickColor = BrickColor.new("Black")
o100.Position = Vector3.new(18.988184, 0.986526012, 14.8076496)
o100.Rotation = Vector3.new(3.00000024, 90, 0)
o100.Anchored = true
o100.FormFactor = Enum.FormFactor.Custom
o100.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o100.CFrame = CFrame.new(18.988184, 0.986526012, 14.8076496, 2.57358579e-011, -6.64535094e-012, 1, 0.0523359589, 0.99862951, -1.0960446e-021, -0.99862951, 0.0523359627, 0)
o100.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o100.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o100.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o100.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o100.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o100.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o100.Color = Color3.new(0.105882, 0.164706, 0.207843)
o101.Parent = o100
o101.Scale = Vector3.new(0.694444478, 0.249999985, 0.361111134)
o102.Parent = o1
o102.Material = Enum.Material.SmoothPlastic
o102.BrickColor = BrickColor.new("Black")
o102.Position = Vector3.new(18.950964, 0.875427008, 14.8020916)
o102.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o102.Anchored = true
o102.FormFactor = Enum.FormFactor.Custom
o102.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o102.CFrame = CFrame.new(18.950964, 0.875427008, 14.8020916, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o102.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o102.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o102.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o102.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o102.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o102.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o102.Color = Color3.new(0.105882, 0.164706, 0.207843)
o103.Parent = o102
o103.Scale = Vector3.new(0.0833333358, 0.249999985, 0.666666687)
o104.Parent = o1
o104.Material = Enum.Material.SmoothPlastic
o104.BrickColor = BrickColor.new("Really black")
o104.Position = Vector3.new(18.950964, 0.536549985, 14.6048756)
o104.Rotation = Vector3.new(180, 2.50796006e-006, 5.00895612e-006)
o104.Anchored = true
o104.FormFactor = Enum.FormFactor.Custom
o104.Size = Vector3.new(0.200000003, 0.794444382, 0.244444445)
o104.CFrame = CFrame.new(18.950964, 0.536549985, 14.6048756, 1, -8.74227766e-008, 4.3772161e-008, -8.74227766e-008, -1, -3.8177829e-015, 4.3772161e-008, 6.83386182e-018, -1)
o104.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o104.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o104.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o104.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o104.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o104.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o104.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o105.Parent = o104
o105.Scale = Vector3.new(0.694444478, 1, 1)
o105.MeshType = Enum.MeshType.Wedge
o106.Name = "Mag"
o106.Parent = o1
o106.Material = Enum.Material.SmoothPlastic
o106.BrickColor = BrickColor.new("Really black")
o106.Position = Vector3.new(18.950964, 0.56080699, 14.4704056)
o106.Rotation = Vector3.new(101, 90, 0)
o106.Anchored = true
o106.FormFactor = Enum.FormFactor.Custom
o106.Size = Vector3.new(0.872222185, 0.322222203, 0.200000003)
o106.CFrame = CFrame.new(18.950964, 0.56080699, 14.4704056, -2.79885857e-008, -5.65955389e-008, 1, 0.981627166, -0.190809026, 1.66447549e-008, 0.190809026, 0.981627107, 6.10016286e-008)
o106.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o106.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o106.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o106.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o106.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o106.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o106.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o107.Parent = o106
o107.Scale = Vector3.new(1, 1, 0.611111104)
o108.Parent = o1
o108.Material = Enum.Material.SmoothPlastic
o108.BrickColor = BrickColor.new("Smoky grey")
o108.Position = Vector3.new(18.950964, 0.731004, 14.7326536)
o108.Rotation = Vector3.new(-90, 4.32571142e-006, -90.0000076)
o108.Anchored = true
o108.FormFactor = Enum.FormFactor.Custom
o108.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o108.CFrame = CFrame.new(18.950964, 0.731004, 14.7326536, -1.51107088e-007, 1, 7.54979084e-008, 7.25342942e-015, -7.54979084e-008, 1, 1, 1.51107088e-007, 4.14945855e-015)
o108.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o108.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o108.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o108.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o108.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o108.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o108.Color = Color3.new(0.356863, 0.364706, 0.411765)
o109.Parent = o108
o109.Scale = Vector3.new(0.416666687, 0.694444478, 0.416666687)
o110.Parent = o1
o110.Material = Enum.Material.SmoothPlastic
o110.BrickColor = BrickColor.new("Black")
o110.Position = Vector3.new(18.950964, 0.544876993, 14.4409838)
o110.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o110.Anchored = true
o110.FormFactor = Enum.FormFactor.Custom
o110.Size = Vector3.new(0.227777779, 0.711111128, 0.200000003)
o110.CFrame = CFrame.new(18.950964, 0.544876993, 14.4409838, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o110.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o110.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o110.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o110.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o110.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o110.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o110.Color = Color3.new(0.105882, 0.164706, 0.207843)
o111.Parent = o110
o111.Scale = Vector3.new(1, 1, 0.666666687)
o112.Parent = o1
o112.Material = Enum.Material.SmoothPlastic
o112.BrickColor = BrickColor.new("Black")
o112.Position = Vector3.new(18.950964, 0.775434017, 14.7993164)
o112.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o112.Anchored = true
o112.FormFactor = Enum.FormFactor.Custom
o112.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o112.CFrame = CFrame.new(18.950964, 0.775434017, 14.7993164, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o112.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o112.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o112.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o112.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o112.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o112.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o112.Color = Color3.new(0.105882, 0.164706, 0.207843)
o113.Parent = o112
o113.Scale = Vector3.new(0.666666687, 0.249999985, 0.111111112)
o113.MeshType = Enum.MeshType.Wedge
o114.Parent = o1
o114.Material = Enum.Material.SmoothPlastic
o114.BrickColor = BrickColor.new("Black")
o114.Position = Vector3.new(18.950964, 0.730996013, 14.7298584)
o114.Rotation = Vector3.new(180, 0, -90.0000076)
o114.Anchored = true
o114.FormFactor = Enum.FormFactor.Custom
o114.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o114.CFrame = CFrame.new(18.950964, 0.730996013, 14.7298584, -1.94707198e-007, 1, 0, 1, 1.94707169e-007, -4.37113883e-008, -4.37113883e-008, 0, -1)
o114.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o114.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o114.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o114.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o114.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o114.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o114.Color = Color3.new(0.105882, 0.164706, 0.207843)
o115.Parent = o114
o115.Scale = Vector3.new(0.833333373, 0.666666687, 0.805555522)
o116.Parent = o1
o116.Material = Enum.Material.SmoothPlastic
o116.BrickColor = BrickColor.new("Black")
o116.Position = Vector3.new(18.950964, 0.928192973, 14.7298584)
o116.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o116.Anchored = true
o116.FormFactor = Enum.FormFactor.Custom
o116.Size = Vector3.new(0.827777743, 0.200000003, 0.200000003)
o116.CFrame = CFrame.new(18.950964, 0.928192973, 14.7298584, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o116.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o116.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o116.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o116.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o116.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o116.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o116.Color = Color3.new(0.105882, 0.164706, 0.207843)
o117.Parent = o116
o117.Scale = Vector3.new(1, 0.277777761, 0.666666687)
o118.Parent = o1
o118.Material = Enum.Material.SmoothPlastic
o118.BrickColor = BrickColor.new("Black")
o118.Position = Vector3.new(18.950964, 0.825424016, 14.7993164)
o118.Rotation = Vector3.new(-180, 0, -6.27987314e-020)
o118.Anchored = true
o118.FormFactor = Enum.FormFactor.Custom
o118.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o118.CFrame = CFrame.new(18.950964, 0.825424016, 14.7993164, 1, 1.0960446e-021, 0, -1.0960446e-021, -1, 5.38120031e-018, 0, 5.38120031e-018, -1)
o118.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o118.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o118.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o118.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o118.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o118.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o118.Color = Color3.new(0.105882, 0.164706, 0.207843)
o119.Parent = o118
o119.Scale = Vector3.new(0.666666687, 0.249999985, 0.111111112)
o119.MeshType = Enum.MeshType.Wedge
o120.Parent = o1
o120.Material = Enum.Material.SmoothPlastic
o120.BrickColor = BrickColor.new("Black")
o120.Position = Vector3.new(18.950964, 0.600430012, 14.4798584)
o120.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o120.Anchored = true
o120.FormFactor = Enum.FormFactor.Custom
o120.Size = Vector3.new(0.200000003, 0.666666687, 0.200000003)
o120.CFrame = CFrame.new(18.950964, 0.600430012, 14.4798584, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o120.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o120.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o120.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o120.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o120.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o120.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o120.Color = Color3.new(0.105882, 0.164706, 0.207843)
o121.Parent = o120
o121.Scale = Vector3.new(0.027777778, 1, 0.694444478)
o122.Parent = o1
o122.Material = Enum.Material.SmoothPlastic
o122.BrickColor = BrickColor.new("Black")
o122.Position = Vector3.new(18.950964, 0.980957985, 14.5104237)
o122.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o122.Anchored = true
o122.FormFactor = Enum.FormFactor.Custom
o122.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o122.CFrame = CFrame.new(18.950964, 0.980957985, 14.5104237, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o122.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o122.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o122.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o122.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o122.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o122.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o122.Color = Color3.new(0.105882, 0.164706, 0.207843)
o123.Parent = o122
o123.Scale = Vector3.new(0.694444478, 0.0833333358, 0.333333343)
o123.MeshType = Enum.MeshType.Wedge
o124.Parent = o1
o124.Material = Enum.Material.SmoothPlastic
o124.BrickColor = BrickColor.new("Black")
o124.Position = Vector3.new(18.950964, 0.961513996, 14.6854324)
o124.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o124.Anchored = true
o124.FormFactor = Enum.FormFactor.Custom
o124.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o124.CFrame = CFrame.new(18.950964, 0.961513996, 14.6854324, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o124.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o124.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o124.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o124.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o124.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o124.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o124.Color = Color3.new(0.105882, 0.164706, 0.207843)
o125.Parent = o124
o125.Scale = Vector3.new(0.694444478, 0.277777761, 0.416666687)
o125.MeshType = Enum.MeshType.Wedge
o126.Parent = o1
o126.Material = Enum.Material.SmoothPlastic
o126.BrickColor = BrickColor.new("Really black")
o126.Position = Vector3.new(18.950964, 0.803216994, 14.6715384)
o126.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o126.Anchored = true
o126.FormFactor = Enum.FormFactor.Custom
o126.Size = Vector3.new(0.244444445, 0.200000003, 0.200000003)
o126.CFrame = CFrame.new(18.950964, 0.803216994, 14.6715384, 0, -1.0960446e-021, 1, 5.38120031e-018, 1, -1.0960446e-021, -1, -5.38120031e-018, 0)
o126.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o126.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o126.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o126.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o126.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o126.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o126.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o127.Parent = o126
o127.Scale = Vector3.new(1, 0.972222209, 0.666666687)
o128.Parent = o1
o128.Material = Enum.Material.SmoothPlastic
o128.BrickColor = BrickColor.new("Really black")
o128.Position = Vector3.new(18.950964, 0.672379017, 14.6450357)
o128.Rotation = Vector3.new(-30.0000038, 90, 0)
o128.Anchored = true
o128.FormFactor = Enum.FormFactor.Custom
o128.Size = Vector3.new(0.205555543, 0.200000003, 0.200000003)
o128.CFrame = CFrame.new(18.950964, 0.672379017, 14.6450357, 4.20376836e-008, -2.60188173e-008, 1, -0.50000006, 0.866025388, 4.35066809e-008, -0.866025388, -0.50000006, 2.33994797e-008)
o128.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o128.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o128.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o128.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o128.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o128.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o128.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o129.Parent = o128
o129.Scale = Vector3.new(1, 0.722222269, 0.666666687)
o130.Parent = o1
o130.Material = Enum.Material.SmoothPlastic
o130.BrickColor = BrickColor.new("Really black")
o130.Position = Vector3.new(18.950964, 0.619874001, 14.3270836)
o130.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o130.Anchored = true
o130.FormFactor = Enum.FormFactor.Custom
o130.Size = Vector3.new(0.200000003, 0.705555558, 0.300000012)
o130.CFrame = CFrame.new(18.950964, 0.619874001, 14.3270836, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o130.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o130.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o130.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o130.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o130.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o130.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o130.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o131.Parent = o130
o131.Scale = Vector3.new(0.694444478, 1, 1)
o131.MeshType = Enum.MeshType.Wedge
o132.Parent = o1
o132.Material = Enum.Material.SmoothPlastic
o132.BrickColor = BrickColor.new("Black")
o132.Position = Vector3.new(18.950964, 1.15317094, 14.2876415)
o132.Rotation = Vector3.new(30.0000019, 90, 0)
o132.Anchored = true
o132.FormFactor = Enum.FormFactor.Custom
o132.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o132.CFrame = CFrame.new(18.950964, 1.15317094, 14.2876415, 1.28167699e-010, -5.82076609e-011, 1, 0.5, 0.866025388, -1.0960446e-021, -0.866025388, 0.5, 0)
o132.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o132.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o132.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o132.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o132.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o132.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o132.Color = Color3.new(0.105882, 0.164706, 0.207843)
o133.Parent = o132
o133.Scale = Vector3.new(0.388888866, 0.194444433, 0.416666687)
o134.Parent = o1
o134.Material = Enum.Material.SmoothPlastic
o134.BrickColor = BrickColor.new("Black")
o134.Position = Vector3.new(18.950964, 1.10315704, 14.3126564)
o134.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o134.Anchored = true
o134.FormFactor = Enum.FormFactor.Custom
o134.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o134.CFrame = CFrame.new(18.950964, 1.10315704, 14.3126564, 0, -5.9604659e-008, 1, 5.38120031e-018, 1, 5.9604659e-008, -1, -5.38374141e-018, 0)
o134.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o134.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o134.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o134.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o134.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o134.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o134.Color = Color3.new(0.105882, 0.164706, 0.207843)
o135.Parent = o134
o135.Scale = Vector3.new(0.027777778, 0.861111045, 0.416666687)
o136.Parent = o1
o136.Material = Enum.Material.SmoothPlastic
o136.BrickColor = BrickColor.new("Black")
o136.Position = Vector3.new(18.950964, 0.969842017, 14.2187424)
o136.Rotation = Vector3.new(2.05579065e-016, -2.50796006e-006, 6.27987314e-020)
o136.Anchored = true
o136.FormFactor = Enum.FormFactor.Custom
o136.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o136.CFrame = CFrame.new(18.950964, 0.969842017, 14.2187424, 1, -1.0960446e-021, -4.3772161e-008, -7.78546341e-022, 1, -3.58803156e-018, 4.3772161e-008, -5.38120031e-018, 1)
o136.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o136.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o136.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o136.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o136.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o136.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o136.Color = Color3.new(0.105882, 0.164706, 0.207843)
o137.Parent = o136
o137.Scale = Vector3.new(0.666666687, 0.249999985, 0.74999994)
o137.MeshType = Enum.MeshType.Wedge
o138.Parent = o1
o138.Material = Enum.Material.SmoothPlastic
o138.BrickColor = BrickColor.new("Black")
o138.Position = Vector3.new(18.950964, 0.919857979, 14.2271004)
o138.Rotation = Vector3.new(-0.600734293, 89.980217, -5.99351438e-007)
o138.Anchored = true
o138.FormFactor = Enum.FormFactor.Custom
o138.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o138.CFrame = CFrame.new(18.950964, 0.919857979, 14.2271004, 4.06289615e-008, 4.25005558e-016, 0.99999994, -6.70552254e-008, 0.999999881, 4.68723726e-010, -1.00000012, -9.68575407e-008, 4.47034694e-008)
o138.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o138.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o138.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o138.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o138.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o138.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o138.Color = Color3.new(0.105882, 0.164706, 0.207843)
o139.Parent = o138
o139.Scale = Vector3.new(0.888888896, 0.249999985, 0.666666687)
o140.Parent = o1
o140.Material = Enum.Material.SmoothPlastic
o140.BrickColor = BrickColor.new("Black")
o140.Position = Vector3.new(18.950964, 1.17262495, 14.2539701)
o140.Rotation = Vector3.new(30.0000038, 1.24663654e-006, -90)
o140.Anchored = true
o140.FormFactor = Enum.FormFactor.Custom
o140.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o140.CFrame = CFrame.new(18.950964, 1.17262495, 14.2539701, -4.959292e-008, 1, 2.17579128e-008, -0.866025388, -3.19989653e-008, -0.50000006, -0.50000006, -4.36557457e-008, 0.866025388)
o140.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o140.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o140.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o140.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o140.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o140.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o140.Color = Color3.new(0.105882, 0.164706, 0.207843)
o141.Parent = o140
o141.Scale = Vector3.new(0.194444433, 0.416666687, 0.194444433)
o142.Parent = o1
o142.Material = Enum.Material.SmoothPlastic
o142.BrickColor = BrickColor.new("Really black")
o142.Position = Vector3.new(18.950964, 1.10038495, 14.3182096)
o142.Rotation = Vector3.new(3.08320072e-016, 90, 0)
o142.Anchored = true
o142.FormFactor = Enum.FormFactor.Custom
o142.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o142.CFrame = CFrame.new(18.950964, 1.10038495, 14.3182096, 0, -2.98023295e-008, 1, 5.38120031e-018, 1, 2.98023295e-008, -1, -1.91260039e-018, 0)
o142.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o142.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o142.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o142.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o142.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o142.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o142.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o143.Parent = o142
o143.Scale = Vector3.new(0.027777778, 0.722222269, 0.388888866)
o144.Parent = o1
o144.Material = Enum.Material.SmoothPlastic
o144.BrickColor = BrickColor.new("Black")
o144.Position = Vector3.new(18.950964, 0.986526012, 14.2826424)
o144.Rotation = Vector3.new(3.08320072e-016, 0, 6.27987314e-020)
o144.Anchored = true
o144.FormFactor = Enum.FormFactor.Custom
o144.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o144.CFrame = CFrame.new(18.950964, 0.986526012, 14.2826424, 1, -1.0960446e-021, 0, -1.0960446e-021, 1, -5.38120031e-018, 0, -5.38120031e-018, 1)
o144.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o144.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o144.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o144.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o144.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o144.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o144.Color = Color3.new(0.105882, 0.164706, 0.207843)
o145.Parent = o144
o145.Scale = Vector3.new(0.666666687, 0.416666687, 0.333333343)
o145.MeshType = Enum.MeshType.Wedge
o146.Parent = o1
o146.Material = Enum.Material.SmoothPlastic
o146.BrickColor = BrickColor.new("Really black")
o146.Position = Vector3.new(18.950964, 0.872651994, 14.2770796)
o146.Rotation = Vector3.new(2.18855899e-013, 2.50129006e-006, 180)
o146.Anchored = true
o146.FormFactor = Enum.FormFactor.Custom
o146.Size = Vector3.new(0.200000003, 0.200000003, 0.211111099)
o146.CFrame = CFrame.new(18.950964, 0.872651994, 14.2770796, -1, -8.74227766e-008, 4.36557457e-008, 8.74227766e-008, -1, -3.81975606e-015, 4.36557457e-008, 6.83386182e-018, 1)
o146.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o146.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o146.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o146.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o146.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o146.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o146.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o147.Parent = o146
o147.Scale = Vector3.new(0.666666687, 0.277777761, 1)
o147.MeshType = Enum.MeshType.Wedge
o148.Name = "Handle"
o148.Parent = o1
o148.Material = Enum.Material.SmoothPlastic
o148.BrickColor = BrickColor.new("Really black")
o148.Transparency = 1
o148.Position = Vector3.new(18.9506321, 0.598004997, 14.4106464)
o148.Rotation = Vector3.new(180, -2.50129006e-006, 180)
o148.Anchored = true
o148.FormFactor = Enum.FormFactor.Custom
o148.Size = Vector3.new(0.200000003, 0.205555543, 0.200000003)
o148.CFrame = CFrame.new(18.9506321, 0.598004997, 14.4106464, -1, -1.0960446e-021, -4.36557457e-008, 1.41269847e-021, 1, -1.6144448e-018, 4.36557457e-008, -5.38120031e-018, -1)
o148.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o148.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o148.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o148.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o148.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o148.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o148.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o149.Name = "FireSound"
o149.Parent = o148
o149.SoundId = "rbxassetid://330704232"
o149.Volume = 10
o150.Parent = o148
o150.Scale = Vector3.new(0.99999994, 1, 0.99999994)
Victim = game.Players.LocalPlayer.Character
function Suicide ()
	    Victim.Torso.Neck.C0 = CFrame.new(0,1.5,0) * CFrame.Angles(math.rad(25), -math.rad(0),-math.rad(0))
        Victim.Torso.Neck.C1 = CFrame.new(0,0,0)
		wait(.02)
	    Victim.Torso["Right Shoulder"].C0 = CFrame.new(2.3,.5,0) * CFrame.Angles(math.rad(-90), -math.rad(160),-math.rad(-70))
        Victim.Torso["Right Shoulder"].C1 = CFrame.new(0,0,0)
		ANGLE = -70
		ANGLE2 = -20
		for i=1,7 do
		ANGLE = ANGLE + 10
		ANGLE2 = ANGLE2 + 10
		Victim.Torso["Right Shoulder"].C0 = CFrame.new(2.3,.5,0) * CFrame.Angles(math.rad(-90), -math.rad(160),-math.rad(ANGLE))
        Victim.Torso["Right Shoulder"].C1 = CFrame.new(0,0,0)
		wait(1/30)
		end
		wait(.3)
		o1.Handle.FireSound.Parent = workspace
		workspace.FireSound:Play()
		game.Players.LocalPlayer.Character.Humanoid.Health = 0
		game.Players.LocalPlayer.Character.Head.BrickColor = BrickColor.new("Maroon")
		player = game.Players[Victim.Name]
char = player.Character
			char.Archivable = true
			local rg = char:Clone()
			rg.HumanoidRootPart:Destroy()
			rg.Name = ""
			rg.Humanoid.MaxHealth = 0

			for i, v in pairs(rg.Torso:GetChildren()) do
				if v:IsA("Glue") or v:IsA("Motor6D") then
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
			rg.Torso.Neck:Destroy()
						for i, v in pairs(rg.Torso:GetChildren()) do
				if v:IsA("Motor6D") then
					v:Destroy()
				end
			end
function DEATH ()
OHHNELLY = Instance.new("Part")
OHHNELLY.Parent = rg
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
for i=1, 10 do
	DEATH()
	print"BLOODY"
	wait()
end
end
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
		Weld(o1.Handle, A)
		A.Anchored = false
	else
		local C = A:GetChildren()
		for i=1, #C do
		Get(C[i])
		end
	end
end

function Finale()
	Get(o1)
end

o1.Equipped:connect(Finale)
o1.Unequipped:connect(Finale)
o1.Activated:connect(Suicide)
Finale() 
end)