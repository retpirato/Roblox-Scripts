--Made By Balkus/ISpent

local Fe = Instance.new("ScreenGui")
local Open = Instance.new("Frame")
local OpenGui = Instance.new("TextButton")
local GuiFrame = Instance.new("Frame")
local God = Instance.new("TextButton")
local ShutDown = Instance.new("TextButton")
local FeBtools = Instance.new("TextButton")
local Headless = Instance.new("TextButton")
local Bricks = Instance.new("TextButton")
local TextBox_2 = Instance.new("TextLabel")
local p = game.Players.LocalPlayer

Fe.Name = "Fe"
Fe.Parent = game.CoreGui

Open.Name = "Open"
Open.Parent = Fe
Open.BackgroundColor3 = Color3.new(0.352941, 0.6, 1)
Open.Position = UDim2.new(0, 0, 0, 351)
Open.Size = UDim2.new(0, 105, 0, 117)

OpenGui.Name = "OpenGui"
OpenGui.Parent = Open
OpenGui.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGui.Size = UDim2.new(0, 105, 0, 117)
OpenGui.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
OpenGui.Font = Enum.Font.SourceSans
OpenGui.FontSize = Enum.FontSize.Size14
OpenGui.Text = "Open"
OpenGui.TextSize = 14

GuiFrame.Name = "GuiFrame"
GuiFrame.Parent = Fe
GuiFrame.Visible = false
GuiFrame.Active = true
GuiFrame.BackgroundColor3 = Color3.new(0.415686, 1, 0.254902)
GuiFrame.Draggable = true
GuiFrame.Position = UDim2.new(0, 100, 0, 400)
GuiFrame.Selectable = true
GuiFrame.Size = UDim2.new(0, 449, 0, 290)
GuiFrame.Style = Enum.FrameStyle.RobloxSquare

God.Name = "God"
God.Parent = GuiFrame
God.BackgroundColor3 = Color3.new(0.333333, 1, 1)
God.Size = UDim2.new(0, 200, 0, 50)
God.Font = Enum.Font.SourceSans
God.FontSize = Enum.FontSize.Size14
God.Text = "God"
God.TextSize = 14

ShutDown.Name = "ShutDown"
ShutDown.Parent = GuiFrame
ShutDown.BackgroundColor3 = Color3.new(0.333333, 1, 1)
ShutDown.Position = UDim2.new(0, 0, 0, 67)
ShutDown.Size = UDim2.new(0, 200, 0, 50)
ShutDown.Font = Enum.Font.SourceSans
ShutDown.FontSize = Enum.FontSize.Size14
ShutDown.Text = "Shutdown"
ShutDown.TextSize = 14

FeBtools.Name = "FeBtools"
FeBtools.Parent = GuiFrame
FeBtools.BackgroundColor3 = Color3.new(0.333333, 1, 1)
FeBtools.Position = UDim2.new(0, 224, 0, 66)
FeBtools.Size = UDim2.new(0, 200, 0, 50)
FeBtools.Font = Enum.Font.SourceSans
FeBtools.FontSize = Enum.FontSize.Size14
FeBtools.Text = "FeBtools"
FeBtools.TextSize = 14


Headless.Name = "Headless"
Headless.Parent = GuiFrame
Headless.BackgroundColor3 = Color3.new(0.333333, 1, 1)
Headless.Position = UDim2.new(0, 224, 0, 0)
Headless.Size = UDim2.new(0, 200, 0, 50)
Headless.Font = Enum.Font.SourceSans
Headless.FontSize = Enum.FontSize.Size14
Headless.Text = "Headless"
Headless.TextSize = 14

Bricks.Name = "Bricks"
Bricks.Parent = GuiFrame
Bricks.BackgroundColor3 = Color3.new(0.333333, 1, 1)
Bricks.Position = UDim2.new(0, 0, 0, 145)
Bricks.Size = UDim2.new(0, 200, 0, 50)
Bricks.Font = Enum.Font.SourceSans
Bricks.FontSize = Enum.FontSize.Size14
Bricks.Text = "Bricks"
Bricks.TextSize = 14

TextBox_2.Parent = GuiFrame
TextBox_2.BackgroundColor3 = Color3.new(0.333333, 1, 0)
TextBox_2.Position = UDim2.new(0, 0, 0, 254)
TextBox_2.Size = UDim2.new(0, 200, 0, 19)
TextBox_2.Font = Enum.Font.SourceSans
TextBox_2.FontSize = Enum.FontSize.Size14
TextBox_2.Text = "Made By ISpent/Balkus"
TextBox_2.TextSize = 14
God.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = 
game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)
ShutDown.MouseButton1Down:connect(function()
    while wait() do
   for i,v in pairs(game:GetService'Players':GetPlayers()) do
       if v.Character ~= nil and v.Character:FindFirstChild'Head' then
           for _,x in pairs(v.Character.Head:GetChildren()) do
               if x:IsA'Sound' then x.Playing = true end
           end
       end
   end
end
while wait() do
   for i,v in pairs(game:GetService'Players':GetPlayers()) do
       if v.Character ~= nil and v.Character:FindFirstChild'Head' then
           for _,x in pairs(v.Character.Head:GetChildren()) do
               if x:IsA'Sound' then x.Playing = false end
           end
       end
   end
end
end)
FeBtools.MouseButton1Down:connect(function()
--Ur mom is lesbian if u leak this--
maind = nil
if workspace:FindFirstChild'GiveSystem' then
if workspace.GiveSystem:FindFirstChild'GiveItem' then
maind = workspace.GiveSystem.GiveItem
end
end
if workspace:FindFirstChild'HandToCentre' then
if workspace.HandToCentre:FindFirstChild'SendItem' then
maind = workspace.HandToCentre.SendItem
end
end
if maind == nil then
print'Try another game.'
return
end
tool = Instance.new'Tool'
me = game:GetService'Players'.LocalPlayer
tool.RequiresHandle = false
tool.TextureId = 'http://www.roblox.com/asset/?id=12223874'
tool.Name = 'Destroy!!!!'
tool.Parent = me.Backpack
buttonf = nil
tool.Equipped:connect(function()
local m = game:GetService'Players'.LocalPlayer:GetMouse()
m.Icon = 'rbxasset://textures/HammerCursor.png'
buttonf = m.Button1Down:connect(function()
if m.Target == nil then return end
local ob = m.Target
if ob:IsA'BasePart' or ob:IsA'WedgePart' then
if ob:IsDescendantOf(me.Character) then return end
m.Icon = 'rbxasset://textures/HammerOverCursor.png'
local ex = Instance.new'Explosion'
ex.BlastRadius = 1
ex.Position = ob.Position
ex.Parent = workspace
maind:FireServer(workspace, ob)
wait(0.1)
m.Icon = 'rbxasset://textures/HammerCursor.png'
end
end)
end)
tool.Unequipped:connect(function()
if buttonf ~= nil then
buttonf:Disconnect()
buttonf = nil
end
local m = game:GetService'Players'.LocalPlayer:GetMouse()
m.Icon = ''
end)
end)

Headless.MouseButton1Down:connect(function()
    while true do
local weld = Instance.new('Weld')
weld.Parent = game.Players.LocalPlayer.Character.Torso
weld.Part0 = weld.Parent
weld.Part1 = weld.Parent.Parent.Head
weld.C0 = CFrame.new(0, 300, 0)
weld.Parent.Parent.Head.CanCollide = true
wait (0.1)
end
end)
Bricks.MouseButton1Down:connect(function()
local player = game.Players.LocalPlayer

local function CreatePart()
    for _,v in pairs(player.Character:GetChildren()) do v:Destroy() end
    local prt = Instance.new("Model", workspace);
    Instance.new("Part", prt).Name = "Torso";
    Instance.new("Part", prt).Name = "Head";
    Instance.new("Humanoid", prt).Name = "Humanoid";
    player.Character = prt  
end

local function Test(place, func)
    for _, v in pairs(place:GetChildren()) do
        if v:IsA'Accoutrement' then
            func(v)
        end
    end
end

for i=1, 20 do
    wait(1)
    Test(player.Backpack, function(p) p.Parent = player.Character p.Parent = workspace.Terrain end)
    
    Test(player.Character, function(p) 
        for _, h in pairs(p.Handle:GetChildren()) do h:Destroy() end
        wait(0.1)
        p.Parent = player.StarterGear
    end)

    CreatePart()
    
    repeat wait(1) until player.Character:FindFirstChild'Torso'
    Test(player.Backpack, function(p) p.Parent = player.StarterGear end)
    CreatePart()
end
end)
OpenGui.MouseButton1Down:connect(function()
game.CoreGui.Fe.Open.Visible = false
game.CoreGui.Fe.GuiFrame.Visible = true
end)