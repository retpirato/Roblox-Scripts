-- Farewell Infortality.
-- Version: 2.82
-- Instances:
local s = Instance.new("ScreenGui")
local Load = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Whitelist = Instance.new("Frame")
local Check = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local drag = Instance.new("Frame")
local f = Instance.new("Frame")
local b = Instance.new("TextButton")
local t = Instance.new("TextBox")
local p = Instance.new("TextButton")
local a = Instance.new("TextBox")
local Close = Instance.new("TextButton")
local RemoteGuiName = Instance.new("TextLabel")
local Extra = Instance.new("Frame")
local CloseXtra = Instance.new("TextButton")
local Brute = Instance.new("TextButton")
local OpenExtra = Instance.new("TextButton")
local ReOpen = Instance.new("TextButton")
local Hub = Instance.new("Frame")
local BG = Instance.new("Frame")
local MML = Instance.new("TextButton")
local GrabKnife = Instance.new("TextButton")
local StarGlitcher = Instance.new("TextButton")
local Suicide = Instance.new("TextButton")
local NukeGun = Instance.new("TextButton")
local Titan = Instance.new("TextButton")
local Mustardgas = Instance.new("TextButton")
local Flamethrower = Instance.new("TextButton")
local Ak = Instance.new("TextButton")
local Treesmasher = Instance.new("TextButton")
local Close_2 = Instance.new("TextButton")
local ModuleHub = Instance.new("TextLabel")
--Properties:
s.Name = "s"
s.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
s.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Load.Name = "Load"
Load.Parent = s
Load.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Load.BackgroundTransparency = 0.60000002384186
Load.Position = UDim2.new(0.5, -88, 0.5, -54)
Load.Size = UDim2.new(0, 176, 0, 107)
Load.Visible = false

Title.Name = "Title"
Title.Parent = Load
Title.BackgroundColor3 = Color3.new(1, 1, 1)
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(-0.0681818202, 0, 0.261682242, 0)
Title.Size = UDim2.new(0, 200, 0, 50)
Title.Font = Enum.Font.SourceSans
Title.Text = ""
Title.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Title.TextSize = 23
Title.TextStrokeColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)

Whitelist.Name = "Whitelist"
Whitelist.Parent = s
Whitelist.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Whitelist.BackgroundTransparency = 0.40000000596046
Whitelist.BorderColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Whitelist.Position = UDim2.new(0.5, -92, 0.5, -50)
Whitelist.Size = UDim2.new(0, 184, 0, 100)

Check.Name = "Check"
Check.Parent = Whitelist
Check.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Check.BackgroundTransparency = 0.44999998807907
Check.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Check.BorderSizePixel = 3
Check.Position = UDim2.new(0.0434782617, 0, 0.400000006, 0)
Check.Size = UDim2.new(0, 168, 0, 50)
Check.Font = Enum.Font.SourceSans
Check.Text = "Load GUI"
Check.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Check.TextSize = 18
Check.TextStrokeColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Check.TextWrapped = true

TextLabel.Parent = Check
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(-0.095238097, 0, -0.799999952, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 27)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "ReplicatedFucker"
TextLabel.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

drag.Name = "drag"
drag.Parent = s
drag.BackgroundColor3 = Color3.new(0, 0, 0)
drag.BorderSizePixel = 0
drag.Position = UDim2.new(0.5, -146, 0.5, -10)
drag.Size = UDim2.new(0, 291, 0, 20)
drag.Visible = false

f.Name = "f"
f.Parent = drag
f.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
f.BackgroundTransparency = 0.40000000596046
f.BorderSizePixel = 0
f.Position = UDim2.new(0, 0, 0.995488763, 0)
f.Size = UDim2.new(0, 291, 0, 149)

b.Name = "b"
b.Parent = f
b.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
b.BackgroundTransparency = 0.60000002384186
b.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
b.BorderSizePixel = 3
b.Position = UDim2.new(0.524113774, 0, 0.602716029, 0)
b.Size = UDim2.new(0, 116, 0, 37)
b.AutoButtonColor = false
b.Font = Enum.Font.SourceSans
b.Text = "Fire Remote"
b.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
b.TextSize = 20

t.Name = "t"
t.Parent = f
t.BackgroundColor3 = Color3.new(1, 1, 1)
t.BackgroundTransparency = 0.75
t.Position = UDim2.new(0.155589104, 0, 0.0503394157, 0)
t.Size = UDim2.new(0, 200, 0, 34)
t.Font = Enum.Font.SourceSans
t.PlaceholderText = "Remote Name"
t.Text = ""
t.TextColor3 = Color3.new(0, 0, 0)
t.TextScaled = true
t.TextSize = 14
t.TextWrapped = true

p.Name = "p"
p.Parent = f
p.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
p.BackgroundTransparency = 0.60000002384186
p.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
p.BorderSizePixel = 3
p.Position = UDim2.new(0.0738865957, 0, 0.596906781, 0)
p.Size = UDim2.new(0, 116, 0, 37)
p.AutoButtonColor = false
p.Font = Enum.Font.SourceSans
p.Text = "List Remotes"
p.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
p.TextSize = 20

a.Name = "a"
a.Parent = f
a.BackgroundColor3 = Color3.new(1, 1, 1)
a.BackgroundTransparency = 0.75
a.Position = UDim2.new(0.155589104, 0, 0.302917421, 0)
a.Size = UDim2.new(0, 200, 0, 34)
a.ClearTextOnFocus = false
a.Font = Enum.Font.SourceSans
a.PlaceholderText = "Arg (Require)"
a.Text = ""
a.TextColor3 = Color3.new(0, 0, 0)
a.TextScaled = true
a.TextSize = 14
a.TextWrapped = true

Close.Name = "Close"
Close.Parent = f
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.900684953, 0, -0.150547981, 0)
Close.Size = UDim2.new(0, 35, 0, 20)
Close.Font = Enum.Font.SourceSans
Close.Text = "x"
Close.TextColor3 = Color3.new(0.905882, 0.905882, 0.905882)
Close.TextScaled = true
Close.TextSize = 14
Close.TextWrapped = true

RemoteGuiName.Name = "RemoteGuiName"
RemoteGuiName.Parent = f
RemoteGuiName.BackgroundColor3 = Color3.new(1, 1, 1)
RemoteGuiName.BackgroundTransparency = 1
RemoteGuiName.Position = UDim2.new(0.15075554, 0, -0.135434344, 0)
RemoteGuiName.Size = UDim2.new(0, 200, 0, 20)
RemoteGuiName.Font = Enum.Font.SourceSans
RemoteGuiName.Text = "Remote GUI"
RemoteGuiName.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
RemoteGuiName.TextScaled = true
RemoteGuiName.TextSize = 14
RemoteGuiName.TextWrapped = true

Extra.Name = "Extra"
Extra.Parent = f
Extra.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Extra.BackgroundTransparency = 0.40000000596046
Extra.BorderSizePixel = 0
Extra.Position = UDim2.new(0, 0, 0.986577153, 0)
Extra.Size = UDim2.new(0, 291, 0, 0)

CloseXtra.Name = "CloseXtra"
CloseXtra.Parent = Extra
CloseXtra.BackgroundColor3 = Color3.new(1, 1, 1)
CloseXtra.BackgroundTransparency = 1
CloseXtra.Position = UDim2.new(0.352739722, 0, 0.769999981, 0)
CloseXtra.Size = UDim2.new(0, 82, 0, 23)
CloseXtra.Visible = false
CloseXtra.Font = Enum.Font.SourceSans
CloseXtra.Text = "less"
CloseXtra.TextColor3 = Color3.new(0, 0, 0)
CloseXtra.TextScaled = true
CloseXtra.TextSize = 14
CloseXtra.TextWrapped = true

Brute.Name = "Brute"
Brute.Parent = Extra
Brute.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
Brute.BackgroundTransparency = 0.5
Brute.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Brute.BorderSizePixel = 3
Brute.Position = UDim2.new(0.0719178095, 0, 0.310000002, 0)
Brute.Size = UDim2.new(0, 116, 0, 38)
Brute.Visible = false
Brute.Font = Enum.Font.SourceSans
Brute.Text = "BruteForce"
Brute.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Brute.TextSize = 17

OpenExtra.Name = "OpenExtra"
OpenExtra.Parent = f
OpenExtra.BackgroundColor3 = Color3.new(1, 1, 1)
OpenExtra.BackgroundTransparency = 1
OpenExtra.Position = UDim2.new(0.383702844, 0, 0.84522897, 0)
OpenExtra.Size = UDim2.new(0, 65, 0, 23)
OpenExtra.Font = Enum.Font.SourceSans
OpenExtra.Text = "More"
OpenExtra.TextColor3 = Color3.new(0, 0, 0)
OpenExtra.TextScaled = true
OpenExtra.TextSize = 14
OpenExtra.TextWrapped = true

ReOpen.Name = "ReOpen"
ReOpen.Parent = s
ReOpen.BackgroundColor3 = Color3.new(1, 1, 1)
ReOpen.BackgroundTransparency = 0.69999998807907
ReOpen.Position = UDim2.new(0, 0, 0.904831648, 0)
ReOpen.Size = UDim2.new(0, 63, 0, 21)
ReOpen.Visible = false
ReOpen.Font = Enum.Font.SourceSans
ReOpen.Text = "ReOpen"
ReOpen.TextColor3 = Color3.new(0, 0, 0)
ReOpen.TextSize = 14

Hub.Name = "Hub"
Hub.Parent = s
Hub.BackgroundColor3 = Color3.new(0, 0, 0)
Hub.BorderSizePixel = 0
Hub.Position = UDim2.new(0, 0, 0.5, -8)
Hub.Size = UDim2.new(0, 186, 0, 17)

BG.Name = "BG"
BG.Parent = Hub
BG.BackgroundColor3 = Color3.new(0.117647, 0.117647, 0.117647)
BG.BackgroundTransparency = 0.5
BG.BorderSizePixel = 0
BG.Position = UDim2.new(-0.000992969843, 0, 0.999351978, 0)
BG.Size = UDim2.new(0, 186, 0, 152)

MML.Name = "MML"
MML.Parent = BG
MML.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
MML.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
MML.Position = UDim2.new(0.0591397882, 0, 0.065789476, 0)
MML.Size = UDim2.new(0, 79, 0, 21)
MML.Font = Enum.Font.SourceSans
MML.Text = "MML Admin"
MML.TextColor3 = Color3.new(0, 0, 0)
MML.TextSize = 14
MML.TextWrapped = true

GrabKnife.Name = "GrabKnife"
GrabKnife.Parent = BG
GrabKnife.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
GrabKnife.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
GrabKnife.Position = UDim2.new(0.516129017, 0, 0.065789476, 0)
GrabKnife.Size = UDim2.new(0, 79, 0, 21)
GrabKnife.Font = Enum.Font.SourceSans
GrabKnife.Text = "GrabKnife V4"
GrabKnife.TextColor3 = Color3.new(0, 0, 0)
GrabKnife.TextSize = 14

StarGlitcher.Name = "StarGlitcher"
StarGlitcher.Parent = BG
StarGlitcher.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
StarGlitcher.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
StarGlitcher.Position = UDim2.new(0.0591397882, 0, 0.25, 0)
StarGlitcher.Size = UDim2.new(0, 79, 0, 21)
StarGlitcher.Font = Enum.Font.SourceSans
StarGlitcher.Text = "StarGlitcher"
StarGlitcher.TextColor3 = Color3.new(0, 0, 0)
StarGlitcher.TextSize = 14

Suicide.Name = "Suicide"
Suicide.Parent = BG
Suicide.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
Suicide.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Suicide.Position = UDim2.new(0.516129017, 0, 0.24999997, 0)
Suicide.Size = UDim2.new(0, 79, 0, 21)
Suicide.Font = Enum.Font.SourceSans
Suicide.Text = "Suicide Gun"
Suicide.TextColor3 = Color3.new(0, 0, 0)
Suicide.TextSize = 14

NukeGun.Name = "NukeGun"
NukeGun.Parent = BG
NukeGun.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
NukeGun.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
NukeGun.Position = UDim2.new(0.0591397882, 0, 0.427631557, 0)
NukeGun.Size = UDim2.new(0, 79, 0, 21)
NukeGun.Font = Enum.Font.SourceSans
NukeGun.Text = "Nuke Gun"
NukeGun.TextColor3 = Color3.new(0, 0, 0)
NukeGun.TextSize = 14

Titan.Name = "Titan"
Titan.Parent = BG
Titan.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
Titan.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Titan.Position = UDim2.new(0.516129017, 0, 0.440789461, 0)
Titan.Size = UDim2.new(0, 79, 0, 21)
Titan.Font = Enum.Font.SourceSans
Titan.Text = "Titan"
Titan.TextColor3 = Color3.new(0, 0, 0)
Titan.TextSize = 14

Mustardgas.Name = "Mustardgas"
Mustardgas.Parent = BG
Mustardgas.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
Mustardgas.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Mustardgas.Position = UDim2.new(0.0591397583, 0, 0.611842096, 0)
Mustardgas.Size = UDim2.new(0, 79, 0, 21)
Mustardgas.Font = Enum.Font.SourceSans
Mustardgas.Text = "Mustard Gas"
Mustardgas.TextColor3 = Color3.new(0, 0, 0)
Mustardgas.TextSize = 14

Flamethrower.Name = "Flamethrower"
Flamethrower.Parent = BG
Flamethrower.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
Flamethrower.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Flamethrower.Position = UDim2.new(0.516129017, 0, 0.611842096, 0)
Flamethrower.Size = UDim2.new(0, 79, 0, 21)
Flamethrower.Font = Enum.Font.SourceSans
Flamethrower.Text = "Flamethrower"
Flamethrower.TextColor3 = Color3.new(0, 0, 0)
Flamethrower.TextSize = 14

Ak.Name = "Ak"
Ak.Parent = BG
Ak.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
Ak.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Ak.Position = UDim2.new(0.0591397583, 0, 0.796052635, 0)
Ak.Size = UDim2.new(0, 79, 0, 21)
Ak.Font = Enum.Font.SourceSans
Ak.Text = "AK47"
Ak.TextColor3 = Color3.new(0, 0, 0)
Ak.TextSize = 14

Treesmasher.Name = "Treesmasher"
Treesmasher.Parent = BG
Treesmasher.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
Treesmasher.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Treesmasher.Position = UDim2.new(0.516129017, 0, 0.796052635, 0)
Treesmasher.Size = UDim2.new(0, 79, 0, 21)
Treesmasher.Font = Enum.Font.SourceSans
Treesmasher.Text = "TreeSmasher"
Treesmasher.TextColor3 = Color3.new(0, 0, 0)
Treesmasher.TextSize = 14

Close_2.Name = "Close"
Close_2.Parent = BG
Close_2.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
Close_2.BackgroundTransparency = 1
Close_2.BorderColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
Close_2.Position = UDim2.new(0.892473102, 0, -0.111842103, 0)
Close_2.Size = UDim2.new(0, 20, 0, 17)
Close_2.Font = Enum.Font.SourceSans
Close_2.Text = "X"
Close_2.TextColor3 = Color3.new(0.847059, 0.847059, 0.847059)
Close_2.TextScaled = true
Close_2.TextSize = 14
Close_2.TextWrapped = true

ModuleHub.Name = "ModuleHub"
ModuleHub.Parent = Hub
ModuleHub.BackgroundColor3 = Color3.new(1, 1, 1)
ModuleHub.BackgroundTransparency = 1
ModuleHub.Position = UDim2.new(0.220430106, 0, -0.118934184, 0)
ModuleHub.Size = UDim2.new(0, 102, 0, 19)
ModuleHub.Font = Enum.Font.SourceSans
ModuleHub.Text = "Module Hub"
ModuleHub.TextColor3 = Color3.new(0.67451, 0.0901961, 0.0901961)
ModuleHub.TextScaled = true
ModuleHub.TextSize = 14
ModuleHub.TextWrapped = true
-- Scripts:
function SCRIPT_NCAJ78_FAKESCRIPT() -- Load.Animation 
	local script = Instance.new('Script')
	script.Parent = Load
	
	
	function Anim()
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "R"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "RE"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REP"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPL"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLI"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLIC"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICA"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICAT"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATE"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATED"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATEDF"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATEDFU"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATEDFUC"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATEDFUCK"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATEDFUCKE"
	wait(0.2)
	game.Players.LocalPlayer.PlayerGui.s.Load.Title.Text = "REPLICATEDFUCKER"
	wait(2)
	game.Players.LocalPlayer.PlayerGui.s.drag.Visible = true
	game.Players.LocalPlayer.PlayerGui.s.Load:Destroy()
	end
	
	
	while true do
	if game.Players.LocalPlayer.PlayerGui.s.Load.Visible == true
	then
		Anim()
	end
	wait(1)
	end
	
	
	
	

end
coroutine.resume(coroutine.create(SCRIPT_NCAJ78_FAKESCRIPT))
function SCRIPT_OLJO76_FAKESCRIPT() -- Check.Wl 
	local script = Instance.new('Script')
	script.Parent = Check
	local button = game.Players.LocalPlayer.PlayerGui.s.Whitelist.Check
	 user = game.Players.LocalPlayer
	
	 button.MouseButton1Down:connect(function()
		if 
			user.Name == user.Name
		then
			print "ReplicatedFucker V1"
			print ("Welcome " ..(user.Name))
			button.Text = "Loading GUI"
			wait(1)
			button.Text = ("Welcome " .. (user.Name))
			wait(2)
			game.Players.LocalPlayer.PlayerGui.s.Load.Visible = true
			game.Players.LocalPlayer.PlayerGui.s.Whitelist:Destroy()
		else
			print "nope"
			game.Players.LocalPlayer.PlayerGui.s:Destroy()
		end
		
		
	end)

end
coroutine.resume(coroutine.create(SCRIPT_OLJO76_FAKESCRIPT))
function SCRIPT_TXMY86_FAKESCRIPT() -- s.Script 
	local script = Instance.new('Script')
	script.Parent = s
	gui = game.Players.LocalPlayer.PlayerGui.s
	
	gui.Load.Draggable = true
	gui.Load.Active = true
	gui.Whitelist.Draggable = true
	gui.Whitelist.Active = true
	gui.drag.Draggable = true
	gui.drag.Active = true
	gui.ReOpen.Visible = false
	gui.Hub.Active = true
	gui.Hub.Draggable = true
	
	while true do
		game.Players.LocalPlayer.PlayerGui.s.ReOpen.Text = "Reopen"
		wait (0.5)
	end

end
coroutine.resume(coroutine.create(SCRIPT_TXMY86_FAKESCRIPT))
function SCRIPT_MGZW80_FAKESCRIPT() -- b.textpath 
	local script = Instance.new('Script')
	script.Parent = b
	button = game.Players.LocalPlayer.PlayerGui.s.drag.f.b
	pathname = game.Players.LocalPlayer.PlayerGui.s.drag.f.t
	pathpt1 = "path = game.ReplicatedStorage. "
	args = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
		path = pathname.Text
	    button.MouseButton1Down:connect(function()
		path = pathname.Text
		print "set path"
		print  (pathpt1 .. path)
		game.ReplicatedStorage[path]:FireServer(args.Text)
		print "Remote Fired"
	end)

end
coroutine.resume(coroutine.create(SCRIPT_MGZW80_FAKESCRIPT))
function SCRIPT_DUQQ66_FAKESCRIPT() -- p.RemotePrint 
	local script = Instance.new('Script')
	script.Parent = p
	button = game.Players.LocalPlayer.PlayerGui.s.drag.f.p
	pathname = game.Players.LocalPlayer.PlayerGui.s.drag.f.t
	pathpt1 = "path = "
	path = pathname.Text
	local remotes = game.ReplicatedStorage:GetChildren()
	    button.MouseButton1Down:connect(function()
		for i = 1, #remotes do
		local child = remotes[i]
		print(child.Name)
	end
	end)

end
coroutine.resume(coroutine.create(SCRIPT_DUQQ66_FAKESCRIPT))
function SCRIPT_VBYG67_FAKESCRIPT() -- Close.CloseScript 
	local script = Instance.new('Script')
	script.Parent = Close
	button = game.Players.LocalPlayer.PlayerGui.s.drag.f.Close
	
	button.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.PlayerGui.s.drag.Visible = false
		game.Players.LocalPlayer.PlayerGui.s.ReOpen.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_VBYG67_FAKESCRIPT))
function SCRIPT_GIUS65_FAKESCRIPT() -- CloseXtra.CloseXScript 
	local script = Instance.new('Script')
	script.Parent = CloseXtra
	GUI = game.Players.LocalPlayer.PlayerGui.s.drag
	button = GUI.f.Extra.CloseXtra
	
	button.MouseButton1Down:connect(function()
		GUI.f.Extra.Visible = true
		    local willTween = GUI.f.Extra:TweenSize(
	    		UDim2.new(0, 292,0, 0),  -- endSize (required)
	    		Enum.EasingDirection.In,    -- easingDirection (default Out)
	    		Enum.EasingStyle.Sine,      -- easingStyle (default Quad)
	    	1,                          -- time (default: 1)
	    	true,                       -- should this tween override ones in-progress? (default: false)
	    	callback                    
		    )	
		GUI.f.Extra.CloseXtra.Visible = false
		GUI.f.Extra.Brute.Visible = false
		
		
	end)

end
coroutine.resume(coroutine.create(SCRIPT_GIUS65_FAKESCRIPT))
function SCRIPT_FFWE80_FAKESCRIPT() -- Brute.BruteScript 
	local script = Instance.new('Script')
	script.Parent = Brute
	button = game.Players.LocalPlayer.PlayerGui.s.drag.f.Extra.Brute
	GUI = game.Players.LocalPlayer.PlayerGui.s.drag.f.Extra
	
	button.MouseButton1Down:connect(function()
		local scan_settings = {} --settings the remote scan will run off of 
	
	
	local scr = game.Players.LocalPlayer.PlayerGui.s.drag.f.a.Text
	    
	
	
	scan_settings[1] = "RemoteEvent"
	scan_settings[3] = tostring(scr)
	
	local function write_rfound(name, index, class)
	    
	    local write_1 = "a possible serverside "..class.." was found."
	    local write_2 = "\n[name]: "..name
	    local write_3 = "\n[index]: "..index
	    local write_4 = "\n[class]: "..class
	    return tostring(write_1)..tostring(write_2)..tostring(write_3)..tostring(write_4)
	end
	
	
	for remote_index, remote_value in pairs(game:GetDescendants()) do
	    if remote_value:IsA(tostring(scan_settings[1])) then
	        print(write_rfound(remote_value.Name, remote_index, remote_value.ClassName))
	        remote_value:FireServer(tostring(scan_settings[3]))
	    elseif remote_value:IsA(tostring(scan_settings[2])) then
	        print(write_rfound(remote_value.Name, remote_index, remote_value.ClassName))
	        remote_value:InvokeServer(tostring(scan_settings[3]))
	    end
	end
	end)
	

end
coroutine.resume(coroutine.create(SCRIPT_FFWE80_FAKESCRIPT))
function SCRIPT_BUNN75_FAKESCRIPT() -- OpenExtra.OpenXScript 
	local script = Instance.new('Script')
	script.Parent = OpenExtra
	GUI = game.Players.LocalPlayer.PlayerGui.s.drag
	button = GUI.f.OpenExtra
	
	button.MouseButton1Down:connect(function()
		GUI.f.Extra.Visible = true
		    local willTween = GUI.f.Extra:TweenSize(
	    		UDim2.new(0, 291,0, 100),  -- endSize (required)
	    		Enum.EasingDirection.In,    -- easingDirection (default Out)
	    		Enum.EasingStyle.Sine,      -- easingStyle (default Quad)
	    	1,                          -- time (default: 1)
	    	true,                       -- should this tween override ones in-progress? (default: false)
	    	callback                    
		    )	
		wait(1)
		GUI.f.Extra.Visible = true
		GUI.f.Extra.CloseXtra.Visible = true
		GUI.f.Extra.Brute.Visible = true
		
	end)

end
coroutine.resume(coroutine.create(SCRIPT_BUNN75_FAKESCRIPT))
function SCRIPT_YMCC69_FAKESCRIPT() -- ReOpen.ButtonService 
	local script = Instance.new('Script')
	script.Parent = ReOpen
	button = game.Players.LocalPlayer.PlayerGui.s.ReOpen
	
	button.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.PlayerGui.s.drag.Visible = true
	end)

end
coroutine.resume(coroutine.create(SCRIPT_YMCC69_FAKESCRIPT))
function SCRIPT_EDIB69_FAKESCRIPT() -- MML.MML 
	local script = Instance.new('Script')
	script.Parent = MML
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.MML
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(1635477564).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_EDIB69_FAKESCRIPT))
function SCRIPT_WXTF85_FAKESCRIPT() -- GrabKnife.GK 
	local script = Instance.new('Script')
	script.Parent = GrabKnife
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.GrabKnife
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(1193146271).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_WXTF85_FAKESCRIPT))
function SCRIPT_BHGS80_FAKESCRIPT() -- StarGlitcher.SG 
	local script = Instance.new('Script')
	script.Parent = StarGlitcher
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.StarGlitcher
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(2500376997).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_BHGS80_FAKESCRIPT))
function SCRIPT_JJIY68_FAKESCRIPT() -- Suicide.Suicide 
	local script = Instance.new('Script')
	script.Parent = Suicide
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.Suicide
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(1243720440).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_JJIY68_FAKESCRIPT))
function SCRIPT_HMGM89_FAKESCRIPT() -- NukeGun.NG 
	local script = Instance.new('Script')
	script.Parent = NukeGun
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.NukeGun
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(2760385346).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_HMGM89_FAKESCRIPT))
function SCRIPT_QIEF90_FAKESCRIPT() -- Titan.Titan 
	local script = Instance.new('Script')
	script.Parent = Titan
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.Titan
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(2760365656).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_QIEF90_FAKESCRIPT))
function SCRIPT_TGIB78_FAKESCRIPT() -- Mustardgas.MG 
	local script = Instance.new('Script')
	script.Parent = Mustardgas
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.MG
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(1196228933).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_TGIB78_FAKESCRIPT))
function SCRIPT_VQFU87_FAKESCRIPT() -- Flamethrower.FT 
	local script = Instance.new('Script')
	script.Parent = Flamethrower
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.Flamethrower
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(1201581879).load'namehere'"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_VQFU87_FAKESCRIPT))
function SCRIPT_LIVD73_FAKESCRIPT() -- Ak.AK47 
	local script = Instance.new('Script')
	script.Parent = Ak
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.Ak
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(2533160082).load'name'"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_LIVD73_FAKESCRIPT))
function SCRIPT_GJTQ89_FAKESCRIPT() -- Treesmasher.TS 
	local script = Instance.new('Script')
	script.Parent = Treesmasher
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.a
	local button = Me.Treesmasher
	
	button.MouseButton1Down:connect(function()
		textbox.Text = "require(970596902).load('name')"
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_GJTQ89_FAKESCRIPT))
function SCRIPT_SPGK81_FAKESCRIPT() -- Close_2.Close 
	local script = Instance.new('Script')
	script.Parent = Close_2
	local Me = game.Players.LocalPlayer.PlayerGui.s.Hub.BG
	local textbox = game.Players.LocalPlayer.PlayerGui.s.drag.f.t
	local button = Me.Close
	
	button.MouseButton1Down:connect(function()
		game.Players.LocalPlayer.PlayerGui.s.Hub:Destroy()
	end)
	
	

end
coroutine.resume(coroutine.create(SCRIPT_SPGK81_FAKESCRIPT))