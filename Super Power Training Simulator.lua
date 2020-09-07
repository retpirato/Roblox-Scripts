print("Discord - Momo Hirai (?? ??)#9155")
print("Dark Devs")

-- Anti Idle
local VirtualUser=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
VirtualUser:CaptureController()
VirtualUser:ClickButton2(Vector2.new())
end)


-- Instances:
local SUPEREZ = Instance.new("ScreenGui")
local GUI = Instance.new("Frame")
local F1 = Instance.new("TextButton")
local F2 = Instance.new("TextButton")
local F3 = Instance.new("TextButton")
local P1 = Instance.new("TextButton")
local P2 = Instance.new("TextButton")
local BT1 = Instance.new("TextButton")
local J1 = Instance.new("TextButton")
local S1 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local Fun = Instance.new("TextLabel")
local GUIC = Instance.new("TextLabel")
local TP = Instance.new("TextButton")
local ONCE = Instance.new("Frame")
local DD = Instance.new("ImageLabel")
local SafeZone = Instance.new("TextButton")
local CityPort = Instance.new("TextButton")
local IceMountain = Instance.new("TextButton")
local Tornado = Instance.new("TextButton")
local Volcano = Instance.new("TextButton")
local Crystal = Instance.new("TextButton")
local S5 = Instance.new("TextButton")
local J5 = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local Open = Instance.new("TextButton")
--Properties:
SUPEREZ.Name = "SUPEREZ"
SUPEREZ.Parent = game.CoreGui

GUI.Name = "GUI"
GUI.Parent = SUPEREZ
GUI.Active = true
GUI.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
GUI.BorderColor3 = Color3.new(0.0470588, 0.0745098, 0.0941177)
GUI.BorderSizePixel = 4
GUI.Position = UDim2.new(0.228915662, 0, 0.147940069, 0)
GUI.Size = UDim2.new(0, 480, 0, 192)
GUI.Visible = false
GUI.Draggable = true

F1.Name = "F1"
F1.Parent = GUI
F1.BackgroundColor3 = Color3.new(0, 0, 0)
F1.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
F1.BorderSizePixel = 3
F1.Position = UDim2.new(0.0375000015, 0, 0.195382893, 0)
F1.Size = UDim2.new(0, 131, 0, 23)
F1.Font = Enum.Font.Cartoon
F1.Text = "Fist Farm"
F1.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
F1.TextScaled = true
F1.TextSize = 14
F1.TextWrapped = true

F2.Name = "F2"
F2.Parent = GUI
F2.BackgroundColor3 = Color3.new(0, 0, 0)
F2.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
F2.BorderSizePixel = 3
F2.Position = UDim2.new(0.381249994, 0, 0.195382893, 0)
F2.Size = UDim2.new(0, 142, 0, 23)
F2.Font = Enum.Font.Cartoon
F2.Text = "Fist Farm Rock"
F2.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
F2.TextScaled = true
F2.TextSize = 14
F2.TextWrapped = true

F3.Name = "F3"
F3.Parent = GUI
F3.BackgroundColor3 = Color3.new(0, 0, 0)
F3.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
F3.BorderSizePixel = 3
F3.Position = UDim2.new(0.731249988, 0, 0.195382893, 0)
F3.Size = UDim2.new(0, 123, 0, 23)
F3.Font = Enum.Font.Cartoon
F3.Text = "Fist Farm Crystal"
F3.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
F3.TextScaled = true
F3.TextSize = 14
F3.TextWrapped = true

P1.Name = "P1"
P1.Parent = GUI
P1.BackgroundColor3 = Color3.new(0, 0, 0)
P1.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
P1.BorderSizePixel = 3
P1.Position = UDim2.new(0.0375000015, 0, 0.412544549, 0)
P1.Size = UDim2.new(0, 131, 0, 23)
P1.Font = Enum.Font.Cartoon
P1.Text = "Psychic Farm"
P1.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
P1.TextScaled = true
P1.TextSize = 14
P1.TextWrapped = true

P2.Name = "P2"
P2.Parent = GUI
P2.BackgroundColor3 = Color3.new(0, 0, 0)
P2.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
P2.BorderSizePixel = 3
P2.Position = UDim2.new(0.381249994, 0, 0.427662969, 0)
P2.Size = UDim2.new(0, 142, 0, 23)
P2.Font = Enum.Font.Cartoon
P2.Text = "Psychic Farm x10"
P2.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
P2.TextScaled = true
P2.TextSize = 14
P2.TextWrapped = true

BT1.Name = "BT1"
BT1.Parent = GUI
BT1.BackgroundColor3 = Color3.new(0, 0, 0)
BT1.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
BT1.BorderSizePixel = 3
BT1.Position = UDim2.new(0.381249994, 0, 0.620915055, 0)
BT1.Size = UDim2.new(0, 142, 0, 23)
BT1.Font = Enum.Font.Cartoon
BT1.Text = "BT Farm"
BT1.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
BT1.TextScaled = true
BT1.TextSize = 14
BT1.TextWrapped = true

J1.Name = "J1"
J1.Parent = GUI
J1.BackgroundColor3 = Color3.new(0, 0, 0)
J1.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
J1.BorderSizePixel = 3
J1.Position = UDim2.new(0.0375000015, 0, 0.622657299, 0)
J1.Size = UDim2.new(0, 131, 0, 23)
J1.Font = Enum.Font.Cartoon
J1.Text = "Jump Farm"
J1.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
J1.TextScaled = true
J1.TextSize = 14
J1.TextWrapped = true

S1.Name = "S1"
S1.Parent = GUI
S1.BackgroundColor3 = Color3.new(0, 0, 0)
S1.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
S1.BorderSizePixel = 3
S1.Position = UDim2.new(0.381249994, 0, 0.816684306, 0)
S1.Size = UDim2.new(0, 142, 0, 23)
S1.Font = Enum.Font.Cartoon
S1.Text = "Speed Farm"
S1.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
S1.TextScaled = true
S1.TextSize = 14
S1.TextWrapped = true

TextLabel.Parent = GUI
TextLabel.BackgroundColor3 = Color3.new(0.254902, 0.254902, 0.254902)
TextLabel.Size = UDim2.new(0, 480, 0, 24)
TextLabel.Font = Enum.Font.SciFi
TextLabel.Text = "Super Hero Training Simulator"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

Fun.Name = "Fun"
Fun.Parent = GUI
Fun.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
Fun.Position = UDim2.new(0.702384531, 0, 0.745267749, 0)
Fun.Size = UDim2.new(0, 143, 0, 19)
Fun.Font = Enum.Font.SourceSans
Fun.Text = "Credits to FunTrator"
Fun.TextColor3 = Color3.new(0, 0, 0)
Fun.TextSize = 14

GUIC.Name = "GUIC"
GUIC.Parent = GUI
GUIC.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
GUIC.Position = UDim2.new(0.702384531, 0, 0.86868608, 0)
GUIC.Size = UDim2.new(0, 143, 0, 19)
GUIC.Font = Enum.Font.SourceSans
GUIC.Text = "GUI > Tokumei/Aresuu"
GUIC.TextColor3 = Color3.new(0, 0, 0)
GUIC.TextSize = 14

TP.Name = "TP"
TP.Parent = GUI
TP.BackgroundColor3 = Color3.new(0, 0, 0)
TP.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
TP.BorderSizePixel = 3
TP.Position = UDim2.new(0.0375000015, 0, 0.81472832, 0)
TP.Size = UDim2.new(0, 131, 0, 23)
TP.Font = Enum.Font.Cartoon
TP.Text = "Teleport"
TP.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
TP.TextScaled = true
TP.TextSize = 14
TP.TextWrapped = true

ONCE.Name = "ONCE"
ONCE.Parent = TP
ONCE.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
ONCE.BorderColor3 = Color3.new(0, 0, 0)
ONCE.BorderSizePixel = 4
ONCE.Position = UDim2.new(-1.21374047, 0, -5.43478251, 0)
ONCE.Size = UDim2.new(0, 126, 0, 156)
ONCE.Visible = false

DD.Name = "DD"
DD.Parent = ONCE
DD.BackgroundColor3 = Color3.new(0, 0, 0)
DD.BackgroundTransparency = 1
DD.Size = UDim2.new(0, 126, 0, 156)
DD.Image = "rbxassetid://2354968170"

SafeZone.Name = "Safe Zone"
SafeZone.Parent = ONCE
SafeZone.BackgroundColor3 = Color3.new(1, 1, 1)
SafeZone.BackgroundTransparency = 0.80000001192093
SafeZone.Position = UDim2.new(0.103174567, 0, 0.0512820482, 0)
SafeZone.Size = UDim2.new(0, 99, 0, 22)
SafeZone.Font = Enum.Font.Cartoon
SafeZone.Text = "Safe Zone"
SafeZone.TextColor3 = Color3.new(0, 0, 0)
SafeZone.TextScaled = true
SafeZone.TextSize = 14
SafeZone.TextWrapped = true

CityPort.Name = "City Port"
CityPort.Parent = ONCE
CityPort.BackgroundColor3 = Color3.new(1, 1, 1)
CityPort.BackgroundTransparency = 0.80000001192093
CityPort.Position = UDim2.new(0.103174567, 0, 0.192307711, 0)
CityPort.Size = UDim2.new(0, 99, 0, 22)
CityPort.Font = Enum.Font.Cartoon
CityPort.Text = "City Port"
CityPort.TextColor3 = Color3.new(0, 0, 0)
CityPort.TextScaled = true
CityPort.TextSize = 14
CityPort.TextWrapped = true

IceMountain.Name = "Ice Mountain"
IceMountain.Parent = ONCE
IceMountain.BackgroundColor3 = Color3.new(1, 1, 1)
IceMountain.BackgroundTransparency = 0.80000001192093
IceMountain.Position = UDim2.new(0.103174567, 0, 0.333333373, 0)
IceMountain.Size = UDim2.new(0, 99, 0, 22)
IceMountain.Font = Enum.Font.Cartoon
IceMountain.Text = "Ice Mountain"
IceMountain.TextColor3 = Color3.new(0, 0, 0)
IceMountain.TextScaled = true
IceMountain.TextSize = 14
IceMountain.TextWrapped = true

Tornado.Name = "Tornado"
Tornado.Parent = ONCE
Tornado.BackgroundColor3 = Color3.new(1, 1, 1)
Tornado.BackgroundTransparency = 0.80000001192093
Tornado.Position = UDim2.new(0.103174567, 0, 0.474358916, 0)
Tornado.Size = UDim2.new(0, 99, 0, 22)
Tornado.Font = Enum.Font.Cartoon
Tornado.Text = "Tornado"
Tornado.TextColor3 = Color3.new(0, 0, 0)
Tornado.TextScaled = true
Tornado.TextSize = 14
Tornado.TextWrapped = true

Volcano.Name = "Volcano"
Volcano.Parent = ONCE
Volcano.BackgroundColor3 = Color3.new(1, 1, 1)
Volcano.BackgroundTransparency = 0.80000001192093
Volcano.Position = UDim2.new(0.103174567, 0, 0.615384698, 0)
Volcano.Size = UDim2.new(0, 99, 0, 22)
Volcano.Font = Enum.Font.Cartoon
Volcano.Text = "Volcano"
Volcano.TextColor3 = Color3.new(0, 0, 0)
Volcano.TextScaled = true
Volcano.TextSize = 14
Volcano.TextWrapped = true

Crystal.Name = "Crystal"
Crystal.Parent = ONCE
Crystal.BackgroundColor3 = Color3.new(1, 1, 1)
Crystal.BackgroundTransparency = 0.80000001192093
Crystal.Position = UDim2.new(0.103174567, 0, 0.756410241, 0)
Crystal.Size = UDim2.new(0, 99, 0, 22)
Crystal.Font = Enum.Font.Cartoon
Crystal.Text = "Crystal"
Crystal.TextColor3 = Color3.new(0, 0, 0)
Crystal.TextScaled = true
Crystal.TextSize = 14
Crystal.TextWrapped = true

S5.Name = "S5"
S5.Parent = GUI
S5.BackgroundColor3 = Color3.new(0, 0, 0)
S5.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
S5.BorderSizePixel = 3
S5.Position = UDim2.new(0.731249988, 0, 0.380514711, 0)
S5.Size = UDim2.new(0, 123, 0, 23)
S5.Font = Enum.Font.Cartoon
S5.Text = "Speed Farm x2"
S5.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
S5.TextScaled = true
S5.TextSize = 14
S5.TextWrapped = true

J5.Name = "J5"
J5.Parent = GUI
J5.BackgroundColor3 = Color3.new(0, 0, 0)
J5.BorderColor3 = Color3.new(0.227451, 0.227451, 0.227451)
J5.BorderSizePixel = 3
J5.Position = UDim2.new(0.731249988, 0, 0.575163424, 0)
J5.Size = UDim2.new(0, 123, 0, 23)
J5.Font = Enum.Font.Cartoon
J5.Text = "Jump Farm x2"
J5.TextColor3 = Color3.new(0.443137, 0.443137, 0.443137)
J5.TextScaled = true
J5.TextSize = 14
J5.TextWrapped = true

Close.Name = "Close"
Close.Parent = SUPEREZ
Close.BackgroundColor3 = Color3.new(0, 0, 0)
Close.BorderColor3 = Color3.new(0.317647, 0.203922, 0.564706)
Close.BorderSizePixel = 3
Close.Position = UDim2.new(0.013386881, 0, 0.563670397, 0)
Close.Size = UDim2.new(0, 73, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14

Open.Name = "Open"
Open.Parent = SUPEREZ
Open.BackgroundColor3 = Color3.new(0.458824, 0.0980392, 1)
Open.BorderColor3 = Color3.new(0.317647, 0.203922, 0.564706)
Open.BorderSizePixel = 3
Open.Position = UDim2.new(0.013386881, 0, 0.563670397, 0)
Open.Size = UDim2.new(0, 73, 0, 20)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextSize = 14
-- Scripts:

-- notify --
 
function notify(msg)
game.StarterGui:SetCore('SendNotification', {
Title = 'Get Rekt';
Text = msg;
Duration = 5;
})
end

J1.MouseButton1Click:connect(function()
	while true do
wait()
local A_1 = 
{
[1] = "+JF1"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

S1.MouseButton1Click:connect(function()
	while true do
wait()
local A_1 = 
{
[1] = "+MS1"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

S5.MouseButton1Click:connect(function()
	while true do
wait()
local A_1 = 
{
[1] = "+MS5"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

J5.MouseButton1Click:connect(function()
	while true do
wait()
local A_1 = 
{
[1] = "+JF5"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

F1.MouseButton1Click:connect(function()
	while true do
wait()
local A_1 = 
{
[1] = "+FS1"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

F2.MouseButton1Click:connect(function()
		while true do
wait()
local A_1 = 
{
[1] = "+FS2"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

F3.MouseButton1Click:connect(function()
		while true do
wait()
local A_1 = 
{
[1] = "+FS3"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

P1.MouseButton1Click:connect(function()
		while true do
wait()
local A_1 = 
{
[1] = "+PP1"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

P2.MouseButton1Click:connect(function()
			while true do
wait()
local A_1 = 
{
[1] = "+PP2"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

BT1.MouseButton1Click:connect(function()
			while true do
wait()
local A_1 = 
{
[1] = "+BT1"
}
local Event = game.ReplicatedStorage.RemoteEvent
Event:FireServer(A_1)
end 
end)

Open.MouseButton1Click:connect(function()
	GUI.Visible = true
	Open.Visible = false
	Close.Visible = true
end)

Close.MouseButton1Click:connect(function()
	GUI.Visible = false
	Open.Visible = true
	Close.Visible = false
end)

TP.MouseButton1Click:connect(function()
                if TP == true then
                    TP = false
                    ONCE.Visible = false
                else
                    TP = true
                    ONCE.Visible = true
                end
        end)


CityPort.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(341.4534, 263.432434, -408.41333) 
	notify'Teleported to City Port'
end)

SafeZone.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(459.3638, 248.993805, 892.707764) 
	notify'Teleported to Safe Zone'
end)

Tornado.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2301.5061, 1003.84021, 1069.53088) 
	notify'Teleported to Tornado'
end)

IceMountain.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1577.74976, 256.837982, 2232.5354) 
	notify'Teleported to Ice Mountain'
end)

Volcano.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1971.78845, 749.285645, -1904.39258)
	notify'Teleported to Volcano'
end)

Crystal.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2278.21411, 1941.96082, 1017.19659)
	notify'Teleported to Crystal'
end)