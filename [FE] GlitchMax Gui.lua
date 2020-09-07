-- Objects

local GlitchMax = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local CloseGUI = Instance.new("TextButton")
local Credit = Instance.new("TextLabel")
local DetailTopFrame = Instance.new("Frame")
local ButtonFrame = Instance.new("Frame")
local UserBox = Instance.new("TextBox")
local Flatten = Instance.new("TextButton")
local Push = Instance.new("TextButton")
local LockOn = Instance.new("TextButton")
local Float = Instance.new("TextButton")
local Stick = Instance.new("TextButton")
local Experimental = Instance.new("TextButton")
local SideFrame = Instance.new("Frame")
local OpenGUI = Instance.new("TextButton")
local SideCredit = Instance.new("TextLabel")
local SideTitle = Instance.new("TextLabel")

-- Properties

GlitchMax.Name = "GlitchMax"
GlitchMax.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = GlitchMax
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.BackgroundTransparency = 1
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0, 570, 0, 61)
MainFrame.Size = UDim2.new(0, 376, 0, 285)

TopFrame.Name = "TopFrame"
TopFrame.Parent = MainFrame
TopFrame.BackgroundColor3 = Color3.new(0.466667, 0.47451, 1)
TopFrame.Size = UDim2.new(0, 376, 0, 36)

Title.Name = "Title"
Title.Parent = TopFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 376, 0, 36)
Title.Font = Enum.Font.Highway
Title.FontSize = Enum.FontSize.Size14
Title.Text = "GlitchMax"
Title.TextColor3 = Color3.new(0.243137, 0.372549, 0.4)
Title.TextScaled = true
Title.TextSize = 14
Title.TextStrokeColor3 = Color3.new(1, 1, 1)
Title.TextStrokeTransparency = 0
Title.TextWrapped = true

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = TopFrame
CloseGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUI.BackgroundTransparency = 1
CloseGUI.Position = UDim2.new(0, 327, 0, 0)
CloseGUI.Size = UDim2.new(0, 49, 0, 36)
CloseGUI.Font = Enum.Font.SourceSans
CloseGUI.FontSize = Enum.FontSize.Size60
CloseGUI.Text = "X"
CloseGUI.TextSize = 50

Credit.Name = "Credit"
Credit.Parent = TopFrame
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0, 16, 0, 0)
Credit.Size = UDim2.new(0, 96, 0, 36)
Credit.Font = Enum.Font.Highway
Credit.FontSize = Enum.FontSize.Size14
Credit.Text = "illremember"
Credit.TextColor3 = Color3.new(0.431373, 0.662745, 0.709804)
Credit.TextScaled = true
Credit.TextSize = 14
Credit.TextStrokeColor3 = Color3.new(1, 1, 1)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

DetailTopFrame.Name = "DetailTopFrame"
DetailTopFrame.Parent = MainFrame
DetailTopFrame.BackgroundColor3 = Color3.new(0.541176, 0.678431, 1)
DetailTopFrame.Position = UDim2.new(0, 0, 0, 37)
DetailTopFrame.Size = UDim2.new(0, 376, 0, 11)

ButtonFrame.Name = "ButtonFrame"
ButtonFrame.Parent = MainFrame
ButtonFrame.BackgroundColor3 = Color3.new(0.945098, 0.945098, 0.945098)
ButtonFrame.Position = UDim2.new(0, 0, 0, 49)
ButtonFrame.Size = UDim2.new(0, 376, 0, 236)

UserBox.Name = "UserBox"
UserBox.Parent = ButtonFrame
UserBox.BackgroundColor3 = Color3.new(0.898039, 0.898039, 0.898039)
UserBox.BorderColor3 = Color3.new(0.360784, 0.384314, 0.392157)
UserBox.BorderSizePixel = 5
UserBox.Position = UDim2.new(0, 33, 0, 15)
UserBox.Size = UDim2.new(0, 310, 0, 31)
UserBox.Font = Enum.Font.SourceSans
UserBox.FontSize = Enum.FontSize.Size14
UserBox.Text = ""
UserBox.TextScaled = true
UserBox.TextSize = 14
UserBox.TextWrapped = true

Flatten.Name = "Flatten"
Flatten.Parent = ButtonFrame
Flatten.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Flatten.BorderColor3 = Color3.new(0.368627, 0.576471, 0.72549)
Flatten.BorderSizePixel = 2
Flatten.Position = UDim2.new(0, 22, 0, 66)
Flatten.Size = UDim2.new(0, 135, 0, 36)
Flatten.Font = Enum.Font.Highway
Flatten.FontSize = Enum.FontSize.Size32
Flatten.Text = "Flatten"
Flatten.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
Flatten.TextScaled = true
Flatten.TextSize = 30
Flatten.TextWrapped = true

Push.Name = "Push"
Push.Parent = ButtonFrame
Push.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Push.BorderColor3 = Color3.new(0.368627, 0.576471, 0.72549)
Push.BorderSizePixel = 2
Push.Position = UDim2.new(0, 22, 0, 126)
Push.Size = UDim2.new(0, 135, 0, 36)
Push.Font = Enum.Font.Highway
Push.FontSize = Enum.FontSize.Size32
Push.Text = "Push"
Push.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
Push.TextScaled = true
Push.TextSize = 30
Push.TextWrapped = true

LockOn.Name = "LockOn"
LockOn.Parent = ButtonFrame
LockOn.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
LockOn.BorderColor3 = Color3.new(0.368627, 0.576471, 0.72549)
LockOn.BorderSizePixel = 2
LockOn.Position = UDim2.new(0, 22, 0, 186)
LockOn.Size = UDim2.new(0, 135, 0, 36)
LockOn.Font = Enum.Font.Highway
LockOn.FontSize = Enum.FontSize.Size32
LockOn.Text = "LockOn"
LockOn.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
LockOn.TextSize = 30
LockOn.TextWrapped = true

Float.Name = "Float"
Float.Parent = ButtonFrame
Float.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Float.BorderColor3 = Color3.new(0.368627, 0.576471, 0.72549)
Float.BorderSizePixel = 2
Float.Position = UDim2.new(0, 218, 0, 66)
Float.Size = UDim2.new(0, 135, 0, 36)
Float.Font = Enum.Font.Highway
Float.FontSize = Enum.FontSize.Size32
Float.Text = "Float"
Float.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
Float.TextScaled = true
Float.TextSize = 30
Float.TextWrapped = true

Stick.Name = "Stick"
Stick.Parent = ButtonFrame
Stick.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Stick.BorderColor3 = Color3.new(0.368627, 0.576471, 0.72549)
Stick.BorderSizePixel = 2
Stick.Position = UDim2.new(0, 218, 0, 126)
Stick.Size = UDim2.new(0, 135, 0, 36)
Stick.Font = Enum.Font.Highway
Stick.FontSize = Enum.FontSize.Size32
Stick.Text = "Stick"
Stick.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
Stick.TextSize = 30
Stick.TextWrapped = true

Experimental.Name = "Experimental"
Experimental.Parent = ButtonFrame
Experimental.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
Experimental.BorderColor3 = Color3.new(0.368627, 0.576471, 0.72549)
Experimental.BorderSizePixel = 2
Experimental.Position = UDim2.new(0, 218, 0, 186)
Experimental.Size = UDim2.new(0, 135, 0, 36)
Experimental.Font = Enum.Font.Highway
Experimental.FontSize = Enum.FontSize.Size28
Experimental.Text = "Experimental"
Experimental.TextColor3 = Color3.new(0.827451, 0.827451, 0.827451)
Experimental.TextSize = 25
Experimental.TextWrapped = true

SideFrame.Name = "SideFrame"
SideFrame.Parent = GlitchMax
SideFrame.Active = true
SideFrame.BackgroundColor3 = Color3.new(0.466667, 0.47451, 1)
SideFrame.Draggable = true
SideFrame.Position = UDim2.new(0, 570, 0, 61)
SideFrame.Size = UDim2.new(0, 376, 0, 36)
SideFrame.Visible = false

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = SideFrame
OpenGUI.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUI.BackgroundTransparency = 1
OpenGUI.Position = UDim2.new(0, 327, 0, 0)
OpenGUI.Size = UDim2.new(0, 49, 0, 36)
OpenGUI.Font = Enum.Font.SourceSans
OpenGUI.FontSize = Enum.FontSize.Size60
OpenGUI.Text = "X"
OpenGUI.TextSize = 50

SideCredit.Name = "SideCredit"
SideCredit.Parent = SideFrame
SideCredit.BackgroundColor3 = Color3.new(1, 1, 1)
SideCredit.BackgroundTransparency = 1
SideCredit.Position = UDim2.new(0, 16, 0, 0)
SideCredit.Size = UDim2.new(0, 96, 0, 36)
SideCredit.Font = Enum.Font.Highway
SideCredit.FontSize = Enum.FontSize.Size14
SideCredit.Text = "illremember"
SideCredit.TextColor3 = Color3.new(0.431373, 0.662745, 0.709804)
SideCredit.TextScaled = true
SideCredit.TextSize = 14
SideCredit.TextStrokeColor3 = Color3.new(1, 1, 1)
SideCredit.TextStrokeTransparency = 0
SideCredit.TextWrapped = true

SideTitle.Name = "SideTitle"
SideTitle.Parent = SideFrame
SideTitle.BackgroundColor3 = Color3.new(1, 1, 1)
SideTitle.BackgroundTransparency = 1
SideTitle.Size = UDim2.new(0, 376, 0, 36)
SideTitle.Font = Enum.Font.Highway
SideTitle.FontSize = Enum.FontSize.Size14
SideTitle.Text = "GlitchMax"
SideTitle.TextColor3 = Color3.new(0.243137, 0.372549, 0.4)
SideTitle.TextScaled = true
SideTitle.TextSize = 14
SideTitle.TextStrokeColor3 = Color3.new(1, 1, 1)
SideTitle.TextStrokeTransparency = 0
SideTitle.TextWrapped = true

-- Buttons

col = Color3.new(0.254902, 0.254902, 0.254902)
loc = Color3.new(0.40, 0.40, 0.40)

CloseGUI.MouseButton1Click:connect(function()
	MainFrame.Visible = false
	SideFrame.Visible = true
	SideFrame.Position = MainFrame.Position
end)

OpenGUI.MouseButton1Click:connect(function()
	MainFrame.Visible = true
	SideFrame.Visible = false
	MainFrame.Position = SideFrame.Position
end)

function shortnames(username)
    local nameshort = {}
    for i,v in pairs(game.Players:GetPlayers()) do
        if v.Name:lower():sub(1, #username) == username:lower() then
            table.insert(nameshort,v)
        end
    end    
    return nameshort    
end

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://282574440"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
flattening = false
Flatten.MouseButton1Click:connect(function()
	flattening = not flattening
	if flattening then
		Flatten.BackgroundColor3 = loc
		local y = Instance.new("RocketPropulsion")
		y.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		y.CartoonFactor = 1
		y.MaxThrust = 50000
		y.MaxSpeed = 1000
		y.ThrustP = 50000
		y.Name = "Flatten"
		for i,v in pairs(shortnames(UserBox.Text))do
			y.Target = game.Players[v.name].Character["Left Leg"]
			y:Fire()
			track:Play(.1, 1, 1)
			game:GetService('RunService').Stepped:connect(function()
				if flattening then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
			while wait(0.3) do
				if flattening then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame + Vector3.new(0,2,0)
				end
			end
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Flatten:Destroy()
		track:Stop()
		Flatten.BackgroundColor3 = col
	end
end)

floating = false
Float.MouseButton1Click:connect(function()
	floating = not floating
	if floating then
		Float.BackgroundColor3 = loc
		local y = Instance.new("RocketPropulsion")
		y.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		y.CartoonFactor = 1
		y.MaxThrust = 50000
		y.MaxSpeed = 1000
		y.ThrustP = 50000
		y.Name = "Float"
		for i,v in pairs(shortnames(UserBox.Text))do
			y.Target = game.Players[v.Name].Character.Head
			y:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if floating then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
			while wait(0.3) do
				if floating then
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character["Left Leg"].CFrame
				end
			end
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Float:Destroy()
		Float.BackgroundColor3 = col
	end
end)

LockOnACTIVE = false
LockOn.MouseButton1Click:connect(function()
	LockOnACTIVE = not LockOnACTIVE
	for i,v in pairs(shortnames(UserBox.Text))do
		while wait() do
			if LockOnACTIVE then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[v.Name].Character.HumanoidRootPart.CFrame
				LockOn.BackgroundColor3 = loc
			else
				LockOn.BackgroundColor3 = col
			end
		end
	end
end)

pushing = false
Push.MouseButton1Click:connect(function()
	pushing = not pushing
	if pushing then
		Push.BackgroundColor3 = loc
		local b = Instance.new("RocketPropulsion")
		b.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		b.TurnP = 2500
		b.MaxThrust = 50000
		b.MaxSpeed = 1000
		b.ThrustP = 50000
		b.CartoonFactor = 1
		b.Name = "Push"
		for i,v in pairs(shortnames(UserBox.Text))do
			b.Target = game.Players[v.Name].Character.HumanoidRootPart
			b:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if pushing then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
			b:Fire()
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Push:Destroy()
		Push.BackgroundColor3 = col
	end
end)

local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://215384594"
local track = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
experi = false
Experimental.MouseButton1Click:connect(function()
	experi = not experi
	if experi then
		Experimental.BackgroundColor3 = loc
		local h = Instance.new("RocketPropulsion")
		h.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		h.Name = "Experimental"
		for i,v in pairs(shortnames(UserBox.Text))do
			h.Target = game.Players[v.Name].Character.HumanoidRootPart
			h:Fire()
			track:Play(.1,1,1)
			game:GetService('RunService').Stepped:connect(function()
				if experi then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Experimental:Destroy()
		track:Stop()
		Stick.BackgroundColor3 = col
	end
end)

stuck = false
Stick.MouseButton1Click:connect(function()
	stuck = not stuck
	if stuck then
		Stick.BackgroundColor3 = loc
		local h = Instance.new("RocketPropulsion")
		h.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
		h.MaxSpeed = 1000
		h.MaxThrust = 10000
		h.Name = "Stick"
		for i,v in pairs(shortnames(UserBox.Text))do
			h.Target = game.Players[v.Name].Character.HumanoidRootPart
			h:Fire()
			game:GetService('RunService').Stepped:connect(function()
				if stuck then
					game.Players.LocalPlayer.Character.Head.CanCollide = false
					game.Players.LocalPlayer.Character.Torso.CanCollide = false
					game.Players.LocalPlayer.Character["Left Leg"].CanCollide = false
					game.Players.LocalPlayer.Character["Right Leg"].CanCollide = false
				end
			end)
		end
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.Stick:Destroy()
		Stick.BackgroundColor3 = col
	end
end)