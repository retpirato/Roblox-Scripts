-- Credits To Script Founder
-- Gui Made By: Script Hunter - Anwarun
-- Subscribe: AnwarunYt

Mouse = game.Players.LocalPlayer:GetMouse()
 
Client = game.ReplicatedStorage.Interaction.ClientSetListPlayer
players = game.Players
for i, v in pairs(players:GetPlayers()) do
	if v.Name ~= players.LocalPlayer.Name then
		Client:InvokeServer(players.LocalPlayer.BlacklistFolder, v, true)
	end
end
players.PlayerAdded:connect(function(plr)
	Client:InvokeServer(players.LocalPlayer.BlacklistFolder, plr, true)
end)

-- Objects

local plr = game:GetService('Players').LocalPlayer.Character
local Lt2 = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Walk = Instance.new("TextButton")
local Dupe = Instance.new("TextButton")
local Tpwood = Instance.new("TextButton")
local GoldAxe = Instance.new("TextButton")
local Jump = Instance.new("TextButton")
local WallHax = Instance.new("TextButton")
local Teleportt = Instance.new("TextButton")
local Wnum = Instance.new("TextBox")
local Jnum = Instance.new("TextBox")
local Tpframe = Instance.new("Frame")
local Tittle = Instance.new("TextLabel")
local LolF = Instance.new("ScrollingFrame")
local plot = Instance.new("TextButton")
local woodrus = Instance.new("TextButton")
local spawn = Instance.new("TextButton")
local volcano = Instance.new("TextButton")
local swamp = Instance.new("TextButton")
local palm = Instance.new("TextButton")
local cave = Instance.new("TextButton")
local cars = Instance.new("TextButton")
local strangemen = Instance.new("TextButton")
local theden = Instance.new("TextButton")
local Color = Instance.new("Frame")
local titttle = Instance.new("TextLabel")
local Grey = Instance.new("TextButton")
local Phantom = Instance.new("TextButton")
local Spooky = Instance.new("TextButton")
local Blue = Instance.new("TextButton")
local LightSpooky = Instance.new("TextButton")
local X = Instance.new("TextButton")

-- Properties

Lt2.Name = "Lt2"
Lt2.Parent = game.CoreGui
Lt2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Lt2
Frame.Active = true
Frame.Draggable = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.10000000149012
Frame.Position = UDim2.new(0.225425944, 0, 0.291505814, 0)
Frame.Size = UDim2.new(0, 419, 0, 216)

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BorderColor3 = Color3.new(1, 1, 1)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 419, 0, 23)
Title.Font = Enum.Font.GothamBold
Title.Text = "Lt2 Gui"
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextSize = 20

Walk.Name = "Walk"
Walk.Parent = Frame
Walk.BackgroundColor3 = Color3.new(1, 1, 1)
Walk.Position = UDim2.new(0.0238663331, 0, 0.833333373, 0)
Walk.Size = UDim2.new(0, 154, 0, 28)
Walk.Font = Enum.Font.GothamBold
Walk.Text = "Walk Speed"
Walk.TextColor3 = Color3.new(0, 0, 0)
Walk.TextSize = 20

Dupe.Name = "Dupe"
Dupe.Parent = Frame
Dupe.BackgroundColor3 = Color3.new(1, 1, 1)
Dupe.Position = UDim2.new(0.050119333, 0, 0.152777776, 0)
Dupe.Size = UDim2.new(0, 375, 0, 26)
Dupe.Font = Enum.Font.GothamBold
Dupe.Text = "Dupe"
Dupe.TextColor3 = Color3.new(0, 0, 0)
Dupe.TextSize = 20

Tpwood.Name = "Tpwood"
Tpwood.Parent = Frame
Tpwood.BackgroundColor3 = Color3.new(1, 1, 1)
Tpwood.Position = UDim2.new(0.050119333, 0, 0.310185194, 0)
Tpwood.Size = UDim2.new(0, 176, 0, 28)
Tpwood.Font = Enum.Font.GothamBold
Tpwood.Text = "Bring Wood"
Tpwood.TextColor3 = Color3.new(0, 0, 0)
Tpwood.TextSize = 20

GoldAxe.Name = "GoldAxe"
GoldAxe.Parent = Frame
GoldAxe.BackgroundColor3 = Color3.new(1, 1, 1)
GoldAxe.Position = UDim2.new(0.52505964, 0, 0.310185194, 0)
GoldAxe.Size = UDim2.new(0, 176, 0, 28)
GoldAxe.Font = Enum.Font.GothamBold
GoldAxe.Text = "Gold Axe"
GoldAxe.TextColor3 = Color3.new(0, 0, 0)
GoldAxe.TextSize = 20

Jump.Name = "Jump"
Jump.Parent = Frame
Jump.BackgroundColor3 = Color3.new(1, 1, 1)
Jump.Position = UDim2.new(0.613365114, 0, 0.833333373, 0)
Jump.Size = UDim2.new(0, 154, 0, 28)
Jump.Font = Enum.Font.GothamBold
Jump.Text = "Jump Hack"
Jump.TextColor3 = Color3.new(0, 0, 0)
Jump.TextSize = 20

WallHax.Name = "WallHax"
WallHax.Parent = Frame
WallHax.BackgroundColor3 = Color3.new(1, 1, 1)
WallHax.Position = UDim2.new(0.52505964, 0, 0.490740746, 0)
WallHax.Size = UDim2.new(0, 176, 0, 28)
WallHax.Font = Enum.Font.GothamBold
WallHax.Text = "Wall Color Hack"
WallHax.TextColor3 = Color3.new(0, 0, 0)
WallHax.TextSize = 20

Teleportt.Name = "Teleportt"
Teleportt.Parent = Frame
Teleportt.BackgroundColor3 = Color3.new(1, 1, 1)
Teleportt.Position = UDim2.new(0.0501193106, 0, 0.490740746, 0)
Teleportt.Size = UDim2.new(0, 176, 0, 28)
Teleportt.Font = Enum.Font.GothamBold
Teleportt.Text = "Teleport"
Teleportt.TextColor3 = Color3.new(0, 0, 0)
Teleportt.TextSize = 20

Wnum.Name = "Wnum"
Wnum.Parent = Frame
Wnum.BackgroundColor3 = Color3.new(1, 1, 1)
Wnum.Position = UDim2.new(0.0548925996, 0, 0.703703701, 0)
Wnum.Size = UDim2.new(0, 128, 0, 22)
Wnum.Font = Enum.Font.GothamBold
Wnum.Text = "15"
Wnum.TextColor3 = Color3.new(0, 0, 0)
Wnum.TextSize = 20

Jnum.Name = "Jnum"
Jnum.Parent = Frame
Jnum.BackgroundColor3 = Color3.new(1, 1, 1)
Jnum.Position = UDim2.new(0.644391418, 0, 0.703703701, 0)
Jnum.Size = UDim2.new(0, 128, 0, 22)
Jnum.Font = Enum.Font.GothamBold
Jnum.Text = "50"
Jnum.TextColor3 = Color3.new(0, 0, 0)
Jnum.TextSize = 20

Tpframe.Name = "Tpframe"
Tpframe.Parent = Frame
Tpframe.Visible = false
Tpframe.BackgroundColor3 = Color3.new(1, 1, 1)
Tpframe.BorderColor3 = Color3.new(1, 1, 1)
Tpframe.BorderSizePixel = 2
Tpframe.Position = UDim2.new(-0.279236287, 0, 0, 0)
Tpframe.Size = UDim2.new(0, 108, 0, 216)

Tittle.Name = "Tittle"
Tittle.Parent = Tpframe
Tittle.BackgroundColor3 = Color3.new(1, 1, 1)
Tittle.BorderSizePixel = 2
Tittle.Position = UDim2.new(7.06425425e-08, 0, 0, 0)
Tittle.Size = UDim2.new(0, 108, 0, 23)
Tittle.Font = Enum.Font.GothamBold
Tittle.Text = "Teleport"
Tittle.TextColor3 = Color3.new(0, 0, 0)
Tittle.TextSize = 20

LolF.Name = "LolF"
LolF.Parent = Tpframe
LolF.BackgroundColor3 = Color3.new(0, 0, 0)
LolF.BorderSizePixel = 0
LolF.Position = UDim2.new(0, 0, 0.106481485, 0)
LolF.Size = UDim2.new(0, 108, 0, 193)

plot.Name = "plot"
plot.Parent = LolF
plot.BackgroundColor3 = Color3.new(1, 1, 1)
plot.Position = UDim2.new(0.0648148805, 0, 0.0279903859, 0)
plot.Size = UDim2.new(0, 81, 0, 23)
plot.Font = Enum.Font.GothamBold
plot.Text = "You Base"
plot.TextColor3 = Color3.new(0, 0, 0)
plot.TextSize = 14

woodrus.Name = "woodrus"
woodrus.Parent = LolF
woodrus.BackgroundColor3 = Color3.new(1, 1, 1)
woodrus.Position = UDim2.new(0.0648148805, 0, 0.0997496471, 0)
woodrus.Size = UDim2.new(0, 81, 0, 23)
woodrus.Font = Enum.Font.GothamBold
woodrus.Text = "WoodRus"
woodrus.TextColor3 = Color3.new(0, 0, 0)
woodrus.TextSize = 14

spawn.Name = "spawn"
spawn.Parent = LolF
spawn.BackgroundColor3 = Color3.new(1, 1, 1)
spawn.Position = UDim2.new(0.0648148805, 0, 0.169194102, 0)
spawn.Size = UDim2.new(0, 81, 0, 23)
spawn.Font = Enum.Font.GothamBold
spawn.Text = "Spawn"
spawn.TextColor3 = Color3.new(0, 0, 0)
spawn.TextSize = 14

volcano.Name = "volcano"
volcano.Parent = LolF
volcano.BackgroundColor3 = Color3.new(1, 1, 1)
volcano.Position = UDim2.new(0.0648148805, 0, 0.243268177, 0)
volcano.Size = UDim2.new(0, 81, 0, 23)
volcano.Font = Enum.Font.GothamBold
volcano.Text = "Volcano"
volcano.TextColor3 = Color3.new(0, 0, 0)
volcano.TextSize = 14

swamp.Name = "swamp"
swamp.Parent = LolF
swamp.BackgroundColor3 = Color3.new(1, 1, 1)
swamp.Position = UDim2.new(0.0648148805, 0, 0.308082998, 0)
swamp.Size = UDim2.new(0, 81, 0, 23)
swamp.Font = Enum.Font.GothamBold
swamp.Text = "Swamp"
swamp.TextColor3 = Color3.new(0, 0, 0)
swamp.TextSize = 14

palm.Name = "palm"
palm.Parent = LolF
palm.BackgroundColor3 = Color3.new(1, 1, 1)
palm.Position = UDim2.new(0.0648148805, 0, 0.372897804, 0)
palm.Size = UDim2.new(0, 81, 0, 23)
palm.Font = Enum.Font.GothamBold
palm.Text = "Palm"
palm.TextColor3 = Color3.new(0, 0, 0)
palm.TextSize = 14

cave.Name = "cave"
cave.Parent = LolF
cave.BackgroundColor3 = Color3.new(1, 1, 1)
cave.Position = UDim2.new(0.0648148805, 0, 0.444657058, 0)
cave.Size = UDim2.new(0, 81, 0, 23)
cave.Font = Enum.Font.GothamBold
cave.Text = "Cave"
cave.TextColor3 = Color3.new(0, 0, 0)
cave.TextSize = 14

cars.Name = "cars"
cars.Parent = LolF
cars.BackgroundColor3 = Color3.new(1, 1, 1)
cars.Position = UDim2.new(0.0648148805, 0, 0.514101505, 0)
cars.Size = UDim2.new(0, 81, 0, 23)
cars.Font = Enum.Font.GothamBold
cars.Text = "Boxed Cars"
cars.TextColor3 = Color3.new(0, 0, 0)
cars.TextSize = 14

strangemen.Name = "strangemen"
strangemen.Parent = LolF
strangemen.BackgroundColor3 = Color3.new(1, 1, 1)
strangemen.Position = UDim2.new(0.0648148805, 0, 0.583545923, 0)
strangemen.Size = UDim2.new(0, 81, 0, 23)
strangemen.Font = Enum.Font.GothamBold
strangemen.Text = "Strange Man"
strangemen.TextColor3 = Color3.new(0, 0, 0)
strangemen.TextSize = 14

theden.Name = "theden"
theden.Parent = LolF
theden.BackgroundColor3 = Color3.new(1, 1, 1)
theden.Position = UDim2.new(0.0648148805, 0, 0.650675535, 0)
theden.Size = UDim2.new(0, 81, 0, 23)
theden.Font = Enum.Font.GothamBold
theden.Text = "The Den"
theden.TextColor3 = Color3.new(0, 0, 0)
theden.TextSize = 14
function Create(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end
Color.Name = "Color"
Color.Visible = false
Color.Parent = Frame
Color.BackgroundColor3 = Color3.new(1, 1, 1)
Color.BorderColor3 = Color3.new(1, 1, 1)
Color.BorderSizePixel = 2
Color.Position = UDim2.new(1.02625299, 0, 0, 0)
Color.Size = UDim2.new(0, 103, 0, 216)

titttle.Name = "titttle"
titttle.Parent = Color
titttle.BackgroundColor3 = Color3.new(1, 1, 1)
titttle.BorderSizePixel = 2
titttle.Size = UDim2.new(0, 103, 0, 23)
titttle.Font = Enum.Font.GothamBold
titttle.Text = "Color Hax"
titttle.TextColor3 = Color3.new(0, 0, 0)
titttle.TextSize = 14
local service = setmetatable({}, {
	__index = function(t, k)
		return game:GetService(k)
	end
})
Grey.Name = "Grey"
Grey.Parent = Color
Grey.BackgroundColor3 = Color3.new(1, 1, 1)
Grey.BorderColor3 = Color3.new(0, 0, 0)
Grey.BorderSizePixel = 2
Grey.Position = UDim2.new(0.0679611638, 0, 0.152777776, 0)
Grey.Size = UDim2.new(0, 89, 0, 26)
Grey.Font = Enum.Font.GothamBold
Grey.Text = "Grey"
Grey.TextColor3 = Color3.new(0, 0, 0)
Grey.TextSize = 20

Phantom.Name = "Phantom"
Phantom.Parent = Color
Phantom.BackgroundColor3 = Color3.new(1, 1, 1)
Phantom.BorderColor3 = Color3.new(0, 0, 0)
Phantom.BorderSizePixel = 2
Phantom.Position = UDim2.new(0.0679611638, 0, 0.319444448, 0)
Phantom.Size = UDim2.new(0, 89, 0, 26)
Phantom.Font = Enum.Font.GothamBold
Phantom.Text = "Phantom"
Phantom.TextColor3 = Color3.new(0, 0, 0)
Phantom.TextSize = 20

Spooky.Name = "Spooky"
Spooky.Parent = Color
Spooky.BackgroundColor3 = Color3.new(1, 1, 1)
Spooky.BorderColor3 = Color3.new(0, 0, 0)
Spooky.BorderSizePixel = 2
Spooky.Position = UDim2.new(0.0679611638, 0, 0.490740746, 0)
Spooky.Size = UDim2.new(0, 89, 0, 26)
Spooky.Font = Enum.Font.GothamBold
Spooky.Text = "Spooky"
Spooky.TextColor3 = Color3.new(0, 0, 0)
Spooky.TextSize = 20

Blue.Name = "Blue"
Blue.Parent = Color
Blue.BackgroundColor3 = Color3.new(1, 1, 1)
Blue.BorderColor3 = Color3.new(0, 0, 0)
Blue.BorderSizePixel = 2
Blue.Position = UDim2.new(0.0679611638, 0, 0.652777791, 0)
Blue.Size = UDim2.new(0, 89, 0, 26)
Blue.Font = Enum.Font.GothamBold
Blue.Text = "Blue"
Blue.TextColor3 = Color3.new(0, 0, 0)
Blue.TextSize = 20

LightSpooky.Name = "LightSpooky"
LightSpooky.Parent = Color
LightSpooky.BackgroundColor3 = Color3.new(1, 1, 1)
LightSpooky.BorderColor3 = Color3.new(0, 0, 0)
LightSpooky.BorderSizePixel = 2
LightSpooky.Position = UDim2.new(0.0679611638, 0, 0.828703701, 0)
LightSpooky.Size = UDim2.new(0, 89, 0, 26)
LightSpooky.Font = Enum.Font.GothamBold
LightSpooky.Text = "L Spooky"
LightSpooky.TextColor3 = Color3.new(0, 0, 0)
LightSpooky.TextSize = 20

X.Name = "X"
X.Parent = Frame
X.BackgroundColor3 = Color3.new(1, 0, 0)
X.BorderColor3 = Color3.new(1, 0, 0)
X.Position = UDim2.new(0.930787563, 0, -0.00925925933, 0)
X.Size = UDim2.new(0, 29, 0, 26)
X.Font = Enum.Font.GothamBold
X.Text = "X"
X.TextColor3 = Color3.new(1, 1, 1)
X.TextSize = 20

--U Is Gay

Walk.MouseButton1Click:connect(function()
	while wait() do
		plr.Humanoid.WalkSpeed = Wnum.Text
	end
end)

Jump.MouseButton1Click:connect(function()
	while wait() do
		plr.Humanoid.JumpPower = Jnum.Text
	end
end)

X.MouseButton1Click:connect(function()
	Lt2:Destroy()
end)

Tpwood.MouseButton1Click:connect(function()
    for _, Log in pairs(service.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == service.Players.LocalPlayer then
                Log:MoveTo(service.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 20, 0))
                for i=1,100 do
                    service.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                end
            end
        end
    end
end)

buka = false
WallHax.MouseButton1Click:connect(function()
	if buka == true then
		buka = false
		Color.Visible = false
	else
		buka = true
		Color.Visible = true
	end
end)

buka1 = false
Teleportt.MouseButton1Click:connect(function()
	if buka1 == true then
		buka1 = false
		Tpframe.Visible = false
	else
		buka1 = true
		Tpframe.Visible = true
	end
end)

Duping = false
Dupe.MouseButton1Click:connect(function()
	local slott = game:GetService('Players').LocalPlayer.CurrentSaveSlot
	if Duping == true then
		slott.RobloxLocked = false
		Duping = false
		Dupe.BackgroundColor3 = Color3.new(255, 255, 255)
	else
		Duping = true
		if slott.Value == -1 then
			slott.RobloxLocked = true
			Dupe.BackgroundColor3 = Color3.new(0, 255, 0)
		end
	end
end)

plot.MouseButton1Click:connect(function()
	local bch = game:GetService('Players').LocalPlayer
		for i,v in pairs(game.Workspace.Properties:GetChildren()) do
		if v.Owner.Value == bch then
			plr.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,10,0)
		end
	end
end)

woodrus.MouseButton1Click:connect(function()
	plr.HumanoidRootPart.CFrame = CFrame.new(265, 5, 57)
end)

spawn.MouseButton1Click:connect(function()
	plr.HumanoidRootPart.CFrame = CFrame.new(155, 5, 74)
end)

local tp = plr.HumanoidRootPart

volcano.MouseButton1Click:connect(function()
	tp.CFrame = CFrame.new(-1585, 625, 1140)
end)

palm.MouseButton1Click:connect(function()
	tp.CFrame = CFrame.new(2549, 5, -42)
end)

cars.MouseButton1Click:connect(function()
	tp.CFrame = CFrame.new(509, 5.2, -1463)
end)

cave.MouseButton1Click:connect(function()
	tp.CFrame = CFrame.new(3581, -177, 430)
end)

swamp.MouseButton1Click:connect(function()
	tp.CFrame = CFrame.new(-1209, 138, -801)
end)

strangemen.MouseButton1Click:connect(function()
	tp.CFrame = CFrame.new(1061, 20, 1131)
end)

theden.MouseButton1Click:connect(function()
	tp.CFrame = CFrame.new(323, 49, 1930)
end)

-- ColorHax Script

woodtype = "Birch"

local tool = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
tool.RequiresHandle = false
--tool.RobloxLocked = true
tool.Name = "Paint"
tool.ToolTip = "Changes A Stucture's Wood Type"
tool.Equipped:connect(function(Mouse)
Mouse.Button1Down:connect(function()
if Mouse.Target.Parent:FindFirstChild("Type") or Mouse.Target.Parent:FindFirstChild("BlueprintWoodClass") then
local Cframe
if Mouse.Target.Parent:FindFirstChild("MainCFrame") then
Cframe = Mouse.Target.Parent.MainCFrame.Value
else
Cframe = Mouse.Target.Parent.PrimaryPart.CFrame
end
if Mouse.Target.Parent ~= nil then
game.ReplicatedStorage.PlaceStructure.ClientPlacedStructure:FireServer(Mouse.Target.Parent.ItemName.Value, Cframe, game.Players.LocalPlayer, woodtype, Mouse.Target.Parent, false)
end
else
--do nothing
end
end)
end)

g1 = false
g2 = false
g3 = false
g4 = false
g5 = false

Grey.MouseButton1Click:connect(function()
	if g1 == true then
		g1 = false
		Grey.BackgroundColor3 = Color3.new(255, 255, 255)
	else
		g1 = true
		Grey.BackgroundColor3 = Color3.new(0, 255, 0)
		if g1 then
		woodtype = nil
		end
	end
end)

Spooky.MouseButton1Click:connect(function()
	if g2 == true then
		g2 = false
		Spooky.BackgroundColor3 = Color3.new(255, 255, 255)
	else
		g2 = true
		Spooky.BackgroundColor3 = Color3.new(0, 255, 0)
		if g2 then
	    woodtype = "Spooky"
	   end
	end
end)

LightSpooky.MouseButton1Click:connect(function()
	if g3 == true then
		g3 = false
		LightSpooky.BackgroundColor3 = Color3.new(255, 255, 255)
	else
		g3 = true
		LightSpooky.BackgroundColor3 = Color3.new(0, 255, 0)
	if g3 then
		woodtype = "SpookyNeon"
	end
	end
end)

Blue.MouseButton1Click:connect(function()
	if g4 == true then
		g4 = false
		Blue.BackgroundColor3 = Color3.new(255, 255, 255)
	else
		g4 = true
		Blue.BackgroundColor3 = Color3.new(0, 255, 0)
		if g4 then
	    woodtype = "CaveCrawler"
	end
	end
end)

Phantom.MouseButton1Click:connect(function()
	if g5 == true then
		g5 = false
		Phantom.BackgroundColor3 = Color3.new(255, 255, 255)
	else
		g5 = true
		Phantom.BackgroundColor3 = Color3.new(0, 255, 0)
		if g5 then
	    woodtype = "LoneCave"
	end
	end
end)

-- GOLD AXE
GoldAxe.MouseButton1Down:Connect(function()
	GoldAxe.BackgroundColor3 = Color3.new(0, 255, 0)
	GoldAxe.Text = "Active, Cant To off"
Detect = coroutine.wrap(function()
	Player = game.Players.LocalPlayer
	mouse = Player:GetMouse()
	mouse.Button1Down:connect(function()
		MouseDown = true
	end)
	mouse.Button1Up:connect(function()
		MouseDown = false
	end)
end)
Detect()
Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
game:GetService('RunService').RenderStepped:connect(function()
	if Player.Character:FindFirstChild("Tool") then
		if MouseDown == true then
			if mouse.Target.Name == "WoodSection" then
				targetWood = mouse.Target
				Tool=Player.Character.Tool
				---FaceVector
				Height = targetWood.CFrame:pointToObjectSpace(mouse.Hit.p).Y + targetWood.Size.Y/2
				local ray = Ray.new(Player.Character.Head.Position, ((targetWood.CFrame * CFrame.new(0, Height - targetWood.Size.Y/2, 0)).p - Player.Character.Head.Position).unit * 200)
				part,_,p = workspace:FindPartOnRay(ray, Player.Character)
				function fixVector(V)
					return Vector3.new(math.floor(V.X + 0.5), math.floor(V.Y + 0.5), math.floor(V.Z + 0.5))
				end
				local faceVector = fixVector(targetWood.CFrame:vectorToObjectSpace(p))
				if faceVector.Y ~= 0 then
					return
				end
				local lookAtCFrame = CFrame.new(Player.Character.Head.Position, mouse.Hit.p)
				local relativeCFrame = lookAtCFrame:toObjectSpace(targetWood.CFrame * CFrame.Angles(math.pi/2, 0, 0))
				local relativeLookVector = relativeCFrame.lookVector
				local m = relativeLookVector.Y >= 0 and 1 or -1
				if faceVector.X == 1 then
					faceVector = Vector3.new(0, 0, -1) * m
				elseif faceVector.X == -1 then
					faceVector = Vector3.new(0, 0, 1) * m
				elseif faceVector.Z == 1 then
					faceVector = Vector3.new(1, 0, 0) * m
				elseif faceVector.Z == -1 then
					faceVector = Vector3.new(-1, 0, 0) * m
				end
				local cutEvent = targetWood.Parent.CutEvent
				game.ReplicatedStorage.Interaction.RemoteProxy:FireServer(cutEvent, {sectionId = targetWood.ID.Value, faceVector = faceVector, height = Height, hitPoints = 0.2, cooldown = 0, cuttingClass = "Axe", tool = Player.Character.Tool})
			end
		end
	end
end)
end)