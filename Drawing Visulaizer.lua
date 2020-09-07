-- Objects
MIDI = Instance.new("ScreenGui")
Frame = Instance.new("Frame")
ID = Instance.new("TextBox")
Play = Instance.new("TextButton")
Dark = Instance.new("TextButton")
Bright = Instance.new("TextButton")
Stop = Instance.new("TextButton")
Hide = Instance.new("TextButton")
Set = Instance.new("TextButton")
BColor = Instance.new("TextBox")
Random = Instance.new("TextButton")
Material = Instance.new("TextBox")
Trans = Instance.new("TextBox")
sound = Instance.new("Sound",game.Players.LocalPlayer.Character.Torso)
sound.Volume = 4
sound.Looped = true
BVal = "Deep orange"
MVal = "Neon"
TVal = 0
Active = false

-- Properties

MIDI.Name = "MIDI"
MIDI.Parent = game.Players.LocalPlayer.PlayerGui

Frame.Parent = MIDI
Frame.Active = true
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BackgroundTransparency = 0.5799999833107
Frame.BorderSizePixel = 0
Frame.Draggable = true
Frame.Position = UDim2.new(0, 300, 0, 50)
Frame.Size = UDim2.new(0, 310, 0, 200)

ID.Name = "ID"
ID.Parent = Frame
ID.BackgroundColor3 = Color3.new(1, 1, 1)
ID.BorderSizePixel = 0
ID.Position = UDim2.new(0, 100, 0, 10)
ID.Size = UDim2.new(0, 120, 0, 30)
ID.Font = Enum.Font.Arcade
ID.FontSize = Enum.FontSize.Size18
ID.Text = "639837244"
ID.TextColor3 = Color3.new(0, 0, 0)
ID.TextSize = 18

Material.Name = "Material"
Material.Parent = Frame
Material.BackgroundColor3 = Color3.new(1, 1, 1)
Material.BorderSizePixel = 0
Material.Position = UDim2.new(0, 210, 0, 95)
Material.Size = UDim2.new(0, 90, 0, 15)
Material.Font = Enum.Font.Arcade
Material.FontSize = Enum.FontSize.Size14
Material.Text = "Neon"
Material.TextSize = 14

Trans.Name = "Trans"
Trans.Parent = Frame
Trans.BackgroundColor3 = Color3.new(1, 1, 1)
Trans.BorderSizePixel = 0
Trans.Position = UDim2.new(0, 210, 0, 75)
Trans.Size = UDim2.new(0, 90, 0, 15)
Trans.Font = Enum.Font.Arcade
Trans.FontSize = Enum.FontSize.Size14
Trans.Text = "Transparency"
Trans.TextSize = 14

Set.Name = "Set"
Set.Parent = Frame
Set.BackgroundColor3 = Color3.new(1, 1, 1)
Set.BorderSizePixel = 0
Set.Position = UDim2.new(0, 210, 0, 135)
Set.Size = UDim2.new(0, 90, 0, 15)
Set.Font = Enum.Font.Arcade
Set.FontSize = Enum.FontSize.Size14
Set.Text = "Set"
Set.TextSize = 14
Set.MouseButton1Down:connect(function()
	if Active == true then
		Active = false
	end
	BVal = tostring(BColor.Text)
	TVal = tonumber(Trans.Text)
	MVal = tostring(Material.Text)
end)

BColor.Name = "BColor"
BColor.Parent = Frame
BColor.BackgroundColor3 = Color3.new(1, 1, 1)
BColor.BorderSizePixel = 0
BColor.Position = UDim2.new(0, 210, 0, 115)
BColor.Size = UDim2.new(0, 90, 0, 15)
BColor.Font = Enum.Font.Arcade
BColor.FontSize = Enum.FontSize.Size14
BColor.Text = "Lime Green"
BColor.TextSize = 14

Random.Name = "Random"
Random.Parent = Frame
Random.BackgroundColor3 = Color3.new(1, 1, 1)
Random.BorderSizePixel = 0
Random.Position = UDim2.new(0, 10, 0, 80)
Random.Size = UDim2.new(0, 90, 0, 30)
Random.Font = Enum.Font.Arcade
Random.FontSize = Enum.FontSize.Size14
Random.Text = "Random"
Random.TextSize = 14
Random.MouseButton1Down:connect(function()
	if Active == false then
		Active = true
	end
end)

Play.Name = "Play"
Play.Parent = Frame
Play.BackgroundColor3 = Color3.new(1, 1, 1)
Play.BorderSizePixel = 0
Play.Position = UDim2.new(0, 10, 0, 160)
Play.Size = UDim2.new(0, 90, 0, 30)
Play.Font = Enum.Font.Arcade
Play.FontSize = Enum.FontSize.Size14
Play.Text = "Play"
Play.TextSize = 14
Play.MouseButton1Down:connect(function()
	sound.TimePosition = 0
	sound.Playing = true
	sound.SoundId = "rbxassetid://"..tonumber(ID.Text)
end)

Dark.Name = "Dark"
Dark.Parent = Frame
Dark.BackgroundColor3 = Color3.new(1, 1, 1)
Dark.BorderSizePixel = 0
Dark.Position = UDim2.new(0, 10, 0, 120)
Dark.Size = UDim2.new(0, 90, 0, 30)
Dark.Font = Enum.Font.Arcade
Dark.FontSize = Enum.FontSize.Size14
Dark.Text = "Dark"
Dark.TextSize = 14
Dark.MouseButton1Down:connect(function()
	game.Lighting.TimeOfDay = 0
	game.Lighting.GlobalShadows = false
	game.Lighting.Ambient = Color3.new(0,0,0)
	game.Lighting.Brightness = 0
end)

Bright.Name = "Bright"
Bright.Parent = Frame
Bright.BackgroundColor3 = Color3.new(1, 1, 1)
Bright.BorderSizePixel = 0
Bright.Position = UDim2.new(0, 110, 0, 120)
Bright.Size = UDim2.new(0, 90, 0, 30)
Bright.Font = Enum.Font.Arcade
Bright.FontSize = Enum.FontSize.Size14
Bright.Text = "Bright"
Bright.TextSize = 14
Bright.MouseButton1Down:connect(function()
	game.Lighting.TimeOfDay = 12
	game.Lighting.GlobalShadows = true
	game.Lighting.Ambient = Color3.fromRGB(10,10,10)
	game.Lighting.Brightness = 1
end)

Stop.Name = "Stop"
Stop.Parent = Frame
Stop.BackgroundColor3 = Color3.new(1, 1, 1)
Stop.BorderSizePixel = 0
Stop.Position = UDim2.new(0, 110, 0, 160)
Stop.Size = UDim2.new(0, 90, 0, 30)
Stop.Font = Enum.Font.Arcade
Stop.FontSize = Enum.FontSize.Size14
Stop.Text = "Stop"
Stop.TextSize = 14
Stop.MouseButton1Down:connect(function()
	sound.Playing = false
end)

Hide.Name = "Hide"
Hide.Parent = Frame
Hide.BackgroundColor3 = Color3.new(1, 1, 1)
Hide.BorderSizePixel = 0
Hide.Position = UDim2.new(0, 210, 0, 160)
Hide.Size = UDim2.new(0, 90, 0, 30)
Hide.Font = Enum.Font.Arcade
Hide.FontSize = Enum.FontSize.Size14
Hide.Text = "Clear"
Hide.TextSize = 14
Hide.MouseButton1Down:connect(function()
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "location" then
			v:Remove()
		end
	end
end)

--- Made By Pugz AKA (PugLover77) 
plyr = game.Players.LocalPlayer
c = plyr.Character
RunService = game:service'RunService'
mouse = game.Players.LocalPlayer:GetMouse()
local draw2 = false
local colorA = 1
local lastPos
 
tool = Instance.new("HopperBin", plyr.Backpack)
tool.Name = "Draw"
 
 
 
mouse = plyr:GetMouse()
 
 
               function draw(obj) -- 
    local lastPos = obj.CFrame.p
    coroutine.wrap(function()
        while wait() do
        if draw2 then
        while draw2 do
            wait()
            objC = obj:Clone()
             objC.Parent = c
            objC.Anchored = true
            local distance = (lastPos- obj.CFrame.p).magnitude
            objC.Size = Vector3.new(.1,.1,distance)
            objC.CFrame = CFrame.new(lastPos,obj.Position)*CFrame.new(0,0,-distance/2)
            lastPos = obj.CFrame.p
        end
        else
                break
        end
        end
    end)()
                end
 
tool.Selected:connect(function(mouse)
       
        mouse.Button1Down:connect(function(mouse)
	draw2 = true
                part = Instance.new("Part", c)
mesh = Instance.new("BlockMesh",part)
		Li = Instance.new("PointLight",part)
		Li.Range = 8
		Li.Color = part.Color
                part.Name = "location"
           
                part.BottomSurface = 0
                part.Material = MVal
                part.TopSurface = 0
                part.Size = Vector3.new()
                part.Transparency = TVal
                if Active == true then
					part.Color = Color3.new(math.random(), math.random(), math.random())
				elseif Active == false then
					part.BrickColor = BrickColor.new(BVal)
				end
		Li.Color = part.Color
                part.FormFactor = "Custom"
                part.Size = Vector3.new(0.01, 0.01, 0.01)
                part.Anchored = true
                part.Locked = true
                coroutine.wrap(function()
                while part ~= nil do
                part.CFrame = CFrame.new(plyr:GetMouse().Hit.p.x,plyr:GetMouse().Hit.p.y,plyr:GetMouse().Hit.p.z)
                wait()
                end
                end)()
				wait()    
                draw(part)
				wait()
        end)
        mouse.Button1Up:connect(function(mouse)
	draw2 = false
               
        end)
                       
end)
x = 60
game:GetService("RunService").Stepped:connect(function()
	n = sound.PlaybackLoudness
	if n > 500 then
		x = 100
	elseif n < 500 then
		x = 110
	end
for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	if v.Name == "location" then
		v.Mesh.Scale = Vector3.new(n / x, n / x, n / x)
		v.PointLight.Range = n / 50
	end
end
end)