game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Remade By Imp3rad0r#2684"})
local rg = Instance.new("ScreenGui")
local fs = Instance.new("Frame")
local buttonf = Instance.new("Frame")
local farmbutton = Instance.new("TextButton")
local questbutton = Instance.new("TextButton")
local speedbutton = Instance.new("TextButton")
local Mobsbutton = Instance.new("TextButton")
local default = Instance.new("Frame")
local user = Instance.new("TextLabel")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local farmf = Instance.new("Frame")
local farmon = Instance.new("TextButton")
local farmoff = Instance.new("TextButton")
local superspeed = Instance.new("Frame")
local speed = Instance.new("TextButton")
local q = Instance.new("TextButton")
local questf = Instance.new("Frame")
local repfarm = Instance.new("TextButton")
local quesfarm = Instance.new("TextButton")
local mobf = Instance.new("Frame")
local HUMAN = Instance.new("TextButton")
local lowag = Instance.new("TextButton")
local boss = Instance.new("TextButton")
local highaog = Instance.new("TextButton")
local AUTOATTACK = Instance.new("TextButton")

rg.Name = "rg"
rg.Parent = game.CoreGui

fs.Name = "rg"
fs.Parent = rg
fs.BackgroundColor3 = Color3.new(0.517647, 0.439216, 1)
fs.BorderSizePixel = 0
fs.Position = UDim2.new(0.021, 0,0.348, 0)
fs.Size = UDim2.new(0, 153, 0, 126)
fs.Draggable = true

buttonf.Name = "buttonf"
buttonf.Parent = fs
buttonf.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
buttonf.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
buttonf.Position = UDim2.new(0.0392156877, 0, 0.0476190485, 0)
buttonf.Size = UDim2.new(0, 140, 0, 42)

farmbutton.Name = "farmbutton"
farmbutton.Parent = buttonf
farmbutton.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
farmbutton.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
farmbutton.Position = UDim2.new(0.042857144, 0, 0.142857149, 0)
farmbutton.Size = UDim2.new(0, 58, 0, 13)
farmbutton.Font = Enum.Font.Fantasy
farmbutton.Text = "AUTO-FARM"
farmbutton.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
farmbutton.TextSize = 10

questbutton.Name = "questbutton"
questbutton.Parent = buttonf
questbutton.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
questbutton.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
questbutton.Position = UDim2.new(0.54285717, 0, 0.589999974, 0)
questbutton.Size = UDim2.new(0, 58, 0, 13)
questbutton.Font = Enum.Font.Fantasy
questbutton.Text = "QUESTS"
questbutton.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
questbutton.TextSize = 10

speedbutton.Name = "speedbutton"
speedbutton.Parent = buttonf
speedbutton.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
speedbutton.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
speedbutton.Position = UDim2.new(0.042857144, 0, 0.589999974, 0)
speedbutton.Size = UDim2.new(0, 58, 0, 13)
speedbutton.Font = Enum.Font.Fantasy
speedbutton.Text = "SPEED"
speedbutton.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
speedbutton.TextSize = 10

Mobsbutton.Name = "Mobsbutton"
Mobsbutton.Parent = buttonf
Mobsbutton.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
Mobsbutton.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
Mobsbutton.Position = UDim2.new(0.54285717, 0, 0.142857149, 0)
Mobsbutton.Size = UDim2.new(0, 58, 0, 13)
Mobsbutton.Font = Enum.Font.Fantasy
Mobsbutton.Text = "MANUAL-FARM"
Mobsbutton.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
Mobsbutton.TextSize = 10

default.Name = "default"
default.Parent = fs
default.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
default.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
default.Position = UDim2.new(0.0392156877, 0, 0.43650794, 0)
default.Size = UDim2.new(0, 140, 0, 64)

user.Name = "user"
user.Parent = default
user.BackgroundColor3 = Color3.new(1, 1, 1)
user.BackgroundTransparency = 1
user.Position = UDim2.new(0.042857144, 0, 0.109375, 0)
user.Size = UDim2.new(0, 128, 0, 14)
user.Font = Enum.Font.Fantasy
user.Text = "Hello, ".. game.Players.LocalPlayer.Name
user.TextColor3 = Color3.new(0, 0.807843, 0.819608)
user.TextSize = 10

TextLabel.Parent = default
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.042857144, 0, 0.421875, 0)
TextLabel.Size = UDim2.new(0, 128, 0, 13)
TextLabel.Font = Enum.Font.Fantasy
TextLabel.Text = "KILL THEM ALL!"
TextLabel.TextColor3 = Color3.new(0, 0.807843, 0.819608)
TextLabel.TextSize = 10

TextLabel_2.Parent = default
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(0.042857144, 0, 0.625, 0)
TextLabel_2.Size = UDim2.new(0, 128, 0, 24)
TextLabel_2.Font = Enum.Font.Fantasy
TextLabel_2.Text = "Remade by Imp3rad0r#2648"
TextLabel_2.TextColor3 = Color3.new(0.117647, 0.564706, 1)
TextLabel_2.TextSize = 10

farmf.Name = "farmf"
farmf.Parent = fs
farmf.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
farmf.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
farmf.Position = UDim2.new(0.0392156877, 0, 0.43650794, 0)
farmf.Size = UDim2.new(0, 140, 0, 64)
farmf.Visible = false

farmon.Name = "farmon"
farmon.Parent = farmf
farmon.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
farmon.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
farmon.Position = UDim2.new(0.107142858, 0, 0.220982075, 0)
farmon.Size = UDim2.new(0, 106, 0, 13)
farmon.Font = Enum.Font.Fantasy
farmon.Text = "GHOULS"
farmon.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
farmon.TextSize = 10

farmoff.Name = "farmoff"
farmoff.Parent = farmf
farmoff.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
farmoff.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
farmoff.Position = UDim2.new(0.107142858, 0, 0.595982075, 0)
farmoff.Size = UDim2.new(0, 106, 0, 13)
farmoff.Font = Enum.Font.Fantasy
farmoff.Text = "INVESTIGATORS"
farmoff.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
farmoff.TextSize = 10

superspeed.Name = "superspeed"
superspeed.Parent = fs
superspeed.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
superspeed.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
superspeed.Position = UDim2.new(0.0392156877, 0, 0.43650794, 0)
superspeed.Size = UDim2.new(0, 140, 0, 64)
superspeed.Visible = false

speed.Name = "speed"
speed.Parent = superspeed
speed.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
speed.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
speed.Position = UDim2.new(0.107142858, 0, 0.220982075, 0)
speed.Size = UDim2.new(0, 106, 0, 13)
speed.Font = Enum.Font.Fantasy
speed.Text = "INCREASE SPEED"
speed.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
speed.TextSize = 10

q.Name = "q"
q.Parent = superspeed
q.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
q.BorderColor3 = Color3.new(0.0784314, 0, 0)
q.Position = UDim2.new(0.107142858, 0, 0.611607075, 0)
q.Size = UDim2.new(0, 106, 0, 13)
q.Font = Enum.Font.Fantasy
q.Text = "PRESS Q TO SPEED!"
q.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
q.TextSize = 10

questf.Name = "questf"
questf.Parent = fs
questf.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
questf.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
questf.Position = UDim2.new(0.0392156877, 0, 0.43650794, 0)
questf.Size = UDim2.new(0, 140, 0, 64)
questf.Visible = false

repfarm.Name = "repfarm"
repfarm.Parent = questf
repfarm.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
repfarm.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
repfarm.Position = UDim2.new(0.107142858, 0, 0.595982075, 0)
repfarm.Size = UDim2.new(0, 106, 0, 13)
repfarm.Font = Enum.Font.Fantasy
repfarm.Text = "AUTO REDEME REP"
repfarm.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
repfarm.TextSize = 10

quesfarm.Name = "quesfarm"
quesfarm.Parent = questf
quesfarm.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
quesfarm.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
quesfarm.Position = UDim2.new(0.107142858, 0, 0.220982075, 0)
quesfarm.Size = UDim2.new(0, 106, 0, 13)
quesfarm.Font = Enum.Font.Fantasy
quesfarm.Text = "AUTO GET QUEST"
quesfarm.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
quesfarm.TextSize = 10

mobf.Name = "mobf"
mobf.Parent = fs
mobf.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
mobf.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
mobf.Position = UDim2.new(0.0392156877, 0, 0.43650794, 0)
mobf.Size = UDim2.new(0, 140, 0, 64)
mobf.Visible = false

HUMAN.Name = "HUMAN"
HUMAN.Parent = mobf
HUMAN.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
HUMAN.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
HUMAN.Position = UDim2.new(0.042857144, 0, 0.142857075, 0)
HUMAN.Size = UDim2.new(0, 58, 0, 12)
HUMAN.Font = Enum.Font.Fantasy
HUMAN.Text = "HUMANS"
HUMAN.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
HUMAN.TextSize = 10

lowag.Name = "lowag"
lowag.Parent = mobf
lowag.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
lowag.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
lowag.Position = UDim2.new(0.54285717, 0, 0.142857075, 0)
lowag.Size = UDim2.new(0, 58, 0, 12)
lowag.Font = Enum.Font.Fantasy
lowag.Text = "LOW/MID AOG."
lowag.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
lowag.TextSize = 10

boss.Name = "boss"
boss.Parent = mobf
boss.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
boss.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
boss.Position = UDim2.new(0.042857144, 0, 0.439732075, 0)
boss.Size = UDim2.new(0, 58, 0, 12)
boss.Font = Enum.Font.Fantasy
boss.Text = "BOSS"
boss.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
boss.TextSize = 10

highaog.Name = "highaog"
highaog.Parent = mobf
highaog.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
highaog.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
highaog.Position = UDim2.new(0.54285717, 0, 0.439732075, 0)
highaog.Size = UDim2.new(0, 58, 0, 12)
highaog.Font = Enum.Font.Fantasy
highaog.Text = "HIGH AOG."
highaog.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
highaog.TextSize = 10

AUTOATTACK.Name = "AUTOATTACK"
AUTOATTACK.Parent = mobf
AUTOATTACK.BackgroundColor3 = Color3.new(0.0784314, 0, 0)
AUTOATTACK.BorderColor3 = Color3.new(0.117647, 0.564706, 1)
AUTOATTACK.Position = UDim2.new(0.229000002, 0, 0.745000005, 0)
AUTOATTACK.Size = UDim2.new(0, 75, 0, 12)
AUTOATTACK.Font = Enum.Font.Fantasy
AUTOATTACK.Text = "AUTO ATTACK"
AUTOATTACK.TextColor3 = Color3.new(0.996078, 0.996078, 0.996078)
AUTOATTACK.TextSize = 10

farmbutton.MouseButton1Down:connect(function()
	if farmf.Visible == false then
		farmf.Visible = true
		default.Visible = false
		mobf.Visible = false
		superspeed.Visible = false
		questf.Visible = false 
		else
		default.Visible = true
		farmf.Visible = false
	end
end)

questbutton.MouseButton1Down:connect(function()
	if questf.Visible == false then
		farmf.Visible = false
		default.Visible = false
		mobf.Visible = false
		superspeed.Visible = false
		questf.Visible = true
		else
		default.Visible = true
		questf.Visible = false
	end
end)

speedbutton.MouseButton1Down:connect(function()
	if superspeed.Visible == false then
		farmf.Visible = false
		default.Visible = false
		mobf.Visible = false
		superspeed.Visible = true
		questf.Visible = false
		else
		default.Visible = true
		superspeed.Visible = false
	end
end)

Mobsbutton.MouseButton1Down:connect(function()
	if mobf.Visible == false then
		farmf.Visible = false
		default.Visible = false
		mobf.Visible = true
		superspeed.Visible = false
		questf.Visible = false
		else
		default.Visible = true
		mobf.Visible = false
	end
end)

farmon.MouseButton1Down:connect(function()
	_G.range = math.huge

local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
local closest = math.huge
local enemy = nil

function attack(entity)
if entity then
if(lp.Character:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Mask")) then
rs:wait()
local ehrp = enemy:FindFirstChild("HumanoidRootPart")
if ehrp ~= nil and (ehrp.Position-lp.Character.HumanoidRootPart.Position).magnitude > 200 then
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, enemy:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
					
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
else
if enemy:FindFirstChild("HumanoidRootPart") ~= nil then
lp.Character.HumanoidRootPart.CFrame = enemy:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,4)
end		
end
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"Mouse1","Down",CFrame.new(0,0,0))
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"E","Down",CFrame.new(0,0,0))	
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"R","Down",CFrame.new(0,0,0))	
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"F","Down",CFrame.new(0,0,0))	
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"C","Down",CFrame.new(0,0,0))	
end
end
end

while wait() do
wait(1)
for i,v in pairs(game:GetService("Workspace").NPCSpawns:GetChildren()) do
local npc = v:GetChildren()[1]
if(npc and npc:FindFirstChild("Hood") and npc:FindFirstChild("Mask"))then
local mag = (npc:FindFirstChild("HumanoidRootPart").Position-lp.Character.HumanoidRootPart.Position).magnitude
if mag <= _G.range then
closest = mag
enemy = npc
repeat attack(enemy) until not enemy or not enemy:FindFirstChild("Mask")
end
end
end
end
end)

farmoff.MouseButton1Down:connect(function()
	_G.range = math.huge

local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
local closest = math.huge
local enemy = nil

wait(1)
function attack(entity)
if entity then
if(lp.Character:FindFirstChild("HumanoidRootPart") and enemy:FindFirstChild("Case")) then
rs:wait()
local ehrp = enemy:FindFirstChild("HumanoidRootPart")
if ehrp ~= nil and (ehrp.Position-lp.Character.HumanoidRootPart.Position).magnitude > 200 then
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, enemy:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
					
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
else
if enemy:FindFirstChild("HumanoidRootPart") ~= nil then
lp.Character.HumanoidRootPart.CFrame = enemy:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,0,4)
end		
end
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"Mouse1","Down",CFrame.new(0,0,0))
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"E","Down",CFrame.new(0,0,0))	
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"R","Down",CFrame.new(0,0,0))	
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"F","Down",CFrame.new(0,0,0))	
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"C","Down",CFrame.new(0,0,0))	
end
end
end

while wait() do
wait(1)
for i,v in pairs(game:GetService("Workspace").NPCSpawns:GetChildren()) do
local npc = v:GetChildren()[1]
if(npc and npc:FindFirstChild("Case") and npc:FindFirstChild("Case"))then
local mag = (npc:FindFirstChild("HumanoidRootPart").Position-lp.Character.HumanoidRootPart.Position).magnitude
if mag <= _G.range then
closest = mag
enemy = npc
repeat attack(enemy) until not enemy or not enemy:FindFirstChild("Case")
end
end
end
end
end)

speed.MouseButton1Down:connect(function()
	down = false
velocity = Instance.new("BodyVelocity")
velocity.maxForce = Vector3.new(100000, 0, 100000)
---vv Use that to change the speed v
local speed = 150
gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(100000, 0, 100000)

local hum = game.Players.LocalPlayer.Character.Humanoid

function onButton1Down(mouse)
down = true
velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
velocity.velocity = (hum.MoveDirection) * speed
gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
while down do
if not down then break end
velocity.velocity = (hum.MoveDirection) * speed
local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
wait(0.1)
end
end

function onButton1Up(mouse)
velocity.Parent = nil
gyro.Parent = nil
down = false
end
--To Change the key in those 2 lines, replace the "q" with your desired key
function onSelected(mouse)
mouse.KeyDown:connect(function(k) if k:lower()=="q"then onButton1Down(mouse)end end)
mouse.KeyUp:connect(function(k) if k:lower()=="q"then onButton1Up(mouse)end end)
end

onSelected(game.Players.LocalPlayer:GetMouse())
end)

repfarm.MouseButton1Down:connect(function()
	local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, game.Workspace.Anteiku.Yoshimura:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
					
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
wait()
local Event = game:GetService("ReplicatedStorage").Remotes.ReputationCashOut
Event:InvokeServer()
end)

quesfarm.MouseButton1Down:connect(function()
local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, game.Workspace.Anteiku.Yoshimura:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
					
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
wait()
	local Event = game:GetService("ReplicatedStorage").Remotes.Yoshimura.Task
Event:InvokeServer()
end)

HUMAN.MouseButton1Down:connect(function()
	local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
			for i,k in pairs(game.Workspace.NPCSpawns["HumanSpawns"]:GetChildren()) do
			if k.Name == "Athlete" or "Human" then
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, k:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) + Vector3.new((-2)) 
end
			end
			end
end)

AUTOATTACK.MouseButton1Down:connect(function()
	while true do
		wait(0.001)
		local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"Mouse1","Down",CFrame.new(0,0,0))
		wait(0.002)
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"E","Down",CFrame.new(0,0,0))	
		wait(0.003)
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"R","Down",CFrame.new(0,0,0))	
		wait(0.005)
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"F","Down",CFrame.new(0,0,0))	
		wait(0.004)
local key = "\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140\240\159\146\166\240\159\146\148\240\159\141\145\240\159\145\140"
local remote = game:GetService("Players").LocalPlayer.Character.Remotes.KeyEvent
remote:FireServer(key,"C","Down",CFrame.new(0,0,0))	
		wait(0.006)
	end
end)

lowag.MouseButton1Down:connect(function()
	local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
			for i,k in pairs(game.Workspace.NPCSpawns["GhoulSpawns"]:GetChildren()) do
			if k.Name == "Low Rank Aogiri Member" or "Mid Rank Aogiri Member" then -- Low and Mid
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, k:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) + Vector3.new((-2)) 
end
end
end
end)

boss.MouseButton1Down:connect(function()
	local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
			for i,k in pairs(game.Workspace.NPCSpawns["BossSpawns"]:GetChildren()) do
			if k.Name == "Eto Yoshimura" then
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, k:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) + Vector3.new((-2)) 
end
end
end
end)

highaog.MouseButton1Down:connect(function()
	local lp = game.Players.LocalPlayer
local rs = game:GetService("RunService").RenderStepped
local pfs = game:GetService("PathfindingService")
			for i,k in pairs(game.Workspace.NPCSpawns["AggroSpawns"]:GetChildren()) do
			if k.Name == "High Rank Aogiri Member" then
local path = pfs:FindPathAsync(lp.Character.HumanoidRootPart.Position, k:FindFirstChild("HumanoidRootPart").Position)
local points = path:GetWaypoints()
			
for _,v in pairs(points) do
rs:wait()
lp.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position) + Vector3.new((-2)) 
end
end
end
end)
warn("Bugs? Contact me! Imp3rad0r#2684")