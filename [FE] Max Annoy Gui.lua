-- MaxAnnoy Gui -- illremember --
-- Enter the person you want to annoy in Target (the gui will annoy them)
-- If you want to do someone else you will have to change Target to their name and make another gui
-- (it's like this because i'm lazy to make it good)
Target = "username"









local Gui = Instance.new("ScreenGui", game.CoreGui)
Gui.Name = "MaxAnnoy"
local Background = Instance.new("Frame",Gui)
Background.Name = "Background"
Background.Active = true
Background.BackgroundColor3 = Color3.fromRGB(255,100,110)
Background.Transparency = 0.2
Background.Draggable = true
Background.BorderSizePixel = 5
Background.Position = UDim2.new(0,300,0,300)
Background.Size = UDim2.new(0,360,0,130)
local Title = Instance.new("TextLabel",Background)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0,22,0,-50)
Title.Size = UDim2.new(0,290,1,0)
Title.Font = "SourceSans"
Title.FontSize = "Size18"
Title.Text = "Welcome to MaxAnnoy, This gui targets "..Target
Title.TextColor3 = Color3.fromRGB(20,20,25)

local LockOnPlayer = Instance.new("TextButton", Background)
LockOnPlayer.Name = "Venomshank"
LockOnPlayer.BackgroundColor3 = Color3.fromRGB(222,222,220)
LockOnPlayer.BackgroundTransparency = 0.1
LockOnPlayer.BorderSizePixel = 3
LockOnPlayer.Position = UDim2.new(0,20,0,40)
LockOnPlayer.Size = UDim2.new(0,100,0,30)
LockOnPlayer.Font = "SourceSans"
LockOnPlayer.FontSize = "Size18"
LockOnPlayer.Text = "LockOnPlayer"
LockOnPlayer.TextColor3 = Color3.fromRGB(35,35,40)
LockOnPlayer.TextWrapped = true

local LegHug = LockOnPlayer:Clone()
LegHug.Name = "LegHug"
LegHug.Parent = Background
LegHug.Position = UDim2.new(0,20,0,85)
LegHug.Text = "LegHug"

local CrazyLock = LockOnPlayer:Clone()
CrazyLock.Name = "CrazyLock"
CrazyLock.Parent = Background
CrazyLock.Position = UDim2.new(0,130,0,85)
CrazyLock.Text = "CrazyLock"

local SpamPM = LockOnPlayer:Clone()
SpamPM.Name = "SpamPM"
SpamPM.Parent = Background
SpamPM.Position = UDim2.new(0,240,0,85)
SpamPM.Text = "SpamPM"

local FEGodmode = LockOnPlayer:Clone()
FEGodmode.Name = "FEGodmode"
FEGodmode.Parent = Background
FEGodmode.BackgroundColor3 = Color3.fromRGB(222,180,180)
FEGodmode.Position = UDim2.new(0,240,0,40)
FEGodmode.Text = "FEGodmode"

local Experimental = LockOnPlayer:Clone()
Experimental.Name = "Experimental"
Experimental.Parent = Background
Experimental.Position = UDim2.new(0,130,0,40)
Experimental.Text = "Experimental"

----------------------------------------------------------------

local lockon = false
local hugl = false
local layev = false
local spamw = false
local experi = false

Experimental.MouseButton1Down:connect(function()
experi = not experi
end)
LockOnPlayer.MouseButton1Down:connect(function()
    lockon = not lockon
end)
LegHug.MouseButton1Down:connect(function()
hugl = not hugl
end)
CrazyLock.MouseButton1Down:connect(function()
layev = not layev
end)
SpamPM.MouseButton1Down:connect(function()
spamw = not spamw
end)
FEGodmode.MouseButton1Down:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
FEGodmode.BackgroundColor3 = Color3.fromRGB(100,222,120)
wait(5)
FEGodmode.BackgroundColor3 = Color3.fromRGB(222,180,180)
end)

while wait() do
    if lockon then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
        LockOnPlayer.BackgroundColor3 = Color3.fromRGB(100,222,120)
    end
    if not lockon then
        LockOnPlayer.BackgroundColor3 = Color3.fromRGB(222,222,220)
    end
    if hugl then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Right Leg"].CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Left Leg"].CFrame
wait()
        LegHug.BackgroundColor3 = Color3.fromRGB(100,222,120)
    end
    if not hugl then
        LegHug.BackgroundColor3 = Color3.fromRGB(222,222,220)
    end
if layev then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Right Leg"].CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Left Leg"].CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.Head.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.Torso.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Right Arm"].CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Left Arm"].CFrame
CrazyLock.BackgroundColor3 = Color3.fromRGB(100,222,120)
end
if not layev then
CrazyLock.BackgroundColor3 = Color3.fromRGB(222,222,220)
end
if spamw then
SpamPM.BackgroundColor3 = Color3.fromRGB(100,222,120)
game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/w "..Target.." local.spam.local.local.spam.local.local.spam.local.local.spam.local.local.spam.local.local.spam.local.local.spam.local.local.spam.local.local.spam.local.local.spam.local.spam", "All")
wait(2)
end
if not spamw then
SpamPM.BackgroundColor3 = Color3.fromRGB(222,180,180)
end
if experi then
Experimental.BackgroundColor3 = Color3.fromRGB(100,222,120)
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Right Leg"].CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Left Leg"].CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.Head.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.Torso.CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Right Arm"].CFrame
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character["Left Arm"].CFrame
AnimationId = "35154961"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
AnimationId = "282574440"
local Anim2 = Instance.new("Animation")
Anim2.AnimationId = "rbxassetid://"..AnimationId
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim):Play()
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim):AdjustSpeed(10000000)
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim2):Play()
game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim2):AdjustSpeed(1000000)
end
if not experi then
Experimental.BackgroundColor3 = Color3.fromRGB(222,180,180)
end
end