--All scripts included in this GUI are NOT made by XeX, they where all taken from different GUIs and v3rm posts to make 1 GUI.
--Oh i forgot to mention, this was made by XeX, im shit at scripting btw.

local Music = Instance.new("Sound", game.Workspace)
Music.SoundId = "rbxassetid://869859606"
Music.Volume = 1
Music.Pitch = 1
Music:Play()
wait(1)

local GUI = Instance.new("ScreenGui")
local OpenFrame = Instance.new("Frame")
local OpenButton = Instance.new("TextButton")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local FEHT = Instance.new("TextButton")
local Dab = Instance.new("TextButton")
local CloseButton = Instance.new("TextButton")
local MinimizeButton = Instance.new("TextButton")
local TextLabel_2 = Instance.new("TextLabel")
local Dance = Instance.new("TextButton")
local Spas = Instance.new("TextButton")
local God = Instance.new("TextButton")
local Brick = Instance.new("TextButton")
local NC = Instance.new("TextButton")

GUI.Name = "GUI"
GUI.Parent = game.CoreGui

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = GUI
OpenFrame.BackgroundColor3 = Color3.new(1, 1, 1)
OpenFrame.BorderColor3 = Color3.new(0, 0, 0)
OpenFrame.Position = UDim2.new(0, 0, 0, 609)
OpenFrame.Size = UDim2.new(0, 241, 0, 58)

OpenButton.Name = "OpenButton"
OpenButton.Parent = OpenFrame
OpenButton.BackgroundColor3 = Color3.new(1, 1, 1)
OpenButton.BackgroundTransparency = 1
OpenButton.Size = UDim2.new(0, 241, 0, 58)
OpenButton.Font = Enum.Font.SourceSansLight
OpenButton.FontSize = Enum.FontSize.Size14
OpenButton.Text = "Open"
OpenButton.TextColor3 = Color3.new(0, 0, 0)
OpenButton.TextScaled = true
OpenButton.TextSize = 14
OpenButton.TextWrapped = true

ScrollingFrame.Parent = GUI
ScrollingFrame.BackgroundColor3 = Color3.new(1, 1, 1)
ScrollingFrame.BorderColor3 = Color3.new(0, 0, 0)
ScrollingFrame.Position = UDim2.new(0, 509, 0, 180)
ScrollingFrame.Size = UDim2.new(0, 587, 0, 375)
ScrollingFrame.Visible = false
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0.850000024, 0)
ScrollingFrame.ScrollBarThickness = 0

TextLabel.Parent = ScrollingFrame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 375, 0, 64)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "100/100 GUI fam"
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

ImageLabel.Parent = ScrollingFrame
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0, 0, 0, 70)
ImageLabel.Size = UDim2.new(0, 251, 0, 153)
ImageLabel.Image = "rbxassetid://982367808"

FEHT.Name = "FEHT"
FEHT.Parent = ScrollingFrame
FEHT.BackgroundColor3 = Color3.new(1, 1, 1)
FEHT.BorderColor3 = Color3.new(0, 0, 0)
FEHT.Position = UDim2.new(0, 24, 0, 260)
FEHT.Size = UDim2.new(0, 253, 0, 78)
FEHT.Font = Enum.Font.SourceSansLight
FEHT.FontSize = Enum.FontSize.Size14
FEHT.Text = "FE Hammer Tool {For Cafes}"
FEHT.TextScaled = true
FEHT.TextSize = 14
FEHT.TextWrapped = true

Dab.Name = "Dab"
Dab.Parent = ScrollingFrame
Dab.BackgroundColor3 = Color3.new(1, 1, 1)
Dab.BorderColor3 = Color3.new(0, 0, 0)
Dab.Position = UDim2.new(0, 310, 0, 262)
Dab.Size = UDim2.new(0, 253, 0, 78)
Dab.Font = Enum.Font.SourceSansLight
Dab.FontSize = Enum.FontSize.Size14
Dab.Text = "Cancer \"dance\" {Dab}"
Dab.TextScaled = true
Dab.TextSize = 14
Dab.TextWrapped = true

CloseButton.Name = "CloseButton"
CloseButton.Parent = ScrollingFrame
CloseButton.BackgroundColor3 = Color3.new(1, 1, 1)
CloseButton.BorderColor3 = Color3.new(0, 0, 0)
CloseButton.Position = UDim2.new(0, 534, 0, 0)
CloseButton.Size = UDim2.new(0, 53, 0, 45)
CloseButton.Font = Enum.Font.SourceSansLight
CloseButton.FontSize = Enum.FontSize.Size14
CloseButton.Text = "X"
CloseButton.TextScaled = true
CloseButton.TextSize = 14
CloseButton.TextWrapped = true

MinimizeButton.Name = "MinimizeButton"
MinimizeButton.Parent = ScrollingFrame
MinimizeButton.BackgroundColor3 = Color3.new(1, 1, 1)
MinimizeButton.BorderColor3 = Color3.new(0, 0, 0)
MinimizeButton.Position = UDim2.new(0, 481, 0, 0)
MinimizeButton.Size = UDim2.new(0, 53, 0, 45)
MinimizeButton.Font = Enum.Font.SourceSansLight
MinimizeButton.FontSize = Enum.FontSize.Size14
MinimizeButton.Text = "_"
MinimizeButton.TextScaled = true
MinimizeButton.TextSize = 14
MinimizeButton.TextWrapped = true

TextLabel_2.Parent = ScrollingFrame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 250, 0, 56)
TextLabel_2.Size = UDim2.new(0, 322, 0, 149)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "All scripts in this GUI where taken from all different GUIs and scripts found on v3rm to make a one GUI. All credits go to their creators."
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

Dance.Name = "Dance"
Dance.Parent = ScrollingFrame
Dance.BackgroundColor3 = Color3.new(1, 1, 1)
Dance.BorderColor3 = Color3.new(0, 0, 0)
Dance.Position = UDim2.new(0, 22, 0, 375)
Dance.Size = UDim2.new(0, 253, 0, 78)
Dance.Font = Enum.Font.SourceSansLight
Dance.FontSize = Enum.FontSize.Size14
Dance.Text = "Dance 'till you're dead, lol."
Dance.TextScaled = true
Dance.TextSize = 14
Dance.TextWrapped = true

Spas.Name = "Spas"
Spas.Parent = ScrollingFrame
Spas.BackgroundColor3 = Color3.new(1, 1, 1)
Spas.BorderColor3 = Color3.new(0, 0, 0)
Spas.Position = UDim2.new(0, 312, 0, 375)
Spas.Size = UDim2.new(0, 253, 0, 78)
Spas.Font = Enum.Font.SourceSansLight
Spas.FontSize = Enum.FontSize.Size14
Spas.Text = "Have a spasm attack"
Spas.TextScaled = true
Spas.TextSize = 14
Spas.TextWrapped = true

God.Name = "God"
God.Parent = ScrollingFrame
God.BackgroundColor3 = Color3.new(1, 1, 1)
God.BorderColor3 = Color3.new(0, 0, 0)
God.Position = UDim2.new(0, 21, 0, 491)
God.Size = UDim2.new(0, 253, 0, 78)
God.Font = Enum.Font.SourceSansLight
God.FontSize = Enum.FontSize.Size14
God.Text = "God Mode {May glitch out items}"
God.TextScaled = true
God.TextSize = 14
God.TextWrapped = true

Brick.Name = "Brick"
Brick.Parent = ScrollingFrame
Brick.BackgroundColor3 = Color3.new(1, 1, 1)
Brick.BorderColor3 = Color3.new(0, 0, 0)
Brick.Position = UDim2.new(0, 309, 0, 490)
Brick.Size = UDim2.new(0, 253, 0, 78)
Brick.Font = Enum.Font.SourceSansLight
Brick.FontSize = Enum.FontSize.Size14
Brick.Text = "Brick the mother fuckin' place"
Brick.TextScaled = true
Brick.TextSize = 14
Brick.TextWrapped = true

NC.Name = "NC"
NC.Parent = ScrollingFrame
NC.BackgroundColor3 = Color3.new(1, 1, 1)
NC.BorderColor3 = Color3.new(0, 0, 0)
NC.Position = UDim2.new(0, 24, 0, 601)
NC.Size = UDim2.new(0, 544, 0, 78)
NC.Font = Enum.Font.SourceSansLight
NC.FontSize = Enum.FontSize.Size14
NC.Text = "Noclip {Use the Keybind M to toggle it}"
NC.TextScaled = true
NC.TextSize = 14
NC.TextWrapped = true

OpenButton.MouseButton1Click:connect(function()
    game.CoreGui.GUI.OpenFrame.Visible = false
    game.CoreGui.GUI.ScrollingFrame.Visible = true
end)

MinimizeButton.MouseButton1Click:connect(function()
    game.CoreGui.GUI.OpenFrame.Visible = true
    game.CoreGui.GUI.ScrollingFrame.Visible = false
end)

CloseButton.MouseButton1Click:connect(function()
    game.CoreGui.GUI.OpenFrame.Visible = false
    game.CoreGui.GUI.ScrollingFrame.Visible = false
end)

FEHT.MouseButton1Click:connect(function()
        --fe cafe hammertool script cuz im gay--
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
    print'could not find give event :('
    return
end
tool = Instance.new'Tool'
me = game:GetService'Players'.LocalPlayer
tool.RequiresHandle = false
tool.TextureId = 'http://www.roblox.com/asset/?id=12223874'
tool.Name = 'ya like jazz?'
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
            ex.BlastRadius = 0
            ex.Position = ob.Position
            ex.Parent = workspace
            maind:FireServer(workspace, ob)
            wait(0.3)
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

Dab.MouseButton1Click:connect(function()
        Player = "LocalPlayer"
AnimationId = "248263260"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.
end)

God.MouseButton1Click:connect(function()
    local player = game.Players.LocalPlayer

if player.Character then

if player.Character:FindFirstChild("Humanoid") then

player.Character.Humanoid.Name = "1"

end

local l = player.Character["1"]:Clone()

l.Parent = player.Character

l.Name = "Humanoid"; wait(0.1)

player.Character["1"]:Destroy()

workspace.CurrentCamera.CameraSubject = player.Character.Humanoid

player.Character.Animate.Disabled = true; wait(0.1)

player.Character.Animate.Disabled = false

end
end)

Dance.MouseButton1Click:connect(function()
        Player = "LocalPlayer"
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
k:Play() --Play the animation
k:AdjustSpeed(1) --Set '1' to any value you want to adjust the animation speed.
end)

NC.MouseButton1Click:connect(function()
    --Script by Kohltastrophe / Toggle made by Kujo ; )
game.Players.LocalPlayer.DevCameraOcclusionMode = 'Invisicam' --INVISCAM!!!
local mouse = game.Players.LocalPlayer:GetMouse() 
local torso = game.Players.LocalPlayer.Character.Torso 
local dir = {w = 0, s = 0, a = 0, d = 0} 
local spd = 2 mouse.KeyDown:connect(function(key) 
if key:lower() == "w" then dir.w = 1 
elseif key:lower() == "s" then dir.s = 1
elseif key:lower() == "a" then dir.a = 1 
elseif key:lower() == "d" then dir.d = 1 
elseif key:lower() == "q" then spd = spd + 1 
elseif key:lower() == "e" then spd = spd - 1 
end end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
dir.w = 0 
elseif key:lower() == "s" then dir.s = 0 
elseif key:lower() == "a" then dir.a = 0 
elseif key:lower() == "d" then dir.d = 0 
end end)


enabled = false
mouse.keyDown:connect(function(key)
if (key) == "m" and enabled == false then
enabled = true
repeat wait(1/44)
game.Players.LocalPlayer.Character.Torso.Anchored = true
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = true 
torso.CFrame = CFrame.new(torso.Position, game.Workspace.CurrentCamera.CoordinateFrame.p) * CFrame.Angles(0,math.rad(180),0) * CFrame.new((dir.d-dir.a)*spd,0,(dir.s-dir.w)*spd)
until enabled == false
elseif enabled == false then
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Torso.Anchored = false
end
if (key) == "m" and enabled == true then
enabled = false
game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
game.Players.LocalPlayer.Character.Torso.Anchored = false


end

end)
end)

Spas.MouseButton1Click:connect(function()
        Player = "LocalPlayer"
AnimationId = "33796059"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
k:Play() --Play the animation
k:AdjustSpeed(99) --Set '1' to any value you want to adjust the animation speed.
end)

Brick.MouseButton1Click:connect(function()
        for i=1,20 do
wait(1)
        for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if v:IsA'Accoutrement' then
v.Parent=game.Players.LocalPlayer.Character
v.Parent = workspace.Terrain
end
end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
if v:IsA'Accoutrement' then
for ape,hax in pairs(v.Handle:GetChildren()) do
hax:Destroy()
end
wait'.1'
v.Parent=game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt=Instance.new("Model", workspace);
        Instance.new("Part", prt).Name="Torso";
        Instance.new("Part", prt).Name="Head";
        Instance.new("Humanoid", prt).Name="Humanoid";
        game.Players.LocalPlayer.Character=prt

repeat wait(1) until game.Players.LocalPlayer.Character:FindFirstChild'Head'
for lol,dad in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
if dad:IsA'Accoutrement' then
dad.Parent = game.Players.LocalPlayer.StarterGear
end
end
for _,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
v:Destroy()
end
local prt2=Instance.new("Model", workspace);
        Instance.new("Part", prt).Name="Torso";
        Instance.new("Part", prt).Name="Head";
        Instance.new("Humanoid", prt).Name="Humanoid";
        game.Players.LocalPlayer.Character=prt
end
end)