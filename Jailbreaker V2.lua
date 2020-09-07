-- Jailbreaker v2
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
--something else

local function CreateButton(text,parent)
	return Create "TextButton" {
		Active = true,
		AutoButtonColor = true,
		BackgroundColor3 = Color3.fromRGB(0,155,232),
		BorderSizePixel = 1,
		Size = UDim2.new(0,100,0,30),
		Font = "SourceSansBold",
		TextColor3 = Color3.new(1,1,0),
		TextSize = 20,
		Text = text,
		Parent = parent
	}
end

 -- Objects

local JAILBREAKERV2 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TPS = Instance.new("Frame")
local gas = Instance.new("TextButton")
local donut = Instance.new("TextButton")
local JewOut = Instance.new("TextButton")
local JewIn = Instance.new("TextButton")
local BankVault = Instance.new("TextButton")
local BankFront = Instance.new("TextButton")
local crim1 = Instance.new("TextButton")
local crim2 = Instance.new("TextButton")
local train = Instance.new("TextButton")
local BTools = Instance.new("TextButton")
local Gravity = Instance.new("TextButton")
local InfiniteAmmo = Instance.new("TextButton")
local InfiniteHealth = Instance.new("TextButton")
local InfiniteNitro = Instance.new("TextButton")
local Noclip = Instance.new("TextButton")
local RemoveALL = Instance.new("TextButton")
local Walkspeed = Instance.new("TextButton")
local autoarrest = Instance.new("TextButton")
local Guns = Instance.new("TextButton")
local ClickTP = Instance.new("TextButton")
local Platform = Instance.new("TextButton")
local JB2 = Instance.new("Frame")
local BankAutoRobBtn = Instance.new("TextButton")
local BankStatus = Instance.new("TextLabel")
local JewelryStatus = Instance.new("TextLabel")
local Top = Instance.new("Frame")
local Close = Instance.new("TextButton")
local JailbreakerV2 = Instance.new("TextLabel")
local Name = Instance.new("Frame")
local JailBreak = Instance.new("TextButton")
local JailBreak2 = Instance.new("TextButton")
local Open = Instance.new("TextButton")

-- Properties

JAILBREAKERV2.Name = "JAILBREAKER V2"
JAILBREAKERV2.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = JAILBREAKERV2
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549)
Main.BorderColor3 = Color3.new(0.0627451, 0.101961, 0.129412)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.400196671, 0, 0.215415016, 0)
Main.Size = UDim2.new(0, 400, 0, 342)
Main.Draggable = true

TPS.Name = "TPS"
TPS.Parent = Main
TPS.BackgroundColor3 = Color3.new(1, 1, 0)
TPS.BackgroundTransparency = 1
TPS.Position = UDim2.new(0, 0, 0.453216374, 0)
TPS.Size = UDim2.new(0, 400, 0, 187)

gas.Name = "gas"
gas.Parent = TPS
gas.BackgroundColor3 = Color3.new(1, 0, 0)
gas.Position = UDim2.new(0.0120000001, 0, 0.800000012, 0)
gas.Size = UDim2.new(0, 80, 0, 30)
gas.Font = Enum.Font.ArialBold
gas.Text = "Gas Station"
gas.TextScaled = true
gas.TextSize = 14
gas.TextWrapped = true
gas.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1586.41101, 17.8481865, 709.37262) + Vector3.new(1,0,0)
	end
end)

donut.Name = "donut"
donut.Parent = TPS
donut.BackgroundColor3 = Color3.new(1, 0, 0)
donut.Position = UDim2.new(0.379999965, 0, -0.00865991414, 0)
donut.Size = UDim2.new(0, 80, 0, 30)
donut.Font = Enum.Font.ArialBold
donut.Text = "Donut Shop"
donut.TextScaled = true
donut.TextSize = 14
donut.TextWrapped = true
donut.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(257.191101, 17.81828869, -1753.11206) + Vector3.new(1,0,0)
	end
end)
JewOut.Name = "JewOut"
JewOut.Parent = TPS
JewOut.BackgroundColor3 = Color3.new(1, 0, 0)
JewOut.Position = UDim2.new(0.0130000003, 0, 0.200000003, 0)
JewOut.Size = UDim2.new(0, 80, 0, 30)
JewOut.Font = Enum.Font.ArialBold
JewOut.Text = "Jewelry Out"
JewOut.TextScaled = true
JewOut.TextSize = 14
JewOut.TextWrapped = true
JewOut.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(101.211128, 98.6576996, 1310.54175) + Vector3.new(1,0,0)
	end
end)
JewIn.Name = "JewIn"
JewIn.Parent = TPS
JewIn.BackgroundColor3 = Color3.new(1, 0, 0)
JewIn.Position = UDim2.new(0.0130000003, 0, 0, 0)
JewIn.Size = UDim2.new(0, 80, 0, 30)
JewIn.Font = Enum.Font.ArialBold
JewIn.Text = "Jewelry Inside"
JewIn.TextScaled = true
JewIn.TextSize = 14
JewIn.TextWrapped = true
JewIn.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.300705, 17.9375954, 1316.42407) + Vector3.new(1,0,0)
	end
end)
BankVault.Name = "BankVault"
BankVault.Parent = TPS
BankVault.BackgroundColor3 = Color3.new(1, 0, 0)
BankVault.Position = UDim2.new(0.0130000003, 0, -0.200000003, 0)
BankVault.Size = UDim2.new(0, 80, 0, 30)
BankVault.Font = Enum.Font.ArialBold
BankVault.Text = "BankVault"
BankVault.TextScaled = true
BankVault.TextSize = 14
BankVault.TextWrapped = true
BankVault.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(18.3854294, 0.765628457, 815.506348) + Vector3.new(1,0,0)
	end
end)
BankFront.Name = "BankFront"
BankFront.Parent = TPS
BankFront.BackgroundColor3 = Color3.new(1, 0, 0)
BankFront.Position = UDim2.new(0.0130000003, 0, -0.379999995, 0)
BankFront.Size = UDim2.new(0, 80, 0, 30)
BankFront.Font = Enum.Font.ArialBold
BankFront.Text = "BankFront"
BankFront.TextScaled = true
BankFront.TextSize = 14
BankFront.TextWrapped = true
BankFront.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(9.92591476, 17.8639755, 786.788147) + Vector3.new(1,0,0)
	end
end)
crim1.Name = "crim1"
crim1.Parent = TPS
crim1.BackgroundColor3 = Color3.new(1, 0, 0)
crim1.Position = UDim2.new(0.0130000003, 0, 0.400000006, 0)
crim1.Size = UDim2.new(0, 80, 0, 30)
crim1.Font = Enum.Font.ArialBold
crim1.Text = "Criminal Base 1"
crim1.TextScaled = true
crim1.TextSize = 14
crim1.TextWrapped = true
crim1.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-221.723099, 17.8924026, 1578.80261) + Vector3.new(1,0,0)
	end
end)
crim2.Name = "crim2"
crim2.Parent = TPS
crim2.BackgroundColor3 = Color3.new(1, 0, 0)
crim2.Position = UDim2.new(0.0120000001, 0, 0.600000024, 0)
crim2.Size = UDim2.new(0, 80, 0, 30)
crim2.Font = Enum.Font.ArialBold
crim2.Text = "Criminal Base 2"
crim2.TextScaled = true
crim2.TextSize = 14
crim2.TextWrapped = true
crim2.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1650.80896, 49.863636, -1770.66626) + Vector3.new(1,0,0)
	end
end)
train.Name = "train"
train.Parent = TPS
train.BackgroundColor3 = Color3.new(1, 0, 0)
train.Position = UDim2.new(0.379999995, 0, -0.379000008, 0)
train.Size = UDim2.new(0, 80, 0, 30)
train.Font = Enum.Font.ArialBold
train.Text = "Train Spawn"
train.TextScaled = true
train.TextSize = 14
train.TextWrapped = true
train.MouseButton1Down:connect(function()
	for i=1,32 do
		wait(.01)
		game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1954.95007, 68.0448606, -603.844116) + Vector3.new(1,0,0)
	end
end)
BTools.Name = "BTools"
BTools.Parent = TPS
BTools.BackgroundColor3 = Color3.new(1, 0, 0)
BTools.Position = UDim2.new(0.75, 0, 0.396069616, 0)
BTools.Size = UDim2.new(0, 80, 0, 30)
BTools.Font = Enum.Font.ArialBold
BTools.Text = "BTools"
BTools.TextScaled = true
BTools.TextSize = 14
BTools.TextWrapped = true
BTools.MouseButton1Down:connect(function()
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
Gravity.Position = UDim2.new(0.75, 0, -0.198233396, 0)
Gravity.Size = UDim2.new(0, 80, 0, 30)
Gravity.Font = Enum.Font.ArialBold
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
InfiniteAmmo.Name = "InfiniteAmmo"
InfiniteAmmo.Parent = TPS
InfiniteAmmo.BackgroundColor3 = Color3.new(1, 0, 0)
InfiniteAmmo.Position = UDim2.new(0.379999995, 0, 0.398402065, 0)
InfiniteAmmo.Size = UDim2.new(0, 80, 0, 30)
InfiniteAmmo.Font = Enum.Font.ArialBold
InfiniteAmmo.Text = "Infinite Ammo"
InfiniteAmmo.TextScaled = true
InfiniteAmmo.TextSize = 14
InfiniteAmmo.TextWrapped = true
InfiniteAmmo.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.PlayerGui.MainGui.Ammo.Current:Destroy()
end)
InfiniteHealth.Name = "InfiniteHealth"
InfiniteHealth.Parent = TPS
InfiniteHealth.BackgroundColor3 = Color3.new(1, 0, 0)
InfiniteHealth.Position = UDim2.new(0.75, 0, 0.000297799706, 0)
InfiniteHealth.Size = UDim2.new(0, 80, 0, 30)
InfiniteHealth.Font = Enum.Font.ArialBold
InfiniteHealth.Text = "Infinite Health"
InfiniteHealth.TextScaled = true
InfiniteHealth.TextSize = 14
InfiniteHealth.TextWrapped = true
InfiniteHealth.MouseButton1Down:connect(function()
	game:GetService("Players").LocalPlayer.Character.Humanoid.Name = 1
local l = game:GetService("Players").LocalPlayer.Character["1"]:Clone()
l.Parent = game:GetService("Players").LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game:GetService("Players").LocalPlayer.Character["1"]:Destroy()
game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character
game:GetService("Players").LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game:GetService("Players").LocalPlayer.Character.Animate.Disabled = false
game:GetService("Players").LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)
InfiniteNitro.Name = "InfiniteNitro"
InfiniteNitro.Parent = TPS
InfiniteNitro.BackgroundColor3 = Color3.new(1, 0, 0)
InfiniteNitro.Position = UDim2.new(0.75, 0, 0.19987087, 0)
InfiniteNitro.Size = UDim2.new(0, 80, 0, 30)
InfiniteNitro.Font = Enum.Font.ArialBold
InfiniteNitro.Text = "Infinite Nitro"
InfiniteNitro.TextScaled = true
InfiniteNitro.TextSize = 14
InfiniteNitro.TextWrapped = true
InfiniteNitro.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.PlayerGui.MainGui.Nitro.Name = "69696969"
    game:GetService('Players').LocalPlayer.PlayerGui.ProductGui.Nitro:ClearAllChildren()
end)
Noclip.Name = "Noclip"
Noclip.Parent = TPS
Noclip.BackgroundColor3 = Color3.new(1, 0, 0)
Noclip.Position = UDim2.new(0.379999995, 0, 0.60189575, 0)
Noclip.Size = UDim2.new(0, 80, 0, 30)
Noclip.Font = Enum.Font.ArialBold
Noclip.Text = "Noclip[B]"
Noclip.TextScaled = true
Noclip.TextSize = 14
Noclip.TextWrapped = true
Noclip.MouseButton1Down:connect(function()
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
RemoveALL.Name = "RemoveALL"
RemoveALL.Parent = TPS
RemoveALL.BackgroundColor3 = Color3.new(1, 0, 0)
RemoveALL.Position = UDim2.new(0.379999965, 0, -0.199895769, 0)
RemoveALL.Size = UDim2.new(0, 80, 0, 30)
RemoveALL.Font = Enum.Font.ArialBold
RemoveALL.Text = "Remove ALL"
RemoveALL.TextScaled = true
RemoveALL.TextSize = 14
RemoveALL.TextWrapped = true
RemoveALL.MouseButton1Down:connect(function()	
	game.Workspace.Cells:Remove()
	
	for i,v in pairs(workspace.Doors:GetChildren()) do
    v:Destroy()
	
	end
end)

RemoveALL.MouseButton1Down:connect(function()
	local banklasers = game:GetService("Workspace").Banks:GetChildren()
	banklasers[1].Lasers:Destroy()
end)

RemoveALL.MouseButton1Down:connect(function()
local jewelry = game:GetService("Workspace").Jewelrys:GetChildren()
	
	for i = 1,4 do
	local xd = jewelry[1].Model.BarbedWire
	xd:Destroy()
	end
end)

RemoveALL.MouseButton1Down:connect(function()
	local banklasers = game:GetService("Workspace").Banks:GetChildren()
	banklasers[1].Door.Model:Destroy()
end)
Walkspeed.Name = "Walkspeed"
Walkspeed.Parent = TPS
Walkspeed.BackgroundColor3 = Color3.new(1, 0, 0)
Walkspeed.Position = UDim2.new(0.75, 0, -0.381181598, 0)
Walkspeed.Size = UDim2.new(0, 80, 0, 30)
Walkspeed.Font = Enum.Font.ArialBold
Walkspeed.Text = "Walkspeed [X]"
Walkspeed.TextScaled = true
Walkspeed.TextSize = 14
Walkspeed.TextWrapped = true
Walkspeed.MouseButton1Down:connect(function()
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
autoarrest.Name = "autoarrest"
autoarrest.Parent = TPS
autoarrest.BackgroundColor3 = Color3.new(1, 0, 0)
autoarrest.Position = UDim2.new(0.379999995, 0, 0.819905162, 0)
autoarrest.Size = UDim2.new(0, 80, 0, 30)
autoarrest.Font = Enum.Font.ArialBold
autoarrest.Text = "Auto Arrest"
autoarrest.TextScaled = true
autoarrest.TextSize = 14
autoarrest.TextWrapped = true
autoarrest.MouseButton1Down:connect(function()
local Player = game.Players.LocalPlayer
wait(0.5)
for i,v in pairs(game.Teams.Criminal:GetPlayers()) do
	repeat
	wait()
	Player.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 1)
	until v.Team.Name ~= "Criminal"
end

end)
Guns.Name = "Guns"
Guns.Parent = TPS
Guns.BackgroundColor3 = Color3.new(1, 0, 0)
Guns.Position = UDim2.new(0.379999995, 0, 0.198208511, 0)
Guns.Size = UDim2.new(0, 80, 0, 30)
Guns.Font = Enum.Font.ArialBold
Guns.Text = "Guns"
Guns.TextScaled = true
Guns.TextSize = 14
Guns.TextWrapped = true
local Giver = nil
Guns.MouseButton1Click:connect(function()
	if not workspace:FindFirstChild("Givers") then return end
	if Giver then
		for i,v in pairs(Giver) do
			v.ClickDetector.Parent = v.OriginalParent
			v.Event:Disconnect()
		end
		getmetatable(Giver):Destroy()
	end
	Giver = {}
	local g = Giver
	local p = Instance.new("Part", workspace)
	p.Anchored = true
	p.CanCollide = false
	p.CFrame = plr.Character:WaitForChild"HumanoidRootPart".CFrame
	setmetatable(Giver, {__metatable = p})
	for i,v in pairs(workspace.Givers:GetChildren()) do
		local cd = v:FindFirstChildOfClass"ClickDetector"
		if cd then
			local newt = {}
			newt.ClickDetector = cd
			newt.OriginalParent = v
			cd.Parent = p
			newt.Event = cd.MouseClick:connect(function()
				cd.Parent = v
			end)
			table.insert(Giver, newt)
		end
	end
	spawn(function()
		wait(10)
		if Giver == g then
			Giver = nil
			for i,v in pairs(g) do
				v.ClickDetector.Parent = v.OriginalParent
				v.Event:Disconnect()
			end
			getmetatable(g):Destroy()
		end
	end)
end)
ClickTP.Name = "ClickTP"
ClickTP.Parent = TPS
ClickTP.BackgroundColor3 = Color3.new(1, 0, 0)
ClickTP.Position = UDim2.new(0.75, 0, 0.79891324, 0)
ClickTP.Size = UDim2.new(0, 80, 0, 30)
ClickTP.Font = Enum.Font.ArialBold
ClickTP.Text = "M4A4"
ClickTP.TextScaled = true
ClickTP.TextSize = 14
ClickTP.TextWrapped = true
ClickTP.MouseButton1Down:connect(function()
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

Platform.Name = "Platform"
Platform.Parent = TPS
Platform.BackgroundColor3 = Color3.new(1, 0, 0)
Platform.Position = UDim2.new(0.75, 0, 0.599861085, 0)
Platform.Size = UDim2.new(0, 80, 0, 30)
Platform.Font = Enum.Font.ArialBold
Platform.Text = "Platform"
Platform.TextScaled = true
Platform.TextSize = 14
Platform.TextWrapped = true
Platform.MouseButton1Click:connect(function()
	local p = Instance.new("Part", workspace)
	p.Size = Vector3.new(30,0.5,30)
	p.Anchored = true
	p.Position = plr.Character.HumanoidRootPart.Position + Vector3.new(0,15,0)
	plr.Character:MoveTo(p.Position + Vector3.new(0,1,0))
	spawn(function()
		while p.Parent do
			wait(1)
			if (plr.Character.HumanoidRootPart.Position - p.Position).magnitude > 20 then
				p:Destroy()
			end
		end
	end)
end)
JB2.Name = "JB2"
JB2.Parent = Main
JB2.Active = true
JB2.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
JB2.BackgroundTransparency = 1
JB2.Position = UDim2.new(0, 0, 0.280701756, 0)
JB2.Size = UDim2.new(0, 400, 0, 246)
JB2.Visible = false

BankAutoRobBtn.Name = "BankAutoRobBtn"
BankAutoRobBtn.Parent = JB2
BankAutoRobBtn.BackgroundColor3 = Color3.new(1, 0, 0)
BankAutoRobBtn.Position = UDim2.new(0.0175000001, 0, -0.0433333293, 0)
BankAutoRobBtn.Size = UDim2.new(0, 385, 0, 35)
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

BankStatus.Name = "BankStatus"
BankStatus.Parent = JB2
BankStatus.BackgroundColor3 = Color3.new(0.333333, 0, 1)
BankStatus.Position = UDim2.new(0.310000002, 0, 0.84859097, 0)
BankStatus.Size = UDim2.new(0, 101, 0, 26)
BankStatus.Font = Enum.Font.SourceSans
BankStatus.Text = "Bank:"
BankStatus.TextColor3 = Color3.new(0, 0, 0)
BankStatus.TextSize = 14

JewelryStatus.Name = "JewelryStatus"
JewelryStatus.Parent = JB2
JewelryStatus.BackgroundColor3 = Color3.new(0.333333, 0, 1)
JewelryStatus.Position = UDim2.new(0.0175000001, 0, 0.853387713, 0)
JewelryStatus.Size = UDim2.new(0, 101, 0, 26)
JewelryStatus.Font = Enum.Font.SourceSans
JewelryStatus.Text = "Jewelry:"
JewelryStatus.TextColor3 = Color3.new(0, 0, 0)
JewelryStatus.TextSize = 14

Top.Name = "Top"
Top.Parent = Main
Top.BackgroundColor3 = Color3.new(0.545098, 0, 0)
Top.BorderColor3 = Color3.new(0.0627451, 0.101961, 0.129412)
Top.BorderSizePixel = 0
Top.Position = UDim2.new(0, 0, 0.00028885901, 0)
Top.Size = UDim2.new(0, 400, 0, 30)

Close.Name = "Close"
Close.Parent = Top
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.92750001, 0, 0, 0)
Close.Size = UDim2.new(0, 29, 0, 30)
Close.Font = Enum.Font.SourceSans
Close.Text = "X"
Close.TextColor3 = Color3.new(0.4, 1, 0)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true
Close.MouseButton1Down:connect(function()
    Main.Visible = false
    Open.Visible = true
end)
JailbreakerV2.Name = "Jailbreaker V2"
JailbreakerV2.Parent = Top
JailbreakerV2.BackgroundColor3 = Color3.new(1, 1, 1)
JailbreakerV2.BackgroundTransparency = 1
JailbreakerV2.Position = UDim2.new(0.280000001, 0, 0, 0)
JailbreakerV2.Size = UDim2.new(0, 160, 0, 30)
JailbreakerV2.Font = Enum.Font.Cartoon
JailbreakerV2.Text = "Jailbreaker V2"
JailbreakerV2.TextColor3 = Color3.new(0.423529, 1, 0.0392157)
JailbreakerV2.TextScaled = true
JailbreakerV2.TextSize = 14
JailbreakerV2.TextWrapped = true
JailbreakerV2.TextXAlignment = Enum.TextXAlignment.Left
JailbreakerV2.TextYAlignment = Enum.TextYAlignment.Top

Name.Name = "Name"
Name.Parent = Main
Name.BackgroundColor3 = Color3.new(0.85098, 0.14902, 0.054902)
Name.BorderColor3 = Color3.new(0.0627451, 0.101961, 0.129412)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0, 0, 0.0862733424, 0)
Name.Size = UDim2.new(0, 400, 0, 50)

JailBreak.Name = "JailBreak"
JailBreak.Parent = Name
JailBreak.BackgroundColor3 = Color3.new(1, 0.0823529, 0)
JailBreak.Position = UDim2.new(0.0125000002, 0, 0.239999995, 0)
JailBreak.Size = UDim2.new(0, 100, 0, 25)
JailBreak.Font = Enum.Font.Cartoon
JailBreak.Text = "JailBreak"
JailBreak.TextColor3 = Color3.new(0, 0, 0)
JailBreak.TextScaled = true
JailBreak.TextSize = 14
JailBreak.TextWrapped = true
JailBreak.MouseButton1Down:connect(function()
    TPS.Visible = true
    JB2.Visible = false
end)
JailBreak2.Name = "JailBreak 2"
JailBreak2.Parent = Name
JailBreak2.BackgroundColor3 = Color3.new(1, 0.0823529, 0)
JailBreak2.Position = UDim2.new(0.354999989, 0, 0.239999995, 0)
JailBreak2.Size = UDim2.new(0, 100, 0, 25)
JailBreak2.Font = Enum.Font.Cartoon
JailBreak2.Text = "Jailbreak 2"
JailBreak2.TextColor3 = Color3.new(0, 0, 0)
JailBreak2.TextScaled = true
JailBreak2.TextSize = 14
JailBreak2.TextWrapped = true
JailBreak2.MouseButton1Down:connect(function()
    TPS.Visible = false
    JB2.Visible = true
end)
Open.Name = "Open"
Open.Parent = JAILBREAKERV2
Open.BackgroundColor3 = Color3.new(1, 1, 0)
Open.Position = UDim2.new(0.5, 0, 0, 0)
Open.Size = UDim2.new(0, 100, 0, 30)
Open.Visible = false
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(1, 0.0666667, 0)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
Open.MouseButton1Down:connect(function()
    Main.Visible = true
    Open.Visible = false
end)
-- Scripts 
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
		Yield = DuffelBag and 50 or 25,
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