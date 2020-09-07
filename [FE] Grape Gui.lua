local GrapeGui = Instance.new("ScreenGui")
local Holder = Instance.new("Frame")
local Top = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Main = Instance.new("Frame")
local Shutdown = Instance.new("TextButton")
local Sound = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local NoclipStatus = Instance.new("Frame")
local TextN = Instance.new("TextLabel")
local StatusN = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local FlyStatus = Instance.new("Frame")
local TextF = Instance.new("TextLabel")
local StatusF = Instance.new("TextLabel")
local Swing = Instance.new("TextButton")
local SwingName = Instance.new("TextBox")
local Icon = Instance.new("ImageLabel")
local Exit = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")
local noclip = false
local oof = false
local shutdown = false
local speed = 50
 local c
local h
local bv
local bav
local cam
local flying = false
local p = Players.LocalPlayer
local buttons = {W = false, S = false, A = false, D = false, Moving = false}
 
local startFly = function () -- Call this function to begin flying
if not p.Character or not p.Character.Head or flying then return end
c = p.Character
h = c.Humanoid
h.PlatformStand = true
cam = workspace:WaitForChild('Camera')
bv = Instance.new("BodyVelocity")
bav = Instance.new("BodyAngularVelocity")
bv.Velocity, bv.MaxForce, bv.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
bav.AngularVelocity, bav.MaxTorque, bav.P = Vector3.new(0, 0, 0), Vector3.new(10000, 10000, 10000), 1000
bv.Parent = c.Head
bav.Parent = c.Head
flying = true
h.Died:connect(function() flying = false end)
end
 
local endFly = function ()
if not p.Character or not flying then return end
h.PlatformStand = false
bv:Destroy()
bav:Destroy()
flying = false
end
 
game:GetService("UserInputService").InputBegan:connect(function (input, GPE)
if GPE then return end
for i, e in pairs(buttons) do
if i ~= "Moving" and input.KeyCode == Enum.KeyCode[i] then
buttons[i] = true
buttons.Moving = true
end
end
end)
 
game:GetService("UserInputService").InputEnded:connect(function (input, GPE)
if GPE then return end
local a = false
for i, e in pairs(buttons) do
if i ~= "Moving" then
if input.KeyCode == Enum.KeyCode[i] then
buttons[i] = false
end
if buttons[i] then a = true end
end
end
buttons.Moving = a
end)
 
local setVec = function (vec)
return vec * (speed / vec.Magnitude)
end
 
game:GetService("RunService").Heartbeat:connect(function (step)
if flying and c and c.PrimaryPart then
local p = c.PrimaryPart.Position
local cf = cam.CFrame
local ax, ay, az = cf:toEulerAnglesXYZ()
c:SetPrimaryPartCFrame(CFrame.new(p.x, p.y, p.z) * CFrame.Angles(ax, ay, az))
if buttons.Moving then
local t = Vector3.new()
if buttons.W then t = t + (setVec(cf.lookVector)) end
if buttons.S then t = t - (setVec(cf.lookVector)) end
if buttons.A then t = t - (setVec(cf.rightVector)) end
if buttons.D then t = t + (setVec(cf.rightVector)) end
c:TranslateBy(t * step)
end
end
end)

GrapeGui.Name = "GrapeGui"
GrapeGui.Parent = CoreGui

Holder.Name = "Holder"
Holder.Parent = GrapeGui
Holder.Active = true
Holder.BackgroundColor3 = Color3.new(1, 1, 1)
Holder.BackgroundTransparency = 1
Holder.Draggable = true
Holder.Position = UDim2.new(0.387072802, 0, 0.355871886, 0)
Holder.Size = UDim2.new(0, 276, 0, 206)

Top.Name = "Top"
Top.Parent = Holder
Top.BackgroundColor3 = Color3.new(0, 0, 0)
Top.BackgroundTransparency = 0.40000000596046
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0, 0, 0.00485436898, 0)
Top.Size = UDim2.new(0, 237, 0, 32)

Title.Name = "Title"
Title.Parent = Top
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 0, 0.125, 0)
Title.Size = UDim2.new(0, 237, 0, 24)
Title.Font = Enum.Font.Code
Title.Text = "FE Grape Menu"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 20

Main.Name = "Main"
Main.Parent = Holder
Main.BackgroundColor3 = Color3.new(0, 0, 0)
Main.BackgroundTransparency = 0.40000000596046
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0, 0, 0.189320385, 0)
Main.Size = UDim2.new(0, 276, 0, 167)

Shutdown.Name = "Shutdown"
Shutdown.Parent = Main
Shutdown.BackgroundColor3 = Color3.new(1, 1, 1)
Shutdown.BackgroundTransparency = 0.69999998807907
Shutdown.BorderSizePixel = 0
Shutdown.Position = UDim2.new(0.0253623184, 0, 0.0479041934, 0)
Shutdown.Size = UDim2.new(0, 153, 0, 22)
Shutdown.Font = Enum.Font.Code
Shutdown.Text = "SERVER SHUTDOWN"
Shutdown.TextColor3 = Color3.new(0, 0, 0)
Shutdown.TextSize = 15
Shutdown.MouseButton1Click:Connect(function()
while wait() do
for i,v in pairs(game:GetService'Players':GetPlayers()) do
if v.Character ~= nil and v.Character:FindFirstChild'Head' then
for _,x in pairs(v.Character.Head:GetChildren()) do
if x:IsA'Sound' then
x:Play()
end
end
end
end
end
end)

Sound.Name = "Sound"
Sound.Parent = Main
Sound.BackgroundColor3 = Color3.new(1, 1, 1)
Sound.BackgroundTransparency = 0.69999998807907
Sound.BorderSizePixel = 0
Sound.Position = UDim2.new(0.605072439, 0, 0.0479041934, 0)
Sound.Size = UDim2.new(0, 102, 0, 22)
Sound.Font = Enum.Font.Code
Sound.Text = "SOUND SPAM"
Sound.TextColor3 = Color3.new(0, 0, 0)
Sound.TextSize = 15
Sound.MouseButton1Click:connect(function()
while wait() do
for i,v in pairs(game:GetService'Players':GetPlayers()) do
if v.Character ~= nil and v.Character:FindFirstChild'Head' then
for _,x in pairs(v.Character.Head:GetChildren()) do
if x:IsA'Sound' then x.Playing = true end
end
end
end
end
end)

Noclip.Name = "Noclip"
Noclip.Parent = Main
Noclip.BackgroundColor3 = Color3.new(1, 1, 1)
Noclip.BackgroundTransparency = 0.69999998807907
Noclip.BorderSizePixel = 0
Noclip.Position = UDim2.new(0.0253623184, 0, 0.227544904, 0)
Noclip.Size = UDim2.new(0, 103, 0, 22)
Noclip.Font = Enum.Font.Code
Noclip.Text = "NOCLIP [E]"
Noclip.TextColor3 = Color3.new(0, 0, 0)
Noclip.TextSize = 15
Noclip.MouseButton1Click:Connect(function()
if noclip == false then
noclip = true
StatusN.Text = "ON"
StatusN.TextColor3 = Color3.fromRGB(0,170,14)
Stepped = game:GetService("RunService").Stepped:Connect(function()
if not noclip == false then
for a,b in pairs(Workspace:GetChildren()) do
if b.Name == p.Name then
for i, v in pairs(Workspace[p.Name]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false
end
end
end
end
else
Stepped:Disconnect()
end
end)
elseif noclip == true then
noclip = false
StatusN.Text = "OFF"
StatusN.TextColor3 = Color3.fromRGB(170,0,0)
end
end)
UserInputService.InputEnded:Connect(function(key, event)
if key.KeyCode == Enum.KeyCode.E then
if noclip == false then
noclip = true
StatusN.Text = "ON"
StatusN.TextColor3 = Color3.fromRGB(0,170,14)
Stepped = game:GetService("RunService").Stepped:Connect(function()
if not noclip == false then
for a,b in pairs(Workspace:GetChildren()) do
if b.Name == p.Name then
for i, v in pairs(Workspace[p.Name]:GetChildren()) do
if v:IsA("BasePart") then
v.CanCollide = false
end
end
end
end
else
Stepped:Disconnect()
end
end)
elseif noclip == true then
noclip = false
StatusN.Text = "OFF"
StatusN.TextColor3 = Color3.fromRGB(170,0,0)
end
end
end)

NoclipStatus.Name = "NoclipStatus"
NoclipStatus.Parent = Main
NoclipStatus.BackgroundColor3 = Color3.new(1, 1, 1)
NoclipStatus.BackgroundTransparency = 0.69999998807907
NoclipStatus.BorderSizePixel = 0
NoclipStatus.Position = UDim2.new(0.423913032, 0, 0.227544904, 0)
NoclipStatus.Size = UDim2.new(0, 152, 0, 22)

TextN.Name = "TextN"
TextN.Parent = NoclipStatus
TextN.BackgroundColor3 = Color3.new(1, 1, 1)
TextN.BackgroundTransparency = 1
TextN.Position = UDim2.new(0.0789473653, 0, 0, 0)
TextN.Size = UDim2.new(0, 98, 0, 22)
TextN.Font = Enum.Font.Code
TextN.Text = "NOCLIP STATUS:"
TextN.TextColor3 = Color3.new(0, 0, 0)
TextN.TextSize = 15

StatusN.Name = "StatusN"
StatusN.Parent = NoclipStatus
StatusN.BackgroundColor3 = Color3.new(1, 1, 1)
StatusN.BackgroundTransparency = 1
StatusN.Position = UDim2.new(0.789473712, 0, 0, 0)
StatusN.Size = UDim2.new(0, 32, 0, 22)
StatusN.Font = Enum.Font.Code
StatusN.Text = "OFF"
StatusN.TextColor3 = Color3.new(0.666667, 0, 0)
StatusN.TextSize = 15
StatusN.TextXAlignment = Enum.TextXAlignment.Left

Fly.Name = "Fly"
Fly.Parent = Main
Fly.BackgroundColor3 = Color3.new(1, 1, 1)
Fly.BackgroundTransparency = 0.69999998807907
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.0253623184, 0, 0.401197612, 0)
Fly.Size = UDim2.new(0, 78, 0, 22)
Fly.Font = Enum.Font.Code
Fly.Text = "FLY [F]"
Fly.TextColor3 = Color3.new(0, 0, 0)
Fly.TextSize = 15
Fly.MouseButton1Click:connect(function()
if flying == true then
endFly()
StatusF.Text = "OFF"
StatusF.TextColor3 = Color3.fromRGB(170,0,0)
elseif flying == false then
startFly()
StatusF.Text = "ON"
StatusF.TextColor3 = Color3.fromRGB(0,170,14)
end
end)
UserInputService.InputEnded:Connect(function(key, event)
if key.KeyCode == Enum.KeyCode.F then
if flying == true then
endFly()
StatusF.Text = "OFF"
StatusF.TextColor3 = Color3.fromRGB(170,0,0)
elseif flying == false then
startFly()
StatusF.Text = "ON"
StatusF.TextColor3 = Color3.fromRGB(0,170,14)
end
end
end)


FlyStatus.Name = "FlyStatus"
FlyStatus.Parent = Main
FlyStatus.BackgroundColor3 = Color3.new(1, 1, 1)
FlyStatus.BackgroundTransparency = 0.69999998807907
FlyStatus.BorderSizePixel = 0
FlyStatus.Position = UDim2.new(0.333333343, 0, 0.401197612, 0)
FlyStatus.Size = UDim2.new(0, 135, 0, 22)

TextF.Name = "TextF"
TextF.Parent = FlyStatus
TextF.BackgroundColor3 = Color3.new(1, 1, 1)
TextF.BackgroundTransparency = 1
TextF.Position = UDim2.new(-0.00173597783, 0, 0, 0)
TextF.Size = UDim2.new(0, 98, 0, 22)
TextF.Font = Enum.Font.Code
TextF.Text = "FLY STATUS:"
TextF.TextColor3 = Color3.new(0, 0, 0)
TextF.TextSize = 15

StatusF.Name = "StatusF"
StatusF.Parent = FlyStatus
StatusF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusF.BackgroundTransparency = 1
StatusF.Position = UDim2.new(0.725925922, 0, 0, 0)
StatusF.Size = UDim2.new(0, 28, 0, 22)
StatusF.Font = Enum.Font.Code
StatusF.Text = "OFF"
StatusF.TextColor3 = Color3.new(0.666667, 0, 0)
StatusF.TextSize = 15
StatusF.TextXAlignment = Enum.TextXAlignment.Left

Swing.Name = "Swing"
Swing.Parent = Main
Swing.BackgroundColor3 = Color3.new(1, 1, 1)
Swing.BackgroundTransparency = 0.69999998807907
Swing.BorderSizePixel = 0
Swing.Position = UDim2.new(0.0253623184, 0, 0.574850321, 0)
Swing.Size = UDim2.new(0, 170, 0, 22)
Swing.Font = Enum.Font.Code
Swing.Text = "SWING ANIMATION"
Swing.TextColor3 = Color3.new(0, 0, 0)
Swing.TextSize = 15
Swing.MouseButton1Click:Connect(function()
if Players:FindFirstChild(SwingName.Text) then
local Victim = SwingName.Text
else
for i,v in pairs(Players:GetChildren()) do
if string.find(string.lower(v.Name), string.lower(SwingName.Text)) then
local Victim = v.Name
else
return
end
end
end
local A=Instance.new'Animation'
A.AnimationId='rbxassetid://148840371'
local P=game:GetService'Players'.LocalPlayer
local C=P.Character or P.CharacterAdded:Wait()
local H=C:WaitForChild'Humanoid':LoadAnimation(A)
H:Play()
H:AdjustSpeed(2.5)
game:GetService'RunService'.Stepped:Connect(function()
C:WaitForChild'HumanoidRootPart'.CFrame=CFrame.new(game:GetService'Players':FindFirstChild(Victim).Character:WaitForChild'HumanoidRootPart'.Position)
end)
end)

SwingName.Name = "SwingName"
SwingName.Parent = Main
SwingName.BackgroundColor3 = Color3.new(1, 1, 1)
SwingName.BackgroundTransparency = 0.69999998807907
SwingName.BorderSizePixel = 0
SwingName.Position = UDim2.new(0.0253623184, 0, 0.74850297, 0)
SwingName.Size = UDim2.new(0, 160, 0, 28)
SwingName.Font = Enum.Font.Code
SwingName.Text = "VICTIM'S NAME"
SwingName.TextColor3 = Color3.new(0, 0, 0)
SwingName.TextSize = 15
SwingName.TextWrapped = true

Icon.Name = "Icon"
Icon.Parent = Main
Icon.BackgroundColor3 = Color3.new(1, 1, 1)
Icon.BackgroundTransparency = 1
Icon.Position = UDim2.new(0.689999998, 0, 0.564999998, 0)
Icon.Size = UDim2.new(0, 70, 0, 70)
Icon.Image = "rbxassetid://1214519029"

Exit.Name = "Exit"
Exit.Parent = Holder
Exit.BackgroundColor3 = Color3.new(0.67451, 0, 0)
Exit.BackgroundTransparency = 0.40000000596046
Exit.BorderSizePixel = 0
Exit.Position = UDim2.new(0.884057999, 0, 0.00485438108, 0)
Exit.Size = UDim2.new(0, 32, 0, 32)
Exit.Font = Enum.Font.Code
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextSize = 25
Exit.MouseButton1Click:Connect(function()
Holder.Visible = false
Open.Visible = true
end)

Open.Name = "Open"
Open.Parent = GrapeGui
Open.AnchorPoint = Vector2.new(0, 0.949999988)
Open.BackgroundColor3 = Color3.new(0, 0, 0)
Open.BackgroundTransparency = 0.40000000596046
Open.BorderSizePixel = 0
Open.Position = UDim2.new(0, 0, 0.949940681, 0)
Open.Size = UDim2.new(0, 80, 0, 24)
Open.Visible = false
Open.Font = Enum.Font.Code
Open.Text = "OPEN"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 14
Open.MouseButton1Click:Connect(function()
Open.Visible = false
Holder.Visible = true
end)