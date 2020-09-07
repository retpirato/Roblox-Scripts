	--[[Getting Service]]--
	local workspace = game:GetService("Workspace");
	local ps = game:GetService("Players");
	local r = game:GetService("RunService");
	local cg = game:GetService("CoreGui");
	local sg = game:GetService("StarterGui");
	local plr = ps.LocalPlayer;
	local c = plr.Character;
	local Char = game.Players.LocalPlayer.Name;
	local mc = workspace:FindFirstChildOfClass("Camera");
	local mo = plr:GetMouse();
	local b = plr:FindFirstChild("Backpack") or plr:WaitForChild("Backpack");
	local g = plr:FindFirstChild("PlayerGui") or plr:WaitForChild("PlayerGui");
	local i = game:GetService("UserInputService");
	local r = game:GetService("RunService");

local Plrs = game:GetService("Players");
local Run = game:GetService("RunService");
local CoreGui = game:GetService("CoreGui");
local StartGui = game:GetService("StarterGui");
local Teams = game:GetService("Teams");
local UserInput = game:GetService("UserInputService");
local Light = game:GetService("Lighting");
local Workspace = game:GetService("Workspace");
local CoreGui = game:GetService("CoreGui");
local Players = game:GetService("Players");

--[[Creatings Tabs]]--

	local console = Instance.new("ScreenGui");
	local output = Instance.new("ScrollingFrame");
	local _temp = Instance.new("TextLabel");
	local input = Instance.new("TextBox");
	local cover = Instance.new("Frame");

--[[Getting Pre Features]]--
Clipon = false

--[[Features]]--

--Settings
local EndGame = false;
local ClearUI = false;
	--Visual's
local Esp = false;
local Chams = false;
	--Character
local God = false;
local SpeedHax = false;
local ClickTeleport = false;
local CanCollideX = false;
		--Teleporting
local UnderMap = false;
local Everything = false;
		--Map Destruction
local DelEverything = false;
local DelRamps = false;
local DelFloors = false;
local DelWalls = false;
		--Gun Modding
local Automatic = false;
local Recoil = false;
local Accuracy = false;
local BulletMultiplier = false;
local OneShot = false;
local Debounce = false;
local MaxAmmo = false ;

--Wally is gay :dab:
local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	local crap = {
		FE = workspace.FilteringEnabled,
		PID = game.PlaceId,
		CID = game.CreatorId,
		DEV_MODE = false,
		LOOP_COMMANDS = { },
		COMMANDS = { },
	}


	function InitGui()

		console.Name = "console";
		console.Parent = game.CoreGui;

		output.Name = "output";
		output.Parent = console;
		output.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549);
		output.BorderColor3 = Color3.new(1, 1, 1);
		output.Size = UDim2.new(0, 1437,0, 314);
		output.Position = UDim2.new(0.0483180434, 0, 0.572241187, 0);
		output.HorizontalScrollBarInset = Enum.ScrollBarInset.Always;

		_temp.Name = "_temp";
		_temp.Parent = output;
		_temp.BackgroundColor3 = Color3.new(1, 1, 1);
		_temp.BackgroundTransparency = 1;
		_temp.Position = UDim2.new(0, 4, 0, 0);
		_temp.Size = UDim2.new(1, 0, 0, 14);
		_temp.ZIndex = 2;
		_temp.Font = Enum.Font.Code;
		_temp.Text = "-- sample text";
		_temp.TextColor3 = Color3.new(1, 1, 1);
		_temp.TextSize = 14;
		_temp.TextStrokeTransparency = 0.80000001192093;
		_temp.TextXAlignment = Enum.TextXAlignment.Left;
		_temp.TextYAlignment = Enum.TextYAlignment.Top;

		input.Name = "input";
		input.Parent = console;
		input.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549);
		input.BorderColor3 = Color3.new(1, 1, 1);
		input.Position = UDim2.new(0.048, 0,0.947, 0);
		input.Size = UDim2.new(0, 1437,0, 35);
		input.ClearTextOnFocus = true;
		input.Font = Enum.Font.Code;
		input.Text = "Click Here, or Press the \".\" Key to Enter a Command.";
		input.TextColor3 = Color3.new(1, 0.980392, 0.313726);
		input.TextSize = 14;
		input.TextXAlignment = Enum.TextXAlignment.Left;

		cover.Name = "cover";
		cover.Parent = console;
		cover.BackgroundColor3 = Color3.new(0.172549, 0.172549, 0.172549);
		cover.BorderSizePixel = 0;
		cover.Position = UDim2.new(0, 0, 0, -32);
		cover.Size = UDim2.new(1, 0, 0, 33);


		local function MoveStrings()
			for i, v in next, output:GetChildren() do
				v.Position = v.Position - UDim2.new(0, 0, 0, 14)
			end
		end
	end

	function Init()
		InitGui()
	end

	--[[Main Script]]--
function GetPlayers( ... )
	for i, v in pairs(game.Players:GetChildren()) do
		warn(i,v)
	end
end
--[[Visual]]--
function CreateEsp( ... )
		Important = {Players = game:GetService("Players"), Workspace = game:GetService("Workspace"), CoreGui = game:GetService("CoreGui")}

local enabledesp = false

function CreateESP(plr)
   
   if plr ~= nil then
       
       local GetChar = plr.Character
       if not GetChar then return end
       
       local GetHead do
           
           repeat wait() until GetChar:FindFirstChild("Head")
           
       end
       GetHead = GetChar.Head        
       
       local bb = Instance.new("BillboardGui", Important.CoreGui)
       bb.Adornee = GetHead
       bb.ExtentsOffset = Vector3.new(0, 1, 0)
       bb.AlwaysOnTop = true
       bb.Size = UDim2.new(0, 5, 0, 5)
       bb.StudsOffset = Vector3.new(0, 3, 0)
       bb.Name = "ESP_PLAYER_" .. plr.Name

       local displayframe = Instance.new("Frame", bb)
       displayframe.ZIndex = 10
       displayframe.BackgroundTransparency = 1
       displayframe.Size = UDim2.new(1,0,1,0)
       
       local name = Instance.new("TextLabel", displayframe)
       name.Name = "Name"
       name.ZIndex = 10
       name.Text = plr.Name
       name.Visible = true
       name.TextColor3 = Color3.new(255, 0, 255)
       name.BackgroundTransparency = 1
       name.Size = UDim2.new(1,0,10,0)
       name.Font = Enum.Font.SourceSansLight
       name.TextSize = 20
       name.TextStrokeTransparency = .5
       
   end
   
end

   
   for i,v in pairs(Important.Players:GetChildren()) do
       if game.GameId == 1320186298 then return end
       CreateESP(v)
       
   end
end

function Chamsfunction( ... )
	local gui = Instance.new("BillboardGui");
gui.Name = "";
gui.AlwaysOnTop = true;
gui.LightInfluence = 0;
gui.Size = UDim2.new(1.75, 0, 1.75, 0);
local frame = Instance.new("Frame", gui);
frame.BackgroundColor3 = Color3.fromRGB(255,0,255);
frame.Size = UDim2.new(1, 0, 1, 0);
frame.BorderSizePixel = 4;
frame.BorderColor3 = Color3.fromRGB(0, 0, 0);
local gi = gui:Clone();
local body = frame:Clone();
body.Parent = gi;
body.BackgroundColor3 = Color3.fromRGB(0,185,0);

for _, v in pairs(game:GetService("Players"):GetPlayers()) do
   if v.Name ~= game:GetService("Players").LocalPlayer.Name and v.Character and v.Character:FindFirstChild("Head") then
       gui:Clone().Parent = v.Character.Head;
   end
end
end

--[[Character]]--
function Noclipfunction( ... ) 
	for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
		if v.ClassName == "Part" then
			v.CanCollide = false
		end
	end
end

function TurnOFFNoclip( ... )
		for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
		if v.ClassName == "Part" then
			v.CanCollide = true
		end
	end
end

function SpeedModdingfunction( ... )
  down = false
velocity = Instance.new("BodyVelocity")
velocity.maxForce = Vector3.new(100000, 0, 100000)

local speed = 150
gyro = Instance.new("BodyGyro")
gyro.maxTorque = Vector3.new(100000, 0, 100000)

local hum = game.Players.LocalPlayer.Character.Humanoid

function onButton1Down(mouse)
down = true
velocity.Parent = game.Players.LocalPlayer.Character.UpperTorso
velocity.velocity = (hum.MoveDirection) * speed
gyro.Parent = game.Players.LocalPlayer.Character.UpperTorso
while down do
if not down then break end
velocity.velocity = (hum.MoveDirection) * speed
local refpos = gyro.Parent.Position + (gyro.Parent.Position - workspace.CurrentCamera.CoordinateFrame.p).unit * 5
gyro.cframe = CFrame.new(gyro.Parent.Position, Vector3.new(refpos.x, gyro.Parent.Position.y, refpos.z))
wait(0.1)
end
end

function onButton1Up(mouse)
velocity.Parent = nil
gyro.Parent = nil
down = false
end

function onSelected(mouse)
mouse.KeyDown:connect(function(k) if k:lower()=="e"then onButton1Down(mouse)end end)
mouse.KeyUp:connect(function(k) if k:lower()=="e"then onButton1Up(mouse)end end)
end
print("Successfully Modded Characters Speed")
onSelected(game.Players.LocalPlayer:GetMouse())
end

function GodModefunction( ... )
	     game.Players.LocalPlayer.Character.Humanoid:Remove()
	Instance.new('Humanoid', game.Players.LocalPlayer.Character)
end

function ClickTpfunction( ... )
		plr = game.Players.LocalPlayer;
hum = plr.Character.HumanoidRootPart;
mouse = plr:GetMouse();
	mouse.KeyDown:connect(function(key) 
if key == "z" then 
if mouse.Target then 
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) 
end 
end
end)
end
--[[Game Destruction]]--
function CreateDeleteEverything( ... )
		for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
if v.Name == "Floor" then
v:Destroy()
end
end
wait(1)
for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
if v.Name == "Wall" then
v:Destroy()
end
end
wait(1)
for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
if v.Name == "Ramp" then
v:Destroy()
end
end
end

function CreateDelWalls( ... )
	for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
if v.Name == "Wall" then
v:Destroy()
end
end
end

function CreateDelRamps( ... )
	for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
if v.Name == "Ramp" then
v:Destroy()
end
end
end

function CreateDelFloors( ... )
	for i, v in pairs(game.Workspace.BuildStuff:GetChildren()) do
if v.Name == "Floor" then
v:Destroy()
end
end
end
--[[Teleports]]--

function TeleportUnderMap( ... )
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-49.62, 13.47, -70.22) + Vector3.new(1, 0, 0)
end

function CreateTeleportEverything( ... )
	for i, v in pairs(game.Workspace:GetChildren()) do
		if v.ClassName == "Model" then
			v:MoveTo(game.Players.LocalPlayer.Character.Head.Position + Vector3.new(math.random(-10,10),0,math.random(-10,10)))
		end
	end
end

--[[Gun Modding]]--

function AmazingAccuracy( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	ModTac["Inaccuracy"] = 0;
	ModHawk["Inaccuracy"] = 0;
	ModSMG["Inaccuracy"] = 0;
	ModSniper["Inaccuracy"] = 0;
	ModAR["Inaccuracy"] = 0;
	ModSupAR["Inaccuracy"] = 0;
	ModPistol["Inaccuracy"] = 0;
	ModDrum["Inaccuracy"] = 0;
	ModRPG["Inaccuracy"] = 0;
end

function NoRecoil( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	ModTac["Recoil"] = 0;
	ModHawk["Recoil"] = 0;
	ModSMG["Recoil"] = 0;
	ModSniper["Recoil"] = 0;
	ModAR["Recoil"] = 0;
	ModSupAR["Recoil"] = 0;
	ModPistol["Recoil"] = 0;
	ModDrum["Recoil"] = 0;
	ModRPG["Recoil"] = 0;
end

function NoDebounce( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	ModTac["Debounce"] = 0;
	ModHawk["Debounce"] = 0;
	ModSMG["Debounce"] = 0;
	ModSniper["Debounce"] = 0;
	ModAR["Debounce"] = 0;
	ModSupAR["Debounce"] = 0;
	ModPistol["Debounce"] = 0;
	ModDrum["Debounce"] = 0;
	ModRPG["Debounce"] = 0;
end

function CreateOneShot( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	ModTac["Damage"] = 5000;
	ModHawk["Damage"] = 5000;
	ModSMG["Damage"] = 5000;
	ModSniper["Damage"] = 5000;
	ModAR["Damage"] = 5000;
	ModSupAR["Damage"] = 5000;
	ModPistol["Damage"] = 5000;
	ModDrum["Damage"] = 5000;
	ModRPG["Damage"] = 5000;
end

function CreateBulletMultiplier( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	ModTac["ShotCount"] = 150;
	    ModHawk["ShotCount"] = 150;
    ModSMG["ShotCount"] = 150;
    ModSniper["ShotCount"] = 150;
    ModAR["ShotCount"] = 150;
    ModSupAR["ShotCount"] = 150;
    ModPistol["ShotCount"] = 150;
    ModDrum["ShotCount"] = 150;
    ModRPG["ShotCount"] = 150;
end

function CreateAmmo( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	ModTac["ClipAmmo"] = 1000;
	ModHawk["ClipAmmo"] = 1000;
	ModSMG["ClipAmmo"] = 1000;
	ModSniper["ClipAmmo"] = 1000;
	ModAR["ClipAmmo"] = 1000;
	ModSupAR["ClipAmmo"] = 1000;
	ModPistol["ClipAmmo"] = 1000;
	ModDrum["ClipAmmo"] = 1000;
	ModRPG["ClipAmmo"] = 1000;
end

function MaxRange( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	-- body
end

--[[Turning GunModding OFF]]--

function ReturnAccuracy( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

		ModTac["Inaccuracy"] = 5;
	ModHawk["Inaccuracy"] = 5;
	ModSMG["Inaccuracy"] = 5;
	ModSniper["Inaccuracy"] = 5;
	ModAR["Inaccuracy"] = 5;
	ModSupAR["Inaccuracy"] = 5;
	ModPistol["Inaccuracy"] = 5;
	ModDrum["Inaccuracy"] = 5;
	ModRPG["Inaccuracy"] = 5;
end

function ReturnRecoil( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

		ModTac["Recoil"] = 5;
	ModHawk["Recoil"] = 5;
	ModSMG["Recoil"] = 5;
	ModSniper["Recoil"] = 5;
	ModAR["Recoil"] = 5;
	ModSupAR["Recoil"] = 5;
	ModPistol["Recoil"] = 5;
	ModDrum["Recoil"] = 5;
	ModRPG["Recoil"] = 5;
end

function ReturnDebounce( ... )
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

		ModTac["Debounce"] = 0.5;
	ModHawk["Debounce"] = 0.5;
	ModSMG["Debounce"] = 0.5;
	ModSniper["Debounce"] = 0.5;
	ModAR["Debounce"] = 0.5;
	ModSupAR["Debounce"] = 0.5;
	ModPistol["Debounce"] = 0.5;
	ModDrum["Debounce"] = 0.5;
	ModRPG["Debounce"] = 0.5;
end

function ReturnDamage( ... )--Tbh idk what they were jesus, <.< and they always changed so fuck off
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

		ModTac["Damage"] = 30;
	ModHawk["Damage"] = 3213;
	ModSMG["Damage"] = 123;
	ModSniper["Damage"] = 45;
	ModAR["Damage"] = 30;
	ModSupAR["Damage"] = 60;
	ModPistol["Damage"] = 65;
	ModDrum["Damage"] = 62;
	ModRPG["Damage"] = 13;
end

function ReturnBullets( ... )--i'm lazy k?
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

	ModTac["ShotCount"] = 250;
	ModHawk["ShotCount"] = 250;
	ModSMG["ShotCount"] = 250;
	ModSniper["ShotCount"] = 250;
	ModAR["ShotCount"] = 250;
	ModSupAR["ShotCount"] = 250;
	ModPistol["ShotCount"] = 250;
	ModDrum["ShotCount"] = 250;
	ModRPG["ShotCount"] = 250;
end

function ReturnAmmo( ... )--exactly a bunch of 1's u faggots 
	local ModTac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
local ModSupAR = require(game.ReplicatedStorage.Weapons.Modules["Suppressed AR"]);
local ModPistol = require(game.ReplicatedStorage.Weapons.Modules["Machine Pistol"]);
local ModSniper = require(game.ReplicatedStorage.Weapons.Modules["Semi-Auto Sniper"]);
local ModRPG = require(game.ReplicatedStorage.Weapons.Modules["RPG"]);
local ModPick = require(game.ReplicatedStorage.Weapons.Modules["Pickaxe"]);
local ModAR = require(game.ReplicatedStorage.Weapons.Modules["AR"]);
local ModDrum = require(game.ReplicatedStorage.Weapons.Modules["Drum Gun"]);
local ModSMG = require(game.ReplicatedStorage.Weapons.Modules["SMG 101"]);
local ModHawk = require(game.ReplicatedStorage.Weapons.Modules["Desert Hawk"]);

		ModTac["ClipAmmo"] = 1000;
	ModHawk["ClipAmmo"] = 1000;
	ModSMG["ClipAmmo"] = 1000;
	ModSniper["ClipAmmo"] = 1000;
	ModAR["ClipAmmo"] = 1000;
	ModSupAR["ClipAmmo"] = 1000;
	ModPistol["ClipAmmo"] = 1000;
	ModDrum["ClipAmmo"] = 1000;
	ModRPG["ClipAmmo"] = 1000;
end
--[[Option Random Shit]]--

function DestroyGame( ... )
	output:Destroy()
	input:Destroy()
	_temp:Destroy()
	cover:Destroy()
end

function Dead( ... )
	getrenv().game = nil--Don't you dare fire this function
end
--[[Output Main Script]]--
	function AddCommand(CMD, Command, Info, Func)
		if crap.COMMANDS[CMD] ~= nil then return end;

		crap.COMMANDS[CMD] = { };
		local c = crap.COMMANDS[CMD];

		c.Command = Command;
		c.Info = Info;
		c.Func = Func;
	end;


		local function MoveStrings()
			for i, v in next, output:GetChildren() do
				v.Position = v.Position - UDim2.new(0, 0, 0, 14);
			end;
		end;

		local function Output(Text, Color)
			MoveStrings();
			if Color == nil then Color = Color3.new(1, 1, 1) end;
			local Txt = Instance.new("TextLabel");
			Txt.Name = "1_temp";
			Txt.BackgroundColor3 = Color3.new(1, 1, 1);
			Txt.BackgroundTransparency = 1;
			Txt.Position = UDim2.new(0, 4, 1, -30);
			Txt.Size = UDim2.new(1, 0, 0, 14);
			Txt.ZIndex = 2;
			Txt.Font = Enum.Font.Code;
			Txt.Text = "[Strucid Console]: " .. Text;
			Txt.TextColor3 = Color;
			Txt.TextSize = 14;
			Txt.TextStrokeTransparency = 0.80000001192093;
			Txt.TextXAlignment = Enum.TextXAlignment.Left;
			Txt.TextYAlignment = Enum.TextYAlignment.Top;
			Txt.Parent= output;
		end;
		function RunCommand(Str)
			local CMD = string.find(Str, " ");
			if CMD then
				CMD = string.sub(Str, 1, (CMD - 1));
			else
				CMD = Str;
			end;

			CMD = string.lower(CMD)

			if crap.COMMANDS[CMD] == nil then return Output("Command Not Found", Color3.new(1, 0, 0)) end;
			--if crap.COMMANDS[CMD].FEReq == true and crap.FE == true then return Output("Command doesn't work with FilteringEnabled!", Color3.new(1, 0, 0)) end

			local Args = { };
			local Pattern = "%s+(%w+)";

			for i in Str:gmatch(Pattern) do
				table.insert(Args, i);
			end;

			crap.COMMANDS[CMD].Func(unpack(Args));
		end;

	AddCommand("esp","esp","Shows all Players Names",function()
		Esp = not Esp
		if Esp then
			Output("Esp Successfully Turned on",Color3.new(0,1,0))
			CreateEsp();
		else
			Output("why tf u wanna turn off esp nigger",Color3.new(1,0,0))
			CreateEsp();
		end
	end)

	AddCommand("chams","chams","Basically Body esp",function()
		Chams = not Chams
		if Chams then
			Output("Chams Successfully Turned on",Color3.new(0,1,0))
			Chamsfunction();
		else
			Output("you thought faggot",Color3.new(1,0,0))
			warn("eh wally fuck off")
		end
	end)

	AddCommand("god","god","Makes your Character Unkillable",function()
		God = not God
		if God then
			Output("Successfully Godded Character",Color3.new(0,1,0))
			GodModefunction();
		else
			Output("Can't go back now XD",Color3.new(1,0,0))
			warn("oops ;-;")
		end
	end)

	AddCommand("speed","speed","makes your character go super fast",function()
		SpeedHax = not SpeedHax
		if SpeedHax then
			Output("Press E, while pressing w to speed hack",Color3.new(0,1,0))
			SpeedModdingfunction();
		else
			Output("Turned Speed Hax Off, and why???",Color3.new(1,0,0))
			speed = 0
		end
	end)

	AddCommand("clicktp","clicktp","Teleports you to where ever you click",function()
		ClickTeleport = not ClickTeleport
		if ClickTeleport then
			Output("Successfully Turned on Click Tp",Color3.new(0,1,0))
			ClickTpfunction();
		else
			Output("Stopped Click Tp",Color3.new(1,0,0))
			warn("idk xd")
		end
	end)

	AddCommand("noclip","noclip","Allows you to go through walls",function()
		CanCollideX = not CanCollideX
		if CanCollideX then
			Output("Noclip Successfully ON",Color3.new(0,1,0))
			Noclipfunction();
		else
			Output("NoClip OFF",Color3.new(1,0,0))
			TurnOFFNoclip();
		end
	end)

	AddCommand("under","under","Teleports you under the map",function()
		UnderMap= not UnderMap
		if UnderMap then
			Output("Successfully Teleported",Color3.new(0,1,0))
			TeleportUnderMap();
		else
			Output("Successfully Teleported",Color3.new(0,1,0))
			TeleportUnderMap();
		end
	end)

	AddCommand("tpeverything","tpeverything","This Teleports everything to you xd",function()
		Everything = not Everything
		if Everything then
			Output("Successfully Teleported",Color3.new(0,1,0))
			CreateTeleportEverything();
		else
			Output("Successfully Teleported",Color3.new(0,1,0))
			CreateTeleportEverything();
		end
	end)

	AddCommand("delramps","delramps","Deletes all Ramps",function()
		DelRamps = not DelRamps
		if DelRamps then
			Output("Successfully Deleted All Ramps",Color3.new(0,1,0))
			CreateDelRamps();
		else
			Output("Successfully Deleted All Ramps",Color3.new(0,1,0))
			CreateDelRamps();
		end
	end)

	AddCommand("delfloors","delfloors","Removes Removes all the floors",function()
		DelFloors = not DelFloors
		if DelFloors then
			Output("Successfully Deleted all Floors",Color3.new(0,1,0))
			CreateDelFloors();
		else
			Output("Successfully Deleted all Floors",Color3.new(0,1,0))
			CreateDelFloors();
		end
	end)

	AddCommand("delwalls","delwalls","Removes all Walls, Build, Building",function()
		DelWalls = not DelWalls
		if DelWalls then
			Output("Successfully Deleted all Walls",Color3.new(0,1,0))
			CreateDelWalls();
		else
			Output("Successfully Deleted all Walls",Color3.new(0,1,0))
			CreateDelWalls();
		end
	end)

	AddCommand("everything","everything","Destroys everything",function()
		DelEverything = not DelEverything
		if DelEverything then
			Output("Successfully Deleted Everything",Color3.new(0,1,0))
			CreateDeleteEverything();
		else
			Output("Successfully Deleted Everything",Color3.new(0,1,0))
			CreateDeleteEverything();
		end
	end)

	AddCommand("recoil","recoil","Removes All Recoil from your weapon",function()
		Recoil = not Recoil
		if Recoil then
			Output("Successfully Removed all Recoil",Color3.new(0,1,0))
			NoRecoil();
		else
			Output("Successfully Turned Recoil back on",Color3.new(1,0,0))
			ReturnRecoil();
		end
	end)

	AddCommand("accuracy","accuracy","Makes your shot 100% Perfect",function()
		Accuracy = not Accuracy
		if Accuracy then
			Output("Successfully Modded your gun with 100% Accuracy",Color3.new(0,1,0))
		    AmazingAccuracy();
		else
			Output("Returned Garbage Accuracy, LOL BOI!",Color3.new(1,0,0))
			ReturnAccuracy();
		end
	end)

		AddCommand("bullets","bullets","Makes you shoot 250 bullets instead of the number you shot before",function()
		BulletMultiplier = not BulletMultiplier
		if BulletMultiplier then
			Output("Successfully Modded your gun with 250 bullets per shot",Color3.new(0,1,0))
		    CreateBulletMultiplier();
		else
			Output("Returned Garbage Normal Bullets, like why??",Color3.new(1,0,0))
			ReturnBullets();
		end
	end)

	AddCommand("oneshot","oneshot","Pretty self explainatory, one shot, insta kill",function()
		OneShot = not OneShot
		if OneShot then
			Output("Successfully Modded Gun with Insta Kill",Color3.new(0,1,0))
		    CreateOneShot();
		else
			Output("Returned Garbage Gun Damage, Nigga really",Color3.new(1,0,0))
			ReturnDamage();
		end
	end)

	AddCommand("firerate","firerate","Makes your Gun shoot SUPER FAST, WARNING: BAN RISK IS HIGH",function()
		Debounce = not Debounce
		if Debounce then
			Output("Successfully Modded your gun High FireRate",Color3.new(0,1,0))
		    NoDebounce();
		else
			Output("Returned Debounce, So u want your Gun to have low firerate",Color3.new(1,0,0))
			ReturnDebounce();
		end
	end)


	AddCommand("ammo","ammo","makes your ammo 1000, after you reload of course *Logic*",function()
		Accuracy = not Accuracy
		if Accuracy then
			Output("Successfully Modded your gun with 1000 ammo",Color3.new(0,1,0))
		    CreateAmmo();
		else
			Output("Returned normal amount of bullets, nigger *ur logic*",Color3.new(1,0,0))
			ReturnAmmo();
		end
	end)

	AddCommand("kill","kill","Kills the entire game, and the console",function()
		EndGame= not EndGame
		if EndGame then
			Output("Successfully lasered your ass",Color3.new(0,1,0))
		    DestroyGame();
		else
			Output("can't even run this 2 times so hehe, *pain is a skidder*",Color3.new(1,0,0))
			DestroyGame();
		end
	end)



	AddCommand("clear", "clear", "Clear the console.", function()
		output:ClearAllChildren()
	end, false)

	AddCommand("help", "help", "", function()
		for i, v in next, crap.COMMANDS do
			Output(v.Command .. " <--" .. v.Info)
		end
	end, false)

	Init()

	input.FocusLost:connect(function()
		Output("> " .. input.Text)
		RunCommand(input.Text)
		input.Text = "Click Here, or Press the \".\" Key to Enter a Command."
	end)

	i.InputBegan:connect(function(inp, ingui)
		if not ingui then
			if inp.UserInputType == Enum.UserInputType.Keyboard then
				if inp.KeyCode == Enum.KeyCode.RightControl then
					output.Visible = not output.Visible
					cover.Visible = not cover.Visible
					input.Visible = not input.Visible
				end
				if inp.KeyCode == Enum.KeyCode.Period then
					input:CaptureFocus()
				end
			end
		end
	end)

		Output("Strucid Hax Console v2.0.0 Has Successfully Loaded, Enjoy", Color3.new(0, 1, 0))
		Output("Press RightControl To Toggle The Console", Color3.new(0, 1, 0))
	    Output("Made by ThisW0ntGetBanned",Color3.new(0,1,0))
	    Output("WARNINGS: BAN RISK IS VERY HIGH FOR SOME FUNCTIONS, SUCH AS FireRate, Bullets, Please Be Careful.",Color3.new(0,1,0))
		Output(" UI By Racist Dolphin",Color3.new(0,1,0))
		Output("Type help for commands",Color3.new(0,1,0))


	    local msg = Instance.new("Message",game.CoreGui)
msg.Name = game.JobId
msg.Text = "!!READ!! Please Scroll All the way down the ScrollingFrame to see the messages, Credits, Commands, etc"
wait(10)
msg:Destroy()