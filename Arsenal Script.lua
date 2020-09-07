--[[
	tostring was here
	feel free to make edits
	credit me on release
	don't skid shit from here and sell it otherwise i'll crack your script and release it
--]]
local plr = game:service("Players").LocalPlayer
local mouse = plr:GetMouse()
local rs = game:service("RunService")
local rest = game:service("ReplicatedStorage")
local mt = getrawmetatable(game)
local oldIndex = mt.__index
local oldNamecall = mt.__namecall
local oldNewindex = mt.__newindex
local hammerunit2stud = 0.0694
setreadonly(mt, false)
local function getclientscript()
	return plr.PlayerGui.GUI.Client
end
local speedbackup = getsenv(getclientscript()).speedupdate



local function fakehitbox()
	local hitbox = plr.Character.Hitbox
	local clone = hitbox:Clone()
	hitbox:Destroy()
	clone.Parent = plr.Character
end

local function nohitbox()
	plr.Character.Hitbox:Destroy()
end

local function destroygunanimations()
	for _,v in next, workspace.Camera.Arms:GetChildren() do
		if v:IsA("Animation") or v:IsA("AnimationController") then
			v:Destroy()
		end
	end
end

local function destroyarms()
	local left = workspace.Camera.Arms.CSSArms["Left Arm"]
	local right = workspace.Camera.Arms.CSSArms["Right Arm"]
	for _,v in next, left:GetChildren() do
		v:Destroy()
	end
	for _,v in next, right:GetChildren() do
		v:Destroy()
	end
end

local function destroyflash()
	workspace.Camera.Arms.Flash:Destroy()
end

local function panic(enable) --bool
	for _,v in next, workspace.Camera.Arms:GetChildren() do
		if v:IsA("BasePart") then
			v.CanCollide = enable
		end
	end
end

local function weaponslide(enable) --bool
	workspace.Camera.Arms["Left Arm"].CanCollide = enable
	workspace.Camera.Arms["Right Arm"].CanCollide = enable
end

local function jointeam(teamname) --example: TGC(G = green), TBC(B = blue), etc for every team. "Random for FFA"
	game:GetService("ReplicatedStorage").Events.JoinTeam:FireServer(teamname)
end

local function changecamera(ct) --CameraType
	workspace.Camera.CameraType = ct
end

local function turnonserver(angle) -- normal angles are from -1 to 1. However they can be expanded, for example math.huge would make your head unhittable
	game:GetService("ReplicatedStorage").Events.ControlTurn:FireServer(angle)
end

local function respawn()
	game:GetService("ReplicatedStorage").Events.SpawnMe:FireServer()
end

local function die()
	plr.Character.Head:Destroy()
end

local function removehead()
	plr.Character.FakeHead:Destroy()
end

local function naked()
	plr.Character.Shirt:Destroy()
	plr.Character.Pants:Destroy()
end

local function removehats()
	for _,v in next, plr.Character:GetChildren() do
		if v:IsA("Accessory") then
			v:Destroy()
		end
	end
end

local function removeleadershine()
	plr.Character.UpperTorso.TeamLeader:Destroy()
end

local function destroywaist()
	plr.Character.UpperTorso.Waist:Destroy()
end

local function goinvis()
	destroywaist()
	plr.Character.LowerTorso:Destroy()
	plr.Character.RightUpperLeg:Destroy()
	plr.Character.RightLowerLeg:Destroy()
	plr.Character.RightFoot:Destroy()
	plr.Character.LeftFoot:Destroy()
	plr.Character.LeftUpperLeg:Destroy()
	plr.Character.LeftLowerLeg:Destroy()
end

local function removemapkillers()
	for _,v in next, workspace.Map.Killers:GetChildren() do
		v:Destroy()
	end
end

local function hookwalkspeed(ws) --int
	getsenv(getclientscript()).speedupdate = function() plr.Character.Humanoid.WalkSpeed = ws end
end

local function nocamshake() -- aka norecoil
	getsenv(getclientscript()).ShakeCam = function() end
end

local function maxclipammo(amount) --int
	getsenv(getclientscript()).getammo = function() return amount end
end

local function editclip(amount) --int
	for i = 1,4 do
		if i == 1 then
			getsenv(getclientscript()).ammocount = amount
		else
			local thing = "ammocount" .. i
			getsenv(getclientscript())[thing] = amount
		end
	end
end

local function givebat()
	plr.Name = "DevRolve"
	getsenv(getclientscript()).isadmin = true
	getsenv(getclientscript()).ischad = true
	getsenv(getclientscript()).givetools()
end

local function givefastcuffs()
	plr.Name = "mightybaseplate"
	getsenv(getclientscript()).isadmin = true
	getsenv(getclientscript()).ischad = true
	getsenv(getclientscript()).givetools()
end

local function spooflevel(lvl) --int note: spoofs on client only, you're going to have to apply the gun on the server using the applygun remote
	plr.Status.Level.Value = lvl
end

local function givecreagle()
	getsenv(getclientscript()).isadmin = true
	getsenv(getclientscript()).ischad = true
	mt.__namecall = function(t, ...)
		local args = {...}
		local method = args[#args]
		
		if method == "GetRankInGroup" then
			return 255
		end

		if method == "IsInGroup" then
			return true
		end

		if method == "FireServer" then
			if t.Name == "ApplyGun" and args[1] == rest.Weapons["Golden Creagle"] then
				return print("anti-anti-creagle")
			end
		end
		
		return oldNamecall(t, ...)
	end
	getsenv(getclientscript()).givetools()
end

local function chat(message,teamonly,idk,dead) --string,bool,bool,bool
	local unpackme = 
	{
		message, 
		teamonly,
		idk, 
		dead
	}
	game:GetService("ReplicatedStorage").Events.PlayerChatted:FireServer(unpack(unpackme))
end

local function nospread()
	mt.__index = function(t, k)
		if typeof(t) == "Instance" and  k == "Value" then     
			if oldIndex(t, "Name") == "MaxSpread" then 
				return 0
			end
			if oldIndex(t, "Name") == "Spread" then 
				return 0
			end
		end
		return oldIndex(t, k)
	end
end

local function createcreaglerocket(position) --Vector3
	local unpackme = 
	{
		"Rocket", 
		1000000000, 
		position, --mouse.hit.p
		workspace.Camera.CFrame * CFrame.new(1, -0.45, 0), 
		100, 
		100, 
		1,
		13.88,
		"Golden Creagle", 
		plr.Character.Hitbox.Position, 
		false
	}
	game:GetService("ReplicatedStorage").Events.CreateProjectile:FireServer(unpack(unpackme))
end