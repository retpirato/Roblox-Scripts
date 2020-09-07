local players = game:GetService("Players")
local player = players.LocalPlayer

if game.PlaceId == not 2377868063 then
	game.Players.LocalPlayer:Kick("Wrong Game")
end


local RS = game:GetService("ReplicatedStorage")
local Check = Instance.new("Hint", game.CoreGui)
local WeaponFile = RS.Weapons.Modules
local client = {  }
Check.Text = "Intitalizing Step 1 Checking Version, fuck u lol"
if RS.AdminRE.DataCost == 12 then
Check.Text = "Intitalizing Step 2 Getting Modules"
else
player:Kick("Version_Error")
end

if Check.Text == "Intitalizing Step 2 Getting Modules" then
 Tac = require(game.ReplicatedStorage.Weapons.Modules["Tac Shotgun"]);
 warn("Loaded Tac")
 SupAR = require(WeaponFile["Suppressed AR"]);
 warn("Loaded S.AR")
 Pistol = require(WeaponFile["Machine Pistol"]);
 warn("Loaded Pistol")
 Sniper = require(WeaponFile["Semi-Auto Sniper"]);
 warn("Loaded Sniper")
 RPG = require(WeaponFile["RPG"]);
 warn("Loaded RPG")
 Pick = require(WeaponFile["Pickaxe"]);
 warn("Loaded Pick")
 AR = require(WeaponFile["AR"]);
 warn("Loaded AR")
 Drum = require(WeaponFile["Drum Gun"]);
 warn("Loaded Drum")
 SAR = require(WeaponFile["Scoped AR"]);
 warn("Loaded Scoped AR")
 SMG = require(WeaponFile["SMG 101"]);
 warn("Loaded SMG 101")
 Hawk = require(WeaponFile["Desert Hawk"]);
 warn("Loaded Desert Hawk")
 BurstAR = require(WeaponFile["Burst AR"]);
 warn("Loaded Burst AR")
 DoubleBarrelShotgun = require(WeaponFile["Double Barrel Shotgun"]);
 warn("Loaded DBS")
 HeavyAR= require(WeaponFile["Heavy AR"]);
 warn("Loaded Heavy AR")
 ExplosivePistol = require(WeaponFile["Explosive Pistol"]);
 warn("Loaded Explosive Pistol")
 HeavySniper = require(WeaponFile["Heavy Sniper"]);
 warn("Loaded HS")
 Minigun = require(WeaponFile["Minigun"]);
 warn("Loaded Minigun")
 PumpShotgun = require(WeaponFile["Pump Shotgun"]);
 warn("Loaded Pump Shotgun")
 QuadLauncher = require(WeaponFile["Quad Launcher"]);
 warn("Loaded Quad Launcher")
 TacticalAR = require(WeaponFile["Tactical AR"]);
 warn("Loaded Tactical AR")
 TacticalRifle = require(WeaponFile["Tactical Rifle"]);
 warn("Loaded Tactical Rifle")
 SawnoffShotgun = require(WeaponFile["Sawn-off Shotgun"]);
 warn("Loaded Sawn Off Shotgun")
 else
 player:Kick("Module_Error, fuck u lol")
end

function client.esp()
while true do
	for i,v in next, game:GetService('Players'):GetPlayers() do
	if v.Name ~= game:GetService('Players').LocalPlayer.Name then
	pcall(function()
    	local A = Instance.new("BoxHandleAdornment")
		A.Parent = v.Character.Head
		A.Adornee = v.Character.Head
		A.AlwaysOnTop = true
		A.ZIndex = 1
		A.Color3 = Color3.new(1,0,1)
		A.Size = Vector3.new(0.5,0.5,0.5)
		local B = Instance.new("BoxHandleAdornment")
		B.Parent = v.Character.UpperTorso
		B.Adornee = v.Character.UpperTorso
		B.AlwaysOnTop = true
		B.ZIndex = 1
		B.Color3 = Color3.new(0.3,1,0)
		B.Size = v.Character.UpperTorso.Size - Vector3.new(0.2,0,0.2)
		local C = Instance.new("BoxHandleAdornment")
		C.Parent = v.Character.LowerTorso
		C.Adornee = v.Character.LowerTorso
		C.AlwaysOnTop = true
		C.ZIndex = 1
		C.Color3 = Color3.new(0.3,1,0)
		C.Size = v.Character.LowerTorso.Size - Vector3.new(0.2,0,0.2)
		local D = Instance.new("BoxHandleAdornment")
		D.Parent = v.Character.LeftLowerArm
		D.Adornee = v.Character.LeftLowerArm
		D.AlwaysOnTop = true
		D.ZIndex = 1
		D.Color3 = Color3.new(0.1,0.2,1)
		D.Size = v.Character.LeftLowerArm.Size - Vector3.new(0.2,0,0.2)
		local E = Instance.new("BoxHandleAdornment")
		E.Parent = v.Character.LeftUpperArm
		E.Adornee = v.Character.LeftUpperArm
		E.AlwaysOnTop = true
		E.ZIndex = 1
		E.Color3 = Color3.new(0.1,0.2,1)
		E.Size = v.Character.LeftUpperArm.Size - Vector3.new(0.2,0,0.2)
        local F = Instance.new("BoxHandleAdornment")
		F.Parent = v.Character.RightLowerArm
		F.Adornee = v.Character.RightLowerArm
		F.AlwaysOnTop = true
		F.ZIndex = 1
		F.Color3 = Color3.new(0.1,0.2,1)
		F.Size = v.Character.RightLowerArm.Size - Vector3.new(0.2,0,0.2)
		local G = Instance.new("BoxHandleAdornment")
		G.Parent = v.Character.RightUpperArm
		G.Adornee = v.Character.RightUpperArm
		G.AlwaysOnTop = true
		G.ZIndex = 1
		G.Color3 = Color3.new(0.1,0.2,1)
		G.Size = v.Character.RightUpperArm.Size - Vector3.new(0.2,0,0.2)
		local H = Instance.new("BoxHandleAdornment")
		H.Parent = v.Character.RightLowerLeg
		H.Adornee = v.Character.RightLowerLeg
		H.AlwaysOnTop = true
		H.ZIndex = 1
		H.Color3 = Color3.new(1,0.2,0.1)
		H.Size = v.Character.RightLowerLeg.Size - Vector3.new(0.2,0,0.2)
		local I = Instance.new("BoxHandleAdornment")
		I.Parent = v.Character.RightUpperLeg
		I.Adornee = v.Character.RightUpperLeg
		I.AlwaysOnTop = true
		I.ZIndex = 1
		I.Color3 = Color3.new(1,0.2,0.1)
		I.Size = v.Character.RightUpperLeg.Size - Vector3.new(0.2,0,0.2)
		local J = Instance.new("BoxHandleAdornment")
		J.Parent = v.Character.LeftUpperLeg
		J.Adornee = v.Character.LeftUpperLeg
		J.AlwaysOnTop = true
		J.ZIndex = 1
		J.Color3 = Color3.new(1,0.2,0.1)
		J.Size = v.Character.LeftUpperLeg.Size - Vector3.new(0.2,0,0.2)
		local K = Instance.new("BoxHandleAdornment")
		K.Parent = v.Character.LeftLowerLeg
		K.Adornee = v.Character.LeftLowerLeg
		K.AlwaysOnTop = true
		K.ZIndex = 1
		K.Color3 = Color3.new(1,0.2,0.1)
		K.Size = v.Character.LeftLowerLeg.Size - Vector3.new(0.2,0,0.2)
		end)
		end
	end
	wait(2)
end
end

function client.NoMap()
	while true do
  _G.HeadSize = 25
  _G.Disabled = true

      if _G.Disabled then
        for i,v in next, game:GetService('Players'):GetPlayers() do
        	if v.Name ~= game:GetService('Players').LocalPlayer.Name then
              pcall(function()
                 v.Character.HumanoidRootPart.Name = "PP"
                 v.Character.PP.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                 v.Character.PP.Transparency = 0.5
                 v.Character.PP.CanCollide = false
              end)
          end
          end
        end
        wait(1)
  end
end

function client.InvisLoop()
	while wait() do
		for i,v in pairs(game.Workspace.BuildStuff:GetChildren()) do
			if v.ClassName == 'Part' then
			v. CFrame = CFrame.new(math.huge,math.huge,math.huge)
		elseif v.ClassName == 'Model' then
			v:SetPrimaryPartCFrame(math.huge,math.huge,math.huge)
		elseif v.ClassName == 'MeshPart' then
			v.CFrame = CFrame.new(math.huge,math.huge,math.huge)
		elseif v.ClassName == 'UnionOperation' then
			v.CFrame = CFrame.new(math.huge,math.huge,math.huge)
		end
		end
		wait(2)
	end
end

function client.AimBot()
    local UIS = game:GetService('UserInputService')
	local RS = game:GetService('RunService')
	local Players = game:GetService('Players')
	local StarterGui = game:GetService('StarterGui')
	local Player = Players.LocalPlayer
	local Studio = RS:IsStudio()
	local PlayerGui = RS:IsStudio() and Player:WaitForChild('PlayerGui') or game.CoreGui
	local Mouse = Player:GetMouse()
	local old_icon = Mouse.Icon
	local Camera = workspace.CurrentCamera
	targetpart = 'Head' -- Don't change this.
	-- It can be changed with the targetpart_change hotkey ingame.
	local target
	local target_old
	local alert = false
	local lockedon = false
	local settingkey = false
	local upvals = nil
	local val = 1
	local windows = {}


	local version = 1.25
	local Spawn = nil or game.PlaceId == 292439477 and workspace:WaitForChild('Lobby',2):WaitForChild('Spawn1',2)
	local spawned = false

	script.Name = 'GameSense!'
	Mouse.TargetFilter = Camera

	-- hotkey
	toggle_aim = Enum.UserInputType.MouseButton2
	toggle_aimbot = Enum.KeyCode.Delete
	toggle_trigger = Enum.KeyCode.I
	toggle_esp = Enum.KeyCode.Delete
	toggle_gui = Enum.KeyCode.Delete
	toggle_bottompos = Enum.KeyCode.Delete
	toggle_performance = Enum.KeyCode.Delete
	toggle_bones = Enum.KeyCode.Delete
	toggle_chams = Enum.KeyCode.Delete
	toggle_tracers = Enum.KeyCode.Delete
	toggle_boxes = Enum.KeyCode.Delete
	toggle_font = Enum.KeyCode.Delete
	ffatoggle = Enum.KeyCode.Delete
	targetpart_change = Enum.KeyCode.K
	priority_toggle = Enum.KeyCode.Delete
	sethotkey = Enum.KeyCode.Delete
	-- aim fov
	fov_increase = nil
	fov_decrease = nil
	-- aim sens (how smooth your crosshair will move)
	sens_increase = Enum.KeyCode.RightBracket
	sens_decrease = Enum.KeyCode.LeftBracket

	-- parts
	parts = {
		'UpperTorso',
		'LowerTorso',
		'LeftUpperArm',
		'LeftLowerArm',
		'RightUpperArm',
		'RightLowerArm',
		'LeftUpperLeg',
		'LeftLowerLeg',
		'Head'
	}

	fonts = {
		Enum.Font.SourceSansBold,
		Enum.Font.Cartoon,
		Enum.Font.Arcade,
		Enum.Font.SciFi,
		Enum.Font.Fantasy,
		Enum.Font.Code,
		Enum.Font.Highway,
		Enum.Font.Bodoni
	}

	textSet = false

	currentfont = 4
	hidden = false
	performance = false
	-- aim
	fov = 7
	ffa = true
	sens = 0.673
	drop = 0
	aim_toggled = false
	bottompos = false
	aim_priority = 2
	-- [2] FOV or [1] Distance
	aimingcolor = Color3.fromRGB(1,1,0)
	aimbot_toggled = true
	aim_line = true
	locksoundid = 538769304
	mouseiconid =  18671553

	-- trigger
  trigger_toggled = true
	trigger_delay = 1/20

	-- esp
	esp_toggled = false
	esp_bones = false
	esp_chams = false
	esp_tracers = false
	-- item_esp (coming soon)
	linesize = 5
	showdists = true
	textsize = 14
	textoffset = 20
	visiblecolor = Color3.fromRGB(38,255,99)
	hiddencolor = Color3.fromRGB(255,37,40)
	headboxsize = 1
	headboxaimsize = 2
	headboxshape = 'rectangle'
	-- rectangle or diamond

	-- box esp
	bounding_box = true
	-- box_pointsize = 0 [UNUSED]
	box_line_size = 1
	-- box_line_size_visible = 2 [UNUSED]

	local GUI = Instance.new('ScreenGui',PlayerGui)
	GUI.Name = 'GameSense '..version
	GUI.ResetOnSpawn = false

	ESP = Instance.new('Folder',GUI)
	ESP.Name = 'ESP'
	local Bottom = Instance.new('Frame',ESP)
	Bottom.Name = 'Bottom'
	Bottom.BackgroundTransparency = 1
	Bottom.Size = UDim2.new(0,1,0,1)
	Bottom.Position = UDim2.new(.5,0,1,1)

	local FovGui = Instance.new('Frame',GUI)
	FovGui.Name = 'FovGui'
	FovGui.Size = UDim2.new(0,280,0,320)
	FovGui.Position = UDim2.new(0.5,-FovGui.AbsoluteSize.X/2,0.5,-FovGui.AbsoluteSize.Y/2)
	FovGui.BackgroundTransparency = 0.75
	FovGui.BackgroundColor3 = Color3.new(1,0.105,1)

	local Indicator = Instance.new('TextLabel',GUI)
	Indicator.Name = 'Indicator'
	Indicator.Font = Enum.Font.SourceSans
	Indicator.TextSize = 0
	Indicator.TextXAlignment = Enum.TextXAlignment.Center
	Indicator.TextYAlignment = Enum.TextYAlignment.Center
	Indicator.TextStrokeTransparency = 1
	Indicator.Text = aim_priority>1 and 'FOV: '..fov or 'Distance'

	local KeysList = Instance.new('TextLabel',GUI)
	KeysList.Name = 'KeysList'
	KeysList.Font = Enum.Font.SourceSans
	KeysList.TextStrokeTransparency = .6
	KeysList.TextSize = 0
	KeysList.TextColor3 = Color3.new(1,1,1)
	KeysList.Size = UDim2.new(0,0,1,0)
	KeysList.Position = UDim2.new(0,5,0,-280)
	KeysList.BackgroundTransparency = 1
	KeysList.Active = false

	local n = 0

	spawn(function()
		while Status do
			Indicator.TextColor3 = Color3.fromHSV(n,.5,1)
			FovGui.ImageColor3 = Indicator.TextColor3
			if not textSet then
			if aim_toggled and target then
				Status.TextColor3 = aimingcolor
				Status.Text = ('Aiming at '..target.Name)
			else
				Status.TextColor3 = Color3.fromHSV(n,.5,1)
				Status.Text = 'On Standby'
			end
			end
			n = 0

		end
	end)
	local function distfromspawn(x)
		if Spawn then
			return x:DistanceFromCharacter(Spawn.Position)
		else
			return 201
		end
	end

	local function playsound(id)
		local sound = Instance.new('Sound',Camera)
		sound.Volume = 3
		sound:Play()
		game:GetService('Debris'):AddItem(sound,5)
	end


	local function DrawLine(Folder,P1,P2,Thickness,Color,LineTransparency,BorderThickness,BorderColor)
		-- Declare variables
		local Point1,Point2 = P1.Position,P2.Position
		if Point1 and Point2 then
		local X,Y = Camera.ViewportSize.X, Camera.ViewportSize.Y
		local X1,X2 = (X * Point1.X.Scale + Point1.X.Offset + P1.Size.X.Offset/2), (X * Point2.X.Scale + Point2.X.Offset + P2.Size.X.Offset/2)
		local Y1,Y2 = (Y * Point1.Y.Scale + Point1.Y.Offset + P1.Size.Y.Offset/2), (Y * Point2.Y.Scale + Point2.Y.Offset + P2.Size.Y.Offset/2)
		local MidX,MidY = (X1+X2)/2, (Y1+Y2)/2
		-- Set defaults to prevent errors
		Thickness = Thickness or 1
		Color = Color or Color3.new(1,1,1)
		LineTransparency =  LineTransparency or 0
		BorderThickness = BorderThickness or 0
		BorderColor = BorderColor or Color3.new(0,0,0)
		-- Draw the line
		local Line = Folder:FindFirstChild(P1.Name..'-'..P2.Name) or Instance.new('Frame',Folder)
		Line.Visible = false
		Line.BackgroundTransparency = LineTransparency
		Line.BorderSizePixel = BorderThickness
		Line.BorderColor3 = BorderColor
		Line.Size = UDim2.new(0,(Vector2.new(X1,Y1) - Vector2.new(X2,Y2)).magnitude-1,0,Thickness)
		Line.Position = UDim2.new(0,MidX-Line.AbsoluteSize.X/2,0,MidY-Line.AbsoluteSize.Y)
		Line.BackgroundColor3 = Color
		Line.Rotation = math.deg(math.atan2((Y2-Y1),(X2-X1)))
		Line.Name = P1.Name..'-'..P2.Name
		Line.Visible = true
		return Line
		else
			return nil
		end
	end

	local function GetNearest(e)
		local lowest,nearest,gui = math.huge,nil,nil
		if e==1 then
		for _,plr in next,Players:GetPlayers() do
			if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
				local dist = Player:DistanceFromCharacter(plr.Character[targetpart].Position)
				local ray = Ray.new(Player.Character.Head.Position,(plr.Character[targetpart].Position-Player.Character.Head.Position).unit*2000)
				local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
				local Z = Camera:WorldToScreenPoint(plr.Character[targetpart].Position).x
				if part and part:IsDescendantOf(plr.Character) and Z>0 and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
			end
		end
		elseif e==2 then
			for _,plr in next,Players:GetPlayers() do
				if plr.Name~=Player.Name and plr.Character~=nil and plr.Character:FindFirstChild(targetpart) then
					local pos = Camera:WorldToScreenPoint(plr.Character[targetpart].Position)
					local ray = Ray.new(Player.Character[targetpart].Position,(plr.Character[targetpart].Position-Player.Character[targetpart].Position).unit*2048)
					local part,point = workspace:FindPartOnRayWithIgnoreList(ray,{Camera,Player.Character,unpack(windows)})
					local dist = (Vector2.new(Mouse.X,Mouse.Y)-Vector2.new(pos.X,pos.Y)).magnitude
					if part and part:IsDescendantOf(plr.Character) and pos.Z>0 and dist <= Camera.ViewportSize.X/(90/fov) and dist < lowest and (ffa or plr.TeamColor~=Player.TeamColor) then lowest = dist nearest = plr.Character end
				end
			end
		end
		return nearest
	end

	Mouse.Move:Connect(function()
		cursor = ESP:FindFirstChild('Cursor') or Instance.new('Frame',ESP)
		cursor.Name = 'Cursor'
		cursor.BackgroundTransparency = 1
		cursor.Size = UDim2.new(0,1,0,1)
		cursor.Position = UDim2.new(0,Mouse.X,0,Mouse.Y)
	end)

	UIS.InputBegan:Connect(function(Input)
		if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
			aim_toggled = true
			warn('GS: aim toggled',aim_toggled and 'on' or 'off')
			alert = true
			while aim_toggled and aimbot_toggled do
				target = GetNearest(aim_priority)
				if target then
					local dist = Player:DistanceFromCharacter(target[targetpart].Position)
					local headpos = Camera:WorldToScreenPoint(target[targetpart].Position+Vector3.new(0,dist/(100/drop),0))
					local moveto = Vector2.new((headpos.X-Mouse.X)*sens,(headpos.Y-Mouse.Y)*sens)
					aimpos = GUI:FindFirstChild('AimPos') or Instance.new('Frame',GUI)
					if not GUI:FindFirstChild('AimPos') then
					aimpos.Name = 'AimPos'
					aimpos.BorderSizePixel = 1
					aimpos.BorderColor3 = Color3.new(0,0,0)
					aimpos.BackgroundTransparency = 0
					aimpos.BackgroundColor3 = Color3.new(1,1,1)
					aimpos.Rotation = 45
					aimpos.ZIndex = 4
					aimpos.Size = UDim2.new(0,3,0,3)
					end
					aimpos.Position = UDim2.new(0,headpos.X-aimpos.AbsoluteSize.X/2,0,headpos.Y-aimpos.AbsoluteSize.Y/2)
					aimpos.Visible = true
					mousemoverel(moveto.X,moveto.Y - drop)
					if alert or target~=target_old then
						playsound(locksoundid)
						print('GS: locked onto',target.Name)
						lockedon = false
						alert = false
					end
				end
				RS.Heartbeat:wait()
				target_old = target
				if aimpos then
					aimpos.Visible = false
				end
			end
			lockedon = false
		elseif Input.KeyCode == toggle_trigger then
			trigger_toggled = not trigger_toggled
			setText('Toggled TriggerBot '..(trigger_toggled and 'On' or 'Off'))
			Notification({Title='TriggerBot';Text='TriggerBot was toggled '..(trigger_toggled and 'On' or 'Off');Duration=2;})
			warn('trigger toggled',trigger_toggled and 'on' or 'off')
			local Box = Instance.new('SelectionBox',PlayerGui)
			Box.Color3 = Color3.new(1,0,0)
			Box.LineThickness = .05
			Box.Adornee = nil
			if trigger_delay>0 then wait(trigger_delay) end
			while trigger_toggled do
			local Target = Mouse.Target
			local plr = Players:FindFirstChild(Target.Parent.Name)
			if Target and Target.Parent and plr~=nil and plr~=Player and ffa or plr~=nil and plr.TeamColor~=Player.TeamColor then
				Box.Adornee = Mouse.Target
				mouse1press()
				wait()
				mouse1release()
			end
			RS.Heartbeat:wait()
			end
			Box:Destroy()
		elseif Input.KeyCode == toggle_esp then
			esp_toggled = not esp_toggled
			Notification({Title='ESP';Text='ESP was toggled '..(esp_toggled and 'On' or 'Off');Duration=2;})
			setText('Toggled ESP '..(esp_toggled and 'On' or 'Off'))
		elseif Input.KeyCode == toggle_aimbot then
			aimbot_toggled = not aimbot_toggled
			Notification({Title='AimBot';Text='AimBot was toggled '..(aimbot_toggled and 'On' or 'Off');Duration=2;})
			setText('Toggled AimBot '..(aimbot_toggled and 'On' or 'Off'))
		elseif Input.KeyCode == fov_increase then
			fov = fov + .5

			if FovGui.Visible then
				FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
			end
			setText('Aim FOV: '..fov)
		elseif Input.KeyCode == fov_decrease and fov>0 then
			fov = fov - .5

			if FovGui.Visible then
				FovGui:TweenSize(UDim2.new(0,(Camera.ViewportSize.X/(90/fov))*2,0,(Camera.ViewportSize.X/(90/fov))*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
			end
			setText('Aim FOV: '..fov)
		elseif Input.KeyCode == sens_increase then
			sens = sens + .05

			setText('Sens: '..sens)
		elseif Input.KeyCode == sens_decrease then
			sens = sens - .05

			setText('Sens: '..sens)
		elseif Input.KeyCode == targetpart_change then
			val = val+1
			targetpart = val<=#parts and parts[val] or parts[1]
			if parts[1]==targetpart then val = 1 end
			Notification({Title='Target Part';Text='Target part set to '..targetpart;Duration=2;})
			setText('Target Part: '..targetpart)
		elseif Input.KeyCode == ffatoggle then
			ffa = not ffa
			Notification({Title='FFA e';Text='FFA e is '..(ffa and 'Enabled' or 'Disabled');Duration=2;})
			setText('FFA e: '..(ffa and 'Enabled' or 'Disabled'))
		elseif Input.KeyCode == priority_toggle then
			aim_priority = aim_priority+1>2 and 0 or 1
			aim_priority = aim_priority+1
			FovGui.Visible = aim_priority>1
			setText('Aim Priority: '..(aim_priority==1 and 'Distance' or 'FOV'))
		elseif Input.KeyCode == toggle_bones then
			esp_bones = not esp_bones
			if not esp_bones then
			for _,v in next,ESP:GetDescendants() do
				if v:IsA('Frame') and v.Name:match('-') then
					v:Destroy()
				end
			end
			end
			setText('Toggled ESP Bones '..(esp_bones and 'Enabled' or 'Disabled'))
		elseif Input.KeyCode == toggle_gui then
			hidden = not hidden
			for _,gui in next,GUI:GetDescendants() do
				if gui:IsA('GuiObject') and not hidden and not gui.Visible then
					gui.Visible = true
					Mouse.Icon = 'rbxassetid://'..mouseiconid
				elseif gui:IsA('GuiObject') and gui.Visible then
					gui.Visible = false
					esp_toggled = false
					Mouse.Icon = old_icon
				end
				end
			elseif Input.KeyCode == toggle_bottompos then
				bottompos = not bottompos
				if bottompos then
					Bottom.Position = UDim2.new(.5,0,1,1)
				end
			elseif Input.KeyCode == toggle_performance then
				performancee = not performancee
				setText('Performance e '..(performancee and 'Enabled' or 'Disabled'))
			elseif Input.KeyCode == toggle_chams then
				esp_chams = not esp_chams
				setText('Chams '..(esp_chams and 'Enabled' or 'Disabled'))
			elseif Input.KeyCode == toggle_tracers then
				esp_tracers = not esp_tracers
				setText('Tracers '..(esp_chams and 'Enabled' or 'Disabled'))
			elseif Input.KeyCode == toggle_boxes then
				bounding_box = not bounding_box
				setText('Bounding Boxes '..(bounding_box and 'Enabled' or 'Disabled'))
			elseif Input.KeyCode == toggle_font then
					currentfont = (currentfont+1)>#fonts and 1 or currentfont+1
					for _,v in next,GUI:GetDescendants() do
						if v.Name~='KeysList' then
						if v:IsA('TextLabel') or v:IsA('TextButton') then
							v.Font = fonts[currentfont]
						end
						end
					end
			end
	end)

	UIS.InputEnded:Connect(function(Input)
		if Input.KeyCode == toggle_aim or Input.UserInputType == toggle_aim then
			aim_toggled = false
		end
	end)

	local function checkifspawned(x)
		spawned = false
		while not spawned and game.PlaceId==292439477 do
			spawned = distfromspawn(x)>200 and true or false
			wait(1/5)
		end
		spawned = true
	end

	checkifspawned(Player)
	Player.CharacterAdded:Connect(function(c)
		checkifspawned(Player)

		for _,v in next,ESP:GetDescendants() do
			if v:IsA('Frame') and v.Name:match('-') then
				v:Destroy()
			end
		end
	end)

	Notification({Title='Aimbot '..version;Text='Loaded successfully.';Icon='rbxassetid://2572157833';Duration=10;})
	wait(.5)

	RS.RenderStepped:Connect(function()
		if cursor then
			FovGui.Position = cursor.Position-UDim2.new(0,FovGui.AbsoluteSize.X/2,0,FovGui.AbsoluteSize.Y/2)
			Indicator.Position = cursor.Position+UDim2.new(0,0,0,40)
		end
	end)

	Mouse.Button1Down:Connect(function()
		spawn(function()
			if FovGui.Visible then
				FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2.35,0,Camera.ViewportSize.X/(90/fov)*2.35),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
				wait(.1)
				FovGui:TweenSize(UDim2.new(0,Camera.ViewportSize.X/(90/fov)*2,0,Camera.ViewportSize.X/(90/fov)*2),Enum.EasingDirection.InOut,Enum.EasingStyle.Quad,.1,true)
			end
		end)
	end)

	while true do
		Indicator.Text = (aim_priority>1 and 'FOV: '..fov or 'Distance') ..'\nSens: '..sens..(aim_toggled and '\nAiming' or '')
		if not bottompos then Bottom.Position = cursor.Position end
		if esp_toggled then
		for _,v in next,ESP:children() do
			if v~=Bottom and not Players:FindFirstChild(v.Name) then
				v:Destroy()
			end
			wait()
		end
		for _,v in next,Players:GetPlayers() do
			local Char = v.Character
			if Char and spawned and v~=Player and Char:FindFirstChild(targetpart) and distfromspawn(v)>100 then
				if ffa or v.TeamColor~=Player.TeamColor then
				local X = Camera:GetPartsObscuringTarget({Camera.CFrame.p,Char[targetpart].CFrame.p},{v.Character,Char,Camera,unpack(windows)})
				local Dist = Player:DistanceFromCharacter(Char:FindFirstChild(targetpart).Position)
				local Color = hiddencolor
				local Folder = ESP:FindFirstChild(v.Name) or Instance.new('Folder',ESP)
				Folder.Name = v.Name
				-- ESP
				local Head = Folder:FindFirstChild('Head') or Instance.new('Frame',Folder)
				if not Folder:FindFirstChild('Head') then
				Head.Name = 'Head'
				Head.BorderSizePixel = 1
				Head.BorderColor3 = Color3.new(0,0,0)
				Head.BackgroundTransparency = 0
				end
				Head.BackgroundColor3 = #X>0 and hiddencolor or #X==0 and visiblecolor
				Head.Rotation = headboxshape=='diamond' and 45 or 0
				Head.ZIndex = 3
				local HP = Folder:FindFirstChild('HP') or Instance.new('TextLabel',Folder)
				if not Folder:FindFirstChild('HP') then
				HP.Name = 'HP'
				HP.TextTransparency = Head.BackgroundTransparency-.4
				HP.Font = fonts[currentfont]
				HP.TextStrokeTransparency = .6
				HP.BackgroundTransparency = 1
				HP.TextSize = 14
				end
				HP.Text = showdists and Char.Name..'\n'..math.floor(Dist+.5) or Char.Name
				if aim_toggled and target==Char then
					Head.Size = UDim2.new(0,headboxaimsize,0,headboxaimsize)
					Head.BackgroundColor3 = aimingcolor
					HP.Text = showdists and '['..Char.Name..']'..'\n'..math.floor(Dist+.5) or '['..Char.Name..']'
					HP.TextSize = 16
				else
					Head.Size = UDim2.new(0,headboxsize,0,headboxsize)
				end
				HP.TextColor3 = Head.BackgroundColor3
				local toScreen = Camera:WorldToScreenPoint(Char[targetpart].CFrame.p)
				if #X==0 then Color = visiblecolor end
				Head.Position = UDim2.new(0,toScreen.X-Head.Size.X.Offset/2,0,toScreen.Y-Head.Size.Y.Offset/2)
				HP.Position = Head.Position-UDim2.new(0,0,0,textoffset)
				if esp_tracers then
				local Line = DrawLine(Folder,ESP.Bottom,Head,linesize,Head.BackgroundColor3,.75,1,Color3.new(0,0,0))
					Line.Visible = Head.Visible
				else
					local imtired = Folder:FindFirstChild(ESP.Bottom.Name..'-'..Head.Name)
					if imtired then
						imtired:Destroy()
					end
				end
				if toScreen.Z<=0 then Head.Visible = false else Head.Visible = true end
				HP.Visible = Head.Visible
				if Char:FindFirstChild('Humanoid') and Char.Humanoid.RigType==Enum.HumanoidRigType.R6 then
				local Neck = Folder:FindFirstChild('Neck') or Instance.new('Frame',Folder)
				Neck.Name = 'Neck'
				Neck.ZIndex = 2
				if Char['Torso']~=nil then
				local Pos = (Char.Torso.CFrame*CFrame.new(0,.8,0)).p
				local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
				Neck.Position = UDim2.new(0,X,0,Y)
				Neck.BorderSizePixel = 0
				if Z<=0 then Neck.Visible = false else Neck.Visible = true end
				else
					Neck.Visible = false
				end
				--
				local Pelvis = Folder:FindFirstChild('Pelvis') or Instance.new('Frame',Folder)
				Pelvis.Name = 'Pelvis'
				Pelvis.ZIndex = 2
				Pelvis.BorderSizePixel = 0
				if Char['Torso']~=nil then
				local Pos = (Char.Torso.CFrame*CFrame.new(0,-1,0)).p
				local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
				Pelvis.Position = UDim2.new(0,X,0,Y)
				if Z<=0 then Pelvis.Visible = false else Pelvis.Visible = true end
				else
					Pelvis.Visible = false
				end
				--
				local RightFoot = Folder:FindFirstChild('Right Foot') or Instance.new('Frame',Folder)
				RightFoot.Name = 'Right Foot'
				RightFoot.ZIndex = 2
				RightFoot.BorderSizePixel = 0
				if Char['Right Leg']~=nil then
				local Pos = (Char['Right Leg'].CFrame*CFrame.new(0,-1,0)).p
				local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
				RightFoot.Position = UDim2.new(0,X,0,Y)
				if Z<=0 then RightFoot.Visible = false else RightFoot.Visible = true end
				else
					RightFoot.Visible = false
				end
				--
				local LeftFoot = Folder:FindFirstChild('Left Foot') or Instance.new('Frame',Folder)
				LeftFoot.Name = 'Left Foot'
				if Char['Left Leg']~=nil then
				local Pos = (Char['Left Leg'].CFrame*CFrame.new(0,-1,0)).p
				local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
				LeftFoot.Position = UDim2.new(0,X,0,Y)
				LeftFoot.BorderSizePixel = 0
				if Z<=0 then LeftFoot.Visible = false else LeftFoot.Visible = true end
				else
					LeftFoot.Visible = false
				end
				--
				local RightHand = Folder:FindFirstChild('Right Hand') or Instance.new('Frame',Folder)
				RightHand.Name = 'Right Hand'
				RightHand.ZIndex = 2
				RightHand.BorderSizePixel = 0
				if Char['Right Arm']~=nil then
				local Pos = (Char['Right Arm'].CFrame*CFrame.new(0,-1,0)).p
				local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
				RightHand.Position = UDim2.new(0,X,0,Y)
				if Z<=0 then RightHand.Visible = false else RightHand.Visible = true end
				else
					RightHand.Visible = false
				end
				--
				local LeftHand = Folder:FindFirstChild('Left Hand') or Instance.new('Frame',Folder)
				LeftHand.Name = 'Left Hand'
				LeftHand.ZIndex = 2
				LeftHand.BorderSizePixel = 0
				if Char['Left Arm']~=nil then
				local Pos = (Char['Left Arm'].CFrame*CFrame.new(0,-1,0)).p
				local X,Y,Z = Camera:WorldToScreenPoint(Pos).X,Camera:WorldToScreenPoint(Pos).Y,Camera:WorldToScreenPoint(Pos).Z
				LeftHand.Position = UDim2.new(0,X,0,Y)
				if Z<=0 then LeftHand.Visible = false else LeftHand.Visible = true end
				else
					LeftHand.Visible = false
				end
				-- draw joints
				if esp_bones then
				if Head.Visible then DrawLine(Folder,Head,Neck,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
				if Neck.Visible then DrawLine(Folder,Neck,Pelvis,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
				if Neck.Visible then DrawLine(Folder,Neck,RightHand,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
				if Neck.Visible then DrawLine(Folder,Neck,LeftHand,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
				if Pelvis.Visible then DrawLine(Folder,Pelvis,RightFoot,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
				if Pelvis.Visible then DrawLine(Folder,Pelvis,LeftFoot,1,Color3.new(1,1,1),Head.BackgroundTransparency) end
				end
				end

				if esp_chams then
					for _,Part in next,Char:children() do
						if Part:IsA('BasePart') and Part.Name~='HumanoidRootPart' then
							local Adornment = Folder:FindFirstChild(Part.Name..'_Cham') or Instance.new('BoxHandleAdornment',Folder)
							if not Folder:FindFirstChild(Part.Name..'_Cham') then
							Adornment.Name = Part.Name..'_Cham'
							Adornment.Adornee = Part
							Adornment.AlwaysOnTop = true
							Adornment.Size = Part.Name=='Head' and Vector3.new(1,1,1) or Part.Size
							Adornment.ZIndex = 1
							end
							Adornment.Color3 = Head.BackgroundColor3
						end
					end
				else
					for _,v in next,Folder:GetDescendants() do
						if v.Name:match('Cham') then
							v:Destroy()
						end
					end
				end

				if bounding_box and Char:FindFirstChild('HumanoidRootPart') then
					local Box = Char:FindFirstChild('Box') or Instance.new('BillboardGui',Char)
					if not Char:FindFirstChild('Box') then
					Box.Name = 'Box'
					Box.Adornee = Char:FindFirstChild('HumanoidRootPart')
					Box.AlwaysOnTop = true
					Box.LightInfluence = 0
					Box.StudsOffset = Vector3.new(0,-Box.Adornee.Size.Y/4,0)
					Box.Size = UDim2.new(4,1,5,1)
					local Top = Instance.new('Frame',Box)
					Top.Size = UDim2.new(1,0,0,box_line_size)
					Top.BorderSizePixel = 0
					local Bot = Top:Clone()
					Bot.Position = UDim2.new(0,0,1,-box_line_size)
					Bot.Parent = Box
					local Left = Top:Clone()
					Left.Size = UDim2.new(0,1,1,0)
					Left.Parent = Box
					local Right = Left:Clone()
					Right.Position = UDim2.new(1,-box_line_size,0,0)
					Right.Parent = Box
					end
					for _,v in next,Box:children() do
	if v:IsA('Frame') then
	v.BackgroundColor3 = Head.BackgroundColor3
						end
					end
				else
					local Box = Char:FindFirstChild('Box')
					if Box then
	Box:Destroy()
					end
				end

				if lockedon and target and aim_line and ESP:FindFirstChild(target.Name) then
					DrawLine(ESP,cursor,ESP:FindFirstChild(target.Name).Head,1,Head.BackgroundColor3,.5)
				end

			else
				if ESP:FindFirstChild(v.Name) then
					ESP:FindFirstChild(v.Name):Destroy()
				end
				end
			else
				if ESP:FindFirstChild(v.Name) then
					ESP:FindFirstChild(v.Name):Destroy()
				end
			end
			end
	else
	for _,v in next,ESP:children() do
	if v:IsA('Folder') then
		v:Destroy()
	end
	end
	end
	if performancee then
	wait(1/(workspace:GetRealPhysicsFPS()))
	else
	RS.Stepped:wait()
	end
	end
end

function client.FastShoot()
	Tac["Debounce"] = 0.08099;
	PumpShotgun["Debounce"] = 0.08099;
	Pick["Debounce"] = 0.109999;
	SAR["Debounce"] = 0.08099;
	Hawk["Debounce"] = 0.08099;
	SMG["Debounce"] = 0.08099;
	Sniper["Debounce"] = 0.08099;
	AR["Debounce"] = 0.08099;
	SupAR["Debounce"] = 0.08099;
	Pistol["Debounce"] = 0.08099;
	Drum["Debounce"] = 0.08099;
	RPG["Debounce"] = 0.08099;
	BurstAR["Debounce"] = 0.08099;
	DoubleBarrelShotgun["Debounce"] = 0.08099;
	HeavyAR["Debounce"] = 0.08099;
	ExplosivePistol["Debounce"] = 0.08099;
	HeavySniper["Debounce"] = 0.08099;
	Minigun["Debounce"] = 0.08099;
	QuadLauncher["Debounce"] = 0.08099;
	TacticalAR["Debounce"] = 0.08099;
	TacticalRifle["Debounce"] = 0.08099;
	SawnoffShotgun["Debounce"] = 0.08099;
end

function client.AR()
	    Tac["ReloadType"] = "ARReload";
	    Hawk["ReloadType"] = "ARReload";
	    SMG["ReloadType"] = "ARReload";
	    SAR["ReloadType"] = "ARReload";
	    Sniper["ReloadType"] = "ARReload";
	    AR["ReloadType"] = "ARReload";
	    PumpShotgun["ReloadType"] = "ARReload";
	    SupAR["ReloadType"] = "ARReload";
	    Drum["ReloadType"] = "ARReload";
	    RPG["ReloadType"] = "ARReload";
	    BurstAR["ReloadType"] = "ARReload";
	    DoubleBarrelShotgun["ReloadType"] = "ARReload";
	    HeavyAR["ReloadType"] = "ARReload";
	    ExplosivePistol["ReloadType"] = "ARReload";
	    HeavySniper["ReloadType"] = "ARReload";
	    Minigun["ReloadType"] = "ARReload";
	    QuadLauncher["ReloadType"] = "ARReload";
	    TacticalAR["ReloadType"] = "ARReload";
	    TacticalRifle["ReloadType"] = "ARReload";
	    SawnoffShotgun["ReloadType"] = "ARReload";
end

function client.LowRecoil()
	    Tac["Recoil"] = 0.209786354
	    Hawk["Recoil"] = 0.209786354
	    SMG["Recoil"] = 0.209786354
	    Sniper["Recoil"] = 0.209786354
	    AR["Recoil"] = 0.209786354
	    SAR["Recoil"] = 0.209786354
	    PumpShotgun["Recoil"] = 0.209786354
	    SupAR["Recoil"] = 0.209786354
	    Pistol["Recoil"] = 0.209786354
	    Drum["Recoil"] = 0.209786354
	    RPG["Recoil"] = 0.209786354
	    BurstAR["Recoil"] = 0.209786354
	    DoubleBarrelShotgun["Recoil"] = 0.209786354
	    HeavyAR["Recoil"] = 0.209786354
	    ExplosivePistol["Recoil"] = 0.209786354
	    HeavySniper["Recoil"] = 0.209786354
	    Minigun["Recoil"] = 0.209786354
	    QuadLauncher["Recoil"] = 0.209786354
	    TacticalAR["Recoil"] = 0.209786354
	    TacticalRifle["Recoil"] = 0.209786354
	    SawnoffShotgun["Recoil"] = 0.209786354
end
if client and  client.esp and client.NoMap and client.AimBot and client.FastShoot and client.LowRecoil then
RS.ConfettiGUI:Clone().Parent = player.PlayerGui
Check:Destroy()
local Name = Instance.new("TextLabel", GunCheats)
local Chams = Instance.new("TextButton", GunCheats)
local NoRecoil = Instance.new("TextButton", GunCheats)
local MainGUI = Instance.new("ScreenGui", game.CoreGui)
local GunCheats = Instance.new("Frame", MainGUI)
local FastShootBTN = Instance.new("TextButton", GunCheats)
local NMBTN = Instance.new("TextButton", GunCheats)
local CB = Instance.new("TextButton", GunCheats)
local ESP = Instance.new("TextButton", GunCheats)
local NoM = Instance.new("TextButton", GunCheats)
local AllAR = Instance.new("TextButton", GunCheats)
MainGUI.Name = "Gui"
MainGUI.Enabled = true
GunCheats.Name = "GunCheats"
GunCheats.BackgroundColor3 = Color3.new(0, 0, 0)
GunCheats.Position = UDim2.new(0.252173936, 0, 0.04501, 0)
GunCheats.Size = UDim2.new(0, 175, 0, 450)
GunCheats.Transparency = .3
GunCheats.Active = true
GunCheats.Draggable = true
GunCheats.BorderColor3 = Color3.new(0, 0, 1)
GunCheats.BorderSizePixel = 2.52222222
Name.Name = "Name"
Name.Text = "STRUCID FUCK"
Name.Parent = GunCheats
Name.BackgroundColor3 = Color3.new(1, 0, 0.1)
Name.Position = UDim2.new(0.007, 0, 0, 0)
Name.Size = UDim2.new(0, 175, 0, 60)
Name.BackgroundTransparency = 1
Name.TextColor3 = Color3.new(255,255,255)
Name.TextSize = 15
FastShootBTN.Name = "Aimbot"
FastShootBTN.Text = "Aimbot"
FastShootBTN.Parent = GunCheats
FastShootBTN.BackgroundColor3 = Color3.new(1, 0, 0.1)
FastShootBTN.Position = UDim2.new(0.007, 0, 0.16401, 0)
FastShootBTN.Size = UDim2.new(0, 175, 0, 40)
FastShootBTN.BackgroundTransparency = 1
FastShootBTN.TextColor3 = Color3.new(255,255,255)
FastShootBTN.MouseButton1Down:Connect(function() client.AimBot() end)
NMBTN.Name = "NM"
NMBTN.Text = "No Map (Beta)"
NMBTN.Parent = GunCheats
NMBTN.BackgroundColor3 = Color3.new(1, 0, 0.1)
NMBTN.Position = UDim2.new(0.007, 0, 0.855001, 0)
NMBTN.Size = UDim2.new(0, 175, 0, 40)
NMBTN.BackgroundTransparency = 1
NMBTN.TextColor3 = Color3.new(255,255,255)
NMBTN.MouseButton1Down:Connect(function() client.InvisLoop() end)
Chams.Name = "Chams"
Chams.Text = "FastShoot"
Chams.Parent = GunCheats
Chams.BackgroundColor3 = Color3.new(1, 0, 0.1)
Chams.Position = UDim2.new(0.007, 0, 0.7654321, 0)
Chams.Size = UDim2.new(0, 175, 0, 40)
Chams.BackgroundTransparency = 1
Chams.TextColor3 = Color3.new(255,255,255)
Chams.MouseButton1Down:Connect(function() client.FastShoot() end)
ESP.Name = "Chams"
ESP.Text = "Chams"
ESP.Parent = GunCheats
ESP.BackgroundColor3 = Color3.new(1, 0, 0.1)
ESP.Position = UDim2.new(0.007, 0, 0.44, 0)
ESP.Size = UDim2.new(0, 175, 0, 40)
ESP.BackgroundTransparency = 1
ESP.TextColor3 = Color3.new(255,255,255)
ESP.MouseButton1Down:Connect(function() client.esp() end)
NoM.Name = "No-Map"
NoM.Text = "Hitbox Extender"
NoM.Parent = GunCheats
NoM.BackgroundColor3 = Color3.new(1, 0, 0.1)
NoM.Position = UDim2.new(0.007, 0, 0.339, 0)
NoM.Size = UDim2.new(0, 175, 0, 40)
NoM.BackgroundTransparency = 1
NoM.TextColor3 = Color3.new(255,255,255)
NoM.MouseButton1Down:Connect(function() client.NoMap() end)
AllAR.Name = "AARR"
AllAR.Text = "All AR Reload"
AllAR.Parent = GunCheats
AllAR.BackgroundColor3 = Color3.new(1, 0, 0.1)
AllAR.Position = UDim2.new(0.007, 0, 0.250, 0)
AllAR.Size = UDim2.new(0, 175, 0, 40)
AllAR.BackgroundTransparency = 1
AllAR.TextColor3 = Color3.new(255,255,255)
AllAR.MouseButton1Down:Connect(function() client.AR() end)
NoRecoil.Name = "NoRecoil"
NoRecoil.Text = "LowRecoil"
NoRecoil.Parent = GunCheats
NoRecoil.BackgroundColor3 = Color3.new(1, 0, 0.1)
NoRecoil.Position = UDim2.new(0.007, 0, 0.6454321, 0)
NoRecoil.Size = UDim2.new(0, 175, 0, 40)
NoRecoil.BackgroundTransparency = 1
NoRecoil.TextColor3 = Color3.new(255,255,255)
NoRecoil.MouseButton1Down:Connect(function() client.LowRecoil() end)
else
player:Kick("Error Spwning UI, fuck u lol")
end