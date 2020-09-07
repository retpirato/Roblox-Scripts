-- Lumber Tycoon 2 Gui Created by LuckyMMB @ V3rmillion.net
-- Discord https://discord.gg/GKzJnUC

--- Automatically Add players to Blacklist ---

Mouse = game.Players.LocalPlayer:GetMouse()
 
Client = game.ReplicatedStorage.Interaction.ClientSetListPlayer
players = game.Players
for i, v in pairs(players:GetPlayers()) do
	if v.Name ~= players.LocalPlayer.Name then
		Client:InvokeServer(players.LocalPlayer.BlacklistFolder, v, true)
	end
end
players.PlayerAdded:connect(function(plr)
	Client:InvokeServer(players.LocalPlayer.BlacklistFolder, plr, true)
end)

--- Fly ---
 
function fly()
	for i,v in pairs(script:GetChildren()) do
	pcall(function() v.Value = "" end)
			game:GetService("Debris"):AddItem(v,.1)
		end
   
		function weld(p0,p1,c0,c1,par)
			local w = Instance.new("Weld",p0 or par)
			w.Part0 = p0
			w.Part1 = p1
			w.C0 = c0 or CFrame.new()
			w.C1 = c1 or CFrame.new()
			return w
		end
   
		local motors = {}
   
		function motor(p0,p1,c0,c1,des,vel,par)
			local w = Instance.new("Motor6D",p0 or par)
			w.Part0 = p0
			w.Part1 = p1
			w.C0 = c0 or CFrame.new()
			w.C1 = c1 or CFrame.new()
			w.MaxVelocity = tonumber(vel) or .05
			w.DesiredAngle = tonumber(des) or 0
			return w
		end
   
		function lerp(a,b,c)
			return a+(b-a)*c
		end
   
		function clerp(c1,c2,al)
			local com1 = {c1.X,c1.Y,c1.Z,c1:toEulerAnglesXYZ()}
			local com2 = {c2.X,c2.Y,c2.Z,c2:toEulerAnglesXYZ()}
			for i,v in pairs(com1) do
				com1[i] = lerp(v,com2[i],al)
			end
			return CFrame.new(com1[1],com1[2],com1[3]) * CFrame.Angles(select(4,unpack(com1)))
		end
   
		function ccomplerp(c1,c2,al)
			local com1 = {c1:components()}
			local com2 = {c2:components()}
			for i,v in pairs(com1) do
				com1[i] = lerp(v,com2[i],al)
			end
			return CFrame.new(unpack(com1))
		end
   
		function tickwave(time,length,offset)
			return (math.abs((tick()+(offset or 0))%time-time/2)*2-time/2)/time/2*length
		end

		function invcol(c)
			c = c.Color
			return BrickColor.new(Color3.new(1-c.b,1-c.g,1-c.r))
		end
		local oc = oc or function(...) return ... end
		local plr = game.Players.LocalPlayer
		local char = plr.Character
		local tor = char.Torso
		local hum = char.Humanoid
		hum.PlatformStand = false
		pcall(function()
			char.Wings:Destroy()
		end)
		pcall(function()
			char.Angel:Destroy() -- hat
		end)
		local mod = Instance.new("Model",char)
		mod.Name = "Wings"
		local special = {
			[game.Players.LocalPlayer.Name] = {"Black","Bright red",.5,0,false,Color3.new(1,0,0),Color3.new(0,0,0)},
		}
		local topcolor = BrickColor.new("Really black")
		local feacolor = BrickColor.new("Black")
		local ptrans = 0
		local pref = 0
		local fire = true
		local fmcol = Color3.new()
		local fscol = Color3.new()
		local spec = special[plr.Name:lower()]
		if spec then
			topcolor,feacolor,ptrans,pref,fire,fmcol,fscol = spec[1] and BrickColor.new(spec[1]) or topcolor,spec[2] and BrickColor.new(spec[2]) or feacolor,spec[3],spec[4],spec[5],spec[6],spec[7]
		end
		local part = Instance.new("Part")
		part.FormFactor = "Custom"
		part.Size = Vector3.new(.2,.2,.2)
		part.TopSurface,part.BottomSurface = 0,0
		part.CanCollide = false
		part.BrickColor = BrickColor.new("Black")
		part.Transparency = ptrans
		part.Reflectance = pref
		local ef = Instance.new("Fire",fire and part or nil)
		ef.Size = .15
		ef.Color = BrickColor.new("Black").Color
		ef.SecondaryColor = BrickColor.new("Bright red").Color
		part:BreakJoints()
		function newpart()
			local clone = part:Clone()
			clone.Parent = mod
			clone:BreakJoints()
			return clone
		end
		local feath = newpart()
		feath.BrickColor = feacolor
		feath.Transparency = 0
		Instance.new("SpecialMesh",feath).MeshType = "Sphere"
		function newfeather()
			local clone = feath:Clone()
			clone.Parent = mod
			clone:BreakJoints()
			return clone
		end
		flying = false
		moving = false
		for i,v in pairs(tor:GetChildren()) do
			if v.ClassName:lower():match("body") then
				v:Destroy()
			end
		end
		local ctor = tor:Clone()
		ctor:ClearAllChildren()
		ctor.Name = "cTorso"
		ctor.Transparency = 1
		ctor.CanCollide = false
		ctor.FormFactor = "Custom"
		ctor.Size = Vector3.new(.2,.2,.2)
		ctor.Parent = mod
		weld(tor,ctor)
		local bg = Instance.new("BodyGyro",ctor)
		bg.maxTorque = Vector3.new()
		bg.P = 15000
		bg.D = 1000
		local bv = Instance.new("BodyVelocity",ctor)
		bv.maxForce = Vector3.new()
		bv.P = 15000
		vel = Vector3.new()
		cf = CFrame.new()
		flspd = 0
		keysdown = {}
		keypressed = {}
		ktime = {}
		descendtimer = 0
		jumptime = tick()
		hum.Jumping:connect(function()
			jumptime = tick()
		end)
		cam = workspace.CurrentCamera
		kd = plr:GetMouse().KeyDown:connect(oc(function(key)
			keysdown[key] = true
			keypressed[key] = true
			if key == "q" then
				descendtimer = tick()
			elseif key == " " and not hum.Jump then
				jumptime = tick()
			elseif (key == "a" or key == "d") and ktime[key] and tick()-ktime[key] < .3 and math.abs(reqrotx) < .3 then
				reqrotx = key == "a" and math.pi*2 or -math.pi*2
			end
			ktime[key] = tick()
		end))
   
		ku = plr:GetMouse().KeyUp:connect(function(key)
			keysdown[key] = false
			if key == " " then
				descendtimer = tick()
			end
		end)
		function mid(a,b,c)
			return math.max(a,math.min(b,c or -a))
		end
		function bn(a)
			return a and 1 or 0
		end
		function gm(tar)
			local m = 0
			for i,v in pairs(tar:GetChildren()) do
				if v:IsA("BasePart") then
					m = m + v:GetMass()
				end
				m = m + gm(v)
			end
			return m
		end
		reqrotx = 0
		local grav = 196.2
		local con
		con = game:GetService("RunService").Stepped:connect(oc(function()
			local obvel = tor.CFrame:vectorToObjectSpace(tor.Velocity)
			local sspd, uspd,fspd = obvel.X,obvel.Y,obvel.Z
			if flying then
				local lfldir = fldir
				fldir = cam.CoordinateFrame:vectorToWorldSpace(Vector3.new(bn(keysdown.d)-bn(keysdown.a),0,bn(keysdown.s)-bn(keysdown.w))).unit
				local lmoving = moving
				moving = fldir.magnitude > .1
				if lmoving and not moving then
					idledir = lfldir*Vector3.new(1,0,1)
					descendtimer = tick()
				end
				local dbomb = fldir.Y < -.6 or (moving and keysdown["1"])
				if moving and keysdown["0"] and lmoving then
					fldir = (Vector3.new(lfldir.X,math.min(fldir.Y,lfldir.Y+.01)-.1,lfldir.Z)+(fldir*Vector3.new(1,0,1))*.05).unit
				end
				local down = tor.CFrame:vectorToWorldSpace(Vector3.new(0,-1,0))
				local descending = (not moving and keysdown["q"] and not keysdown[" "])
				cf = ccomplerp(cf,CFrame.new(tor.Position,tor.Position+(not moving and idledir or fldir)),keysdown["0"] and .02 or .07)
				local gdown = not dbomb and cf.lookVector.Y < -.2 and tor.Velocity.unit.Y < .05
				hum.PlatformStand = true
				bg.maxTorque = Vector3.new(1,1,1)*9e5
				local rotvel = CFrame.new(Vector3.new(),tor.Velocity):toObjectSpace(CFrame.new(Vector3.new(),fldir)).lookVector
				bg.cframe = cf * CFrame.Angles(not moving and -.1 or -math.pi/2+.2,moving and mid(-2.5,rotvel.X/1.5) + reqrotx or 0,0)
				reqrotx = reqrotx - reqrotx/10
				bv.maxForce = Vector3.new(1,1,1)*9e4*.5
				local anioff =(bn(keysdown[" "])-bn(keysdown["q"]))/2
				local ani = tickwave(1.5-anioff,1)
				bv.velocity = bv.velocity:Lerp(Vector3.new(0,bn(not moving)*-ani*15+(descending and math.min(20,tick()-descendtimer)*-8 or bn(keysdown[" "])-bn(keysdown["q"]))*15,0)+vel,.6)
				vel = moving and cf.lookVector*flspd or Vector3.new()
				flspd = math.min(120,lerp(flspd,moving and (fldir.Y<0 and flspd+(-fldir.Y)*grav/60 or math.max(50,flspd-fldir.Y*grav/300)) or 60,.4))
				local hit,ray = workspace:FindPartOnRayWithIgnoreList(Ray.new(tor.Position,Vector3.new(0,-3.5+math.min(0,bv.velocity.y)/30,0)),{char})
				if hit and down.Y < -.85 and tick()-flystart > 1 then
					flying = false
					hum.PlatformStand = false
					tor.Velocity = Vector3.new()
				end
			else
				bg.maxTorque = Vector3.new()
				bv.maxForce = Vector3.new()
				local x,y,z = fspd/160,uspd/700,sspd/900
				if keypressed[" "] and not flying and (tick()-jumptime > .05 and (tick()-jumptime < 3 or hum.Jump)) then
					vel = Vector3.new(0,50,0)
					bv.velocity = vel
					idledir = cam.CoordinateFrame.lookVector*Vector3.new(1,0,1)
					cf = tor.CFrame * CFrame.Angles(-.01,0,0)
					tor.CFrame = cf
					bg.cframe = cf
					flystart = tick()
					flying = true
			end
		end
		keypressed = {}
	end))
end
fly()

---

Option = false
BTool = "Nothing"
WCollide = "Nothing"
LT2Info = "Nothing"
GreyStart = "Nothing"
MDown = false
afkactive = false
CustomLocationSet = false

-- Objects

local LT2GUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MenuLeftFrame = Instance.new("Frame")
local LT2GUI2Frame = Instance.new("Frame")
local BringTree = Instance.new("TextButton")
local Waypoints = Instance.new("TextButton")
local SellFrame = Instance.new("Frame")
local SellWoodPlanks = Instance.new("TextButton")
local SellWood = Instance.new("TextButton")
local SellPlanks = Instance.new("TextButton")
local SellWoodTxt1 = Instance.new("TextLabel")
local SellPlanksTxt1 = Instance.new("TextLabel")
local Greywood = Instance.new("TextButton")
local GreywoodFrame = Instance.new("Frame")
local GreywoodHeader = Instance.new("TextLabel")
local GreywoodInfo = Instance.new("TextLabel")
local GreywoodStart = Instance.new("TextButton")
local StartFrameInfo = Instance.new("TextLabel")
local TPWood = Instance.new("TextButton")
local TPPlanks = Instance.new("TextButton")
local PlankFrame = Instance.new("Frame")
local ProcessedWoodList = Instance.new("ScrollingFrame")
local TpAllPlanks = Instance.new("TextButton")
local TpAllPlanksSpacer = Instance.new("TextLabel")
local TpAllPlanksTxt1 = Instance.new("TextLabel")
local GodMode = Instance.new("TextButton")
local GoldAxe = Instance.new("TextButton")
local GoldAxeInfo = Instance.new("TextLabel")
local GoldAxeFrame = Instance.new("Frame")
local GoldAxeHeader = Instance.new("TextLabel")
local GoldAxeStart = Instance.new("TextButton")
local Duper = Instance.new("TextButton")
local Depart = Instance.new("TextLabel")
local CopyTool = Instance.new("TextButton")
local DeleteTool = Instance.new("TextButton")
local MoveTool = Instance.new("TextButton")
local WaterCollide = Instance.new("TextButton")
local Minimize = Instance.new("TextButton")
local MenuFrame = Instance.new("Frame")
local WaypointFrame = Instance.new("Frame")
local WaypointList = Instance.new("ScrollingFrame")
local BoxedCars = Instance.new("TextButton")
local Cave = Instance.new("TextButton")
local LinksLogic = Instance.new("TextButton")
local Volcano = Instance.new("TextButton")
local BobsShack = Instance.new("TextButton")
local FancyFurnishings = Instance.new("TextButton")
local LandStore = Instance.new("TextButton")
local Dock = Instance.new("TextButton")
local FineArtsShop = Instance.new("TextButton")
local PalmIsland = Instance.new("TextButton")
local Bridge = Instance.new("TextButton")
local Swamp = Instance.new("TextButton")
local SpawnPoint = Instance.new("TextButton")
local WoodRUs = Instance.new("TextButton")
local EndTimes = Instance.new("TextButton")
local ShrineOfSight = Instance.new("TextButton")
local TheDen = Instance.new("TextButton")
local VolcanoWin = Instance.new("TextButton")
local SkiLodge = Instance.new("TextButton")
local StrangeMan = Instance.new("TextButton")
local ShowLocation = Instance.new("TextButton")
local CustomTPPoint = Instance.new("TextButton")
local PlotTp = Instance.new("TextButton")
local BringTreeFrame = Instance.new("Frame")
local BringTreeHeader = Instance.new("TextLabel")
local BringTreeInfo1 = Instance.new("TextButton")
local BringTreeInfo2 = Instance.new("TextLabel")
local ElmTree = Instance.new("TextButton")
local CherryTree = Instance.new("TextButton")
local OakTree = Instance.new("TextButton")
local BirchTree = Instance.new("TextButton")
local CaveCrawlerTree = Instance.new("TextButton")
local GoldTree = Instance.new("TextButton")
local GreenTree = Instance.new("TextButton")
local SpookyTree = Instance.new("TextButton")
local FirTree = Instance.new("TextButton")
local VolcanoTree = Instance.new("TextButton")
local KoaTree = Instance.new("TextButton")
local PalmTree = Instance.new("TextButton")
local EndTimesTree = Instance.new("TextButton")
local WalnutTree = Instance.new("TextButton")
local DupeFrame = Instance.new("Frame")
local Info = Instance.new("TextLabel")
local Dupe = Instance.new("TextButton")
local DupingText1 = Instance.new("TextLabel")
local MoreInfo = Instance.new("TextButton")
local Read = Instance.new("TextLabel")
local PlayerFrame = Instance.new("Frame")
local Player1 = Instance.new("TextButton")
local Player2 = Instance.new("TextButton")
local Player3 = Instance.new("TextButton")
local Player4 = Instance.new("TextButton")
local Player5 = Instance.new("TextButton")
local Player6 = Instance.new("TextButton")
local PlyrSel = Instance.new("TextLabel")
local TpPlayer = Instance.new("TextButton")
local TpBase = Instance.new("TextButton")
local WalkSpeed = Instance.new("TextButton")
local JumpPower = Instance.new("TextButton")
local WalkText = Instance.new("TextBox")
local JumpText = Instance.new("TextBox")
local NoClip = Instance.new("TextButton")
local GuiLabel = Instance.new("TextButton")
local GuiInfo = Instance.new("TextLabel")
local GuiInfoExtras = Instance.new("TextLabel")
local BToolsHeader = Instance.new("TextLabel")
local AntiAFK = Instance.new("TextButton")
local AntiAFKtime = Instance.new("TextLabel")
local PlayerTp = Instance.new("TextButton")
local TPTool = Instance.new("TextButton")
local ReJoinServer = Instance.new("TextButton")
local OpenFrame = Instance.new("Frame")
local Open = Instance.new("TextButton")
local CloseLT2 = Instance.new("TextButton")

-- Properties

LT2GUI.Name = "LT2GUI"
LT2GUI.Parent = game.CoreGui
local LT2CORE = game.CoreGui["LT2GUI"]

OpenFrame.Name = "OpenFrame"
OpenFrame.Parent = LT2GUI
OpenFrame.BackgroundColor3 = Color3.new(0, 0, 0)
OpenFrame.BorderColor3 = Color3.new(0, 1, 0)
OpenFrame.Position = UDim2.new(0.5, -40, 0, -28)
OpenFrame.Size = UDim2.new(0, 80, 0, 20)

Open.Name = "Open"
Open.Parent = OpenFrame
Open.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Open.BorderColor3 = Color3.new(0, 1, 0)
Open.Size = UDim2.new(0, 80, 0, 20)
Open.Font = Enum.Font.Fantasy
Open.FontSize = Enum.FontSize.Size18
Open.Text = "Open GUI"
Open.TextColor3 = Color3.new(0, 1, 0)
Open.TextSize = 18
Open.Selectable = true
Open.TextWrapped = true

MainFrame.Name = "MainFrame"
MainFrame.Parent = LT2GUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderColor3 = Color3.new(0, 1, 0)
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(0, 5, 1, -550)
MainFrame.Selectable = true
MainFrame.Size = UDim2.new(0, 335, 0, 370)
MainFrame.Visible = false

MenuLeftFrame.Name = "MenuLeftFrame"
MenuLeftFrame.Parent = MainFrame
MenuLeftFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MenuLeftFrame.BackgroundTransparency = 1
MenuLeftFrame.Position = UDim2.new(0, 5, 0, 40)
MenuLeftFrame.Size = UDim2.new(0, 140, 0, 325)

MenuFrame.Name = "MenuFrame"
MenuFrame.Parent = MainFrame
MenuFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MenuFrame.BackgroundTransparency = 0
MenuFrame.BorderColor3 = Color3.new(0, 1, 0)
MenuFrame.Position = UDim2.new(0, 155, 0, 40)
MenuFrame.Size = UDim2.new(0, 170, 0, 290)

StartFrameInfo.Name = "StartFrameInfo"
StartFrameInfo.Parent = MenuFrame
StartFrameInfo.BackgroundColor3 = Color3.new(0, 0, 0)
StartFrameInfo.BackgroundTransparency = 1
StartFrameInfo.Position = UDim2.new(0, 3, 0, 3)
StartFrameInfo.Size = UDim2.new(0, 164, 0, 284)
StartFrameInfo.Font = Enum.Font.Fantasy
StartFrameInfo.FontSize = Enum.FontSize.Size14
StartFrameInfo.Text = "All current players and new players who join will be automatically blacklisted.\n\nTP Tool adds a backpack item to click teleport you.\n\nTP Wood to You - Chop a tree/s then go to where you want them and click this button to teleport what you chopped to you.\n\nDouble tap Space Bar to Fly.\nFly in to the ground to land.\n\nClick on LT2 at the top for more info and extra options."
StartFrameInfo.TextColor3 = Color3.new(1, 1, 1)
StartFrameInfo.TextWrapped = true
StartFrameInfo.TextSize = 14

CloseLT2.Name = "CloseLT2"
CloseLT2.Parent = MainFrame
CloseLT2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
CloseLT2.BorderColor3 = Color3.new(0, 1, 0)
CloseLT2.Position = UDim2.new(0, 10, 0, 10)
CloseLT2.Size = UDim2.new(0, 20, 0, 20)
CloseLT2.Font = Enum.Font.Fantasy
CloseLT2.FontSize = Enum.FontSize.Size18
CloseLT2.Text = "X"
CloseLT2.TextColor3 = Color3.new(1, 1, 1)
CloseLT2.TextScaled = true
CloseLT2.TextWrapped = true
CloseLT2.TextSize = 17

Minimize.Name = "Minimize"
Minimize.Parent = MainFrame
Minimize.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Minimize.BorderColor3 = Color3.new(0, 1, 0)
Minimize.Position = UDim2.new(0, 40, 0, 10)
Minimize.Size = UDim2.new(0, 20, 0, 20)
Minimize.Font = Enum.Font.Fantasy
Minimize.FontSize = Enum.FontSize.Size18
Minimize.Text = "-"
Minimize.TextColor3 = Color3.new(1, 1, 1)
Minimize.TextScaled = true
Minimize.TextWrapped = true
Minimize.TextSize = 17

GuiLabel.Name = "GuiLabel"
GuiLabel.Parent = MainFrame
GuiLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
GuiLabel.BackgroundTransparency = 0
GuiLabel.BorderColor3 = Color3.new(0.2, 0.2, 0.2)
GuiLabel.Position = UDim2.new(0, 78, 0, 6)
GuiLabel.Size = UDim2.new(0, 49, 0, 28)
GuiLabel.Font = Enum.Font.Fantasy
GuiLabel.FontSize = Enum.FontSize.Size14
GuiLabel.Text = "LT2"
GuiLabel.TextColor3 = Color3.new(1, 0, 1)
GuiLabel.TextScaled = true
GuiLabel.TextSize = 14
GuiLabel.TextWrapped = true

LT2GUI2Frame.Name = "LT2GUI2Frame"
LT2GUI2Frame.Parent = MainFrame
LT2GUI2Frame.BackgroundColor3 = Color3.new(0, 0, 0)
LT2GUI2Frame.BackgroundTransparency = 0
LT2GUI2Frame.BorderColor3 = Color3.new(0, 1, 0)
LT2GUI2Frame.Position = UDim2.new(0, 10, 0, 40)
LT2GUI2Frame.Size = UDim2.new(0, 315, 0, 320)
LT2GUI2Frame.ZIndex = 8
LT2GUI2Frame.Visible = false
LT2GUI2Frame.Active = false

GuiInfo.Name = "GuiInfo"
GuiInfo.Parent = LT2GUI2Frame
GuiInfo.BackgroundColor3 = Color3.new(0, 0, 0)
GuiInfo.BorderColor3 = Color3.new(0, 1, 0)
GuiInfo.Position = UDim2.new(0, 0, 0, 5)
GuiInfo.Size = UDim2.new(0, 315, 0, 200)
GuiInfo.BackgroundTransparency = 1
GuiInfo.Font = Enum.Font.Fantasy
GuiInfo.FontSize = Enum.FontSize.Size14
GuiInfo.Text = "CREDITS - I took ideas from different scripts and added a lot of new stuff so if you see anything that you made please let me know and I will add thanks to this screen.\n\nHope you enjoy using this.\n\nIf you want to get in touch my discord is LuckyMMB#8646"
GuiInfo.TextColor3 = Color3.new(1, 1, 1)
GuiInfo.TextSize = 14
GuiInfo.ZIndex = 8
GuiInfo.TextWrapped = true
GuiInfo.TextYAlignment = Enum.TextYAlignment.Top

GuiInfoExtras.Name = "GuiInfoExtras"
GuiInfoExtras.Parent = LT2GUI2Frame
GuiInfoExtras.BackgroundColor3 = Color3.new(0, 0, 0)
GuiInfoExtras.BorderColor3 = Color3.new(0, 0, 0)
GuiInfoExtras.Position = UDim2.new(0, 125, 0, 180)
GuiInfoExtras.Size = UDim2.new(0, 65, 0, 20)
GuiInfoExtras.BackgroundTransparency = 0
GuiInfoExtras.Font = Enum.Font.Fantasy
GuiInfoExtras.FontSize = Enum.FontSize.Size18
GuiInfoExtras.TextColor3 = Color3.new(1, 1, 1)
GuiInfoExtras.Text = "EXTRAS"
GuiInfoExtras.ZIndex = 8
GuiInfoExtras.TextSize = 20

ReJoinServer.Name = "ReJoinServer"
ReJoinServer.Parent = LT2GUI2Frame
ReJoinServer.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ReJoinServer.BorderColor3 = Color3.new(0, 1, 0)
ReJoinServer.Position = UDim2.new(0, 80, 0, 210)
ReJoinServer.Size = UDim2.new(0, 155, 0, 20)
ReJoinServer.BackgroundTransparency = 0
ReJoinServer.Font = Enum.Font.Fantasy
ReJoinServer.FontSize = Enum.FontSize.Size18
ReJoinServer.Text = "ReJoin Server"
ReJoinServer.TextColor3 = Color3.new(1, 1, 1)
ReJoinServer.ZIndex = 8
ReJoinServer.TextSize = 17

AntiAFK.Name = "AntiAFK"
AntiAFK.Parent = LT2GUI2Frame
AntiAFK.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
AntiAFK.BorderColor3 = Color3.new(0, 1, 0)
AntiAFK.Position = UDim2.new(0, 80, 0, 240)
AntiAFK.Size = UDim2.new(0, 155, 0, 20)
AntiAFK.BackgroundTransparency = 0
AntiAFK.Font = Enum.Font.Fantasy
AntiAFK.FontSize = Enum.FontSize.Size18
AntiAFK.Text = "Start Anti-AFK Mode"
AntiAFK.TextColor3 = Color3.new(1, 1, 1)
AntiAFK.ZIndex = 8
AntiAFK.TextSize = 17

AntiAFKtime.Name = "AntiAFKtime"
AntiAFKtime.Parent = LT2GUI2Frame
AntiAFKtime.BackgroundColor3 = Color3.new(0, 0, 0)
AntiAFKtime.BorderColor3 = Color3.new(0, 0, 0)
AntiAFKtime.Position = UDim2.new(0, 80, 0, 263)
AntiAFKtime.Size = UDim2.new(0, 155, 0, 20)
AntiAFKtime.BackgroundTransparency = 0
AntiAFKtime.Font = Enum.Font.Fantasy
AntiAFKtime.FontSize = Enum.FontSize.Size18
AntiAFKtime.Text = "AFK for: 0 Seconds"
AntiAFKtime.TextColor3 = Color3.new(1, 1, 1)
AntiAFKtime.ZIndex = 8
AntiAFKtime.TextSize = 17

BToolsHeader.Name = "BToolsHeader"
BToolsHeader.Parent = LT2GUI2Frame
BToolsHeader.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
BToolsHeader.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
BToolsHeader.Position = UDim2.new(0, 10, 0, 290)
BToolsHeader.Size = UDim2.new(0, 70, 0, 20)
BToolsHeader.BackgroundTransparency = 0
BToolsHeader.Font = Enum.Font.Fantasy
BToolsHeader.FontSize = Enum.FontSize.Size18
BToolsHeader.Text = "BTools"
BToolsHeader.TextColor3 = Color3.new(1, 1, 1)
BToolsHeader.ZIndex = 8
BToolsHeader.TextSize = 17

CopyTool.Name = "CopyTool"
CopyTool.Parent = LT2GUI2Frame
CopyTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
CopyTool.TextColor3 = Color3.new(1, 1, 1)
CopyTool.BorderColor3 = Color3.new(0, 1, 0)
CopyTool.Position = UDim2.new(0, 97, 0, 290)
CopyTool.Size = UDim2.new(0, 64, 0, 20)
CopyTool.Font = Enum.Font.Fantasy
CopyTool.FontSize = Enum.FontSize.Size18
CopyTool.BackgroundTransparency = 0
CopyTool.Text = "Copy"
CopyTool.ZIndex = 8
CopyTool.TextSize = 17

DeleteTool.Name = "DeleteTool"
DeleteTool.Parent = LT2GUI2Frame
DeleteTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
DeleteTool.TextColor3 = Color3.new(1, 1, 1)
DeleteTool.BorderColor3 = Color3.new(0, 1, 0)
DeleteTool.Position = UDim2.new(0, 169, 0, 290)
DeleteTool.Size = UDim2.new(0, 64, 0, 20)
DeleteTool.Font = Enum.Font.Fantasy
DeleteTool.FontSize = Enum.FontSize.Size18
DeleteTool.BackgroundTransparency = 0
DeleteTool.Text = "Delete"
DeleteTool.ZIndex = 8
DeleteTool.TextSize = 17

MoveTool.Name = "MoveTool"
MoveTool.Parent = LT2GUI2Frame
MoveTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MoveTool.TextColor3 = Color3.new(1, 1, 1)
MoveTool.BorderColor3 = Color3.new(0, 1, 0)
MoveTool.Position = UDim2.new(0, 241, 0, 290)
MoveTool.Size = UDim2.new(0, 64, 0, 20)
MoveTool.Font = Enum.Font.Fantasy
MoveTool.FontSize = Enum.FontSize.Size18
MoveTool.BackgroundTransparency = 0
MoveTool.Text = "Move"
MoveTool.ZIndex = 8
MoveTool.TextSize = 17

TPTool.Name = "TPTool"
TPTool.Parent = MainFrame
TPTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TPTool.BorderColor3 = Color3.new(0, 1, 0)
TPTool.Position = UDim2.new(0, 145, 0, 10)
TPTool.Size = UDim2.new(0, 60, 0, 20)
TPTool.Font = Enum.Font.Fantasy
TPTool.FontSize = Enum.FontSize.Size18
TPTool.Text = "Tp Tool"
TPTool.TextColor3 = Color3.new(1, 1, 1)
TPTool.TextSize = 17

NoClip.Name = "NoClip"
NoClip.Parent = MainFrame
NoClip.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
NoClip.BorderColor3 = Color3.new(0, 1, 0)
NoClip.Position = UDim2.new(0, 215, 0, 10)
NoClip.Size = UDim2.new(0, 110, 0, 20)
NoClip.Font = Enum.Font.Fantasy
NoClip.FontSize = Enum.FontSize.Size18
NoClip.Text = "Enable NoClip"
NoClip.TextColor3 = Color3.new(1, 1, 1)
NoClip.TextSize = 17

Depart.Name = "Depart"
Depart.Parent = MenuLeftFrame
Depart.BackgroundColor3 = Color3.new(0, 0, 0)
Depart.BackgroundTransparency = 1
Depart.Position = UDim2.new(0, 5, 0, 0)
Depart.Size = UDim2.new(0, 135, 0, 20)
Depart.Font = Enum.Font.Fantasy
Depart.FontSize = Enum.FontSize.Size18
Depart.Text = "Ferry Departs: 0"
Depart.TextColor3 = Color3.new(1, 1, 1)
Depart.TextSize = 17

Waypoints.Name = "Waypoints"
Waypoints.Parent = MenuLeftFrame
Waypoints.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Waypoints.TextColor3 = Color3.new(1, 1, 1)
Waypoints.BorderColor3 = Color3.new(0, 1, 0)
Waypoints.Position = UDim2.new(0, 5, 0, 30)
Waypoints.Size = UDim2.new(0, 135, 0, 20)
Waypoints.Font = Enum.Font.Fantasy
Waypoints.FontSize = Enum.FontSize.Size18
Waypoints.Text = "Waypoints"
Waypoints.TextSize = 17

TPWood.Name = "TPWood"
TPWood.Parent = MenuLeftFrame
TPWood.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TPWood.BorderColor3 = Color3.new(0, 1, 0)
TPWood.Position = UDim2.new(0, 5, 0, 60)
TPWood.Size = UDim2.new(0, 135, 0, 20)
TPWood.Font = Enum.Font.Fantasy
TPWood.FontSize = Enum.FontSize.Size18
TPWood.Text = "TP Wood to You"
TPWood.TextColor3 = Color3.new(1, 1, 1)
TPWood.TextSize = 17

TPPlanks.Name = "TPPlanks"
TPPlanks.Parent = MenuLeftFrame
TPPlanks.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TPPlanks.BorderColor3 = Color3.new(0, 1, 0)
TPPlanks.Position = UDim2.new(0, 5, 0, 90)
TPPlanks.Size = UDim2.new(0, 135, 0, 20)
TPPlanks.Font = Enum.Font.Fantasy
TPPlanks.FontSize = Enum.FontSize.Size18
TPPlanks.Text = "TP Planks to You"
TPPlanks.TextColor3 = Color3.new(1, 1, 1)
TPPlanks.TextSize = 17

PlankFrame.Name = "PlankFrame"
PlankFrame.Parent = MenuFrame
PlankFrame.BackgroundColor3 = Color3.new(0, 0, 0)
PlankFrame.BackgroundTransparency = 0
PlankFrame.BorderColor3 = Color3.new(0, 1, 0)
PlankFrame.Position = UDim2.new(0, 0, 0, 34)
PlankFrame.Size = UDim2.new(0, 170, 0, 256)
PlankFrame.Visible = false

ProcessedWoodList.Name = "ProcessedWoodList"
ProcessedWoodList.Parent = PlankFrame
ProcessedWoodList.BackgroundColor3 = Color3.new(0, 0, 0)
ProcessedWoodList.BackgroundTransparency = 1
ProcessedWoodList.BorderColor3 = Color3.new(0, 1, 0)
ProcessedWoodList.Position = UDim2.new(0, 0, 0, 1)
ProcessedWoodList.Size = UDim2.new(0, 170, 0, 256)

TpAllPlanks.Name = "TpAllPlanks"
TpAllPlanks.Parent = PlankFrame
TpAllPlanks.BackgroundColor3 = Color3.new(0.15, 0.15, 0.15)
TpAllPlanks.BorderColor3 = Color3.new(0, 1, 0)
TpAllPlanks.Position = UDim2.new(0, 0, 0, -34)
TpAllPlanks.Size = UDim2.new(0, 170, 0, 30)
TpAllPlanks.Font = Enum.Font.Fantasy
TpAllPlanks.FontSize = Enum.FontSize.Size18
TpAllPlanks.Text = "TP ALL PLANKS"
TpAllPlanks.TextColor3 = Color3.new(1, 1, 1)
TpAllPlanks.TextSize = 18

TpAllPlanksSpacer.Name = "TpAllPlanksSpacer"
TpAllPlanksSpacer.Parent = PlankFrame
TpAllPlanksSpacer.BackgroundTransparency = 0
TpAllPlanksSpacer.BackgroundColor3 = Color3.new(0, 0, 0)
TpAllPlanksSpacer.BorderColor3 = Color3.new(0, 1, 0)
TpAllPlanksSpacer.Position = UDim2.new(0, 0, 0, -4)
TpAllPlanksSpacer.Size = UDim2.new(0, 170, 0, 4)
TpAllPlanksSpacer.Font = Enum.Font.Fantasy
TpAllPlanksSpacer.Text = ""
TpAllPlanksSpacer.TextColor3 = Color3.new(1, 1, 1)
TpAllPlanksSpacer.TextSize = 17

SellWoodPlanks.Name = "SellWoodPlanks"
SellWoodPlanks.Parent = MenuLeftFrame
SellWoodPlanks.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
SellWoodPlanks.BorderColor3 = Color3.new(0, 1, 0)
SellWoodPlanks.Position = UDim2.new(0, 5, 0, 120)
SellWoodPlanks.Size = UDim2.new(0, 135, 0, 20)
SellWoodPlanks.Font = Enum.Font.Fantasy
SellWoodPlanks.FontSize = Enum.FontSize.Size18
SellWoodPlanks.Text = "Sell Wood/Planks"
SellWoodPlanks.TextColor3 = Color3.new(1, 1, 1)
SellWoodPlanks.TextSize = 17

SellFrame.Name = "SellFrame"
SellFrame.Parent = MenuFrame
SellFrame.BackgroundColor3 = Color3.new(0, 0, 0)
SellFrame.BackgroundTransparency = 0
SellFrame.BorderColor3 = Color3.new(0, 1, 0)
SellFrame.Size = UDim2.new(0, 170, 0, 290)
SellFrame.Visible = false

SellWood.Name = "SellWood"
SellWood.Parent = SellFrame
SellWood.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
SellWood.BorderColor3 = Color3.new(0, 1, 0)
SellWood.Position = UDim2.new(0, 30, 0, 10)
SellWood.Size = UDim2.new(0, 110, 0, 20)
SellWood.Font = Enum.Font.Fantasy
SellWood.FontSize = Enum.FontSize.Size18
SellWood.Text = "Sell Cut Wood"
SellWood.TextColor3 = Color3.new(1, 1, 1)
SellWood.TextSize = 17

SellWoodTxt1.Name = "SellWoodTxt1"
SellWoodTxt1.Parent = SellFrame
SellWoodTxt1.BackgroundColor3 = Color3.new(0, 0, 0)
SellWoodTxt1.BackgroundTransparency = 1
SellWoodTxt1.BorderColor3 = Color3.new(0, 0, 0)
SellWoodTxt1.Position = UDim2.new(0, 5, 0, 35)
SellWoodTxt1.Size = UDim2.new(0, 160, 0, 100)
SellWoodTxt1.Font = Enum.Font.Fantasy
SellWoodTxt1.FontSize = Enum.FontSize.Size18
SellWoodTxt1.Text = "Click this after you finish chopping trees to send the wood to the Wood Drop Off and sell it automatically. If it gets stuck click Sell again.\n\n"
SellWoodTxt1.TextColor3 = Color3.new(0, 1, 0)
SellWoodTxt1.TextSize = 14
SellWoodTxt1.TextWrapped = true
SellWoodTxt1.TextYAlignment = Enum.TextYAlignment.Top

SellPlanks.Name = "SellPlanks"
SellPlanks.Parent = SellFrame
SellPlanks.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
SellPlanks.BorderColor3 = Color3.new(0, 1, 0)
SellPlanks.Position = UDim2.new(0, 6, 0, 135)
SellPlanks.Size = UDim2.new(0, 158, 0, 20)
SellPlanks.Font = Enum.Font.Fantasy
SellPlanks.FontSize = Enum.FontSize.Size18
SellPlanks.Text = "Sell Processed Planks"
SellPlanks.TextColor3 = Color3.new(1, 1, 1)
SellPlanks.TextSize = 17

SellPlanksTxt1.Name = "SellPlanksTxt1"
SellPlanksTxt1.Parent = SellFrame
SellPlanksTxt1.BackgroundColor3 = Color3.new(0, 0, 0)
SellPlanksTxt1.BackgroundTransparency = 1
SellPlanksTxt1.BorderColor3 = Color3.new(0, 0, 0)
SellPlanksTxt1.Position = UDim2.new(0, 5, 0, 160)
SellPlanksTxt1.Size = UDim2.new(0, 160, 0, 120)
SellPlanksTxt1.Font = Enum.Font.Fantasy
SellPlanksTxt1.FontSize = Enum.FontSize.Size18
SellPlanksTxt1.Text = "Click this to send ALL processed planks on your plot to the Wood Drop Off and sell it automatically. If it gets stuck click Sell again. WARNING: Do Not click this unless you want ALL your planks to be sold."
SellPlanksTxt1.TextColor3 = Color3.new(0, 1, 0)
SellPlanksTxt1.TextSize = 14
SellPlanksTxt1.TextWrapped = true
SellPlanksTxt1.TextYAlignment = Enum.TextYAlignment.Top

BringTree.Name = "BringTree"
BringTree.Parent = MenuLeftFrame
BringTree.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BringTree.BorderColor3 = Color3.new(0, 1, 0)
BringTree.Position = UDim2.new(0, 5, 0, 150)
BringTree.Size = UDim2.new(0, 135, 0, 20)
BringTree.Font = Enum.Font.Fantasy
BringTree.FontSize = Enum.FontSize.Size18
BringTree.Text = "Bring A Tree"
BringTree.TextColor3 = Color3.new(1, 1, 1)
BringTree.TextSize = 17

PlayerTp.Name = "PlayerTp"
PlayerTp.Parent = MenuLeftFrame
PlayerTp.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PlayerTp.TextColor3 = Color3.new(1, 1, 1)
PlayerTp.BorderColor3 = Color3.new(0, 1, 0)
PlayerTp.Position = UDim2.new(0, 5, 0, 180)
PlayerTp.Size = UDim2.new(0, 135, 0, 20)
PlayerTp.Font = Enum.Font.Fantasy
PlayerTp.FontSize = Enum.FontSize.Size18
PlayerTp.Text = "Tp to Players"
PlayerTp.TextSize = 17

Duper.Name = "Duper"
Duper.Parent = MenuLeftFrame
Duper.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Duper.TextColor3 = Color3.new(1, 1, 1)
Duper.BorderColor3 = Color3.new(0, 1, 0)
Duper.Position = UDim2.new(0, 5, 0, 210)
Duper.Size = UDim2.new(0, 135, 0, 20)
Duper.Font = Enum.Font.Fantasy
Duper.FontSize = Enum.FontSize.Size18
Duper.Text = "Item Duping"
Duper.TextSize = 17

Greywood.Name = "Greywood"
Greywood.Parent = MenuLeftFrame
Greywood.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Greywood.TextColor3 = Color3.new(1, 1, 1)
Greywood.BorderColor3 = Color3.new(0, 1, 0)
Greywood.Position = UDim2.new(0, 5, 0, 240)
Greywood.Size = UDim2.new(0, 135, 0, 20)
Greywood.Font = Enum.Font.Fantasy
Greywood.FontSize = Enum.FontSize.Size18
Greywood.Text = "Grey Structures"
Greywood.TextSize = 17

GreywoodFrame.Name = "GreywoodFrame"
GreywoodFrame.Parent = MenuFrame
GreywoodFrame.BackgroundColor3 = Color3.new(0, 0, 0)
GreywoodFrame.BackgroundTransparency = 0
GreywoodFrame.BorderColor3 = Color3.new(0, 1, 0)
GreywoodFrame.Size = UDim2.new(0, 170, 0, 290)
GreywoodFrame.Visible = false

GreywoodHeader.Name = "GreywoodHeader"
GreywoodHeader.Parent = GreywoodFrame
GreywoodHeader.BackgroundColor3 = Color3.new(1, 1, 1)
GreywoodHeader.BackgroundTransparency = 0.15
GreywoodHeader.BorderColor3 = Color3.new(0, 1, 0)
GreywoodHeader.Size = UDim2.new(0, 170, 0, 35)
GreywoodHeader.Font = Enum.Font.Fantasy
GreywoodHeader.FontSize = Enum.FontSize.Size18
GreywoodHeader.Text = "TURN EMPTY BLUEPRINT TO GREYWOOD"
GreywoodHeader.TextColor3 = Color3.new(0, 0, 0)
GreywoodHeader.TextScaled = true
GreywoodHeader.TextSize = 17
GreywoodHeader.TextWrapped = true

GreywoodInfo.Name = "GreywoodInfo"
GreywoodInfo.Parent = GreywoodFrame
GreywoodInfo.BackgroundColor3 = Color3.new(0, 0, 0)
GreywoodInfo.BackgroundTransparency = 1
GreywoodInfo.Position = UDim2.new(0, 5, 0, 40)
GreywoodInfo.Size = UDim2.new(0, 160, 0, 250)
GreywoodInfo.Font = Enum.Font.Fantasy
GreywoodInfo.FontSize = Enum.FontSize.Size14
GreywoodInfo.Text = "1. Place Blueprints down.\n2. Click on 'Start' below.\n3. Press 'e' on blueprint.\n4. Click on Move.\n5. Press 'b' to cancel the move.\n6. It should now be filled with GreyWood\n\nNOTE: Some blueprints will not fill with Grey. Smooth Wall blueprints seem to work best but you can try whatever you want."
GreywoodInfo.TextColor3 = Color3.new(0, 1, 0)
GreywoodInfo.TextSize = 14
GreywoodInfo.TextYAlignment = Enum.TextYAlignment.Top
GreywoodInfo.TextWrapped = true

GreywoodStart.Name = "GreywoodStart"
GreywoodStart.Parent = GreywoodFrame
GreywoodStart.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
GreywoodStart.BorderColor3 = Color3.new(0, 1, 0)
GreywoodStart.Position = UDim2.new(0, 25, 0, 255)
GreywoodStart.Size = UDim2.new(0, 120, 0, 25)
GreywoodStart.Font = Enum.Font.Fantasy
GreywoodStart.FontSize = Enum.FontSize.Size18
GreywoodStart.Text = "Start"
GreywoodStart.TextColor3 = Color3.new(1, 1, 1)
GreywoodStart.TextSize = 17

WaterCollide.Name = "WaterCollide"
WaterCollide.Parent = MenuLeftFrame
WaterCollide.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
WaterCollide.BorderColor3 = Color3.new(0, 1, 0)
WaterCollide.Position = UDim2.new(0, 5, 0, 270)
WaterCollide.Size = UDim2.new(0, 135, 0, 20)
WaterCollide.Font = Enum.Font.Fantasy
WaterCollide.FontSize = Enum.FontSize.Size18
WaterCollide.Text = "Walk on Water"
WaterCollide.TextColor3 = Color3.new(1, 1, 1)
WaterCollide.TextSize = 17

GodMode.Name = "GodMode"
GodMode.Parent = MenuLeftFrame
GodMode.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
GodMode.TextColor3 = Color3.new(1, 1, 1)
GodMode.BorderColor3 = Color3.new(0, 1, 0)
GodMode.Position = UDim2.new(0, 5, 0, 300)
GodMode.Size = UDim2.new(0, 55, 0, 20)
GodMode.Font = Enum.Font.Fantasy
GodMode.FontSize = Enum.FontSize.Size18
GodMode.Text = "God"
GodMode.TextScaled = true
GodMode.TextSize = 17

GoldAxe.Name = "GoldAxe"
GoldAxe.Parent = MenuLeftFrame
GoldAxe.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
GoldAxe.TextColor3 = Color3.new(1, 1, 1)
GoldAxe.BorderColor3 = Color3.new(0, 1, 0)
GoldAxe.Position = UDim2.new(0, 70, 0, 300)
GoldAxe.Size = UDim2.new(0, 70, 0, 20)
GoldAxe.Font = Enum.Font.Fantasy
GoldAxe.FontSize = Enum.FontSize.Size18
GoldAxe.Text = "Gold Axe"
GoldAxe.TextWrapped = true
GoldAxe.TextSize = 17

GoldAxeFrame.Name = "GoldAxeFrame"
GoldAxeFrame.Parent = MenuFrame
GoldAxeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
GoldAxeFrame.BackgroundTransparency = 0
GoldAxeFrame.BorderColor3 = Color3.new(0, 1, 0)
GoldAxeFrame.Size = UDim2.new(0, 170, 0, 290)
GoldAxeFrame.Visible = false

GoldAxeHeader.Name = "GoldAxeHeader"
GoldAxeHeader.Parent = GoldAxeFrame
GoldAxeHeader.BackgroundColor3 = Color3.new(1, 1, 1)
GoldAxeHeader.BackgroundTransparency = 0.15
GoldAxeHeader.BorderColor3 = Color3.new(0, 1, 0)
GoldAxeHeader.Size = UDim2.new(0, 170, 0, 35)
GoldAxeHeader.Font = Enum.Font.Fantasy
GoldAxeHeader.FontSize = Enum.FontSize.Size18
GoldAxeHeader.Text = "CHOP WOOD WITH GOLDEN AXE POWER"
GoldAxeHeader.TextColor3 = Color3.new(0, 0, 0)
GoldAxeHeader.TextScaled = true
GoldAxeHeader.TextSize = 17
GoldAxeHeader.TextWrapped = true

GoldAxeInfo.Name = "GoldAxeInfo"
GoldAxeInfo.Parent = GoldAxeFrame
GoldAxeInfo.BackgroundColor3 = Color3.new(0, 0, 0)
GoldAxeInfo.BackgroundTransparency = 1
GoldAxeInfo.Position = UDim2.new(0, 5, 0, 40)
GoldAxeInfo.Size = UDim2.new(0, 160, 0, 210)
GoldAxeInfo.Font = Enum.Font.Fantasy
GoldAxeInfo.FontSize = Enum.FontSize.Size14
GoldAxeInfo.Text = "1. Buy a Basic Hatchet if you don't have one\n\n2. Click the start button to enable Golden Axe mode\n\n3. Take out the Basic Hatchet and hold down the left mouse button on a tree to cut through it.\n\nONLY use a Basic Hatchet with Golden Axe mode enabled or you will drop the axe and die."
GoldAxeInfo.TextColor3 = Color3.new(0, 1, 0)
GoldAxeInfo.TextSize = 14
GoldAxeInfo.TextYAlignment = Enum.TextYAlignment.Top
GoldAxeInfo.TextWrapped = true

GoldAxeStart.Name = "GoldAxeStart"
GoldAxeStart.Parent = GoldAxeFrame
GoldAxeStart.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
GoldAxeStart.BorderColor3 = Color3.new(0, 1, 0)
GoldAxeStart.Position = UDim2.new(0, 25, 0, 255)
GoldAxeStart.Size = UDim2.new(0, 120, 0, 25)
GoldAxeStart.Font = Enum.Font.Fantasy
GoldAxeStart.FontSize = Enum.FontSize.Size18
GoldAxeStart.Text = "Start"
GoldAxeStart.TextColor3 = Color3.new(1, 1, 1)
GoldAxeStart.TextSize = 17

WaypointFrame.Name = "WaypointFrame"
WaypointFrame.Parent = MenuFrame
WaypointFrame.BackgroundColor3 = Color3.new(0, 0, 0)
WaypointFrame.BackgroundTransparency = 0
WaypointFrame.BorderColor3 = Color3.new(0, 1, 0)
WaypointFrame.Size = UDim2.new(0, 170, 0, 290)
WaypointFrame.Visible = false

WaypointList.Name = "WaypointList"
WaypointList.Parent = WaypointFrame
WaypointList.BackgroundColor3 = Color3.new(0, 0, 0)
WaypointList.BackgroundTransparency = 0
WaypointList.BorderColor3 = Color3.new(0, 1, 0)
WaypointList.Size = UDim2.new(0, 170, 0, 290)
WaypointList.CanvasSize = UDim2.new(0, 0, 2.15, 0)

ShowLocation.Name = "ShowLocation"
ShowLocation.Parent = WaypointList
ShowLocation.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ShowLocation.TextColor3 = Color3.new(1, 1, 1)
ShowLocation.BorderColor3 = Color3.new(0, 1, 0)
ShowLocation.Position = UDim2.new(0, 5, 0, 5)
ShowLocation.Size = UDim2.new(0, 147, 0, 40)
ShowLocation.Font = Enum.Font.Fantasy
ShowLocation.FontSize = Enum.FontSize.Size14
ShowLocation.Text = "Show Current Coords\nSet Custom Location"
ShowLocation.TextWrapped = true
ShowLocation.TextSize = 15

CustomTPPoint.Name = "CustomTPPoint"
CustomTPPoint.Parent = WaypointList
CustomTPPoint.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
CustomTPPoint.TextColor3 = Color3.new(1, 1, 1)
CustomTPPoint.BorderColor3 = Color3.new(0, 1, 0)
CustomTPPoint.Position = UDim2.new(0, 5, 0, 50)
CustomTPPoint.Size = UDim2.new(0, 147, 0, 20)
CustomTPPoint.Font = Enum.Font.Fantasy
CustomTPPoint.FontSize = Enum.FontSize.Size14
CustomTPPoint.Text = "TP to Custom Location"
CustomTPPoint.TextWrapped = true
CustomTPPoint.TextSize = 15

PlotTp.Name = "PlotTp"
PlotTp.Parent = WaypointList
PlotTp.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PlotTp.TextColor3 = Color3.new(1, 1, 1)
PlotTp.BorderColor3 = Color3.new(0, 1, 0)
PlotTp.Position = UDim2.new(0, 5, 0, 75)
PlotTp.Size = UDim2.new(0, 147, 0, 20)
PlotTp.Font = Enum.Font.Fantasy
PlotTp.FontSize = Enum.FontSize.Size14
PlotTp.Text = "Tp to Your Plot"
PlotTp.TextSize = 16

SpawnPoint.Name = "SpawnPoint"
SpawnPoint.Parent = WaypointList
SpawnPoint.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
SpawnPoint.TextColor3 = Color3.new(1, 1, 1)
SpawnPoint.BorderColor3 = Color3.new(0, 1, 0)
SpawnPoint.Position = UDim2.new(0, 5, 0, 100)
SpawnPoint.Size = UDim2.new(0, 147, 0, 20)
SpawnPoint.Font = Enum.Font.Fantasy
SpawnPoint.FontSize = Enum.FontSize.Size14
SpawnPoint.Text = "Spawn Point"
SpawnPoint.TextSize = 16

WoodRUs.Name = "WoodRUs"
WoodRUs.Parent = WaypointList
WoodRUs.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
WoodRUs.TextColor3 = Color3.new(1, 1, 1)
WoodRUs.BorderColor3 = Color3.new(0, 1, 0)
WoodRUs.Position = UDim2.new(0, 5, 0, 125)
WoodRUs.Size = UDim2.new(0, 147, 0, 20)
WoodRUs.Font = Enum.Font.Fantasy
WoodRUs.FontSize = Enum.FontSize.Size14
WoodRUs.Text = "Wood R Us"
WoodRUs.TextSize = 16

LinksLogic.Name = "LinksLogic"
LinksLogic.Parent = WaypointList
LinksLogic.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
LinksLogic.TextColor3 = Color3.new(1, 1, 1)
LinksLogic.BorderColor3 = Color3.new(0, 1, 0)
LinksLogic.Position = UDim2.new(0, 5, 0, 150)
LinksLogic.Size = UDim2.new(0, 147, 0, 20)
LinksLogic.Font = Enum.Font.Fantasy
LinksLogic.FontSize = Enum.FontSize.Size14
LinksLogic.Text = "Link's Logic"
LinksLogic.TextSize = 16

BoxedCars.Name = "BoxedCars"
BoxedCars.Parent = WaypointList
BoxedCars.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BoxedCars.TextColor3 = Color3.new(1, 1, 1)
BoxedCars.BorderColor3 = Color3.new(0, 1, 0)
BoxedCars.Position = UDim2.new(0, 5, 0, 175)
BoxedCars.Size = UDim2.new(0, 147, 0, 20)
BoxedCars.Font = Enum.Font.Fantasy
BoxedCars.FontSize = Enum.FontSize.Size14
BoxedCars.Text = "Boxed Cars"
BoxedCars.TextSize = 16

FancyFurnishings.Name = "FancyFurnishings"
FancyFurnishings.Parent = WaypointList
FancyFurnishings.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
FancyFurnishings.TextColor3 = Color3.new(1, 1, 1)
FancyFurnishings.BorderColor3 = Color3.new(0, 1, 0)
FancyFurnishings.Position = UDim2.new(0, 5, 0, 200)
FancyFurnishings.Size = UDim2.new(0, 147, 0, 20)
FancyFurnishings.Font = Enum.Font.Fantasy
FancyFurnishings.FontSize = Enum.FontSize.Size14
FancyFurnishings.Text = "Fancy Furnishings"
FancyFurnishings.TextSize = 16

LandStore.Name = "LandStore"
LandStore.Parent = WaypointList
LandStore.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
LandStore.TextColor3 = Color3.new(1, 1, 1)
LandStore.BorderColor3 = Color3.new(0, 1, 0)
LandStore.Position = UDim2.new(0, 5, 0, 225)
LandStore.Size = UDim2.new(0, 147, 0, 20)
LandStore.Font = Enum.Font.Fantasy
LandStore.FontSize = Enum.FontSize.Size14
LandStore.Text = "Land Store"
LandStore.TextSize = 16

FineArtsShop.Name = "FineArtsShop"
FineArtsShop.Parent = WaypointList
FineArtsShop.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
FineArtsShop.TextColor3 = Color3.new(1, 1, 1)
FineArtsShop.BorderColor3 = Color3.new(0, 1, 0)
FineArtsShop.Position = UDim2.new(0, 5, 0, 250)
FineArtsShop.Size = UDim2.new(0, 147, 0, 20)
FineArtsShop.Font = Enum.Font.Fantasy
FineArtsShop.FontSize = Enum.FontSize.Size14
FineArtsShop.Text = "Fine Arts Shop"
FineArtsShop.TextSize = 16

BobsShack.Name = "BobsShack"
BobsShack.Parent = WaypointList
BobsShack.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BobsShack.TextColor3 = Color3.new(1, 1, 1)
BobsShack.BorderColor3 = Color3.new(0, 1, 0)
BobsShack.Position = UDim2.new(0, 5, 0, 275)
BobsShack.Size = UDim2.new(0, 147, 0, 20)
BobsShack.Font = Enum.Font.Fantasy
BobsShack.FontSize = Enum.FontSize.Size14
BobsShack.Text = "Bob's Shack"
BobsShack.TextSize = 16

Swamp.Name = "Swamp"
Swamp.Parent = WaypointList
Swamp.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Swamp.TextColor3 = Color3.new(1, 1, 1)
Swamp.BorderColor3 = Color3.new(0, 1, 0)
Swamp.Position = UDim2.new(0, 5, 0, 300)
Swamp.Size = UDim2.new(0, 147, 0, 20)
Swamp.Font = Enum.Font.Fantasy
Swamp.FontSize = Enum.FontSize.Size14
Swamp.Text = "Swamp"
Swamp.TextSize = 16

PalmIsland.Name = "PalmIsland"
PalmIsland.Parent = WaypointList
PalmIsland.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
PalmIsland.TextColor3 = Color3.new(1, 1, 1)
PalmIsland.BorderColor3 = Color3.new(0, 1, 0)
PalmIsland.Position = UDim2.new(0, 5, 0, 325)
PalmIsland.Size = UDim2.new(0, 147, 0, 20)
PalmIsland.Font = Enum.Font.Fantasy
PalmIsland.FontSize = Enum.FontSize.Size14
PalmIsland.Text = "Palm Island"
PalmIsland.TextSize = 16

Cave.Name = "Cave"
Cave.Parent = WaypointList
Cave.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Cave.TextColor3 = Color3.new(1, 1, 1)
Cave.BorderColor3 = Color3.new(0, 1, 0)
Cave.Position = UDim2.new(0, 5, 0, 350)
Cave.Size = UDim2.new(0, 147, 0, 20)
Cave.Font = Enum.Font.Fantasy
Cave.FontSize = Enum.FontSize.Size14
Cave.Text = "Cave"
Cave.TextSize = 16

Volcano.Name = "Volcano"
Volcano.Parent = WaypointList
Volcano.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Volcano.TextColor3 = Color3.new(1, 1, 1)
Volcano.BorderColor3 = Color3.new(0, 1, 0)
Volcano.Position = UDim2.new(0, 5, 0, 375)
Volcano.Size = UDim2.new(0, 147, 0, 20)
Volcano.Font = Enum.Font.Fantasy
Volcano.FontSize = Enum.FontSize.Size14
Volcano.Text = "Volcano"
Volcano.TextSize = 16

Dock.Name = "Dock"
Dock.Parent = WaypointList
Dock.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Dock.TextColor3 = Color3.new(1, 1, 1)
Dock.BorderColor3 = Color3.new(0, 1, 0)
Dock.Position = UDim2.new(0, 5, 0, 400)
Dock.Size = UDim2.new(0, 147, 0, 20)
Dock.Font = Enum.Font.Fantasy
Dock.FontSize = Enum.FontSize.Size14
Dock.Text = "Dock"
Dock.TextSize = 16

Bridge.Name = "Bridge"
Bridge.Parent = WaypointList
Bridge.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Bridge.TextColor3 = Color3.new(1, 1, 1)
Bridge.BorderColor3 = Color3.new(0, 1, 0)
Bridge.Position = UDim2.new(0, 5, 0, 425)
Bridge.Size = UDim2.new(0, 147, 0, 20)
Bridge.Font = Enum.Font.Fantasy
Bridge.FontSize = Enum.FontSize.Size14
Bridge.Text = "Bridge"
Bridge.TextSize = 16

EndTimes.Name = "EndTimes"
EndTimes.Parent = WaypointList
EndTimes.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
EndTimes.TextColor3 = Color3.new(1, 1, 1)
EndTimes.BorderColor3 = Color3.new(0, 1, 0)
EndTimes.Position = UDim2.new(0, 5, 0, 450)
EndTimes.Size = UDim2.new(0, 147, 0, 20)
EndTimes.Font = Enum.Font.Fantasy
EndTimes.FontSize = Enum.FontSize.Size14
EndTimes.Text = "End Times"
EndTimes.TextSize = 16

ShrineOfSight.Name = "ShrineOfSight"
ShrineOfSight.Parent = WaypointList
ShrineOfSight.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
ShrineOfSight.TextColor3 = Color3.new(1, 1, 1)
ShrineOfSight.BorderColor3 = Color3.new(0, 1, 0)
ShrineOfSight.Position = UDim2.new(0, 5, 0, 475)
ShrineOfSight.Size = UDim2.new(0, 147, 0, 20)
ShrineOfSight.Font = Enum.Font.Fantasy
ShrineOfSight.FontSize = Enum.FontSize.Size14
ShrineOfSight.Text = "Shrine Of Sight"
ShrineOfSight.TextSize = 16

TheDen.Name = "TheDen"
TheDen.Parent = WaypointList
TheDen.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TheDen.TextColor3 = Color3.new(1, 1, 1)
TheDen.BorderColor3 = Color3.new(0, 1, 0)
TheDen.Position = UDim2.new(0, 5, 0, 500)
TheDen.Size = UDim2.new(0, 147, 0, 20)
TheDen.Font = Enum.Font.Fantasy
TheDen.FontSize = Enum.FontSize.Size14
TheDen.Text = "The Den"
TheDen.TextSize = 16

VolcanoWin.Name = "VolcanoWin"
VolcanoWin.Parent = WaypointList
VolcanoWin.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
VolcanoWin.TextColor3 = Color3.new(1, 1, 1)
VolcanoWin.BorderColor3 = Color3.new(0, 1, 0)
VolcanoWin.Position = UDim2.new(0, 5, 0, 525)
VolcanoWin.Size = UDim2.new(0, 147, 0, 20)
VolcanoWin.Font = Enum.Font.Fantasy
VolcanoWin.FontSize = Enum.FontSize.Size14
VolcanoWin.Text = "Volcano Win"
VolcanoWin.TextSize = 16

SkiLodge.Name = "SkiLodge"
SkiLodge.Parent = WaypointList
SkiLodge.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
SkiLodge.TextColor3 = Color3.new(1, 1, 1)
SkiLodge.BorderColor3 = Color3.new(0, 1, 0)
SkiLodge.Position = UDim2.new(0, 5, 0, 550)
SkiLodge.Size = UDim2.new(0, 147, 0, 20)
SkiLodge.Font = Enum.Font.Fantasy
SkiLodge.FontSize = Enum.FontSize.Size14
SkiLodge.Text = "Ski Lodge"
SkiLodge.TextSize = 16

StrangeMan.Name = "StrangeMan"
StrangeMan.Parent = WaypointList
StrangeMan.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
StrangeMan.TextColor3 = Color3.new(1, 1, 1)
StrangeMan.BorderColor3 = Color3.new(0, 1, 0)
StrangeMan.Position = UDim2.new(0, 5, 0, 575)
StrangeMan.Size = UDim2.new(0, 147, 0, 20)
StrangeMan.Font = Enum.Font.Fantasy
StrangeMan.FontSize = Enum.FontSize.Size14
StrangeMan.Text = "The Strange Man"
StrangeMan.TextSize = 16

BringTreeFrame.Name = "BringTreeFrame"
BringTreeFrame.Parent = MenuFrame
BringTreeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
BringTreeFrame.BackgroundTransparency = 0
BringTreeFrame.BorderColor3 = Color3.new(0, 1, 0)
BringTreeFrame.Size = UDim2.new(0, 170, 0, 290)
BringTreeFrame.Visible = false

BringTreeHeader.Name = "BringTreeHeader"
BringTreeHeader.Parent = BringTreeFrame
BringTreeHeader.BackgroundColor3 = Color3.new(1, 1, 1)
BringTreeHeader.BackgroundTransparency = 0.15
BringTreeHeader.BorderColor3 = Color3.new(0, 1, 0)
BringTreeHeader.Position = UDim2.new(0, 0, 0, 0)
BringTreeHeader.Size = UDim2.new(0, 170, 0, 35)
BringTreeHeader.Font = Enum.Font.Fantasy
BringTreeHeader.FontSize = Enum.FontSize.Size18
BringTreeHeader.Text = "SELECT A TREE TO SPAWN"
BringTreeHeader.TextColor3 = Color3.new(0, 0, 0)
BringTreeHeader.TextScaled = true
BringTreeHeader.TextSize = 17
BringTreeHeader.TextWrapped = true

BringTreeInfo1.Name = "BringTreeInfo1"
BringTreeInfo1.Parent = BringTreeFrame
BringTreeInfo1.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
BringTreeInfo1.BorderColor3 = Color3.new(0, 1, 0)
BringTreeInfo1.Position = UDim2.new(0, 30, 0, 255)
BringTreeInfo1.Size = UDim2.new(0, 110, 0, 25)
BringTreeInfo1.Font = Enum.Font.SourceSans
BringTreeInfo1.FontSize = Enum.FontSize.Size18
BringTreeInfo1.TextColor3 = Color3.new(1, 1, 1)
BringTreeInfo1.Text = "Info"
BringTreeInfo1.TextScaled = true
BringTreeInfo1.TextSize = 18

BringTreeInfo2.Name = "BringTreeInfo2"
BringTreeInfo2.Parent = BringTreeFrame
BringTreeInfo2.BackgroundColor3 = Color3.new(0, 0, 0)
BringTreeInfo2.BorderColor3 = Color3.new(0, 1, 0)
BringTreeInfo2.Position = UDim2.new(0, 185, 1, -260)
BringTreeInfo2.Size = UDim2.new(0, 170, 0, 300)
BringTreeInfo2.Visible = false
BringTreeInfo2.Font = Enum.Font.Fantasy
BringTreeInfo2.FontSize = Enum.FontSize.Size18
BringTreeInfo2.Text = "1. Click on a tree name to spawn it.\n2. Use an axe to chop it until the tree vanishes.\n3. Click on 'TP Wood to you' to bring the wood back or click 'Sell Wood' to send the wood to the Wood DropOff and sell it automatically for money.\n\nSome trees don't work so just try them and see if you get lucky."
BringTreeInfo2.TextColor3 = Color3.new(1, 1, 1)
BringTreeInfo2.TextSize = 16
BringTreeInfo2.Active = true
BringTreeInfo2.Draggable = true
BringTreeInfo2.ZIndex = 7
BringTreeInfo2.TextWrapped = true
BringTreeInfo2.TextYAlignment = Enum.TextYAlignment.Top

OakTree.Name = "OakTree"
OakTree.Parent = BringTreeFrame
OakTree.BackgroundColor3 = Color3.new(0.95256, 0.70952, 0.60368)
OakTree.BackgroundTransparency = 0.15
OakTree.BorderColor3 = Color3.new(0, 1, 0)
OakTree.Position = UDim2.new(0, 5, 0, 45)
OakTree.Size = UDim2.new(0, 37, 0, 35)
OakTree.Font = Enum.Font.Fantasy
OakTree.FontSize = Enum.FontSize.Size18
OakTree.Text = "OAK\nTREE"
OakTree.TextColor3 = Color3.new(0, 0, 0)
OakTree.TextWrapped = true
OakTree.TextSize = 14

ElmTree.Name = "ElmTree"
ElmTree.Parent = BringTreeFrame
ElmTree.BackgroundColor3 = Color3.new(1, 0.95648, 0.88984)
ElmTree.BackgroundTransparency = 0.15
ElmTree.BorderColor3 = Color3.new(0, 1, 0)
ElmTree.Position = UDim2.new(0, 47, 0, 45)
ElmTree.Size = UDim2.new(0, 37, 0, 35)
ElmTree.Font = Enum.Font.Fantasy
ElmTree.FontSize = Enum.FontSize.Size18
ElmTree.Text = "ELM\nTREE"
ElmTree.TextColor3 = Color3.new(0, 0, 0)
ElmTree.TextWrapped = true
ElmTree.TextSize = 14

EndTimesTree.Name = "EndTimesTree"
EndTimesTree.Parent = BringTreeFrame
EndTimesTree.BackgroundColor3 = Color3.new(1, 1, 1)
EndTimesTree.BackgroundTransparency = 0.15
EndTimesTree.BorderColor3 = Color3.new(0, 1, 0)
EndTimesTree.Position = UDim2.new(0, 89, 0, 45)
EndTimesTree.Size = UDim2.new(0, 76, 0, 35)
EndTimesTree.Font = Enum.Font.Fantasy
EndTimesTree.FontSize = Enum.FontSize.Size18
EndTimesTree.Text = "ENDTIMES\nTREE"
EndTimesTree.TextColor3 = Color3.new(0, 0, 0)
EndTimesTree.TextWrapped = true
EndTimesTree.TextSize = 14

BirchTree.Name = "BirchTree"
BirchTree.Parent = BringTreeFrame
BirchTree.BackgroundColor3 = Color3.new(0.9604, 0.9604, 0.9604)
BirchTree.BackgroundTransparency = 0.15
BirchTree.BorderColor3 = Color3.new(0, 1, 0)
BirchTree.Position = UDim2.new(0, 5, 0, 85)
BirchTree.Size = UDim2.new(0, 45, 0, 35)
BirchTree.Font = Enum.Font.Fantasy
BirchTree.FontSize = Enum.FontSize.Size18
BirchTree.Text = "BIRCH\nTREE"
BirchTree.TextColor3 = Color3.new(0, 0, 0)
BirchTree.TextWrapped = true
BirchTree.TextSize = 14

VolcanoTree.Name = "VolcanoTree"
VolcanoTree.Parent = BringTreeFrame
VolcanoTree.BackgroundColor3 = Color3.new(1, 0, 0)
VolcanoTree.BackgroundTransparency = 0.15
VolcanoTree.BorderColor3 = Color3.new(0, 1, 0)
VolcanoTree.Position = UDim2.new(0, 55, 0, 85)
VolcanoTree.Size = UDim2.new(0, 65, 0, 35)
VolcanoTree.Font = Enum.Font.Fantasy
VolcanoTree.FontSize = Enum.FontSize.Size18
VolcanoTree.Text = "VOLCANO\nTREE"
VolcanoTree.TextColor3 = Color3.new(0, 0, 0)
VolcanoTree.TextWrapped = true
VolcanoTree.TextSize = 14

FirTree.Name = "FirTree"
FirTree.Parent = BringTreeFrame
FirTree.BackgroundColor3 = Color3.new(1, 0.96824, 0.9212)
FirTree.BackgroundTransparency = 0.15
FirTree.BorderColor3 = Color3.new(0, 1, 0)
FirTree.Position = UDim2.new(0, 125, 0, 85)
FirTree.Size = UDim2.new(0, 40, 0, 35)
FirTree.Font = Enum.Font.Fantasy
FirTree.FontSize = Enum.FontSize.Size18
FirTree.Text = "FIR\nTREE"
FirTree.TextColor3 = Color3.new(0, 0, 0)
FirTree.TextWrapped = true
FirTree.TextSize = 14

SpookyTree.Name = "SpookyTree"
SpookyTree.Parent = BringTreeFrame
SpookyTree.BackgroundColor3 = Color3.new(0.35672, 0.062736, 0.003921)
SpookyTree.BackgroundTransparency = 0.15
SpookyTree.BorderColor3 = Color3.new(0, 1, 0)
SpookyTree.Position = UDim2.new(0, 5, 0, 125)
SpookyTree.Size = UDim2.new(0, 60, 0, 35)
SpookyTree.Font = Enum.Font.Fantasy
SpookyTree.FontSize = Enum.FontSize.Size18
SpookyTree.Text = "SPOOKY\nTREE"
SpookyTree.TextColor3 = Color3.new(1, 1, 1)
SpookyTree.TextWrapped = true
SpookyTree.TextSize = 14

KoaTree.Name = "KoaTree"
KoaTree.Parent = BringTreeFrame
KoaTree.BackgroundColor3 = Color3.new(0.72912, 0.125472, 0.003921)
KoaTree.BackgroundTransparency = 0.15
KoaTree.BorderColor3 = Color3.new(0, 1, 0)
KoaTree.Position = UDim2.new(0, 70, 0, 125)
KoaTree.Size = UDim2.new(0, 45, 0, 35)
KoaTree.Font = Enum.Font.Fantasy
KoaTree.FontSize = Enum.FontSize.Size18
KoaTree.Text = "KOA\nTREE"
KoaTree.TextColor3 = Color3.new(1, 1, 1)
KoaTree.TextWrapped = true
KoaTree.TextSize = 14

PalmTree.Name = "PalmTree"
PalmTree.Parent = BringTreeFrame
PalmTree.BackgroundColor3 = Color3.new(1, 0.96824, 0.9212)
PalmTree.BackgroundTransparency = 0.15
PalmTree.BorderColor3 = Color3.new(0, 1, 0)
PalmTree.Position = UDim2.new(0, 120, 0, 125)
PalmTree.Size = UDim2.new(0, 45, 0, 35)
PalmTree.Font = Enum.Font.Fantasy
PalmTree.FontSize = Enum.FontSize.Size18
PalmTree.Text = "PALM\nTREE"
PalmTree.TextColor3 = Color3.new(0, 0, 0)
PalmTree.TextWrapped = true
PalmTree.TextSize = 14

GreenTree.Name = "GreenTree"
GreenTree.Parent = BringTreeFrame
GreenTree.BackgroundColor3 = Color3.new(0, 1, 0)
GreenTree.BackgroundTransparency = 0.15
GreenTree.BorderColor3 = Color3.new(0, 1, 0)
GreenTree.Position = UDim2.new(0, 5, 0, 165)
GreenTree.Size = UDim2.new(0, 51, 0, 35)
GreenTree.Font = Enum.Font.Fantasy
GreenTree.FontSize = Enum.FontSize.Size18
GreenTree.Text = "GREEN\nTREE"
GreenTree.TextColor3 = Color3.new(0, 0, 0)
GreenTree.TextWrapped = true
GreenTree.TextSize = 14

GoldTree.Name = "GoldTree"
GoldTree.Parent = BringTreeFrame
GoldTree.BackgroundColor3 = Color3.new(0.960645, 0.86262, 0.231339)
GoldTree.BackgroundTransparency = 0.15
GoldTree.BorderColor3 = Color3.new(0, 1, 0)
GoldTree.Position = UDim2.new(0, 61, 0, 165)
GoldTree.Size = UDim2.new(0, 44, 0, 35)
GoldTree.Font = Enum.Font.Fantasy
GoldTree.FontSize = Enum.FontSize.Size18
GoldTree.Text = "GOLD\nTREE"
GoldTree.TextColor3 = Color3.new(0, 0, 0)
GoldTree.TextWrapped = true
GoldTree.TextSize = 14

CherryTree.Name = "CherryTree"
CherryTree.Parent = BringTreeFrame
CherryTree.BackgroundColor3 = Color3.new(0.93296, 0.39984, 0.49)
CherryTree.BackgroundTransparency = 0.15
CherryTree.BorderColor3 = Color3.new(0, 1, 0)
CherryTree.Position = UDim2.new(0, 110, 0, 165)
CherryTree.Size = UDim2.new(0, 55, 0, 35)
CherryTree.Font = Enum.Font.Fantasy
CherryTree.FontSize = Enum.FontSize.Size18
CherryTree.Text = "CHERRY TREE"
CherryTree.TextColor3 = Color3.new(0, 0, 0)
CherryTree.TextWrapped = true
CherryTree.TextSize = 14

CaveCrawlerTree.Name = "CaveCrawlerTree"
CaveCrawlerTree.Parent = BringTreeFrame
CaveCrawlerTree.BackgroundColor3 = Color3.new(0, 0, 1)
CaveCrawlerTree.BackgroundTransparency = 0.15
CaveCrawlerTree.BorderColor3 = Color3.new(0, 1, 0)
CaveCrawlerTree.Position = UDim2.new(0, 5, 0, 205)
CaveCrawlerTree.Size = UDim2.new(0, 95, 0, 35)
CaveCrawlerTree.Font = Enum.Font.Fantasy
CaveCrawlerTree.FontSize = Enum.FontSize.Size18
CaveCrawlerTree.Text = "CAVECRAWLER\nTREE"
CaveCrawlerTree.TextColor3 = Color3.new(1, 1, 1)
CaveCrawlerTree.TextWrapped = true
CaveCrawlerTree.TextSize = 14

WalnutTree.Name = "WalnutTree"
WalnutTree.Parent = BringTreeFrame
WalnutTree.BackgroundColor3 = Color3.new(0.360732, 0.176445, 0.137235)
WalnutTree.BackgroundTransparency = 0.15
WalnutTree.BorderColor3 = Color3.new(0, 1, 0)
WalnutTree.Position = UDim2.new(0, 105, 0, 205)
WalnutTree.Size = UDim2.new(0, 60, 0, 35)
WalnutTree.Font = Enum.Font.Fantasy
WalnutTree.FontSize = Enum.FontSize.Size18
WalnutTree.Text = "WALNUT\nTREE"
WalnutTree.TextColor3 = Color3.new(1, 1, 1)
WalnutTree.TextWrapped = true
WalnutTree.TextSize = 14

DupeFrame.Name = "DupeFrame"
DupeFrame.Parent = MenuFrame
DupeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
DupeFrame.BackgroundTransparency = 0
DupeFrame.BorderColor3 = Color3.new(0, 1, 0)
DupeFrame.Size = UDim2.new(0, 170, 0, 290)
DupeFrame.Visible = false

Info.Name = "Info"
Info.Parent = DupeFrame
Info.BackgroundColor3 = Color3.new(0, 0, 0)
Info.BorderColor3 = Color3.new(0, 1, 0)
Info.Position = UDim2.new(0, 185, 1, -370)
Info.Size = UDim2.new(0, 170, 0, 410)
Info.Visible = false
Info.Font = Enum.Font.Fantasy
Info.FontSize = Enum.FontSize.Size14
Info.Text = "1. Make sure no Save Slot is loaded in (or unload it).\n2. Click the 'Dupe' button.\n3. The button will turn green.\n4. Load the Save Slot you want to dupe from.\n5. After it's loaded check the Slot does not say 'Current'.\n6. Whitelist the person you want to move [dupe] your items to and make sure they aren't blacklisted\n7. Move the items you want to dupe to your friends base.\n8. Once you are done, reload your Save Slot that you just moved your items from.\n9. Once your Save Slot has reloaded, your base and every thing will be where it was before you duped.\n10. When you are done duping, reload your Slot one more time so you don't lose the items off of your base.\n11. You can disable this by unloading your Save Slot and pressing the Dupe button, it will turn grey."
Info.TextColor3 = Color3.new(1, 1, 1)
Info.TextSize = 14
Info.Active = true
Info.Draggable = true
Info.ZIndex = 7
Info.TextWrapped = true
Info.TextYAlignment = Enum.TextYAlignment.Top

Read.Name = "Read"
Read.Parent = DupeFrame
Read.BackgroundColor3 = Color3.new(1, 1, 1)
Read.BackgroundTransparency = 0.15
Read.BorderColor3 = Color3.new(0, 1, 0)
Read.Size = UDim2.new(0, 170, 0, 35)
Read.Font = Enum.Font.Fantasy
Read.FontSize = Enum.FontSize.Size18
Read.Text = "READ INFO BEFORE USING THIS"
Read.TextColor3 = Color3.new(0, 0, 0)
Read.TextScaled = true
Read.TextSize = 17
Read.TextWrapped = true

Dupe.Name = "Dupe"
Dupe.Parent = DupeFrame
Dupe.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Dupe.BorderColor3 = Color3.new(0, 1, 0)
Dupe.Position = UDim2.new(0, 50, 0, 65)
Dupe.Size = UDim2.new(0, 70, 0, 25)
Dupe.Font = Enum.Font.Fantasy
Dupe.FontSize = Enum.FontSize.Size18
Dupe.Text = "Dupe"
Dupe.TextScaled = true
Dupe.TextColor3 = Color3.new(1, 1, 1)
Dupe.TextSize = 17

DupingText1.Name = "DupingText1"
DupingText1.Parent = DupeFrame
DupingText1.BackgroundColor3 = Color3.new(0, 0, 0)
DupingText1.BackgroundTransparency = 1
DupingText1.Position = UDim2.new(0, 5, 0, 100)
DupingText1.Size = UDim2.new(0, 160, 0, 140)
DupingText1.Font = Enum.Font.Fantasy
DupingText1.FontSize = Enum.FontSize.Size14
DupingText1.Text = "Loaded Slot Will Save"
DupingText1.TextColor3 = Color3.new(0, 1, 0)
DupingText1.TextSize = 14
DupingText1.TextYAlignment = Enum.TextYAlignment.Top
DupingText1.TextWrapped = true

MoreInfo.Name = "MoreInfo"
MoreInfo.Parent = DupeFrame
MoreInfo.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
MoreInfo.BorderColor3 = Color3.new(0, 1, 0)
MoreInfo.Position = UDim2.new(0, 25, 0, 240)
MoreInfo.Size = UDim2.new(0, 120, 0, 25)
MoreInfo.Font = Enum.Font.SourceSans
MoreInfo.FontSize = Enum.FontSize.Size18
MoreInfo.Text = "Info"
MoreInfo.TextScaled = true
MoreInfo.TextColor3 = Color3.new(1, 1, 1)
MoreInfo.TextSize = 18

PlayerFrame.Name = "PlayerFrame"
PlayerFrame.Parent = MenuFrame
PlayerFrame.BackgroundColor3 = Color3.new(0, 0, 0)
PlayerFrame.BackgroundTransparency = 0
PlayerFrame.BorderColor3 = Color3.new(0, 1, 0)
PlayerFrame.Size = UDim2.new(0, 170, 0, 290)
PlayerFrame.Visible = false

PlyrSel.Name = "PlyrSel"
PlyrSel.Parent = PlayerFrame
PlyrSel.BackgroundColor3 = Color3.new(1, 1, 1)
PlyrSel.BackgroundTransparency = 0.15
PlyrSel.BorderColor3 = Color3.new(0, 1, 0)
PlyrSel.Position = UDim2.new(0, 5, 0, 5)
PlyrSel.Size = UDim2.new(0, 160, 0, 20)
PlyrSel.Font = Enum.Font.SourceSans
PlyrSel.FontSize = Enum.FontSize.Size18
PlyrSel.Text = "SELECT A PLAYER"
PlyrSel.TextColor3 = Color3.new(0, 0, 0)
PlyrSel.TextScaled = true
PlyrSel.TextSize = 17
PlyrSel.TextWrapped = true

Player1.Name = "Player1"
Player1.Parent = PlayerFrame
Player1.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Player1.BorderColor3 = Color3.new(0, 1, 0)
Player1.Position = UDim2.new(0, 5, 0, 40)
Player1.Size = UDim2.new(0, 160, 0, 20)
Player1.Font = Enum.Font.Fantasy
Player1.FontSize = Enum.FontSize.Size18
Player1.Text = ""
Player1.TextColor3 = Color3.new(1, 1, 1)
Player1.TextSize = 16
Player1.TextWrapped = true

Player2.Name = "Player2"
Player2.Parent = PlayerFrame
Player2.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Player2.BorderColor3 = Color3.new(0, 1, 0)
Player2.Position = UDim2.new(0, 5, 0, 65)
Player2.Size = UDim2.new(0, 160, 0, 20)
Player2.Font = Enum.Font.Fantasy
Player2.FontSize = Enum.FontSize.Size18
Player2.Text = ""
Player2.TextColor3 = Color3.new(1, 1, 1)
Player2.TextSize = 16
Player2.TextWrapped = true

Player3.Name = "Player3"
Player3.Parent = PlayerFrame
Player3.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Player3.BorderColor3 = Color3.new(0, 1, 0)
Player3.Position = UDim2.new(0, 5, 0, 90)
Player3.Size = UDim2.new(0, 160, 0, 20)
Player3.Font = Enum.Font.Fantasy
Player3.FontSize = Enum.FontSize.Size18
Player3.Text = ""
Player3.TextColor3 = Color3.new(1, 1, 1)
Player3.TextSize = 16
Player3.TextWrapped = true

Player4.Name = "Player4"
Player4.Parent = PlayerFrame
Player4.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Player4.BorderColor3 = Color3.new(0, 1, 0)
Player4.Position = UDim2.new(0, 5, 0, 115)
Player4.Size = UDim2.new(0, 160, 0, 20)
Player4.Font = Enum.Font.Fantasy
Player4.FontSize = Enum.FontSize.Size18
Player4.Text = ""
Player4.TextColor3 = Color3.new(1, 1, 1)
Player4.TextSize = 16
Player4.TextWrapped = true

Player5.Name = "Player5"
Player5.Parent = PlayerFrame
Player5.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Player5.BorderColor3 = Color3.new(0, 1, 0)
Player5.Position = UDim2.new(0, 5, 0, 140)
Player5.Size = UDim2.new(0, 160, 0, 20)
Player5.Font = Enum.Font.Fantasy
Player5.FontSize = Enum.FontSize.Size18
Player5.Text = ""
Player5.TextColor3 = Color3.new(1, 1, 1)
Player5.TextSize = 16
Player5.TextWrapped = true

Player6.Name = "Player6"
Player6.Parent = PlayerFrame
Player6.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Player6.BorderColor3 = Color3.new(0, 1, 0)
Player6.Position = UDim2.new(0, 5, 0, 165)
Player6.Size = UDim2.new(0, 160, 0, 20)
Player6.Font = Enum.Font.Fantasy
Player6.FontSize = Enum.FontSize.Size18
Player6.Text = ""
Player6.TextColor3 = Color3.new(1, 1, 1)
Player6.TextSize = 16
Player6.TextWrapped = true

TpPlayer.Name = "TpPlayer"
TpPlayer.Parent = PlayerFrame
TpPlayer.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TpPlayer.BackgroundTransparency = 0
TpPlayer.BorderColor3 = Color3.new(0, 1, 0)
TpPlayer.Position = UDim2.new(0, 5, 0, 225)
TpPlayer.Size = UDim2.new(0, 75, 0, 35)
TpPlayer.Font = Enum.Font.Fantasy
TpPlayer.FontSize = Enum.FontSize.Size18
TpPlayer.Text = "Tp to Player"
TpPlayer.TextColor3 = Color3.new(1, 1, 1)
TpPlayer.TextScaled = true
TpPlayer.TextWrapped = true
TpPlayer.TextSize = 14

TpBase.Name = "TpBase"
TpBase.Parent = PlayerFrame
TpBase.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
TpBase.BackgroundTransparency = 0
TpBase.BorderColor3 = Color3.new(0, 1, 0)
TpBase.Position = UDim2.new(0, 90, 0, 225)
TpBase.Size = UDim2.new(0, 75, 0, 35)
TpBase.Font = Enum.Font.Fantasy
TpBase.FontSize = Enum.FontSize.Size18
TpBase.Text = "Tp to\nBase"
TpBase.TextColor3 = Color3.new(1, 1, 1)
TpPlayer.TextSize = 22

WalkSpeed.Name = "WalkSpeed"
WalkSpeed.Parent = MainFrame
WalkSpeed.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
WalkSpeed.TextColor3 = Color3.new(1, 1, 1)
WalkSpeed.BorderColor3 = Color3.new(0, 1, 0)
WalkSpeed.Position = UDim2.new(0, 155, 0, 340)
WalkSpeed.Size = UDim2.new(0, 45, 0, 20)
WalkSpeed.Font = Enum.Font.Fantasy
WalkSpeed.FontSize = Enum.FontSize.Size18
WalkSpeed.Text = "Walk"
WalkSpeed.TextSize = 17

WalkText.Name = "WalkText"
WalkText.Parent = MainFrame
WalkText.BackgroundColor3 = Color3.new(0, 0, 0)
WalkText.BorderColor3 = Color3.new(0, 1, 0)
WalkText.Position = UDim2.new(0, 205, 0, 340)
WalkText.Size = UDim2.new(0, 28, 0, 20)
WalkText.Font = Enum.Font.Fantasy
WalkText.FontSize = Enum.FontSize.Size18
WalkText.Text = "16"
WalkText.TextColor3 = Color3.new(1, 1, 1)
WalkText.TextSize = 17
WalkText.TextScaled = true

JumpPower.Name = "JumpPower"
JumpPower.Parent = MainFrame
JumpPower.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
JumpPower.TextColor3 = Color3.new(1, 1, 1)
JumpPower.BorderColor3 = Color3.new(0, 1, 0)
JumpPower.Position = UDim2.new(0, 243, 0, 340)
JumpPower.Size = UDim2.new(0, 49, 0, 20)
JumpPower.Font = Enum.Font.Fantasy
JumpPower.FontSize = Enum.FontSize.Size18
JumpPower.Text = "Jump"
JumpPower.TextSize = 17

JumpText.Name = "JumpText"
JumpText.Parent = MainFrame
JumpText.BackgroundColor3 = Color3.new(0, 0, 0)
JumpText.BorderColor3 = Color3.new(0, 1, 0)
JumpText.Position = UDim2.new(0, 297, 0, 340)
JumpText.Size = UDim2.new(0, 28, 0, 20)
JumpText.Font = Enum.Font.Fantasy
JumpText.FontSize = Enum.FontSize.Size18
JumpText.Text = "50"
JumpText.TextColor3 = Color3.new(1, 1, 1)
JumpText.TextSize = 17
JumpText.TextScaled = true

game.Lighting.Changed:connect(function()
	game.Lighting.TimeOfDay = "12:00:00"
	game.Lighting.FogEnd = 9999
	game.Lighting.Brightness = 1
end)

--- Menus ---

local Menus = {
[BringTree] = BringTreeFrame;
[Waypoints] = WaypointFrame;
[Duper] = DupeFrame;
[TPPlanks] = PlankFrame;
[GoldAxe] = GoldAxeFrame;
[PlayerTp] = PlayerFrame;
[Greywood] = GreywoodFrame;
[GuiLabel] = LT2GUI2Frame;
[SellWoodPlanks] = SellFrame;
}
for button,frame in pairs(Menus) do
	button.MouseButton1Click:connect(function()
		if frame.Visible then
			frame.Visible = false
			return
		end
		for k,v in pairs(Menus) do
			v.Visible = v == frame
		end
	end)
end

--- Open/Close ---

Open.MouseButton1Down:connect(function()
	OpenFrame.Visible = false
	MainFrame.Visible = true
end)

Minimize.MouseButton1Down:connect(function()
	MainFrame.Visible = false
	OpenFrame.Visible = true
end)

CloseLT2.MouseButton1Down:connect(function()
	LT2CORE:destroy()
end)


local service = setmetatable({}, {
	__index = function(t, k)
		return game:GetService(k)
	end
})
	
function Create(cls,props)
	local inst = Instance.new(cls)
	for i,v in pairs(props) do
		inst[i] = v
	end
	return inst
end

--- TP Planks to you ---

checkplanks = false
local WoodPlanks={}
local ProcessedWoodList = LT2GUI.MainFrame.MenuFrame.PlankFrame.ProcessedWoodList

function UpdatePlanks()
	local inc = 0
	WoodPlanks={}
	for i,v in pairs(game.Workspace.PlayerModels:GetChildren()) do
		if v.Name=="Plank" and v.Owner.Value==game.Players.LocalPlayer then
			if v:FindFirstChild("TreeClass") and WoodPlanks[v.TreeClass.Value] then
				WoodPlanks[v.TreeClass.Value]=WoodPlanks[v.TreeClass.Value]
				WoodPlanks[v.TreeClass.Value]["Wood"][v]=v
			elseif v:FindFirstChild("TreeClass") then
				WoodPlanks[v.TreeClass.Value]={Wood={v.WoodSection}}
			end
		end
	end
end

function UpdateMovePlanks()
	checkplanks = true
	local inc=0
	UpdatePlanks()
	ProcessedWoodList:ClearAllChildren()
	for i,v in pairs(WoodPlanks) do
		ProcessedWoodList.CanvasSize=UDim2.new(0,0,0,25*inc)
		local TPButton=Create("TextButton",{Parent=ProcessedWoodList,Size=UDim2.new(0,147,0,20),Position=UDim2.new(0,5,0,25*inc),Text=" "..i,ZIndex=3,BackgroundColor3 = Color3.new(0.2, 0.2, 0.2),Font = Enum.Font.Fantasy,TextColor3 = Color3.new(1, 1, 1),TextSize = 16,BorderColor3 = Color3.new(0, 1, 0)})
		TPButton.MouseButton1Click:Connect(function()
			sendNotice = game.ReplicatedStorage.Notices.SendUserNotice
			sendNotice:Fire("Click where you want the Planks to TP to")
			local ButtonPress
			ButtonPress = game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
				Square = game.Players.LocalPlayer:GetMouse().Target
				if (Square.Name == "OriginSquare" or Square.Name == "Square") then
					ButtonPress:Disconnect()
					for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
						if Plank.Name=="Plank" and Plank:FindFirstChild("TreeClass") then
							if Plank.TreeClass.Value == i and Plank.Owner.Value == game.Players.LocalPlayer then
								Plank:MoveTo(Square.Position)
								for i=1,100 do
									game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
								end
							end
						end
					end
				end
			end)
		end)
		inc=inc+1
	end
	inc=0
end

TpAllPlanks.MouseButton1Click:Connect(function()
	for _, Plank in pairs(game.Workspace.PlayerModels:GetChildren()) do
		if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
			if Plank.Owner.Value == game.Players.LocalPlayer then
				sendNotice = game.ReplicatedStorage.Notices.SendUserNotice
				sendNotice:Fire("Click where you want ALL the Planks to TP to")
				local ButtonPress
				ButtonPress = game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
					Square = game.Players.LocalPlayer:GetMouse().Target
					if (Square.Name == "OriginSquare" or Square.Name == "Square") then
						ButtonPress:Disconnect()
						Plank:MoveTo(Square.Position)
						for i=1,100 do
							game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
						end
					end
				end)
			end
		end
	end
end)

if not checkplanks then
	UpdateMovePlanks()
end

game.Workspace.PlayerModels.ChildAdded:connect(function(Item)
    if Item:FindFirstChild("Owner") and Item.Owner.Value == game.Players.LocalPlayer and Item:FindFirstChild("TreeClass") then
		UpdateMovePlanks()
    end
end)

game.Workspace.PlayerModels.ChildRemoved:connect(function(Item)
    if Item:FindFirstChild("Owner") and Item.Owner.Value == game.Players.LocalPlayer and Item:FindFirstChild("TreeClass") then
		UpdateMovePlanks()
	end
end)

--- GuiInfo ---

GuiLabel.MouseButton1Down:connect(function()
	if Lt2Info == "Info" then
		Lt2Info = "Nothing"
		GuiLabel.TextColor3 = Color3.new(1, 0, 1)
		GuiLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
        MenuLeftFrame.Active = true
        MenuLeftFrame.Selectable = true
	else
		Lt2Info = "Info"
		GuiLabel.TextColor3 = Color3.new(0, 1, 0)
		GuiLabel.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
        MenuLeftFrame.Active = false
        MenuLeftFrame.Selectable = false
	end
end)

--- BringTreeInfo ---

BringTreeInfo1.MouseButton1Down:connect(function()
if BringTreeInfo1.Text == "Info" then
    BringTreeInfo1.Text = "Close Info"
    BringTreeInfo2.Visible = true
else
    BringTreeInfo1.Text = "Info"
    BringTreeInfo2.Visible = false
end
end)

--- Walkspeed/JumpPower ---

player = game.Players.LocalPlayer
Walk = 16
Jump = 50

WalkSpeed.MouseButton1Down:connect(function()
Walk = WalkText.Text
end)
JumpPower.MouseButton1Down:connect(function()
Jump = JumpText.Text
end)

player.Character.Humanoid.JumpPower = Jump
player.Character.Humanoid.WalkSpeed = Walk

player.Character.Humanoid.Changed:connect(function()
player.Character.Humanoid.JumpPower = Jump
player.Character.Humanoid.WalkSpeed = Walk
end)

--- Gold Axe ---

GoldAxeStart.MouseButton1Down:Connect(function()
GoldAxe.BackgroundColor3 = Color3.new(0, 0.5, 0)
GoldAxeStart.Text = "Active"
Detect = coroutine.wrap(function()
	Player = game.Players.LocalPlayer
	mouse = Player:GetMouse()
	mouse.Button1Down:connect(function()
		MouseDown = true
	end)
	mouse.Button1Up:connect(function()
		MouseDown = false
	end)
end)
Detect()
Player = game.Players.LocalPlayer
mouse = Player:GetMouse()
game:GetService('RunService').RenderStepped:connect(function()
	if Player.Character:FindFirstChild("Tool") then
		if MouseDown == true then
			if mouse.Target.Name == "WoodSection" then
				targetWood = mouse.Target
				Tool=Player.Character.Tool
				---FaceVector
				Height = targetWood.CFrame:pointToObjectSpace(mouse.Hit.p).Y + targetWood.Size.Y/2
				local ray = Ray.new(Player.Character.Head.Position, ((targetWood.CFrame * CFrame.new(0, Height - targetWood.Size.Y/2, 0)).p - Player.Character.Head.Position).unit * 200)
				part,_,p = workspace:FindPartOnRay(ray, Player.Character)
				function fixVector(V)
					return Vector3.new(math.floor(V.X + 0.5), math.floor(V.Y + 0.5), math.floor(V.Z + 0.5))
				end
				local faceVector = fixVector(targetWood.CFrame:vectorToObjectSpace(p))
				if faceVector.Y ~= 0 then
					return
				end
				local lookAtCFrame = CFrame.new(Player.Character.Head.Position, mouse.Hit.p)
				local relativeCFrame = lookAtCFrame:toObjectSpace(targetWood.CFrame * CFrame.Angles(math.pi/2, 0, 0))
				local relativeLookVector = relativeCFrame.lookVector
				local m = relativeLookVector.Y >= 0 and 1 or -1
				if faceVector.X == 1 then
					faceVector = Vector3.new(0, 0, -1) * m
				elseif faceVector.X == -1 then
					faceVector = Vector3.new(0, 0, 1) * m
				elseif faceVector.Z == 1 then
					faceVector = Vector3.new(1, 0, 0) * m
				elseif faceVector.Z == -1 then
					faceVector = Vector3.new(-1, 0, 0) * m
				end
				local cutEvent = targetWood.Parent.CutEvent
				game.ReplicatedStorage.Interaction.RemoteProxy:FireServer(cutEvent, {sectionId = targetWood.ID.Value, faceVector = faceVector, height = Height, hitPoints = 0.2, cooldown = 0, cuttingClass = "Axe", tool = Player.Character.Tool})
			end
		end
	end
end)
end)

--- Show Current Location

ShowLocation.MouseButton1Down:connect(function()

	function round(num, numDecimalPlaces)
		local mult = 10^(numDecimalPlaces or 0)
		return math.floor(num * mult + 0.5) / mult
	end

	LocationX = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.x, 1)
	LocationY = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.y, 1)
	LocationZ = round(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.z, 1)
	ShowLocation.Text = "Current/Set Location\n"..LocationX..", "..LocationY..", "..LocationZ
    CustomTPPoint.Text = "TP to "..LocationX..", "..LocationY..", "..LocationZ
	CustomLocationSet = true
	end)

--- TP to custom location ---

CustomTPPoint.MouseButton1Down:connect(function()
	if CustomLocationSet == true then
		local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
		uTorso.CFrame = CFrame.new(LocationX, LocationY, LocationZ)
	end
end)

    --- Player Tp ---
	
	local buttons = {
		Player1,
		Player2,
		Player3,
		Player4,
		Player5,
		Player6
	}
	spawn(function()
		while true do
			Player1.Text = ""
			Player2.Text = ""
			Player3.Text = ""
			Player4.Text = ""
			Player5.Text = ""
			Player6.Text = ""
			for i, v in pairs(game.Players:GetChildren()) do
				buttons[i].Text = v.Name
				buttons[i].Visible = true
			end
			wait(0.5)
		end
	end)

	Player1.MouseButton1Down:connect(function()
      PlyrSel.Text = Player1.Text
    end)
    Player2.MouseButton1Down:connect(function()
      PlyrSel.Text = Player2.Text
    end)
    Player3.MouseButton1Down:connect(function()
      PlyrSel.Text = Player3.Text
    end)
    Player4.MouseButton1Down:connect(function()
      PlyrSel.Text = Player4.Text
    end)
    Player5.MouseButton1Down:connect(function()
      PlyrSel.Text = Player5.Text
    end)
    Player6.MouseButton1Down:connect(function()
      PlyrSel.Text = Player6.Text
    end)
	
	TpPlayer.MouseButton1Down:connect(function()
      if PlyrSel.Text == "SELECT A PLAYER" then
        warn("No Player Selected")
      else
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace[PlyrSel.Text].HumanoidRootPart.CFrame
      end
    end)
    TpBase.MouseButton1Down:connect(function()
      for i, v in pairs(game.Workspace.Properties:GetChildren()) do
        if v.Owner.Value == game.Players[PlyrSel.Text] then
			local p= CFrame.new(v.OriginSquare.CFrame.x, v.OriginSquare.CFrame.y +3.5, v.OriginSquare.CFrame.z)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
        end
      end
    end)

--- NoClip ---

noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
NoClip.MouseButton1Down:connect(function()
noclip = not noclip
if NoClip.Text == "Enable NoClip" then
    NoClip.Text = "Disable NoClip"
	NoClip.BackgroundColor3 = Color3.new(0, 0.5, 0)
else
    NoClip.Text = "Enable NoClip"
	NoClip.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
end
end)

--- Waypoints ---

	local WayPoints = {
["Wood R Us"] = CFrame.new(265, 5, 57),
["SpawnPoint"] = CFrame.new(155, 5, 74),
["Land Store"] = CFrame.new(258, 5, -99),
["Link's Logic"] = CFrame.new(4607, 9, -798),
["Cave"] = CFrame.new(3581, -177, 430),
["Volcano"] = CFrame.new(-1585, 625, 1140),
["Swamp"] = CFrame.new(-1209, 138, -801),
["Palm Island"] = CFrame.new(2549, 5, -42),
["Fancy Furnishings"] = CFrame.new(491, 13, -1720),
["Boxed Cars"] = CFrame.new(509, 5.2, -1463),
["Fine Arts Shop"] = CFrame.new(5207, -156, 719),
["Bob's Shack"] = CFrame.new(260, 10, -2542),
["Dock"] = CFrame.new(1114, 3.2, -197),
["Bridge"] = CFrame.new(113, 15, -977),
["End Times"] = CFrame.new(113, -204, -951),
["Shrine Of Sight"] = CFrame.new(-1600, 205, 919),
["The Den"] = CFrame.new(323, 49, 1930),
["Volcano Win"] = CFrame.new(-1675, 358, 1476),
["Ski Lodge"] = CFrame.new(1244, 66, 2306),
["Strange Man"] = CFrame.new(1061, 20, 1131)
}

WoodRUs.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Wood R Us"]
end)

SpawnPoint.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["SpawnPoint"]
end)

LandStore.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Land Store"]
end)

LinksLogic.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Link's Logic"]
end)

Cave.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Cave"]
end)

Volcano.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Volcano"]
end)

Swamp.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Swamp"]
end)

PalmIsland.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Palm Island"]
end)

FancyFurnishings.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Fancy Furnishings"]
end)

BoxedCars.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Boxed Cars"]
end)

FineArtsShop.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Fine Arts Shop"]
end)

BobsShack.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Bob's Shack"]
end)

Dock.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Dock"]
end)

Bridge.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Bridge"]
end)

EndTimes.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["End Times"]
end)

ShrineOfSight.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Shrine Of Sight"]
end)

TheDen.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["The Den"]
end)

VolcanoWin.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Volcano Win"]
end)

SkiLodge.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Ski Lodge"]
end)

StrangeMan.MouseButton1Down:connect(function()
	local uTorso = workspace:WaitForChild(game.Players.LocalPlayer.Name).HumanoidRootPart
	uTorso.CFrame = WayPoints["Strange Man"]
end)

--- Make Greywood ---

GreywoodStart.MouseButton1Down:Connect(function()
	if GreyStart == "Nothing" then
		GreyStart = "On"
		GreywoodStart.BackgroundColor3 = Color3.new(0, 0.5, 0)
		GreywoodStart.Text = "Stop"
		for i,v in next,workspace.PlayerModels:GetChildren() do
			if v:FindFirstChild("Type") then
				if v.Type.Value == "Blueprint" then
					v.Type.Value = "Structure"
				end
			end
		end
	else
		GreyStart = "Nothing"
		GreywoodStart.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		GreywoodStart.Text = "Start"
		for i,v in next,workspace.PlayerModels:GetChildren() do
			if v:FindFirstChild("Type") then
				if v.Type.Value == "Structure" then
					v.Type.Value = "Blueprint"
				end
			end
		end
	end
end)

--- Anti AFK ---

AntiAFK.MouseButton1Down:Connect(function()
    if afkactive == true then
        afkactive = false
		AntiAFK.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		AntiAFK.Text = "Start Anti-AFK Mode"
    elseif afkactive == false then
        afkactive = true
		AntiAFK.BackgroundColor3 = Color3.new(0, 0.5, 0)
		AntiAFK.Text = "Stop Anti-AFK Mode"

        logtime = coroutine.wrap(function()
			afktotaltime=0
			while afkactive == true do
				wait(1)
				afktotaltime=afktotaltime+1
				AntiAFKtime.Text = "AFK for: "..afktotaltime.." Seconds"
			end
		end)
	
        messageBot = coroutine.wrap(function()
			while afkactive == true do
				wait(300)
				possiblechats = {"afk", "Away from keyboard", "I'm AFK"}
				decide=math.random(1,#possiblechats)
				game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(possiblechats[decide], "All")
				game.Players:Chat("/e point")
			end
		end)
		
	    moveChar = coroutine.wrap(function()
			plr = game:service'Players'.LocalPlayer
			char = plr.Character
			hum = char:FindFirstChildOfClass'Humanoid'
            while afkactive==true do
				wait(1)
				hum:Move(Vector3.new(1, 0, 0), false)
				wait(1)
				hum:Move(Vector3.new(-1, 0, 0), false)
				wait(1)
				hum:Move(Vector3.new(1, 0, 0), false)
				wait(1)
				hum:Move(Vector3.new(-1, 0, 0), false)
				wait(1)
				hum:Move(Vector3.new(0, 1, 0), false)
				wait(1)
				hum:Move(Vector3.new(0, 1, 0), false)
				wait(60)
			end
        end)
	
        logtime()
        moveChar()
        messageBot()
	end
end)

--- Plot Tp ---

PlotTp.MouseButton1Down:connect(function()
	for i,v in pairs(game.Workspace.Properties:GetChildren()) do
		if v.Owner.Value == game.Players.LocalPlayer then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame + Vector3.new(0,10,0)
		end
	end
end)

---TP Wood ---

TPWood.MouseButton1Click:Connect(function()
    for _, Log in pairs(service.Workspace.LogModels:GetChildren()) do
        if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
            if Log.Owner.Value == service.Players.LocalPlayer then
                Log:MoveTo(service.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 20, 0))
                for i=1,100 do
                    service.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
                end
            end
        end
    end
end)

--- Sell Wood ---

SellWood.MouseButton1Click:Connect(function()
	for _, Log in pairs(service.Workspace.LogModels:GetChildren()) do
		if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
			if Log.Owner.Value == service.Players.LocalPlayer then
				for i,v in pairs(Log:GetChildren()) do
					if v.Name=="WoodSection" then
						spawn(function()
							for i=1,10 do
								wait()
								v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
							end
						end)
					end
				end
				spawn(function()
					for i=1,20 do
						wait()
						service.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
					end
				end)
			end
		end
	end
end)

--- Sell Planks ---

SellPlanks.MouseButton1Click:Connect(function()
	for _, Plank in pairs(service.Workspace.PlayerModels:GetChildren()) do
		if Plank.Name=="Plank" and Plank:findFirstChild("Owner") then
			if Plank.Owner.Value == service.Players.LocalPlayer then
				for i,v in pairs(Plank:GetChildren()) do
					if v.Name=="WoodSection" then
						spawn(function()
							for i=1,10 do
								wait()
								v.CFrame=CFrame.new(Vector3.new(315, -0.296, 85.791))*CFrame.Angles(math.rad(90),0,0)
							end
						end)
					end
				end
				spawn(function()
					for i=1,20 do
						wait()
						service.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Plank)
					end
				end)
			end
		end
	end
end)

--- God Mode ---

GodMode.MouseButton1Click:Connect(function()
GodMode.BackgroundColor3 = Color3.new(0, 0.5, 0)
    game.Players.LocalPlayer.Character.Humanoid.Name = "1"
    local l = game.Players.LocalPlayer.Character["1"]:Clone()
    l.Parent = game.Players.LocalPlayer.Character
    l.Name = "Humanoid"
    wait(0.1)
    game.Players.LocalPlayer.Character["1"]:Destroy()
    game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    l.Changed:Connect(function()
        if l then
            l.WalkSpeed=Walk
            l.JumpPower=Jump
        end
    end)
end)

--- Dupe ---

MoreInfo.MouseButton1Down:connect(function()
if MoreInfo.Text == "Info" then
    MoreInfo.Text = "Close Info"
    Info.Visible = true
else
    MoreInfo.Text = "Info"
    Info.Visible = false
end
end)

Option = false

Dupe.MouseButton1Down:connect(function()
	plr = game:GetService("Players").LocalPlayer
	slot = plr.CurrentSaveSlot
	if Option == false then
		if slot.Value == -1 then
			Option = true
			slot.RobloxLocked = true
			Duper.Text = "Duping Active"
			Duper.BackgroundColor3 = Color3.new(0, 0.5, 0)
			Duper.TextColor3 = Color3.new(1, 1, 1)
			Dupe.BackgroundColor3 = Color3.new(0, 0.5, 0)
			Dupe.TextColor3 = Color3.new(1, 1, 1)
			Dupe.Text = "Duping"
			DupingText1.Text = "Loaded Slot Will NOT Save\n\nMake sure to reload your slot after duping to make sure you get your items back (If you leave before reloading all your changes will be saved)."
		end
	else
		Option = false
		slot.RobloxLocked = false
		Duper.Text = "Item Duping"
		Duper.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		Duper.TextColor3 = Color3.new(1, 1, 1)
		Dupe.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		Dupe.TextColor3 = Color3.new(1, 1, 1)
		Dupe.Text = "Dupe"
		DupingText1.Text = "Loaded Slot Will Save"
	end
end)

--- Water Walk ---

WaterCollide.MouseButton1Down:connect(function() 
	if WCollide == "Nothing" then
		WCollide = "On"
		WaterCollide.BackgroundColor3 = Color3.new(0, 0.5, 0)
        WaterCollide.Text = "Water is Solid"
		for i,v in pairs(game.Workspace.Water:GetChildren()) do
			if v:IsA("Part") then
				v.CanCollide = true
			end
		end
	else
		WCollide = "Nothing"
		WaterCollide.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        WaterCollide.Text = "Walk on Water"
		for i,v in pairs(game.Workspace.Water:GetChildren()) do
			if v:IsA("Part") then
				v.CanCollide = false
			end
		end
	end
end)

--- BTools ---

CopyTool.MouseButton1Down:connect(function()
	if BTool == "Copy" then
		BTool = "Nothing"
		CopyTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	else
		BTool = "Copy"
		CopyTool.BackgroundColor3 = Color3.new(0, 0.5, 0)
		DeleteTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		MoveTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	end
end)
 
DeleteTool.MouseButton1Down:connect(function()
	if BTool == "Delete" then
		BTool = "Nothing"
		DeleteTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	else
		BTool = "Delete"
		DeleteTool.BackgroundColor3 = Color3.new(0, 0.5, 0)
		CopyTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		MoveTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	end
end)
 
MoveTool.MouseButton1Down:connect(function()
	if BTool == "Move" then
		BTool = "Nothing"
		MoveTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	else
		BTool = "Move"
		MoveTool.BackgroundColor3 = Color3.new(0, 0.5, 0)
		CopyTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
		DeleteTool.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
	end
end)

Mouse.Button1Up:connect(function()
MDown = false
end)
 
Mouse.Button1Down:connect(function()
MDown = true
if BTool == "Copy" then
if Mouse.Target ~= nil then
Clone = Mouse.Target:clone()
Clone.Parent = game.Workspace
end
end
 
if BTool == "Delete" then
if Mouse.Target ~= nil then
Mouse.Target:remove()
end
end
 
if BTool == "Move" then
if Mouse.Target ~= nil then
MoveObject = Mouse.Target
end
end
 
wait()
if Clone ~= nil then
Clone.CanCollide = false
repeat
wait()
SubX = Clone.Size.X/2
SubY = Clone.Size.Y/2
SubZ = Clone.Size.Z/2
Clone.Position = Vector3.new(Mouse.Hit.X - SubX, Mouse.Hit.Y - SubY, Mouse.Hit.Z - SubZ)
until MDown == false
Clone.CanCollide = true
Clone.Position = Clone.Position + Vector3.new(SubX, SubY, SubZ)
Clone = nil
end
 
if MoveObject ~= nil then
MoveObject.CanCollide = false
repeat
wait()
SubX = MoveObject.Size.X/2
SubY = MoveObject.Size.Y/2
SubZ = MoveObject.Size.Z/2
MoveObject.Position = Vector3.new(Mouse.Hit.X - SubX, Mouse.Hit.Y - SubY, Mouse.Hit.Z - SubZ)
until MDown == false
MoveObject.CanCollide = true
MoveObject.Position =  MoveObject.Position + Vector3.new(SubX, SubY, SubZ)
MoveObject= nil
end
end)

--- TP Tool ---

TPTool.MouseButton1Down:connect(function()
	local Tele = Instance.new("Tool", game.Players.LocalPlayer.Backpack)
	Tele.RequiresHandle = false
	Tele.RobloxLocked = true
	Tele.Name = "TPTool"
	Tele.ToolTip = "Teleport Tool"
	Tele.Equipped:connect(function(Mouse)
		Mouse.Button1Down:connect(function()
			if Mouse.Target then
				game.Workspace:FindFirstChild(game.Players.LocalPlayer.Name).HumanoidRootPart.CFrame = (CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z))
			end
		end)
	end)
end)

--- Departure ---

game.Workspace.Ferry.TimeToDeparture.Changed:connect(function()
Depart.Text = "Ferry Departs: ".. game.Workspace.Ferry.TimeToDeparture.Value
if Depart.Text == "Ferry Departs: 0" then 
	wait(6)
	Depart.Text = "Ferry has Departed"
else
	Depart.Text = "Ferry Departs: ".. game.Workspace.Ferry.TimeToDeparture.Value
end
end)

--- Spawn Tree ---

function bringtree(telewoodtype)
local Wood = {
	"Cherry",
	"Palm",
	"CaveCrawler",
	"Generic",
	"Spooky",
	"Fir",
	"GreenSwampy",
	"Oak",
	"Birch",
	"Volcano",
	"LoneCave",
	"GoldSwampy",
	"Koa",
	"Walnut"
}

local NewRegionNames = {}

--Name Changer For Seperating What Is What

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[1] then
						l.Name = Wood[1]
						warn("TreeRegion #1 Has Been Changed To: "..Wood[1])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[2] then
						l.Name = Wood[2]
						warn("TreeRegion #2 Has Been Changed To: "..Wood[2])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[3] then
						l.Name = Wood[3]
						warn("TreeRegion #3 Has Been Changed To: "..Wood[3])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[4] then
						l.Name = Wood[4]
						warn("TreeRegion #4 Has Been Changed To: "..Wood[4])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[5] then
						l.Name = Wood[5]
						warn("TreeRegion #5 Has Been Changed To: "..Wood[5])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[6] then
						l.Name = Wood[6]
						warn("TreeRegion #6 Has Been Changed To: "..Wood[6])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[7] then
						l.Name = Wood[7]
						warn("TreeRegion #7 Has Been Changed To: "..Wood[7])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[8] then
						l.Name = Wood[8]
						warn("TreeRegion #8 Has Been Changed To: "..Wood[8])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[9] then
						l.Name = Wood[9]
						warn("TreeRegion #9 Has Been Changed To: "..Wood[9])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[10] then
						l.Name = Wood[10]
						warn("TreeRegion #10 Has Been Changed To: "..Wood[10])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[11] then
						l.Name = Wood[11]
						warn("TreeRegion #11 Has Been Changed To: "..Wood[11])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[12] then
						l.Name = Wood[12]
						warn("TreeRegion #12 Has Been Changed To: "..Wood[12])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[13] then
						l.Name = Wood[13]
						warn("TreeRegion #13 Has Been Changed To: "..Wood[13])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

for i, l in pairs(game:GetService("Workspace"):GetChildren()) do
	if l.Name == "TreeRegion" then
		if l ~= nil then
			for i, b in pairs(l:GetChildren()) do
				if b:IsA("Model") then
					if b:FindFirstChild("TreeClass") ~= nil and b.TreeClass.Value == Wood[14] then
						l.Name = Wood[14]
						warn("TreeRegion #14 Has Been Changed To: "..Wood[14])
						table.insert(NewRegionNames, l.Name)
					end
				end
			end
		end
	end
end

--Names Checker

for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
print(v.Name)
end

--Teleporter

if telewoodtype == Wood[1] then
	for i, v in pairs(game:GetService("Workspace")[Wood[1]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[1] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[2] then
	for i, v in pairs(game:GetService("Workspace")[Wood[2]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[2] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[3] then
	for i, v in pairs(game:GetService("Workspace")[Wood[3]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[3] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[4] then
	for i, v in pairs(game:GetService("Workspace")[Wood[4]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[4] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[5] then
	for i, v in pairs(game:GetService("Workspace")[Wood[5]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[5] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[6] then
	for i, v in pairs(game:GetService("Workspace")[Wood[6]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[6] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[7] then
	for i, v in pairs(game:GetService("Workspace")[Wood[7]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[7] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[8] then
	for i, v in pairs(game:GetService("Workspace")[Wood[8]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[8] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[9] then
	for i, v in pairs(game:GetService("Workspace")[Wood[9]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[9] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[10] then
	for i, v in pairs(game:GetService("Workspace")[Wood[10]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[10] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[11] then
	for i, v in pairs(game:GetService("Workspace")[Wood[11]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[11] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[12] then
	for i, v in pairs(game:GetService("Workspace")[Wood[12]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[12] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[13] then
	for i, v in pairs(game:GetService("Workspace")[Wood[13]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[13] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end

if telewoodtype == Wood[14] then
	for i, v in pairs(game:GetService("Workspace")[Wood[14]]:GetChildren()) do
		if v:FindFirstChild("TreeClass") ~= nil and v.TreeClass.Value == Wood[14] then
			v:MoveTo(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(1,60), math.random(1,1), math.random(1,60)))
		end
	end
end
end

OakTree.MouseButton1Down:Connect(function()
	bringtree('Generic')
end)

CherryTree.MouseButton1Down:Connect(function()
	bringtree('Cherry')
end)

PalmTree.MouseButton1Down:Connect(function()
	bringtree('Palm')
end)

CaveCrawlerTree.MouseButton1Down:Connect(function()
	bringtree('CaveCrawler')
end)

SpookyTree.MouseButton1Down:Connect(function()
	bringtree('Spooky')
end)

FirTree.MouseButton1Down:Connect(function()
	bringtree('Fir')
end)

GreenTree.MouseButton1Down:Connect(function()
	bringtree('GreenSwampy')
end)

BirchTree.MouseButton1Down:Connect(function()
	bringtree('Birch')
end)

VolcanoTree.MouseButton1Down:Connect(function()
	bringtree('Volcano')
end)

EndTimesTree.MouseButton1Down:Connect(function()
	bringtree('LoneCave')
end)

ElmTree.MouseButton1Down:Connect(function()
	bringtree('Oak')
end)

KoaTree.MouseButton1Down:Connect(function()
	bringtree('Koa')
end)

GoldTree.MouseButton1Down:Connect(function()
	bringtree('GoldSwampy')
end)

WalnutTree.MouseButton1Down:Connect(function()
	bringtree('Walnut')
end)

--- ReJoin Server ---

ReJoinServer.MouseButton1Down:connect(function()
	local placeId = "13822889"
	game:GetService("TeleportService"):Teleport(placeId)
end)

--- End ---