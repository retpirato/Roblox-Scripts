local player = game:GetService('Players').LocalPlayer
local rightclone = Instance.new('Motor6D')
rightclone.Name = "Right Shoulder"
rightclone.C0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rightclone.C1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local leftclone = Instance.new('Motor6D')
leftclone.Name = "Left Shoulder"
leftclone.C0 = CFrame.new(-1, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
leftclone.C1 = CFrame.new(0.5, 0.5, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local leftlegclone = Instance.new('Motor6D')
leftlegclone.Name = "Left Hip"
leftlegclone.C0 = CFrame.new(-1, -1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
leftlegclone.C1 = CFrame.new(-0.5, 1, 0, -0, -0, -1, 0, 1, 0, 1, 0, 0)
local rightlegclone = Instance.new('Motor6D')
rightlegclone.Name = "Right Hip"
rightlegclone.C0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
rightlegclone.C1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, -0, -0)
local torsoclone = Instance.new('Motor6D')
torsoclone.Name = "RootJoint"
torsoclone.C0 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
torsoclone.C1 = CFrame.new(0, 0, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local mouse = player:GetMouse()
local rag1 = false
local rag2 = false
local firsttime = true
local firsttime2 = true
local firsttime3 = true
local firsttime4 = true
local firsttime5 = true
local childlock = true
local math1 = math.random(1,5)
math1 = math1+(math.random(0,9)/10)
local math2 = math.random(1,15)
math2 = math2+(math.random(0,9)/10)
local math3 = math.random(1,10)
math3 = math3+(math.random(0,9)/10)
local math4 = math.random(5,100)
math4 = math4+(math.random(0,9)/10)
local answer = (math4+(math1*math3))/(math1*math2)
answer = math.floor((answer*10)+0.5)
answer = answer/10
print([[To be fair, you have to have a very high IQ to understand Rick and Morty.
The humor is extremely subtle, and without a solid grasp of theoretical physics most of the jokes will go over a typical viewer's head.
There's also Rick's nihilistic outlook, which is deftly woven into his characterisation -
his personal philosophy draws heavily from Narodnaya Volya literature, for instance.
The fans understand this stuff;
they have the intellectual capacity to truly appreciate the depths of these jokes, to realize that they're not just funny- they say something deep about LIFE.
As a consequence people who dislike Rick and Morty truly ARE idiots-
of course they wouldn't appreciate, for instance, the humour in Rick's existencial catchphrase "Wubba Lubba Dub Dub," which itself is a cryptic reference to Turgenev's Russian epic Fathers and Sons.
I'm smirking right now just imagining one of those addlepated simpletons scratching their heads in confusion as Dan Harmon's genius unfolds itself on their television screens.
What fools... how I pity them.
And yes by the way, I DO have a Rick and Morty tattoo.
And no, you cannot see it.
It's for the ladies' eyes only-
And even they have to demonstrate that they're within ]]..answer..[[ IQ points of my own (preferably lower) beforehand.]])
local rekt = {}

-- Objects

local MainGUI = Instance.new("ScreenGui")
local Customize = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local Frame_3 = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local R = Instance.new("TextBox")
local G = Instance.new("TextBox")
local B = Instance.new("TextBox")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local Slider = Instance.new("Frame")
local Slidee = Instance.new("ImageButton")
local ChildLock = Instance.new("Frame")
local TextLabel_5 = Instance.new("TextLabel")
local mathz = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local Black = Instance.new('Frame')
local fps = Instance.new('TextLabel')

-- Properties

MainGUI.Name = "MainGUI"
MainGUI.ResetOnSpawn = false
pcall(function()
	MainGUI.Parent = player.PlayerGui
end)
pcall(function()
	MainGUI.Parent = game.CoreGui
	game.CoreGui.RobloxGui.Backpack.Hotbar.AnchorPoint = Vector2.new(0.5,0.5)
	game.CoreGui.RobloxGui.Backpack.Hotbar.Position = UDim2.new(0.5,0,0.85,0)
end)


Customize.Name = "Customize"
Customize.Parent = MainGUI
Customize.BackgroundColor3 = Color3.new(0, 0.776471, 0.282353)
Customize.BorderSizePixel = 0
Customize.Position = UDim2.new(0.15, 0, 0.9, 0)
Customize.Size = UDim2.new(0.699999988, 0, 0.100000001, 0)
Customize.Font = Enum.Font.SourceSans
Customize.FontSize = Enum.FontSize.Size14
Customize.Text = "Customize V4"
Customize.TextColor3 = Color3.new(1, 1, 1)
Customize.TextScaled = true
Customize.TextSize = 14
Customize.TextWrapped = true

Frame.Parent = Customize
Frame.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 1, 0)
Frame.Size = UDim2.new(1, 0, 6.5, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0, 0, 0.100000001, 0)
TextLabel.Size = UDim2.new(0.300000012, 0, 0.200000003, 0)
TextLabel.Font = Enum.Font.SourceSansLight
TextLabel.FontSize = Enum.FontSize.Size14
TextLabel.Text = "Blood Color: [255, 255, 255]"
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Right

Frame_2.Parent = TextLabel
Frame_2.BackgroundColor3 = Color3.new(0.458824, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(1.04999995, 0, 0, 0)
Frame_2.Size = UDim2.new(1, 0, 1, 0)
Frame_2.SizeConstraint = Enum.SizeConstraint.RelativeYY

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.new(1, 1, 1)
Frame_3.BackgroundTransparency = 1
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.0500000007, 0, 0.449999988, 0)
Frame_3.Size = UDim2.new(0.5, 0, 0.5, 0)
Frame_3.SizeConstraint = Enum.SizeConstraint.RelativeYY

ImageLabel.Parent = Frame_3
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Size = UDim2.new(1, 0, 1, 0)
ImageLabel.Image = "rbxassetid://328298876"

R.Name = "R"
R.Parent = Frame_3
R.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
R.BorderSizePixel = 0
R.Position = UDim2.new(1.39999998, 0, 0, 0)
R.Size = UDim2.new(0.75, 0, 0.300000012, 0)
R.Font = Enum.Font.SourceSans
R.FontSize = Enum.FontSize.Size14
R.Text = "Input"
R.TextColor3 = Color3.new(1, 1, 1)
R.TextScaled = true
R.TextSize = 14
R.TextWrapped = true
R.TextXAlignment = Enum.TextXAlignment.Left

G.Name = "G"
G.Parent = Frame_3
G.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
G.BorderSizePixel = 0
G.Position = UDim2.new(1.39999998, 0, 0.349999994, 0)
G.Size = UDim2.new(0.75, 0, 0.300000012, 0)
G.Font = Enum.Font.SourceSans
G.FontSize = Enum.FontSize.Size14
G.Text = "Input"
G.TextColor3 = Color3.new(1, 1, 1)
G.TextScaled = true
G.TextSize = 14
G.TextWrapped = true
G.TextXAlignment = Enum.TextXAlignment.Left

B.Name = "B"
B.Parent = Frame_3
B.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
B.BorderSizePixel = 0
B.Position = UDim2.new(1.39999998, 0, 0.699999988, 0)
B.Size = UDim2.new(0.75, 0, 0.300000012, 0)
B.Font = Enum.Font.SourceSans
B.FontSize = Enum.FontSize.Size14
B.Text = "Input"
B.TextColor3 = Color3.new(1, 1, 1)
B.TextScaled = true
B.TextSize = 14
B.TextWrapped = true
B.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_2.Parent = Frame_3
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.Position = UDim2.new(1.04999995, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
TextLabel_2.Font = Enum.Font.SourceSansLight
TextLabel_2.FontSize = Enum.FontSize.Size14
TextLabel_2.Text = "R"
TextLabel_2.TextColor3 = Color3.new(1, 1, 1)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame_3
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.Position = UDim2.new(1.04999995, 0, 0.349999994, 0)
TextLabel_3.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
TextLabel_3.Font = Enum.Font.SourceSansLight
TextLabel_3.FontSize = Enum.FontSize.Size14
TextLabel_3.Text = "G"
TextLabel_3.TextColor3 = Color3.new(1, 1, 1)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14
TextLabel_3.TextWrapped = true

TextLabel_4.Parent = Frame_3
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(1.04999995, 0, 0.699999988, 0)
TextLabel_4.Size = UDim2.new(0.300000012, 0, 0.300000012, 0)
TextLabel_4.Font = Enum.Font.SourceSansLight
TextLabel_4.FontSize = Enum.FontSize.Size14
TextLabel_4.Text = "B"
TextLabel_4.TextColor3 = Color3.new(1, 1, 1)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14
TextLabel_4.TextWrapped = true

Slider.Name = "Slider"
Slider.Parent = Frame
Slider.BackgroundColor3 = Color3.new(0.121569, 0.121569, 0.121569)
Slider.Position = UDim2.new(0.0500000007, 0, 0.375, 0)
Slider.Size = UDim2.new(0.230000004, 0, 0.00999999978, 0)

Slidee.Name = "Slidee"
Slidee.Parent = Slider
Slidee.AnchorPoint = Vector2.new(0.5, 0.5)
Slidee.BackgroundColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
Slidee.BorderSizePixel = 0
Slidee.Size = UDim2.new(0.0299999993, 0, 7, 0)
Slidee.ImageTransparency = 1

ChildLock.Name = "ChildLock"
ChildLock.Parent = Frame
ChildLock.Active = true
ChildLock.BackgroundColor3 = Color3.new(0, 0, 0)
ChildLock.BackgroundTransparency = 0.60000002384186
ChildLock.BorderSizePixel = 0
ChildLock.Position = UDim2.new(0.600000024, 0, 0, 0)
ChildLock.Size = UDim2.new(0.400000006, 0, 1, 0)
ChildLock.ZIndex = 2

TextLabel_5.Parent = ChildLock
TextLabel_5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_5.BackgroundTransparency = 1
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.125, 0, 0.150000006, 0)
TextLabel_5.Size = UDim2.new(0.75, 0, 0.200000003, 0)
TextLabel_5.ZIndex = 3
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.FontSize = Enum.FontSize.Size14
TextLabel_5.Text = "do this math to disable child lock"
TextLabel_5.TextColor3 = Color3.new(1, 1, 1)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14
TextLabel_5.TextWrapped = true

mathz.Name = "mathz"
mathz.Parent = ChildLock
mathz.BackgroundColor3 = Color3.new(1, 1, 1)
mathz.BackgroundTransparency = 1
mathz.Position = UDim2.new(0.125, 0, 0.449999988, 0)
mathz.Size = UDim2.new(0.75, 0, 0.200000003, 0)
mathz.ZIndex = 3
mathz.Font = Enum.Font.SourceSans
mathz.FontSize = Enum.FontSize.Size14
mathz.Text = math1.."("..math2.."r - "..math3..") = "..math4
mathz.TextColor3 = Color3.new(1, 1, 1)
mathz.TextScaled = true
mathz.TextSize = 14
mathz.TextWrapped = true

fps.Name = "fps"
fps.Parent = Frame
fps.BackgroundColor3 = Color3.new(1, 1, 1)
fps.BackgroundTransparency = 1
fps.Size = UDim2.new(0.75, 0, 0.05, 0)
fps.ZIndex = 3
fps.Font = Enum.Font.SourceSansLight
fps.FontSize = Enum.FontSize.Size14
fps.Text = "FPS: N/A"
fps.TextColor3 = Color3.new(1, 1, 1)
fps.TextScaled = true
fps.TextSize = 14
fps.TextWrapped = true
fps.TextXAlignment = Enum.TextXAlignment.Left

TextBox.Parent = ChildLock
TextBox.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextBox.BorderSizePixel = 0
TextBox.Position = UDim2.new(0.200000003, 0, 0.699999988, 0)
TextBox.Size = UDim2.new(0.600000024, 0, 0.200000003, 0)
TextBox.ZIndex = 3
TextBox.Font = Enum.Font.SourceSans
TextBox.FontSize = Enum.FontSize.Size14
TextBox.Text = "Answer (rounded to nearest tenth)"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left

Black.Size = UDim2.new(1,0,1,0)
Black.BackgroundTransparency = 1
Black.BorderSizePixel = 0
Black.BackgroundColor3 = Color3.new(0,0,0)
Black.Parent = Frame_3

TextBox.FocusLost:connect(function()
	if TextBox.Text == tostring(answer) or TextBox.Text == "r="..tostring(answer) or TextBox.Text == "r= "..tostring(answer) or TextBox.Text == "r = "..tostring(answer) or TextBox.Text == "r= "..tostring(answer) or TextBox.Text == tostring(answer).."=r" or TextBox.Text == tostring(answer).." =r" or TextBox.Text == tostring(answer).."= r" or TextBox.Text == tostring(answer).." = r" then
		ChildLock:Destroy()
		childlock = false
		notify("Child lock disabled, press B to enable dildo mode.",true)
	end
end)

local mousedown = false
mouse.Button1Down:connect(function()
	mousedown = true
end)
mouse.Button1Up:connect(function()
	mousedown = false
	slidee = false
end)

Slidee.MouseButton1Down:connect(function()
	slidee = true
end)
Slidee.MouseButton1Up:connect(function()
	slidee = false
end)

mouse.Move:connect(function()
	if mousedown then
		if mouse.X >= ImageLabel.AbsolutePosition.X and mouse.X <= ImageLabel.AbsolutePosition.X+ ImageLabel.AbsoluteSize.X and mouse.Y >= ImageLabel.AbsolutePosition.Y and mouse.Y <= ImageLabel.AbsolutePosition.Y+ ImageLabel.AbsoluteSize.Y then
			local newX = ImageLabel.AbsoluteSize.X-(mouse.X-ImageLabel.AbsolutePosition.X)
			local newY = ImageLabel.AbsoluteSize.Y-(mouse.Y-ImageLabel.AbsolutePosition.Y)
			local newcolor = Color3.fromHSV(newX/ImageLabel.AbsoluteSize.X,newY/ImageLabel.AbsoluteSize.Y,Black.Transparency)
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
		end
	end
	if slidee then
		local ree = mouse.X
		if ree < Slider.AbsolutePosition.X then
			ree = Slider.AbsolutePosition.X
		elseif ree > Slider.AbsolutePosition.X+Slider.AbsoluteSize.X then
			ree = Slider.AbsolutePosition.X+Slider.AbsoluteSize.X
		end
		Slidee.Position = UDim2.new(0,ree-Slider.AbsolutePosition.X,0,0)
		Black.Transparency = 1-(Slidee.Position.X.Offset/Slider.AbsoluteSize.X)
	end
end)

R.FocusLost:connect(function()
	if R.Text ~= "Input" then
		if tonumber(R.Text) then
			if tonumber(R.Text) > 255 then
				R.Text = "255"
			end
			local newcolor = Color3.new(tonumber(R.Text/255),Frame_2.BackgroundColor3.g,Frame_2.BackgroundColor3.b)
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
			R.Text = "Input"
		end
	end
end)
G.FocusLost:connect(function()
	if G.Text ~= "Input" then
		if tonumber(G.Text) then
			if tonumber(G.Text) > 255 then
				G.Text = "255"
			end
			local newcolor = Color3.new(Frame_2.BackgroundColor3.r,tonumber(G.Text/255),Frame_2.BackgroundColor3.b)
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
			G.Text = "Input"
		end
	end
end)
B.FocusLost:connect(function()
	if B.Text ~= "Input" then
		if tonumber(B.Text) then
			if tonumber(B.Text) > 255 then
				B.Text = "255"
			end
			local newcolor = Color3.new(Frame_2.BackgroundColor3.r,Frame_2.BackgroundColor3.g,tonumber(B.Text/255))
			Frame_2.BackgroundColor3 = newcolor
			TextLabel.Text = "Blood Color: ["..math.floor(255*newcolor.r)..", "..math.floor(255*newcolor.g)..", "..math.floor(255*newcolor.b).."]"
			B.Text = "Input"
		end
	end
end)

local open = false
local opening = false
Customize.MouseButton1Click:connect(function()
	if opening == false then
		if open == false then
			open = true
			opening = true
			Customize:TweenPosition(UDim2.new(0.15, 0, 0.1, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,1)
			wait(1)
			opening = false
		else
			open = false
			opening = true
			Customize:TweenPosition(UDim2.new(0.15, 0, 0.9, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Quint,1)
			wait(1)
			opening = false
		end
	end
end)

Frame_2.BackgroundColor3 = Color3.fromRGB(117,0,0)

function removewelds(part)
	for i,v in pairs(part:GetChildren()) do
		if v:IsA('Weld') then v:Destroy() end
	end
end

function notify(msg,remove)
	local coru= coroutine.wrap(function()
	for i,v in pairs(MainGUI:GetChildren()) do
		if v:IsA('TextLabel') then v:Destroy() end
	end
	if msg then
	local TextLabel = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")

	-- Properties

	TextLabel.Parent = MainGUI
	TextLabel.BackgroundColor3 = Color3.new(0.227451, 0.227451, 0.227451)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(0.25, 0, 0.05, -10)
	TextLabel.Size = UDim2.new(0.5, 0, 0.1, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.FontSize = Enum.FontSize.Size60
	TextLabel.TextColor3 = Color3.new(1, 1, 1)
	TextLabel.TextSize = 50
	TextLabel.Transparency = 1
	TextLabel.TextScaled = true
	TextLabel.TextYAlignment = Enum.TextYAlignment.Top
	TextLabel.Text = ""
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Frame.Parent = TextLabel
	Frame.BackgroundColor3 = Color3.new(0.192157, 0.192157, 0.192157)
	Frame.BorderSizePixel = 0
	Frame.Transparency = 1
	Frame.Position = UDim2.new(0, 0, 1,0)
	Frame.Size = UDim2.new(1, 0, 0, 5)
	for i=1,10 do
		TextLabel.Transparency = TextLabel.Transparency-0.1
		TextLabel.Position = TextLabel.Position+UDim2.new(0,0,0,1)
		Frame.Transparency = Frame.Transparency-0.1
		wait()
	end
	for i=1,#msg do
		TextLabel.Text = string.sub(msg,1,i)
		wait()
	end
	wait(1)
	if remove ~= true then
	for i=1,10 do
		TextLabel.Transparency = TextLabel.Transparency+0.1
		TextLabel.Position = TextLabel.Position-UDim2.new(0,0,0,1)
		Frame.Transparency = Frame.Transparency+0.1
		wait()
	end
	TextLabel:Destroy()
	end
	end
	end)
	coru()
end
if workspace.FilteringEnabled == false then
	if workspace:PGSIsEnabled() then
		notify('Press Z to equip. Created by mustardfoot and Tollonis.',true)
	else
		notify('(this game is really old or something and has the shitty physics so a lot of things wont work sorry) Press Z to equip. Created by mustardfoot and Tollonis.',true)
	end
else
	notify('LOL this game has filtering enabled so it literally wont work here')
end

local handProperties = {
	{"LimitsEnabled", true};
	{"UpperAngle",0};
	{"LowerAngle",0};
}
local shinProperties = {
	{"LimitsEnabled", true};
	{"UpperAngle", 0};
	{"LowerAngle", -75};
}
local footProperties = {
	{"LimitsEnabled", true};
	{"UpperAngle", 15};
	{"LowerAngle", -45};
}

function bleed(frick,OwO)
    while frick.Parent ~= nil and frick.Parent.Parent ~= nil do
    local reeee = coroutine.wrap(function()
    local thing = Instance.new('Part',workspace)
    thing.Size = Vector3.new(0.2,0.2,0.2)
    thing.CFrame = frick.CFrame
    thing.Transparency = 1
    thing.BrickColor = BrickColor.new(Frame_2.BackgroundColor3)
    thing.Material = Enum.Material.SmoothPlastic
    thing.Name = "Blood"
    thing.CanCollide =false
	thing:BreakJoints()
    local rawrxd = Instance.new('BodyForce',thing)
    rawrxd.Force = frick.CFrame.upVector*(math.random()*2)+Vector3.new(math.random(-5, 5)/10,1.5,0)
    local coru = coroutine.wrap(function()
        wait(0.01)
        rawrxd:Destroy()
    end)
    coru()
    local ree = Instance.new('ParticleEmitter',thing)
	if OwO ~= true then
    	ree.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Frame_2.BackgroundColor3),ColorSequenceKeypoint.new(1,Frame_2.BackgroundColor3)})
	else
		ree.Color = ColorSequence.new({ColorSequenceKeypoint.new(0,Color3.new(1,1,1)),ColorSequenceKeypoint.new(1,Color3.new(1,1,1))})
	end
    ree.Size = NumberSequence.new({NumberSequenceKeypoint.new(0,0.1),NumberSequenceKeypoint.new(1,0.1)})
    ree.Texture = 'rbxassetid://867743272'
    ree.Lifetime = NumberRange.new(0.4)
    ree.Rate = 50
    ree.LockedToPart = true
    ree.Speed = NumberRange.new(0, 2)  
   
    thing.Touched:connect(function(tou)
        if tou.Parent and tou.Parent:IsA('Tool') == false and tou.Parent.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Parent:FindFirstChildOfClass('Humanoid') == nil and tou.Name ~= "Blood" and tou.Parent.Name ~= "Projectile" and tou.Parent.Name ~= "big ass knife" and tou.Parent ~= player.Character and tou.Parent.ClassName ~= "Accessory" and tou.Parent.Name ~= "bitch ass knife" and tou.Parent.Name ~= 'handle' and tou.Name ~= "blade" and tou.Name ~= 'handle' and tou.Name ~= "Projectile" and tou.Parent.Name ~= "Projectile" then
            local pos = Vector3.new(thing.Position.X,(tou.Position.Y+(tou.Size.Y/2))+0.02,thing.Position.Z)
			local Point1 = pos-Vector3.new(0.01,0.01,0.01)
			local Point2 = pos+Vector3.new(0.01,0.01,0.01)
			local Region = Region3.new(Point1,Point2)
			for _,Part in pairs(game.Workspace:FindPartsInRegion3(Region,nil,math.huge)) do
				if Part.Name == "BloodPuddle" then
					tou = Part
				end
			end
            thing:Destroy()
            if tou.Name == "BloodPuddle" then
				if tou.Size.X < 1 then
				pcall(function()
					tou.Sound:Play()
				end)
				end
                local reee = tou.CFrame
                if tou.Transparency > -0.2 then
                    tou.Transparency = tou.Transparency -0.1
                end
                if tou.Size.X < 5 then
                    tou.Size = tou.Size+Vector3.new(0.1,0,0.1)
                    tou.CFrame = reee
                end
            elseif tou.CanCollide == true then
                local bloodlol = Instance.new('Part',workspace)
				local sound = Instance.new('Sound',bloodlol)
				sound.SoundId = 'rbxassetid://685857471'
				sound.Volume = 0.025
				sound:Play()
                bloodlol.Size=Vector3.new(1,0.2,1)
                bloodlol.Name = "BloodPuddle"
                bloodlol.Anchored = true
                bloodlol.CanCollide = false
                bloodlol.Material = Enum.Material.SmoothPlastic
				if OwO ~= true then
                	bloodlol.Color = Frame_2.BackgroundColor3
				else
					bloodlol.Color = Color3.new(1,1,1)
				end
                local cyl = Instance.new('CylinderMesh',bloodlol)
                cyl.Scale = Vector3.new(1,0.1,1)
                bloodlol.CFrame = CFrame.new(pos)
                local coru=coroutine.wrap(function()
                    while bloodlol.Parent ~= nil do
                        if bloodlol.Transparency < 1 then
                            bloodlol.Transparency = bloodlol.Transparency+0.05
                        else
                            bloodlol:Destroy()
                        end
                        wait(0.1)
                    end
                end)
                coru()
            end
        end
    end)
    local coru = coroutine.wrap(function()
        wait(1)
        thing:Destroy()
    end)
    coru()
    end)
    reeee()
    wait()
    end
end

function stun(char)
	local found = false
	pcall(function()
		char:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Physics)
	end)
	for i,v in pairs(rekt) do
		if v == char then
			found = true
		end
	end
	if found == false then
		table.insert(rekt,char)
	end
end
function unstun(char)
	for i,v in pairs(rekt) do
		if v == char then
			if v:FindFirstChildOfClass('Humanoid') and v:FindFirstChildOfClass('Humanoid').Health>0 then
				v:FindFirstChildOfClass('Humanoid'):ChangeState(Enum.HumanoidStateType.Running)
				v:FindFirstChildOfClass('Humanoid').PlatformStand = false
				v:FindFirstChildOfClass('Humanoid').Sit = false
				v:FindFirstChildOfClass('Humanoid').Jump = true
				v:FindFirstChildOfClass('Humanoid').JumpPower = 50
				v:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
				v:FindFirstChildOfClass('Humanoid').Name = "Humanoid"
			end
			table.remove(rekt,i)
		end
	end
end

function recurse(root,callback,i)
	i= i or 0
	for _,v in pairs(root:GetChildren()) do
		i = i + 1
		callback(i,v)
		
		if #v:GetChildren() > 0 then
			i = recurse(v,callback,i)
		end
	end
	
	return i
end

function ragdollJoint(character, part0, part1, attachmentName, className, properties)
	if character:FindFirstChild("RagdollConstraint"..part1.Name) == nil then
	if character:FindFirstChild('HumanoidRootPart')then
		character.HumanoidRootPart.CanCollide = false
	end
	for i,v in pairs(character:GetChildren()) do
		if v:IsA("MeshPart") and (v.MeshId == 'http://www.roblox.com/asset/?id=553602991' or v.MeshId == 'http://www.roblox.com/asset/?id=553602977' or v.MeshId == 'http://www.roblox.com/asset/?id=553602987') then
			v.Size = Vector3.new(1,1,1)
		end
	end
	recurse(character, function(_,v)
		if v:IsA("Attachment") and v.Parent.Name ~= "ayybleed" then
			v.Axis = Vector3.new(0, 1, 0)
			v.SecondaryAxis = Vector3.new(0, 0, 1)
			v.Rotation = Vector3.new(0, 0, 0)
		end
	end)
	if part1:FindFirstChildOfClass('Motor6D') then
		part1:FindFirstChildOfClass('Motor6D'):Destroy()
	end
	if attachmentName ~= "NeckAttachment" then
		attachmentName = attachmentName.."RigAttachment"
	end
	local constraint = Instance.new(className.."Constraint")
	constraint.Attachment0 = part0:FindFirstChild(attachmentName)
	constraint.Attachment1 = part1:FindFirstChild(attachmentName)
	constraint.Name = "RagdollConstraint"..part1.Name
	if character:FindFirstChildOfClass('Humanoid').Health > 0 then
	local collidepart = Instance.new('Part',part1)
	collidepart.Size = part1.Size/2
	if string.find(string.lower(part1.Name),"upper") then
		if string.find(string.lower(part1.Name),"leg") then
			collidepart.Size = part1.Size/3
		else
			collidepart.Size = part1.Size/2.5
		end
	end
	collidepart.CanCollide = true
	collidepart.Name = "Collision"
	collidepart.Anchored = false
	collidepart.Transparency = 1
	collidepart.CFrame = part1.CFrame
	collidepart:BreakJoints()
	local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	if string.find(string.lower(part1.Name),"upper") then
		if string.find(string.lower(part1.Name),"leg") then
			attachment0.Position = Vector3.new(0,0.01,0)
		else
			attachment0.Position = Vector3.new(0,0.25,0)
		end
	else
		attachment0.Position = Vector3.new(0,-0.1,0)
	end
	end
	for _,propertyData in next,properties or {} do
		constraint[propertyData[1]] = propertyData[2]
	end
	
	constraint.Parent = character
	end
end

function R6ragdollJoint(character,limbname,attached,heded)
	pcall(function()
	if limbname == "Right Arm" and character:FindFirstChild("Right Arm") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Right ArmRagdollConstraint") == nil and character[limbname]:FindFirstChild("Right ArmRagdollConstraint") == nil then
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(1.45,0.768,-0.009)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(-0.086, 0.755, -0.007)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "RightArmRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		collidepart.Size = part1.Size/1.5
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Right Shoulder') then
			character.Torso:FindFirstChild('Right Shoulder'):Destroy()
		end
	elseif limbname == "Left Arm" and character:FindFirstChild("Left Arm") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Left ArmRagdollConstraint") == nil and character[limbname]:FindFirstChild("Left ArmRagdollConstraint") == nil then
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(-1.45,0.768,-0.009)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(-0.086, 0.755, -0.007)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "LeftArmRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		collidepart.Size = part1.Size/1.5
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Left Shoulder') then
			character.Torso:FindFirstChild('Left Shoulder'):Destroy()
		end
	elseif limbname == "Right Leg" and character:FindFirstChild("Right Leg") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Right LegRagdollConstraint") == nil and character[limbname]:FindFirstChild("Right LegRagdollConstraint") == nil then
		stun(character)
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(0.45, -1.242, -0.009)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(-0.086, 0.755, -0.007)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "RightLegRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		collidepart.Size = part1.Size/1.5
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Right Hip') then
			character.Torso:FindFirstChild('Right Hip'):Destroy()
		end
	elseif limbname == "Left Leg" and character:FindFirstChild("Left Leg") and character:FindFirstChild("Torso") and character.Torso:FindFirstChild("Left LegRagdollConstraint") == nil and character[limbname]:FindFirstChild("Left LegRagdollConstraint") == nil then
		stun(character)
		local torsoatt = Instance.new('Attachment',character.Torso)
		torsoatt.Name = limbname.."RagdollConstraint"
		torsoatt.Position = Vector3.new(-0.45, -1.242, -0.009)
		torsoatt.Axis = Vector3.new(1,0,0)
		torsoatt.SecondaryAxis = Vector3.new(0,1,0)
		local limbatt = Instance.new("Attachment",character[limbname])
		limbatt.Position = Vector3.new(-0.086, 0.755, -0.007)
		limbatt.Name = limbname.."RagdollConstraint"
		limbatt.Axis = Vector3.new(1,0,0)
		limbatt.SecondaryAxis = Vector3.new(0,1,0)
		local ballc = Instance.new('BallSocketConstraint',character)
		ballc.Name = "LeftLegRagdollRig"
		ballc.Attachment0 = torsoatt
		ballc.Attachment1 = limbatt
		local part1 = character[limbname]
		if character:FindFirstChildOfClass('Humanoid').Health > 0 then
		local collidepart = Instance.new('Part',part1)
		collidepart.Size = part1.Size/1.5
		collidepart.CanCollide = true
		collidepart.Name = "Collision"
		collidepart.Anchored = false
		collidepart.Transparency = 1
		collidepart.CFrame = part1.CFrame
		collidepart:BreakJoints()
		local attachment0 = Instance.new('Attachment',part1)
	local attachment1 = Instance.new('Attachment',collidepart)
	if attachment0 and attachment1 then
		local constraint = Instance.new("HingeConstraint")
		constraint.Attachment0 = attachment0
		constraint.Attachment1 = attachment1
		constraint.LimitsEnabled = true
		constraint.UpperAngle = 0
		constraint.LowerAngle = 0
		constraint.Parent = character
	end
	end
		if character.Torso:FindFirstChild('Left Hip') then
			character.Torso:FindFirstChild('Left Hip'):Destroy()
		end
	elseif limbname == "Head" or limbname == "Torso" and character:FindFirstChild("Head") and character:FindFirstChild("Torso") and character.Head:FindFirstChild("Neck") == nil then
		if character:FindFirstChildOfClass('Humanoid') then
			character:FindFirstChildOfClass('Humanoid').Health = 0
		end
		while character:FindFirstChildOfClass('Humanoid').Health > 0 do wait() end
		if character:FindFirstChild('HumanoidRootPart') then
			character.HumanoidRootPart:Destroy()
		end
		game:GetService('Debris'):AddItem(character,10)
		for _,child in next,character:GetChildren() do
		if child:IsA("Accoutrement") then
			for _,part in next,child:GetChildren() do
				if part:IsA("BasePart") then
					for _,c in pairs(part:GetChildren()) do
						if c:IsA('Weld') then c:Destroy() end
					end
					local attachment1 = part:FindFirstChildOfClass("Attachment")
					local attachment0 = getAttachment0(character,attachment1.Name)
					if attachment0 and attachment1 then
						local constraint = Instance.new("HingeConstraint")
						constraint.Attachment0 = attachment0
						constraint.Attachment1 = attachment1
						constraint.LimitsEnabled = true
						constraint.UpperAngle = 0
						constraint.LowerAngle = 0
						constraint.Parent = character
					end
				end
			end
		end
		end
		for i,v in pairs(character:GetChildren()) do
			if v:IsA('MeshPart') or v:IsA('BasePart') then
				for _,c in pairs(v:GetChildren()) do
					if c.Name == "Collision" then c:Destroy() end
				end
			end
		end
		if character.Torso:FindFirstChild('Neck') then
			character.Torso.Neck:Destroy()
		end
		if character:FindFirstChild('Torso') then
			local collidepart = Instance.new('Part',character.Torso)
			collidepart.Size = character.Torso.Size/1.5
			collidepart.CanCollide = true
			collidepart.Name = "Collision"
			collidepart.Anchored = false
			collidepart.Transparency = 1
			collidepart.CFrame = character.Torso.CFrame
			collidepart:BreakJoints()
			local attachment0 = Instance.new('Attachment',character.Torso)
			local attachment1 = Instance.new('Attachment',collidepart)
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
		end
		if character:FindFirstChild('Torso') and character:FindFirstChild('Head') then
			if character.Torso:FindFirstChild('NeckAttachment') == nil then
				local neck = Instance.new('Attachment',character.Torso)
				neck.Name = "NeckAttachment"
				neck.Position = Vector3.new(0, 1, 0)
			end
			ragdollJoint(character,character.Torso, character.Head, "NeckAttachment", "Hinge", {
			{"LimitsEnabled",true};
			{"UpperAngle",50};
			{"LowerAngle",-50};
			})
		end
		if attached ~= false then
			ragdollpart(character, "Right Leg")
			ragdollpart(character, "Left Leg")
		else
			pcall(function()
				local ayybleed = Instance.new('Part',character)
				ayybleed.Size = Vector3.new(character.Torso.Size.X,0.1,character.Torso.Size.Z)
				ayybleed.Transparency = 1
				ayybleed.CanCollide = false
				ayybleed.CFrame = character.Torso.CFrame
				ayybleed:BreakJoints()
				local attachment1 = Instance.new('Attachment',ayybleed)
				attachment1.Position = Vector3.new(0,-character.Torso.Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0, 0, -180)
				local attachment0 = Instance.new('Attachment',character.Torso)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				local bleedBLEED= coroutine.wrap(function()
					bleed(ayybleed)
				end)
				bleedBLEED()
			end)
		end
		ragdollpart(character, "Right Arm")
		ragdollpart(character, "Left Arm")
	end
	end)
end

function getAttachment0(character,attachmentName)
	for _,child in next,character:GetChildren() do
		local attachment = child:FindFirstChild(attachmentName)
		if attachment then
			return attachment
		end
	end
end

function ragdollpart(character,partname,attached,heded)
	if heded ~= false then
		local neck = Instance.new('Attachment',character.Head)
		neck.Name = "NeckAttachment"
		neck.Position = Vector3.new(0,-0.5,0)
		else
			local force = Instance.new('BodyForce',character.Head)
			force.Force = Vector3.new(0,500,0)
			game:GetService('Debris'):AddItem(force,0.25)
			pcall(function()
			local asdf = Instance.new('Attachment',character.Head)
			asdf.Position = Vector3.new(0,-character.Head.Size.Y/2,0)
			local last = asdf
			for i=1,14 do
				local bONE = Instance.new('Part',character)
				bONE.BrickColor = BrickColor.new('Institutional white')
				bONE.Size = Vector3.new(0.1,0.1,0.1)
				bONE.CFrame = character.Head.CFrame+(character.Head.CFrame.upVector*-(i/10))
				local lole = Instance.new('Attachment',bONE)
				local hangurself = Instance.new('RopeConstraint',bONE)
				hangurself.Attachment0 = lole
				hangurself.Attachment1 = last
				hangurself.Visible = true
				hangurself.Thickness = 0.05
				hangurself.Color = BrickColor.new('Bright red')
				hangurself.Length = 0.2
				last = lole
			end
			local bleedee = Instance.new('Part',character.Head)
			bleedee.Size = Vector3.new(0.75,0.25,0.75)
			bleedee.CanCollide = false
			bleedee.Color = Frame_2.BackgroundColor3
			bleedee.CFrame = character.Head.CFrame
			local mehs = Instance.new('CylinderMesh',bleedee)
			bleedee:BreakJoints()
			local attachment1 = Instance.new('Attachment',bleedee)
				attachment1.Position = Vector3.new(0,character.Head.Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,180)
				local attachment0 = Instance.new('Attachment',character.Head)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				spawn(function()
					bleed(bleedee)
				end)
			end)
			local thing = "Torso"
			if character:FindFirstChild(thing) == nil then
				thing = "UpperTorso"
			end
			pcall(function()
				local bleedee = Instance.new('Part',character[thing])
			bleedee.Size = Vector3.new(0.75,0,0.75)
			bleedee.CanCollide = false
			bleedee.Color = Frame_2.BackgroundColor3
			bleedee.CFrame = character[thing].CFrame
			local mehs = Instance.new('CylinderMesh',bleedee)
			bleedee:BreakJoints()
			local attachment1 = Instance.new('Attachment',bleedee)
				attachment1.Position = Vector3.new(0,-character[thing].Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,180)
				local attachment0 = Instance.new('Attachment',character[thing])
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				spawn(function()
					bleed(bleedee)
				end)
			end)
		end
	pcall(function()
		if workspace.PGSPhysicsSolverEnabled == false then
			workspace.PGSPhysicsSolverEnabled = true
		end
	end)
	if partname == "HumanoidRootPart" then
		if character:FindFirstChild('Torso') then
			partname = "Torso"
		else
			partname = "UpperTorso"
		end
	end
	if attached == false then
		if character:FindFirstChild('UpperTorso') then
			pcall(function()
				character.UpperTorso.WaistRigAttachment:Destroy()
			end)
			pcall(function()
				local ayybleed = Instance.new('Part',character)
				ayybleed.Size = Vector3.new(character.UpperTorso.Size.X,0,character.UpperTorso.Size.Z)
				ayybleed.Transparency = 1
				ayybleed.CanCollide = false
				ayybleed.CFrame = character.UpperTorso.CFrame
				ayybleed:BreakJoints()
				ayybleed.Name = "ayybleed"
				local attachment1 = Instance.new('Attachment',ayybleed)
				attachment1.Position = Vector3.new(0,-character.UpperTorso.Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,180)
				local attachment0 = Instance.new('Attachment',character.UpperTorso)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				local bleedBLEED= coroutine.wrap(function()
					bleed(ayybleed)
				end)
				bleedBLEED()
			end)
			pcall(function()
				local ayybleed = Instance.new('Part',character)
				ayybleed.Size = Vector3.new(character.LowerTorso.Size.X-0.1,0.1,character.LowerTorso.Size.Z-0.1)
				ayybleed.Transparency = 1
				ayybleed.CanCollide = false
				ayybleed.CFrame = character.LowerTorso.CFrame
				ayybleed:BreakJoints()
				ayybleed.Name = "ayybleed"
				local attachment1 = Instance.new('Attachment',ayybleed)
				attachment1.Position = Vector3.new(0,-character.LowerTorso.Size.Y/2,0)
				attachment1.Orientation = Vector3.new(0,0,0)
				local attachment0 = Instance.new('Attachment',character.LowerTorso)
				if attachment0 and attachment1 then
					local constraint = Instance.new("HingeConstraint")
					constraint.Attachment0 = attachment0
					constraint.Attachment1 = attachment1
					constraint.LimitsEnabled = true
					constraint.UpperAngle = 0
					constraint.LowerAngle = 0
					constraint.Parent = character
				end
				local bleedBLEED= coroutine.wrap(function()
					bleed(ayybleed)
				end)
				bleedBLEED()
			end)
		end
		pcall(function()
			local thang = "Torso"
			if character:FindFirstChild('UpperTorso') then
				thang = "UpperTorso"
			end
			local ayybleed = Instance.new('Part',character)
			ayybleed.Size = Vector3.new(character[thang].Size.X-0.1,0.1,character[thang].Size.Z-0.1)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.CanCollide = false
			ayybleed.Transparency = 0
			ayybleed.CFrame = character[thang].CFrame
			ayybleed:BreakJoints()
			local attachment1 = Instance.new('Attachment',ayybleed)
			attachment1.Position = Vector3.new(0,(character[thang].Size.Y/2)-0.045,0)
			attachment1.Orientation = Vector3.new(0,0,0)
			local attachment0 = Instance.new('Attachment',character[thang])
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
		end)
		pcall(function()
			local ree = character.LowerTorso
			local thang = "LowerTorso"
			local ayybleed = Instance.new('Part',character)
			ayybleed.Size = Vector3.new(character[thang].Size.X-0.1,0.1,character[thang].Size.Z-0.1)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.CanCollide = false
			ayybleed.Transparency = 0
			ayybleed.CFrame = character[thang].CFrame
			ayybleed:BreakJoints()
			local attachment1 = Instance.new('Attachment',ayybleed)
			attachment1.Position = Vector3.new(0,(-character[thang].Size.Y/2)+0.045,0)
			attachment1.Orientation = Vector3.new(0,0,0)
			local attachment0 = Instance.new('Attachment',character[thang])
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
		end)
		pcall(function()
			local ree = character["Right Leg"]
			local thang = "Right Leg"
			local ayybleed = Instance.new('Part',character)
			ayybleed.Size = Vector3.new(character[thang].Size.X-0.1,0.1,character[thang].Size.Z-0.1)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.CanCollide = false
			ayybleed.Transparency = 0
			ayybleed.CFrame = character[thang].CFrame
			ayybleed:BreakJoints()
			local attachment1 = Instance.new('Attachment',ayybleed)
			attachment1.Position = Vector3.new(0,(-character[thang].Size.Y/2)+0.045,0)
			attachment1.Orientation = Vector3.new(0,0,0)
			local attachment0 = Instance.new('Attachment',character[thang])
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
		end)
		pcall(function()
			local ree = character["Left Leg"]
			local thang = "Left Leg"
			local ayybleed = Instance.new('Part',character)
			ayybleed.Size = Vector3.new(character[thang].Size.X-0.1,0.1,character[thang].Size.Z-0.1)
			ayybleed.Color = Frame_2.BackgroundColor3
			ayybleed.Material = Enum.Material.SmoothPlastic
			ayybleed.Name = "ayybleed"
			ayybleed.CanCollide = false
			ayybleed.Transparency = 0
			ayybleed.CFrame = character[thang].CFrame
			ayybleed:BreakJoints()
			local attachment1 = Instance.new('Attachment',ayybleed)
			attachment1.Position = Vector3.new(0,(-character[thang].Size.Y/2)+0.045,0)
			attachment1.Orientation = Vector3.new(0,0,0)
			local attachment0 = Instance.new('Attachment',character[thang])
			if attachment0 and attachment1 then
				local constraint = Instance.new("HingeConstraint")
				constraint.Attachment0 = attachment0
				constraint.Attachment1 = attachment1
				constraint.LimitsEnabled = true
				constraint.UpperAngle = 0
				constraint.LowerAngle = 0
				constraint.Parent = character
			end
		end)
		partname="Head"
	end
	if partname == "RightHand" or partname == "RightLowerArm" or partname == "RightUpperArm" then
		if character:FindFirstChild('RightLowerArm') and character:FindFirstChild('RightHand') then
			ragdollJoint(character,character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)
		end
		if character:FindFirstChild('UpperTorso') and character:FindFirstChild('RightUpperArm') then
			ragdollJoint(character, character.UpperTorso, character["RightUpperArm"], "RightShoulder", "BallSocket")
		end
		if character:FindFirstChild('RightUpperArm') and character:FindFirstChild('RightLowerArm') then
			ragdollJoint(character, character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
		end
	elseif partname == "LeftHand" or partname == "LeftLowerArm" or partname == "LeftUpperArm" then
		if character:FindFirstChild('LeftLowerArm') and character:FindFirstChild('LeftHand') then
			ragdollJoint(character,character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
		end
		if character:FindFirstChild('UpperTorso') and character:FindFirstChild('LeftUpperArm') then
			ragdollJoint(character, character.UpperTorso, character["LeftUpperArm"], "LeftShoulder", "BallSocket")
		end
		if character:FindFirstChild('LeftUpperArm') and character:FindFirstChild('LeftLowerArm') then
			ragdollJoint(character, character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
		end
	elseif partname == "RightFoot" or partname == "RightUpperLeg" or partname == "RightLowerLeg" then
		stun(character)
		if character:FindFirstChild('RightUpperLeg') and character:FindFirstChild('RightLowerLeg') then
			ragdollJoint(character,character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)
		end
		if character:FindFirstChild('RightLowerLeg') and character:FindFirstChild('RightFoot') then
			ragdollJoint(character,character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
		end
		if character:FindFirstChild('LowerTorso') and character:FindFirstChild('RightUpperLeg') then
			ragdollJoint(character,character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
		end
	elseif partname == "LeftFoot" or partname == "LeftUpperLeg" or partname == "LeftLowerLeg" then
		stun(character)
		if character:FindFirstChild('LeftUpperLeg') and character:FindFirstChild('LeftLowerLeg') then
			ragdollJoint(character,character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
		end
		if character:FindFirstChild('LeftLowerLeg') and character:FindFirstChild('LeftFoot') then
			ragdollJoint(character,character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
		end
		if character:FindFirstChild('LowerTorso') and character:FindFirstChild('LeftUpperLeg') then
			ragdollJoint(character,character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
		end
	elseif partname == "Head" or partname == "UpperTorso" or partname == "LowerTorso" then
		if character:FindFirstChildOfClass('Humanoid') and character:FindFirstChildOfClass('Humanoid').RigType == Enum.HumanoidRigType.R15 then
		if character:FindFirstChildOfClass('Humanoid') then
			character:FindFirstChildOfClass('Humanoid').Health = 0
		end
		if character:FindFirstChild('HumanoidRootPart') then
			character.HumanoidRootPart:Destroy()
		end
		while character:FindFirstChildOfClass('Humanoid').Health > 0 do wait() end
		game:GetService('Debris'):AddItem(character,10)
		for _,child in next,character:GetChildren() do
		if child:IsA("Accoutrement") then
			for _,part in next,child:GetChildren() do
				if part:IsA("BasePart") then
					for _,c in pairs(part:GetChildren()) do
						if c:IsA('Weld') then c:Destroy() end
					end
					local attachment1 = part:FindFirstChildOfClass("Attachment")
					local attachment0 = getAttachment0(character,attachment1.Name)
					if attachment0 and attachment1 then
						local constraint = Instance.new("HingeConstraint")
						constraint.Attachment0 = attachment0
						constraint.Attachment1 = attachment1
						constraint.LimitsEnabled = true
						constraint.UpperAngle = 0
						constraint.LowerAngle = 0
						constraint.Parent = character
					end
				end
			end
		end
		end
		for i,v in pairs(character:GetChildren()) do
			if v:IsA('MeshPart') or v:IsA('BasePart') then
				for _,c in pairs(v:GetChildren()) do
					if c.Name == "Collision" then c:Destroy() end
				end
			end
		end
	if heded == false then
		pcall(function()
			local asdf = Instance.new('Attachment',character.Head)
			asdf.Position = Vector3.new(0,-character.Head.Size.Y/2,0)
			local last = asdf
			character.Head.Neck:Destroy()
			character.Head.NeckRigAttachment:Destroy()
			character.UpperTorso:FindFirstChild('NeckAttachment'):Destroy()
		end)
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('LowerTorso') then
	ragdollJoint(character,character.LowerTorso, character.UpperTorso, "Waist", "BallSocket", {
		{"LimitsEnabled",true};
		{"UpperAngle",5};
		{"Radius",5};
	})
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('Head') then
	ragdollJoint(character,character.UpperTorso, character.Head, "Neck", "Hinge", {
		{"LimitsEnabled",true};
		{"UpperAngle",50};
		{"LowerAngle",-50};
	})
	end
	
	local handProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle",0};
		{"LowerAngle",0};
	}
	if character:FindFirstChild('LeftLowerArm') and character:FindFirstChild('LeftHand') then
	ragdollJoint(character,character.LeftLowerArm, character.LeftHand, "LeftWrist", "Hinge", handProperties)
	end
	if character:FindFirstChild('RightLowerArm') and character:FindFirstChild('RightHand') then
	ragdollJoint(character,character.RightLowerArm, character.RightHand, "RightWrist", "Hinge", handProperties)
	end
	
	local shinProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 0};
		{"LowerAngle", -75};
	}
	if character:FindFirstChild('LeftUpperLeg') and character:FindFirstChild('LeftLowerLeg') then
	ragdollJoint(character,character.LeftUpperLeg, character.LeftLowerLeg, "LeftKnee", "Hinge", shinProperties)
	end
	if character:FindFirstChild('RightUpperLeg') and character:FindFirstChild('RightLowerLeg') then
	ragdollJoint(character,character.RightUpperLeg, character.RightLowerLeg, "RightKnee", "Hinge", shinProperties)
	end
	
	local footProperties = {
		{"LimitsEnabled", true};
		{"UpperAngle", 15};
		{"LowerAngle", -45};
	}
	if character:FindFirstChild('LeftLowerLeg') and character:FindFirstChild('LeftFoot') then
	ragdollJoint(character,character.LeftLowerLeg, character.LeftFoot, "LeftAnkle", "Hinge", footProperties)
	end
	if character:FindFirstChild('RightLowerLeg') and character:FindFirstChild('RightFoot') then
	ragdollJoint(character,character.RightLowerLeg, character.RightFoot, "RightAnkle", "Hinge", footProperties)
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('LeftUpperArm') then
	ragdollJoint(character,character.UpperTorso, character.LeftUpperArm, "LeftShoulder", "BallSocket")
	end
	if character:FindFirstChild('LeftLowerArm') and character:FindFirstChild('LeftUpperArm') then
	ragdollJoint(character,character.LeftUpperArm, character.LeftLowerArm, "LeftElbow", "BallSocket")
	end
	if character:FindFirstChild('UpperTorso') and character:FindFirstChild('RightUpperArm') then
	ragdollJoint(character,character.UpperTorso, character.RightUpperArm, "RightShoulder", "BallSocket")
	end
	if character:FindFirstChild('RightUpperArm') and character:FindFirstChild('RightLowerArm') then
	ragdollJoint(character,character.RightUpperArm, character.RightLowerArm, "RightElbow", "BallSocket")
	end
	if character:FindFirstChild('LowerTorso') and character:FindFirstChild('LeftUpperLeg') then
	ragdollJoint(character,character.LowerTorso, character.LeftUpperLeg, "LeftHip", "BallSocket")
	end
	if character:FindFirstChild('LowerTorso') and character:FindFirstChild('RightUpperLeg') then
	ragdollJoint(character,character.LowerTorso, character.RightUpperLeg, "RightHip", "BallSocket")
	end
	if character:FindFirstChild('HumanoidRootPart') then
		character.HumanoidRootPart:Destroy()
	end
		else
			R6ragdollJoint(character,partname,attached,heded)
		end
	else
		R6ragdollJoint(character,partname,attached,heded)
	end
end

function grow(weld,part,endsize,endpos,amntime)
	local start = weld.C1
	local parent = weld.Parent
	local startsize = part.Size
	local particl = Instance.new("ParticleEmitter")
	particl.LightEmission = 3
	particl.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 0, 255)), ColorSequenceKeypoint.new(0.1, Color3.fromRGB(248, 153, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
	particl.LightInfluence = 0.75
	particl.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
	particl.Lifetime = NumberRange.new(0.1, 1)
	particl.Rate = 50
	particl.RotSpeed = NumberRange.new(300, 300)
	particl.Speed = NumberRange.new(0, 1)
	particl.SpreadAngle = Vector2.new(90, 90)
	particl.Parent = part
	for i=1,amntime*100 do
		weld.C1 = start:lerp(endpos,i/(amntime*100))
		part.Size = startsize:lerp(endsize,i/(amntime*100))
		weld.Parent = parent
		wait(0.01)
	end
	particl.Enabled = false
end
function lerp(weld,startpos,endpos,amntime,longatend)
	local waited = 0
	for i=1,amntime*100 do
		if longatend == true then
			startpos = weld.C0
		end
		weld.C0 = startpos:lerp(endpos,i/(amntime*100))
		wait(0.01)
		waited=waited+0.01
	end
end

function spawned()
local usable = true
local working = false
local mode = "kill"
local equipped = false
local char = player.Character
local blademode = "handle"
local swinging = false
local gettingeem = false
local MOAN = false
local sounding = false
local SLESH = false
local goteem = nil
local grabbing = false
local grabbed = nil
local grabweld = nil
local aidsificating = nil
player.CharacterAdded:connect(function()
	if usable then
		usable = false
	end
end)
if char == nil then return end
while char:FindFirstChildOfClass('Humanoid') == nil or char:FindFirstChild('Head') == nil do wait() end
local badass = Instance.new('Sound',char.Head)
badass.Name = 'Badass'
badass.EmitterSize = player.CameraMaxZoomDistance+1
badass.MaxDistance = player.CameraMaxZoomDistance+1
badass.Volume = 10
badass.Looped=true
badass.SoundId = 'rbxassetid://428902535'
local handle = Instance.new("Part", char)
handle.BrickColor = BrickColor.new("Really black")
handle.Material = "Metal"
handle.CanCollide = false
handle.Anchored = false
handle.Shape = "Cylinder"
handle.Size = Vector3.new(1.1, 0.3, 0.3)
handle.BackSurface = "SmoothNoOutlines"
handle.BottomSurface = "SmoothNoOutlines"
handle.FrontSurface = "SmoothNoOutlines"
handle.LeftSurface = "SmoothNoOutlines"
handle.RightSurface = "SmoothNoOutlines"
handle.TopSurface = "SmoothNoOutlines"
handle.Name = "handle"

local hweld = Instance.new("Weld", char.Torso)
hweld.Part0 = char.Torso
hweld.Part1 = handle
hweld.C0 = CFrame.new(1, -0.8, 0) * CFrame.Angles(0, math.rad(90), 0)

local rdd = false
function oogabooga()
	if rdd == false then
		rdd = true
	pcall(function()
		ragdollpart(char,"Right Arm")
		ragdollpart(char,"Right Leg")
		ragdollpart(char,"Left Arm")
		ragdollpart(char,"Left Leg")
	end)
	pcall(function()
		ragdollpart(char,"RightUpperArm")
		ragdollpart(char,"RightUpperLeg")
		ragdollpart(char,"LeftUpperArm")
		ragdollpart(char,"LeftUpperLeg")
	end)
	unstun(char)
	for i,v in pairs(char:GetChildren()) do
		v.ChildAdded:connect(function(child)
			if rdd == true then
			if child.Name ~= "Neck" and child.Name ~= "RootJoint" and child.Name ~= "Root" and (child:IsA('Motor6D') or child:IsA('Weld')) then 
				if child ~= grabweld then
					spawn(function()
						wait()
						child:Destroy()
					end)
				end
			end
			end
		end)
		if string.find(string.lower(v.Name),'leg') then
			if v:FindFirstChild('Collision') then
				v:FindFirstChild('Collision'):Destroy()
			end
		end
	end
	else
		rdd = false
		for i,v in pairs(char:GetChildren()) do
			if v:IsA('HingeConstraint') or v:IsA('BallSocketConstraint') then
				v:Destroy()
			elseif v:IsA('BasePart') then
				if v:FindFirstChild('Collision') then
					v.Collision:Destroy()
				end
				for a,c in pairs(v:GetChildren()) do
					if string.find(string.lower(c.Name),"ragdoll") then
						c:Destroy()
					end
				end
			end
		end
		pcall(function()
			local ra = rightclone:Clone()
			ra.Parent = char.Torso
			ra.Part0 = char.Torso
			ra.Part1 = char["Right Arm"]
		end)
		pcall(function()
			local la = leftclone:Clone()
			la.Parent = char.Torso
			la.Part0 = char.Torso
			la.Part1 = char["Left Arm"]
		end)
		pcall(function()
			local ll = leftlegclone:Clone()
			ll.Parent = char.Torso
			ll.Part0 = char.Torso
			ll.Part1 = char["Left Leg"]
		end)
		pcall(function()
			local rl = rightlegclone:Clone()
			rl.Parent = char.Torso
			rl.Part0 = char.Torso
			rl.Part1 = char["Right Leg"]
		end)
	end
end
function getrid()
	if grabbed then
		release()
	end
	blademode = "handle"
	for _,ree in pairs(handle:GetChildren()) do
		if ree:IsA('BasePart') then
			local part = Instance.new('Part',workspace)
			part.CFrame = ree.CFrame
			part.Anchored = true
			part.CanCollide = false
			part.Size = ree.Size
			part.Transparency = 1
			ree:Destroy()
			local pe2 = Instance.new("ParticleEmitter")
              pe2.Acceleration = Vector3.new(0, 1, 0)
              pe2.Lifetime = NumberRange.new(0.1, 0.2)
			  pe2.Speed = NumberRange.new(0.5)
              pe2.Rate = 20000
              pe2.RotSpeed = NumberRange.new(-30, 30)
              pe2.Rotation = NumberRange.new(0, 360)
              pe2.Size = NumberSequence.new({
                NumberSequenceKeypoint.new(0, part.Size.X*2, 0),
				NumberSequenceKeypoint.new(1, part.Size.X*2, 0),
              })
              pe2.Texture = "rbxassetid://244221440"
              pe2.Transparency = NumberSequence.new({
                NumberSequenceKeypoint.new(0, 0.9, 0),
                NumberSequenceKeypoint.new(1, 0.9, 0)
              })
              pe2.ZOffset = 5
              pe2.VelocitySpread = 360
              pe2.Parent = part
              pe2.Enabled = true
				local coru=coroutine.wrap(function()
			    wait(0.2)
				pe2.Enabled = false
				game:GetService('Debris'):AddItem(part,0.5)
				end)
				coru()
		else
			ree:Remove()
		end
	end
end

function equip()
	equipped = true
	working = true
	if char.Torso:FindFirstChild("Right Shoulder") then
		char.Torso:FindFirstChild("Right Shoulder"):Destroy()
	end
	local weld = Instance.new('Weld', char.Torso)
	weld.Name = "Lerping"
	weld.Part0 = char["Right Arm"]
	weld.Part1 = char.Torso
	weld.C0 = CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0)
	
	lerp(weld,weld.C0,CFrame.new(-1.3, -0.5, 0) * CFrame.Angles(0, 0, math.rad(15)),0.12,true)
	
	wait(0.1)
	
	hweld.Part0 = char["Right Arm"]
	hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
	
	lerp(weld,weld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)  
	
	weld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	working = false
end

function unequip()
	getrid(handle)
	equipped = false
	working = true
	
	if char.Torso:FindFirstChild("Right Shoulder") then
		char.Torso:FindFirstChild("Right Shoulder"):Destroy()
	end
	
	local weld = Instance.new('Weld', char.Torso)
	weld.Name = "Lerping"
	weld.Part0 = char["Right Arm"]
	weld.Part1 = char.Torso
	weld.C0 = CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0)
	

	lerp(weld,weld.C0,CFrame.new(-1.3, -0.5, 0) * CFrame.Angles(0, 0, math.rad(15)),0.12,true)
	
	hweld.Part0 = char["Torso"]
	hweld.C0 = CFrame.new(1, -0.8, 0) * CFrame.Angles(0, math.rad(90), 0)
	lerp(weld,weld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08,true)
	weld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	working = false
end

function dildo()
	blademode = "dildo"
	working = true
	-- 1 - pink toy
local obj1 = Instance.new("Model")
obj1.Name = "pink toy"
obj1.Parent = handle

-- 2 - Model
local obj2 = Instance.new("Model")
obj2.Parent = obj1

-- 3 - Part
local obj3 = Instance.new("Part")
obj3.CFrame = CFrame.new(Vector3.new(66.8643951, 3.86435986, 7.14990711)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj3.CanCollide = false
obj3.TopSurface = Enum.SurfaceType.Smooth
obj3.BottomSurface = Enum.SurfaceType.Smooth
obj3.Material = Enum.Material.SmoothPlastic
obj3.Size = Vector3.new(1.00000024, 1.00000024, 1.00000024)
obj3.BrickColor = BrickColor.new("Hot pink")
obj3.Friction = 0.30000001192093
obj3.Shape = Enum.PartType.Ball
obj3.Parent = obj2
obj3.Name = "tip"

-- 4 - Part
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(67.8275909, 2.08898449, 7.50048351)) * CFrame.Angles(9.1487750708552e-09, -0.34906616806984, -1.0471986532211)
obj4.CanCollide = false
obj4.TopSurface = Enum.SurfaceType.Smooth
obj4.BottomSurface = Enum.SurfaceType.Smooth
obj4.Material = Enum.Material.SmoothPlastic
obj4.Size = Vector3.new(4.09999943, 1, 1)
obj4.BrickColor = BrickColor.new("Hot pink")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Cylinder
obj4.Parent = obj2

-- 5 - Part
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(66.7104797, 3.86435843, 7.57276678)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj5.CanCollide = false
obj5.TopSurface = Enum.SurfaceType.Smooth
obj5.BottomSurface = Enum.SurfaceType.Smooth
obj5.Material = Enum.Material.SmoothPlastic
obj5.Size = Vector3.new(0.25, 0.25, 0.25)
obj5.BrickColor = BrickColor.new("Hot pink")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Ball
obj5.Parent = obj2

-- 6 - Part
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(68.6905365, 0.83212769, 8.29345417)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.7925276756287)
obj6.CanCollide = false
obj6.TopSurface = Enum.SurfaceType.Smooth
obj6.BottomSurface = Enum.SurfaceType.Smooth
obj6.Material = Enum.Material.SmoothPlastic
obj6.Size = Vector3.new(0.999999762, 0.999999762, 0.999999762)
obj6.BrickColor = BrickColor.new("Hot pink")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Ball
obj6.Parent = obj2

-- 7 - Part
local obj7 = Instance.new("Part")
obj7.CFrame = CFrame.new(Vector3.new(67.0182953, 3.86435866, 6.72704411)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj7.CanCollide = false
obj7.TopSurface = Enum.SurfaceType.Smooth
obj7.BottomSurface = Enum.SurfaceType.Smooth
obj7.Material = Enum.Material.SmoothPlastic
obj7.Size = Vector3.new(0.25, 0.25, 0.25)
obj7.BrickColor = BrickColor.new("Hot pink")
obj7.Friction = 0.30000001192093
obj7.Shape = Enum.PartType.Ball
obj7.Parent = obj2

-- 8 - Part
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(68.9983597, 0.832128167, 7.44772816)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.7925276756287)
obj8.CanCollide = false
obj8.TopSurface = Enum.SurfaceType.Smooth
obj8.BottomSurface = Enum.SurfaceType.Smooth
obj8.Material = Enum.Material.SmoothPlastic
obj8.Size = Vector3.new(0.999999762, 0.999999762, 0.999999762)
obj8.BrickColor = BrickColor.new("Hot pink")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Ball
obj8.Parent = obj2
local fiREPART = obj8

-- 9 - Part
local obj9 = Instance.new("Part")
obj9.CFrame = CFrame.new(Vector3.new(68.8566208, 0.357954353, 7.87501621)) * CFrame.Angles(9.1487750708552e-09, -0.34906616806984, -1.2217314243317)
obj9.CanCollide = false
obj9.TopSurface = Enum.SurfaceType.Smooth
obj9.BottomSurface = Enum.SurfaceType.Smooth
obj9.Material = Enum.Material.SmoothPlastic
obj9.Size = Vector3.new(0.0999999791, 1.50000036, 2)
obj9.BrickColor = BrickColor.new("Hot pink")
obj9.Friction = 0.30000001192093
obj9.Shape = Enum.PartType.Cylinder
obj9.Parent = obj2

-- 10 - Part
local obj10 = Instance.new("Part")
obj10.CFrame = CFrame.new(Vector3.new(66.8069, 3.58244801, 7.60786104)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj10.CanCollide = false
obj10.TopSurface = Enum.SurfaceType.Smooth
obj10.BottomSurface = Enum.SurfaceType.Smooth
obj10.Material = Enum.Material.SmoothPlastic
obj10.Size = Vector3.new(0.25, 0.25, 0.25)
obj10.BrickColor = BrickColor.new("Hot pink")
obj10.Friction = 0.30000001192093
obj10.Shape = Enum.PartType.Ball
obj10.Parent = obj2

-- 11 - Part
local obj11 = Instance.new("Part")
obj11.CFrame = CFrame.new(Vector3.new(67.196106, 3.632447, 6.79175806)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj11.CanCollide = false
obj11.TopSurface = Enum.SurfaceType.Smooth
obj11.BottomSurface = Enum.SurfaceType.Smooth
obj11.Material = Enum.Material.SmoothPlastic
obj11.Size = Vector3.new(0.25, 0.25, 0.25)
obj11.BrickColor = BrickColor.new("Hot pink")
obj11.Friction = 0.30000001192093
obj11.Shape = Enum.PartType.Ball
obj11.Parent = obj2

-- 12 - Part
local obj12 = Instance.new("Part")
obj12.CFrame = CFrame.new(Vector3.new(67.0756683, 3.77002549, 7.63403416)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj12.CanCollide = false
obj12.TopSurface = Enum.SurfaceType.Smooth
obj12.BottomSurface = Enum.SurfaceType.Smooth
obj12.Material = Enum.Material.SmoothPlastic
obj12.Size = Vector3.new(0.25, 0.25, 0.25)
obj12.BrickColor = BrickColor.new("Hot pink")
obj12.Friction = 0.30000001192093
obj12.Shape = Enum.PartType.Ball
obj12.Parent = obj2

-- 13 - Part
local obj13 = Instance.new("Part")
obj13.CFrame = CFrame.new(Vector3.new(67.4108353, 3.27276325, 6.88037825)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj13.CanCollide = false
obj13.TopSurface = Enum.SurfaceType.Smooth
obj13.BottomSurface = Enum.SurfaceType.Smooth
obj13.Material = Enum.Material.SmoothPlastic
obj13.Size = Vector3.new(0.25, 0.25, 0.25)
obj13.BrickColor = BrickColor.new("Hot pink")
obj13.Friction = 0.30000001192093
obj13.Shape = Enum.PartType.Ball
obj13.Parent = obj2

-- 14 - Part
local obj14 = Instance.new("Part")
obj14.CFrame = CFrame.new(Vector3.new(66.868927, 3.43238807, 6.82578087)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj14.CanCollide = false
obj14.TopSurface = Enum.SurfaceType.Smooth
obj14.BottomSurface = Enum.SurfaceType.Smooth
obj14.Material = Enum.Material.SmoothPlastic
obj14.Size = Vector3.new(0.25, 0.25, 0.25)
obj14.BrickColor = BrickColor.new("Hot pink")
obj14.Friction = 0.30000001192093
obj14.Shape = Enum.PartType.Ball
obj14.Parent = obj2

-- 15 - Part
local obj15 = Instance.new("Part")
obj15.CFrame = CFrame.new(Vector3.new(67.1951675, 3.383008, 7.69050598)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj15.CanCollide = false
obj15.TopSurface = Enum.SurfaceType.Smooth
obj15.BottomSurface = Enum.SurfaceType.Smooth
obj15.Material = Enum.Material.SmoothPlastic
obj15.Size = Vector3.new(0.25, 0.25, 0.25)
obj15.BrickColor = BrickColor.new("Hot pink")
obj15.Friction = 0.30000001192093
obj15.Shape = Enum.PartType.Ball
obj15.Parent = obj2

-- 16 - Part
local obj16 = Instance.new("Part")
obj16.CFrame = CFrame.new(Vector3.new(67.50383, 3.46245813, 7.48069429)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj16.CanCollide = false
obj16.TopSurface = Enum.SurfaceType.Smooth
obj16.BottomSurface = Enum.SurfaceType.Smooth
obj16.Material = Enum.Material.SmoothPlastic
obj16.Size = Vector3.new(0.25, 0.25, 0.25)
obj16.BrickColor = BrickColor.new("Hot pink")
obj16.Friction = 0.30000001192093
obj16.Shape = Enum.PartType.Ball
obj16.Parent = obj2

-- 17 - Part
local obj17 = Instance.new("Part")
obj17.CFrame = CFrame.new(Vector3.new(66.5551376, 3.4628334, 7.33871651)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj17.CanCollide = false
obj17.TopSurface = Enum.SurfaceType.Smooth
obj17.BottomSurface = Enum.SurfaceType.Smooth
obj17.Material = Enum.Material.SmoothPlastic
obj17.Size = Vector3.new(0.25, 0.25, 0.25)
obj17.BrickColor = BrickColor.new("Hot pink")
obj17.Friction = 0.30000001192093
obj17.Shape = Enum.PartType.Ball
obj17.Parent = obj2

-- 18 - Part
local obj18 = Instance.new("Part")
obj18.CFrame = CFrame.new(Vector3.new(67.3677139, 3.83245182, 7.3331027)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj18.CanCollide = false
obj18.TopSurface = Enum.SurfaceType.Smooth
obj18.BottomSurface = Enum.SurfaceType.Smooth
obj18.Material = Enum.Material.SmoothPlastic
obj18.Size = Vector3.new(0.25, 0.25, 0.25)
obj18.BrickColor = BrickColor.new("Hot pink")
obj18.Friction = 0.30000001192093
obj18.Shape = Enum.PartType.Ball
obj18.Parent = obj2

-- 19 - Part
local obj19 = Instance.new("Part")
obj19.CFrame = CFrame.new(Vector3.new(67.4115601, 3.71535063, 7.01420689)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj19.CanCollide = false
obj19.TopSurface = Enum.SurfaceType.Smooth
obj19.BottomSurface = Enum.SurfaceType.Smooth
obj19.Material = Enum.Material.SmoothPlastic
obj19.Size = Vector3.new(0.25, 0.25, 0.25)
obj19.BrickColor = BrickColor.new("Hot pink")
obj19.Friction = 0.30000001192093
obj19.Shape = Enum.PartType.Ball
obj19.Parent = obj2

-- 20 - Part
local obj20 = Instance.new("Part")
obj20.CFrame = CFrame.new(Vector3.new(67.6487045, 3.39313889, 7.19381428)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj20.CanCollide = false
obj20.TopSurface = Enum.SurfaceType.Smooth
obj20.BottomSurface = Enum.SurfaceType.Smooth
obj20.Material = Enum.Material.SmoothPlastic
obj20.Size = Vector3.new(0.25, 0.25, 0.25)
obj20.BrickColor = BrickColor.new("Hot pink")
obj20.Friction = 0.30000001192093
obj20.Shape = Enum.PartType.Ball
obj20.Parent = obj2

-- 21 - Part
local obj21 = Instance.new("Part")
obj21.CFrame = CFrame.new(Vector3.new(66.8260422, 4.12417316, 6.81669378)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj21.CanCollide = false
obj21.TopSurface = Enum.SurfaceType.Smooth
obj21.BottomSurface = Enum.SurfaceType.Smooth
obj21.Material = Enum.Material.SmoothPlastic
obj21.Size = Vector3.new(0.25, 0.25, 0.25)
obj21.BrickColor = BrickColor.new("Hot pink")
obj21.Friction = 0.30000001192093
obj21.Shape = Enum.PartType.Ball
obj21.Parent = obj2

-- 22 - Part
local obj22 = Instance.new("Part")
obj22.CFrame = CFrame.new(Vector3.new(67.162117, 3.11433029, 6.8847661)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj22.CanCollide = false
obj22.TopSurface = Enum.SurfaceType.Smooth
obj22.BottomSurface = Enum.SurfaceType.Smooth
obj22.Material = Enum.Material.SmoothPlastic
obj22.Size = Vector3.new(0.25, 0.25, 0.25)
obj22.BrickColor = BrickColor.new("Hot pink")
obj22.Friction = 0.30000001192093
obj22.Shape = Enum.PartType.Ball
obj22.Parent = obj2

-- 23 - Part
local obj23 = Instance.new("Part")
obj23.CFrame = CFrame.new(Vector3.new(66.4981842, 3.63936186, 7.01661682)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj23.CanCollide = false
obj23.TopSurface = Enum.SurfaceType.Smooth
obj23.BottomSurface = Enum.SurfaceType.Smooth
obj23.Material = Enum.Material.SmoothPlastic
obj23.Size = Vector3.new(0.25, 0.25, 0.25)
obj23.BrickColor = BrickColor.new("Hot pink")
obj23.Friction = 0.30000001192093
obj23.Shape = Enum.PartType.Ball
obj23.Parent = obj2

-- 24 - Part
local obj24 = Instance.new("Part")
obj24.CFrame = CFrame.new(Vector3.new(66.6352844, 3.38244724, 7.06651926)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj24.CanCollide = false
obj24.TopSurface = Enum.SurfaceType.Smooth
obj24.BottomSurface = Enum.SurfaceType.Smooth
obj24.Material = Enum.Material.SmoothPlastic
obj24.Size = Vector3.new(0.25, 0.25, 0.25)
obj24.BrickColor = BrickColor.new("Hot pink")
obj24.Friction = 0.30000001192093
obj24.Shape = Enum.PartType.Ball
obj24.Parent = obj2

-- 25 - Part
local obj25 = Instance.new("Part")
obj25.CFrame = CFrame.new(Vector3.new(66.753746, 3.10362744, 7.32704163)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj25.CanCollide = false
obj25.TopSurface = Enum.SurfaceType.Smooth
obj25.BottomSurface = Enum.SurfaceType.Smooth
obj25.Material = Enum.Material.SmoothPlastic
obj25.Size = Vector3.new(0.25, 0.25, 0.25)
obj25.BrickColor = BrickColor.new("Hot pink")
obj25.Friction = 0.30000001192093
obj25.Shape = Enum.PartType.Ball
obj25.Parent = obj2

-- 26 - Part
local obj26 = Instance.new("Part")
obj26.CFrame = CFrame.new(Vector3.new(66.851532, 3.01907969, 7.04717398)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj26.CanCollide = false
obj26.TopSurface = Enum.SurfaceType.Smooth
obj26.BottomSurface = Enum.SurfaceType.Smooth
obj26.Material = Enum.Material.SmoothPlastic
obj26.Size = Vector3.new(0.25, 0.25, 0.25)
obj26.BrickColor = BrickColor.new("Hot pink")
obj26.Friction = 0.30000001192093
obj26.Shape = Enum.PartType.Ball
obj26.Parent = obj2

-- 27 - Part
local obj27 = Instance.new("Part")
obj27.CFrame = CFrame.new(Vector3.new(66.944519, 3.20876789, 7.64748764)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj27.CanCollide = false
obj27.TopSurface = Enum.SurfaceType.Smooth
obj27.BottomSurface = Enum.SurfaceType.Smooth
obj27.Material = Enum.Material.SmoothPlastic
obj27.Size = Vector3.new(0.25, 0.25, 0.25)
obj27.BrickColor = BrickColor.new("Hot pink")
obj27.Friction = 0.30000001192093
obj27.Shape = Enum.PartType.Ball
obj27.Parent = obj2

-- 28 - Part
local obj28 = Instance.new("Part")
obj28.CFrame = CFrame.new(Vector3.new(67.2306061, 4.08936405, 7.28319883)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj28.CanCollide = false
obj28.TopSurface = Enum.SurfaceType.Smooth
obj28.BottomSurface = Enum.SurfaceType.Smooth
obj28.Material = Enum.Material.SmoothPlastic
obj28.Size = Vector3.new(0.25, 0.25, 0.25)
obj28.BrickColor = BrickColor.new("Hot pink")
obj28.Friction = 0.30000001192093
obj28.Shape = Enum.PartType.Ball
obj28.Parent = obj2

-- 29 - Part
local obj29 = Instance.new("Part")
obj29.CFrame = CFrame.new(Vector3.new(66.5712891, 3.99917173, 6.8835969)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj29.CanCollide = false
obj29.TopSurface = Enum.SurfaceType.Smooth
obj29.BottomSurface = Enum.SurfaceType.Smooth
obj29.Material = Enum.Material.SmoothPlastic
obj29.Size = Vector3.new(0.25, 0.25, 0.25)
obj29.BrickColor = BrickColor.new("Hot pink")
obj29.Friction = 0.30000001192093
obj29.Shape = Enum.PartType.Ball
obj29.Parent = obj2

-- 30 - Part
local obj30 = Instance.new("Part")
obj30.CFrame = CFrame.new(Vector3.new(66.7236328, 4.26077843, 7.20509243)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj30.CanCollide = false
obj30.TopSurface = Enum.SurfaceType.Smooth
obj30.BottomSurface = Enum.SurfaceType.Smooth
obj30.Material = Enum.Material.SmoothPlastic
obj30.Size = Vector3.new(0.25, 0.25, 0.25)
obj30.BrickColor = BrickColor.new("Hot pink")
obj30.Friction = 0.30000001192093
obj30.Shape = Enum.PartType.Ball
obj30.Parent = obj2

-- 31 - Part
local obj31 = Instance.new("Part")
obj31.CFrame = CFrame.new(Vector3.new(66.5950623, 4.16077423, 7.05188084)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj31.CanCollide = false
obj31.TopSurface = Enum.SurfaceType.Smooth
obj31.BottomSurface = Enum.SurfaceType.Smooth
obj31.Material = Enum.Material.SmoothPlastic
obj31.Size = Vector3.new(0.25, 0.25, 0.25)
obj31.BrickColor = BrickColor.new("Hot pink")
obj31.Friction = 0.30000001192093
obj31.Shape = Enum.PartType.Ball
obj31.Parent = obj2

-- 32 - Part
local obj32 = Instance.new("Part")
obj32.CFrame = CFrame.new(Vector3.new(67.0637207, 4.03936481, 7.48850012)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj32.CanCollide = false
obj32.TopSurface = Enum.SurfaceType.Smooth
obj32.BottomSurface = Enum.SurfaceType.Smooth
obj32.Material = Enum.Material.SmoothPlastic
obj32.Size = Vector3.new(0.25, 0.25, 0.25)
obj32.BrickColor = BrickColor.new("Hot pink")
obj32.Friction = 0.30000001192093
obj32.Shape = Enum.PartType.Ball
obj32.Parent = obj2

-- 33 - Part
local obj33 = Instance.new("Part")
obj33.CFrame = CFrame.new(Vector3.new(66.4686813, 3.99917364, 7.16550922)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj33.CanCollide = false
obj33.TopSurface = Enum.SurfaceType.Smooth
obj33.BottomSurface = Enum.SurfaceType.Smooth
obj33.Material = Enum.Material.SmoothPlastic
obj33.Size = Vector3.new(0.25, 0.25, 0.25)
obj33.BrickColor = BrickColor.new("Hot pink")
obj33.Friction = 0.30000001192093
obj33.Shape = Enum.PartType.Ball
obj33.Parent = obj2

-- 34 - Part
local obj34 = Instance.new("Part")
obj34.CFrame = CFrame.new(Vector3.new(66.6615219, 4.14917231, 7.3953228)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj34.CanCollide = false
obj34.TopSurface = Enum.SurfaceType.Smooth
obj34.BottomSurface = Enum.SurfaceType.Smooth
obj34.Material = Enum.Material.SmoothPlastic
obj34.Size = Vector3.new(0.25, 0.25, 0.25)
obj34.BrickColor = BrickColor.new("Hot pink")
obj34.Friction = 0.30000001192093
obj34.Shape = Enum.PartType.Ball
obj34.Parent = obj2

-- 35 - Part
local obj35 = Instance.new("Part")
obj35.CFrame = CFrame.new(Vector3.new(66.8712616, 4.16257238, 7.47166586)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj35.CanCollide = false
obj35.TopSurface = Enum.SurfaceType.Smooth
obj35.BottomSurface = Enum.SurfaceType.Smooth
obj35.Material = Enum.Material.SmoothPlastic
obj35.Size = Vector3.new(0.25, 0.25, 0.25)
obj35.BrickColor = BrickColor.new("Hot pink")
obj35.Friction = 0.30000001192093
obj35.Shape = Enum.PartType.Ball
obj35.Parent = obj2

-- 36 - Part
local obj36 = Instance.new("Part")
obj36.CFrame = CFrame.new(Vector3.new(66.7165604, 3.82596827, 6.77684546)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj36.CanCollide = false
obj36.TopSurface = Enum.SurfaceType.Smooth
obj36.BottomSurface = Enum.SurfaceType.Smooth
obj36.Material = Enum.Material.SmoothPlastic
obj36.Size = Vector3.new(0.25, 0.25, 0.25)
obj36.BrickColor = BrickColor.new("Hot pink")
obj36.Friction = 0.30000001192093
obj36.Shape = Enum.PartType.Ball
obj36.Parent = obj2

-- 37 - Part
local obj37 = Instance.new("Part")
obj37.CFrame = CFrame.new(Vector3.new(66.9846878, 4.27417517, 7.14047909)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj37.CanCollide = false
obj37.TopSurface = Enum.SurfaceType.Smooth
obj37.BottomSurface = Enum.SurfaceType.Smooth
obj37.Material = Enum.Material.SmoothPlastic
obj37.Size = Vector3.new(0.25, 0.25, 0.25)
obj37.BrickColor = BrickColor.new("Hot pink")
obj37.Friction = 0.30000001192093
obj37.Shape = Enum.PartType.Ball
obj37.Parent = obj2

-- 38 - Part
local obj38 = Instance.new("Part")
obj38.CFrame = CFrame.new(Vector3.new(67.1641541, 4.10096312, 6.93975735)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj38.CanCollide = false
obj38.TopSurface = Enum.SurfaceType.Smooth
obj38.BottomSurface = Enum.SurfaceType.Smooth
obj38.Material = Enum.Material.SmoothPlastic
obj38.Size = Vector3.new(0.25, 0.25, 0.25)
obj38.BrickColor = BrickColor.new("Hot pink")
obj38.Friction = 0.30000001192093
obj38.Shape = Enum.PartType.Ball
obj38.Parent = obj2

-- 39 - Part
local obj39 = Instance.new("Part")
obj39.CFrame = CFrame.new(Vector3.new(66.792038, 4.26077843, 7.01715183)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj39.CanCollide = false
obj39.TopSurface = Enum.SurfaceType.Smooth
obj39.BottomSurface = Enum.SurfaceType.Smooth
obj39.Material = Enum.Material.SmoothPlastic
obj39.Size = Vector3.new(0.25, 0.25, 0.25)
obj39.BrickColor = BrickColor.new("Hot pink")
obj39.Friction = 0.30000001192093
obj39.Shape = Enum.PartType.Ball
obj39.Parent = obj2

-- 40 - Part
local obj40 = Instance.new("Part")
obj40.CFrame = CFrame.new(Vector3.new(66.5005493, 3.71436262, 7.38994217)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj40.CanCollide = false
obj40.TopSurface = Enum.SurfaceType.Smooth
obj40.BottomSurface = Enum.SurfaceType.Smooth
obj40.Material = Enum.Material.SmoothPlastic
obj40.Size = Vector3.new(0.25, 0.25, 0.25)
obj40.BrickColor = BrickColor.new("Hot pink")
obj40.Friction = 0.30000001192093
obj40.Shape = Enum.PartType.Ball
obj40.Parent = obj2

-- 41 - stretches
local obj41 = Instance.new("Model")
obj41.Name = "stretches"
obj41.Parent = obj1

-- 42 - stretchlol
local obj42 = Instance.new("Part")
obj42.CFrame = CFrame.new(Vector3.new(67.162117, 3.13544774, 6.8847661)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj42.CanCollide = false
obj42.Transparency = 1
obj42.TopSurface = Enum.SurfaceType.Smooth
obj42.BottomSurface = Enum.SurfaceType.Smooth
obj42.Material = Enum.Material.SmoothPlastic
obj42.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj42.BrickColor = BrickColor.new("Pastel brown")
obj42.Friction = 0.30000001192093
obj42.Shape = Enum.PartType.Ball
obj42.Name = "stretchlol"
obj42.Parent = obj41

-- 43 - stretchlol
local obj43 = Instance.new("Part")
obj43.CFrame = CFrame.new(Vector3.new(67.1951675, 3.40412855, 7.69050598)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj43.CanCollide = false
obj43.Transparency = 1
obj43.TopSurface = Enum.SurfaceType.Smooth
obj43.BottomSurface = Enum.SurfaceType.Smooth
obj43.Material = Enum.Material.SmoothPlastic
obj43.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj43.BrickColor = BrickColor.new("Pastel brown")
obj43.Friction = 0.30000001192093
obj43.Shape = Enum.PartType.Ball
obj43.Name = "stretchlol"
obj43.Parent = obj41

-- 44 - stretchlol
local obj44 = Instance.new("Part")
obj44.CFrame = CFrame.new(Vector3.new(67.5038223, 3.48357916, 7.48069382)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj44.CanCollide = false
obj44.Transparency = 1
obj44.TopSurface = Enum.SurfaceType.Smooth
obj44.BottomSurface = Enum.SurfaceType.Smooth
obj44.Material = Enum.Material.SmoothPlastic
obj44.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj44.BrickColor = BrickColor.new("Pastel brown")
obj44.Friction = 0.30000001192093
obj44.Shape = Enum.PartType.Ball
obj44.Name = "stretchlol"
obj44.Parent = obj41

-- 45 - stretchlol
local obj45 = Instance.new("Part")
obj45.CFrame = CFrame.new(Vector3.new(67.1641541, 4.12207699, 6.93975687)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj45.CanCollide = false
obj45.Transparency = 1
obj45.TopSurface = Enum.SurfaceType.Smooth
obj45.BottomSurface = Enum.SurfaceType.Smooth
obj45.Material = Enum.Material.SmoothPlastic
obj45.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj45.BrickColor = BrickColor.new("Pastel brown")
obj45.Friction = 0.30000001192093
obj45.Shape = Enum.PartType.Ball
obj45.Name = "stretchlol"
obj45.Parent = obj41

-- 46 - stretchlol
local obj46 = Instance.new("Part")
obj46.CFrame = CFrame.new(Vector3.new(66.8712616, 4.18368626, 7.47166586)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj46.CanCollide = false
obj46.Transparency = 1
obj46.TopSurface = Enum.SurfaceType.Smooth
obj46.BottomSurface = Enum.SurfaceType.Smooth
obj46.Material = Enum.Material.SmoothPlastic
obj46.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj46.BrickColor = BrickColor.new("Pastel brown")
obj46.Friction = 0.30000001192093
obj46.Shape = Enum.PartType.Ball
obj46.Name = "stretchlol"
obj46.Parent = obj41

-- 47 - stretchlol
local obj47 = Instance.new("Part")
obj47.CFrame = CFrame.new(Vector3.new(66.8260345, 4.14528561, 6.81669378)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj47.CanCollide = false
obj47.Transparency = 1
obj47.TopSurface = Enum.SurfaceType.Smooth
obj47.BottomSurface = Enum.SurfaceType.Smooth
obj47.Material = Enum.Material.SmoothPlastic
obj47.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj47.BrickColor = BrickColor.new("Pastel brown")
obj47.Friction = 0.30000001192093
obj47.Shape = Enum.PartType.Ball
obj47.Name = "stretchlol"
obj47.Parent = obj41

-- 48 - stretchlol
local obj48 = Instance.new("Part")
obj48.CFrame = CFrame.new(Vector3.new(66.7104797, 3.88547921, 7.57276678)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj48.CanCollide = false
obj48.Transparency = 1
obj48.TopSurface = Enum.SurfaceType.Smooth
obj48.BottomSurface = Enum.SurfaceType.Smooth
obj48.Material = Enum.Material.SmoothPlastic
obj48.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj48.BrickColor = BrickColor.new("Pastel brown")
obj48.Friction = 0.30000001192093
obj48.Shape = Enum.PartType.Ball
obj48.Name = "stretchlol"
obj48.Parent = obj41

-- 49 - stretchlol
local obj49 = Instance.new("Part")
obj49.CFrame = CFrame.new(Vector3.new(67.0637207, 4.06047773, 7.48850012)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj49.CanCollide = false
obj49.Transparency = 1
obj49.TopSurface = Enum.SurfaceType.Smooth
obj49.BottomSurface = Enum.SurfaceType.Smooth
obj49.Material = Enum.Material.SmoothPlastic
obj49.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj49.BrickColor = BrickColor.new("Pastel brown")
obj49.Friction = 0.30000001192093
obj49.Shape = Enum.PartType.Ball
obj49.Name = "stretchlol"
obj49.Parent = obj41

-- 50 - stretchlol
local obj50 = Instance.new("Part")
obj50.CFrame = CFrame.new(Vector3.new(66.7165604, 3.84708691, 6.77684498)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj50.CanCollide = false
obj50.Transparency = 1
obj50.TopSurface = Enum.SurfaceType.Smooth
obj50.BottomSurface = Enum.SurfaceType.Smooth
obj50.Material = Enum.Material.SmoothPlastic
obj50.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj50.BrickColor = BrickColor.new("Pastel brown")
obj50.Friction = 0.30000001192093
obj50.Shape = Enum.PartType.Ball
obj50.Name = "stretchlol"
obj50.Parent = obj41

-- 51 - stretchlol
local obj51 = Instance.new("Part")
obj51.CFrame = CFrame.new(Vector3.new(66.9846878, 4.29528904, 7.14047909)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj51.CanCollide = false
obj51.Transparency = 1
obj51.TopSurface = Enum.SurfaceType.Smooth
obj51.BottomSurface = Enum.SurfaceType.Smooth
obj51.Material = Enum.Material.SmoothPlastic
obj51.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj51.BrickColor = BrickColor.new("Pastel brown")
obj51.Friction = 0.30000001192093
obj51.Shape = Enum.PartType.Ball
obj51.Name = "stretchlol"
obj51.Parent = obj41

-- 52 - stretchlol
local obj52 = Instance.new("Part")
obj52.CFrame = CFrame.new(Vector3.new(66.868927, 3.45350599, 6.82578087)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj52.CanCollide = false
obj52.Transparency = 1
obj52.TopSurface = Enum.SurfaceType.Smooth
obj52.BottomSurface = Enum.SurfaceType.Smooth
obj52.Material = Enum.Material.SmoothPlastic
obj52.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj52.BrickColor = BrickColor.new("Pastel brown")
obj52.Friction = 0.30000001192093
obj52.Shape = Enum.PartType.Ball
obj52.Name = "stretchlol"
obj52.Parent = obj41

-- 53 - stretchlol
local obj53 = Instance.new("Part")
obj53.CFrame = CFrame.new(Vector3.new(67.287262, 3.10603261, 7.30382156)) * CFrame.Angles(9.1487750708552e-09, -0.34906616806984, -1.0471986532211)
obj53.CanCollide = false
obj53.Transparency = 1
obj53.TopSurface = Enum.SurfaceType.Smooth
obj53.BottomSurface = Enum.SurfaceType.Smooth
obj53.Material = Enum.Material.SmoothPlastic
obj53.Size = Vector3.new(1.79999995, 1.04999995, 1.04999995)
obj53.BrickColor = BrickColor.new("Pastel brown")
obj53.Friction = 0.30000001192093
obj53.Shape = Enum.PartType.Cylinder
obj53.Name = "stretchlol"
obj53.Parent = obj41

-- 54 - stretchlol
local obj54 = Instance.new("Part")
obj54.CFrame = CFrame.new(Vector3.new(66.4686813, 4.02028799, 7.16550922)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj54.CanCollide = false
obj54.Transparency = 1
obj54.TopSurface = Enum.SurfaceType.Smooth
obj54.BottomSurface = Enum.SurfaceType.Smooth
obj54.Material = Enum.Material.SmoothPlastic
obj54.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj54.BrickColor = BrickColor.new("Pastel brown")
obj54.Friction = 0.30000001192093
obj54.Shape = Enum.PartType.Ball
obj54.Name = "stretchlol"
obj54.Parent = obj41

-- 55 - stretchlol
local obj55 = Instance.new("Part")
obj55.CFrame = CFrame.new(Vector3.new(66.6615219, 4.17028332, 7.3953228)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj55.CanCollide = false
obj55.Transparency = 1
obj55.TopSurface = Enum.SurfaceType.Smooth
obj55.BottomSurface = Enum.SurfaceType.Smooth
obj55.Material = Enum.Material.SmoothPlastic
obj55.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj55.BrickColor = BrickColor.new("Pastel brown")
obj55.Friction = 0.30000001192093
obj55.Shape = Enum.PartType.Ball
obj55.Name = "stretchlol"
obj55.Parent = obj41

-- 56 - stretchlol
local obj56 = Instance.new("Part")
obj56.CFrame = CFrame.new(Vector3.new(66.753746, 3.12474751, 7.32704115)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj56.CanCollide = false
obj56.Transparency = 1
obj56.TopSurface = Enum.SurfaceType.Smooth
obj56.BottomSurface = Enum.SurfaceType.Smooth
obj56.Material = Enum.Material.SmoothPlastic
obj56.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj56.BrickColor = BrickColor.new("Pastel brown")
obj56.Friction = 0.30000001192093
obj56.Shape = Enum.PartType.Ball
obj56.Name = "stretchlol"
obj56.Parent = obj41

-- 57 - stretchlol
local obj57 = Instance.new("Part")
obj57.CFrame = CFrame.new(Vector3.new(67.2306061, 4.11047649, 7.28319883)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj57.CanCollide = false
obj57.Transparency = 1
obj57.TopSurface = Enum.SurfaceType.Smooth
obj57.BottomSurface = Enum.SurfaceType.Smooth
obj57.Material = Enum.Material.SmoothPlastic
obj57.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj57.BrickColor = BrickColor.new("Pastel brown")
obj57.Friction = 0.30000001192093
obj57.Shape = Enum.PartType.Ball
obj57.Name = "stretchlol"
obj57.Parent = obj41

-- 58 - stretchlol
local obj58 = Instance.new("Part")
obj58.CFrame = CFrame.new(Vector3.new(67.0756683, 3.79114079, 7.63403416)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj58.CanCollide = false
obj58.Transparency = 1
obj58.TopSurface = Enum.SurfaceType.Smooth
obj58.BottomSurface = Enum.SurfaceType.Smooth
obj58.Material = Enum.Material.SmoothPlastic
obj58.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj58.BrickColor = BrickColor.new("Pastel brown")
obj58.Friction = 0.30000001192093
obj58.Shape = Enum.PartType.Ball
obj58.Name = "stretchlol"
obj58.Parent = obj41

-- 59 - stretchlol
local obj59 = Instance.new("Part")
obj59.CFrame = CFrame.new(Vector3.new(66.5005493, 3.73548079, 7.38994217)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj59.CanCollide = false
obj59.Transparency = 1
obj59.TopSurface = Enum.SurfaceType.Smooth
obj59.BottomSurface = Enum.SurfaceType.Smooth
obj59.Material = Enum.Material.SmoothPlastic
obj59.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj59.BrickColor = BrickColor.new("Pastel brown")
obj59.Friction = 0.30000001192093
obj59.Shape = Enum.PartType.Ball
obj59.Name = "stretchlol"
obj59.Parent = obj41

-- 60 - stretchlol
local obj60 = Instance.new("Part")
obj60.CFrame = CFrame.new(Vector3.new(67.6487045, 3.41425848, 7.1938138)) * CFrame.Angles(-2.0021269321442, 1.2287007570267, 1.6869416236877)
obj60.CanCollide = false
obj60.Transparency = 1
obj60.TopSurface = Enum.SurfaceType.Smooth
obj60.BottomSurface = Enum.SurfaceType.Smooth
obj60.Material = Enum.Material.SmoothPlastic
obj60.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj60.BrickColor = BrickColor.new("Pastel brown")
obj60.Friction = 0.30000001192093
obj60.Shape = Enum.PartType.Ball
obj60.Name = "stretchlol"
obj60.Parent = obj41

-- 61 - stretchlol
local obj61 = Instance.new("Part")
obj61.CFrame = CFrame.new(Vector3.new(67.3677139, 3.85357118, 7.33310223)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj61.CanCollide = false
obj61.Transparency = 1
obj61.TopSurface = Enum.SurfaceType.Smooth
obj61.BottomSurface = Enum.SurfaceType.Smooth
obj61.Material = Enum.Material.SmoothPlastic
obj61.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj61.BrickColor = BrickColor.new("Pastel brown")
obj61.Friction = 0.30000001192093
obj61.Shape = Enum.PartType.Ball
obj61.Name = "stretchlol"
obj61.Parent = obj41

-- 62 - stretchlol
local obj62 = Instance.new("Part")
obj62.CFrame = CFrame.new(Vector3.new(66.6352844, 3.40356588, 7.06651878)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj62.CanCollide = false
obj62.Transparency = 1
obj62.TopSurface = Enum.SurfaceType.Smooth
obj62.BottomSurface = Enum.SurfaceType.Smooth
obj62.Material = Enum.Material.SmoothPlastic
obj62.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj62.BrickColor = BrickColor.new("Pastel brown")
obj62.Friction = 0.30000001192093
obj62.Shape = Enum.PartType.Ball
obj62.Name = "stretchlol"
obj62.Parent = obj41

-- 63 - stretchlol
local obj63 = Instance.new("Part")
obj63.CFrame = CFrame.new(Vector3.new(66.7236328, 4.28189754, 7.20509195)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj63.CanCollide = false
obj63.Transparency = 1
obj63.TopSurface = Enum.SurfaceType.Smooth
obj63.BottomSurface = Enum.SurfaceType.Smooth
obj63.Material = Enum.Material.SmoothPlastic
obj63.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj63.BrickColor = BrickColor.new("Pastel brown")
obj63.Friction = 0.30000001192093
obj63.Shape = Enum.PartType.Ball
obj63.Name = "stretchlol"
obj63.Parent = obj41

-- 64 - stretchlol
local obj64 = Instance.new("Part")
obj64.CFrame = CFrame.new(Vector3.new(66.5712891, 4.02028799, 6.8835969)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj64.CanCollide = false
obj64.Transparency = 1
obj64.TopSurface = Enum.SurfaceType.Smooth
obj64.BottomSurface = Enum.SurfaceType.Smooth
obj64.Material = Enum.Material.SmoothPlastic
obj64.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj64.BrickColor = BrickColor.new("Pastel brown")
obj64.Friction = 0.30000001192093
obj64.Shape = Enum.PartType.Ball
obj64.Name = "stretchlol"
obj64.Parent = obj41

-- 65 - stretchlol
local obj65 = Instance.new("Part")
obj65.CFrame = CFrame.new(Vector3.new(66.4981842, 3.66047978, 7.01661682)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj65.CanCollide = false
obj65.Transparency = 1
obj65.TopSurface = Enum.SurfaceType.Smooth
obj65.BottomSurface = Enum.SurfaceType.Smooth
obj65.Material = Enum.Material.SmoothPlastic
obj65.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj65.BrickColor = BrickColor.new("Pastel brown")
obj65.Friction = 0.30000001192093
obj65.Shape = Enum.PartType.Ball
obj65.Name = "stretchlol"
obj65.Parent = obj41

-- 66 - stretchlol
local obj66 = Instance.new("Part")
obj66.CFrame = CFrame.new(Vector3.new(66.7920303, 4.28189754, 7.01715183)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj66.CanCollide = false
obj66.Transparency = 1
obj66.TopSurface = Enum.SurfaceType.Smooth
obj66.BottomSurface = Enum.SurfaceType.Smooth
obj66.Material = Enum.Material.SmoothPlastic
obj66.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj66.BrickColor = BrickColor.new("Pastel brown")
obj66.Friction = 0.30000001192093
obj66.Shape = Enum.PartType.Ball
obj66.Name = "stretchlol"
obj66.Parent = obj41

-- 67 - stretchlol
local obj67 = Instance.new("Part")
obj67.CFrame = CFrame.new(Vector3.new(66.5950623, 4.18188763, 7.05188084)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj67.CanCollide = false
obj67.Transparency = 1
obj67.TopSurface = Enum.SurfaceType.Smooth
obj67.BottomSurface = Enum.SurfaceType.Smooth
obj67.Material = Enum.Material.SmoothPlastic
obj67.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj67.BrickColor = BrickColor.new("Pastel brown")
obj67.Friction = 0.30000001192093
obj67.Shape = Enum.PartType.Ball
obj67.Name = "stretchlol"
obj67.Parent = obj41

-- 68 - stretchlol
local obj68 = Instance.new("Part")
obj68.CFrame = CFrame.new(Vector3.new(67.4115601, 3.73646879, 7.01420689)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj68.CanCollide = false
obj68.Transparency = 1
obj68.TopSurface = Enum.SurfaceType.Smooth
obj68.BottomSurface = Enum.SurfaceType.Smooth
obj68.Material = Enum.Material.SmoothPlastic
obj68.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj68.BrickColor = BrickColor.new("Pastel brown")
obj68.Friction = 0.30000001192093
obj68.Shape = Enum.PartType.Ball
obj68.Name = "stretchlol"
obj68.Parent = obj41

-- 69 - stretchlol
local obj69 = Instance.new("Part")
obj69.CFrame = CFrame.new(Vector3.new(66.8643951, 3.88548112, 7.14990711)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj69.CanCollide = false
obj69.Transparency = 1
obj69.TopSurface = Enum.SurfaceType.Smooth
obj69.BottomSurface = Enum.SurfaceType.Smooth
obj69.Material = Enum.Material.SmoothPlastic
obj69.Size = Vector3.new(1.04999995, 1.04999995, 1.04999995)
obj69.BrickColor = BrickColor.new("Pastel brown")
obj69.Friction = 0.30000001192093
obj69.Shape = Enum.PartType.Ball
obj69.Name = "stretchlol"
obj69.Parent = obj41

-- 70 - stretchlol
local obj70 = Instance.new("Part")
obj70.CFrame = CFrame.new(Vector3.new(67.4108353, 3.29388237, 6.88037777)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj70.CanCollide = false
obj70.Transparency = 1
obj70.TopSurface = Enum.SurfaceType.Smooth
obj70.BottomSurface = Enum.SurfaceType.Smooth
obj70.Material = Enum.Material.SmoothPlastic
obj70.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj70.BrickColor = BrickColor.new("Pastel brown")
obj70.Friction = 0.30000001192093
obj70.Shape = Enum.PartType.Ball
obj70.Name = "stretchlol"
obj70.Parent = obj41

-- 71 - stretchlol
local obj71 = Instance.new("Part")
obj71.CFrame = CFrame.new(Vector3.new(67.1960983, 3.65356374, 6.79175806)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj71.CanCollide = false
obj71.Transparency = 1
obj71.TopSurface = Enum.SurfaceType.Smooth
obj71.BottomSurface = Enum.SurfaceType.Smooth
obj71.Material = Enum.Material.SmoothPlastic
obj71.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj71.BrickColor = BrickColor.new("Pastel brown")
obj71.Friction = 0.30000001192093
obj71.Shape = Enum.PartType.Ball
obj71.Name = "stretchlol"
obj71.Parent = obj41

-- 72 - stretchlol
local obj72 = Instance.new("Part")
obj72.CFrame = CFrame.new(Vector3.new(66.944519, 3.22988653, 7.64748716)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj72.CanCollide = false
obj72.Transparency = 1
obj72.TopSurface = Enum.SurfaceType.Smooth
obj72.BottomSurface = Enum.SurfaceType.Smooth
obj72.Material = Enum.Material.SmoothPlastic
obj72.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj72.BrickColor = BrickColor.new("Pastel brown")
obj72.Friction = 0.30000001192093
obj72.Shape = Enum.PartType.Ball
obj72.Name = "stretchlol"
obj72.Parent = obj41

-- 73 - stretchlol
local obj73 = Instance.new("Part")
obj73.CFrame = CFrame.new(Vector3.new(66.851532, 3.04020095, 7.04717398)) * CFrame.Angles(-3.058357000351, 0.5446692109108, 2.5818355083466)
obj73.CanCollide = false
obj73.Transparency = 1
obj73.TopSurface = Enum.SurfaceType.Smooth
obj73.BottomSurface = Enum.SurfaceType.Smooth
obj73.Material = Enum.Material.SmoothPlastic
obj73.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj73.BrickColor = BrickColor.new("Pastel brown")
obj73.Friction = 0.30000001192093
obj73.Shape = Enum.PartType.Ball
obj73.Name = "stretchlol"
obj73.Parent = obj41

-- 74 - stretchlol
local obj74 = Instance.new("Part")
obj74.CFrame = CFrame.new(Vector3.new(66.5551376, 3.48395109, 7.33871603)) * CFrame.Angles(-2.4803557395935, 1.123170375824, 2.1302044391632)
obj74.CanCollide = false
obj74.Transparency = 1
obj74.TopSurface = Enum.SurfaceType.Smooth
obj74.BottomSurface = Enum.SurfaceType.Smooth
obj74.Material = Enum.Material.SmoothPlastic
obj74.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj74.BrickColor = BrickColor.new("Pastel brown")
obj74.Friction = 0.30000001192093
obj74.Shape = Enum.PartType.Ball
obj74.Name = "stretchlol"
obj74.Parent = obj41

-- 75 - stretchlol
local obj75 = Instance.new("Part")
obj75.CFrame = CFrame.new(Vector3.new(66.8069, 3.60357046, 7.60786104)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj75.CanCollide = false
obj75.Transparency = 1
obj75.TopSurface = Enum.SurfaceType.Smooth
obj75.BottomSurface = Enum.SurfaceType.Smooth
obj75.Material = Enum.Material.SmoothPlastic
obj75.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj75.BrickColor = BrickColor.new("Pastel brown")
obj75.Friction = 0.30000001192093
obj75.Shape = Enum.PartType.Ball
obj75.Name = "stretchlol"
obj75.Parent = obj41

-- 76 - stretchlol
local obj76 = Instance.new("Part")
obj76.CFrame = CFrame.new(Vector3.new(67.0182953, 3.88547921, 6.72704411)) * CFrame.Angles(-3.1415927410126, 0.34906616806984, 2.6179955005646)
obj76.CanCollide = false
obj76.Transparency = 1
obj76.TopSurface = Enum.SurfaceType.Smooth
obj76.BottomSurface = Enum.SurfaceType.Smooth
obj76.Material = Enum.Material.SmoothPlastic
obj76.Size = Vector3.new(0.300000012, 0.300000012, 0.300000012)
obj76.BrickColor = BrickColor.new("Pastel brown")
obj76.Friction = 0.30000001192093
obj76.Shape = Enum.PartType.Ball
obj76.Name = "stretchlol"
obj76.Parent = obj41
obj1.PrimaryPart = obj4

local stretches = obj41:GetChildren()
for i,v in pairs(stretches) do
	v.Anchored = true
	v.Parent = obj1
end
for i,v in pairs(obj2:GetChildren()) do
	v.Anchored = true
	v.Parent = obj1
end
obj2:Destroy()
obj41:Destroy()

local previous = nil
for i,v in pairs(obj1:GetChildren()) do
	if v:IsA('BasePart') then
		if previous then
			local weld = Instance.new('Weld',v)
			weld.Part0 = v
			weld.Part1 = previous
			weld.C0 = v.CFrame:inverse() * previous.CFrame
			previous.Anchored = false
			previous.CanCollide = false
			local vee = v
			weld.AncestryChanged:connect(function(mez,par)
				wait()
				weld.Parent = vee
			end)
		end
		previous = v
	end
end
previous.Anchored = false
previous.CanCollide = false
obj1:SetPrimaryPartCFrame(handle.CFrame*CFrame.Angles(0,math.rad(180),0)+Vector3.new(0,100,0))
-- 2 - Part
local ree = Instance.new("Part")
ree.CFrame = CFrame.new(Vector3.new(50.5, 141, 5.5))
ree.Transparency = 0.80000001192093
ree.Material = Enum.Material.Neon
ree.CFrame = CFrame.new(obj4.Position)
ree.Size = Vector3.new(5, math.huge, 5)
ree.BrickColor = BrickColor.new("New Yeller")
ree.Friction = 0.30000001192093
ree.Shape = Enum.PartType.Block
ree.Parent = handle

-- 3 - Mesh
local ree2 = Instance.new("CylinderMesh")
ree2.Parent = ree
local thing = Instance.new('BodyPosition',obj9)
local thing2 = Instance.new('BodyPosition',ree)
thing2.P = 100000
thing2.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
thing.MaxForce = Vector3.new(10000,10000,10000)
	for i=1,100 do
		thing2.Position = obj4.Position
		obj1:SetPrimaryPartCFrame(CFrame.new(obj1.PrimaryPart.Position)*CFrame.Angles(math.rad(handle.Orientation.X),math.rad(handle.Orientation.Y),math.rad(handle.Orientation.Z))*CFrame.Angles(0,math.rad(180),0))
		thing.Position = handle.Position+(handle.CFrame.rightVector*0.5)
		wait()
	end
	thing:Destroy()
	local lmfao = Instance.new('Weld',obj4)
	lmfao.C0 = CFrame.new(2.5,0.2,0)*CFrame.Angles(0,math.rad(180),0)
	lmfao.Part0 = obj4
	lmfao.Part1 = handle
ree:Destroy()
	working = false
end

function katanamode()
	blademode = "katana"
	-- 1 - weeb shit
	local weebshit1 = handle
	
	-- 16 - top cap
	local weebshit16 = Instance.new("Part")
	weebshit16.CFrame = CFrame.new(Vector3.new(206.400146, 11.5499945, 5.00058556)) * CFrame.Angles(-3.1415927410126, 0, 1.5707963705063)
	weebshit16.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.Size = Vector3.new(0.1, 0.05,0.05) --0.65, 0.65
	weebshit16.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit16.Anchored = false
	weebshit16.BrickColor = BrickColor.new("Really black")
	weebshit16.Friction = 0.30000001192093
	weebshit16.Shape = Enum.PartType.Cylinder
	weebshit16.Name = "top cap"
	weebshit16.Parent = weebshit1
	local weld = Instance.new('Weld',weebshit16)
	weld.Part0 = weebshit16
	weld.Part1 = handle
	weld.C1 = CFrame.new(0.6, 0, 0, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048)
	--weld,part,endsize,endpos,amntime
	grow(weld,weebshit16,Vector3.new(0.1,0.65,0.65),CFrame.new(0.6, 0, 0, 1.00000048, 0, 0, 0, 1, 0, 0, 0, 1.00000048),0.1)
	
	-- 8 - blade
	local weebshit8 = Instance.new("Part")
	weebshit8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.Material = Enum.Material.Metal
	weebshit8.Size = Vector3.new(0.23,0.05, 0.1)
	weebshit8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit8.Anchored = false
	weebshit8.BrickColor = BrickColor.new("Dark stone grey")
	weebshit8.Friction = 0.30000001192093
	weebshit8.Shape = Enum.PartType.Block
	weebshit8.Name = "blade"
	weebshit8.Parent = weebshit1
	weebshit8:BreakJoints()
	local bld1 = weebshit8
	local weld2 = Instance.new('Weld',weebshit8)
	weld2.Part0 = weebshit8
	weld2.Part1 = handle
	weld2.C1 = CFrame.new(0.75, 0, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-90))
	local coru=coroutine.wrap(function()
	grow(weld2,weebshit8,Vector3.new(0.23,1.17,0.1),CFrame.new(1.25, 0, 0) * CFrame.Angles(math.rad(180), 0, math.rad(-90)),0.05)
	end)
	coru()
	
	-- 9 - blade
	local weebshit9 = Instance.new("Part")
	weebshit9.CFrame = CFrame.new(Vector3.new(206.475388, 13.3372736, 5.00158167)) * CFrame.Angles(-0, 0, 0.052359949797392)
	weebshit9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.Material = Enum.Material.Metal
	weebshit9.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit9.Anchored = false
	weebshit9.BrickColor = BrickColor.new("Pearl")
	weebshit9.Friction = 0.30000001192093
	weebshit9.Shape = Enum.PartType.Block
	weebshit9.Name = "blade"
	weebshit9.Parent = weebshit8
	local bld2 = weebshit9
	local weld3 = Instance.new('Weld',weebshit9)
	weld3.Part0 = weebshit9
	weld3.Part1 = weebshit8
	weld3.C1 = CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld3,weebshit9,Vector3.new(0.100000009, 1.17, 0.0500000007),CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.05)
	-- 10 - blade
	local weebshit10 = Instance.new("Part")
	weebshit10.CFrame = CFrame.new(Vector3.new(206.26973, 14.458313, 5)) * CFrame.Angles(-0, 0, 0.10472027212381)
	weebshit10.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.Material = Enum.Material.Metal
	weebshit10.Size = Vector3.new(0.229999945, 0.05, 0.100000009)
	weebshit10.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit10.Anchored = false
	weebshit10.BrickColor = BrickColor.new("Dark stone grey")
	weebshit10.Friction = 0.30000001192093
	weebshit10.Shape = Enum.PartType.Block
	weebshit10.Name = "blade"
	weebshit10.Parent = weebshit1
	local weld4 = Instance.new('Weld',weebshit10)
	weld4.Part0 = weebshit10
	weld4.Part1 = weebshit8
	weld4.C1 = CFrame.new(-0.01, 0.55, -1.14440918e-05, 0.998631477, 0.0523363762, -1.25522347e-05, 0.0523363687, -0.998631358, -8.97663813e-06, -1.3056685e-05, 8.01841452e-06, -1.00000095)
	local coru=coroutine.wrap(function()
	grow(weld4,weebshit10,Vector3.new(0.23,1.17,0.1),CFrame.new(-0.0285797119, 1.14634609, -1.14440918e-05, 0.998631477, 0.0523363762, -1.25522347e-05, 0.0523363687, -0.998631358, -8.97663813e-06, -1.3056685e-05, 8.01841452e-06, -1.00000095),0.1)
	end)
	coru()
	-- 11 - blade
	local weebshit11 = Instance.new("Part")
	weebshit11.CFrame = CFrame.new(Vector3.new(206.384079, 14.4703341, 5.00158167)) * CFrame.Angles(-0, 0, 0.10472027212381)
	weebshit11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.Material = Enum.Material.Metal
	weebshit11.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit11.Anchored = false
	weebshit11.BrickColor = BrickColor.new("Pearl")
	weebshit11.Friction = 0.30000001192093
	weebshit11.Shape = Enum.PartType.Block
	weebshit11.Name = "blade"
	weebshit11.Parent = weebshit1
	local weld5 = Instance.new('Weld',weebshit10)
	weld5.Part0 = weebshit10
	weld5.Part1 = weebshit11
	weld5.C1 = CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld5,weebshit11,Vector3.new(0.100000009, 1.16999841, 0.0500000007),CFrame.new(-0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.1)
	
	-- 15 - blade
	local weebshit15 = Instance.new("Part")
	weebshit15.CFrame = CFrame.new(Vector3.new(206.36055, 13.3312511, 5)) * CFrame.Angles(-0, 0, 0.052359949797392)
	weebshit15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.Material = Enum.Material.Metal
	weebshit15.Size = Vector3.new(0.229999945, 0.55, 0.100000009)
	weebshit15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit15.Anchored = false
	weebshit15.BrickColor = BrickColor.new("Dark stone grey")
	weebshit15.Friction = 0.30000001192093
	weebshit15.Shape = Enum.PartType.Block
	weebshit15.Name = "blade"
	weebshit15.Parent = weebshit1
	local weld6 = Instance.new('Weld',weebshit15)
	weld6.Part0 = weebshit15
	weld6.Part1 = weebshit10
	weld6.C1 = CFrame.new(-0.01, -0.55, 0, 0.99863112, -0.0523363762, 5.34574838e-07, -0.0523363203, -0.998631358, 9.75034527e-06, 9.04611142e-08, -1.00508332e-05, -1.0000006)
	local coru=coroutine.wrap(function()
	grow(weld6,weebshit15,Vector3.new(0.229999945, 1.17000151, 0.100000009),CFrame.new(-0.0274810791, -1.13038063, 0, 0.99863112, -0.0523363762, 5.34574838e-07, -0.0523363203, -0.998631358, 9.75034527e-06, 9.04611142e-08, -1.00508332e-05, -1.0000006),0.1)
	end)
	coru()
	
	-- 12 - blade
	local weebshit12 = Instance.new("Part")
	weebshit12.CFrame = CFrame.new(Vector3.new(206.50705, 12.1849957, 5.00158167)) * CFrame.Angles(-0, 0, -0)
	weebshit12.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.Material = Enum.Material.Metal
	weebshit12.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit12.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit12.Anchored = false
	weebshit12.BrickColor = BrickColor.new("Pearl")
	weebshit12.Friction = 0.30000001192093
	weebshit12.Shape = Enum.PartType.Block
	weebshit12.Name = "blade"
	weebshit12.Parent = weebshit1
	local weld7 = Instance.new('Weld',weebshit12)
	weld7.Part0 = weebshit12
	weld7.Part1 = weebshit15
	weld7.C1 = CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld7,weebshit12,Vector3.new(0.100000009, 1.16999841, 0.0500000007),CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.1)
	
	-- 14 - blade
	local weebshit14 = Instance.new("Part")
	weebshit14.CFrame = CFrame.new(Vector3.new(206.155365, 15.3628922, 5)) * CFrame.Angles(-0, 0, 0.15708021819592)
	weebshit14.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.Material = Enum.Material.Metal
	weebshit14.Size = Vector3.new(0.229999945, 0.05, 0.100000009)
	weebshit14.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit14.Anchored = false
	weebshit14.BrickColor = BrickColor.new("Dark stone grey")
	weebshit14.Friction = 0.30000001192093
	weebshit14.Shape = Enum.PartType.Block
	weebshit14.Name = "blade"
	weebshit14.Parent = weebshit1
	local weld8 = Instance.new('Weld',weebshit14)
	weld8.Part0 = weebshit14
	weld8.Part1 = weebshit15
	weld8.C1 = CFrame.new(-0.01, 0.45, -1.43051147e-06, 0.99862963, 0.0522801876, -1.10407145e-05, 0.0522794127, 0.998632491, -1.50609173e-06, 8.47656065e-06, 1.7598054e-06, 1)
	local coru=coroutine.wrap(function()
		grow(weld8,weebshit14,Vector3.new(0.229999945, 0.700001657, 0.100000009),CFrame.new(-0.0191650391, 0.911635399, -1.43051147e-06, 0.99862963, 0.0522801876, -1.10407145e-05, 0.0522794127, 0.998632491, -1.50609173e-06, 8.47656065e-06, 1.7598054e-06, 1),0.1)
	end)
	coru()
	
	-- 13 - blade
	local weebshit13 = Instance.new("Part")
	weebshit13.CFrame = CFrame.new(Vector3.new(206.268967, 15.3808832, 5.00158167)) * CFrame.Angles(-0, 0, 0.15708021819592)
	weebshit13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.Material = Enum.Material.Metal
	weebshit13.Size = Vector3.new(0.100000009, 0.05, 0.0500000007)
	weebshit13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit13.Anchored = false
	weebshit13.BrickColor = BrickColor.new("Pearl")
	weebshit13.Friction = 0.30000001192093
	weebshit13.Shape = Enum.PartType.Block
	weebshit13.Name = "blade"
	weebshit13.Parent = weebshit1
	local weld9 = Instance.new('Weld',weebshit13)
	weld9.Part0 = weebshit13
	weld9.Part1 = weebshit14
	weld9.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
	grow(weld9,weebshit13,Vector3.new(0.100000009, 0.699998796, 0.0500000007),CFrame.new(0.11, 0, 0) * CFrame.Angles(0, 0, 0),0.1)
	
	-- 18 - blade
	local weebshit18 = Instance.new("WedgePart")
	weebshit18.CFrame = CFrame.new(Vector3.new(206.077118, 15.85674, 5)) * CFrame.Angles(1.5707963705063, -1.4137160778046, 1.5707963705063)
	weebshit18.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.Material = Enum.Material.Metal
	weebshit18.Size = Vector3.new(0.100000009, 0.05, 0.230000108)
	weebshit18.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit18.Anchored = false
	weebshit18.BrickColor = BrickColor.new("Dark stone grey")
	weebshit18.Friction = 0.30000001192093
	weebshit18.Name = "blade"
	weebshit18.Parent = weebshit1
	local weld10 = Instance.new('Weld',weebshit18)
	weld10.Part0 = weebshit18
	weld10.Part1 = weebshit14
	weld10.C1 = CFrame.new(-0.015, 0.299937057, 2.86102295e-06)*CFrame.Angles(0,math.rad(-90),0)
	local coru=coroutine.wrap(function()
		grow(weld10,weebshit18,Vector3.new(0.1, 0.3, 0.23),CFrame.new(0, 0.499937057, 2.86102295e-06)*CFrame.Angles(0,math.rad(-90),0),0.1)
	end)
	coru()
	
	-- 19 - blade
	local weebshit19 = Instance.new("WedgePart")
	weebshit19.CFrame = CFrame.new(Vector3.new(206.096375, 15.8952179, 5.00177383)) * CFrame.Angles(1.5707963705063, -1.4137160778046, 1.5707963705063)
	weebshit19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.Material = Enum.Material.Metal
	weebshit19.Size = Vector3.new(0.0500000007, 0.05, 0.280000091)
	weebshit19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
	weebshit19.Anchored = false
	weebshit19.BrickColor = BrickColor.new("Pearl")
	weebshit19.Friction = 0.30000001192093
	weebshit19.Name = "blade"
	weebshit19.Parent = weebshit1
	local weld11 = Instance.new('Weld',weebshit19)
	weld11.Part0 = weebshit19
	weld11.Part1 = weebshit18
	weld11.C1 = CFrame.new(0, 0, -0.029) * CFrame.Angles(0, 0, 0)
	local coru=coroutine.wrap(function()
		grow(weld11,weebshit19,Vector3.new(0.05, 0.37, 0.28),CFrame.new(0, 0.011, -0.029) * CFrame.Angles(0, 0, 0),0.1)
	end)
	coru()
end

function gunmode()
	working = true
	
	working = false
end

function knifemode()
blademode = "knife"
-- 6 - thicc cap
local obj6 = Instance.new("Part")
obj6.CFrame = CFrame.new(Vector3.new(202.399948, 10.5999813, 5.00099993)) * CFrame.Angles(-0, 0, 3.5017728805542e-07)
obj6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Size = Vector3.new(0.3, 0.3, 0.3)
obj6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj6.Anchored = false
obj6.BrickColor = BrickColor.new("Really black")
obj6.Friction = 0.30000001192093
obj6.Shape = Enum.PartType.Ball
obj6.Name = "thicc cap"
obj6.Parent = handle
local weld2 = Instance.new('Weld',obj6)
weld2.Part0 = obj6
weld2.Part1 = handle
weld2.C0 = CFrame.new(0.4, 0, 0)
grow(weld2,obj6,Vector3.new(0.3, 0.3, 0.3),CFrame.new(-0.15, 0, 0),0.1)

-- 8 - thicc top cap
local obj8 = Instance.new("Part")
obj8.CFrame = CFrame.new(Vector3.new(202.399963, 11.3000078, 5.00099993)) * CFrame.Angles(-0, 0, 3.5017728805542e-07)
obj8.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Size = Vector3.new(0.3, 0.3, 0.3)
obj8.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj8.Anchored = false
obj8.BrickColor = BrickColor.new("Really black")
obj8.Friction = 0.30000001192093
obj8.Shape = Enum.PartType.Ball
obj8.Name = "thicc top cap"
obj8.Parent = handle
local weld1 = Instance.new('Weld',obj8)
weld1.Part0 = obj8
weld1.Part1 = handle
weld1.C0 = CFrame.new(-0.4, 0, 0)
grow(weld1,obj8,Vector3.new(0.3, 0.3, 0.3),CFrame.new(0.15, 0, 0),0.1)
-- 4 - thicc blade
local obj4 = Instance.new("Part")
obj4.CFrame = CFrame.new(Vector3.new(202.40007, 12.1600046, 5.00099707)) * CFrame.Angles(-0, 0, -0)
obj4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Material = Enum.Material.Metal
obj4.Size = Vector3.new(0.23, 0.1, 0.1)
obj4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj4.Anchored = false 
obj4.BrickColor = BrickColor.new("Dark stone grey")
obj4.Friction = 0.30000001192093
obj4.Shape = Enum.PartType.Block
obj4.Name = "blade"
obj4.Parent = handle
local weld4 = Instance.new('Weld',obj4)
weld4.Part0 = obj4
weld4.Part1 = handle
weld4.C0 = CFrame.new(0, -0.535, 0)*CFrame.Angles(0,0,math.rad(90))
local coru=coroutine.wrap(function()
grow(weld4,obj4,Vector3.new(0.23, 1.19, 0.1),CFrame.new(0.5, 0, 0),0.1)
end)
coru()

-- 5 - thicc blade
local obj5 = Instance.new("Part")
obj5.CFrame = CFrame.new(Vector3.new(202.507141, 12.1749954, 5.00158167)) * CFrame.Angles(-0, 0, -0)
obj5.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Material = Enum.Material.Metal
obj5.Size = Vector3.new(0.100000009, 0.1, 0.0500000007)
obj5.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj5.Anchored = false
obj5.BrickColor = BrickColor.new("Pearl")
obj5.Friction = 0.30000001192093
obj5.Shape = Enum.PartType.Block
obj5.Name = "blade"
obj5.Parent = handle
local weld5 = Instance.new('Weld',obj5)
weld5.Part0 = obj5
weld5.Part1 = obj4
weld5.C0 = CFrame.new(0.09, 0, 0)*CFrame.Angles(0,0,0)
grow(weld5,obj5,Vector3.new(0.1, 1.19, 0.05),CFrame.new(0, 0, 0),0.1)

-- 3 - thicc blade
local obj3 = Instance.new("WedgePart")
obj3.CFrame = CFrame.new(Vector3.new(202.40007, 12.9000006, 5.00099707)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj3.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Material = Enum.Material.Metal
obj3.Size = Vector3.new(0.1, 0, 0.23)
obj3.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj3.Anchored = false
obj3.BrickColor = BrickColor.new("Dark stone grey")
obj3.Friction = 0.30000001192093
obj3.Name = "blade"
obj3.Parent = handle
local weld6 = Instance.new('Weld',obj3)
weld6.Part0 = obj3
weld6.Part1 = obj4
weld6.C0 = CFrame.new(0, -0.595, 0)*CFrame.Angles(math.rad(0),math.rad(270),math.rad(0))
local coru=coroutine.wrap(function()
grow(weld6,obj3,Vector3.new(0.1, 0.3, 0.23),CFrame.new(0, 0.15, 0),0.05)
end)
coru()

-- 2 - thicc blade
local obj2 = Instance.new("WedgePart")
obj2.CFrame = CFrame.new(Vector3.new(202.423431, 12.9305696, 5.00099707)) * CFrame.Angles(-0, -1.5707963705063, 0)
obj2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Material = Enum.Material.Metal
obj2.Size = Vector3.new(0.05, 0, 0.26)
obj2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
obj2.Anchored = false
obj2.BrickColor = BrickColor.new("Lily white")
obj2.Friction = 0.30000001192093
obj2.Name = "blade"
obj2.Parent = handle
local weld7 = Instance.new('Weld',obj2)
weld7.Part0 = obj2
weld7.Part1 = obj4
weld7.C0 = CFrame.new(0, -0.595, 0)*CFrame.Angles(math.rad(0),math.rad(270),math.rad(0))
grow(weld7,obj2,Vector3.new(0.05, 0.33, 0.24),CFrame.new(-0.02, 0.165, 0),0.05)
end

function raep()
	working = true
	pcall(function()
		local holyshit = Instance.new("Sound", handle)
		holyshit.SoundId = "rbxassetid://345287845"
		holyshit.Volume = 5
		holyshit:Play()
		holyshit.TimePosition = 0.6
		--[[local waitwhatthefuck = Instance.new("Sound", handle)
		waitwhatthefuck.SoundId = "rbxassetid://864314263"
		waitwhatthefuck:Play()]]--
		local coru=coroutine.wrap(function()
			wait(1.95)
			holyshit.TimePosition = 2.8
		end)
		coru()
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local rweld = Instance.new("Weld", char["Right Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		local lweld = Instance.new("Weld", char["Left Arm"])
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		
		char.Humanoid.WalkSpeed = 16
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(50)),0.2)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, -0.25, 0) * CFrame.Angles(math.rad(-15), math.rad(-45), math.rad(0)),0.2)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, -0.35) * CFrame.Angles(math.rad(20), math.rad(0), math.rad(-20)),0.2)
		
		local particl = Instance.new("ParticleEmitter")
		particl.LightEmission = 3
		particl.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(42, 0, 255)), ColorSequenceKeypoint.new(0.25, Color3.fromRGB(248, 153, 0)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 0))})
		particl.LightInfluence = 0.75
		particl.Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(1, 0)})
		particl.Lifetime = NumberRange.new(0.1, 0.5)
		particl.Rate = 50
		particl.RotSpeed = NumberRange.new(300, 300)
		particl.Speed = NumberRange.new(0, 1)
		particl.SpreadAngle = Vector2.new(90, 90)
		particl.Parent = handle
		
		for i, v in pairs(handle["pink toy"]:GetChildren()) do
			if v:IsA("Part") then
				cooldildo = particl:Clone()
				cooldildo.Parent = v
			end
		end
		
		particl:Remove()
		
		wait(1)
		MOAN = true
		
		char.Humanoid.WalkSpeed = 75
		
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.6, 0.5, -0.75) * CFrame.Angles(0, math.rad(55), math.rad(90)),0.06)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(30), math.rad(0)),0.06)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(270),math.rad(-90),math.rad(180)), 0.06)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)),0.06)
		local omgg = 0
		repeat wait(0.05) omgg = omgg+0.05 until aidsificating ~= nil or omgg > 2
		holyshit:Destroy()
		char.Humanoid.WalkSpeed = 16
		MOAN = false
		if aidsificating == nil then
			for i, v in pairs(handle["pink toy"]:GetChildren()) do
								if v:IsA("Part") then
									v:FindFirstChild("ParticleEmitter"):Destroy()
								end
							end
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.08)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		else
			pcall(function()
				aidsificating.HumanoidRootPart:Destroy()
			end)
			pcall(function()
				ragdollpart(aidsificating,"Right Arm")
				ragdollpart(aidsificating,"Right Leg")
				ragdollpart(aidsificating,"Left Arm")
				ragdollpart(aidsificating,"Left Leg")
			end)
			pcall(function()
				ragdollpart(aidsificating,"RightUpperArm")
				ragdollpart(aidsificating,"RightUpperLeg")
				ragdollpart(aidsificating,"LeftUpperArm")
				ragdollpart(aidsificating,"LeftUpperLeg")
			end)
			pcall(function()
				local weld = Instance.new('Weld',aidsificating.Torso)
				weld.Part0 = aidsificating.Torso
				weld.Part1 = handle
				weld.C0 = CFrame.new(0.2,-2.5,2)*CFrame.Angles(math.rad(135),0,math.rad(-90))
				for i,v in pairs(handle["pink toy"]:GetChildren()) do
					if v:IsA('BasePart') and v.Name == "stretchlol" then
						v.BrickColor = aidsificating.Torso.BrickColor
						v.Transparency = 0
					end
				end
			end)
			pcall(function()
				local weld = Instance.new('Weld',aidsificating.UpperTorso)
				weld.Part0 = aidsificating.UpperTorso
				weld.Part1 = handle
				weld.C0 = CFrame.new(0.2,-2.5,2)*CFrame.Angles(math.rad(135),0,math.rad(-90))
				for i,v in pairs(handle["pink toy"]:GetChildren()) do
					if v:IsA('BasePart') and v.Name == "stretchlol" then
						v.BrickColor = aidsificating.UpperTorso.BrickColor
						v.Transparency = 0
					end
				end
			end)
			lerp(rweld,rweld.C0,CFrame.new(1.6, 1, -0.5) * CFrame.Angles(0, math.rad(55), math.rad(145)),0.06)
			wait(2)
			for i,v in pairs(aidsificating:GetDescendants()) do
				if v:IsA('Weld') then v:Destroy() end
			end
			pcall(function()
				ragdollpart(aidsificating,"Head")
			end)
			pcall(function()
									local thang = "Torso"
									if aidsificating:FindFirstChild('UpperTorso') then
										thang = "UpperTorso"
									end
									local ayybleed = Instance.new('Part',aidsificating)
									ayybleed.Size = Vector3.new(0.2,0.2,0.2)
									ayybleed.BrickColor = BrickColor.new('Maroon')
									ayybleed.Material = Enum.Material.SmoothPlastic
									ayybleed.Name = "ayybleed"
									ayybleed.CanCollide = false
									ayybleed.Transparency = 1
									ayybleed.CFrame = aidsificating[thang].CFrame
									ayybleed:BreakJoints()
									local attachment1 = Instance.new('Attachment',ayybleed)
									attachment1.Position = Vector3.new(0,-1,0)
									attachment1.Orientation = Vector3.new(180, 0, 0)
									local attachment0 = Instance.new('Attachment',aidsificating[thang])
									if attachment0 and attachment1 then
										local constraint = Instance.new("HingeConstraint")
										constraint.Attachment0 = attachment0
										constraint.Attachment1 = attachment1
										constraint.LimitsEnabled = true
										constraint.UpperAngle = 0
										constraint.LowerAngle = 0
										constraint.Parent = aidsificating
									end
									local bleedBLEED= coroutine.wrap(function()
										bleed(ayybleed,true)
									end)
									bleedBLEED()
								end)
			aidsificating = nil
			pcall(function()
				for i,v in pairs(handle["pink toy"]:GetChildren()) do
					if v:IsA('BasePart') and v.Name == "stretchlol" then
						v.Transparency = 1
					end
				end
			end)
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.6, -0.25, 0.75) * CFrame.Angles(0, math.rad(55), math.rad(145)),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),0.04)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0, 0.35) * CFrame.Angles(math.rad(-20), math.rad(0), math.rad(-20)),0.04)
		wait(0.1)
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.6, -0.5, 1) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0), math.rad(-30), math.rad(0)),0.08)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.08)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		end
	end)
	working = false
end

function katanaQ()
	working = true
	swinging = true
	gettingeem = true
	pcall(function()
	local rweld = Instance.new("Weld", char["Right Arm"])
	local tweld = Instance.new("Weld", char.HumanoidRootPart)
	pcall(function()
	rweld.Part0 = char["Torso"]
	rweld.Part1 = char["Right Arm"]
	rweld.C0 = CFrame.new(1.5, 0, 0)
	tweld.Part0 = char.HumanoidRootPart
	tweld.Part1 = char.Torso
	end)
	
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 100
	
	local at1 = Instance.new("Attachment", handle)
	local at2 = Instance.new("Attachment", handle)
	at1.Visible = false
	at1.Position = Vector3.new(5, 0, 0)
	at2.Visible = false
	at2.Position = Vector3.new(1, 0, 0)
	
	local trail = Instance.new("Trail", handle)
	trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
	trail.LightEmission = 0.25
	trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 1)})
	trail.Lifetime = 0.10
	trail.MinLength = 0.05
	trail.Attachment0 = at1
	trail.Attachment1 = at2
	local coru=coroutine.wrap(function()
	lerp(rweld,rweld.C0,CFrame.new(1.35, 0.5, -1.2) * CFrame.Angles(0, math.rad(90), math.rad(90)),0.08)
	end)
	coru()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(270),math.rad(-90),math.rad(180)), 0.08)
	local ree=0
	while goteem == nil and ree < 1 do
		wait(0.05)
		ree=ree+0.05
	end
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
	gettingeem = false
	swinging = false
	if goteem then
		wait(2)
		pcall(function()
		local sounn = Instance.new("Sound", goteem.Torso)
		local lipp = math.random(1, 3)
		if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
		if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
		if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
		sounn:Play()
		end)
		ragdollpart(goteem,"Head")
		for i,v in pairs(goteem:GetDescendants()) do
			if v:IsA('Weld') then v:Destroy() end
		end
		goteem = nil
	end
	trail:Destroy()
	at1:Destroy()
	at2:Destroy()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.05)
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
	rweld:Destroy()
	tweld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
		local clone = torsoclone:Clone()
		clone.Part0 = char.HumanoidRootPart
		clone.Part1 = char.Torso
		clone.Parent = char.HumanoidRootPart
	end
	end)
	swinging = false
	gettingeem = false
	working = false
end
local function katanaE()
	working = true
	swinging = true
	SLESH = true
	pcall(function()
	local rweld = Instance.new("Weld", char["Right Arm"])
	local tweld = Instance.new("Weld", char.HumanoidRootPart)
	rweld.Part0 = char["Torso"]
	rweld.Part1 = char["Right Arm"]
	rweld.C0 = CFrame.new(1.5, 0, 0)
	tweld.Part0 = char.HumanoidRootPart
	tweld.Part1 = char.Torso
	
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 100
	
	local at1 = Instance.new("Attachment", handle)
	local at2 = Instance.new("Attachment", handle)
	at1.Visible = false
	at1.Position = Vector3.new(5, 0, 0)
	at2.Visible = false
	at2.Position = Vector3.new(1, 0, 0)
	
	local trail = Instance.new("Trail", handle)
	trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
	trail.LightEmission = 0.25
	trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 1)})
	trail.Lifetime = 0.10
	trail.MinLength = 0.05
	trail.Attachment0 = at1
	trail.Attachment1 = at2
	local coru=coroutine.wrap(function()
	lerp(rweld,rweld.C0,CFrame.new(2, 1, 0) * CFrame.Angles(math.rad(0), 0, math.rad(60)),0.08)
	end)
	coru()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(270),math.rad(-270),math.rad(0)), 0.08)
	
	wait(1)
	char:FindFirstChildOfClass('Humanoid').WalkSpeed = 16
	trail:Destroy()
	at1:Destroy()
	at2:Destroy()
	lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.05)
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
	rweld:Destroy()
	tweld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
		local clone = torsoclone:Clone()
		clone.Part0 = char.HumanoidRootPart
		clone.Part1 = char.Torso
		clone.Parent = char.HumanoidRootPart
	end
	end)
	swinging = false
	SLESH = false
	working = false
end

function begoneTHOUGHT()
	working = true
	pcall(function()
		local thott = Instance.new("Sound", char)
		thott.SoundId = "rbxassetid://949916584"
		thott.Volume = 1
		thott.TimePosition = 0.5
		thott.PlaybackSpeed = 1
		thott.EmitterSize = player.CameraMaxZoomDistance+1
		thott.MaxDistance = player.CameraMaxZoomDistance+1
		thott:Play()
		
		local rweld = Instance.new("Weld", char["Right Arm"])
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(60), math.rad(0), math.rad(0)),0.25)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(-45),math.rad(0)), 0.25)
		
		wait(0.5)
		local thote = Instance.new("Sound", char.Head)
		thote.SoundId = "rbxassetid://358498516"
		thote.Volume = 1
		thote:Play()
		
				
		
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(90)),0.04)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0)), 0.04)
		wait(0.04)
		local ree = Instance.new('Part',workspace)
		ree.Shape = Enum.PartType.Cylinder
		ree.CanCollide = false
		ree.Anchored = false
		ree.Size = Vector3.new(0.5,2,2)
		ree.TopSurface = Enum.SurfaceType.Smooth
		ree.BottomSurface = Enum.SurfaceType.Smooth
		ree.Transparency = 0.8
		ree.Material =Enum.Material.Neon
		ree.BrickColor = BrickColor.new('Toothpaste')
		ree.CFrame = handle.CFrame*CFrame.Angles(0,0,math.rad(90))
		ree:BreakJoints()
		local reee = Instance.new("Sound", ree)
		reee.SoundId = "rbxassetid://138677306"
		reee:Play()
		local heck = Instance.new('BodyVelocity',ree)
		heck.Velocity = ree.CFrame.rightVector*50
		heck.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
		local coru=coroutine.wrap(function()
			for i=1,21 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,2,2)
				ree.CFrame = cf
				wait()
			end
			for i=1,4 do
				local cf = ree.CFrame
				ree.Size = ree.Size+Vector3.new(0,2,2)
				ree.CFrame = cf
				ree.Transparency = ree.Transparency + 0.05
				wait()
			end
			ree:Destroy()
		end)
		coru()
		ree.Touched:connect(function(hit)
			if hit.Parent and hit.Parent ~= char and hit.Parent:FindFirstChildOfClass('Humanoid') then
				hit.Parent:FindFirstChildOfClass('Humanoid').Health = 100
				ragdollpart(hit.Parent,"Head")
			end
		end)
		wait(0.5)
		local coru=coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.8)
		end)
		coru()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)), 0.8)
	
		rweld:Destroy()
		tweld:Destroy()
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
	end)
	working = false
end

function katanaswing()
	working = true
	pcall(function()
	local rweld = Instance.new("Weld", char["Right Arm"])
	local lweld = Instance.new("Weld", char["Left Arm"])
	local tweld = Instance.new("Weld", char.HumanoidRootPart)
	rweld.Part0 = char["Torso"]
	rweld.Part1 = char["Right Arm"]
	rweld.C0 = CFrame.new(1.5, 0, 0)
	lweld.Part0 = char.Torso
	lweld.Part1 = char["Left Arm"]
	lweld.C0 = CFrame.new(-1.5, 0, 0)
	tweld.Part0 = char.HumanoidRootPart
	tweld.Part1 = char.Torso
	
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(45), 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.35, 0.5, -1.2) * CFrame.Angles(0, math.rad(110), math.rad(90)),0.08)
	wait(0.2)
	local at1 = Instance.new("Attachment", handle)
	local at2 = Instance.new("Attachment", handle)
	at1.Visible = false
	at1.Position = Vector3.new(5, 0, 0)
	at2.Visible = false
	at2.Position = Vector3.new(1, 0, 0)
	
	local trail = Instance.new("Trail", handle)
	trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, trail.Parent.Color), ColorSequenceKeypoint.new(1, trail.Parent.Color)})
	trail.LightEmission = 0.25
	trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.9), NumberSequenceKeypoint.new(1, 1)})
	trail.Lifetime = 0.10
	trail.MinLength = 0.05
	trail.Attachment0 = at1
	trail.Attachment1 = at2
	
	swinging = true

	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-45), 0),0.04)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(90)),0.04)
	wait(0.2)
	swinging = false
	trail:Destroy()
	at1:Destroy()
	at2:Destroy()
	local cor = coroutine.wrap(function()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
	end)
	cor()
	lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
	rweld:Destroy()
	lweld:Destroy()
	tweld:Destroy()
	if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
		local clone = rightclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Right Arm"]
		clone.Parent = char.Torso
	end
	if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
		local clone = leftclone:Clone()
		clone.Part0 = char.Torso
		clone.Part1 = char["Left Arm"]
		clone.Parent = char.Torso
	end
	if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
		local clone = torsoclone:Clone()
		clone.Part0 = char.HumanoidRootPart
		clone.Part1 = char.Torso
		clone.Parent = char.HumanoidRootPart
	end
	end)
	working = false
end

function throw()
	working = true
	pcall(function()
		local rweld = char["Right Arm"]:FindFirstChild("Weld")
		local lweld = char["Left Arm"]:FindFirstChild("Weld")
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local throwsound = Instance.new("Sound", char.Head)
		throwsound.SoundId = "rbxassetid://711753382"
		throwsound.PlaybackSpeed = 0.75
		
		local cor = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-30), math.rad(15)),0.04)
		end)
		cor()
		cor2()
		grabweld:Remove()
		throwsound:Play()
		
		local throwvel = Instance.new("BodyThrust")
		throwvel.Force = Vector3.new(0, 3000, -2000)
		pcall(function()
			throwvel.Parent = grabbed.Torso
		end)
		pcall(function()
			throwvel.Parent = grabbed.UpperTorso
		end)

		lerp(lweld,lweld.C0,CFrame.new(-1.3, 0.7, -1) * CFrame.Angles(0, math.rad(-70), math.rad(-105)),0.04)
		wait(0.15)
		throwvel:Remove()
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		cor()
		cor2()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if torsoclone and char:FindFirstChild('Torso') and char:FindFirstChild('HumanoidRootPart') then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		local lolgrabbed = grabbed
		spawn(function()
			wait(2)
			unstun(lolgrabbed)
		end)
	end)
	grabbed = nil
	working = false
end

function whoosh(vroom)
	vroom.Parent = workspace
	vroom.Name = "Projectile"
	vroom.CFrame = CFrame.new(char.Head.CFrame.p,mouse.Hit.p)*CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
	vroom.Anchored = true
	vroom.Velocity = Vector3.new(0,0,0)
	vroom.RotVelocity = Vector3.new(0,0,0)
	vroom.Anchored = false
	game:GetService('Debris'):AddItem(vroom,10)
	local flyy = Instance.new('BodyVelocity',vroom)
	flyy.Velocity = vroom.CFrame.rightVector*200
	local touched = false
	for i,v in pairs(vroom:GetChildren()) do
		if v:IsA('BasePart') then
			v.Touched:connect(function(hit)
				local pos = vroom.CFrame
				if touched == false then
					if hit and hit.Parent and hit.Transparency ~= 1 and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent~= char then
						touched = true
						local before = hit.Anchored
						vroom.Anchored = true
						vroom.Velocity = Vector3.new(0,0,0)
						vroom.RotVelocity = Vector3.new(0,0,0)
						vroom.CFrame = vroom.CFrame-(vroom.CFrame.rightVector)
						hit.Anchored = true
						flyy:Destroy()
						pcall(function()
							local weld = Instance.new('Weld',hit)
							weld.Part0 = hit
							weld.Part1 = vroom
							weld.C0 = hit.CFrame:toObjectSpace(vroom.CFrame)
							local ayybleed = Instance.new('Part',hit)
							ayybleed.Size = Vector3.new(0.2,0.2,0.2)
							ayybleed.BrickColor = BrickColor.new('Maroon')
							ayybleed.Material = Enum.Material.SmoothPlastic
							ayybleed.Name = "ayybleed"
							ayybleed.CanCollide = false
							ayybleed.Transparency = 1
							ayybleed.CFrame = hit.CFrame
							ayybleed:BreakJoints()
							local attachment1 = Instance.new('Attachment',ayybleed)
							local attachment0 = Instance.new('Attachment',hit)
							for i,v in pairs(vroom:GetChildren()) do
								if v.Name == "blade" and v.Size == Vector3.new(0.23, 1.19, 0.1) then
									v.Name = "REEEE"
								end
							end
							attachment1.Orientation = vroom["REEEE"].Orientation+Vector3.new(90,0,0)
							attachment0.Position = hit.CFrame:toObjectSpace(vroom["REEEE"].CFrame).p-(hit.CFrame:toObjectSpace(vroom["REEEE"].CFrame).upVector)
							if attachment0 and attachment1 then
								local constraint = Instance.new("HingeConstraint")
								constraint.Attachment0 = attachment0
								constraint.Attachment1 = attachment1
								constraint.LimitsEnabled = true
								constraint.UpperAngle = 0
								constraint.LowerAngle = 0
								constraint.Parent = attachment0
							end
							local bleedBLEED= coroutine.wrap(function()
								bleed(ayybleed)
							end)
							bleedBLEED()
							if hit.Name ~= "Head" and hit.Name ~= "UpperTorso" and hit.Name ~= "Torso" and hit.Name ~= "LowerTorso" then
								game:GetService('Debris'):AddItem(ayybleed,7.5)
							end
						end)
						hit.Anchored = before
						vroom.Anchored = false
						vroom.CanCollide = true
						pcall(function()
							vroom:FindFirstChildOfClass('Trail'):Destroy()
						end)
						for i,v in pairs(vroom:GetChildren()) do
							if v:IsA('BasePart') then
								v.CanCollide = true
							end
						end
						if hit.Name == "Head" or hit.Name == "UpperTorso" or hit.Name == "Torso" or hit.Name == "LowerTorso" then
						pcall(function()
							hit.Parent.HumanoidRootPart:Destroy()
						end)
						pcall(function()
							ragdollpart(hit.Parent,"Left Arm")
							ragdollpart(hit.Parent,"Left Leg")
							ragdollpart(hit.Parent,"Right Arm")
							ragdollpart(hit.Parent,"Right Leg")
						end)
						pcall(function()
							ragdollpart(hit.Parent,"LeftUpperLeg")
							ragdollpart(hit.Parent,"RightUpperLeg")
							ragdollpart(hit.Parent,"LeftUpperArm")
							ragdollpart(hit.Parent,"RightUpperArm")
						end)
						spawn(function()
							wait(5)
							ragdollpart(hit.Parent,"Head")
						end)
						else
							pcall(function()
							ragdollpart(hit.Parent,hit.Name)
							end)
						end
					elseif hit and hit.CanCollide == true and hit.Parent and hit.Parent ~= char then
						touched = true
						local before = hit.Anchored
						vroom.Anchored = true
						vroom.Velocity = Vector3.new(0,0,0)
						vroom.RotVelocity = Vector3.new(0,0,0)
						hit.Anchored = true
						flyy:Destroy()
						vroom.CFrame = vroom.CFrame-vroom.CFrame.rightVector
						pcall(function()
							local weld = Instance.new('Weld',hit)
							weld.Part0 = hit
							weld.Part1 = vroom
							weld.C0 = hit.CFrame:toObjectSpace(vroom.CFrame)
						end)
						pcall(function()
						vroom:FindFirstChildOfClass('Trail'):Destroy()
						end)
						hit.Anchored = before
						vroom.Anchored = false
					end
				end
			end)
		end
	end
end

function fling()
	working = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(45)),0.07)
		end)
		cor()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, -0.5) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.07)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.75, 1, 0.25) * CFrame.Angles(math.rad(35), math.rad(0), math.rad(150)),0.07)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-45), math.rad(0)),0.07)
		end)
		local cor3 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -2.5, 0) * CFrame.Angles(math.rad(90),math.rad(90), 0),0.12)
		end)
		cor()
		cor2()
		cor3()
		lerp(lweld,lweld.C0,CFrame.new(-1.75, 0.5, -0.5) * CFrame.Angles(math.rad(90), math.rad(0), math.rad(-45)),0.07)
		wait(0.2)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 1, 0.25) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(170)),0.03)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.03)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1, 0, -0.45) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(45)),0.03)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0.5, -0.5) * CFrame.Angles(math.rad(0), math.rad(60), math.rad(90)),0.03)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(45), math.rad(0)),0.01)
		end)
		cor()
		cor2()
		whoosh(handle:Clone())
		for i, v in pairs(handle:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 1
			end
		end
		handle.Transparency = 1
		trail:Remove()
		at1:Remove()
		at2:Remove()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.01)
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(0.5, 0.4, -1) * CFrame.Angles(math.rad(0), math.rad(180), math.rad(75)),0.04)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(55), math.rad(0)),0.04)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(45), math.rad(0), math.rad(0)),0.04)
		wait(0.2)
		
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.07)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(math.rad(0), math.rad(0), math.rad(0)),0.07)
		
		for i, v in pairs(handle:GetChildren()) do
			if v:IsA("Part") then
				v.Transparency = 0
			end
		end
		handle.Transparency = 0
		hweld.C0 = CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
	end)
	working = false
end

function kill()
	working = true
	pcall(function()
		local rweld = char["Right Arm"]:FindFirstChild("Weld")
		local lweld = char["Left Arm"]:FindFirstChild("Weld")
		local tweld = Instance.new("Weld", char.HumanoidRootPart)
		tweld.Part0 = char.HumanoidRootPart
		tweld.Part1 = char.Torso
		local killsound = Instance.new("Sound", grabbed.Head)
		killsound.SoundId = "rbxassetid://150315649"
		killsound.PlaybackSpeed = 1.2
		local killsoundac = Instance.new("Sound", grabbed.Head)
		killsoundac.SoundId = "rbxassetid://162194585"
		killsoundac.PlaybackSpeed = 1
		killsoundac.Volume = 1
		local throwsound = Instance.new("Sound", char.Head)
		throwsound.SoundId = "rbxassetid://711753382"
		throwsound.PlaybackSpeed = 0.75
		local chokesound = Instance.new("Sound", grabbed.Head)
		chokesound.SoundId = "rbxassetid://418658161"
		chokesound.TimePosition = 3
		chokesound.PlaybackSpeed = 1
		local bleedsound = Instance.new("Sound", grabbed.Head)
		bleedsound.SoundId = "rbxassetid://244502094"
		bleedsound.PlaybackSpeed = 1.5
		bleedsound.Volume = 1
		
		pitchun = math.random(9, 12)/10
		pitchdos = math.random(9, 13)/10
		
		killsound.PlaybackSpeed = pitchun
		killsoundac.PlaybackSpeed = pitchdos
		chokesound.PlaybackSpeed = pitchun
		
		pcall(function()
			grabbed.HumanoidRootPart:Destroy()
		end)
		
		lerp(rweld,rweld.C0,CFrame.new(0.5, 0.7, -0.70) * CFrame.Angles(0, math.rad(100), math.rad(105)),0.1)
		wait(0.2)
		lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(90)),0.04)
		
		killsound:Play()
		killsoundac:Play()
		chokesound:Play()
		bleedsound:Play()
		
		local ayybleed = Instance.new('Part',grabbed)
		ayybleed.Size = Vector3.new(0.2,0.2,0.2)
		ayybleed.BrickColor = BrickColor.new('Maroon')
		ayybleed.Material = Enum.Material.SmoothPlastic
		ayybleed.Name = "ayybleed"
		ayybleed.CanCollide = false
		ayybleed.Transparency = 0.5
		ayybleed.CFrame = grabbed.Head.CFrame
		ayybleed:BreakJoints()
		local attachment1 = Instance.new('Attachment',ayybleed)
		attachment1.Position = Vector3.new(-0.55,0,0)
		attachment1.Orientation = Vector3.new(90, 0, -90)
		local attachment0 = Instance.new('Attachment')
		pcall(function()
			attachment0.Parent = grabbed.Torso
		end)
		pcall(function()
			attachment0.Parent = grabbed.UpperTorso
		end)
		if attachment0 and attachment1 then
			local constraint = Instance.new("HingeConstraint")
			constraint.Attachment0 = attachment0
			constraint.Attachment1 = attachment1
			constraint.LimitsEnabled = true
			constraint.UpperAngle = 0
			constraint.LowerAngle = 0
			pcall(function()
				constraint.Parent = grabbed.Torso
			end)
			pcall(function()
				constraint.Parent = grabbed.UpperTorso
			end)
		end
		local bleedBLEED= coroutine.wrap(function()
			bleed(ayybleed)
		end)
		bleedBLEED()
		
		wait(0.2)
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-40), math.rad(15)),0.08)
		lerp(rweld,rweld.C0,CFrame.new(1.5, 0.15, 0.4) * CFrame.Angles(0, math.rad(-30), math.rad(15)),0.1)
		local coru=coroutine.wrap(function()
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(-90), 0), 0.07)
		lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0), 0.09)
		end)
		coru()
		local cor = coroutine.wrap(function()
			lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(-30), 0),0.04)
		end)
		cor()
		grabweld:Remove()
		throwsound:Play()
		
		local throwvel = Instance.new("BodyThrust")
		throwvel.Force = Vector3.new(0, 3000, -1000)
		pcall(function()
			throwvel.Parent = grabbed.Torso
		end)
		pcall(function()
			throwvel.Parent = grabbed.UpperTorso
		end)
		
		trail:Remove()
		at1:Remove()
		at2:Remove()
		lerp(lweld,lweld.C0,CFrame.new(-1.3, 0.7, -1) * CFrame.Angles(0, math.rad(-70), math.rad(-105)),0.04)
		pcall(function()
			ragdollpart(grabbed,"Left Arm")
			ragdollpart(grabbed,"Left Leg")
			ragdollpart(grabbed,"Right Arm")
			ragdollpart(grabbed,"Right Leg")
		end)
		pcall(function()
			ragdollpart(grabbed,"LeftUpperLeg")
			ragdollpart(grabbed,"RightUpperLeg")
			ragdollpart(grabbed,"LeftUpperArm")
			ragdollpart(grabbed,"RightUpperArm")
		end)
		wait(0.15)
		throwvel:Remove()
		local cor = coroutine.wrap(function()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		end)
		cor()
		cor2()
		lerp(tweld,tweld.C0,CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),0.08)
		
		lweld:Remove()
		rweld:Remove()
		tweld:Remove()
		
		if torsoclone and char:FindFirstChild("Torso") and char:FindFirstChild("HumanoidRootPart") then
			local clone = torsoclone:Clone()
			clone.Part0 = char.HumanoidRootPart
			clone.Part1 = char.Torso
			clone.Parent = char.HumanoidRootPart
		end
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
		local coru2=coroutine.wrap(function()
			local whyy = grabbed
		local continue = true
		local repeats = 0
		while continue == true do
			local ree = pcall(function()
				if repeats < 20 then
					whyy:FindFirstChildOfClass('Humanoid').Health = whyy:FindFirstChildOfClass('Humanoid').Health-4.9
					repeats = repeats+1
					if whyy:FindFirstChildOfClass('Humanoid').Health <= 0 then
						continue = false
					end
				else
					continue = false
				end
			end)
			if ree == false then
				continue = false
			end
			if continue == true then
				wait(0.2)
			end
		end
		ragdollpart(whyy,"Head")
		end)
		coru2()
		throwsound:Remove()
		killsound:Remove()
	end)
	grabbed = nil
	working = false
end

function release()
	working = true
	pcall(function()
		unstun(grabbed)
		grabbed = nil
		grabweld:Destroy()
		removewelds(char["Right Arm"])
		removewelds(char["Left Arm"])
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1, 0.7, -0.75) * CFrame.Angles(0, math.rad(95), math.rad(105))
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.25, 0.7, -0.75) * CFrame.Angles(0, math.rad(-140), math.rad(-105))
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
		end)
		local cor2 = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.08)
		end)
		cor()
		cor2()
		lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
		lweld:Remove()
		rweld:Remove()
		if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
			local clone = leftclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Left Arm"]
			clone.Parent = char.Torso
		end
		if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
			local clone = rightclone:Clone()
			clone.Part0 = char.Torso
			clone.Part1 = char["Right Arm"]
			clone.Parent = char.Torso
		end
	end)
	working = false
end

function grab()
	working = true
	pcall(function()
		local rweld = Instance.new("Weld", char["Right Arm"])
		local lweld = Instance.new("Weld", char["Left Arm"])
		rweld.Part0 = char["Torso"]
		rweld.Part1 = char["Right Arm"]
		rweld.C0 = CFrame.new(1.5, 0, 0)
		lweld.Part0 = char.Torso
		lweld.Part1 = char["Left Arm"]
		lweld.C0 = CFrame.new(-1.5, 0, 0)
		
		local at1 = Instance.new("Attachment", handle)
		local at2 = Instance.new("Attachment", handle)
		at1.Visible = false
		at1.Position = Vector3.new(2, 0, 0)
		at2.Visible = false
		at2.Position = Vector3.new(-0.3, 0, 0)
		
		local trail = Instance.new("Trail", handle)
		trail.Color = ColorSequence.new({ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))})
		trail.LightEmission = 0.25
		trail.Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.75), NumberSequenceKeypoint.new(1, 1)})
		trail.Lifetime = 0.10
		trail.MinLength = 0.05
		trail.Attachment0 = at1
		trail.Attachment1 = at2
		
		local spinnyshit = coroutine.wrap(function()
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(-90), 0), 0.07)
			lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(0),math.rad(90), 0), 0.07)
		end)
		spinnyshit()
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(90)),0.08)
		end)
		cor()
		lerp(lweld,lweld.C0,CFrame.new(-2, 0.5, 0) * CFrame.Angles(0, math.rad(0), math.rad(-90)),0.08)
		wait(0.15)
		grabbing = true
		local cor = coroutine.wrap(function()
			lerp(rweld,rweld.C0,CFrame.new(1, 0.7, -0.75) * CFrame.Angles(0, math.rad(95), math.rad(105)),0.08)
		end)
		cor()
		lerp(lweld,lweld.C0,CFrame.new(-1.25, 0.7, -0.75) * CFrame.Angles(0, math.rad(-140), math.rad(-105)),0.08)
		at1:Remove()
		at2:Remove()
		trail:Remove()
		wait(0.3)
		grabbing = false
		
		if grabbed == nil then
			local cor = coroutine.wrap(function()
				lerp(rweld,rweld.C0,CFrame.new(1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
			end)
			local cor2 = coroutine.wrap(function()
				lerp(hweld,hweld.C0,CFrame.new(0, -1, 0) * CFrame.Angles(math.rad(-180),math.rad(-90), 0),0.08)
			end)
			cor()
			cor2()
			lerp(lweld,lweld.C0,CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, math.rad(0), math.rad(0)),0.08)
			lweld:Remove()
			rweld:Remove()
			if leftclone and char:FindFirstChild('Left Arm') and char:FindFirstChild('Torso') then
				local clone = leftclone:Clone()
				clone.Part0 = char.Torso
				clone.Part1 = char["Left Arm"]
				clone.Parent = char.Torso
			end
			if rightclone and char:FindFirstChild('Right Arm') and char:FindFirstChild('Torso') then
				local clone = rightclone:Clone()
				clone.Part0 = char.Torso
				clone.Part1 = char["Right Arm"]
				clone.Parent = char.Torso
			end
		end
	end)
	working = false
end

mouse.KeyDown:connect(function(kkk)
	local key = kkk:lower()
	if usable and working == false then
		if key == "z" then
			if equipped == false then
				if firsttime then
					firsttime = false
					notify("Equipped || Press X or C to equip one of two weapons",true)
				else
					notify("Equipped")
				end
				equip()
			else
				notify("Unequipped")
				unequip()
			end
		elseif key == "x" then
			if blademode ~= "katana" and equipped == true then
				getrid(handle)
				if firsttime2 then
					firsttime2 = false
					notify("Katana mode enabled || Press Q, E, or click to perform an action",true)
				else
					notify("Katana mode enabled")
				end
				katanamode()
			elseif blademode == "katana" then
				getrid(handle)
				notify("Katana mode disabled")
			end
		elseif key == "v" then
			if blademode ~= "gun" and equipped == true then
				getrid(handle)
				if firsttime5 then
					firsttime5 = false
					notify("Gun mode enabled || Click to perform an action",true)
				else
					notify("Gun mode enabled")
				end
				gunmode()
			elseif blademode == "gun" then
				getrid(handle)
				notify("Gun mode disabled")
			end
		elseif key == "b" then
			if childlock == false then
				if blademode ~= "dildo" and equipped == true then
					getrid(handle)
					if firsttime4 then
						firsttime4 = false
						notify("Dildo mode enabled || Click to perform an action",true)
					else
						notify("Dildo mode enabled")
					end
					dildo()
				elseif blademode == "dildo" then
					notify("Dildo mode disabled")
					getrid(handle)
				end
			end
		elseif key == "c" then
			if blademode ~= "knife" and equipped == true then
				getrid(handle)
				if firsttime3 then
					firsttime3 = false
					notify("Knife mode enabled || Press F, E, T, or Q to set modes; Click to perform an action",true)
				else
					notify("Knife mode enabled")
				end
				knifemode()
			elseif blademode == "knife" then
				notify("Knife mode disabled")
				getrid(handle)
			end
		elseif key == "q" then
			if blademode == "katana" then
				notify()
				katanaQ()
			elseif blademode == "knife" then
				mode = "release"
				notify("Mode changed to "..mode)
			end
		elseif key == "e" then
			if blademode == "katana" then
				notify()
				katanaE()
			elseif blademode == "knife" then
				mode = "throw"
				notify("Mode changed to "..mode)
			end
		elseif key == "f" then
			if blademode == "handle" then
				notify([[BEGONE    
THOT]])
				begoneTHOUGHT()
			elseif blademode == "knife" then
				mode = "kill"
				notify("Mode changed to "..mode)
			end
		elseif key == "t" then
			if blademode == "knife" then
				mode = "fling"
				notify("Mode changed to "..mode)
			end
		end
	end
	if key == "m" and sounding == false then
		--badass mode
		pcall(function()
			if badass.Playing == false then
				sounding = true
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA('Sound') and v~=player.Character.Head.Badass then
						v:Stop()
					end
				end
				badass:Play()
				badass.Volume = 10
				sounding = false
			else
				sounding = true
				for i=1,100 do
					badass.Volume = badass.Volume-0.1
					wait()
				end
				badass.Volume = 0
				badass:Stop()
				sounding = false
			end
		end)
	end
	if key == "r" then
		rag1 = true
		if rag1 == true and rag2 == true then
			oogabooga()
		end
	end
	if key == "g" then
		rag2 = true
		if rag1 == true and rag2 == true then
			oogabooga()
		end
	end
end)
mouse.KeyUp:connect(function(key)
	if key == "r" then
		rag1 = false
	end
	if key == "g" then
		rag2 = false
	end
end)

handle.ChildAdded:connect(function(child)
	if child:IsA('BasePart') then
		child.CanCollide = false
		if child.Name == "blade" then
			child.Touched:connect(function(hit)
				if blademode == "katana" and swinging then
					if gettingeem then
						if goteem == nil then
							if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
								local sounn = Instance.new("Sound", char.Torso)
								local lipp = math.random(1, 3)
								if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
								if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
								if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
								sounn:Play()
								goteem = hit.Parent
								pcall(function()
									goteem.HumanoidRootPart:Destroy()
								end)
								pcall(function()
									ragdollpart(goteem,"Right Arm")
									ragdollpart(goteem,"Right Leg")
									ragdollpart(goteem,"Left Arm")
									ragdollpart(goteem,"Left Leg")
								end)
								pcall(function()
									ragdollpart(goteem,"RightUpperArm")
									ragdollpart(goteem,"RightUpperLeg")
									ragdollpart(goteem,"LeftUpperArm")
									ragdollpart(goteem,"LeftUpperLeg")
								end)
								pcall(function()
									local weld = Instance.new('Weld',goteem.Torso)
									weld.Part0 = goteem.Torso
									weld.Part1 = handle
									weld.C0 = CFrame.new(0,0,2)*CFrame.Angles(math.rad(90),0,math.rad(-90))
								end)
								pcall(function()
									local weld = Instance.new('Weld',goteem.UpperTorso)
									weld.Part0 = goteem.UpperTorso
									weld.Part1 = handle
									weld.C0 = CFrame.new(0,0,2)*CFrame.Angles(math.rad(90),0,math.rad(-90))
								end)
								pcall(function()
									local thang = "Torso"
									if goteem:FindFirstChild('UpperTorso') then
										thang = "UpperTorso"
									end
									local ayybleed = Instance.new('Part',goteem)
									ayybleed.Size = Vector3.new(0.2,0.2,0.2)
									ayybleed.BrickColor = BrickColor.new('Maroon')
									ayybleed.Material = Enum.Material.SmoothPlastic
									ayybleed.Name = "ayybleed"
									ayybleed.CanCollide = false
									ayybleed.Transparency = 1
									ayybleed.CFrame = goteem[thang].CFrame
									ayybleed:BreakJoints()
									local attachment1 = Instance.new('Attachment',ayybleed)
									attachment1.Position = Vector3.new(0,0,0)
									attachment1.Orientation = Vector3.new(-90, 0, -90)
									local attachment0 = Instance.new('Attachment',goteem[thang])
									if attachment0 and attachment1 then
										local constraint = Instance.new("HingeConstraint")
										constraint.Attachment0 = attachment0
										constraint.Attachment1 = attachment1
										constraint.LimitsEnabled = true
										constraint.UpperAngle = 0
										constraint.LowerAngle = 0
										constraint.Parent = goteem
									end
									local bleedBLEED= coroutine.wrap(function()
										bleed(ayybleed)
									end)
									bleedBLEED()
								end)
							end
						end
					elseif SLESH then

						if hit.Parent and hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							local sounn = Instance.new("Sound", char.Torso)
							local lipp = math.random(1, 3)
							if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
							if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
							if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
							sounn:Play()
							ragdollpart(hit.Parent,hit.Name,false)
						end
					else
						if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							local sounn = Instance.new("Sound", char.Torso)
							local lipp = math.random(1, 3)
							if lipp == 1 then sounn.SoundId = "rbxassetid://444667844" end
							if lipp == 2 then sounn.SoundId = "rbxassetid://444667824" end
							if lipp == 3 then sounn.SoundId = "rbxassetid://444667859" end
							sounn:Play()
							swinging = false
							ragdollpart(hit.Parent,"Head",true,false)
						end
					end
				elseif blademode == "knife" then
					if grabbing == true and grabbed == nil then
						if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							grabbed = hit.Parent
							
							stun(grabbed)
							
							local grabwelds = Instance.new("Weld", char.Torso)
							grabwelds.Part0 = char.Torso
							pcall(function()
								grabwelds.Part1 = grabbed.Torso
							end)
							pcall(function()
								grabwelds.Part1 = grabbed.UpperTorso
							end)
							grabwelds.C0 = CFrame.new(-0.45, 0, -1)
							grabweld = grabwelds
						end
					end
				end
			end)
		end
	elseif child:IsA("Model") then
		child.ChildAdded:connect(function(dildotip)
			if dildotip:IsA('BasePart') then
				dildotip.Touched:connect(function(hit)
					if MOAN == true then
						if hit.Parent:FindFirstChildOfClass('Humanoid') and hit.Parent:FindFirstChildOfClass('Humanoid').Health > 0 and hit.Parent ~= char then
							local sound = Instance.new('Sound',hit.Parent.Head)
							sound.SoundId = 'rbxassetid://959679286'
							sound.Volume = 5
							sound:Play()
							local sound3 = Instance.new("Sound",hit.Parent.Head)
							sound3.Volume = 5.5
							sound3.SoundId = "rbxassetid://702631545"
							sound3:Play()
							pcall(function()
								for i,v in pairs(hit.Parent.Head:GetChildren()) do
									if v:IsA('Decal') then v:Destroy() end
								end
							end)
							pcall(function()
								local ree=Instance.new('Decal',hit.Parent.Head)		
								ree.Name = "face"
								ree.Texture = "rbxassetid://996521543"
							end)
							MOAN = false
							aidsificating = hit.Parent
							for i, v in pairs(handle["pink toy"]:GetChildren()) do
								if v:IsA("Part") then
									v:FindFirstChild("ParticleEmitter"):Destroy()
								end
							end
						end
					end
				end)
			end
		end)
	end
end)

mouse.Button1Down:connect(function(jew)
	if usable and working == false and equipped then
		if blademode == "katana" then
			notify()
			katanaswing()
		elseif blademode == "knife" then
			notify()
			if grabbed == nil then
				if mode == "fling" then
					fling()
				else
					grab()
				end
			elseif grabbed ~= nil then
				if mode == "kill" then
					kill()
				elseif mode == "throw" then
					throw()
				elseif mode == "release" then
					release()
				end
			end
		elseif blademode == "dildo" then
			raep()
		end
	end
end)

end
spawned()

player.CharacterAdded:connect(function()
	spawned()
end)
local avgs = {}

game:GetService('RunService').Heartbeat:connect(function(step)
	local ofps = math.floor((60/(step*60))*10)/10
	if #avgs > 100 then
		table.remove(avgs,1)
	end
	table.insert(avgs,#avgs+1,ofps)
	local fpsa = 0
	for i,v in pairs(avgs) do
		fpsa = fpsa+v
	end
	fpsa = math.floor(fpsa/#avgs)
	fps.Text = 'FPS: '..tostring(fpsa)
end)

while true do
	for i,v in pairs(rekt) do
		if v.Parent ~= nil then
			if v:FindFirstChildOfClass('Humanoid') and v:FindFirstChildOfClass('Humanoid').Health>0 then
				for a,c in pairs(v:GetChildren()) do
					if c:IsA('Tool') then
						c.ManualActivationOnly = true
						wait()
						if game:GetService('Players'):GetPlayerFromCharacter(v) then
							c.Parent = game:GetService('Players'):GetPlayerFromCharacter(v).Backpack
							c.ManualActivationOnly = false
						end
					end
				end
				v:FindFirstChildOfClass('Humanoid').PlatformStand = true
				v:FindFirstChildOfClass('Humanoid').Sit = false
				v:FindFirstChildOfClass('Humanoid').JumpPower = 0
				v:FindFirstChildOfClass('Humanoid').WalkSpeed = 0
				v:FindFirstChildOfClass('Humanoid').Name = "hecc"
			else
				table.remove(rekt,i)
			end
		else
			table.remove(rekt,i)
		end
	end
	wait()
end