-- Jailbreaker V4.2
  local plr = game:GetService("Players").LocalPlayer


local TpMethod = 2



 function JailbreakTp(...)
	getfenv()["TpMethod" .. TpMethod](...)
end

function TpMethod1(...)
	local char = plr.Character
	local root = char.HumanoidRootPart
	local args = {...}
	for i=0,1,0.05 do
		wait()
		root.CFrame = root.CFrame:lerp(CFrame.new(unpack(args,1,3)), i)
	end
end

function TpMethod2(...)
	local args = {...}
	local char = plr.Character
	local target = Vector3.new(unpack(args,1,3))
	local dist = (char:WaitForChild"HumanoidRootPart".Position - target).magnitude
	dist = math.floor(dist / 100) + 1
	for i=0,dist * 4 do
		wait()
		char:MoveTo(Vector3.new(...))
	end
	if args[#args] == true then
		wait()
		char:WaitForChild'HumanoidRootPart'.CFrame = CFrame.new(unpack(args,1,#args - 1))
	end
end

function Tween(obj, t, properties)
	local TweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(t,Enum.EasingStyle.Linear,Enum.EasingDirection.In,0,false,0)
	local tween = TweenService:Create(obj,tweenInfo,properties)
	tween:Play()
	return tween
end
-- Instances:
local JailbreakerV42 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Teleports = Instance.new("TextButton")
local AutoRob = Instance.new("TextButton")
local TPS = Instance.new("Frame")
local BankFront = Instance.new("TextButton")
local BankVault = Instance.new("TextButton")
local JewIn = Instance.new("TextButton")
local JewOut = Instance.new("TextButton")
local donut = Instance.new("TextButton")
local gas = Instance.new("TextButton")
local CrimBase1 = Instance.new("TextButton")
local Crimbase2 = Instance.new("TextButton")
local TrainSpawn = Instance.new("TextButton")
local PoliceBase = Instance.new("TextButton")
local Museum = Instance.new("TextButton")
local MuseumRoof = Instance.new("TextButton")
local AK47 = Instance.new("TextButton")
local AutoArrest = Instance.new("TextButton")
local Btools = Instance.new("TextButton")
local Gravity = Instance.new("TextButton")
local Infinitenitro = Instance.new("TextButton")
local M4A4 = Instance.new("TextButton")
local NoClipB = Instance.new("TextButton")
local Pistol = Instance.new("TextButton")
local RemoveBuildings = Instance.new("TextButton")
local Removeall = Instance.new("TextButton")
local SHOTGUN = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextButton")
local AutoROB = Instance.new("Frame")
local BankAutoRobBtn = Instance.new("TextButton")
local JewelryStatus = Instance.new("TextLabel")
local BankStatus = Instance.new("TextLabel")
local Lol = Instance.new("TextLabel")
local Close = Instance.new("TextButton")
local PLTP = Instance.new("Frame")
local PlayerTP_Input = Instance.new("TextBox")
local PlayerTP_Teleport = Instance.new("TextButton")
local PlayerTeleport = Instance.new("TextButton")
local Open = Instance.new("TextButton")
--Properties:
JailbreakerV42.Name = "Jailbreaker V4.2"
JailbreakerV42.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = JailbreakerV42
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Main.Position = UDim2.new(0.300000012, 0, 0.300000012, 0)
Main.Size = UDim2.new(0, 550, 0, 300)
Main.Draggable = true

Teleports.Name = "Teleports"
Teleports.Parent = Main
Teleports.BackgroundColor3 = Color3.new(1, 0, 0)
Teleports.Position = UDim2.new(0, 0, 0.0500000007, 0)
Teleports.Size = UDim2.new(0, 120, 0, 30)
Teleports.Font = Enum.Font.Cartoon
Teleports.Text = "Teleports"
Teleports.TextColor3 = Color3.new(0, 0, 0)
Teleports.TextScaled = true
Teleports.TextSize = 14
Teleports.TextWrapped = true
Teleports.MouseButton1Down:connect(function()
    TPS.Visible = true
    PLTP.Visible = false
    AutoROB.Visible = false
end)
AutoRob.Name = "Auto Rob"
AutoRob.Parent = Main
AutoRob.BackgroundColor3 = Color3.new(1, 0, 0)
AutoRob.Position = UDim2.new(0.75, 0, 0.0500000007, 0)
AutoRob.Size = UDim2.new(0, 120, 0, 30)
AutoRob.Font = Enum.Font.Cartoon
AutoRob.Text = "Auto Rob"
AutoRob.TextColor3 = Color3.new(0, 0, 0)
AutoRob.TextScaled = true
AutoRob.TextSize = 14
AutoRob.TextWrapped = true
AutoRob.MouseButton1Down:connect(function()
    TPS.Visible = false
    PLTP.Visible = false
    AutoROB.Visible = true
end)
TPS.Name = "TPS"
TPS.Parent = Main
TPS.BackgroundColor3 = Color3.new(1, 1, 1)
TPS.BackgroundTransparency = 1
TPS.Position = UDim2.new(0, 0, 0.170000002, 0)
TPS.Size = UDim2.new(0, 500, 0, 249)
TPS.Visible = true

BankFront.Name = "BankFront"
BankFront.Parent = TPS
BankFront.BackgroundColor3 = Color3.new(1, 0, 0)
BankFront.Position = UDim2.new(0.00999999978, 0, 0.0450000018, 0)
BankFront.Size = UDim2.new(0, 120, 0, 30)
BankFront.Font = Enum.Font.Cartoon
BankFront.Text = "BankFront"
BankFront.TextScaled = true
BankFront.TextSize = 14
BankFront.TextWrapped = true
BankFront.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.92591476, 17.8639755, 786.788147)
end
end)
BankVault.Name = "BankVault"
BankVault.Parent = TPS
BankVault.BackgroundColor3 = Color3.new(1, 0, 0)
BankVault.Position = UDim2.new(0.280000001, 0, 0.0450000018, 0)
BankVault.Size = UDim2.new(0, 120, 0, 30)
BankVault.Font = Enum.Font.Cartoon
BankVault.Text = "BankVault"
BankVault.TextScaled = true
BankVault.TextSize = 14
BankVault.TextWrapped = true
BankVault.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18.3854294, 0.765628457, 815.506348)
end
end)
JewIn.Name = "JewIn"
JewIn.Parent = TPS
JewIn.BackgroundColor3 = Color3.new(1, 0, 0)
JewIn.Position = UDim2.new(0.00999999978, 0, 0.200000003, 0)
JewIn.Size = UDim2.new(0, 120, 0, 30)
JewIn.Font = Enum.Font.Cartoon
JewIn.Text = "Jewelry Inside"
JewIn.TextScaled = true
JewIn.TextSize = 14
JewIn.TextWrapped = true
JewIn.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.300705, 17.9375954, 1316.42407)
end
end)
JewOut.Name = "JewOut"
JewOut.Parent = TPS
JewOut.BackgroundColor3 = Color3.new(1, 0, 0)
JewOut.Position = UDim2.new(0.280000001, 0, 0.200000003, 0)
JewOut.Size = UDim2.new(0, 120, 0, 30)
JewOut.Font = Enum.Font.Cartoon
JewOut.Text = "Jewelry Top"
JewOut.TextScaled = true
JewOut.TextSize = 14
JewOut.TextWrapped = true
JewOut.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(101.211128, 98.6576996, 1310.54175)
end
end)
donut.Name = "donut"
donut.Parent = TPS
donut.BackgroundColor3 = Color3.new(1, 0, 0)
donut.Position = UDim2.new(0.280000001, 0, 0.349999994, 0)
donut.Size = UDim2.new(0, 120, 0, 30)
donut.Font = Enum.Font.Cartoon
donut.Text = "Donut Shop"
donut.TextScaled = true
donut.TextSize = 14
donut.TextWrapped = true
donut.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(257.191101, 17.81828869, -1753.11206)
end
end)
gas.Name = "gas"
gas.Parent = TPS
gas.BackgroundColor3 = Color3.new(1, 0, 0)
gas.Position = UDim2.new(0.00999999978, 0, 0.349999994, 0)
gas.Size = UDim2.new(0, 120, 0, 30)
gas.Font = Enum.Font.Cartoon
gas.Text = "Gas Station"
gas.TextScaled = true
gas.TextSize = 14
gas.TextWrapped = true
gas.MouseButton1Down:connect(function()
for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1586.41101, 17.8481865, 709.37262)
end
end)
CrimBase1.Name = "CrimBase1"
CrimBase1.Parent = TPS
CrimBase1.BackgroundColor3 = Color3.new(1, 0, 0)
CrimBase1.Position = UDim2.new(0.00999999978, 0, 0.5, 0)
CrimBase1.Size = UDim2.new(0, 120, 0, 30)
CrimBase1.Font = Enum.Font.Cartoon
CrimBase1.Text = "CrimBase1"
CrimBase1.TextScaled = true
CrimBase1.TextSize = 14
CrimBase1.TextWrapped = true
CrimBase1.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-221.723099, 17.8924026, 1578.80261)
end
end)
Crimbase2.Name = "Crimbase2"
Crimbase2.Parent = TPS
Crimbase2.BackgroundColor3 = Color3.new(1, 0, 0)
Crimbase2.Position = UDim2.new(0.280000001, 0, 0.5, 0)
Crimbase2.Size = UDim2.new(0, 120, 0, 30)
Crimbase2.Font = Enum.Font.Cartoon
Crimbase2.Text = "CrimBase2"
Crimbase2.TextScaled = true
Crimbase2.TextSize = 14
Crimbase2.TextWrapped = true
Crimbase2.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1650.80896, 49.863636, -1770.66626)
end
end)
TrainSpawn.Name = "TrainSpawn"
TrainSpawn.Parent = TPS
TrainSpawn.BackgroundColor3 = Color3.new(1, 0, 0)
TrainSpawn.Position = UDim2.new(0.00999999978, 0, 0.649999976, 0)
TrainSpawn.Size = UDim2.new(0, 120, 0, 30)
TrainSpawn.Font = Enum.Font.Cartoon
TrainSpawn.Text = "TrainSpawn"
TrainSpawn.TextScaled = true
TrainSpawn.TextSize = 14
TrainSpawn.TextWrapped = true
TrainSpawn.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1954.95007, 68.0448606, -603.844116)
end
end)
PoliceBase.Name = "PoliceBase"
PoliceBase.Parent = TPS
PoliceBase.BackgroundColor3 = Color3.new(1, 0, 0)
PoliceBase.Position = UDim2.new(0.280000001, 0, 0.649999976, 0)
PoliceBase.Size = UDim2.new(0, 120, 0, 30)
PoliceBase.Font = Enum.Font.Cartoon
PoliceBase.Text = "PoliceBase"
PoliceBase.TextScaled = true
PoliceBase.TextSize = 14
PoliceBase.TextWrapped = true
PoliceBase.MouseButton1Down:connect(function()
for i = 1,45 do
wait(.08)
game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1136.89868, 17.950058, -1585.59912)
end
end)
Museum.Name = "Museum"
Museum.Parent = TPS
Museum.BackgroundColor3 = Color3.new(1, 0, 0)
Museum.Position = UDim2.new(0.00999999978, 0, 0.800000012, 0)
Museum.Size = UDim2.new(0, 120, 0, 30)
Museum.Font = Enum.Font.Cartoon
Museum.Text = "Museum "
Museum.TextScaled = true
Museum.TextSize = 14
Museum.TextWrapped = true
Museum.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1063.02, 117.562, 1218.757) + Vector3.new(1,0,0)
end
end)
MuseumRoof.Name = "Museum Roof"
MuseumRoof.Parent = TPS
MuseumRoof.BackgroundColor3 = Color3.new(1, 0, 0)
MuseumRoof.Position = UDim2.new(0.280000001, 0, 0.800000012, 0)
MuseumRoof.Size = UDim2.new(0, 120, 0, 30)
MuseumRoof.Font = Enum.Font.Cartoon
MuseumRoof.Text = "Museum Roof"
MuseumRoof.TextScaled = true
MuseumRoof.TextSize = 14
MuseumRoof.TextWrapped = true
MuseumRoof.MouseButton1Down:connect(function()
	for i = 1,45 do
wait(.08)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1078.45, 153.904, 1176.52) + Vector3.new(1,0,0)
end
end)
AK47.Name = "AK47"
AK47.Parent = TPS
AK47.BackgroundColor3 = Color3.new(1, 0, 0)
AK47.Position = UDim2.new(0.825999975, 0, 0.0422770977, 0)
AK47.Size = UDim2.new(0, 120, 0, 30)
AK47.Font = Enum.Font.Cartoon
AK47.Text = "AK47"
AK47.TextScaled = true
AK47.TextSize = 14
AK47.TextWrapped = true
AK47.MouseButton1Down:connect(function()
	local hit = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)

    a = Instance.new("Part", workspace)
    a.Anchored = true
    a.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)
    a.CanCollide = false
    
        for i, v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
    if v.Name == "ShootingRange" then
    for a, b in pairs(v:GetChildren()) do
    if b:IsA("StringValue") then
    if b.Value == "AK47" then
    v.CFrame = CFrame.new(hit)
    end
    end
    end
    end
    end
end)
AutoArrest.Name = "Auto Arrest"
AutoArrest.Parent = TPS
AutoArrest.BackgroundColor3 = Color3.new(1, 0, 0)
AutoArrest.Position = UDim2.new(0.548999965, 0, 0.651425719, 0)
AutoArrest.Size = UDim2.new(0, 120, 0, 30)
AutoArrest.Font = Enum.Font.Cartoon
AutoArrest.Text = "Auto Arrest"
AutoArrest.TextScaled = true
AutoArrest.TextSize = 14
AutoArrest.TextWrapped = true
AutoArrest.MouseButton1Down:connect(function()
local Player = game.Players.LocalPlayer
wait(0.5)
for i,v in pairs(game.Teams.Criminal:GetPlayers()) do
	repeat
	wait()
	Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
	until v.Team.Name ~= "Criminal"
end

end)
Btools.Name = "Btools"
Btools.Parent = TPS
Btools.BackgroundColor3 = Color3.new(1, 0, 0)
Btools.Position = UDim2.new(0.825999975, 0, 0.347498, 0)
Btools.Size = UDim2.new(0, 120, 0, 30)
Btools.Font = Enum.Font.Cartoon
Btools.Text = "Btools"
Btools.TextScaled = true
Btools.TextSize = 14
Btools.TextWrapped = true
Btools.MouseButton1Down:connect(function()
	game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, true)
for index, child in pairs(game:GetService("Workspace"):GetChildren()) do
   if child.ClassName == "Part" then
       child.Locked = false
   end
   if child.ClassName == "MeshPart" then
       child.Locked = false
   end
   if child.ClassName == "UnionOperation" then
       child.Locked = false
   end
   if child.ClassName == "Model" then
       for index, chil in pairs(child:GetChildren()) do
           if chil.ClassName == "Part" then
               chil.Locked = false
           end
           if chil.ClassName == "MeshPart" then
               chil.Locked = false
           end
           if chil.ClassName == "UnionOperation" then
               chil.Locked = false
           end
           if chil.ClassName == "Model" then
               for index, childe in pairs(chil:GetChildren()) do
                   if childe.ClassName == "Part" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "MeshPart" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "UnionOperation" then
                       childe.Locked = false
                   end
                   if childe.ClassName == "Model" then
                       for index, childeo in pairs(childe:GetChildren()) do
                           if childeo.ClassName == "Part" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "MeshPart" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "UnionOperation" then
                               childeo.Locked = false
                           end
                           if childeo.ClassName == "Model" then
                           end
                       end
                   end
               end
           end
       end
   end
end
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Hammer
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Clone
c = Instance.new("HopperBin", game:GetService("Players").LocalPlayer.Backpack)
c.BinType = Enum.BinType.Grab
end)
Gravity.Name = "Gravity"
Gravity.Parent = TPS
Gravity.BackgroundColor3 = Color3.new(1, 0, 0)
Gravity.Position = UDim2.new(0.549000025, 0, 0.0450000167, 0)
Gravity.Size = UDim2.new(0, 120, 0, 30)
Gravity.Font = Enum.Font.Cartoon
Gravity.Text = "Gravity"
Gravity.TextScaled = true
Gravity.TextSize = 14
Gravity.TextWrapped = true
Gravity.MouseButton1Down:connect(function()
if Gravity == true then
Gravity = false
game.workspace.Gravity = 196.2
else
Gravity = true
game.workspace.Gravity = 45
end
end)
Infinitenitro.Name = "Infinitenitro"
Infinitenitro.Parent = TPS
Infinitenitro.BackgroundColor3 = Color3.new(1, 0, 0)
Infinitenitro.Position = UDim2.new(0.549999952, 0, 0.347498, 0)
Infinitenitro.Size = UDim2.new(0, 120, 0, 30)
Infinitenitro.Font = Enum.Font.Cartoon
Infinitenitro.Text = "Infinite Nitro"
Infinitenitro.TextScaled = true
Infinitenitro.TextSize = 14
Infinitenitro.TextWrapped = true
Infinitenitro.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.PlayerGui.MainGui.Nitro.Name = "69696969"
    game:GetService('Players').LocalPlayer.PlayerGui.ProductGui.Nitro:ClearAllChildren()
end)
M4A4.Name = "M4A4"
M4A4.Parent = TPS
M4A4.BackgroundColor3 = Color3.new(1, 0, 0)
M4A4.Position = UDim2.new(0.826999903, 0, 0.651425719, 0)
M4A4.Size = UDim2.new(0, 120, 0, 30)
M4A4.Font = Enum.Font.Cartoon
M4A4.Text = "M4A4"
M4A4.TextScaled = true
M4A4.TextSize = 14
M4A4.TextWrapped = true
M4A4.MouseButton1Down:connect(function()
	local hit = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)

    a = Instance.new("Part", workspace)
    a.Anchored = true
    a.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)
    a.CanCollide = false
    
        for i, v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
    if v.Name == "Station" then
    for a, b in pairs(v:GetChildren()) do
    if b:IsA("StringValue") then
    if b.Value == "RifleSWAT" then
    v.CFrame = CFrame.new(hit)
    end
    end
    end
    end
    end
end)
NoClipB.Name = "NoClip[B]"
NoClipB.Parent = TPS
NoClipB.BackgroundColor3 = Color3.new(1, 0, 0)
NoClipB.Position = UDim2.new(0.550000012, 0, 0.500831306, 0)
NoClipB.Size = UDim2.new(0, 120, 0, 30)
NoClipB.Font = Enum.Font.Cartoon
NoClipB.Text = "NoClip[B]"
NoClipB.TextScaled = true
NoClipB.TextSize = 14
NoClipB.TextWrapped = true
NoClipB.MouseButton1Down:connect(function()
	local noclipplayer = game:GetService("Players").LocalPlayer
	local noclipmouse = noclipplayer:GetMouse()
	
	local donoclip = false
	local noclip = false
	
	function b_noclip(key)
		if (key == "b") then
			if noclip == false then
				donoclip = true
				
				noclip = true
			elseif noclip == true then
				donoclip = false
				
				noclip = false
			end
		end
	end
	
	noclipmouse.KeyDown:connect(b_noclip)
	
	game:GetService("Players").LocalPlayer.Character.Head.Touched:connect(function(obj)
		if obj ~= workspace.Terrain then
			if donoclip == true then
				obj.CanCollide = false
			else
				obj.CanCollide = true
			end
		end
	end)
end)
Pistol.Name = "Pistol"
Pistol.Parent = TPS
Pistol.BackgroundColor3 = Color3.new(1, 0, 0)
Pistol.Position = UDim2.new(0.826000035, 0, 0.798020065, 0)
Pistol.Size = UDim2.new(0, 120, 0, 30)
Pistol.Font = Enum.Font.Cartoon
Pistol.Text = "Pistol"
Pistol.TextScaled = true
Pistol.TextSize = 14
Pistol.TextWrapped = true
Pistol.MouseButton1Down:connect(function()
	local hit = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)

    a = Instance.new("Part", workspace)
    a.Anchored = true
    a.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)
    a.CanCollide = false
    
        for i, v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
    if v.Name == "Station" then
    for a, b in pairs(v:GetChildren()) do
    if b:IsA("StringValue") then
    if b.Value == "Pistol" then
    v.CFrame = CFrame.new(hit)
    end
    end
    end
    end
    end
end)
RemoveBuildings.Name = "RemoveBuildings"
RemoveBuildings.Parent = TPS
RemoveBuildings.BackgroundColor3 = Color3.new(1, 0, 0)
RemoveBuildings.Position = UDim2.new(0.826499999, 0, 0.199626505, 0)
RemoveBuildings.Size = UDim2.new(0, 120, 0, 30)
RemoveBuildings.Font = Enum.Font.Cartoon
RemoveBuildings.Text = "Remove Buildings"
RemoveBuildings.TextScaled = true
RemoveBuildings.TextSize = 14
RemoveBuildings.TextWrapped = true
RemoveBuildings.MouseButton1Down:connect(function()
	game:GetService("Workspace").Buildings:Destroy()
end)
Removeall.Name = "Removeall"
Removeall.Parent = TPS
Removeall.BackgroundColor3 = Color3.new(1, 0, 0)
Removeall.Position = UDim2.new(0.549000025, 0, 0.20162648, 0)
Removeall.Size = UDim2.new(0, 120, 0, 30)
Removeall.Font = Enum.Font.Cartoon
Removeall.Text = "RemoveAll"
Removeall.TextScaled = true
Removeall.TextSize = 14
Removeall.TextWrapped = true
Removeall.MouseButton1Down:connect(function()	
	game.Workspace.Cells:Remove()
	
	game.Workspace.Museum.CaseLasers:Remove()
	
	game.Workspace.Museum.Lights:Remove()
	
	game.Workspace.Museum.Doors:Remove()
	
	game.Workspace.EscapeRoutes:Remove()
	
	for i,v in pairs(workspace.Doors:GetChildren()) do
    v:Destroy()
	
	end
end)

Removeall.MouseButton1Down:connect(function()
	local banklasers = game:GetService("Workspace").Banks:GetChildren()
	banklasers[1].Lasers:Destroy()
end)

Removeall.MouseButton1Down:connect(function()
local jewelry = game:GetService("Workspace").Jewelrys:GetChildren()
	
	for i = 1,4 do
	local xd = jewelry[1].Model.BarbedWire
	xd:Destroy()
	end
end)

Removeall.MouseButton1Down:connect(function()
	local banklasers = game:GetService("Workspace").Banks:GetChildren()
	banklasers[1].Door.Model:Destroy()
end)
SHOTGUN.Name = "SHOTGUN"
SHOTGUN.Parent = TPS
SHOTGUN.BackgroundColor3 = Color3.new(1, 0, 0)
SHOTGUN.Position = UDim2.new(0.825999975, 0, 0.500108421, 0)
SHOTGUN.Size = UDim2.new(0, 120, 0, 30)
SHOTGUN.Font = Enum.Font.Cartoon
SHOTGUN.Text = "SHOTGUN"
SHOTGUN.TextScaled = true
SHOTGUN.TextSize = 14
SHOTGUN.TextWrapped = true
SHOTGUN.MouseButton1Down:connect(function()
	local hit = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)

    a = Instance.new("Part", workspace)
    a.Anchored = true
    a.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,0,-3)
    a.CanCollide = false
    
        for i, v in pairs(game:GetService("Workspace").Givers:GetChildren()) do
    if v.Name == "Station" then
    for a, b in pairs(v:GetChildren()) do
    if b:IsA("StringValue") then
    if b.Value == "Shotgun" then
    v.CFrame = CFrame.new(hit)
    end
    end
    end
    end
    end
end)
WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = TPS
WalkSpeed.BackgroundColor3 = Color3.new(1, 0, 0)
WalkSpeed.Position = UDim2.new(0.548999965, 0, 0.800020099, 0)
WalkSpeed.Size = UDim2.new(0, 120, 0, 30)
WalkSpeed.Font = Enum.Font.Cartoon
WalkSpeed.Text = "WalkSpeed[X]"
WalkSpeed.TextScaled = true
WalkSpeed.TextSize = 14
WalkSpeed.TextWrapped = true
WalkSpeed.MouseButton1Down:connect(function()
	local walkspeedplayer = game:GetService("Players").LocalPlayer
	local walkspeedmouse = walkspeedplayer:GetMouse()
	
	local walkspeedenabled = false
	
	function x_walkspeed(key)
		if (key == "x") then
			if walkspeedenabled == false then
				_G.WS = 200;
				local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = _G.WS;
				end)
				Humanoid.WalkSpeed = _G.WS;
				
				walkspeedenabled = true
			elseif walkspeedenabled == true then
				_G.WS = 20;
				local Humanoid = game:GetService("Players").LocalPlayer.Character.Humanoid;
				Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()
				Humanoid.WalkSpeed = _G.WS;
				end)
				Humanoid.WalkSpeed = _G.WS;
				
				walkspeedenabled = false
			end
		end
	end
	
	walkspeedmouse.KeyDown:connect(x_walkspeed)
	
end)
AutoROB.Name = "AutoROB"
AutoROB.Parent = Main
AutoROB.BackgroundColor3 = Color3.new(1, 1, 0)
AutoROB.BackgroundTransparency = 1
AutoROB.Position = UDim2.new(0, 0, 0.186666667, 0)
AutoROB.Size = UDim2.new(0, 550, 0, 244)
AutoROB.Visible = false

BankAutoRobBtn.Name = "BankAutoRobBtn"
BankAutoRobBtn.Parent = AutoROB
BankAutoRobBtn.BackgroundColor3 = Color3.new(1, 0, 0)
BankAutoRobBtn.Position = UDim2.new(0.0145454546, 0, 0.0491803288, 0)
BankAutoRobBtn.Size = UDim2.new(0, 525, 0, 30)
BankAutoRobBtn.Font = Enum.Font.ArialBold
BankAutoRobBtn.Text = "Bank Auto Rob"
BankAutoRobBtn.TextScaled = true
BankAutoRobBtn.TextSize = 14
BankAutoRobBtn.TextWrapped = true
BankAutoRobBtn.MouseButton1Click:connect(function()
	local Bank = workspace:FindFirstChild("Banks"):GetChildren()[1]
	local Info = Bank.Extra.Sign
	if Info.Decal.Transparency == 0 then
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "Bank is closed!",
			Text = "You need to wait for the bank to open!",
			Duration = 7,
			Button1 = "Dismiss",
		})
		return
	end
	local bankpos = Vector3.new(Info.Position.X,0,Info.Position.Z)
	local root = plr.Character.HumanoidRootPart
	local plrpos = Vector3.new(root.Position.X,0,root.Position.Z)
	
	if (bankpos - plrpos).magnitude > 150 then
		local cb = Instance.new"BindableFunction"

		cb.OnInvoke = function(arg)
			if arg == "Teleport" then
				JailbreakTp(10, 18, 784)
			end
		end
		
		game:GetService("StarterGui"):SetCore("SendNotification",{
			Title = "You are too far!",
			Text = "You need to get closer to the bank (use tp)",
			Duration = 7,
			Button1 = "Dismiss",
			Button2 = "Teleport",
			Callback = cb
		})
	else
		RobTheBank()
	end
end)
JewelryStatus.Name = "JewelryStatus"
JewelryStatus.Parent = AutoROB
JewelryStatus.BackgroundColor3 = Color3.new(0, 0.384314, 1)
JewelryStatus.Position = UDim2.new(0.0149999997, 0, 0.86007303, 0)
JewelryStatus.Size = UDim2.new(0, 101, 0, 26)
JewelryStatus.Font = Enum.Font.SourceSans
JewelryStatus.Text = "Jewelry:"
JewelryStatus.TextColor3 = Color3.new(0, 0, 0)
JewelryStatus.TextSize = 14

BankStatus.Name = "BankStatus"
BankStatus.Parent = AutoROB
BankStatus.BackgroundColor3 = Color3.new(0, 0.384314, 1)
BankStatus.Position = UDim2.new(0.300000012, 0, 0.86007303, 0)
BankStatus.Size = UDim2.new(0, 101, 0, 26)
BankStatus.Font = Enum.Font.SourceSans
BankStatus.Text = "Bank:"
BankStatus.TextColor3 = Color3.new(0, 0, 0)
BankStatus.TextSize = 14

Lol.Name = "Lol"
Lol.Parent = Main
Lol.Active = true
Lol.BackgroundColor3 = Color3.new(1, 0, 0)
Lol.Position = UDim2.new(0, 0, -0.193333328, 0)
Lol.Size = UDim2.new(0, 500, 0, 50)
Lol.Font = Enum.Font.Antique
Lol.Text = "Jailbreaker V4.2"
Lol.TextColor3 = Color3.new(0, 0, 0)
Lol.TextScaled = true
Lol.TextSize = 14
Lol.TextWrapped = true

Close.Name = "Close"
Close.Parent = Main
Close.BackgroundColor3 = Color3.new(1, 0, 0)
Close.Position = UDim2.new(0.90109092, 0, -0.193333328, 0)
Close.Size = UDim2.new(0, 54, 0, 50)
Close.Font = Enum.Font.Cartoon
Close.Text = "X"
Close.TextColor3 = Color3.new(0, 0, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.MouseButton1Down:connect(function()
    Open.Visible = true
    Main.Visible = false
end)
PLTP.Name = "PLTP"
PLTP.Parent = Main
PLTP.Active = true
PLTP.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
PLTP.Position = UDim2.new(0, 0, 0.176666662, 0)
PLTP.Size = UDim2.new(0, 550, 0, 247)
PLTP.Visible = false

PlayerTP_Input.Name = "PlayerTP_Input"
PlayerTP_Input.Parent = PLTP
PlayerTP_Input.BackgroundColor3 = Color3.new(1, 0, 0)
PlayerTP_Input.Position = UDim2.new(0.0945454538, 0, 0.125506073, 0)
PlayerTP_Input.Size = UDim2.new(0, 427, 0, 50)
PlayerTP_Input.Font = Enum.Font.ArialBold
PlayerTP_Input.Text = "Player Name"
PlayerTP_Input.TextSize = 20
PlayerTP_Input.TextWrapped = true

PlayerTP_Teleport.Name = "PlayerTP_Teleport"
PlayerTP_Teleport.Parent = PLTP
PlayerTP_Teleport.BackgroundColor3 = Color3.new(0.4, 0.0980392, 1)
PlayerTP_Teleport.Position = UDim2.new(0.0945454538, 0, 0.429149806, 0)
PlayerTP_Teleport.Size = UDim2.new(0, 427, 0, 50)
PlayerTP_Teleport.Font = Enum.Font.SourceSansBold
PlayerTP_Teleport.Text = "Teleport To Player"
PlayerTP_Teleport.TextScaled = true
PlayerTP_Teleport.TextSize = 14
PlayerTP_Teleport.TextWrapped = true

PlayerTeleport.Name = "PlayerTeleport"
PlayerTeleport.Parent = Main
PlayerTeleport.BackgroundColor3 = Color3.new(1, 0, 0)
PlayerTeleport.Position = UDim2.new(0.379999995, 0, 0.0500000007, 0)
PlayerTeleport.Size = UDim2.new(0, 120, 0, 30)
PlayerTeleport.Font = Enum.Font.Cartoon
PlayerTeleport.Text = "Player TP"
PlayerTeleport.TextColor3 = Color3.new(0, 0, 0)
PlayerTeleport.TextScaled = true
PlayerTeleport.TextSize = 14
PlayerTeleport.TextWrapped = true
PlayerTeleport.MouseButton1Down:connect(function()
    TPS.Visible = false
    PLTP.Visible = true
    AutoROB.Visible = false
end)
Open.Name = "Open"
Open.Parent = JailbreakerV42
Open.BackgroundColor3 = Color3.new(1, 0, 0)
Open.BorderColor3 = Color3.new(1, 0, 0)
Open.BorderSizePixel = 2
Open.Position = UDim2.new(0.5, 0, 0, 0)
Open.Size = UDim2.new(0, 100, 0, 30)
Open.Visible = false
Open.Font = Enum.Font.Cartoon
Open.Text = "Open"
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
Open.MouseButton1Down:connect(function()
    Open.Visible = false
    Main.Visible = true
end)
-- Scripts:
--AutoRob stuff--
local DuffelBag = game:GetService("MarketplaceService"):PlayerOwnsAsset(plr, 2219040)
local BankAutoRob = {
	{
		Pos = {51, 18.06, 856.5},
		Yield = 2,
		Status = "Starting the robbery"
	},
	{
		Pos = {29.71, 0.73, 815.25},
		Yield = 15,
		Status = "Opening the vault"
	},
	{
		Pos = {18.37, 0.7659, 822.25},
		Yield = DuffelBag and 50 or 49,
		Status = "Collecting $$$"
	},
	{
		Pos = {10, 18, 784},
		Status = "Finishing the robbery"
	}
}

local function Tp(...)
	local char = plr.Character
	for i=1,2 do
		wait()
		char:WaitForChild'HumanoidRootPart'.CFrame = CFrame.new(...)
	end
end

function RobTheBank()
	for _,v in pairs(BankAutoRob) do
		Tp(unpack(v.Pos))
		wait(v.Yield)
	end
end

--Bank notification--
pcall(function()
	local Bank = workspace:FindFirstChild("Banks"):GetChildren()[1]
	local Info = Bank.Extra.Sign.Decal
	Info:GetPropertyChangedSignal("Transparency"):Connect(function()
		if Info.Transparency ~= 0 then
			BankStatus.Text = "Bank:Open"
			BankStatus.TextColor3 = Color3.new(0,1,0)
			BankAutoRobBtn.BackgroundColor3 = Color3.new(0,1,0)
			local cb = Instance.new("BindableFunction")
			cb.OnInvoke = function(arg)
				if arg == "Teleport" then
					JailbreakTp(10, 18, 784)
				elseif arg == "AutoRob" then
					RobTheBank()
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Bank is ready!",
				Text = "Bank is ready!",
				Duration = 15,
				Button1 = "Dismiss",
				Button2 = (Vector3.new(Info.Parent.Position.X,0,Info.Parent.Position.Z) - Vector3.new(plr.Character.HumanoidRootPart.Position.X,0,plr.Character.HumanoidRootPart.Position.Z)).magnitude < 150 and "AutoRob" or "Teleport",
				Callback = cb
			})
		else
			BankStatus.Text = "Bank:Closed"
			BankStatus.TextColor3 = Color3.new(1,0,0)
			BankAutoRobBtn.BackgroundColor3 = Color3.new(1,0,0)
		end
	end)
	BankStatus.Text = Info.Transparency == 0 and "Bank:Closed" or "Bank:Open"
	BankStatus.TextColor3 = Info.Transparency == 0 and Color3.new(1,0,0) or Color3.new(0,1,0)
	BankAutoRobBtn.BackgroundColor3 = Info.Transparency == 0 and Color3.new(1,0,0) or Color3.new(0,1,0)
end)
--Jewelry notification--
pcall(function()
	local Jewelry = workspace:FindFirstChild("Jewelrys"):GetChildren()[1]
	local Info = Jewelry.Extra.Sign.Decal
	Info:GetPropertyChangedSignal("Transparency"):Connect(function()
		if Info.Transparency ~= 0 then
			JewelryStatus.Text = "Jewelry:Open"
			JewelryStatus.TextColor3 = Color3.new(0,1,0)
			BankStatus.TextColor3 = Color3.new(0,1,0)
			local cb = Instance.new("BindableFunction")
			cb.OnInvoke = function(arg)
				if arg == "Teleport" then
					JailbreakTp(142, 18, 1365)
				end
			end
			game:GetService("StarterGui"):SetCore("SendNotification",{
				Title = "Jewelry is ready!",
				Text = "Jewelry is ready!",
				Duration = 15,
				Button1 = "Dismiss",
				Button2 = "Teleport",
				Callback = cb
			})
		else
			JewelryStatus.Text = "Jewelry:Closed"
			JewelryStatus.TextColor3 = Color3.new(1,0,0)
		end
	end)
	JewelryStatus.Text = Info.Transparency == 0 and "Jewelry:Closed" or "Jewelry:Open"
	JewelryStatus.TextColor3 = Info.Transparency == 0 and Color3.new(1,0,0) or Color3.new(0,1,0)
end)