local plr = game:GetService("Players").LocalPlayer

local TpMethod = 1

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

local Tracers = {}

local function AddLasso(p,team)
	if not Tracers[team.Name] then return end
	if p == plr then return end
	spawn(function()
		if p.Character then
			local l = Instance.new("SelectionPartLasso")
			l.Parent = p.Character
			l.Humanoid = p.Character:FindFirstChildOfClass"Humanoid"
			l.Part = plr.Character:WaitForChild"HumanoidRootPart"
			l.Visible = true
			l.Color3 = team.TeamColor.Color
			for i=0,5 do
				local sg = Instance.new("SurfaceGui")
				sg.Face = i
				sg.Parent = p.Character
				sg.Adornee = p.Character:FindFirstChild"HumanoidRootPart"
				sg.AlwaysOnTop = true
				local f = Instance.new("Frame", sg)
				f.Size = UDim2.new(1,0,1,0)
				f.BorderSizePixel = 0
				f.BackgroundColor3 = team.TeamColor.Color
				f.BackgroundTransparency = 0.5
			end
		end
	end)
end

local function RemoveLasso(p)
	if not p.Character then return end
	for i,v in pairs(p.Character:GetDescendants()) do
		if v.ClassName:find("Selection") or v.ClassName == "SurfaceGui" then
			v:Destroy()
		end
	end
end

for _,team in pairs(game:GetService("Teams"):GetChildren()) do
	team.PlayerAdded:connect(function(p)
		AddLasso(p,team)
	end)
	
	team.PlayerRemoved:connect(function(p)
		RemoveLasso(p)
	end)
end

function ToggleTracers(team, bool)
	Tracers[team] = bool
	local t = game:GetService("Teams"):FindFirstChild(team)
	if not t then return end
	for i,v in pairs(t:GetPlayers()) do
		if bool then
			AddLasso(v,t)
		else
			RemoveLasso(v)
		end
	end
end

local function CharAdded(plr, char)
	if Tracers[tostring(plr.Team)] then
		AddLasso(plr,plr.Team)
	end
end

local function PlrAdded(plr)
	plr.CharacterAdded:connect(function(char)
		CharAdded(plr, char)
	end)
	if plr.Character then
		CharAdded(plr, plr.Character)
	end
end

game:GetService("Players").PlayerAdded:connect(PlrAdded)
for _,v in pairs(game:GetService("Players"):GetPlayers()) do
	PlrAdded(v)
end

--Creating Gui--

local function Create(classname)
	return function(t)
		local ins = Instance.new(classname)
		for i,v in pairs(t) do
			ins[i] = v
		end
		return ins
	end
end

--local parent = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local main = Create "Frame" {
	Active = true,
	ClipsDescendants = true,
	Draggable = true,
	BackgroundColor3 = Color3.new(1,1,1),
	BorderSizePixel = 0,
	Size = UDim2.new(0,400,0,300),
	Position = UDim2.new(0.5,-200,0,-300),
	BackgroundTransparency = 1,
	Parent = Instance.new("ScreenGui", plr.PlayerGui)--parent
}
do
	local effect = Create "Frame" {
		Parent = main,
		Size = UDim2.new(1,0,0,50),
		BackgroundColor3 = Color3.fromRGB(85,170,255),
		BorderSizePixel = 0,
		ClipsDescendants = true,
	}
	local lb = Create "TextLabel" {
		Parent = effect,
		Size = UDim2.new(1,0,1,0),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextSize = 30,
		TextColor3 = Color3.new(1,1,1),
		TextXAlignment = "Left",
		Font = "SourceSansBold",
		Text = "Jailbreak GUI",
		ZIndex = 2,
	}
	local function GTween()
		lb:TweenPosition(UDim2.new(1,10,0,0), nil,nil,3,true,function(ts)
			if ts == Enum.TweenStatus.Completed then
				lb.Position = UDim2.new(0,0 - lb.TextBounds.X - 2,0,0)
				GTween()
			end
		end)
	end
	GTween()
end

local Menu = Create "Frame" {
	BackgroundColor3 = Color3.new(1,1,1),
	BorderSizePixel = 0,
	Position = UDim2.new(0,0,0,50),
	Size = UDim2.new(1,0,1,-50),
	Parent = main,
}

local MenuLabel = Create "TextLabel" {
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	TextColor3 = Color3.new(0,0,0),
	TextSize = 20,
	Font = "SourceSans",
	Text = "Made by refrfgrtgef for v3rm\n(won't tell you my roblox name)",
	TextWrapped = true,
	Size = UDim2.new(1,0,0,50),
	Parent = Menu
}

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

local function CreateFrame(name)
	local f = Create "Frame" {
		BackgroundColor3 = Color3.new(1,1,1),
		BorderSizePixel = 0,
		Position = UDim2.new(0,0,0,50),
		Size = UDim2.new(1,0,1,-50),
		Visible = false,
	}
	local lb = Create "TextLabel" {
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		TextSize = 20,
		TextColor3 = Color3.new(1,1,0),
		Position = UDim2.new(0,0,0,5),
		Text = name,
		Parent = f,
		TextXAlignment = "Center",
		TextYAlignment = "Center",
		Size = UDim2.new(1,0,0,30),
	}
	local exit = CreateButton("Back", f)
	exit.Position = UDim2.new(0.5,-50,1,-45)
	exit.MouseButton1Click:connect(function()
		Menu.Visible = true
		f.Visible = false
		ActiveFrame = Menu
	end)
	return f
end

ActiveFrame = Menu

local TeleportsFrame = CreateFrame("Teleports")
TeleportsFrame.Parent = main

local BankIn = CreateButton("Bank (In)", TeleportsFrame)
BankIn.Position = UDim2.new(0,15,0,40)
BankIn.Size = UDim2.new(0,80,0,30)
BankIn.MouseButton1Click:connect(function()
	JailbreakTp(32,0.715,814, true)
end)

local BankOut = CreateButton("Bank (Out)", TeleportsFrame)
BankOut.Position = UDim2.new(0,105,0,40)
BankOut.MouseButton1Click:connect(function()
	JailbreakTp(10, 18, 784)
end)

local JailIn = CreateButton("Jail (In)", TeleportsFrame)
JailIn.Position = UDim2.new(0,215,0,40)
JailIn.Size = UDim2.new(0,80,0,30)
JailIn.MouseButton1Click:connect(function()
	JailbreakTp(-1310, 18, -1658)
end)

local JailOut = CreateButton("Jail (Out)", TeleportsFrame)
JailOut.Position = UDim2.new(0,305,0,40)
JailOut.Size = UDim2.new(0,80,0,30)
JailOut.MouseButton1Click:connect(function()
	JailbreakTp(-1133, 18, -1355)
end)

local Garage = CreateButton("Garage", TeleportsFrame)
Garage.Position = UDim2.new(0,335,0,120)--UDim2.new(0,10,0,80)
Garage.Size = UDim2.new(0,60,0,30)
Garage.MouseButton1Click:connect(function()
	JailbreakTp(-352, 23, 1175)
end)

local JewelIn = CreateButton("Jewelry (In)", TeleportsFrame)
JewelIn.Position = UDim2.new(0,25,0,80)
JewelIn.MouseButton1Click:connect(function()
	JailbreakTp(133, 18, 1320, true)
end)

local JewelOut = CreateButton("Jewelry (Out)", TeleportsFrame)
JewelOut.Position = UDim2.new(0,135,0,80)
JewelOut.Size = UDim2.new(0,115,0,30)
JewelOut.MouseButton1Click:connect(function()
	JailbreakTp(142, 18, 1365)
end)

local Crim1 = CreateButton("Crim base 1", TeleportsFrame)
Crim1.Position = UDim2.new(0,5,0,120)
Crim1.MouseButton1Click:connect(function()
	JailbreakTp(-226, 18, 1590, true)
end)

local Crim2 = CreateButton("Crim base 2", TeleportsFrame)
Crim2.Position = UDim2.new(0,115,0,120)
Crim2.MouseButton1Click:connect(function()
	JailbreakTp(true, 1637, 50, -1768, true)
end)

local Donut = CreateButton("Donut Shop", TeleportsFrame)
Donut.Position = UDim2.new(0,225,0,120)
Donut.MouseButton1Click:connect(function()
	JailbreakTp(268, 18, -1760, true)
end)

local Gas = CreateButton("Gas Station", TeleportsFrame)
Gas.Position = UDim2.new(0,260,0,80)
Gas.MouseButton1Click:connect(function()
	JailbreakTp(-1583, 18, 724, true)
end)

local TeleportsBtn = CreateButton("Teleports", MenuLabel)
TeleportsBtn.Position = UDim2.new(0.5,-50,0,60)
TeleportsBtn.MouseButton1Click:connect(function()
	TeleportsFrame.Visible = true
	Menu.Visible = false
	ActiveFrame = TeleportsFrame
end)

local StuffFrame = CreateFrame("Stuff")
StuffFrame.Parent = main

local StuffBtn = CreateButton("Stuff", MenuLabel)
StuffBtn.Position = TeleportsBtn.Position + UDim2.new(0,0,0,40)
StuffBtn.MouseButton1Click:connect(function()
	StuffFrame.Visible = true
	Menu.Visible = false
	ActiveFrame = StuffFrame
end)

local RemoveDoors = CreateButton("Remove Doors", StuffFrame)
RemoveDoors.Size = UDim2.new(0,120,0,30)
RemoveDoors.Position = UDim2.new(0,10,0,50)
RemoveDoors.MouseButton1Click:connect(function()
	local doors = workspace:FindFirstChild("Doors")
	if not doors then return end
	for i,v in pairs(doors:GetChildren()) do
		v:Destroy()
	end
end)

local Platform = CreateButton("Platform", StuffFrame)
Platform.Position = UDim2.new(0.5,-60,0,50)
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

local Tracers = CreateButton("Tracers: None", StuffFrame)
Tracers.Size = UDim2.new(0,140,0,30)
Tracers.Position = UDim2.new(1,-150,0,50)
Tracers.MouseButton1Click:connect(function()
	local curr = Tracers.Text:sub(10)
	if curr ~= "None" then
		ToggleTracers(curr, false)
	end
	local teams = {"None", "Police", "Criminal", "Prisoner"}
	local new = ""
	for i,v in pairs(teams) do
		if v == curr then
			new = teams[i + 1] or teams[1]
		end
	end
	if new ~= "None" then
		ToggleTracers(new, true)
	end
	Tracers.Text = "Tracers: " .. new
end)

local BtoolActive = false
local m = plr:GetMouse()

local Btool = CreateButton("Btool: Off", StuffFrame)
Btool.Position = UDim2.new(0,10,0,90)
Btool.MouseButton1Click:connect(function()
	spawn(function()
		local status = Btool.Text:sub(8)
		local newstatus = status == "On" and "Off" or status == "Off" and "On"
		Btool.Text = "Btool: " .. newstatus
		BtoolActive = newstatus == "On" and true or newstatus == "Off" and false
		if BtoolActive then
			local sb = Instance.new("SelectionBox", workspace.CurrentCamera)
			local ev = m.Button1Down:connect(function()
				if m.Target then
					m.Target:Destroy()
				end
			end)
			while BtoolActive do
				wait()
				if m.Target then
					sb.Adornee = m.Target
				end
			end
			ev:Disconnect()
		else
			local sb = workspace.CurrentCamera:FindFirstChildOfClass("SelectionBox")
			if sb then sb:Destroy() end
		end
	end)
end)

local ClickTpEnabled = false
m.Button1Down:connect(function()
	if ClickTpEnabled and m.Target then
		plr.Character:MoveTo(m.Hit.p)
	end
end)

local ClickTp = CreateButton("ClickTp: Off", StuffFrame)
ClickTp.Position = UDim2.new(0,120,0,90)
ClickTp.MouseButton1Click:connect(function()
	spawn(function()
		local status = ClickTp.Text:sub(10)
		local newstatus = status == "Off" and "On" or status == "On" and "Off"
		ClickTpEnabled = newstatus == "On" and true or newstatus == "Off" and false
		ClickTp.Text = "ClickTp: " .. newstatus
		local ind = Create "Part" {
			Anchored = true,
			CanCollide = false,
			Transparency = 0.3,
			Size = Vector3.new(1.2,0.3,1.2),
			BrickColor = BrickColor.Green(),
			Parent = workspace
		}
		Instance.new("CylinderMesh", ind)
		m.TargetFilter = ind
		local beam = Create "Part" {
			Anchored = true,
			CanCollide = false,
			Transparency = 0.3,
			BrickColor = BrickColor.Green(),
			TopSurface = "Smooth",
			BottomSurface = "Smooth",
			Size = Vector3.new(0.3,0.3,1),
			Parent = workspace
			
		}
		while ClickTpEnabled do
			wait()
			ind.CFrame = CFrame.new(m.Hit.p)
			local humrootpos = plr.Character:WaitForChild'HumanoidRootPart'.Position
			local dist = (Vector3.new(m.Hit.p.X,0,m.Hit.p.Z) - Vector3.new(humrootpos.X,0,humrootpos.Z)).magnitude
			if dist > 150 then
				ind.BrickColor,beam.BrickColor = BrickColor.Red(),BrickColor.Red()
			else
				ind.BrickColor,beam.BrickColor = BrickColor.Green(),BrickColor.Green()
			end
			beam.Size = Vector3.new(0.3,0.3,dist - 0.5)
			beam.CFrame = CFrame.new(plr.Character:WaitForChild'HumanoidRootPart'.Position, m.Hit.p) * CFrame.new(0,0,-dist/2 + 0.5)
		end
		ind:Destroy()
		beam:Destroy()
	end)
end)

local Gravity = CreateButton("Low Gravity", StuffFrame)
Gravity.Position = UDim2.new(0,230,0,90)
Gravity.Size = UDim2.new(0,130,0,30)
Gravity.MouseButton1Click:connect(function()
	local t = Gravity.Text == "Low Gravity" and true or false
	workspace.Gravity = t and 50 or 196.2
	Gravity.Text = t and "Normal Gravity" or "Low Gravity"
end)

local InfiniteJumpEnabled = false
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
local InfiniteJump = CreateButton("Infinite Jump: Off", StuffFrame)
InfiniteJump.Position = UDim2.new(0,10,0,130)
InfiniteJump.Size = UDim2.new(0,150,0,30)
InfiniteJump.MouseButton1Click:connect(function()
	local state = InfiniteJump.Text:sub(string.len("Infinite Jump: ") + 1) --too lazy to count lol
	local new = state == "Off" and "On" or state == "On" and "Off"
	InfiniteJumpEnabled = new == "On"
	InfiniteJump.Text = "Infinite Jump: " .. new
end)

local Giver = nil
local ItemsGiver = CreateButton("Items Giver", StuffFrame)
ItemsGiver.Position = UDim2.new(0,170,0,130)
ItemsGiver.MouseButton1Click:connect(function()
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

local BankAutoRobBtn = CreateButton("Bank AutoRob", StuffFrame)
BankAutoRobBtn.Position = UDim2.new(0,280,0,130)
BankAutoRobBtn.Size = UDim2.new(0,115,0,30)
BankAutoRobBtn.BackgroundColor3 = Color3.new(1,0,0)
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

local SettingsFrame = CreateFrame("Settings")
SettingsFrame.Parent = main

local Settingsbtn = CreateButton("Settings", MenuLabel)
Settingsbtn.Position = StuffBtn.Position + UDim2.new(0,0,0,40)
Settingsbtn.MouseButton1Click:connect(function()
	SettingsFrame.Visible = true
	Menu.Visible = false
	ActiveFrame = SettingsFrame
end)

local TpMethodBtn = CreateButton("Teleport Method: 1", SettingsFrame)
TpMethodBtn.Position = UDim2.new(0,10,0,50)
TpMethodBtn.Size = UDim2.new(0,160,0,30)
TpMethodBtn.MouseButton1Click:connect(function()
	local curr = TpMethodBtn.Text:sub(string.len("Teleport Method: ") + 1)
	curr = tonumber(curr)
	local new = curr == 1 and 2 or curr == 2 and 1
	TpMethod = new
	TpMethodBtn.Text = "Teleport Method: " .. new
end)

local ExitBtn = CreateButton("Exit", MenuLabel)
ExitBtn.Position = Settingsbtn.Position + UDim2.new(0,0,0,40)
ExitBtn.MouseButton1Click:connect(function()
	main:Destroy()
	script.Disabled = true
	script:Destroy()
end)

local BankJewelStatus = Create "TextLabel" {
	BackgroundTransparency = 1,
	TextSize = 8,
	TextColor3 = Color3.new(0,0,0),
	Font = "Legacy",
	TextXAlignment = "Left",
	TextYAlignment = "Top",
	Size = UDim2.new(0,100,0,100),
	Position = UDim2.new(0,10,0,220),
	Text = "Bank:\nJewelry:",
	Parent = Menu
}

local BankStatus = BankJewelStatus:Clone()
BankStatus.Text = "Unknown"
BankStatus.Size = UDim2.new(0,100,0,100)
BankStatus.Position = UDim2.new(0,46,0,220)
BankStatus.Parent = Menu
BankStatus.TextColor3 = Color3.new(1,0,0)

local JewelryStatus = BankStatus:Clone()
JewelryStatus.Text = "Unknown"
JewelryStatus.Size = UDim2.new(0,100,0,100)
JewelryStatus.Position = UDim2.new(0,59,0,232)
JewelryStatus.Parent = Menu
JewelryStatus.TextColor3 = Color3.new(1,0,0)

main:TweenPosition(UDim2.new(0.5,-200,0.5,-150))

local TransparencyTweens = {}
main.MouseLeave:connect(function()
	spawn(function()
		local bool = false
		local ev = main.MouseEnter:connect(function()
			bool = true
		end)
		wait(1)
		ev:Disconnect()
		if bool then return end
		for i,v in pairs(TransparencyTweens) do
			v:Pause()
		end
		TransparencyTweens = {}
		for i,v in pairs(main:GetDescendants()) do
			if v.Visible then
				local totween = {}
				if v.ClassName:sub(1,4) == "Text" then
					totween.TextTransparency = 0.7
				end
				if v.BackgroundTransparency ~= 1 then
					totween.BackgroundTransparency = 0.7
				end
				TransparencyTweens[#TransparencyTweens + 1] = Tween(v, 0.5, totween)
			end
		end
		main:TweenSize(UDim2.new(0,400,0,50),nil,nil,nil,true)
	end)
end)
main.MouseEnter:connect(function()
	for i,v in pairs(TransparencyTweens) do
		v:Pause()
	end
	TransparencyTweens = {}
	for i,v in pairs(main:GetDescendants()) do
		if v.Visible then
			local totween = {}
			if v.ClassName:sub(1,4) == "Text" then
				totween.TextTransparency = 0
			end
			if v.BackgroundTransparency ~= 1 then
				totween.BackgroundTransparency = 0
			end
			TransparencyTweens[#TransparencyTweens + 1] = Tween(v, 0.5, totween)
		end
	end
	main:TweenSize(UDim2.new(0,400,0,300),nil,nil,nil,true)
end)

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
			BankStatus.Text = "Open"
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
			BankStatus.Text = "Closed"
			BankStatus.TextColor3 = Color3.new(1,0,0)
			BankAutoRobBtn.BackgroundColor3 = Color3.new(1,0,0)
		end
	end)
	BankStatus.Text = Info.Transparency == 0 and "Closed" or "Open"
	BankStatus.TextColor3 = Info.Transparency == 0 and Color3.new(1,0,0) or Color3.new(0,1,0)
	BankAutoRobBtn.BackgroundColor3 = Info.Transparency == 0 and Color3.new(1,0,0) or Color3.new(0,1,0)
end)
--Jewelry notification--
pcall(function()
	local Jewelry = workspace:FindFirstChild("Jewelrys"):GetChildren()[1]
	local Info = Jewelry.Extra.Sign.Decal
	Info:GetPropertyChangedSignal("Transparency"):Connect(function()
		if Info.Transparency ~= 0 then
			JewelryStatus.Text = "Open"
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
			JewelryStatus.Text = "Closed"
			JewelryStatus.TextColor3 = Color3.new(1,0,0)
		end
	end)
	JewelryStatus.Text = Info.Transparency == 0 and "Closed" or "Open"
	JewelryStatus.TextColor3 = Info.Transparency == 0 and Color3.new(1,0,0) or Color3.new(0,1,0)
end)