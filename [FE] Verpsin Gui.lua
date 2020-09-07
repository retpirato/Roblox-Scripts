local Verspin = Instance.new("ScreenGui")
local VerspinFrame = Instance.new("Frame")
local MainFrame = Instance.new("Frame")
local Frame1_1 = Instance.new("Frame")
local Frame1_2 = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Credit = Instance.new("TextLabel")
local Kill = Instance.new("TextButton")
local Attach = Instance.new("TextButton")
local Bring = Instance.new("TextButton")
local LockOn = Instance.new("TextButton")
local Notice = Instance.new("TextLabel")
local EnterName = Instance.new("TextBox")
local CloseGUI = Instance.new("TextButton")
local OpenFrame = Instance.new("Frame")
local OpenTitle = Instance.new("TextLabel")
local OpenGUI = Instance.new("TextButton")

Verspin.Name = "Verspin"
Verspin.Parent = game.CoreGui

VerspinFrame.Name = "VerspinFrame"
VerspinFrame.Parent = Verspin
VerspinFrame.BackgroundColor3 = Color3.new(1, 1, 1)
VerspinFrame.BackgroundTransparency = 1
VerspinFrame.Position = UDim2.new(0, 438, 0, 230)
VerspinFrame.Size = UDim2.new(0, 100, 0, 100)

MainFrame.Name = "MainFrame"
MainFrame.Parent = VerspinFrame
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0.211765, 0.211765, 0.211765)
MainFrame.BorderSizePixel = 2
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0, -79, 0, -98)
MainFrame.Size = UDim2.new(0, 258, 0, 296)

Frame1_1.Name = "Frame1_1"
Frame1_1.Parent = MainFrame
Frame1_1.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Frame1_1.BorderSizePixel = 0
Frame1_1.Size = UDim2.new(0, 258, 0, 36)

Frame1_2.Name = "Frame1_2"
Frame1_2.Parent = MainFrame
Frame1_2.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
Frame1_2.BorderSizePixel = 0
Frame1_2.Position = UDim2.new(0, 0, 0, 260)
Frame1_2.Size = UDim2.new(0, 258, 0, 36)

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(0, 258, 0, 31)
Title.Font = Enum.Font.Highway
Title.FontSize = Enum.FontSize.Size24
Title.Text = "Verspin FE GUI"
Title.TextColor3 = Color3.new(0.337255, 0.819608, 0.25098)
Title.TextSize = 24

Credit.Name = "Credit"
Credit.Parent = MainFrame
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0, 0, 0, 272)
Credit.Size = UDim2.new(0, 97, 0, 24)
Credit.Font = Enum.Font.Highway
Credit.FontSize = Enum.FontSize.Size24
Credit.Text = "illremember"
Credit.TextColor3 = Color3.new(0.207843, 0.498039, 0.152941)
Credit.TextSize = 20

Kill.Name = "Kill"
Kill.Parent = MainFrame
Kill.BackgroundColor3 = Color3.new(0.392157, 0.960784, 0.360784)
Kill.BorderColor3 = Color3.new(0.0784314, 1, 0.0784314)
Kill.BorderSizePixel = 0
Kill.Position = UDim2.new(0, 54, 0, 89)
Kill.Size = UDim2.new(0, 149, 0, 32)
Kill.Font = Enum.Font.SourceSans
Kill.FontSize = Enum.FontSize.Size14
Kill.Text = "Kill Player"
Kill.TextScaled = true
Kill.TextSize = 14
Kill.TextWrapped = true

Attach.Name = "Attach"
Attach.Parent = MainFrame
Attach.BackgroundColor3 = Color3.new(0.392157, 0.960784, 0.360784)
Attach.BorderColor3 = Color3.new(0.0784314, 1, 0.0784314)
Attach.BorderSizePixel = 0
Attach.Position = UDim2.new(0, 54, 0, 132)
Attach.Size = UDim2.new(0, 149, 0, 32)
Attach.Font = Enum.Font.SourceSans
Attach.FontSize = Enum.FontSize.Size14
Attach.Text = "Attach"
Attach.TextScaled = true
Attach.TextSize = 14
Attach.TextWrapped = true

Bring.Name = "Bring"
Bring.Parent = MainFrame
Bring.BackgroundColor3 = Color3.new(0.392157, 0.960784, 0.360784)
Bring.BorderColor3 = Color3.new(0.0784314, 1, 0.0784314)
Bring.BorderSizePixel = 0
Bring.Position = UDim2.new(0, 54, 0, 176)
Bring.Size = UDim2.new(0, 149, 0, 32)
Bring.Font = Enum.Font.SourceSans
Bring.FontSize = Enum.FontSize.Size14
Bring.Text = "Bring Player"
Bring.TextScaled = true
Bring.TextSize = 14
Bring.TextWrapped = true

LockOn.Name = "LockOn"
LockOn.Parent = MainFrame
LockOn.BackgroundColor3 = Color3.new(0.962157, 0.390784, 0.360784)
LockOn.BorderColor3 = Color3.new(0.0784314, 1, 0.0784314)
LockOn.BorderSizePixel = 0
LockOn.Position = UDim2.new(0, 54, 0, 220)
LockOn.Size = UDim2.new(0, 149, 0, 32)
LockOn.Font = Enum.Font.SourceSans
LockOn.FontSize = Enum.FontSize.Size14
LockOn.Text = "Lock On"
LockOn.TextScaled = true
LockOn.TextSize = 14
LockOn.TextWrapped = true

Notice.Name = "Notice"
Notice.Parent = MainFrame
Notice.BackgroundColor3 = Color3.new(1, 1, 1)
Notice.BackgroundTransparency = 1
Notice.Position = UDim2.new(0, 104, 0, 263)
Notice.Size = UDim2.new(0, 154, 0, 33)
Notice.Font = Enum.Font.Highway
Notice.FontSize = Enum.FontSize.Size24
Notice.Text = "You need tools in your backpack for this to work"
Notice.TextColor3 = Color3.new(0.498039, 0.0862745, 0.0901961)
Notice.TextScaled = true
Notice.TextSize = 20
Notice.TextWrapped = true

EnterName.Name = "EnterName"
EnterName.Parent = MainFrame
EnterName.BackgroundColor3 = Color3.new(0.54902, 0.54902, 0.54902)
EnterName.BorderColor3 = Color3.new(0.0941177, 0.0941177, 0.0941177)
EnterName.BorderSizePixel = 5
EnterName.Position = UDim2.new(0, 14, 0, 48)
EnterName.Size = UDim2.new(0, 230, 0, 23)
EnterName.Font = Enum.Font.Arial
EnterName.FontSize = Enum.FontSize.Size14
EnterName.PlaceholderText = "Username"
EnterName.TextScaled = true
EnterName.TextSize = 14
EnterName.TextWrapped = true

CloseGUI.Name = "CloseGUI"
CloseGUI.Parent = MainFrame
CloseGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseGUI.BackgroundTransparency = 1
CloseGUI.Position = UDim2.new(0, 221, 0, 0)
CloseGUI.Size = UDim2.new(0, 37, 0, 34)
CloseGUI.Font = Enum.Font.SourceSans
CloseGUI.FontSize = Enum.FontSize.Size48
CloseGUI.Text = "X"
CloseGUI.TextSize = 40

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = VerspinFrame
OpenFrame.BackgroundColor3 = Color3.new(0.101961, 0.101961, 0.101961)
OpenFrame.BorderSizePixel = 2

OpenFrame.Draggable = true
OpenFrame.Position = UDim2.new(0, -79, 0, -97)
OpenFrame.Size = UDim2.new(0, 258, 0, 36)
OpenFrame.Visible = false

OpenTitle.Name = "OpenTitle"
OpenTitle.Parent = OpenFrame
OpenTitle.BackgroundColor3 = Color3.new(1, 1, 1)
OpenTitle.BackgroundTransparency = 1
OpenTitle.Size = UDim2.new(0, 258, 0, 31)
OpenTitle.Font = Enum.Font.Highway
OpenTitle.FontSize = Enum.FontSize.Size24
OpenTitle.Text = "Verspin FE GUI"
OpenTitle.TextColor3 = Color3.new(0.337255, 0.819608, 0.25098)
OpenTitle.TextSize = 24

OpenGUI.Name = "OpenGUI"
OpenGUI.Parent = OpenFrame
OpenGUI.BackgroundColor3 = Color3.new(1, 1, 1)
OpenGUI.BackgroundTransparency = 1
OpenGUI.Position = UDim2.new(0, 221, 0, 0)
OpenGUI.Size = UDim2.new(0, 37, 0, 34)
OpenGUI.Font = Enum.Font.SourceSans
OpenGUI.FontSize = Enum.FontSize.Size48
OpenGUI.Text = "X"
OpenGUI.TextSize = 40

------------------------------- The Stuff

CloseGUI.MouseButton1Click:connect(function()
MainFrame.Visible = false
OpenFrame.Visible = true
OpenFrame.Active = true
OpenFrame.Position = MainFrame.Position
end)

OpenGUI.MouseButton1Click:connect(function()
MainFrame.Visible = true
OpenFrame.Visible = false
OpenFrame.Active = false
MainFrame.Position = OpenFrame.Position
end)

getlock = false
LockOn.MouseButton1Click:connect(function()
getlock = not getlock
while wait() do
if getlock then
LockOn.BackgroundColor3 = Color3.new(0.392157, 0.960784, 0.360784)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[EnterName.Text].Character.HumanoidRootPart.CFrame
end
if not getlock then
LockOn.BackgroundColor3 = Color3.new(0.962157, 0.390784, 0.360784)
end
end
end)

Attach.MouseButton1Click:connect(function()
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
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[EnterName.Text].Character["Left Arm"].CFrame
end)

Bring.MouseButton1Click:connect(function()
NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
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
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[EnterName.Text].Character.HumanoidRootPart.CFrame
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[EnterName.Text].Character.HumanoidRootPart.CFrame
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
wait(0.2)
game.Players.LocalPlayer.Character:MoveTo(game.Players[EnterName.Text].Character.Position)
end)

Kill.MouseButton1Click:connect(function()
NOW = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
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
for i,v in pairs(game:GetService'Players'.LocalPlayer.Backpack:GetChildren())do
game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[EnterName.Text].Character.HumanoidRootPart.CFrame
wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[EnterName.Text].Character.HumanoidRootPart.CFrame
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(10000, 10000, 10000))
wait(0.8)
game.Players.LocalPlayer.Character:MoveTo(game.Players[EnterName.Text].Character.Position)
wait(0.8)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = NOW
end)