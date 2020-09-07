--Made by Hirari_Tear, credits to expro for the GUI--
plr = game.Players.LocalPlayer
mse = plr:GetMouse()
sound = Instance.new("Sound", game.Workspace)
sound.SoundId = "https://www.roblox.com/asset/?id=615678808"
sound.Volume = 10
canworld = true
mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "z" then
		if canworld == false then return end
		if canworld then
		canworld = false
		sound:Play()
		local function spawnpart()
		sphere = Instance.new("Part")
		--game.Debris:AddItem(sphere,3)
		local sm = Instance.new("SpecialMesh", sphere)
		sm.MeshType = "Sphere"
		sphere.Transparency = 0.5
		sphere.Anchored = true
		sphere.CanCollide = false
		sphere.Material = "Neon"
		sphere.BrickColor = BrickColor.new("Lapis")
		end
		
		local function weld(lol)
			local weld = Instance.new("Weld", plr.Character.Torso)
			weld.Part0 = plr.Character.Torso
			weld.Part1 = lol
			weld.C0 = plr.Character.Torso.CFrame:inverse()
			weld.C1 = lol.CFrame:inverse()
		end
		wait(1.4)
		spawnpart()
			for i, v in pairs(game.Players:GetChildren()) do
			t = v.Character:FindFirstChild("Torso")
			if t then
				t.Anchored = true
				plr.Character:FindFirstChild("Torso").Anchored = false
			end
			RA = v.Character:FindFirstChild("Right Arm")
			if RA then
				RA.Anchored = true
				plr.Character:FindFirstChild("Right Arm").Anchored = false
			end
			LA = v.Character:FindFirstChild("Left Arm")
			if LA then
				LA.Anchored = true
				plr.Character:FindFirstChild("Left Arm").Anchored = false
			end
			RL = v.Character:FindFirstChild("Right Leg")
			if RL then
				RL.Anchored = true
				plr.Character:FindFirstChild("Right Leg").Anchored = false
			end
			LL = v.Character:FindFirstChild("Left Leg")
			if LL then
				LL.Anchored = true
				plr.Character:FindFirstChild("Left Leg").Anchored = false
			end
		end
		weld(sphere)
		cce = Instance.new("ColorCorrectionEffect", game.Lighting)
		cce.Saturation = -2
		--game.Debris:AddItem(cce, 5)
		sphere.Parent = game.Workspace
		for i = 1,10 do
			sphere.Size = sphere.Size + Vector3.new(50,50,50)
			wait()
			end
		--wait(5)
		
		end
	end
end
)

mse.KeyDown:connect(function(key)
	key = key:lower()
	if key == "x" then
canworld = true
		for i, v in pairs(game.Players:GetChildren()) do
		t = v.Character:FindFirstChild("Torso")
			if t then
				t.Anchored = false
			end
			RA = v.Character:FindFirstChild("Right Arm")
			if RA then
				RA.Anchored = false
			end
			LA = v.Character:FindFirstChild("Left Arm")
			if LA then
				LA.Anchored = false
			end
			RL = v.Character:FindFirstChild("Right Leg")
			if RL then
				RL.Anchored = false
			end
			LL = v.Character:FindFirstChild("Left Leg")
			if LL then
				LL.Anchored = false
			end
		end
		cce.Saturation = 0
sphere:Destroy()
end
end)
local s = Instance.new("Sound",char)
s.Name = "BGMusic"
s.SoundId = "http://www.roblox.com/asset/?id=575495113"
s.Pitch = 0.72
s.Volume = 1
s.Looped = true
s.archivable = false
s.Parent = game.Workspace
wait(0.1)
s:play()

p = game.Players.LocalPlayer
char = p.Character
torso = char.Torso
neck = char.Torso.Neck
hum = char.Humanoid
hum.MaxHealth = 52500
wait()
hum.Health =hum.MaxHealth
char.Head.face.Texture = "rbxassetid://416589371"

for i,v in pairs(char:children()) do
    if v:IsA("Hat") then
        v:Destroy()
    end
end

ypcall(function()
char.Shirt:Destroy()
char.Pants:Destroy()
shirt = Instance.new("Shirt", char)
shirt.Name = "Shirt"
pants = Instance.new("Pants", char)
pants.Name = "Pants"
char.Shirt.ShirtTemplate = "rbxassetid://337059031"
char.Pants.PantsTemplate = "rbxassetid://337059100"
end)

CV="Maroon"
	
local txt = Instance.new("BillboardGui", char)
txt.Adornee = char .Head
txt.Name = "_status"
txt.Size = UDim2.new(2, 0, 1.2, 0)
txt.StudsOffset = Vector3.new(-9, 8, 0)
local text = Instance.new("TextLabel", txt)
text.Size = UDim2.new(10, 0, 7, 0)
text.FontSize = "Size24"
text.TextScaled = true
text.TextTransparency = 0
text.BackgroundTransparency = 1 
text.TextTransparency = 0
text.TextStrokeTransparency = 0
text.Font = "Bodoni"
text.TextStrokeColor3 = Color3.new(0,0,0)

v=Instance.new("Part")
v.Name = "ColorBrick"
v.Parent=p.Character
v.FormFactor="Symmetric"
v.Anchored=true
v.CanCollide=false
v.BottomSurface="Smooth"
v.TopSurface="Smooth"
v.Size=Vector3.new(10,5,3)
v.Transparency=1
v.CFrame=char.Torso.CFrame
v.BrickColor=BrickColor.new(CV)
v.Transparency=1
text.TextColor3 = Color3.new(255,0,0)
v.Shape="Block"
text.Text = "Kira"

Player = game:GetService("Players").LocalPlayer
Character = Player.Character
PlayerGui = Player.PlayerGui
Backpack = Player.Backpack
Torso = Character.Torso
Head = Character.Head
Humanoid = Character.Humanoid
Face = Head.face

local Handle = Instance.new('Part')

local Mesh = Instance.new('SpecialMesh')

local Death = Instance.new('Tool')

Death.Name = "Death Note"

Handle.Name = "Handle"

Death.Parent = game.Players.LocalPlayer.Backpack

Death.GripForward = Vector3.new(0.331, -0.766, 0.551)

Death.GripPos = Vector3.new(-0.8, 0, -0.8)

Death.GripRight = Vector3.new(-0.943, -0.297, 0.152)

Death.GripUp = Vector3.new(-0.048, 0.57, 0.82)

Death.ToolTip = "Kill your fucking rival"

Handle.Parent = Death

Mesh.Parent = Handle

Mesh.MeshId = "http://www.roblox.com/asset/?id=1136139"

Mesh.TextureId = "http://www.roblox.com/asset/?id=18276952"

Mesh.Scale = Vector3.new(0.55, 0.174, 0.6)

Handle.Rotation = Vector3.new(0,-90,0)

Death.Equipped:connect(function(mouse)

local Bounce = Enum.EasingStyle.Bounce

local Quad = Enum.EasingStyle.Quad

local Normal = Enum.EasingStyle.Linear



local ScreenGui = Instance.new("ScreenGui", game.Players["LocalPlayer"].PlayerGui)

ScreenGui.Name = "Death Note"



local open = Instance.new("ImageButton", ScreenGui)

open.Position = UDim2.new(1, -110, 1, 500)

open.Size = UDim2.new(0, 100,0, 150)

open.Image = "rbxassetid://18536731"

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Bounce, 0.8, true)



local Note = Instance.new("Frame", ScreenGui)

Note.Active = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note.Size = UDim2.new(0, 320,0, 250)

Note.Visible = false

Note.Draggable = true



open.MouseButton1Down:connect(function()

open:TweenPosition(UDim2.new(open.Position.X.Scale,open.Position.X.Offset, 1, 500), "Out", Normal, 0.8, true)

wait(0.30)

open.Visible = false

Note.Visible = true

Note.Position = UDim2.new(1, -321, 1, 500)

Note:TweenPosition(UDim2.new(1, -321, 1, -251), "In", Normal, 0.5, true)

end)



local bg = Instance.new("Frame", Note)

bg.BackgroundColor3 = Color3.fromRGB(31, 31, 31)

bg.Size = UDim2.new(0, 160,0, 250)

bg.ZIndex = 2



-- Background



local close = Instance.new("TextButton", bg)

close.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

close.BackgroundTransparency = 1

close.Position = UDim2.new(0, 8,0, 10)

close.Size = UDim2.new(0, 10,0, 10)

close.ZIndex = 4

close.Font = "Cartoon"

close.Text = "X"

close.TextColor3 = Color3.fromRGB(255, 255, 255)

close.TextSize = "17"



close.MouseButton1Down:connect(function()

Note:TweenPosition(UDim2.new(Note.Position.X.Scale,Note.Position.X.Offset,1, 500), "Out", Normal, 0.5, true)

wait(0.30)

Note.Visible = false

open.Visible = true

open:TweenPosition(UDim2.new(1, -110, 1, -150), "In", Normal, 0.8, true)

end)



local image1 = Instance.new("ImageLabel", bg)

image1.BackgroundTransparency = 1

image1.Size = UDim2.new(1, 0,1, 0)

image1.ZIndex = 3

image1.Image = "rbxassetid://18528551"



local title = Instance.new("TextLabel", bg)

title.BackgroundTransparency = 1

title.Position = UDim2.new(0, 0,0, 30)

title.Size = UDim2.new(1, 0,0, 30)

title.ZIndex = 4

title.Font = "Bodoni"

title.Text = "DEATH NOTE"

title.TextColor3 = Color3.fromRGB(255, 255, 255)

title.TextSize = "18"



local body = Instance.new("TextLabel", bg)

body.BackgroundTransparency = 1

body.Position = UDim2.new(0, 15,0, 65)

body.Size = UDim2.new(0, 134,0, 40)

body.ZIndex = 4

body.Font = "Garamond"

body.Text = "Type in somebody's name to kill them."

body.TextColor3 = Color3.fromRGB(255, 255, 255)

body.TextSize = "19"

body.TextWrapped = true

body.TextXAlignment = "Left"

body.TextYAlignment = "Top"



local line = Instance.new("TextLabel", body)

line.BackgroundTransparency = 1

line.Position = UDim2.new(0, 0,0, 50)

line.Size = UDim2.new(0, 130,0, 40)

line.ZIndex = 4

line.Font = "Garamond"

line.Text = "________________"

line.TextColor3 = Color3.fromRGB(255, 255, 255)

line.TextSize = "19"

line.TextWrapped = true

line.TextXAlignment = "Left"

line.TextYAlignment = "Top"



local text = Instance.new("TextLabel", body)

text.BackgroundTransparency = 1

text.Position = UDim2.new(0, 0,0, 100)

text.Size = UDim2.new(0, 134,0, 40)

text.ZIndex = 4

text.Font = "Garamond"

text.Text = "This was made by RcDZ."

text.TextColor3 = Color3.fromRGB(255, 255, 255)

text.TextSize = "19"

text.TextWrapped = true

text.TextXAlignment = "Left"

text.TextYAlignment = "Top"



-- Page



local page = Instance.new("Frame", Note)

page.BackgroundColor3 = Color3.fromRGB(236, 236, 236)

page.Position = UDim2.new(0, 160,0, 0)

page.Size = UDim2.new(0, 160,0, 250)

page.ZIndex = 2



local list = Instance.new("TextBox", page)

list.BackgroundTransparency = 1

list.Position = UDim2.new(0, 25,0, 20)

list.Size = UDim2.new(0.8, 5,0, 230)

list.ZIndex = 4

list.Font = "Antique"

list.Text = ""

list.TextColor3 = Color3.fromRGB(0, 0, 0)

list.TextSize = "23"

list.TextWrapped = true

list.TextXAlignment = "Left"

list.TextYAlignment = "Top"



local image2 = Instance.new("ImageLabel", page)

image2.BackgroundTransparency = 1

image2.Size = UDim2.new(1, 0,1, 0)

image2.ZIndex = 3

image2.Image = "rbxassetid://170279713"

image2.Transparency = 0.2



while true do

repeat wait() until game.Workspace:FindFirstChild(list.Text)

if game.Workspace[list.Text]:FindFirstChild("Humanoid") then

game.Workspace[list.Text].Humanoid.PlatformStand = true

game.Workspace[list.Text].Humanoid.Health = 0

elseif game.Workspace[list.Text]:FindFirstChild("Zombie") then

game.Workspace[list.Text].Zombie.PlatformStand = true

game.Workspace[list.Text].Zombie.Health = 0

end

end

end)

Death.Unequipped:connect(function(mouse)

game.Players.LocalPlayer.PlayerGui["Death Note"]:remove()

end)
--12333