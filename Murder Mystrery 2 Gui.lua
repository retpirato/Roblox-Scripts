--[[
Made by ThisW0ntGetBanned
Discord: https://discord.gg/MyjGtee
Enjoy Kiddo's
]]

--[[Getting Service]]--
local Plrs = game:GetService("Players");
local Run = game:GetService("RunService");
local CoreGui = game:GetService("CoreGui");
local StartGui = game:GetService("StarterGui");
local Teams = game:GetService("Teams");
local UserInput = game:GetService("UserInputService");
local Light = game:GetService("Lighting");
local Workspace = game:GetService("Workspace");
local CoreGui = game:GetService("CoreGui");
local Players = game:GetService("Players");

local secret953 = secret953 or debug.getupvalues;
local secret500 = secret500 or debug.setupvalue;
local getreg = getreg or debug.getregistry;

plr = game.Players.LocalPlayer ;
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse();
espenabled = false;

pcall(function()
  game.CoreGui.MurderLx:Destroy()
  end)

local cam = workspace.CurrentCamera
local blur = Instance.new("BlurEffect")
blur.Size = 40
blur.Parent = cam
blur.Enabled = true

local Rendering = {
MurderSheriffESP = false,
NameESP = false,
UserESP = false,
}


local User = {
SpeedHax = false,
JumpHax = false,
GravityHax = false,
GodModeHax = false,
CoinsXX = false,
CTP = false,
}

local Teleport = {
L = false,
   }

local ULog = {
["Info"] = "Murder Mystery GUI, remastered, version 3.4, Made by ThisW0ntGetBanned, Discord: https://discord.gg/MyjGtee",
["Date"] = "3/26/19"
   }

function GetPlayers( ... )
for i, v in pairs(game.Players:GetChildren()) do
warn(i,v)
end
end
--[[Local Character Functions]]--
function CreateGod( ... )
if GodMode.Text == "GodeMode: OFF" then
GodMode.Text = "GodeMode: ON"
GodMode.TextColor3 = Color3.new(0,185,0)
game.Players.LocalPlayer.Character.Humanoid:Remove()
Instance.new('Humanoid', game.Players.LocalPlayer.Character)
elseif
GodMode.Text == "GodMode: ON" then
GodMode.Text = "GodMode: ERORR"--LOL :)
GodMode.TextColor3 = Color3.new(170,0,0)
end
end

function CreateGrav( ... )
if Gravity.Text == "Gravity Hax: OFF" then
Gravity.Text = "Gravity Hax: ON"
game.Workspace.Gravity = 80
Gravity.TextColor3 = Color3.new(0,185,0)
elseif
Gravity.Text == "Gravity Hax: ON" then
game.Workspace.Gravity = 196.2
Gravity.Text = "Gravity Hax: OFF"
Gravity.TextColor3 = Color3.new(170,0,0)
end
end

function CreateSpeed( ... )
if Speed.Text == "Speed Hax: OFF" then
Speed.Text = "Speed Hax: ON"
Speed.TextColor3 = Color3.new(0,185,0)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 75
elseif
Speed.Text == "Speed Hax: ON"  then
Speed.Text = "Speed Hax: OFF"
Speed.TextColor3 = Color3.new(170,0,0)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end

function CreateJump( ... )
if Jump.Text == "Jump Hax: OFF" then
Jump.Text = "Jump Hax: ON"
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
Jump.TextColor3 = Color3.new(0,185,0)
elseif
Jump.Text == "Jump Hax: ON" then
Jump.Text = "Jump Hax: OFF"
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
Jump.TextColor3 = Color3.new(170,0,0)
end
end

function CreateCoins( ... )
for i, v in pairs(game.Workspace:GetDescendants()) do
      if v.Name == "Coin" then
         v.CFrame = game.Players.LocalPlayer.Character.Head.CFrame
         end
     end
end

function CreateCLickTP( ... )
mouse.KeyDown:connect(function(key) 
if key == "e" then 
if mouse.Target then 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
end 
end
end) 
end

--[[Rendering Functions]]--

function CreateSherrifMurderESP( ... )
-- body
end

function CreateNames( ... )
Important = {Players = game:GetService("Players"), Workspace = game:GetService("Workspace"), CoreGui = game:GetService("CoreGui")}

local enabledesp = false

function CreateESP(plr)
  
  if plr ~= nil then
      
      local GetChar = plr.Character
      if not GetChar then return end
      
      local GetHead do
          
          repeat wait() until GetChar:FindFirstChild("Head")
          
      end
      GetHead = GetChar.Head        
      
      local bb = Instance.new("BillboardGui", Important.CoreGui)
      bb.Adornee = GetHead
      bb.ExtentsOffset = Vector3.new(0, 1, 0)
      bb.AlwaysOnTop = true
      bb.Size = UDim2.new(0, 5, 0, 5)
      bb.StudsOffset = Vector3.new(0, 3, 0)
      bb.Name = "ESP_PLAYER_" .. plr.Name

      local displayframe = Instance.new("Frame", bb)
      displayframe.ZIndex = 10
      displayframe.BackgroundTransparency = 1
      displayframe.Size = UDim2.new(1,0,1,0)
      
      local name = Instance.new("TextLabel", displayframe)
      name.Name = "Name"
      name.ZIndex = 10
      name.Text = plr.Name
      name.Visible = true
      name.TextColor3 = Color3.new(255, 0, 255)
      name.BackgroundTransparency = 1
      name.Size = UDim2.new(1,0,10,0)
      name.Font = Enum.Font.SourceSansLight
      name.TextSize = 20
      name.TextStrokeTransparency = .5
      
  end
  
end

  
  for i,v in pairs(Important.Players:GetChildren()) do
      if game.GameId == 1320186298 then return end
      CreateESP(v)
      
  end
end
--[[Teleportation]]--
function CreateLobby( ... )
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.56, 140, -11.75) + Vector3.new(1, 0, 0)
end

function CreateGun( ... )
game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
end



local MurderLx = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local LocalFrame = Instance.new("Frame")
local LocalTitle = Instance.new("TextLabel")
local Speed = Instance.new("TextButton")
local Gravity = Instance.new("TextButton")
local Coins = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local GodMode = Instance.new("TextButton")
local ClickTP = Instance.new("TextButton")
local TeleportFrame = Instance.new("Frame")
local TPTItle = Instance.new("TextLabel")
local GTP = Instance.new("TextButton")
local TPL = Instance.new("TextButton")
local UpdateFrame = Instance.new("Frame")
local UpdateTitle = Instance.new("TextLabel")
local Update1 = Instance.new("TextLabel")
local Update2 = Instance.new("TextLabel")
local VisualFrame = Instance.new("Frame")
local VisualTitle = Instance.new("TextLabel")
local MSESP = Instance.new("TextButton")
local NESP = Instance.new("TextButton")
local Credits = Instance.new("TextLabel")
local WaterMark = Instance.new("TextLabel")
local Toggle = Instance.new("TextButton")

MurderLx.Name = "MurderLx"
MurderLx.Parent = game.CoreGui
MurderLx.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = MurderLx
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.412844032, 0, 0.415244609, 0)
MainFrame.Size = UDim2.new(0, 100, 0, 100)

LocalFrame.Name = "LocalFrame"
LocalFrame.Parent = MainFrame
LocalFrame.Active = true
LocalFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
LocalFrame.BackgroundTransparency = 0.20000000298023
LocalFrame.BorderSizePixel = 0
LocalFrame.Position = UDim2.new(-3.48978591, 0, -3.01718998, 0)
LocalFrame.Selectable = true
LocalFrame.Size = UDim2.new(0, 241, 0, 362)

LocalTitle.Name = "LocalTitle"
LocalTitle.Parent = LocalFrame
LocalTitle.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
LocalTitle.BackgroundTransparency = 1
LocalTitle.BorderSizePixel = 0
LocalTitle.Size = UDim2.new(0, 241, 0, 50)
LocalTitle.Font = Enum.Font.SourceSansSemibold
LocalTitle.Text = "Local User"
LocalTitle.TextColor3 = Color3.new(1, 1, 1)
LocalTitle.TextSize = 25

Speed.Name = "Speed"
Speed.Parent = LocalFrame
Speed.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Speed.BackgroundTransparency = 1
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0, 0, 0.136924356, 0)
Speed.Size = UDim2.new(0, 241, 0, 40)
Speed.Font = Enum.Font.SourceSans
Speed.Text = "Speed Hax: OFF"
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.TextSize = 19

Gravity.Name = "Gravity"
Gravity.Parent = LocalFrame
Gravity.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Gravity.BackgroundTransparency = 1
Gravity.BorderSizePixel = 0
Gravity.Position = UDim2.new(0, 0, 0.270816833, 0)
Gravity.Size = UDim2.new(0, 241, 0, 40)
Gravity.Font = Enum.Font.SourceSans
Gravity.Text = "Gravity Hax: OFF"
Gravity.TextColor3 = Color3.new(1, 1, 1)
Gravity.TextSize = 19

Coins.Name = "Coins"
Coins.Parent = LocalFrame
Coins.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Coins.BackgroundTransparency = 1
Coins.BorderSizePixel = 0
Coins.Position = UDim2.new(0, 0, 0.406766862, 0)
Coins.Size = UDim2.new(0, 241, 0, 40)
Coins.Font = Enum.Font.SourceSans
Coins.Text = "Telelport Coins"
Coins.TextColor3 = Color3.new(1, 1, 1)
Coins.TextSize = 19

Jump.Name = "Jump"
Jump.Parent = LocalFrame
Jump.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Jump.BackgroundTransparency = 1
Jump.BorderSizePixel = 0
Jump.Position = UDim2.new(0, 0, 0.542075634, 0)
Jump.Size = UDim2.new(0, 241, 0, 40)
Jump.Font = Enum.Font.SourceSans
Jump.Text = "Jump Hax: OFF"
Jump.TextColor3 = Color3.new(1, 1, 1)
Jump.TextSize = 19

GodMode.Name = "GodMode"
GodMode.Parent = LocalFrame
GodMode.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
GodMode.BackgroundTransparency = 1
GodMode.BorderSizePixel = 0
GodMode.Position = UDim2.new(0, 0, 0.677073002, 0)
GodMode.Size = UDim2.new(0, 241, 0, 40)
GodMode.Font = Enum.Font.SourceSans
GodMode.Text = "GodMode: OFF"
GodMode.TextColor3 = Color3.new(1, 1, 1)
GodMode.TextSize = 19

ClickTP.Name = "ClickTP"
ClickTP.Parent = LocalFrame
ClickTP.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
ClickTP.BackgroundTransparency = 1
ClickTP.BorderSizePixel = 0
ClickTP.Position = UDim2.new(0, 0, 0.831193626, 0)
ClickTP.Size = UDim2.new(0, 241, 0, 40)
ClickTP.Font = Enum.Font.SourceSans
ClickTP.Text = "ClickTeleport(e)"
ClickTP.TextColor3 = Color3.new(1, 1, 1)
ClickTP.TextSize = 19

TeleportFrame.Name = "TeleportFrame"
TeleportFrame.Parent = MainFrame
TeleportFrame.Active = true
TeleportFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
TeleportFrame.BackgroundTransparency = 0.20000000298023
TeleportFrame.BorderSizePixel = 0
TeleportFrame.Position = UDim2.new(-0.790764749, 0, -3.01718998, 0)
TeleportFrame.Selectable = true
TeleportFrame.Size = UDim2.new(0, 241, 0, 138)

TPTItle.Name = "TPTItle"
TPTItle.Parent = TeleportFrame
TPTItle.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TPTItle.BackgroundTransparency = 1
TPTItle.BorderSizePixel = 0
TPTItle.Size = UDim2.new(0, 241, 0, 50)
TPTItle.Font = Enum.Font.SourceSansSemibold
TPTItle.Text = "Teleportation "
TPTItle.TextColor3 = Color3.new(1, 1, 1)
TPTItle.TextSize = 25

GTP.Name = "GTP"
GTP.Parent = TeleportFrame
GTP.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
GTP.BackgroundTransparency = 1
GTP.BorderSizePixel = 0
GTP.Position = UDim2.new(0, 0, 0.64612627, 0)
GTP.Size = UDim2.new(0, 241, 0, 40)
GTP.Font = Enum.Font.SourceSans
GTP.Text = "Teleport Gun"
GTP.TextColor3 = Color3.new(1, 1, 1)
GTP.TextSize = 19

TPL.Name = "TPL"
TPL.Parent = TeleportFrame
TPL.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TPL.BackgroundTransparency = 1
TPL.BorderSizePixel = 0
TPL.Position = UDim2.new(0, 0, 0.349024832, 0)
TPL.Size = UDim2.new(0, 241, 0, 40)
TPL.Font = Enum.Font.SourceSans
TPL.Text = "Teleport To Lobby"
TPL.TextColor3 = Color3.new(1, 1, 1)
TPL.TextSize = 19

UpdateFrame.Name = "UpdateFrame"
UpdateFrame.Parent = MainFrame
UpdateFrame.Active = true
UpdateFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
UpdateFrame.BackgroundTransparency = 0.20000000298023
UpdateFrame.BorderSizePixel = 0
UpdateFrame.Position = UDim2.new(1.99314976, 0, -3.01718998, 0)
UpdateFrame.Selectable = true
UpdateFrame.Size = UDim2.new(0, 241, 0, 301)

UpdateTitle.Name = "UpdateTitle"
UpdateTitle.Parent = UpdateFrame
UpdateTitle.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
UpdateTitle.BackgroundTransparency = 1
UpdateTitle.BorderSizePixel = 0
UpdateTitle.Size = UDim2.new(0, 241, 0, 50)
UpdateTitle.Font = Enum.Font.SourceSansSemibold
UpdateTitle.Text = "Update Log"
UpdateTitle.TextColor3 = Color3.new(1, 1, 1)
UpdateTitle.TextSize = 25

Update1.Name = "Update1"
Update1.Parent = UpdateFrame
Update1.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Update1.BackgroundTransparency = 1
Update1.BorderSizePixel = 0
Update1.Position = UDim2.new(0, 0, 0.187280804, 0)
Update1.Size = UDim2.new(0, 240, 0, 50)
Update1.Font = Enum.Font.SourceSans
Update1.Text = "Version: 3.4 Remastered"
Update1.TextColor3 = Color3.new(1, 1, 1)
Update1.TextSize = 20

Update2.Name = "Update2"
Update2.Parent = UpdateFrame
Update2.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Update2.BackgroundTransparency = 1
Update2.BorderSizePixel = 0
Update2.Position = UDim2.new(0.00414937781, 0, 0.297104955, 0)
Update2.Size = UDim2.new(0, 240, 0, 210)
Update2.Font = Enum.Font.SourceSans
Update2.Text = "\nTeleport Coins: Fixed\n\nVersion: 3.4 Remastered\n\nRendering: Smoother\n\nMade Everything Toggable\n\nLast Update: 3/26/19"
Update2.TextColor3 = Color3.new(1, 1, 1)
Update2.TextSize = 20
Update2.TextWrapped = true

VisualFrame.Name = "VisualFrame"
VisualFrame.Parent = MainFrame
VisualFrame.Active = true
VisualFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
VisualFrame.BackgroundTransparency = 0.20000000298023
VisualFrame.BorderSizePixel = 0
VisualFrame.Position = UDim2.new(-6.19391441, 0, -3.01718998, 0)
VisualFrame.Selectable = true
VisualFrame.Size = UDim2.new(0, 241, 0, 173)

VisualTitle.Name = "VisualTitle"
VisualTitle.Parent = VisualFrame
VisualTitle.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
VisualTitle.BackgroundTransparency = 1
VisualTitle.BorderSizePixel = 0
VisualTitle.Size = UDim2.new(0, 241, 0, 50)
VisualTitle.Font = Enum.Font.SourceSansSemibold
VisualTitle.Text = "Rendering"
VisualTitle.TextColor3 = Color3.new(1, 1, 1)
VisualTitle.TextSize = 25

MSESP.Name = "MSESP"
MSESP.Parent = VisualFrame
MSESP.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
MSESP.BackgroundTransparency = 1
MSESP.BorderSizePixel = 0
MSESP.Position = UDim2.new(-0.00414937781, 0, 0.285714358, 0)
MSESP.Size = UDim2.new(0, 241, 0, 40)
MSESP.Font = Enum.Font.SourceSans
MSESP.Text = "Murder/Sheriff ESP: OFF"
MSESP.TextColor3 = Color3.new(1, 1, 1)
MSESP.TextSize = 19

NESP.Name = "NESP"
NESP.Parent = VisualFrame
NESP.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
NESP.BackgroundTransparency = 1
NESP.BorderSizePixel = 0
NESP.Position = UDim2.new(0, 0, 0.617465258, 0)
NESP.Size = UDim2.new(0, 241, 0, 40)
NESP.Font = Enum.Font.SourceSans
NESP.Text = "Name ESP: OFF"
NESP.TextColor3 = Color3.new(1, 1, 1)
NESP.TextSize = 19

Credits.Name = "Credits"
Credits.Parent = MainFrame
Credits.BackgroundColor3 = Color3.new(1, 1, 1)
Credits.BackgroundTransparency = 1
Credits.Position = UDim2.new(-2.36211014, 0, -3.2644937, 0)
Credits.Size = UDim2.new(0, 200, 0, 24)
Credits.Font = Enum.Font.SourceSans
Credits.Text = "By ThisW0ntGetBanned"
Credits.TextColor3 = Color3.new(0, 1, 0)
Credits.TextSize = 14

WaterMark.Name = "WaterMark"
WaterMark.Parent = MainFrame
WaterMark.BackgroundColor3 = Color3.new(1, 1, 1)
WaterMark.BackgroundTransparency = 1
WaterMark.Position = UDim2.new(-6.1945262, 0, -3.52407289, 0)
WaterMark.Size = UDim2.new(0, 434, 0, 50)
WaterMark.Font = Enum.Font.SourceSans
WaterMark.Text = "Murder Mystery Haxx v3.4 Remastered"
WaterMark.TextColor3 = Color3.new(0.333333, 1, 0)
WaterMark.TextSize = 30

Toggle.Name = "Toggle"
Toggle.Parent = MurderLx
Toggle.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.859327197, 0, 0.772468686, 0)
Toggle.Size = UDim2.new(0, 166, 0, 25)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Toggle"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 20


Toggle.MouseButton1Click:connect(function()
if MainFrame.Visible == true
then
MainFrame.Visible = false
blur.Enabled = false
elseif
MainFrame.Visible == false
then
MainFrame.Visible = true
blur.Enabled = true
end
end)

--[[Local Character]]--
ClickTP.MouseButton1Click:connect(function()
mouse.KeyDown:connect(function(key) 
if key == "e" then 
if mouse.Target then 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
end 
end
end) 
end)

Coins.MouseButton1Click:connect(function()
CreateCoins()
end)


GodMode.MouseButton1Click:connect(function()
if GodMode.Text == "GodMode: OFF" then
GodMode.Text = "GodMode: ON"
GodMode.TextColor3 = Color3.new(0,185,0)
game.Players.LocalPlayer.Character.Humanoid:Remove()
Instance.new('Humanoid', game.Players.LocalPlayer.Character)
elseif
GodMode.Text == "GodMode: ON" then
GodMode.Text = "GodMode: ERORR"--LOL :)
GodMode.TextColor3 = Color3.new(170,0,0)
end
end)


Gravity.MouseButton1Click:connect(function()
if Gravity.Text == "Gravity Hax: OFF" then
Gravity.Text = "Gravity Hax: ON"
game.Workspace.Gravity = 80
Gravity.TextColor3 = Color3.new(0,185,0)
elseif
Gravity.Text == "Gravity Hax: ON" then
game.Workspace.Gravity = 196.2
Gravity.Text = "Gravity Hax: OFF"
Gravity.TextColor3 = Color3.new(170,0,0)
end
end)


Jump.MouseButton1Click:connect(function()
if Jump.Text == "Jump Hax: OFF" then
Jump.Text = "Jump Hax: ON"
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 120
Jump.TextColor3 = Color3.new(0,185,0)
elseif
Jump.Text == "Jump Hax: ON" then
Jump.Text = "Jump Hax: OFF"
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
Jump.TextColor3 = Color3.new(170,0,0)
end
end)


Speed.MouseButton1Click:connect(function()
if Speed.Text == "Speed Hax: OFF" then
Speed.Text = "Speed Hax: ON"
Speed.TextColor3 = Color3.new(0,185,0)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 75
elseif
Speed.Text == "Speed Hax: ON"  then
Speed.Text = "Speed Hax: OFF"
Speed.TextColor3 = Color3.new(170,0,0)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
end
end)

--[[Teleport]]--
TPL.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-109.56, 140, -11.75) + Vector3.new(1, 0, 0)
end)

GTP.MouseButton1Click:connect(function()
game.Workspace.GunDrop.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + Vector3.new(2,0,0)
end)

--[[Rendering]]--
MSESP.MouseButton1Click:connect(function()
if espenabled == false then
espenabled = true
MSESP.Text = ("Murder/Sheriff ESP:ON")
MSESP.TextColor3 = Color3.new(0,185,0)
local faces = {"Back","Bottom","Front","Left","Right","Top"}
for _, v in pairs(game.Players:GetChildren()) do if v.Name ~= game.Players.LocalPlayer.Name then
local bgui = Instance.new("BillboardGui",v.Character.Head)
bgui.Name = ("EGUI")
bgui.AlwaysOnTop = true
bgui.ExtentsOffset = Vector3.new(0,3,0)
bgui.Size = UDim2.new(0,200,0,50)
local nam = Instance.new("TextLabel",bgui)
nam.Text = v.Name
nam.BackgroundTransparency = 1
nam.TextSize = 30
nam.Font = ("Arial")
nam.TextColor3 = Color3.new(0,0,0)
nam.Size = UDim2.new(0,200,0,50)
if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
for _, p in pairs(v.Character:GetChildren()) do
if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
for _, f in pairs(faces) do
local m = Instance.new("SurfaceGui",p)
m.Name = ("EGUI")
m.Face = f
m.AlwaysOnTop = true
local mf = Instance.new("Frame",m)
mf.Size = UDim2.new(1,0,1,0)
mf.BorderSizePixel = 0
mf.BackgroundTransparency = 0.5
mf.BackgroundColor3 = Color3.new(0,0,255)
end
end
end
elseif v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
for _, p in pairs(v.Character:GetChildren()) do
if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
for _, f in pairs(faces) do
local m = Instance.new("SurfaceGui",p)
m.Name = ("EGUI")
m.Face = f
m.AlwaysOnTop = true
local mf = Instance.new("Frame",m)
mf.Size = UDim2.new(1,0,1,0)
mf.BorderSizePixel = 0
mf.BackgroundTransparency = 0.5
mf.BackgroundColor3 = Color3.new(255,0,0)
end
end
end
else
for _, p in pairs(v.Character:GetChildren()) do
if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
for _, f in pairs(faces) do
local m = Instance.new("SurfaceGui",p)
m.Name = ("EGUI")
m.Face = f
m.AlwaysOnTop = true
local mf = Instance.new("Frame",m)
mf.Size = UDim2.new(1,0,1,0)
mf.BorderSizePixel = 0
mf.BackgroundTransparency = 0.5
mf.BackgroundColor3 = Color3.new(0,255,0)
local q = ("traeglaelnltlejsjs.rkakpythocr")
end
end
end
end
end end

else
espenabled = false
MSESP.Text = ("Murder/Sheriff ESP:OFF")
MSESP.TextColor3 = Color3.new(170,0,0)
for _, v in pairs(game.Workspace:GetDescendants()) do
if v.Name == ("EGUI") then
v:Remove()
end
end
end
end)

NESP.MouseButton1Click:connect(function()
if NESP.Text == "Name ESP: OFF" then
NESP.Text = "Name ESP: ON"
NESP.TextColor3 = Color3.new(0,185,0)
Important = {Players = game:GetService("Players"), Workspace = game:GetService("Workspace"), CoreGui = game:GetService("CoreGui")}

local enabledesp = false

function CreateESP(plr)
  
  if plr ~= nil then
      
      local GetChar = plr.Character
      if not GetChar then return end
      
      local GetHead do
          
          repeat wait() until GetChar:FindFirstChild("Head")
          
      end
      GetHead = GetChar.Head        
      
      local bb = Instance.new("BillboardGui", Important.CoreGui)
      bb.Adornee = GetHead
      bb.ExtentsOffset = Vector3.new(0, 1, 0)
      bb.AlwaysOnTop = true
      bb.Size = UDim2.new(0, 5, 0, 5)
      bb.StudsOffset = Vector3.new(0, 3, 0)
      bb.Name = "ESP_PLAYER_" .. plr.Name

      local displayframe = Instance.new("Frame", bb)
      displayframe.ZIndex = 10
      displayframe.BackgroundTransparency = 1
      displayframe.Size = UDim2.new(1,0,1,0)
      
      local name = Instance.new("TextLabel", displayframe)
      name.Name = "Name"
      name.ZIndex = 10
      name.Text = plr.Name
      name.Visible = true
      name.TextColor3 = Color3.new(255, 0, 255)
      name.BackgroundTransparency = 1
      name.Size = UDim2.new(1,0,10,0)
      name.Font = Enum.Font.SourceSansLight
      name.TextSize = 20
      name.TextStrokeTransparency = .5
      
  end
  
end

  
  for i,v in pairs(Important.Players:GetChildren()) do
      if game.GameId == 1320186298 then return end
      CreateESP(v)
      
  end
  elseif
   NESP.Text == "Name ESP: ON" then
NESP.Text = "Name ESP: OFF"
NESP.TextColor3 = Color3.new(170,0,0)
  for i, v in pairs(game.CoreGui:GetChildren()) do 
if v.ClassName == "BillboardGui" then 
v:Remove()
end
end
end
end)

--[[The End nigga]]--