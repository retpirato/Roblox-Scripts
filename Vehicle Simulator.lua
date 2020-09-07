-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local ButtonFrame = Instance.new("Frame")
local autofarmgood = Instance.new("TextButton")
local autofarmbad = Instance.new("TextButton")
local perks = Instance.new("TextButton")
local credit = Instance.new("TextLabel")
local supercar = Instance.new("TextButton")
local tpcrate = Instance.new("TextButton")
local tpcar = Instance.new("TextButton")
local crateesp = Instance.new("TextButton")
local instruction = Instance.new("TextLabel")
local closeinstruction = Instance.new("TextButton")
local Name = Instance.new("TextLabel")
local closemain = Instance.new("TextButton")
local open = Instance.new("TextButton")

--Properties:
ScreenGui.Parent = game.CoreGui

MainFrame.Name = "Main Frame"
MainFrame.Parent = ScreenGui
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 0.584314, 0)
MainFrame.Position = UDim2.new(0.40368104, 0, 0.18427521, 0)
MainFrame.Selectable = true
MainFrame.Size = UDim2.new(0, 201, 0, 33)
MainFrame.Draggable = true

ButtonFrame.Name = "Button Frame"
ButtonFrame.Parent = MainFrame
ButtonFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonFrame.BackgroundTransparency = 0.69999998807907
ButtonFrame.Position = UDim2.new(0, 0, 0.999999523, 0)
ButtonFrame.Size = UDim2.new(0, 201, 0, 236)

autofarmgood.Name = "autofarm good"
autofarmgood.Parent = ButtonFrame
autofarmgood.BackgroundColor3 = Color3.new(1, 0.584314, 0)
autofarmgood.Position = UDim2.new(0, 0, 0.048648648, 0)
autofarmgood.Size = UDim2.new(0, 201, 0, 27)
autofarmgood.Font = Enum.Font.SourceSans
autofarmgood.Text = "Auto Farm"
autofarmgood.TextColor3 = Color3.new(0, 0, 0)
autofarmgood.TextSize = 14

autofarmbad.Name = "autofarm bad"
autofarmbad.Parent = ButtonFrame
autofarmbad.BackgroundColor3 = Color3.new(1, 0.584314, 0)
autofarmbad.Position = UDim2.new(0, 0, 0.162743986, 0)
autofarmbad.Size = UDim2.new(0, 201, 0, 27)
autofarmbad.Font = Enum.Font.SourceSans
autofarmbad.Text = "Slow Car"
autofarmbad.TextColor3 = Color3.new(0, 0, 0)
autofarmbad.TextSize = 14

perks.Name = "perks"
perks.Parent = ButtonFrame
perks.BackgroundColor3 = Color3.new(1, 0.584314, 0)
perks.Position = UDim2.new(0, 0, 0.276839316, 0)
perks.Size = UDim2.new(0, 201, 0, 27)
perks.Font = Enum.Font.SourceSans
perks.Text = "All Perks"
perks.TextColor3 = Color3.new(0, 0, 0)
perks.TextSize = 14

credit.Name = "credit"
credit.Parent = ButtonFrame
credit.BackgroundColor3 = Color3.new(0, 0, 0)
credit.BackgroundTransparency = 1
credit.Position = UDim2.new(0, 0, 0.902702689, 0)
credit.Size = UDim2.new(0, 201, 0, 18)
credit.Font = Enum.Font.SourceSans
credit.Text = "GUI Made By ToxicModder"
credit.TextColor3 = Color3.new(255, 255, 255)
credit.TextSize = 14

supercar.Name = "super car"
supercar.Parent = ButtonFrame
supercar.BackgroundColor3 = Color3.new(1, 0.584314, 0)
supercar.Position = UDim2.new(0, 0, 0.387244731, 0)
supercar.Size = UDim2.new(0, 201, 0, 27)
supercar.Font = Enum.Font.SourceSans
supercar.Text = "Super Car"
supercar.TextColor3 = Color3.new(0, 0, 0)
supercar.TextSize = 14

tpcrate.Name = "tp crate"
tpcrate.Parent = ButtonFrame
tpcrate.BackgroundColor3 = Color3.new(1, 0.584314, 0)
tpcrate.Position = UDim2.new(0, 0, 0.501340091, 0)
tpcrate.Size = UDim2.new(0, 201, 0, 27)
tpcrate.Font = Enum.Font.SourceSans
tpcrate.Text = "TP To Crates"
tpcrate.TextColor3 = Color3.new(0, 0, 0)
tpcrate.TextSize = 14

tpcar.Name = "tp car"
tpcar.Parent = ButtonFrame
tpcar.BackgroundColor3 = Color3.new(1, 0.584314, 0)
tpcar.Position = UDim2.new(0, 0, 0.613577604, 0)
tpcar.Size = UDim2.new(0, 201, 0, 27)
tpcar.Font = Enum.Font.SourceSans
tpcar.Text = "TP To Car"
tpcar.TextColor3 = Color3.new(0, 0, 0)
tpcar.TextSize = 14

crateesp.Name = "crate esp"
crateesp.Parent = ButtonFrame
crateesp.BackgroundColor3 = Color3.new(1, 0.584314, 0)
crateesp.Position = UDim2.new(0, 0, 0.727984369, 0)
crateesp.Size = UDim2.new(0, 201, 0, 27)
crateesp.Font = Enum.Font.SourceSans
crateesp.Text = "Crate ESP"
crateesp.TextColor3 = Color3.new(0, 0, 0)
crateesp.TextSize = 14

instruction.Name = "instruction"
instruction.Parent = ButtonFrame
instruction.BackgroundColor3 = Color3.new(0, 0, 0)
instruction.BackgroundTransparency = 0.69999998807907
instruction.Position = UDim2.new(1.07462692, 0, 0.0486486405, 0)
instruction.Size = UDim2.new(0, 188, 0, 187)
instruction.Font = Enum.Font.SourceSans
instruction.Text = "Press B\nHold Space\nGain as much Drift as you'd like.\nReset\nSpawn Car\nGet inside the car\nDrive a bit and you will get your cash"
instruction.TextColor3 = Color3.new(255, 255, 255)
instruction.TextSize = 14
instruction.TextXAlignment = Enum.TextXAlignment.Left
instruction.TextYAlignment = Enum.TextYAlignment.Top
instruction.Visible = false

closeinstruction.Name = "closemain instruction"
closeinstruction.Parent = instruction
closeinstruction.BackgroundColor3 = Color3.new(1, 0.584314, 0)
closeinstruction.Position = UDim2.new(1, 0, 0, 0)
closeinstruction.Size = UDim2.new(0, 27, 0, 27)
closeinstruction.Font = Enum.Font.SourceSans
closeinstruction.Text = "X"
closeinstruction.TextColor3 = Color3.new(0, 0, 0)
closeinstruction.TextSize = 14

Name.Name = "Name"
Name.Parent = MainFrame
Name.BackgroundColor3 = Color3.new(1, 0.584314, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.353233844, 0, 0.151515156, 0)
Name.Size = UDim2.new(0, 58, 0, 22)
Name.Font = Enum.Font.SourceSans
Name.Text = "Skrt 2.0"
Name.TextColor3 = Color3.new(0, 0, 0)
Name.TextSize = 14

closemain.Name = "closemain"
closemain.Parent = ScreenGui
closemain.BackgroundColor3 = Color3.new(1, 0.584314, 0)
closemain.Position = UDim2.new(-0.00057490496, 0, 0.568526864, 0)
closemain.Size = UDim2.new(0, 95, 0, 29)
closemain.Font = Enum.Font.SourceSans
closemain.Text = "Close"
closemain.TextColor3 = Color3.new(0, 0, 0)
closemain.TextSize = 14

open.Name = "open"
open.Parent = ScreenGui
open.BackgroundColor3 = Color3.new(1, 0.584314, 0)
open.Position = UDim2.new(-0.00057490496, 0, 0.568526864, 0)
open.Size = UDim2.new(0, 95, 0, 29)
open.Visible = false
open.Font = Enum.Font.SourceSans
open.Text = "Open"
open.TextColor3 = Color3.new(0, 0, 0)
open.TextSize = 14

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

closemain.MouseButton1Down:connect(function()
	MainFrame.Visible = false
	closemain.Visible = false
	open.Visible = true
end)

open.MouseButton1Down:connect(function()
	MainFrame.Visible = true
	open.Visible = false
	closemain.Visible = true
end)

closeinstruction.MouseButton1Down:connect(function()
	instruction.Visible = false
end)

autofarmgood.MouseButton1Down:connect(function()
	local waitTime = 3
local hint = Instance.new('Hint', Workspace) hint.Text = "Vehicle Simulator Autofarm loading..."
local found = false
local go = true

function findVehicle()
   while not found do
       local vehicles = Workspace.Vehicles:getChildren()
       for i=1,#vehicles do
           if vehicles[i]:findFirstChild'owner' then
               if vehicles[i].owner.Value == game:GetService'Players'.LocalPlayer.Name then
                   found = true
                   vehicle = vehicles[i]
                   vehStats = vehicle.Handling
                   vehStats.MaxSpeed.Value = 800
                   vehStats.Torque.Value = 100000
                   vehStats.SteeringRadiusConstant.Value = 120000000
               elseif vehicles[i + 1] == nil and not found then
                   hint.Text = "Please spawn and enter your vehicle!"
               end
           end
       end
       wait(1)
   end
   wait(2)
   vehicle.PrimaryPart = vehicle.Chassis.VehicleSeat
end

function farm()
   hint.Text = "Finished loading! Autofarm initialized."
   while wait(waitTime) do
       vehicle:SetPrimaryPartCFrame(CFrame.new(-2548,60,777))
       game:GetService'VirtualUser':SetKeyUp("w")
       game:GetService'VirtualUser':SetKeyDown("w")
   end
end
findVehicle()
while go do
   if not pcall(farm()) then
       found = false
       findVehicle() 
   end
end
end)

autofarmbad.MouseButton1Down:connect(function()
	findCar()
myCar.Handling.MaxSpeed.Value = 10
myCar.Handling.Torque.Value = 10
myCar.Handling.SteeringRadiusConstant.Value = 10
myCar.Handling.FrictionRoad.Value = 10
myCar.Handling.Nitro.NitroSpeed.Value = 10
myCar.Handling.Nitro.NitroForce.Value = 10
myCar.Handling.TurboJump.TurboJumpHeight.Value = 10
end)

tpcrate.MouseButton1Down:connect(function()
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

tpcar.MouseButton1Down:connect(function()
    findCar()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(myCar.Chassis.VehicleSeat.Position+myCar.Chassis.VehicleSeat.SeatOffset.Value)
end)

crateesp.MouseButton1Down:connect(function()
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

supercar.MouseButton1Down:connect(function()
	findCar()
myCar.Handling.MaxSpeed.Value = 10000
myCar.Handling.Torque.Value = 40000
myCar.Handling.SteeringRadiusConstant.Value = 15000
myCar.Handling.FrictionRoad.Value = 250
myCar.Handling.Nitro.NitroSpeed.Value = 500
myCar.Handling.Nitro.NitroForce.Value = 5000
myCar.Handling.TurboJump.TurboJumpHeight.Value = 250
end)

perks.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.UserId = 1099580
end)