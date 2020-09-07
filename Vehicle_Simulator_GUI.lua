-- Made By DukyBG (?? ?????!)

-- Instances:
local VehicleSimulatorFuhaxor = Instance.new("ScreenGui")
local OpenFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")
local Main = Instance.new("Frame")
local BeautyA = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local BeautyB = Instance.new("Frame")
local Credit = Instance.new("TextLabel")
local Torque = Instance.new("TextButton")
local Torquet = Instance.new("TextBox")
local TptoCrate = Instance.new("TextButton")
local NitroSpeed = Instance.new("TextButton")
local NST = Instance.new("TextBox")
local TeleportToCar = Instance.new("TextButton")
local NitroForce = Instance.new("TextButton")
local NFT = Instance.new("TextBox")
local Speed = Instance.new("TextButton")
local SpeedBind = Instance.new("TextBox")
local CrateESP = Instance.new("TextButton")
local SuperCar = Instance.new("TextButton")
local GiveAllPerks = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local JumpHeight = Instance.new("TextButton")
local JHT = Instance.new("TextBox")
local AutoFarm = Instance.new("TextButton")
local Braking = Instance.new("TextButton")
local BrakingT = Instance.new("TextBox")
--Properties:
VehicleSimulatorFuhaxor.Name = "Vehicle Simulator Fuhaxor"
VehicleSimulatorFuhaxor.Parent = game.CoreGui
VehicleSimulatorFuhaxor.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = VehicleSimulatorFuhaxor
OpenFrame.BackgroundColor3 = Color3.new(0.666667, 0, 0.498039)
OpenFrame.BorderColor3 = Color3.new(0.666667, 0, 0.498039)
OpenFrame.Position = UDim2.new(0, 0, 0.55, 0)
OpenFrame.Size = UDim2.new(0, 69, 0, 27)
Open.MouseButton1Down:connect(function()
Main.Visible = true
OpenFrame.Visible = false
end)

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(0.666667, 0, 0.498039)
Open.BorderColor3 = Color3.new(0.666667, 0, 0.498039)
Open.Size = UDim2.new(0, 65, 0, 25)
Open.Font = Enum.Font.Cartoon
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 1, 1)
Open.TextSize = 30

Main.Name = "Main"
Main.Parent = VehicleSimulatorFuhaxor
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.133333, 0.133333, 0.133333)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.376574308, 0, 0.178571433, 0)
Main.Size = UDim2.new(0, 439, 0, 278)
Main.Visible = false
Main.Draggable = true

BeautyA.Name = "BeautyA"
BeautyA.Parent = Main
BeautyA.BackgroundColor3 = Color3.new(0.666667, 0, 1)
BeautyA.BorderColor3 = Color3.new(0.0627451, 0.0627451, 0.0627451)
BeautyA.BorderSizePixel = 0
BeautyA.Size = UDim2.new(0, 439, 0, 25)

Name.Name = "Name"
Name.Parent = BeautyA
Name.BackgroundColor3 = Color3.new(1, 1, 1)
Name.BackgroundTransparency = 1
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.316628695, 0, 0, 0)
Name.Size = UDim2.new(0, 154, 0, 25)
Name.Font = Enum.Font.Cartoon
Name.Text = "Vehicle Simulator Succ "
Name.TextColor3 = Color3.new(1, 1, 1)
Name.TextSize = 20

BeautyB.Name = "BeautyB"
BeautyB.Parent = Main
BeautyB.BackgroundColor3 = Color3.new(0.666667, 0, 1)
BeautyB.BorderColor3 = Color3.new(0.0627451, 0.0627451, 0.0627451)
BeautyB.BorderSizePixel = 0
BeautyB.Position = UDim2.new(0, 0, 0.91366905, 0)
BeautyB.Size = UDim2.new(0, 439, 0, 24)

Credit.Name = "Credit"
Credit.Parent = BeautyB
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.BorderSizePixel = 0
Credit.Size = UDim2.new(0, 439, 0, 24)
Credit.Font = Enum.Font.Cartoon
Credit.Text = "Gui Made By DukyBG , Scripts Made By someone"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16

Torque.Name = "Torque"
Torque.Parent = Main
Torque.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Torque.BorderSizePixel = 0
Torque.Position = UDim2.new(0.679532647, 0, 0.169338807, 0)
Torque.Size = UDim2.new(0, 67, 0, 38)
Torque.Font = Enum.Font.Cartoon
Torque.Text = "Torque"
Torque.TextColor3 = Color3.new(1, 1, 1)
Torque.TextSize = 25

Torquet.Name = "Torquet"
Torquet.Parent = Torque
Torquet.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Torquet.BorderSizePixel = 0
Torquet.Position = UDim2.new(1.08955228, 0, 4.47034836e-08, 0)
Torquet.Size = UDim2.new(0, 67, 0, 38)
Torquet.Font = Enum.Font.Cartoon
Torquet.Text = "Amount"
Torquet.TextColor3 = Color3.new(0, 0, 0)
Torquet.TextSize = 14
Torquet.TextWrapped = true

TptoCrate.Name = "TptoCrate"
TptoCrate.Parent = Main
TptoCrate.BackgroundColor3 = Color3.new(0.666667, 0, 1)
TptoCrate.BorderSizePixel = 0
TptoCrate.Position = UDim2.new(0.0262044966, 0, 0.165741712, 0)
TptoCrate.Size = UDim2.new(0, 126, 0, 38)
TptoCrate.Font = Enum.Font.Cartoon
TptoCrate.Text = "Tp to Crate"
TptoCrate.TextColor3 = Color3.new(1, 1, 1)
TptoCrate.TextSize = 25

NitroSpeed.Name = "NitroSpeed"
NitroSpeed.Parent = Main
NitroSpeed.BackgroundColor3 = Color3.new(0.666667, 0, 1)
NitroSpeed.BorderSizePixel = 0
NitroSpeed.Position = UDim2.new(0.346034855, 0, 0.169338807, 0)
NitroSpeed.Size = UDim2.new(0, 64, 0, 38)
NitroSpeed.Font = Enum.Font.Cartoon
NitroSpeed.Text = "Nitro Speed"
NitroSpeed.TextColor3 = Color3.new(1, 1, 1)
NitroSpeed.TextScaled = true
NitroSpeed.TextSize = 13
NitroSpeed.TextWrapped = true

NST.Name = "NST"
NST.Parent = NitroSpeed
NST.BackgroundColor3 = Color3.new(0.666667, 0, 1)
NST.BorderSizePixel = 0
NST.Position = UDim2.new(1.08955228, 0, 4.47034836e-08, 0)
NST.Size = UDim2.new(0, 67, 0, 38)
NST.Font = Enum.Font.Cartoon
NST.Text = "Amount"
NST.TextColor3 = Color3.new(0, 0, 0)
NST.TextSize = 14
NST.TextWrapped = true

TeleportToCar.Name = "TeleportToCar"
TeleportToCar.Parent = Main
TeleportToCar.BackgroundColor3 = Color3.new(0.666667, 0, 1)
TeleportToCar.BorderSizePixel = 0
TeleportToCar.Position = UDim2.new(0.026204519, 0, 0.332408428, 0)
TeleportToCar.Size = UDim2.new(0, 126, 0, 33)
TeleportToCar.Font = Enum.Font.Cartoon
TeleportToCar.Text = "Teleport To Car"
TeleportToCar.TextColor3 = Color3.new(1, 1, 1)
TeleportToCar.TextScaled = true
TeleportToCar.TextSize = 20
TeleportToCar.TextWrapped = true

NitroForce.Name = "NitroForce"
NitroForce.Parent = Main
NitroForce.BackgroundColor3 = Color3.new(0.666667, 0, 1)
NitroForce.BorderSizePixel = 0
NitroForce.Position = UDim2.new(0.346034855, 0, 0.336005569, 0)
NitroForce.Size = UDim2.new(0, 64, 0, 38)
NitroForce.Font = Enum.Font.Cartoon
NitroForce.Text = "Nitro Force"
NitroForce.TextColor3 = Color3.new(1, 1, 1)
NitroForce.TextSize = 17
NitroForce.TextWrapped = true

NFT.Name = "NFT"
NFT.Parent = NitroForce
NFT.BackgroundColor3 = Color3.new(0.666667, 0, 1)
NFT.BorderSizePixel = 0
NFT.Position = UDim2.new(1.08955228, 0, 4.47034836e-08, 0)
NFT.Size = UDim2.new(0, 67, 0, 38)
NFT.Font = Enum.Font.Cartoon
NFT.Text = "Amount"
NFT.TextColor3 = Color3.new(0, 0, 0)
NFT.TextSize = 14
NFT.TextWrapped = true

Speed.Name = "Speed"
Speed.Parent = Main
Speed.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.679532647, 0, 0.336005569, 0)
Speed.Size = UDim2.new(0, 67, 0, 38)
Speed.Font = Enum.Font.Cartoon
Speed.Text = "Speed"
Speed.TextColor3 = Color3.new(1, 1, 1)
Speed.TextSize = 25

SpeedBind.Name = "SpeedBind"
SpeedBind.Parent = Speed
SpeedBind.BackgroundColor3 = Color3.new(0.666667, 0, 1)
SpeedBind.BorderSizePixel = 0
SpeedBind.Position = UDim2.new(1.08955228, 0, 4.47034836e-08, 0)
SpeedBind.Size = UDim2.new(0, 67, 0, 38)
SpeedBind.Font = Enum.Font.Cartoon
SpeedBind.Text = "Amount"
SpeedBind.TextColor3 = Color3.new(0, 0, 0)
SpeedBind.TextSize = 14
SpeedBind.TextWrapped = true

CrateESP.Name = "CrateESP"
CrateESP.Parent = Main
CrateESP.BackgroundColor3 = Color3.new(0.666667, 0, 1)
CrateESP.BorderSizePixel = 0
CrateESP.Position = UDim2.new(0.0262044966, 0, 0.748543978, 0)
CrateESP.Size = UDim2.new(0, 126, 0, 38)
CrateESP.Font = Enum.Font.Cartoon
CrateESP.Text = "Crate ESP"
CrateESP.TextColor3 = Color3.new(1, 1, 1)
CrateESP.TextSize = 25

SuperCar.Name = "SuperCar"
SuperCar.Parent = Main
SuperCar.BackgroundColor3 = Color3.new(0.666667, 0, 1)
SuperCar.BorderSizePixel = 0
SuperCar.Position = UDim2.new(0.355146468, 0, 0.748544037, 0)
SuperCar.Size = UDim2.new(0, 126, 0, 38)
SuperCar.Font = Enum.Font.Cartoon
SuperCar.Text = "Super Car"
SuperCar.TextColor3 = Color3.new(1, 1, 1)
SuperCar.TextSize = 25

GiveAllPerks.Name = "GiveAllPerks"
GiveAllPerks.Parent = Main
GiveAllPerks.BackgroundColor3 = Color3.new(0.666667, 0, 1)
GiveAllPerks.BorderSizePixel = 0
GiveAllPerks.Position = UDim2.new(0.695478082, 0, 0.748543978, 0)
GiveAllPerks.Size = UDim2.new(0, 126, 0, 38)
GiveAllPerks.Font = Enum.Font.Cartoon
GiveAllPerks.Text = "Give All Perks"
GiveAllPerks.TextColor3 = Color3.new(1, 1, 1)
GiveAllPerks.TextSize = 20

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.935208917, 0, -0.00128471851, 0)
Close.Size = UDim2.new(0, 28, 0, 25)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 30
Close.MouseButton1Down:connect(function()
OpenFrame.Visible = true
Main.Visible = false
end)

JumpHeight.Name = "JumpHeight"
JumpHeight.Parent = Main
JumpHeight.BackgroundColor3 = Color3.new(0.666667, 0, 1)
JumpHeight.BorderSizePixel = 0
JumpHeight.Position = UDim2.new(0.346034855, 0, 0.497876078, 0)
JumpHeight.Size = UDim2.new(0, 64, 0, 38)
JumpHeight.Font = Enum.Font.Cartoon
JumpHeight.Text = "Jump Height"
JumpHeight.TextColor3 = Color3.new(1, 1, 1)
JumpHeight.TextScaled = true
JumpHeight.TextSize = 15
JumpHeight.TextWrapped = true

JHT.Name = "JHT"
JHT.Parent = JumpHeight
JHT.BackgroundColor3 = Color3.new(0.666667, 0, 1)
JHT.BorderSizePixel = 0
JHT.Position = UDim2.new(1.08955193, 0, 0, 0)
JHT.Size = UDim2.new(0, 67, 0, 38)
JHT.Font = Enum.Font.Cartoon
JHT.Text = "Amount"
JHT.TextColor3 = Color3.new(0, 0, 0)
JHT.TextSize = 14
JHT.TextWrapped = true

AutoFarm.Name = "AutoFarm"
AutoFarm.Parent = Main
AutoFarm.BackgroundColor3 = Color3.new(0.666667, 0, 1)
AutoFarm.BorderSizePixel = 0
AutoFarm.Position = UDim2.new(0.0262044966, 0, 0.496676952, 0)
AutoFarm.Size = UDim2.new(0, 126, 0, 38)
AutoFarm.Font = Enum.Font.Cartoon
AutoFarm.Text = "Auto Farm"
AutoFarm.TextColor3 = Color3.new(1, 1, 1)
AutoFarm.TextSize = 25

Braking.Name = "Braking"
Braking.Parent = Main
Braking.BackgroundColor3 = Color3.new(0.666667, 0, 1)
Braking.BorderSizePixel = 0
Braking.Position = UDim2.new(0.679532647, 0, 0.494278967, 0)
Braking.Size = UDim2.new(0, 67, 0, 38)
Braking.Font = Enum.Font.Cartoon
Braking.Text = "Braking"
Braking.TextColor3 = Color3.new(1, 1, 1)
Braking.TextScaled = true
Braking.TextSize = 23
Braking.TextWrapped = true

BrakingT.Name = "BrakingT"
BrakingT.Parent = Braking
BrakingT.BackgroundColor3 = Color3.new(0.666667, 0, 1)
BrakingT.BorderSizePixel = 0
BrakingT.Position = UDim2.new(1.08955228, 0, 4.47034836e-08, 0)
BrakingT.Size = UDim2.new(0, 67, 0, 38)
BrakingT.Font = Enum.Font.Cartoon
BrakingT.Text = "Amount"
BrakingT.TextColor3 = Color3.new(0, 0, 0)
BrakingT.TextSize = 14
BrakingT.TextWrapped = true
-- Scripts:

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

AutoFarm.MouseButton1Down:connect(function()
local waitTime = 3 --This will be the time it takes (seconds) until your car resets. See line 37
--Do not change anything below :)
local hint = Instance.new('Hint', Workspace) hint.Text = "Vehicle Simulator Autofarm loading..."
local found = false
local go = true

function findVehicle() --Finds your vehicle
    while not found do --Loops until your vehicle has been found
        local vehicles = Workspace.Vehicles:getChildren()
        for i=1,#vehicles do
            if vehicles[i]:findFirstChild'owner' then
                if vehicles[i].owner.Value == game:GetService'Players'.LocalPlayer.Name then -- Found your vehicle
                    found = true --Setting found to true so loop breaks
                    vehicle = vehicles[i] -- Declares vehicle variable to your vehicle
                    vehStats = vehicle.Handling -- Declares vehStats variable to vehicle stats folder
                    vehStats.MaxSpeed.Value = 800
                    vehStats.Torque.Value = 60000
                    vehStats.SteeringRadiusConstant.Value = 120000000
                elseif vehicles[i + 1] == nil and not found then
                    --Autorespawn would go here
                    hint.Text = "Please spawn and enter your vehicle!" --Your vehicle does not exist in the Workspace
                end
            end
        end
        wait(1) --Waiting before checking again so we don't crash
    end
    wait(2) --We've found the car. Waiting so the car can be properly placed on the highway
    vehicle.PrimaryPart = vehicle.Chassis.VehicleSeat
end

function farm() --This is where the magic happens :)
    hint.Text = "Finished loading! Autofarm initialized."
    while wait(waitTime) do --Waits x seconds before resetting car
        vehicle:SetPrimaryPartCFrame(CFrame.new(-2470,60,777)) --Teleports vehicle to highway
        game:GetService'VirtualUser':SetKeyUp("w") --Resets W key
        game:GetService'VirtualUser':SetKeyDown("w") --Presses W key to go forward
    end
end
findVehicle() --Calls the findVehicle function
while go do
    if not pcall(farm()) then --Calls farm function & checks for errors
        found = false  --If it errors, it sets found to false and continues looking for your vehicle.
        findVehicle() 
    end
end
end)

SuperCar.MouseButton1Down:connect(function()
findCar()
myCar.Handling.MaxSpeed.Value = 10000
myCar.Handling.Torque.Value = 55555
myCar.Handling.SteeringRadiusConstant.Value = 15000
myCar.Handling.FrictionRoad.Value = 250
myCar.Handling.Nitro.NitroSpeed.Value = 100000
myCar.Handling.Nitro.NitroForce.Value = 100000
myCar.Handling.Braking.Value = 100000
myCar.Handling.TurboJump.TurboJumpHeight.Value = 25
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

Braking.MouseButton1Down:connect(function()
	findCar()
	myCar.Handling.Braking.Value = BrakingT.Text
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


--] Updated 02.02.2019
--] Added Braking
--] Moved the Open button