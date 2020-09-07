local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local GameValues = game.Workspace.GameValues

-- Objects

local SISGUI = Instance.new("ScreenGui")
local Slender = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")

-- Properties

SISGUI.Name = "SISGUI"
SISGUI.Parent = game.Players.LocalPlayer.PlayerGui
SISGUI.ResetOnSpawn = false

Slender.Name = "Slender"
Slender.Parent = SISGUI
Slender.BackgroundColor3 = Color3.new(0, 0.666667, 1)
Slender.BackgroundTransparency = 1
Slender.Position = UDim2.new(0, 0, 0.960784316, 0)
Slender.Size = UDim2.new(0, 290, 0, 16)
Slender.Font = Enum.Font.SourceSans
Slender.FontSize = Enum.FontSize.Size24
Slender.Text = "Current Slender : "..GameValues.CurrentSlender.Value
Slender.TextColor3 = Color3.new(0, 0.666667, 1)
Slender.TextSize = 20
Slender.TextXAlignment = Enum.TextXAlignment.Left

Credits.Name = "Credits"
Credits.Parent = SISGUI
Credits.BackgroundColor3 = Color3.new(0, 0.666667, 1)
Credits.BackgroundTransparency = 1
Credits.Position = UDim2.new(0.593556404, 0, 0.960784316, 0)
Credits.Size = UDim2.new(0, 328, 0, 16)
Credits.Font = Enum.Font.SourceSans
Credits.FontSize = Enum.FontSize.Size24
Credits.Text = "PhoenixAce Hacks"
Credits.TextColor3 = Color3.new(0, 0.666667, 1)
Credits.TextSize = 20

game.Workspace.GameValues.CurrentSlender.Changed:Connect(function()
Slender.Text = "Current Slender : "..game.Workspace.GameValues.CurrentSlender.Value
end)

local function GetGens()
local Char = Player.Character
local Hrp = Char.HumanoidRootPart
local Map = game.Workspace.MAP
local Gen = Map.GENS:GetChildren()
local Add = 0
for i, v in pairs(Gen)do
Add = Add + v.GLOW.Size.Z
v.GLOW.CFrame = Hrp.CFrame + Vector3.new(0,0,Add)
end
end

local function GetPages()
local Char = Player.Character
local Hrp = Char.HumanoidRootPart
local Map = game.Workspace.MAP
local Pages = Map.Pages:GetChildren()
for i, v in pairs(Pages)do
if v:IsA("Part") and v.Transparency == 0 then
-- Objects

local BGUI = Instance.new("BillboardGui")
local Shower = Instance.new("TextLabel")

-- Properties

BGUI.Name = "BGUI"
BGUI.Parent = v
BGUI.AlwaysOnTop = true
BGUI.Size = UDim2.new(0, 50, 0, 50)

Shower.Name = "Shower"
Shower.Parent = BGUI
Shower.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Shower.Size = UDim2.new(0, 50, 0, 50)
Shower.Font = Enum.Font.SourceSans
Shower.FontSize = Enum.FontSize.Size32
Shower.Text = "Page"
Shower.TextColor3 = Color3.new(0, 0.666667, 1)
Shower.TextSize = 30
v.Changed:Connect(function()
if v.Transparency == 1 then
BGUI:Destroy()
end
end)
end
end
end

local function TeleportToPage()
local Char = Player.Character
local Map = game.Workspace.MAP
local Pages = Map.Pages:GetChildren()
for i, v in pairs(Pages)do
if v:IsA("Part") and v.Transparency == 0 then
Char.HumanoidRootPart.CFrame = v.CFrame + (v.CFrame.lookVector*3)
end
end
end

local function TeleportToNextPlayer()

end

local function TeleportToPlayer()
local Citizens = game.Workspace.GameEvents.Citizens:GetChildren()
for i, v in pairs(Citizens)do
if v.died.Value == false then
local Victim = game.Players:FindFirstChild(v.Name)
if Victim ~= nil then
local VChar = Victim.Character
if VChar ~= nil then
Player.Character.HumanoidRootPart.CFrame = VChar.HumanoidRootPart.CFrame + (VChar.HumanoidRootPart.CFrame.lookVector*3)
end
end
end
end
end

local function MakeSlenderVisible()
local GameValues = game.Workspace.GameValues
local CurrentSlender = GameValues.CurrentSlender.Value
local Players = game.Players:GetPlayers()
for i, v in pairs(Players)do
if v.Character~= nil and v.Name == CurrentSlender then
-- Objects

local BGUI = Instance.new("BillboardGui")
local Shower = Instance.new("TextLabel")

-- Properties

BGUI.Name = "BGUI"
BGUI.Parent = v.Character.HumanoidRootPart
BGUI.AlwaysOnTop = true
BGUI.Size = UDim2.new(0, 200, 0, 50)

Shower.Name = "Shower"
Shower.Parent = BGUI
Shower.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Shower.Size = UDim2.new(0, 200, 0, 50)
Shower.Font = Enum.Font.SourceSans
Shower.FontSize = Enum.FontSize.Size32
Shower.Text = "Slender"
Shower.TextColor3 = Color3.new(0, 0.666667, 1)
Shower.TextSize = 30
for e, x in pairs(v.Character:GetDescendants())do
if x:IsA("Part") or x:IsA("MeshPart") then
x.Transparency = 0
end
end
end
end
end

Mouse.KeyDown:Connect(function(Key)
if Key == "z" then
GetGens()
elseif Key == "x" then
GetPages()
elseif Key == "v" then
MakeSlenderVisible()
elseif Key == "c" then
Mouse.Target:Destroy()
elseif Key == "-" then
TeleportToPage()
elseif Key == "b" then
TeleportToPlayer()
end

end)