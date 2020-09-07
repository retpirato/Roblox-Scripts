
PLAYER  = game.Players.LocalPlayer
MOUSE   = PLAYER:GetMouse()
CC      = game.Workspace.CurrentCamera

ENABLED      = true
ESP_ENABLED  = true

_G.FREE_FOR_ALL = true

_G.BIND        = 'y'
_G.ESP_BIND    = 't'
_G.CHANGE_AIM  = 'q'

_G.AIM_AT = 'Head'

wait(1)

function GetNearestPlayerToMouse()
Zombies      = {}
local PLAYER_HOLD  = {}
local DISTANCES    = {}
for i, v in pairs(game.Workspace.Zombies:GetChildren()) do
if v ~= PLAYER then
table.insert(Zombies, v)
end
end
for i, v in pairs(Zombies) do
if _G.FREE_FOR_ALL == false then
if v and (v) ~= nil and v.TeamColor ~= Zombies.TeamColor then
local AIM = v:FindFirstChild(_G.AIM_AT)
if AIM ~= nil then
local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
local DIFF                     = math.floor((POS - AIM.Position).magnitude)
PLAYER_HOLD[v.Name .. i]       = {}
PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
PLAYER_HOLD[v.Name .. i].plr   = v
PLAYER_HOLD[v.Name .. i].diff  = DIFF
table.insert(DISTANCES, DIFF)
end
end
elseif _G.FREE_FOR_ALL == true then
local AIM = v:FindFirstChild(_G.AIM_AT)
if AIM ~= nil then
local DISTANCE                 = (AIM.Position - game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude
local RAY                      = Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p, (MOUSE.Hit.p - CC.CoordinateFrame.p).unit * DISTANCE)
local HIT,POS                  = game.Workspace:FindPartOnRay(RAY, game.Workspace)
local DIFF                     = math.floor((POS - AIM.Position).magnitude)
PLAYER_HOLD[v.Name .. i]       = {}
PLAYER_HOLD[v.Name .. i].dist  = DISTANCE
PLAYER_HOLD[v.Name .. i].plr   = v
PLAYER_HOLD[v.Name .. i].diff  = DIFF
table.insert(DISTANCES, DIFF)
end
end
end

if unpack(DISTANCES) == nil then
return false
end

local L_DISTANCE = math.floor(math.min(unpack(DISTANCES)))
if L_DISTANCE > 20 then
return false
end

for i, v in pairs(PLAYER_HOLD) do
if v.diff == L_DISTANCE then
return v.plr
end
end
return false
end

GUI_MAIN                           = Instance.new('ScreenGui', game.CoreGui)
GUI_TARGET                         = Instance.new('TextLabel', GUI_MAIN)
GUI_AIM_AT                         = Instance.new('TextLabel', GUI_MAIN)

GUI_MAIN.Name                      = 'AIMBOT'

GUI_TARGET.Size                    = UDim2.new(0,200,0,30)
GUI_TARGET.BackgroundTransparency  = 0.5
GUI_TARGET.BackgroundColor         = BrickColor.new('Fossil')
GUI_TARGET.BorderSizePixel         = 0
GUI_TARGET.Position                = UDim2.new(0.5,-100,0,0)
GUI_TARGET.Text                    = 'AIMBOT : OFF'
GUI_TARGET.TextColor3              = Color3.new(1,1,1)
GUI_TARGET.TextStrokeTransparency  = 1
GUI_TARGET.TextWrapped             = true
GUI_TARGET.FontSize                = 'Size24'
GUI_TARGET.Font                    = 'SourceSansBold'

GUI_AIM_AT.Size                    = UDim2.new(0,200,0,20)
GUI_AIM_AT.BackgroundTransparency  = 0.5
GUI_AIM_AT.BackgroundColor         = BrickColor.new('Fossil')
GUI_AIM_AT.BorderSizePixel         = 0
GUI_AIM_AT.Position                = UDim2.new(0.5,-100,0,30)
GUI_AIM_AT.Text                    = 'AIMING : HEAD'
GUI_AIM_AT.TextColor3              = Color3.new(1,1,1)
GUI_AIM_AT.TextStrokeTransparency  = 1
GUI_AIM_AT.TextWrapped             = true
GUI_AIM_AT.FontSize                = 'Size18'
GUI_AIM_AT.Font                    = 'SourceSansBold'

local TRACK = false

function CREATE(BASE, TEAM) -- player head and true/false
local ESP_MAIN                   = Instance.new('BillboardGui', PLAYER.PlayerGui)
local ESP_DOT                    = Instance.new('TextLabel', ESP_MAIN)
ESP_DOT.TextColor3 = Color3.fromRGB(0, 0, 0)
ESP_DOT.Font = "Cartoon"
ESP_DOT.TextSize = 20 -- 14 defualt
ESP_DOT.Text = BASE.Parent.Name
local ESP_NAME                   = Instance.new('TextLabel', ESP_MAIN)

ESP_MAIN.Name                    = 'ESP'
ESP_MAIN.Adornee                 = BASE
ESP_MAIN.AlwaysOnTop             = true
ESP_MAIN.ExtentsOffset           = Vector3.new(0, 1, 0)
ESP_MAIN.Size                    = UDim2.new(0, 5, 0, 5)

ESP_DOT.Name                     = 'DOT'
ESP_DOT.BackgroundColor          = BrickColor.new('Bright red')
ESP_DOT.BackgroundTransparency   = 0.3
ESP_DOT.BorderSizePixel          = 0
ESP_DOT.Position                 = UDim2.new(-0.5, 0, -0.5, 0)
ESP_DOT.Size                     = UDim2.new(2, 0, 2, 0)
ESP_DOT.Visible                  = true
ESP_DOT.ZIndex                   = 10

ESP_NAME.Name                    = 'NAME'
ESP_NAME.BackgroundColor3        = Color3.new(255, 255, 255)
ESP_NAME.BackgroundTransparency  = 1
ESP_NAME.BorderSizePixel         = 0
ESP_NAME.Position                = UDim2.new(0, 0, 0, -40)
ESP_NAME.Size                    = UDim2.new(1, 0, 10, 0)
ESP_NAME.Visible                 = true
ESP_NAME.ZIndex                  = 10
ESP_NAME.Font                    = 'ArialBold'
ESP_NAME.FontSize                = 'Size14'
ESP_NAME.Text                    = BASE.Parent.Name
ESP_NAME.TextColor               = BrickColor.new('Bright red')
end

function CLEAR()
for _,v in pairs(PLAYER.PlayerGui:children()) do
if v.Name == 'ESP' and v:IsA('BillboardGui') then
v:Destroy()
end
end
end

function FIND()
CLEAR()
TRACK = true
spawn(function()
while wait() do
if TRACK then
CLEAR()
for i,v in pairs(game.Workspace.Zombies:GetChildren()) do
if v and v:FindFirstChild('Head') then
if v:FindFirstChild('Head') then
CREATE(v.Head, true)
end
end
end
end
end
wait(1)
end)
end

MOUSE.KeyDown:connect(function(KEY)
KEY = KEY:lower():byte()
if KEY == _G.BIND then
ENABLED = true
end
end)

MOUSE.KeyUp:connect(function(KEY)
KEY = KEY:lower():byte()
if KEY == _G.BIND then
ENABLED = false
end
end)

MOUSE.KeyDown:connect(function(KEY)
KEY = KEY:lower():byte()
if KEY == _G.ESP_BIND then
if ESP_ENABLED == false then
FIND()
ESP_ENABLED = true
print('ESP : ON')
elseif ESP_ENABLED == true then
wait()
CLEAR()
TRACK = false
ESP_ENABLED = false
print('ESP : OFF')
end
end
end)

MOUSE.KeyDown:connect(function(KEY)
if KEY == _G.CHANGE_AIM then
if _G.AIM_AT == 'Head' then
_G.AIM_AT = 'HumanoidRootPart'
GUI_AIM_AT.Text = 'AIMING : HumanoidRootPart' -- works for every model
elseif _G.AIM_AT == 'HumanoidRootPart' then
_G.AIM_AT = 'Head'
GUI_AIM_AT.Text = 'AIMING : Head'
end
end
end)

game:GetService('RunService').RenderStepped:connect(function()
if ENABLED then
local TARGET = GetNearestPlayerToMouse()
if (TARGET ~= false) then
local AIM = TARGET:FindFirstChild(_G.AIM_AT)
if AIM then
CC.CoordinateFrame = CFrame.new(CC.CoordinateFrame.p, AIM.CFrame.p)
end
GUI_TARGET.Text = 'AIMBOT : '.. TARGET.Name:sub(1, 5)
else
GUI_TARGET.Text = 'AIMBOT : OFF'
end
end
end)

repeat
wait()
if ESP_ENABLED == true then
FIND()
end
until ESP_ENABLED == false


wait()

_G.FREE_FOR_ALL = true

_G.BIND = 50 -- LEFT CTRL
_G.ESP_BIND = 52 -- LEFT ALT