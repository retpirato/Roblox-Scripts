




--R6 dick  by diemiers


spawn(function()
local message = Instance.new("Message",workspace)
message.Text = "Fe penisito loaded"
wait(11)
message:Destroy()
end)

local name = "Torso"
if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").RigType == Enum.HumanoidRigType.R15 then
    name = "UpperTorso"
end

local ch = game.Players.LocalPlayer.Character
local prt=Instance.new("Model", workspace)
local z1 =  Instance.new("Part", prt)
z1.Name="Torso"
z1.CanCollide = false
z1.Anchored = true
local z2  =Instance.new("Part", prt)
z2.Name="Head"
z2.Anchored = true
z2.CanCollide = false
local z3 =Instance.new("Humanoid", prt)
z3.Name="Humanoid"
z1.Position = Vector3.new(0,9999,0)
z2.Position = Vector3.new(0,9991,0)
 game.Players.LocalPlayer.Character=prt
wait(5)
game.Players.LocalPlayer.Character=ch
wait(6)
game:GetService('RunService').Stepped:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
end)
game:GetService('RunService').RenderStepped:connect(function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
end)
plr = game.Players.LocalPlayer
mouse = plr:GetMouse()

game.Players.LocalPlayer.Character.HumanoidRootPart:Destroy() 

local Hum = Instance.new("Humanoid")
    


Hum.Parent = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Humanoid.Parent = game.Lighting
--game.Players.LocalPlayer.Character:FindFirstChild("Torso").Name = "Head"
--game.Players.LocalPlayer.Character:FindFirstChild("Head"):Destroy()
--game.Players.LocalPlayer.Character:FindFirstChild(name):Destroy()
--game.Players.LocalPlayer.Character.HumanoidRootPart.Name = "GaiPArt"
local root =game.Players.LocalPlayer.Character["Right Arm"] -- game.Players.LocalPlayer.Character["Left Leg"]
root.Name = "HumanoidRootPart"

Hum.HipHeight = 5

           
workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character.HumanoidRootPart




for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
	
	if v.Name ~=root.Name and v.Name ~="Humanoid" and v.Name ~= "Left Arm" and v.Name ~= "Left Leg" and v.Name ~= "Right Leg" then
		
		v:Destroy()
		
	elseif v.Name == "Left Arm" then
		
		local bp = Instance.new("BodyPosition",v)
		bp.MaxForce = Vector3.new(99999,99999,99999)
		local bg = Instance.new("BodyGyro",v)
		bg.MaxTorque = Vector3.new(9999999,9999999,999999)
		 
		spawn(function()
			bp.D = 300
			while true do
				bp.Position = root.Position+Vector3.new(0,1.8+1.8+1.8-0.3,0)
				wait()
			end
			
		end)
		
			elseif v.Name == "Left Leg" then
		
		local bp = Instance.new("BodyPosition",v)
		bp.MaxForce = Vector3.new(99999,99999,99999)
				local bg = Instance.new("BodyGyro",v)
		bg.MaxTorque = Vector3.new(9999999,9999999,999999)
       
		spawn(function()
			bp.D = 300
			while true do
				bp.Position = root.Position+Vector3.new(0,1.8-0.3,0)
				wait()
			end
			
		end)
		
			elseif v.Name == "Right Leg" then
		
		local bp = Instance.new("BodyPosition",v)
		bp.MaxForce = Vector3.new(99999,99999,99999)
				local bg = Instance.new("BodyGyro",v)
		bg.MaxTorque = Vector3.new(9999999,9999999,999999)
		spawn(function()
		 bp.D = 300	
			while true do
				bp.Position = root.Position+Vector3.new(0,1.8+1.8-0.3,0)
				wait()
			end
			
		end)
	elseif v.Name == root.Name then
		
					local bg = Instance.new("BodyGyro",v)
		bg.MaxTorque = Vector3.new(9999999,9999999,999999)
		bg.CFrame = CFrame.Angles(math.rad(0),math.rad(0),math.rad(90))
		
	end
	
	
end

--local se = Instance.new("SelectionBox",root)
--se.Adornee = root


power = 999999 -- change this to make it more or less powerful

power = power*10

---
wait(.1)
--local bambam = Instance.new("BodyThrust")
--bambam.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
--bambam.Force = Vector3.new(power,0,power)
--bambam.Location = game.Players.LocalPlayer.Character.HumanoidRootPart.Position 




local mouse = game.Players.LocalPlayer:GetMouse()


local plr = game.Players.LocalPlayer
local torso = root
local flying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 120
local speed = 15


---local bambam = Instance.new("BodyThrust")
---bambam.Parent = torso
--bambam.Force = Vector3.new(9999999,0,9999999)
--bambam.Location = torso.Position


---


function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(0, 0, 0)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()

if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.2
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0,0)
end

until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()

end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
elseif key:lower() == "r" then

end
end)
Fly()