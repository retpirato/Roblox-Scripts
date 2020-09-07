-- Made by Tokumei/Aresuu
-- Instances:
local VehicleSimulator = Instance.new("ScreenGui")
local VSV1 = Instance.new("Frame")
local GiveAllPerks = Instance.new("TextButton")
local SuperCar = Instance.new("TextButton")
local CrateESP = Instance.new("TextButton")
local Speed = Instance.new("TextButton")
local SpeedBind = Instance.new("TextBox")
local Torque = Instance.new("TextButton")
local Torquet = Instance.new("TextBox")
local NitroSpeed = Instance.new("TextButton")
local NST = Instance.new("TextBox")
local Title = Instance.new("TextLabel")
local TeleportLT = Instance.new("TextButton")
local TeleportToCar = Instance.new("TextButton")
local MadebyTokumeiAresuu = Instance.new("TextLabel")
local CreditOwners = Instance.new("TextLabel")
local NitroForce = Instance.new("TextButton")
local NFT = Instance.new("TextBox")
local JumpHeight = Instance.new("TextButton")
local JHT = Instance.new("TextBox")
local TptoCrate = Instance.new("TextButton")
local Open = Instance.new("TextButton")
local Close = Instance.new("TextButton")
--Properties:
VehicleSimulator.Name = "Vehicle Simulator"
VehicleSimulator.Parent = game.CoreGui

VSV1.Name = "VSV1"
VSV1.Parent = VehicleSimulator
VSV1.Active = true
VSV1.BackgroundColor3 = Color3.new(0, 0, 0)
VSV1.BackgroundTransparency = 0.10000000149012
VSV1.BorderColor3 = Color3.new(0.501961, 0, 0)
VSV1.BorderSizePixel = 6
VSV1.Position = UDim2.new(0.155411661, 0, 0.117529884, 0)
VSV1.Size = UDim2.new(0, 325, 0, 332)
VSV1.Draggable = true
VSV1.Visible = true

GiveAllPerks.Name = "Give All Perks"
GiveAllPerks.Parent = VSV1
GiveAllPerks.BackgroundColor3 = Color3.new(1, 0, 0.4)
GiveAllPerks.BackgroundTransparency = 0.20000000298023
GiveAllPerks.BorderColor3 = Color3.new(0, 0, 0)
GiveAllPerks.BorderSizePixel = 0
GiveAllPerks.Position = UDim2.new(0, 0, 0.777108431, 0)
GiveAllPerks.Size = UDim2.new(0, 148, 0, 36)
GiveAllPerks.Font = Enum.Font.Cartoon
GiveAllPerks.Text = "Give All Perks"
GiveAllPerks.TextColor3 = Color3.new(0, 0, 0)
GiveAllPerks.TextScaled = true
GiveAllPerks.TextSize = 14
GiveAllPerks.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
GiveAllPerks.TextWrapped = true

SuperCar.Name = "Super Car"
SuperCar.Parent = VSV1
SuperCar.BackgroundColor3 = Color3.new(1, 0, 0.4)
SuperCar.BackgroundTransparency = 0.20000000298023
SuperCar.BorderColor3 = Color3.new(0, 0, 0)
SuperCar.BorderSizePixel = 0
SuperCar.Position = UDim2.new(0.464970767, 0, 0.777963579, 0)
SuperCar.Size = UDim2.new(0, 174, 0, 36)
SuperCar.Font = Enum.Font.Cartoon
SuperCar.Text = "Super Car "
SuperCar.TextColor3 = Color3.new(0, 0, 0)
SuperCar.TextScaled = true
SuperCar.TextSize = 14
SuperCar.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
SuperCar.TextWrapped = true

CrateESP.Name = "Crate ESP"
CrateESP.Parent = VSV1
CrateESP.BackgroundColor3 = Color3.new(1, 0, 0.4)
CrateESP.BackgroundTransparency = 0.20000000298023
CrateESP.BorderColor3 = Color3.new(0, 0, 0)
CrateESP.BorderSizePixel = 0
CrateESP.Position = UDim2.new(0, 0, 0.654845238, 0)
CrateESP.Size = UDim2.new(0, 148, 0, 41)
CrateESP.Font = Enum.Font.Cartoon
CrateESP.Text = "Crate ESP"
CrateESP.TextColor3 = Color3.new(0, 0, 0)
CrateESP.TextScaled = true
CrateESP.TextSize = 14
CrateESP.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
CrateESP.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = VSV1
Speed.BackgroundColor3 = Color3.new(1, 0, 0.4)
Speed.BackgroundTransparency = 0.20000000298023
Speed.BorderColor3 = Color3.new(0, 0, 0)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.0182370823, 0, 0.0913978517, 0)
Speed.Size = UDim2.new(0, 148, 0, 26)
Speed.Font = Enum.Font.Cartoon
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(0, 0, 0)
Speed.TextScaled = true
Speed.TextSize = 14
Speed.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
Speed.TextWrapped = true

SpeedBind.Name = "SpeedBind"
SpeedBind.Parent = Speed
SpeedBind.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
SpeedBind.BorderColor3 = Color3.new(0, 0, 0)
SpeedBind.BorderSizePixel = 2
SpeedBind.Position = UDim2.new(1.07476318, 0, 0, 0)
SpeedBind.Size = UDim2.new(0, 151, 0, 26)
SpeedBind.Font = Enum.Font.Cartoon
SpeedBind.Text = "Amount"
SpeedBind.TextColor3 = Color3.new(0, 0, 0)
SpeedBind.TextScaled = true
SpeedBind.TextSize = 14
SpeedBind.TextWrapped = true

Torque.Name = "Torque"
Torque.Parent = VSV1
Torque.BackgroundColor3 = Color3.new(1, 0, 0.4)
Torque.BackgroundTransparency = 0.20000000298023
Torque.BorderColor3 = Color3.new(0, 0, 0)
Torque.BorderSizePixel = 0
Torque.Position = UDim2.new(0.0182370823, 0, 0.16731441, 0)
Torque.Size = UDim2.new(0, 148, 0, 26)
Torque.Font = Enum.Font.Cartoon
Torque.Text = "Torque"
Torque.TextColor3 = Color3.new(0, 0, 0)
Torque.TextScaled = true
Torque.TextSize = 14
Torque.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
Torque.TextWrapped = true

Torquet.Name = "Torquet"
Torquet.Parent = Torque
Torquet.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
Torquet.BorderColor3 = Color3.new(0, 0, 0)
Torquet.BorderSizePixel = 2
Torquet.Position = UDim2.new(1.07476318, 0, 0, 0)
Torquet.Size = UDim2.new(0, 151, 0, 26)
Torquet.Font = Enum.Font.Cartoon
Torquet.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
Torquet.Text = "Amount"
Torquet.TextColor3 = Color3.new(0, 0, 0)
Torquet.TextScaled = true
Torquet.TextSize = 14
Torquet.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
Torquet.TextWrapped = true

NitroSpeed.Name = "Nitro Speed"
NitroSpeed.Parent = VSV1
NitroSpeed.BackgroundColor3 = Color3.new(1, 0, 0.4)
NitroSpeed.BackgroundTransparency = 0.20000000298023
NitroSpeed.BorderColor3 = Color3.new(0, 0, 0)
NitroSpeed.BorderSizePixel = 0
NitroSpeed.Position = UDim2.new(0.0182370823, 0, 0.246243045, 0)
NitroSpeed.Size = UDim2.new(0, 148, 0, 26)
NitroSpeed.Font = Enum.Font.Cartoon
NitroSpeed.Text = "Nitro Speed"
NitroSpeed.TextColor3 = Color3.new(0, 0, 0)
NitroSpeed.TextScaled = true
NitroSpeed.TextSize = 14
NitroSpeed.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
NitroSpeed.TextWrapped = true

NST.Name = "NST"
NST.Parent = NitroSpeed
NST.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
NST.BorderColor3 = Color3.new(0, 0, 0)
NST.BorderSizePixel = 2
NST.Position = UDim2.new(1.07476318, 0, 0, 0)
NST.Size = UDim2.new(0, 151, 0, 26)
NST.Font = Enum.Font.Cartoon
NST.Text = "Amount"
NST.TextColor3 = Color3.new(0, 0, 0)
NST.TextScaled = true
NST.TextSize = 14
NST.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
NST.TextWrapped = true

Title.Name = "Title"
Title.Parent = VSV1
Title.BackgroundColor3 = Color3.new(0.901961, 0.0980392, 0.419608)
Title.BorderColor3 = Color3.new(0.0117647, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 329, 0, 22)
Title.Font = Enum.Font.Cartoon
Title.Text = "Vehicle Simulator"
Title.TextColor3 = Color3.new(0, 0, 0)
Title.TextScaled = true
Title.TextSize = 16
Title.TextWrapped = true

TeleportLT.Name = "TeleportLT"
TeleportLT.Parent = VSV1
TeleportLT.BackgroundColor3 = Color3.new(1, 0, 0.4)
TeleportLT.BackgroundTransparency = 0.20000000298023
TeleportLT.BorderColor3 = Color3.new(0, 0, 0)
TeleportLT.BorderSizePixel = 0
TeleportLT.Position = UDim2.new(0.464970767, 0, 0.529569924, 0)
TeleportLT.Size = UDim2.new(0, 174, 0, 41)
TeleportLT.Font = Enum.Font.Cartoon
TeleportLT.Text = "Teleport to Long Tunnel"
TeleportLT.TextColor3 = Color3.new(0, 0, 0)
TeleportLT.TextScaled = true
TeleportLT.TextSize = 14
TeleportLT.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
TeleportLT.TextWrapped = true

TeleportToCar.Name = "Teleport To Car"
TeleportToCar.Parent = VSV1
TeleportToCar.BackgroundColor3 = Color3.new(1, 0, 0.4)
TeleportToCar.BackgroundTransparency = 0.20000000298023
TeleportToCar.BorderColor3 = Color3.new(0, 0, 0)
TeleportToCar.BorderSizePixel = 0
TeleportToCar.Position = UDim2.new(0, 0, 0.529569924, 0)
TeleportToCar.Size = UDim2.new(0, 148, 0, 41)
TeleportToCar.Font = Enum.Font.Cartoon
TeleportToCar.Text = "Teleport To Car"
TeleportToCar.TextColor3 = Color3.new(0, 0, 0)
TeleportToCar.TextScaled = true
TeleportToCar.TextSize = 14
TeleportToCar.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
TeleportToCar.TextWrapped = true

MadebyTokumeiAresuu.Name = "Made by Tokumei/Aresuu"
MadebyTokumeiAresuu.Parent = VSV1
MadebyTokumeiAresuu.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
MadebyTokumeiAresuu.BorderColor3 = Color3.new(0, 0, 0)
MadebyTokumeiAresuu.BorderSizePixel = 0
MadebyTokumeiAresuu.Position = UDim2.new(0, 0, 0.909638584, 0)
MadebyTokumeiAresuu.Size = UDim2.new(0, 144, 0, 30)
MadebyTokumeiAresuu.Font = Enum.Font.Cartoon
MadebyTokumeiAresuu.Text = "Made by Tokumei/Aresuu"
MadebyTokumeiAresuu.TextColor3 = Color3.new(0, 0, 0)
MadebyTokumeiAresuu.TextSize = 14

CreditOwners.Name = "Credit Owners"
CreditOwners.Parent = MadebyTokumeiAresuu
CreditOwners.BackgroundColor3 = Color3.new(0.278431, 0.278431, 0.278431)
CreditOwners.BorderColor3 = Color3.new(0, 0, 0)
CreditOwners.BorderSizePixel = 0
CreditOwners.Position = UDim2.new(1.0625, 0, 0, 0)
CreditOwners.Size = UDim2.new(0, 172, 0, 30)
CreditOwners.Font = Enum.Font.Cartoon
CreditOwners.Text = "Credit to LeviTheOtaku for the Scripts"
CreditOwners.TextColor3 = Color3.new(0, 0, 0)
CreditOwners.TextScaled = true
CreditOwners.TextSize = 14
CreditOwners.TextWrapped = true

NitroForce.Name = "Nitro Force"
NitroForce.Parent = VSV1
NitroForce.BackgroundColor3 = Color3.new(1, 0, 0.4)
NitroForce.BackgroundTransparency = 0.20000000298023
NitroForce.BorderColor3 = Color3.new(0, 0, 0)
NitroForce.BorderSizePixel = 0
NitroForce.Position = UDim2.new(0.0182370823, 0, 0.325171649, 0)
NitroForce.Size = UDim2.new(0, 148, 0, 26)
NitroForce.Font = Enum.Font.Cartoon
NitroForce.Text = "Nitro Force"
NitroForce.TextColor3 = Color3.new(0, 0, 0)
NitroForce.TextScaled = true
NitroForce.TextSize = 14
NitroForce.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
NitroForce.TextWrapped = true

NFT.Name = "NFT"
NFT.Parent = NitroForce
NFT.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
NFT.BorderColor3 = Color3.new(0, 0, 0)
NFT.BorderSizePixel = 2
NFT.Position = UDim2.new(1.07476318, 0, 0, 0)
NFT.Size = UDim2.new(0, 151, 0, 26)
NFT.Font = Enum.Font.Cartoon
NFT.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
NFT.Text = "Amount"
NFT.TextColor3 = Color3.new(0, 0, 0)
NFT.TextScaled = true
NFT.TextSize = 14
NFT.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
NFT.TextWrapped = true

JumpHeight.Name = "Jump Height"
JumpHeight.Parent = VSV1
JumpHeight.BackgroundColor3 = Color3.new(1, 0, 0.4)
JumpHeight.BackgroundTransparency = 0.20000000298023
JumpHeight.BorderColor3 = Color3.new(0, 0, 0)
JumpHeight.BorderSizePixel = 0
JumpHeight.Position = UDim2.new(0.0182370823, 0, 0.404100299, 0)
JumpHeight.Size = UDim2.new(0, 148, 0, 26)
JumpHeight.Font = Enum.Font.Cartoon
JumpHeight.Text = "Jump Height"
JumpHeight.TextColor3 = Color3.new(0, 0, 0)
JumpHeight.TextScaled = true
JumpHeight.TextSize = 14
JumpHeight.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
JumpHeight.TextWrapped = true

JHT.Name = "JHT"
JHT.Parent = JumpHeight
JHT.BackgroundColor3 = Color3.new(0.368627, 0.368627, 0.368627)
JHT.BorderColor3 = Color3.new(0, 0, 0)
JHT.BorderSizePixel = 2
JHT.Position = UDim2.new(1.07476318, 0, 0, 0)
JHT.Size = UDim2.new(0, 151, 0, 26)
JHT.Font = Enum.Font.Cartoon
JHT.PlaceholderColor3 = Color3.new(0.698039, 0.698039, 0.698039)
JHT.Text = "Amount"
JHT.TextColor3 = Color3.new(0, 0, 0)
JHT.TextScaled = true
JHT.TextSize = 14
JHT.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
JHT.TextWrapped = true

TptoCrate.Name = "Tp to Crate"
TptoCrate.Parent = VSV1
TptoCrate.BackgroundColor3 = Color3.new(1, 0, 0.4)
TptoCrate.BackgroundTransparency = 0.20000000298023
TptoCrate.BorderColor3 = Color3.new(0, 0, 0)
TptoCrate.BorderSizePixel = 0
TptoCrate.Position = UDim2.new(0.464970767, 0, 0.654845238, 0)
TptoCrate.Size = UDim2.new(0, 174, 0, 41)
TptoCrate.Font = Enum.Font.Cartoon
TptoCrate.Text = "TP to Crates"
TptoCrate.TextColor3 = Color3.new(0, 0, 0)
TptoCrate.TextScaled = true
TptoCrate.TextSize = 14
TptoCrate.TextStrokeColor3 = Color3.new(1, 0, 0.0156863)
TptoCrate.TextWrapped = true

Open.Name = "Open"
Open.Parent = VehicleSimulator
Open.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Open.BorderColor3 = Color3.new(0.709804, 0, 0.0117647)
Open.BorderSizePixel = 6
Open.Position = UDim2.new(0.00740055507, 0, 0.553784847, 0)
Open.Size = UDim2.new(0, 114, 0, 19)
Open.Font = Enum.Font.Cartoon
Open.Text = "Open"
Open.TextColor3 = Color3.new(0, 0, 0)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true

Close.Name = "Close"
Close.Parent = VehicleSimulator
Close.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Close.BorderColor3 = Color3.new(0, 0, 0)
Close.BorderSizePixel = 6
Close.Position = UDim2.new(0.00740055507, 0, 0.553784847, 0)
Close.Size = UDim2.new(0, 114, 0, 19)
Close.Font = Enum.Font.Cartoon
Close.Text = "Close"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
-- Scripts:

Open.MouseButton1Click:connect(function()
	VSV1.Visible = true
	Open.Visible = false
	Close.Visible = true
end)

Close.MouseButton1Click:connect(function()
	VSV1.Visible = false
	Open.Visible = true
	Close.Visible = false
end)


function findCar()
local vehicle = workspace.Vehicles:getChildren()
for i=1,#vehicle do
if vehicle[i]:findFirstChild("owner") then
if vehicle[i].owner.Value == game.Players.LocalPlayer.Name then
myCar = vehicle[i]
end
end
end
end


SuperCar.MouseButton1Down:connect(function()
findCar()
myCar.Handling.MaxSpeed.Value = 10000
myCar.Handling.Torque.Value = 40000
myCar.Handling.SteeringRadiusConstant.Value = 15000
myCar.Handling.FrictionRoad.Value = 250
myCar.Handling.Nitro.NitroSpeed.Value = 500
myCar.Handling.Nitro.NitroForce.Value = 5000
myCar.Handling.TurboJump.TurboJumpHeight.Value = 250
end)

Speed.MouseButton1Down:connect(function()
findCar()
myCar.Handling.MaxSpeed.Value = SpeedBind.Text
myCar.Handling.SteeringRadiusConstant.Value = 15000
end)

Torque.MouseButton1Down:connect(function()
findCar()
myCar.Handling.Torque.Value = Torquet.Text
end)

NitroSpeed.MouseButton1Down:connect(function()
findCar()
myCar.Handling.Nitro.NitroSpeed.Value = NST.Text
end)

NitroForce.MouseButton1Down:connect(function()
findCar()
myCar.Handling.Nitro.NitroForce.Value = NFT.Text
end)

JumpHeight.MouseButton1Down:connect(function()
findCar()
myCar.Handling.TurboJump.TurboJumpHeight.Value = JHT.Text
end)

GiveAllPerks.MouseButton1Down:connect(function()
game:GetService("Players").LocalPlayer.UserId = 1099580
end)

CrateESP.MouseButton1Down:connect(function()
	local crates = workspace:getChildren()
for i=1,#crates do
if crates[i].ClassName == "Model" then
local crates2 = crates[i]:getChildren()
for i=1,#crates2 do
if crates2[i].ClassName == "Model" then
local crates3 = crates2[i]:getChildren()
for i=1,#crates3 do
if crates3[i].ClassName == "MeshPart" then
if crates3[i]:findFirstChild("Smoke") then
if crates3[i]:findFirstChild("BoxHandleAdornment") then
	crates3[i]:findFirstChild("BoxHandleAdornment"):Remove()
else
local a = Instance.new("BoxHandleAdornment",crates3[i])
a.Size = Vector3.new(10,500,6)
a.SizeRelativeOffset = Vector3.new(0,135,0)
a.Color3 = Color3.fromRGB(0,255,0)
a.Transparency = 0.5
a.AlwaysOnTop = true
a.Adornee = crates3[i]
a.ZIndex = 1
local b = Instance.new("BoxHandleAdornment",crates3[i])
b.Size = Vector3.new(10,4,6)
b.Color3 = Color3.fromRGB(0,0,255)
b.Transparency = 0.3
b.AlwaysOnTop = true
b.Adornee = crates3[i]
b.ZIndex = 1
end
end
end
end
end
end
end
end
end)

TptoCrate.MouseButton1Down:connect(function()
	local crates = workspace:getChildren()
for i=1,#crates do
if crates[i].ClassName == "Model" then
local crates2 = crates[i]:getChildren()
for i=1,#crates2 do
if crates2[i].ClassName == "Model" then
local crates3 = crates2[i]:getChildren()
for i=1,#crates3 do
if crates3[i].ClassName == "MeshPart" then
if crates3[i]:findFirstChild("Smoke") then
game.Players.LocalPlayer.Character:MoveTo(Vector3.new(crates3[i].Position.X+30,crates3[i].Position.Y+5,crates3[i].Position.Z))
wait()
game.Players.LocalPlayer.Character.Humanoid:MoveTo(Vector3.new(crates3[i].Position.X,crates3[i].Position.Y,crates3[i].Position.Z))
wait(4)
end
end
end
end
end
end
end
end)

TeleportToCar.MouseButton1Down:connect(function()
	findCar()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(myCar.Chassis.VehicleSeat.Position+myCar.Chassis.VehicleSeat.SeatOffset.Value)
end)

TeleportLT.MouseButton1Down:connect(function()
	findCar()
myCar:MoveTo(Vector3.new(-2180,45,-3650)) 
end)