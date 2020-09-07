-- Big boobs lol
local Workspace = game:GetService("Workspace")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local PhantomLxUi = Instance.new("ScreenGui")
local LxUI = Instance.new("Frame")
local Noclip = Instance.new("TextButton")
local Logo = Instance.new("ImageLabel")
local Fly = Instance.new("TextButton")
local Xray = Instance.new("TextButton")
local EspChams = Instance.new("TextButton")
local Info = Instance.new("TextButton")
local InfoFrame = Instance.new("Frame")
local Info_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Aimbot = Instance.new("TextButton")
local SpeedWalk = Instance.new("TextButton")
local Credit = Instance.new("TextLabel")
local ExitButton = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local Esp = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")
local Plr = Players.LocalPlayer
local Clipon = false
-- ur dad

PhantomLxUi.Name = "PhantomLxUi"
PhantomLxUi.Parent = game.CoreGui

LxUI.Name = "LxUI"
LxUI.Parent = PhantomLxUi
LxUI.BackgroundColor3 = Color3.new(0, 0, 0)
LxUI.BackgroundTransparency = 0.30000001192093
LxUI.BorderColor3 = Color3.new(1, 0, 1)
LxUI.BorderSizePixel = 2
LxUI.Position = UDim2.new(0, 0, 0, 127)
LxUI.Size = UDim2.new(0, 200, 0, 486)

Noclip.Name = "Noclip"
Noclip.Parent = LxUI
Noclip.BackgroundColor3 = Color3.new(1, 1, 1)
Noclip.BackgroundTransparency = 0.9990000128746
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0, 0, 0, 50)
Noclip.Size = UDim2.new(0, 200, 0, 44)
Noclip.Font = Enum.Font.SourceSans
Noclip.Text = "Noclip: off"
Noclip.TextColor3 = Color3.new(170,0,0)
Noclip.TextSize = 24
Noclip.TextWrapped = true

Logo.Name = "Logo"
Logo.Parent = LxUI
Logo.BackgroundColor3 = Color3.new(1, 1, 1)
Logo.BackgroundTransparency = 1
Logo.Visible=true
Logo.Size = UDim2.new(0, 200, 0, 50)
Logo.Image = "http://www.roblox.com/asset/?id=2078774632"

Fly.Name = "Fly"
Fly.Parent = LxUI
Fly.BackgroundColor3 = Color3.new(1, 1, 1)
Fly.BackgroundTransparency = 0.9990000128746
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0, 0, 0, 239)
Fly.Size = UDim2.new(0, 200, 0, 44)
Fly.Font = Enum.Font.SourceSans
Fly.Text = "Fly: off"
Fly.TextColor3 = Color3.new(170,0,0)
Fly.TextSize = 24
Fly.TextWrapped = true

Xray.Name = "Xray"
Xray.Parent = LxUI
Xray.BackgroundColor3 = Color3.new(1, 1, 1)
Xray.BackgroundTransparency = 0.9990000128746
Xray.BorderSizePixel = 0
Xray.Position = UDim2.new(0, 0, 0, 188)
Xray.Size = UDim2.new(0, 200, 0, 44)
Xray.Font = Enum.Font.SourceSans
Xray.Text = "X-Ray: off"
Xray.TextColor3 = Color3.new(0, 185, 0)
Xray.TextSize = 24
Xray.TextWrapped = true

EspChams.Name = "EspChams"
EspChams.Parent = LxUI
EspChams.BackgroundColor3 = Color3.new(1, 1, 1)
EspChams.BackgroundTransparency = 0.9990000128746
EspChams.BorderSizePixel = 0
EspChams.Position = UDim2.new(0, 0, 0, 144)
EspChams.Size = UDim2.new(0, 200, 0, 44)
EspChams.Font = Enum.Font.SourceSans
EspChams.Text = "Esp chams: off"
EspChams.TextColor3 = Color3.new(170,0,0)
EspChams.TextSize = 24
EspChams.TextWrapped = true

Info.Name = "Info"
Info.Parent = LxUI
Info.BackgroundColor3 = Color3.new(1, 1, 1)
Info.BackgroundTransparency = 0.9990000128746
Info.BorderSizePixel = 0
Info.Position = UDim2.new(0, 0, 0, 390)
Info.Size = UDim2.new(0, 200, 0, 44)
Info.Font = Enum.Font.SourceSans
Info.Text = "How to use / Info"
Info.TextColor3 = Color3.new(170,0,0)
Info.TextSize = 30
Info.TextWrapped = true

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = Info
InfoFrame.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
InfoFrame.Position = UDim2.new(1.64499998, 0, -7.43181801, 0)
InfoFrame.Size = UDim2.new(0, 720, 0, 766)
InfoFrame.Visible = false

Info_2.Name = "Info"
Info_2.Parent = InfoFrame
Info_2.BackgroundColor3 = Color3.new(1, 1, 1)
Info_2.BackgroundTransparency = 1
Info_2.Position = UDim2.new(0, 0, 0.0496083535, 0)
Info_2.Size = UDim2.new(0, 720, 0, 728)
Info_2.Font = Enum.Font.SourceSans
Info_2.Text = "Works with: All Executors that are paid c:\n\nX-Ray: Once you Click this Press \"e\" to Delete the map and \"e\" to add it back\n\nFly: Press Fly and then press space and fly up, let go space and you walk on air\n\nEsp: Shows a Character through the map in red\n\nEsp Chams: Shows a Character through the map with his body parts shown in different colors\n\nSpeed Walk: Coming Soon!!!\n\nNoclip: Coming Soon!!!\n\nAimbot: Coming Soon!!!\n\n\nPatch Update 3.0 Rewrite 7/16/18\n---------------------------------\nUpdated every Function\nUpdated UI\nAdded how to use\nAdd More functions\n\nPatch Update 2.0 6/13/18\n------------------------\nUpdated UI\nNo Theme\n2 new functions\nUnpatched 1 function\n\n\nPatch Update 1.0 6/13/18\n-------------------------\n2 functions\nTheme\n"
Info_2.TextColor3 = Color3.new(1, 1, 1)
Info_2.TextScaled = true
Info_2.TextSize = 14
Info_2.TextWrapped = true

TextButton.Parent = InfoFrame
TextButton.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.894444466, 0, 0, 0)
TextButton.Size = UDim2.new(0, 76, 0, 26)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Close"
TextButton.TextColor3 = Color3.new(0, 1, 0)
TextButton.TextSize = 20

Aimbot.Name = "Aimbot"
Aimbot.Parent = LxUI
Aimbot.BackgroundColor3 = Color3.new(1, 1, 1)
Aimbot.BackgroundTransparency = 0.9990000128746
Aimbot.BorderSizePixel = 0
Aimbot.Position = UDim2.new(0, 0, 0, 337)
Aimbot.Size = UDim2.new(0, 200, 0, 44)
Aimbot.Font = Enum.Font.SourceSans
Aimbot.Text = "Aimbot Coming Soon"
Aimbot.TextColor3 = Color3.new(170,0,0)
Aimbot.TextSize = 23
Aimbot.TextWrapped = true

SpeedWalk.Name = "SpeedWalk"
SpeedWalk.Parent = LxUI
SpeedWalk.BackgroundColor3 = Color3.new(1, 1, 1)
SpeedWalk.BackgroundTransparency = 0.9990000128746
SpeedWalk.BorderSizePixel = 0
SpeedWalk.Position = UDim2.new(0, 0, 0, 283)
SpeedWalk.Size = UDim2.new(0, 200, 0, 44)
SpeedWalk.Font = Enum.Font.SourceSans
SpeedWalk.Text = "Speed Walk Coming Soon"
SpeedWalk.TextColor3 = Color3.new(170,0,0)
SpeedWalk.TextScaled = true
SpeedWalk.TextSize = 23
SpeedWalk.TextWrapped = true

Credit.Name = "Credit"
Credit.Parent = LxUI
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0, 0, 0.89316237, 0)
Credit.Size = UDim2.new(0, 200, 0, 50)
Credit.Font = Enum.Font.SourceSans
Credit.Text = "Made by ThisW0ntGetBanned"
Credit.TextColor3 = Color3.new(0.333333, 1, 0)
Credit.TextSize = 18

ExitButton.Name = "ExitButton"
ExitButton.Parent = LxUI
ExitButton.BackgroundColor3 = Color3.new(1, 1, 1)
ExitButton.BackgroundTransparency = 1
ExitButton.Position = UDim2.new(0.904999971, 0, 0, 0)
ExitButton.Size = UDim2.new(0, 19, 0, 20)
ExitButton.Font = Enum.Font.SourceSans
ExitButton.Text = "X"
ExitButton.TextColor3 = Color3.new(1, 1, 0)
ExitButton.TextScaled = true
ExitButton.TextSize = 14
ExitButton.TextWrapped = true

Open.Name = "Open"
Open.Parent = LxUI
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BorderColor3 = Color3.new(0.666667, 0, 0)
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, -0.053497944, 0)
Open.Size = UDim2.new(0, 72, 0, 20)
Open.Visible = false
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 20

Esp.Name = "Esp"
Esp.Parent = LxUI
Esp.BackgroundColor3 = Color3.new(1, 1, 1)
Esp.BackgroundTransparency = 0.9990000128746
Esp.BorderSizePixel = 0
Esp.Position = UDim2.new(0, 0, 0, 100)
Esp.Size = UDim2.new(0, 200, 0, 44)
Esp.Font = Enum.Font.SourceSans
Esp.Text = "Esp: off"
Esp.TextColor3 = Color3.new(170,0,0)
Esp.TextSize = 24
Esp.TextWrapped = true

TextLabel.Parent = LxUI
TextLabel.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0900000036, 0, 0.893004119, 0)
TextLabel.Size = UDim2.new(0, 163, 0, 1)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 14

TextLabel_2.Parent = LxUI
TextLabel_2.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.0900000036, 0, 0.781893015, 0)
TextLabel_2.Size = UDim2.new(0, 163, 0, 1)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = ""
TextLabel_2.TextColor3 = Color3.new(0, 0, 0)
TextLabel_2.TextSize = 14

TextLabel_3.Parent = LxUI
TextLabel_3.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0900000036, 0, 0.672839522, 0)
TextLabel_3.Size = UDim2.new(0, 163, 0, 1)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = ""
TextLabel_3.TextColor3 = Color3.new(0, 0, 0)
TextLabel_3.TextSize = 14

TextLabel_4.Parent = LxUI
TextLabel_4.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0900000036, 0, 0.580246925, 0)
TextLabel_4.Size = UDim2.new(0, 163, 0, 1)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = ""
TextLabel_4.TextColor3 = Color3.new(0, 0, 0)
TextLabel_4.TextSize = 14

TextLabel_5.Parent = LxUI
TextLabel_5.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0900000036, 0, 0.475308657, 0)
TextLabel_5.Size = UDim2.new(0, 163, 0, 1)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = ""
TextLabel_5.TextColor3 = Color3.new(0, 0, 0)
TextLabel_5.TextSize = 14

TextLabel_6.Parent = LxUI
TextLabel_6.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0900000036, 0, 0.384773672, 0)
TextLabel_6.Size = UDim2.new(0, 163, 0, 1)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = ""
TextLabel_6.TextColor3 = Color3.new(0, 0, 0)
TextLabel_6.TextSize = 14

TextLabel_7.Parent = LxUI
TextLabel_7.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0900000036, 0, 0.294238687, 0)
TextLabel_7.Size = UDim2.new(0, 163, 0, 1)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = ""
TextLabel_7.TextColor3 = Color3.new(0, 0, 0)
TextLabel_7.TextSize = 14

TextLabel_8.Parent = LxUI
TextLabel_8.BackgroundColor3 = Color3.new(1, 0, 1)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.0900000036, 0, 0.193415642, 0)
TextLabel_8.Size = UDim2.new(0, 163, 0, 1)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = ""
TextLabel_8.TextColor3 = Color3.new(0, 0, 0)
TextLabel_8.TextSize = 14

-- Booty --
ExitButton.MouseButton1Click:connect(function()
LxUI:Destroy()
end)

Info.MouseButton1Click:connect(function()
InfoFrame.Visible=true
end)

TextButton.MouseButton1Click:connect(function()
InfoFrame.Visible=false
end)

Noclip.MouseButton1Click:connect(function()
   if Noclip.Text == "Noclip: off" then
       Clipon = true
       Noclip.Text = "Noclip: on"
       Noclip.TextColor3 = Color3.new(0,185,0)
       Stepped = game:GetService("RunService").Stepped:Connect(function()
           if not Clipon == false then
               for a, b in pairs(Workspace:GetChildren()) do
               if b.Name == Plr.Name then
               for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
               if v:IsA("BasePart") then
               v.CanCollide = false
               end end end end
           else
               Stepped:Disconnect()
           end
       end)
   elseif Noclip.Text == "Noclip: on" then
       Clipon = false
       Noclip.Text = "Noclip: off"
       Noclip.TextColor3 = Color3.new(170,0,0)
   end
end)

local Xray 
local Move = game.Workspace.Map
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local mouse = Players.LocalPlayer:GetMouse()
local a = false

mouse.KeyDown:Connect(function(key)
if key == "e" then
if a == false then
Move.Parent = ReplicatedStorage
Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
a = true
elseif a == true then
Move.Parent = game.Workspace
Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
a = false
end
end
end)

EspChams.MouseButton1Click:connect(function()
-- Phantom forces Esp Chams, made by ThisW0ntGetbanned#7965, :/

EspChams.Text = "EspChams: on"
EspChams.TextColor3 = Color3.new(0,185,0)
plrs = nil
for _,p in pairs(game:GetChildren()) do
  if p.ClassName == ("Players") then
  plrs = p
  end
end


while true do
wait(0.1)
for _, v in pairs(plrs:GetChildren()) do
if v.TeamColor ~= plrs.LocalPlayer.TeamColor and not v.Character.Head:FindFirstChild("BillboardGui") then --   ~= 
i = Instance.new("BillboardGui",v.Character.Head)
i.Active = true
i.AlwaysOnTop = true
i.Size = UDim2.new(1,0,1,0)
h = Instance.new("Frame",i)
h.Size = UDim2.new(2,0,1,0)
h.AnchorPoint = Vector2.new(0.25, 0)
h.BackgroundColor3 = Color3.new(1,0,0)
h.BorderSizePixel = 0
h.BackgroundTransparency = 0.4

i2 = Instance.new("BillboardGui",v.Character.Torso)
i2.Active = true
i2.AlwaysOnTop = true
i2.Size = UDim2.new(2,0,2,0)
t = Instance.new("Frame",i2)
t.Size = UDim2.new(1,0,1,0)
t.AnchorPoint = Vector2.new(0, 0)
t.BackgroundColor3 = Color3.new(0,1,0)
t.BorderSizePixel = 0
t.BackgroundTransparency = 0.4

i3 = Instance.new("BillboardGui",v.Character["Left Arm"])
i3.Active = true
i3.AlwaysOnTop = true
i3.Size = UDim2.new(1,0,2,0)
la = Instance.new("Frame",i3)
la.Size = UDim2.new(1,0,1,0)
la.AnchorPoint = Vector2.new(0, 0)
la.BackgroundColor3 = Color3.new(0,0,1)
la.BorderSizePixel = 0
la.BackgroundTransparency = 0.4

i4 = Instance.new("BillboardGui",v.Character["Right Arm"])
i4.Active = true
i4.AlwaysOnTop = true
i4.Size = UDim2.new(1,0,2,0)
ra = Instance.new("Frame",i4)
ra.Size = UDim2.new(1,0,1,0)
ra.AnchorPoint = Vector2.new(0, 0)
ra.BackgroundColor3 = Color3.new(0,0,1)
ra.BorderSizePixel = 0
ra.BackgroundTransparency = 0.4

i5 = Instance.new("BillboardGui",v.Character["Left Leg"])
i5.Active = true
i5.AlwaysOnTop = true
i5.Size = UDim2.new(1,0,2,0)
ll = Instance.new("Frame",i5)
ll.Size = UDim2.new(1,0,1,0)
ll.AnchorPoint = Vector2.new(0, 0)
ll.BackgroundColor3 = Color3.new(0,0,1)
ll.BorderSizePixel = 0
ll.BackgroundTransparency = 0.4

i6 = Instance.new("BillboardGui",v.Character["Right Leg"])
i6.Active = true
i6.AlwaysOnTop = true
i6.Size = UDim2.new(1,0,2,0)
rl = Instance.new("Frame",i6)
rl.Size = UDim2.new(1,0,1,0)
rl.AnchorPoint = Vector2.new(0, 0)
rl.BackgroundColor3 = Color3.new(0,0,1)
rl.BorderSizePixel = 0
rl.BackgroundTransparency = 0.4
end
end
end
end)

Fly.MouseButton1Click:connect(function()
Fly.Text = "Fly: on"
Fly.TextColor3 = Color3.new(0,185,0)
local Player = game:GetService("Players").LocalPlayer;
local UserInputService = game:GetService("UserInputService");
local Bricks = {};
local Space;
local WalkInAir = false;

UserInputService.InputBegan:Connect(function(
InputObject,
GameProcessedEvent
)
if (
(not GameProcessedEvent) and
(InputObject.UserInputType == Enum.UserInputType.Keyboard)
) then
if (InputObject.KeyCode == Enum.KeyCode.P) then
for Key, Value in next, Bricks do
Value:Destroy();
end;
elseif (InputObject.KeyCode == Enum.KeyCode.Space) then
Space = true;
elseif (InputObject.KeyCode == Enum.KeyCode.L) then
WalkInAir = (not WalkInAir);
end;
end;
end);

UserInputService.InputEnded:Connect(function(
InputObject,
GameProcessedEvent
)
if (
(not GameProcessedEvent) and
(InputObject.UserInputType == Enum.UserInputType.Keyboard)
) then
if (InputObject.KeyCode == Enum.KeyCode.Space) then
Space = nil;
end;
end;
end);

local LastPosition = Vector3.new(0, 0, 0);

game:GetService("RunService").RenderStepped:Connect(function()
local PositionChanged;
local Torso = (
Player.Character or
Player.CharacterAdded:wait()
):WaitForChild("Torso");
if ((Torso.Position - LastPosition).Magnitude > 0.75) then
PositionChanged = true;
end;
if (Space or (WalkInAir and PositionChanged)) then
local FlyBrick = Instance.new("Part",
(
Torso:GetChildren()[1] or
Torso
)
);
FlyBrick.Transparency = 1;
FlyBrick.Anchored = true;
FlyBrick.CFrame = (
Torso.CFrame *
CFrame.new(0, -2.25, 0)
);
FlyBrick.Size = Vector3.new(5, 0.05, 5);
FlyBrick.BrickColor = BrickColor.new("Institutional white");
FlyBrick.Locked = true;
FlyBrick.TopSurface = Enum.SurfaceType.SmoothNoOutlines;
FlyBrick.BottomSurface = FlyBrick.TopSurface;
FlyBrick.RightSurface = FlyBrick.TopSurface;
FlyBrick.LeftSurface = FlyBrick.TopSurface;
FlyBrick.FrontSurface = FlyBrick.TopSurface;
FlyBrick.BackSurface = FlyBrick.TopSurface;
Bricks[#Bricks + 1] = FlyBrick;
end;
LastPosition = Torso.Position;
end)
end)

Esp.MouseButton1Click:connect(function()
Esp.Text = "Esp: on"
Esp.TextColor3 = Color3.new(0,185,0)
function Esp(player, username)
   if player ~= game:service("Players").LocalPlayer then
   if player.Character  then
   local torso = player.Character:FindFirstChild("Torso")
   if torso then
   local base = Instance.new("BillboardGui")
   local esP = Instance.new("Frame", base)
   base.AlwaysOnTop = true
   base.Enabled = true
   base.Size = UDim2.new(4.5,0,6,0)
   base.StudsOffset = Vector3.new(0, -0.6, 0)
   esP.BackgroundColor3 = Color3.new(170,0,0) -- Edit Color Here--
   esP.BackgroundTransparency = 0.4
   esP.BorderSizePixel = 0.5
   esP.Size = UDim2.new(1,0,1,0)
   if base and workspace.CurrentCamera then
   base.Name = username
   base.Parent = workspace.CurrentCamera
   base.Adornee = torso
   end
   end
   end
   end
end

function CheckEsp()
   for x,player in pairs(game:service("Players"):GetPlayers()) do
   if player then
       if player.TeamColor ~= game:service("Players").LocalPlayer.TeamColor then
       local char = player.Character
       if char then
           local torso = char:FindFirstChild("Torso")
           if torso then
               local currentcam = workspace.CurrentCamera
               local playerName = player.Name
               if currentcam:FindFirstChild(playerName) == nil then
                   Esp(player, playerName)
               end
           end
       end
       end
   end
   end
end

while wait(1) do
   CheckEsp()
end
end)
InfoFrame.Draggable=true
InfoFrame.Active=true
InfoFrame.Selectable=true