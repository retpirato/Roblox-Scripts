-- By illremember#3799

-- Important Loading
trueSettings = {
	commandPrefix = ";";
	hotkeys = {};
	fchotkeymode = "unfc";
}

-- Important Variables
gsPlayers = game:GetService("Players")
gsWorkspace = game:GetService("Workspace")
gsLighting = game:GetService("Lighting")
gsReplicatedStorage = game:GetService("ReplicatedStorage")
gsCoreGui = game:GetService("CoreGui")
gsTween = game:GetService("TweenService")
gsHttp = game:GetService("HttpService")

LP = gsPlayers.LocalPlayer
Mouse = LP:GetMouse()

defaultSettings = gsHttp:JSONEncode(trueSettings)
function CreateSave()
	writefile("Shattervast.txt", defaultSettings)
	wait(0.5)
	local content = readfile("Shattervast.txt")
	local trueValue = gsHttp:JSONDecode(content)
	commandPrefix = trueValue.commandPrefix
	hotkeys = trueValue.hotkeys
	fchotkeymode = trueValue.fchotkeymode
end
function fullUpdate()
	local updatedSettings = {
		commandPrefix = commandPrefix;
		hotkeys = hotkeys;
		fchotkeymode = fchotkeymode;
	}
	local fullUPDATED = gsHttp:JSONEncode(updatedSettings)
	wait(0.2)
	writefile("Shattervast.txt", fullUPDATED)
end
if writefile ~= nil then
	function builder()
		local TESTsave = readfile("Shattervast.txt")
		if TESTsave == nil then
			return false
		else
			return true
		end
	end
	local success, message = pcall(builder)
	if success == true then
		function reader()
			local content = readfile("Shattervast.txt")
			local trueValue = gsHttp:JSONDecode(content)
			commandPrefix = trueValue.commandPrefix
			hotkeys = trueValue.hotkeys
			if trueValue.fchotkeymode == nil then
				fchotkeymode = "unfc"
				fullUpdate()
			else
				fchotkeymode = trueValue.fchotkeymode
			end
		end
		reader()
	elseif success == false then
		CreateSave()
	end
else
	commandPrefix = ";"
	hotkeys = {}
	fchotkeymode = "unfc"
end

CurrentGravity = gsWorkspace.Gravity
CurrentWalkspeed = LP.Character.Humanoid.WalkSpeed
CurrentJumppower = LP.Character.Humanoid.JumpPower
CurrentHipheight = LP.Character.Humanoid.HipHeight
CurrentNormal = LP.DevCameraOcclusionMode

gsWorkspace.Camera.Changed:Connect(function()
	gsWorkspace.Camera.FieldOfView = 70
end)

-- Important Functions
function view(plr)
	if plr.Character.Humanoid ~= nil then
		gsWorkspace.CurrentCamera.CameraSubject = plr.Character.Humanoid
	else
		gsWorkspace.CurrentCamera.CameraSubject = plr.Character.Head
	end
end
function unlockWS()
	for i,part in pairs(gsWorkspace:GetDescendants()) do
		if part:IsA("Part") then
			part.Locked = false
		end
	end
end
function lockWS()
	for i,part in pairs(gsWorkspace:GetDescendants()) do
		if part:IsA("Part") then
			part.Locked = true
		end
	end
end
function FEGodmode()
	local changeview = false
	if gsWorkspace.CurrentCamera.CameraSubject == LP.Character.Humanoid or gsWorkspace.CurrentCamera.CameraSubject == LP.Character then
		changeview = true
	end
	LP.Character.Humanoid.Name = 1
	local l = LP.Character["1"]:Clone()
	l.Parent = LP.Character
	l.Name = "Humanoid"
	wait(0.1)
	LP.Character["1"]:Destroy()
	if changeview then
		game:GetService("Workspace").CurrentCamera.CameraSubject = LP.Character
	end
	LP.Character.Animate.Disabled = true
	wait(0.1)
	LP.Character.Animate.Disabled = false
	LP.Character.Humanoid.DisplayDistanceType = "None"
end
function RocketPropulsion(maxthrust,maxspeed,thrustp,targetplr,name)
	local l = Instance.new("RocketPropulsion")
	l.Parent = LP.Character.HumanoidRootPart
	l.CartoonFactor = 1
	l.MaxThrust = maxthrust
	l.MaxSpeed = maxspeed
	l.ThrustP = thrustp
	l.Name = name
	l.Target = targetplr.Character.HumanoidRootPart
	l:Fire()
end
function createIntro(style, msg, length)
	if gsCoreGui:FindFirstChild("Notification") then
		gsCoreGui:FindFirstChild("Notification"):Destroy()
	end
	local info = "http://www.roblox.com/asset/?id=1281284684"
	local warning = "http://www.roblox.com/asset/?id=1281286925"
	if style == "info" then
		style = info
	elseif style == "warning" then
		style = warning
	end
	local Notification = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local IMAGE = Instance.new("ImageLabel")
	Notification.Name = "Notification"
	Notification.Parent = gsCoreGui
	Frame.Parent = Notification
	Frame.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
	Frame.BackgroundTransparency = 0.20000000298023
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, -0.2, 0)
	Frame.Size = UDim2.new(1, 0, 0, 30)
	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSansLight
	TextLabel.Text = msg
	TextLabel.TextColor3 = Color3.new(0.905882, 0.905882, 0.905882)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14
	TextLabel.TextWrapped = true
	IMAGE.Parent = Frame
	IMAGE.BackgroundTransparency = 1
	IMAGE.Size = UDim2.new(0, 50, 0, 50)
	IMAGE.Position = UDim2.new(0.1, 0, 0, 0)
	IMAGE.Image = style
	local Intro = Instance.new("ScreenGui")
	local Frame2 = Instance.new("Frame")
	local IMAGE2 = Instance.new("ImageLabel")
	Intro.Name = "Intro"
	Intro.Parent = gsCoreGui
	Frame2.Parent = Intro
	Frame2.BackgroundTransparency = 1
	Frame2.BorderSizePixel = 0
	Frame2.Position = UDim2.new(0, 0, -0.2, 0)
	Frame2.Size = UDim2.new(1, 0, 0, 30)
	IMAGE2.Parent = Frame
	IMAGE2.BackgroundTransparency = 1
	IMAGE2.AnchorPoint = Vector2.new(0.5, 0)
	IMAGE2.Size = UDim2.new(0, 240, 0, 120)
	IMAGE2.Position = UDim2.new(0.5, 0, 0, 0)
	IMAGE2.Image = "http://www.roblox.com/asset/?id=1795472522"
	Frame2:TweenPosition(UDim2.new(0, 0, 0, 200), "Out", "Quad", 1.5)
	Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 1.5)
	wait(length)
	pcall(function()
		Frame:TweenPosition(UDim2.new(0, 0, -1.5, 0), "Out", "Quad", 3)
		Frame2:TweenPosition(UDim2.new(0, 0, -1.5, 0), "Out", "Quad", 3)
	end)
	wait(3.01)
	Intro:Destroy()
	Notification:Destroy()
end
function Notification(style, msg, length)
	if gsCoreGui:FindFirstChild("Notification") then
		gsCoreGui:FindFirstChild("Notification"):Destroy()
	end
	local info = "http://www.roblox.com/asset/?id=1281284684"
	local warning = "http://www.roblox.com/asset/?id=1281286925"
	if style == "info" then
		style = info
	elseif style == "warning" then
		style = warning
	end
	local Notification = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local IMAGE = Instance.new("ImageLabel")
	Notification.Name = "Notification"
	Notification.Parent = gsCoreGui
	Frame.Parent = Notification
	Frame.BackgroundColor3 = Color3.new(0.164706, 0.164706, 0.164706)
	Frame.BackgroundTransparency = 0.20000000298023
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0, 0, -0.2, 0)
	Frame.Size = UDim2.new(1, 0, 0, 30)
	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSansLight
	TextLabel.Text = msg
	TextLabel.TextColor3 = Color3.new(0.905882, 0.905882, 0.905882)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14
	TextLabel.TextWrapped = true
	IMAGE.Parent = Frame
	IMAGE.BackgroundTransparency = 1
	IMAGE.Size = UDim2.new(0, 50, 0, 50)
	IMAGE.Position = UDim2.new(0.1, 0, 0, 0)
	IMAGE.Image = style
	Frame:TweenPosition(UDim2.new(0, 0, 0, 0), "Out", "Quad", 1.5)
	wait(length)
	pcall(function()
		Frame:TweenPosition(UDim2.new(0, 0, -1.5, 0), "Out", "Quad", 3)
	end)
	wait(3.01)
	Notification:Destroy()
end
function hasTools()
	local a = false
	local b = false
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Tool") then
			if v ~= nil then
				a = true
			else
				a = false
			end
		end
	end
	for i,k in pairs(LP.Backpack:GetDescendants()) do
		if k:IsA("Tool") then
			if k ~= nil then
				b = true
			else
				b = false
			end
		end
	end
	return a or b
end
Compliments = {" is the coolest person in this server!", ", I really like your avatar!", ", I really want to be your friend!", " is truly amazing. Truly!", " is incredible!", ", you are my favourite here!!", ", I am complimenting you right now at this very moment.", " you are really awesome", " when will you be my friend!?", " is such a great person", " is a fantastic person!"}
function complimentplr(player)
	local plrName = player.Name
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(plrName..Compliments[math.random(1, #Compliments)], "All")
end
function createINFO(player)
	local InfoGUIv2 = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local Frame_2 = Instance.new("Frame")
	local infoguiCLOSE = Instance.new("TextButton")
	local Frame_3 = Instance.new("Frame")
	local playerName = Instance.new("TextLabel")
	local Frame_4 = Instance.new("Frame")
	local playerAvatar = Instance.new("ImageLabel")
	local playerAccAge = Instance.new("TextLabel")
	local playerId = Instance.new("TextLabel")
	local playerOs = Instance.new("TextLabel")
	local playerMembership = Instance.new("TextLabel")
	local Frame_5 = Instance.new("Frame")
	local Frame_6 = Instance.new("Frame")
	InfoGUIv2.Name = "InfoGUIv2"
	InfoGUIv2.Parent = gsCoreGui
	Frame.Parent = InfoGUIv2
	Frame.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame.BackgroundTransparency = 1
	Frame.BorderColor3 = Color3.new(0, 0, 0)
	Frame.ClipsDescendants = true
	Frame.Position = UDim2.new(0.45, 0, 1, 0)
	Frame.Size = UDim2.new(0, 265, 0, 302)
	Frame.ZIndex = -1
	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.new(0.290196, 0, 0.447059)
	Frame_2.BorderSizePixel = 0
	Frame_2.Size = UDim2.new(0, 260, 0, 20)
	infoguiCLOSE.Name = "infoguiCLOSE"
	infoguiCLOSE.Parent = Frame_2
	infoguiCLOSE.BackgroundColor3 = Color3.new(1, 1, 1)
	infoguiCLOSE.BackgroundTransparency = 1
	infoguiCLOSE.BorderSizePixel = 0
	infoguiCLOSE.Position = UDim2.new(0, 230, 0, 0)
	infoguiCLOSE.Size = UDim2.new(0, 30, 0, 20)
	infoguiCLOSE.Font = Enum.Font.SourceSansBold
	infoguiCLOSE.Text = "X"
	infoguiCLOSE.TextColor3 = Color3.new(0.992157, 0.992157, 0.992157)
	infoguiCLOSE.TextSize = 20
	Frame_3.Parent = Frame
	Frame_3.BackgroundColor3 = Color3.new(0.482353, 0.121569, 0.635294)
	Frame_3.BorderSizePixel = 0
	Frame_3.Position = UDim2.new(0, 0, 0, 20)
	Frame_3.Size = UDim2.new(0, 260, 0, 40)
	playerName.Name = "playerName"
	playerName.Parent = Frame_3
	playerName.BackgroundColor3 = Color3.new(1, 1, 1)
	playerName.BackgroundTransparency = 1
	playerName.Position = UDim2.new(0, 10, 0, 5)
	playerName.Size = UDim2.new(0, 240, 0, 30)
	playerName.Font = Enum.Font.SourceSansLight
	playerName.Text = player.Name
	playerName.TextColor3 = Color3.new(0.988235, 0.988235, 0.988235)
	playerName.TextScaled = true
	playerName.TextSize = 14
	playerName.TextWrapped = true
	Frame_4.Parent = Frame
	Frame_4.BackgroundColor3 = Color3.new(0.956863, 0.956863, 0.956863)
	Frame_4.BorderSizePixel = 0
	Frame_4.Position = UDim2.new(0, 0, 0, 60)
	Frame_4.Size = UDim2.new(0, 260, 0, 237)
	playerAvatar.Name = "playerAvatar"
	playerAvatar.Parent = Frame_4
	playerAvatar.BackgroundColor3 = Color3.new(1, 1, 1)
	playerAvatar.Position = UDim2.new(0, 85, 0, 10)
	playerAvatar.Size = UDim2.new(0, 85, 0, 85)
	playerAvatar.Image = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username="..player.Name
	playerAccAge.Name = "playerAccAge"
	playerAccAge.Parent = Frame_4
	playerAccAge.BackgroundColor3 = Color3.new(1, 1, 1)
	playerAccAge.BackgroundTransparency = 1
	playerAccAge.Position = UDim2.new(0, 5, 0, 101)
	playerAccAge.Size = UDim2.new(0, 250, 0, 30)
	playerAccAge.Font = Enum.Font.SourceSans
	playerAccAge.Text = "Account Age: "..player.AccountAge
	playerAccAge.TextColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	playerAccAge.TextScaled = true
	playerAccAge.TextSize = 14
	playerAccAge.TextWrapped = true
	playerId.Name = "playerId"
	playerId.Parent = Frame_4
	playerId.BackgroundColor3 = Color3.new(1, 1, 1)
	playerId.BackgroundTransparency = 1
	playerId.Position = UDim2.new(0, 5, 0, 131)
	playerId.Size = UDim2.new(0, 250, 0, 30)
	playerId.Font = Enum.Font.SourceSans
	playerId.Text = "Account ID: "..player.UserId
	playerId.TextColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	playerId.TextScaled = true
	playerId.TextSize = 14
	playerId.TextWrapped = true
	playerOs.Name = "playerOs"
	playerOs.Parent = Frame_4
	playerOs.BackgroundColor3 = Color3.new(1, 1, 1)
	playerOs.BackgroundTransparency = 1
	playerOs.Position = UDim2.new(0, 5, 0, 161)
	playerOs.Size = UDim2.new(0, 250, 0, 30)
	playerOs.Font = Enum.Font.SourceSansLight
	playerOs.Text = "Player OS: "..player.OsPlatform
	playerOs.TextColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	playerOs.TextScaled = true
	playerOs.TextSize = 14
	playerOs.TextWrapped = true
	playerMembership.Name = "playerMembership"
	playerMembership.Parent = Frame_4
	playerMembership.BackgroundColor3 = Color3.new(1, 1, 1)
	playerMembership.BackgroundTransparency = 1
	playerMembership.Position = UDim2.new(0, 5, 0, 191)
	playerMembership.Size = UDim2.new(0, 250, 0, 30)
	playerMembership.Font = Enum.Font.SourceSansLight
	if player.MembershipType == Enum.MembershipType.None then
		playerMembership.Text = "No builder's club."
	elseif player.MembershipType == Enum.MembershipType.BuildersClub then
		playerMembership.Text = "Builder's club!"
	elseif player.MembershipType == Enum.MembershipType.TurboBuildersClub then
		playerMembership.Text = "Turbo Builder's club!"
	elseif player.MembershipType == Enum.MembershipType.OutrageousBuildersClub then
		playerMembership.Text = "Outrageous Builder's club!"
	end
	playerMembership.TextColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
	playerMembership.TextScaled = true
	playerMembership.TextSize = 14
	playerMembership.TextWrapped = true
	Frame_5.Parent = Frame
	Frame_5.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame_5.BackgroundTransparency = 0.69999998807907
	Frame_5.BorderColor3 = Color3.new(0, 0, 0)
	Frame_5.BorderSizePixel = 0
	Frame_5.ClipsDescendants = true
	Frame_5.Position = UDim2.new(0, 10, 0, 10)
	Frame_5.Selectable = true
	Frame_5.Size = UDim2.new(0, 255, 0, 292)
	Frame_5.ZIndex = -1
	Frame_6.Parent = Frame
	Frame_6.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame_6.BackgroundTransparency = 0.69999998807907
	Frame_6.BorderColor3 = Color3.new(0, 0, 0)
	Frame_6.BorderSizePixel = 0
	Frame_6.ClipsDescendants = true
	Frame_6.Position = UDim2.new(0, 8, 0, 8)
	Frame_6.Selectable = true
	Frame_6.Size = UDim2.new(0, 255, 0, 292)
	Frame_6.ZIndex = -1
	local closeGet = {}
	closeGet.Size = UDim2.new(0, 0, 0, 0)
	local openGet = {}
	openGet.Position = UDim2.new(0.45, 0, 0.45, 0)
	local closeFunction = gsTween:Create(Frame, TweenInfo.new(2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), closeGet)
	local openFunction = gsTween:Create(Frame, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), openGet)
	infoguiCLOSE.MouseButton1Click:Connect(function()
		closeFunction:Play()
		Frame:TweenPosition((Frame.Position + UDim2.new(0, 265 / 2, 0, 302 / 2)), "InOut", "Sine", 2)
		wait(2.01)
		Frame:Destroy()
	end)
	openFunction:Play()
	local UserInputService = game:GetService("UserInputService")
	local dragging
	local dragInput
	local dragStart
	local startPos
	local function update(input)
		local delta = input.Position - dragStart
		local dragTime = 0.055
		local SmoothDrag = {}
		SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		local dragSmoothFunction = gsTween:Create(Frame, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
		dragSmoothFunction:Play()
	end
	Frame.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = Frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	Frame.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging and Frame.Size == UDim2.new(0, 265, 0, 302) then
			update(input)
		end
	end)
end
function clientSided()
	Notification("info", "This command is for the client (you) only, no one else can see!", 6)
end
searchCmds={"1 print [msg] - Prints a message to the developer console","2 warn [msg] - Warns a message to the developer console","3 sit - Makes you sit","4 god - Activates FE Godmode (breaks tools)","5 view [plr] - Changes your camera subject to another player","6 unview - Changes your camera back to your player","7 gravity [num] - Changes workspace gravity to [num]","8 ungravity - Reverts workspace gravity to game's default","9 goto [plr] - Teleports you to a player","10 fecheck - Checks whether the game is FE or not","11 lockws - Locks the whole workspace","12 unlockws - Unlocks the whole workspace","13 noclip - Allows you to walk through walls and other objects","14 clip - Stops noclip, can collide","15 follow [plr] / [num] - Makes you follow a player constantly, optional [num] for how far away to follow","16 unfollow - Stops you from following","17 fling [plr] / [pow] - Uses your character to fling a player, optional [pow] for how much power to put into the fling","18 unfling - Stops you from flinging","19 trail [plr] / [num] - Makes you trail (walk infront) of a player constantly, optional [num] for how far away to trail","20 untrail - Stops you from trailing","21 annoy [plr] - Loop teleports you to the player","22 unannoy - Stops loop teleporting you","23 reset - Resets your character","24 grespawn - Respawns your character, best for use after FE godmode","25 respawn - Respawns your character, best to use if grespawn fails to work","26 speed // ws [num] - Changes your walkspeed (speed or ws) to [num]","27 jumppower // jp [num] - Changes your jumppower (jumppower or jp) to [num]","28 hipheight // hh [num] - Changes your hipheight (hipheight or hh) to [num]","29 default - Changes your walkspeed, jumppower and hipheight back to normal","30 credits - Displays admin credits (by illremember#3799)","31 attach [plr] - Attaches you to a player, tool required","32 fly / [speed] - Enables fly, optional [speed] for how fast to fly","33 unfly - Disables fly","34 kill [plr] - Kills a player, tool required","35 bring [plr] - Brings a player, tool required","36 naked - Displays avatar body colours","37 nolimbs - Deletes all your arms and legs","38 noarms - Deletes both your arms","39 nolegs - Deletes both your legs","40 antikick [on/off] - Blocks all remotes for antikick when on, disables when off","41 blockremote [remote] / [service] - Blocks a remote from firing, optional [service] for where the remote is located","42 remotespy [on/off] - Prints all remotes to developer console when on when fired, stops printing when off","43 bang [plr] / [speed] - Bangs a player, optional [speed] to set animation adjust speed","44 unbang - Stops bang player","45 spam [msg] - Spams [msg] in chat","46 spamdelay [num] - Sets how long to wait in between spamming","47 unspam - Stops spamming","48 info [plr] - Creates GUI with information about player account, shows Account age, membership and account ID","49 age [plr] - Chats account age of player","50 invisible - Enables FE invisibility, by Timeless","51 walk [plr] - Begins to make you loop walk towards player","52 glitch [plr] / [num] - Glitches a player, tool required, optional [num] for strength of glitch","53 tp [plr] [plr] - Teleports a player to another player, tool required","54 givetool [plr] / [tool] - Gives your current equipped tool to player, optional [tool] to pick a tool by name from your inventory","55 givealltools [plr] - Gives all tools currently equipped and in inventory to player","56 blockhats - Removes mesh of all accessories","57 blocktool - Removes mesh of currently equipped tool","58 orbit [plr] - Begins to make you orbit around a player","59 unorbit - Stops you orbiting a player","60 pos - Shows your current position","61 savepos - Saves your current position","62 loadpos - Loads your current position from savepos","63 tppos [num] [num] [num] - Teleports you to position [num], [num], [num]","64 pmspam [plr] [msg] - Makes you spam a player's pm with [msg]","65 unpmspam - Stops spamming a player's pm","66 wsvis [num] - Changes all parts in workspace to [num] transparency","67 bringobj [obj] / [num] - Brings an object in the workspace to you, optional [num] for how far away to bring object","68 cbring [plr] - Brings a player to you constantly on client","69 uncbring - Stops bringing a player to you on client","70 cfreeze [plr] - Freezes a player on your client","71 uncfreeze / [plr] - Unfreezes a player on your cleint","72 unattach - Unattaches you from a player","73 reach [on/off] / [num] - Activates/Deactivates reach for currently equipped tool, optional [num] for how long the reach should be","74 droptool / [tool] - Drops a tool into the workspace, optional [tool] command for which tool to drop","75 drophats - Drops all your accessories into the workspace","76 hidecmdbar - Hides the command bar","77 showcmdbar - Shows the command bar","78 prefix [key] - Changes your prefix to [key] must be 1 character","79 removeinvis - Removes all invisible parts in workspace","80 removefog - Removes fog in lighting","81 animation [id/gui] / [speed] - Makes you play an animation with [id], optional [speed] for adjusting animation speed OR [gui] to open Energize animation GUI","82 btools - Gives you btools for deleting, copying and dragging (client side)","83 esp [plr] - Enables an esp for that player, credits to Infinite Yield","84 unesp / [plr] - Disables all esp, optional [plr] for disabling esp just for that player","85 dice - Chats you rolling a dice for 1, 2, 3, 4, 5 or 6","86 random [min] [max] - Chats you picking a random number between [min] and [max]","87 closegame - Shutsdown/closes your game","88 savetool / [tool] - Saves a tool to your player equipped, optional [tool] for which tool to save in your inventory","89 loadtool / [tool] - Loads a tool from your player, optional [tool] for which tool to load by name","90 savealltool - Saves all tools in your character/inventory","91 loadalltool - Loads all tools in your player saved tools","92 clicktp / [key] - Enables click teleport, optional [key] to set a key instead of clicking","93 clickdel / [key] - Enables click delete part, optional [key] to set a key instead of clicking","94 unclicktp - Disables clicktp","95 unclickdel - Disables clickdel","96 shutdown - Attempts a server shutdown","97 chatlogs - Opens up a chat log gui with options to print chat to developer console","98 stopadmin - Disables currently running admin completely","99 freecam / [speed] - Enables freecam (like flying but not in character), optional [speed] for how fast the freecam should go","100 unfreecam // unfc - Disables freecam","101 fctp [plr] - Teleports your freecam to player","102 gotofc - Teleports you to current freecam position","103 cmds - Opens up this GUI with commands","104 fullcredits - Shows full individual credits for all help with the admin","105 hotkey [key] [cmd] - Creates a hotkey that executes [cmd] when [key] is pressed","106 removehotkey [key] - Removes a hotkey with [key]","107 removeallhotkey - Removes all current hotkeys for commands","108 printhotkeys - Prints all current existing hotkeys","109 os [plr] - Chats the current OS of a player","110 spin [plr] - Makes you spin with a player, tool required","111 unspin - Stops you spinning a player/teleporting to a player","112 explorer - Loads DEX explorer","113 maxzoom [num] - Changes your maxzoom to number","114 stare [plr] - Makes you stare at another player","115 unstare [plr] - Makes you stop staring at player","116 tempgod - Enables temporary FE godmode, does not work on all games, does not break tools","117 void [plr] - Teleports you and a player to the void, requires a tool","118 freefall [plr] - Makes you and a player freefall to the ground","119 version - Shows current admin's version","120 shiftlockon - Enables shift lock if not enabled by game developer","121 copychat [plr] - Makes you copy the chat player says, use uncopychat to stop copying chat","122 newattach [plr] - Does not FE Godmode you, requires 2 tools, attaches you to player","123 newkill [plr] - Does not FE Godmode you, requires 2 tools, kills player","124 newbring [plr] - Does not FE Godmode you, requires 2 tools, brings player","125 spawn [ws/jp/hh/god] [num] - Sets your walkspeed/jumppower/hipheight to number whenever you respawn, or makes you FE Godded whenever you respawn","126 unspawn - Stops you spawning with stats set by "..commandPrefix.."spawn","127 autosavetool [on/off] - Auto saves your tools when you reset","128 beginbot / [mode] - Makes you a bot for other players, type just "..commandPrefix.."beginbot to print available modes","129 endbot / [mode] - Ends "..commandPrefix.."beginbot, optional [mode] to disable one mode only","130 stopsit - Disables your ability to sit","131 gosit - Enables your ability to sit","132 spawnpoint - Sets your spawnpoint for whenever you reset to where you are","133 nospawn - Removes your spawnpoint","134 chaterror - Creates a chat error, works best first time","135 bypass [on/off] - Changes certain commands like "..commandPrefix.."fly so they are not detected by most anti-exploits", "136 fixcam - Fixes your camera in case it breaks", "137 gotoobj [obj] - Teleports you to a part in the workspace, make sure you put the name properly!", "138 breakcam - Makes it so your camera can go through parts, fixed with "..commandPrefix.."fixcam", "139 inviscam - Makes it so your camera goes through parts and makes them transparent so your character is always visible, fixed with "..commandPrefix.."fixcam", "140 printobj / [key] - Prints the object's path clicked to developer console, optional [key] for key pressed instead of click", "141 unprintobj - Stops printobj from running", "142 hotkeyfc [goto/unfc] - If freecam is set as a hotkey, chooses whether to use unfreecam or gotofc when disabling through a hotkey", "143 carpet [plr] - Makes you a carpet for a player", "144 uncarpet - Stops carpet", "145 brickcreate [num] / [pos] [pos] [pos] - Creates [num] amount of bricks from accessories, wont work in all games, optional [pos] for position to create bricks", "146 uncopychat - Stops copying chat", "147 forward / [speed] - Makes you automatically move forward default speed is 1", "148 unforward - Stops you moving automatically forward from forward", "149 id [plr] - Makes you chat the user ID of the player", "150 spinhats / [pow] - Makes all your accessories begin to spin around! Credit to xFunnieuss.", "151 unspinhats - Stops spinhats from spinning accessories", "152 headless - Makes you headless, but cannot control your character after, use grespawn to reset", "153 savemap - Saves the current workspace/map", "154 loadmap - Loads map saved by savemap", "155 creatorid - Changes your user ID to the game creator's user ID", "156 gameid - Shows the game's ID", "157 delobj [obj] - Allows you to delete an object in the workspace by name", "158 glide [plr] / [speed] - Makes you glide towards a player, optional [speed] for the speed of gliding", "159 stutter [on/off] - Makes your character begin stuttering as you move", "160 platform - Creates a platform on your client that you can stand on, deletes in 20 seconds", "161 servertime - Gets the server time", "162 ride [plr] - Makes you ride a player's head", "163 unride [plr] - Makes you stop riding a player's head", "164 cmute [plr] - Client mutes a player, useful for muting spammers", "165 uncmute - Unmutes a player that has been cmuted", "166 hat [plr] - Makes you carpet a player, but on their head", "167 unhat - Stops hat from running", "168 chat [msg] - Makes you chat a string, useful for hotkeys"}
CMDS={"print [msg]","warn [msg]","sit","god","view [plr]","unview","gravity [num]","ungravity","goto [plr]","fecheck","lockws","unlockws","noclip","clip","follow [plr] / [num]","unfollow","fling [plr] / [pow]","unfling","trail [plr] / [num]","untrail","annoy [plr]","unannoy","reset","grespawn","respawn","speed // ws [num]","jumppower // jp [num]","hipheight // hh [num]","default","credits","attach [plr]","fly / [speed]","unfly","kill [plr]","bring [plr]","naked","nolimbs","noarms","nolegs","antikick [on/off]","blockremote [remote] / [service]","remotespy [on/off]","bang [plr] / [speed]","unbang","spam [msg]","spamdelay [num]","unspam","info [plr]","age [plr]","invisible","walk [plr]","glitch [plr] / [num]","tp [plr] [plr]","givetool [plr] / [tool]","givealltools [plr]","blockhats","blocktool","orbit [plr]","unorbit","pos","savepos","loadpos","tppos [num] [num] [num]","pmspam [plr] [msg]","unpmspam","wsvis [num]","bringobj [obj] / [num]","cbring [plr] / [num]","uncbring","cfreeze [plr]","uncfreeze / [plr]","unattach","reach [on/off] / [num]","droptool / [tool]","drophats","hidecmdbar","showcmdbar","prefix [key]","removeinvis","removefog","animation [id/gui] / [speed]","btools","esp [plr]","unesp / [plr]","dice","random [min] [max]","closegame","savetool / [tool]","loadtool / [tool]","savealltool","loadalltool","clicktp / [key]","clickdel / [key]","unclicktp","unclickdel","oof","chatlogs","stopadmin","freecam / [speed] // fc / [speed]","unfreecam // unfc","gotofc","cmds","fullcredits","hotkey [key] [cmd]","removehotkey [key]","removeallhotkey","printhotkeys","os [plr]","spin [plr]","unspin","fctp [plr]","explorer","maxzoom [num]","stare [plr]","unstare [plr]","tempgod","void [plr]","freefall [plr]","version","shiftlockon","copychat [plr]","newattach [plr]","newkill [plr]","newbring [plr]","spawn [ws/jp/hh/god] [num]","unspawn","autosavetool [on/off]","beginbot / [mode]","endbot / [mode]","stopsit","gosit","spawnpoint","nospawn","chaterror", "bypass [on/off]", "fixcam", "gotoobj [obj]", "breakcam", "inviscam", "printobj / [key]", "unprintobj", "hotkeyfc [goto/unfc]", "carpet [plr]", "uncarpet", "brickcreate [num] / [pos] [pos] [pos]", "uncopychat", "forward / [speed]", "unforward", "id [plr]", "spinhats / [pow]", "unspinhats", "headless", "savemap", "loadmap", "creatorid", "gameid", "delobj [obj]", "glide [plr] / [speed]", "stutter [on/off]", "platform", "servertime", "ride [plr]", "unride", "cmute [plr]", "uncmute", "hat [plr]", "unhat", "chat [msg]"} -- 168
local CMDS_GUI_V2 = Instance.new("ScreenGui")
local CMDSmain = Instance.new("Frame")
local CMDSframemain = Instance.new("Frame")
local cmdgui_topframe = Instance.new("Frame")
local closecmdsgui = Instance.new("TextButton")
local cmdgui_midframe = Instance.new("Frame")
local cmdsgui_SearchFunction = Instance.new("TextBox")
local cmdsgui_searchDETAILFRAME = Instance.new("Frame")
local cmdsgui_searchDETAILTEXT = Instance.new("TextLabel")
local ListofCMDS = Instance.new("ScrollingFrame")
local cmdTutorial = Instance.new("TextLabel")
local cmdTutorial_2 = Instance.new("TextLabel")
local cmdTutorial_3 = Instance.new("TextLabel")
local CMDS_Shadow = Instance.new("Frame")
local CMDS_Shadow2 = Instance.new("Frame")
CMDS_GUI_V2.Name = "CMDS_GUI_V2"
CMDS_GUI_V2.Parent = gsCoreGui
CMDSmain.Name = "CMDSmain"
CMDSmain.Parent = CMDS_GUI_V2
CMDSmain.BackgroundColor3 = Color3.new(1, 1, 1)
CMDSmain.BackgroundTransparency = 1
CMDSmain.Position = UDim2.new(0, 695, 0, 297)
CMDSmain.Size = UDim2.new(0, 440, 0, 367)
CMDSmain.AnchorPoint = Vector2.new(0.5, 0.5)
CMDSmain.Visible = false
CMDSmain.ClipsDescendants = true
CMDSframemain.Name = "CMDSframemain"
CMDSframemain.Parent = CMDSmain
CMDSframemain.BackgroundColor3 = Color3.new(0.309804, 0.309804, 0.309804)
CMDSframemain.BorderSizePixel = 0
CMDSframemain.Size = UDim2.new(0, 440, 0, 367)
cmdgui_topframe.Name = "cmdgui_topframe"
cmdgui_topframe.Parent = CMDSframemain
cmdgui_topframe.BackgroundColor3 = Color3.new(0.0666667, 0.0666667, 0.0666667)
cmdgui_topframe.BorderSizePixel = 0
cmdgui_topframe.Size = UDim2.new(0, 440, 0, 15)
closecmdsgui.Name = "closecmdsgui"
closecmdsgui.Parent = cmdgui_topframe
closecmdsgui.BackgroundColor3 = Color3.new(1, 1, 1)
closecmdsgui.BackgroundTransparency = 1
closecmdsgui.Position = UDim2.new(0, 410, 0, 0)
closecmdsgui.Size = UDim2.new(0, 30, 0, 15)
closecmdsgui.Font = Enum.Font.SourceSansBold
closecmdsgui.Text = "X"
closecmdsgui.TextColor3 = Color3.new(0.968628, 0.968628, 0.968628)
closecmdsgui.TextSize = 20
cmdgui_midframe.Name = "cmdgui_midframe"
cmdgui_midframe.Parent = CMDSframemain
cmdgui_midframe.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
cmdgui_midframe.BorderSizePixel = 0
cmdgui_midframe.Position = UDim2.new(0, 0, 0, 15)
cmdgui_midframe.Size = UDim2.new(0, 440, 0, 45)
cmdsgui_SearchFunction.Name = "cmdsgui_SearchFunction"
cmdsgui_SearchFunction.Parent = cmdgui_midframe
cmdsgui_SearchFunction.BackgroundColor3 = Color3.new(1, 1, 1)
cmdsgui_SearchFunction.BackgroundTransparency = 1
cmdsgui_SearchFunction.BorderSizePixel = 0
cmdsgui_SearchFunction.Position = UDim2.new(0, 120, 0, 10)
cmdsgui_SearchFunction.Size = UDim2.new(0, 200, 0, 25)
cmdsgui_SearchFunction.Font = Enum.Font.SourceSans
cmdsgui_SearchFunction.Text = ""
cmdsgui_SearchFunction.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
cmdsgui_SearchFunction.TextScaled = true
cmdsgui_SearchFunction.TextSize = 14
cmdsgui_SearchFunction.TextWrapped = true
cmdsgui_searchDETAILFRAME.Name = "cmdsgui_searchDETAILFRAME"
cmdsgui_searchDETAILFRAME.Parent = cmdsgui_SearchFunction
cmdsgui_searchDETAILFRAME.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
cmdsgui_searchDETAILFRAME.BorderSizePixel = 0
cmdsgui_searchDETAILFRAME.Position = UDim2.new(0, 0, 0, 25)
cmdsgui_searchDETAILFRAME.Size = UDim2.new(0, 200, 0, 2)
cmdsgui_searchDETAILTEXT.Name = "cmdsgui_searchDETAILTEXT"
cmdsgui_searchDETAILTEXT.Parent = cmdsgui_SearchFunction
cmdsgui_searchDETAILTEXT.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
cmdsgui_searchDETAILTEXT.BackgroundTransparency = 1
cmdsgui_searchDETAILTEXT.Size = UDim2.new(0, 200, 0, 25)
cmdsgui_searchDETAILTEXT.Font = Enum.Font.SourceSansLight
cmdsgui_searchDETAILTEXT.Text = "Search"
cmdsgui_searchDETAILTEXT.TextColor3 = Color3.fromRGB(240, 240, 240)
cmdsgui_searchDETAILTEXT.TextSize = 30
ListofCMDS.Name = "ListofCMDS"
ListofCMDS.Parent = CMDSframemain
ListofCMDS.BackgroundColor3 = Color3.new(0.309804, 0.309804, 0.309804)
ListofCMDS.BorderSizePixel = 0
ListofCMDS.Position = UDim2.new(0, 0, 0, 60)
ListofCMDS.Size = UDim2.new(0, 440, 0, 307)
ListofCMDS.CanvasSize = UDim2.new(5, 0, 8, 0)
ListofCMDS.ScrollingDirection = Enum.ScrollingDirection.XY
cmdTutorial.Name = "cmdTutorial"
cmdTutorial.Parent = ListofCMDS
cmdTutorial.BackgroundColor3 = Color3.new(1, 1, 1)
cmdTutorial.BackgroundTransparency = 1
cmdTutorial.BorderSizePixel = 0
cmdTutorial.Position = UDim2.new(0, 5, 0, 5)
cmdTutorial.Size = UDim2.new(0, 420, 0, 20)
cmdTutorial.Font = Enum.Font.SourceSansBold
cmdTutorial.Text = "\"/\" means OPTIONAL argument after"
cmdTutorial.TextColor3 = Color3.new(0.956863, 0.956863, 0.956863)
cmdTutorial.TextScaled = true
cmdTutorial.TextSize = 14
cmdTutorial.TextWrapped = true
cmdTutorial.TextXAlignment = Enum.TextXAlignment.Left
cmdTutorial_2.Name = "cmdTutorial"
cmdTutorial_2.Parent = ListofCMDS
cmdTutorial_2.BackgroundColor3 = Color3.new(1, 1, 1)
cmdTutorial_2.BackgroundTransparency = 1
cmdTutorial_2.BorderSizePixel = 0
cmdTutorial_2.Position = UDim2.new(0, 5, 0, 25)
cmdTutorial_2.Size = UDim2.new(0, 420, 0, 20)
cmdTutorial_2.Font = Enum.Font.SourceSansBold
cmdTutorial_2.Text = "\"//\" means another way of running command"
cmdTutorial_2.TextColor3 = Color3.new(0.956863, 0.956863, 0.956863)
cmdTutorial_2.TextScaled = true
cmdTutorial_2.TextSize = 14
cmdTutorial_2.TextWrapped = true
cmdTutorial_2.TextXAlignment = Enum.TextXAlignment.Left
cmdTutorial_3.Name = "cmdTutorial"
cmdTutorial_3.Parent = ListofCMDS
cmdTutorial_3.BackgroundColor3 = Color3.new(1, 1, 1)
cmdTutorial_3.BackgroundTransparency = 1
cmdTutorial_3.BorderSizePixel = 0
cmdTutorial_3.Position = UDim2.new(0, 5, 0, 45)
cmdTutorial_3.Size = UDim2.new(0, 420, 0, 20)
cmdTutorial_3.Font = Enum.Font.SourceSansBold
cmdTutorial_3.Text = "Anything inside \"[ ]\" is an argument for the command"
cmdTutorial_3.TextColor3 = Color3.new(0.956863, 0.956863, 0.956863)
cmdTutorial_3.TextScaled = true
cmdTutorial_3.TextSize = 14
cmdTutorial_3.TextWrapped = true
cmdTutorial_3.TextXAlignment = Enum.TextXAlignment.Left
CMDS_Shadow.Name = "CMDS_Shadow"
CMDS_Shadow.Parent = CMDSmain
CMDS_Shadow.BackgroundColor3 = Color3.new(0, 0, 0)
CMDS_Shadow.BackgroundTransparency = 0.60000002384186
CMDS_Shadow.BorderSizePixel = 0
CMDS_Shadow.Position = UDim2.new(0, 2, 0, 2)
CMDS_Shadow.Size = UDim2.new(0, 440, 0, 367)
CMDS_Shadow.ZIndex = -1
CMDS_Shadow2.Name = "CMDS_Shadow2"
CMDS_Shadow2.Parent = CMDSmain
CMDS_Shadow2.BackgroundColor3 = Color3.new(0, 0, 0)
CMDS_Shadow2.BackgroundTransparency = 0.80000001192093
CMDS_Shadow2.BorderSizePixel = 0
CMDS_Shadow2.Position = UDim2.new(0, 5, 0, 5)
CMDS_Shadow2.Size = UDim2.new(0, 440, 0, 367)
CMDS_Shadow2.ZIndex = -1
closecmdsgui.MouseButton1Click:Connect(function()
	CMDSmain:TweenSize(UDim2.new(0, 0, 0, 0), "InOut", "Sine", 2)
end)
function CreateCMDlabel(position, text)
	local sizenow = 15
	local cmdHere = Instance.new("TextLabel")
	cmdHere.Name = "cmdHere"
	cmdHere.TextWrapped = true
	cmdHere.Parent = ListofCMDS
	cmdHere.BackgroundColor3 = Color3.new(1, 1, 1)
	cmdHere.BackgroundTransparency = 1
	cmdHere.BorderSizePixel = 0
	cmdHere.Position = position
	cmdHere.Size = UDim2.new(0, 1950, 0, sizenow)
	cmdHere.Font = Enum.Font.SourceSans
	cmdHere.Text = text
	cmdHere.TextWrapped = true
	cmdHere.TextColor3 = Color3.new(0.956863, 0.956863, 0.956863)
	cmdHere.TextScaled = false
	cmdHere.TextSize = 20
	cmdHere.TextXAlignment = Enum.TextXAlignment.Left
end
for i,_cmds in pairs(searchCmds) do
	CreateCMDlabel(UDim2.new(0, 5, 0, 50 + (i * 15)), _cmds)
end
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos
local function updateCMDS(input)
	local delta = input.Position - dragStart
	local dragTime = 0.055
	local SmoothDrag = {}
	SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	local dragSmoothFunction = gsTween:Create(CMDSmain, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
	dragSmoothFunction:Play()
end
cmdgui_topframe.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = CMDSmain.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
cmdgui_topframe.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
cmdgui_midframe.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = CMDSmain.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
cmdgui_midframe.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		updateCMDS(input)
	end
end)
cmdsgui_SearchFunction.Focused:Connect(function()
	cmdsgui_SearchFunction.TextTransparency = 0
	local searchTween = {}
	searchTween.TextColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
	searchTween.TextSize = 18
	searchTween.Position = UDim2.new(0, -70, 0, -15)
	local frameTweenblue = {}
	frameTweenblue.BackgroundColor3 = Color3.new(0.0980392, 0.462745, 0.823529)
	local searchTween1 = gsTween:Create(cmdsgui_searchDETAILTEXT, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), searchTween)
	searchTween1:Play()
	local frameTweenblue1 = gsTween:Create(cmdsgui_searchDETAILFRAME, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), frameTweenblue)
	frameTweenblue1:Play()
end)
cmdsgui_SearchFunction.FocusLost:Connect(function(enterPressed)
	if not enterPressed then
		cmdsgui_SearchFunction.TextTransparency = 1
	else
		cmdsgui_SearchFunction.Text = " "
	end
	local searchTween = {}
	searchTween.TextColor3 = Color3.fromRGB(240, 240, 240)
	searchTween.TextSize = 30
	searchTween.Position = UDim2.new(0, 0, 0, 0)
	local frameTweenblue = {}
	frameTweenblue.BackgroundColor3 = Color3.fromRGB(240, 240, 240)
	local searchTween1 = gsTween:Create(cmdsgui_searchDETAILTEXT, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), searchTween)
	searchTween1:Play()
	local frameTweenblue1 = gsTween:Create(cmdsgui_searchDETAILFRAME, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), frameTweenblue)
	frameTweenblue1:Play()
end)
cmdsgui_SearchFunction.Changed:Connect(function()
	local index = 0
	if cmdsgui_SearchFunction.Text ~= "" then
		for i,v in pairs(ListofCMDS:GetChildren()) do
			if v.Name == "cmdHere" then
				if not string.find(v.Text, cmdsgui_SearchFunction.Text) then
					v.Visible = false
				else
					v.Visible = true
					index = index + 1
					v.Position = UDim2.new(0, 5, 0, 50 + (index * 15))
				end
			end
		end
	end
end)

-- Command Execution
LP.Chatted:Connect(function(chat)
	run(chat)
end)

function run(msg)
	if string.lower(string.sub(msg, 2, 5)) == "chat" then
		msg = msg
	elseif string.match(msg, "hotkey") and string.match(msg, "chat") then
		msg = msg
	else
		msg = string.lower(msg)
	end
	local cmdPrefix = string.sub(msg, 1, 1)
	if cmdPrefix == commandPrefix then
		msg = string.sub(msg, 2)
		local args = {}
		for arg in string.gmatch(msg,"[^%s]+") do
			table.insert(args,arg)
		end
		local cmdName = args[1]
		table.remove(args,1)
		local doCmd = Commands[cmdName]
		
		if doCmd ~= nil then
			doCmd(args)
		end
	end
end

-- Command bar
local CommandBar = Instance.new("ScreenGui")
local CMDBAR = Instance.new("Frame")
local CMDBARText = Instance.new("TextBox")
CommandBar.Name = "CommandBar"
CommandBar.Parent = gsCoreGui
CMDBAR.Name = "CMDBAR"
CMDBAR.Parent = CommandBar
CMDBAR.BackgroundColor3 = Color3.new(0.164706, 0.152941, 0.172549)
CMDBAR.BorderSizePixel = 0
CMDBAR.Position = UDim2.new(0.025, 0, 1, 0)
CMDBAR.Size = UDim2.new(0, 270, 0, 35)
CMDBARText.Name = "CMDBARText"
CMDBARText.Parent = CMDBAR
CMDBARText.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
CMDBARText.BorderSizePixel = 0
CMDBARText.Position = UDim2.new(0, 5, 0, 5)
CMDBARText.Size = UDim2.new(0, 260, 0, 25)
CMDBARText.Font = Enum.Font.SourceSansLight
CMDBARText.Text = ""
CMDBARText.TextColor3 = Color3.new(0.933333, 0.933333, 0.933333)
CMDBARText.TextScaled = true
CMDBARText.TextSize = 14
CMDBARText.TextWrapped = true
Mouse.KeyDown:connect(function(Key)
	if Key == string.lower(commandPrefix) then
		CMDBARText:CaptureFocus()
		CMDBAR:TweenPosition(UDim2.new(0.015, 0, 0.95, 0), "Out", "Elastic", 0.5, true)
	end
end)
CMDBARText.FocusLost:connect(function(enterPressed)
	CMDBAR:TweenPosition(UDim2.new(0.015, 0, 1, 0), "Out", "Quad", 0.5, true)
	if enterPressed then
		local cmdmsg = CMDBARText.Text
		CMDBARText.Text = ""
		run(commandPrefix..cmdmsg)
	end
end)
local Match = Instance.new("Frame")
Match.Name = "Match"
Match.Parent = CMDBAR
Match.BackgroundColor3 = Color3.new(0.164706, 0.152941, 0.172549)
Match.BorderSizePixel = 0
Match.Position = UDim2.new(0, 0, -4, 0)
Match.Size = UDim2.new(1, 0, 4, 0)
Match.Visible = false
function CreateOption(Text)
	local Option1 = Instance.new("TextLabel")
	Option1.Name = "Option"
	Option1.Parent = Match
	Option1.BackgroundColor3 = Color3.new(1, 1, 1)
	Option1.BackgroundTransparency = 1
	Option1.Position = UDim2.new(-10, 0, 0, 0)
	Option1.Size = UDim2.new(1, 0, 0, 20)
	Option1.Font = Enum.Font.SourceSans
	Option1.Text = Text
	Option1.TextColor3 = Color3.new(0.952941, 0.952941, 0.952941)
	Option1.TextScaled = true
	Option1.TextWrapped = true
end
for i,cmdtext2 in pairs(CMDS) do
	CreateOption(cmdtext2)
end
CMDBARText.Changed:Connect(function()
	if CMDBARText.Text ~= "" and CMDBARText.Text ~= commandPrefix then
		Match.Visible = true
		local PositionMatch = 0
		for i,cmdtext in pairs(Match:GetChildren()) do
			if cmdtext.Name == "Option" then
				if string.find(cmdtext.Text, CMDBARText.Text) then
					cmdtext.Position = UDim2.new(0, 0, 0, 2 + (PositionMatch * 20))
					PositionMatch = PositionMatch + 1
					if cmdtext.Position == UDim2.new(0, 0, 0, 142) then
						cmdtext.Position = UDim2.new(-10, 0, 0, 0)
						PositionMatch = PositionMatch - 1
					end
				else
					cmdtext.Position = UDim2.new(-10, 0, 0, 0)
				end
			end
		end
	else
		Match.Visible = false
	end
end)

-- Chat
local ChatLogsv2 = Instance.new("ScreenGui")
local MainChatFrame = Instance.new("Frame")
local Framess = Instance.new("Frame")
local CloseChatGUI = Instance.new("TextButton")
local Frame_222 = Instance.new("Frame")
local PrintChat = Instance.new("TextButton")
local Shadow1 = Instance.new("Frame")
local Shadow2 = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
ChatLogsv2.Name = "ChatLogsv2"
ChatLogsv2.Parent = gsCoreGui
MainChatFrame.Name = "MainChatFrame"
MainChatFrame.Parent = ChatLogsv2
MainChatFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainChatFrame.BackgroundTransparency = 1
MainChatFrame.Position = UDim2.new(0, 760, 0, 261)
MainChatFrame.Size = UDim2.new(0, 525, 0, 337)
MainChatFrame.Visible = false
Framess.Parent = MainChatFrame
Framess.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
Framess.BorderSizePixel = 0
Framess.Size = UDim2.new(0, 525, 0, 15)
CloseChatGUI.Name = "CloseChatGUI"
CloseChatGUI.Parent = Framess
CloseChatGUI.BackgroundColor3 = Color3.new(1, 1, 1)
CloseChatGUI.BackgroundTransparency = 1
CloseChatGUI.BorderSizePixel = 0
CloseChatGUI.Position = UDim2.new(0, 495, 0, 0)
CloseChatGUI.Size = UDim2.new(0, 30, 0, 15)
CloseChatGUI.Font = Enum.Font.SourceSansBold
CloseChatGUI.Text = "X"
CloseChatGUI.TextColor3 = Color3.new(0.945098, 0.945098, 0.945098)
CloseChatGUI.TextSize = 20
Frame_222.Parent = MainChatFrame
Frame_222.BackgroundColor3 = Color3.new(0.14902, 0.14902, 0.14902)
Frame_222.BorderSizePixel = 0
Frame_222.Position = UDim2.new(0, 0, 0, 15)
Frame_222.Size = UDim2.new(0, 525, 0, 50)
PrintChat.Name = "PrintChat"
PrintChat.Parent = Frame_222
PrintChat.BackgroundColor3 = Color3.new(0.870588, 0.25098, 0.25098)
PrintChat.BorderSizePixel = 0
PrintChat.Position = UDim2.new(0, 15, 0, 0)
PrintChat.Size = UDim2.new(0, 170, 0, 30)
PrintChat.Font = Enum.Font.SourceSansLight
PrintChat.Text = "Print Chat"
PrintChat.TextColor3 = Color3.new(0.960784, 0.960784, 0.960784)
PrintChat.TextSize = 30
PrintChat.TextWrapped = true
Shadow1.Name = "Shadow1"
Shadow1.Parent = MainChatFrame
Shadow1.BackgroundColor3 = Color3.new(0, 0, 0)
Shadow1.BackgroundTransparency = 0.5
Shadow1.Position = UDim2.new(0, 2, 0, 2)
Shadow1.Size = UDim2.new(0, 525, 0, 337)
Shadow1.ZIndex = -1
Shadow2.Name = "Shadow2"
Shadow2.Parent = MainChatFrame
Shadow2.BackgroundColor3 = Color3.new(0, 0, 0)
Shadow2.BackgroundTransparency = 0.80000001192093
Shadow2.Position = UDim2.new(0, 5, 0, 5)
Shadow2.Size = UDim2.new(0, 525, 0, 337)
Shadow2.ZIndex = -1
ScrollingFrame.Parent = MainChatFrame
ScrollingFrame.BackgroundColor3 = Color3.new(0.266667, 0.266667, 0.266667)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, 0, 65)
ScrollingFrame.Size = UDim2.new(0, 525, 0, 271)
ScrollingFrame.CanvasPosition = Vector2.new(0, 403)
ScrollingFrame.ScrollBarThickness = 8
function CreateChatText(plr, chat)
	for i,v in pairs(ScrollingFrame:GetDescendants()) do
		v.Position = v.Position - UDim2.new(0, 0, 0, 20)
		if v.Position == UDim2.new(0, 5, 0, 10) then
			v:Destroy()
		end
	end
	local Example = Instance.new("TextLabel")
	Example.Name = "Example"
	Example.Parent = ScrollingFrame
	Example.BackgroundColor3 = Color3.new(1, 1, 1)
	Example.BackgroundTransparency = 1
	Example.Position = UDim2.new(0, 5, 0, 650)
	Example.Size = UDim2.new(0, 500, 0, 20)
	Example.Font = Enum.Font.SourceSans
	Example.Text = "["..plr.Name.."]: "..chat
	Example.TextColor3 = Color3.new(0.960784, 0.960784, 0.960784)
	Example.TextScaled = true
	Example.TextSize = 20
	Example.TextWrapped = true
	Example.TextXAlignment = Enum.TextXAlignment.Left
end
CloseChatGUI.MouseButton1Click:Connect(function()
	MainChatFrame:TweenPosition(UDim2.new(0, 550, 0, -550), "InOut", "Sine", 2)
	wait(2.01)
	MainChatFrame.Visible = false
end)
printingChat = false
PrintChat.MouseButton1Click:Connect(function()
	if printingChat == false then
		printingChat = true
		PrintChat.BackgroundColor3 = Color3.fromRGB(60, 200, 60)
	elseif printingChat == true then
		printingChat = false
		PrintChat.BackgroundColor3 = Color3.new(0.870588, 0.25098, 0.25098)
	end
end)
local UserInputService = game:GetService("UserInputService")
local dragging
local dragInput
local dragStart
local startPos
local function updateChat(input)
	local delta = input.Position - dragStart
	local dragTime = 0.055
	local SmoothDrag = {}
	SmoothDrag.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	local dragSmoothFunction = gsTween:Create(MainChatFrame, TweenInfo.new(dragTime, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), SmoothDrag)
	dragSmoothFunction:Play()
end
Frame_222.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = MainChatFrame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)
Frame_222.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)
UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		updateChat(input)
	end
end)

function printChat(player, chat)
	print("["..player.Name.."]: "..chat)
end
complimentReady = true
for i,currentPlayersChatting in pairs(game:GetService("Players"):GetPlayers()) do
	currentPlayersChatting.Chatted:connect(function(chat)
		CreateChatText(currentPlayersChatting, chat)
		if printingChat then
			printChat(currentPlayersChatting, chat)
		end
		if copychatACTIVE then
			if currentPlayersChatting == copychatplayer then
				gsReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(chat, "All")
			end
		end
		if modeFling == true then
			if string.lower(string.sub(chat, 1, 7)) == "!fling " then
				if gsWorkspace:PGSIsEnabled() == false then
					FEGodmode()
				end
				if string.lower(string.sub(chat, 8)) == "me" then
					run(commandPrefix.."unfling")
					LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0)
					run(commandPrefix.."fling "..currentPlayersChatting.Name.." 2000000")
				else
					for i,notAll in pairs(findSinglePlayer(string.lower(string.sub(chat, 8)))) do
						if notAll ~= LP then
							run(commandPrefix.."unfling")
							LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0)
							run(commandPrefix.."fling "..notAll.Name.." 2000000")
						end
					end
				end
			end
		end
		if modeCompliment == true then
			if string.lower(string.sub(chat, 1, 3)) == "!c " then
				if complimentReady then
					complimentReady = false
					if string.lower(string.sub(chat, 4)) == "me" then
						complimentplr(currentPlayersChatting)
					else
						for i,Others in pairs(findSinglePlayer(string.lower(string.sub(chat, 4)))) do
							if Others == LP then
								game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Don't be silly, I can't compliment myself!", "All")
							else
								complimentplr(Others)
							end
						end
					end
					wait(1)
					complimentReady = true
				end
			end
		end
		if modeMove == true then
			if string.lower(string.sub(chat, 1, 9)) == "!bringbot" then
				run(commandPrefix.."unfollow")
				run(commandPrefix.."unwalk")
				run(commandPrefix.."goto "..currentPlayersChatting.Name)
			elseif string.lower(string.sub(chat, 1, 6)) == "!walk " then
				for i,getWalkPlayer in pairs(findSinglePlayer(string.lower(string.sub(chat, 7)))) do
					if getWalkPlayer == LP then
						run(commandPrefix.."unfollow")
						run(commandPrefix.."walk "..currentPlayersChatting.Name)
					else
						run(commandPrefix.."unfollow")
						run(commandPrefix.."walk "..getWalkPlayer.Name)
					end
				end
			elseif string.lower(string.sub(chat, 1, 8)) == "!follow " then
				for i,getFollowPlayer in pairs(findSinglePlayer(string.lower(string.sub(chat, 9)))) do
					if getFollowPlayer == LP then
						run(commandPrefix.."unwalk")
						run(commandPrefix.."follow "..currentPlayersChatting.Name)
					else
						run(commandPrefix.."unwalk")
						run(commandPrefix.."follow "..getFollowPlayer.Name)
					end
				end
			end
		end
		if modeInfo == true then
			if infoReady then
				infoReady = false
				if string.lower(string.sub(chat, 1, 5)) == "!age " then
					for i,v in pairs(findSinglePlayer(string.lower(string.sub(chat, 6)))) do
						if v == LP then
							run(commandPrefix.."age "..currentPlayersChatting.Name)
						else
							run(commandPrefix.."age "..v.Name)
						end
					end
				end
				if string.lower(string.sub(chat, 1, 4)) == "!id " then
					for i,a in pairs(findSinglePlayer(string.lower(string.sub(chat, 5)))) do
						if a == LP then
							run(commandPrefix.."id "..currentPlayersChatting.Name)
						else
							run(commandPrefix.."id "..a.Name)
						end
					end
				end
				wait(1)
				infoReady = true
			end
		end
	end)
end
game:GetService("Players").PlayerAdded:connect(function(plr)
	plr.Chatted:connect(function(chat)
		CreateChatText(plr, chat)
		if printingChat then
			printChat(plr, chat)
		end
		if modeFling == true then
			if string.lower(string.sub(chat, 1, 7)) == "!fling " then
				if gsWorkspace:PGSIsEnabled() == false then
					FEGodmode()
				end
				if string.lower(string.sub(chat, 8)) == "me" then
					run(commandPrefix.."unfling")
					LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0)
					run(commandPrefix.."fling "..plr.Name.." 2000000")
				else
					for i,notAll in pairs(findSinglePlayer(string.lower(string.sub(chat, 8)))) do
						if notAll ~= LP then
							run(commandPrefix.."unfling")
							LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + Vector3.new(0, 10, 0)
							run(commandPrefix.."fling "..notAll.Name.." 2000000")
						end
					end
				end
			end
		end
		if modeCompliment == true then
			if string.lower(string.sub(chat, 1, 3)) == "!c " then
				if complimentReady == true then
					complimentReady = false
					if string.lower(string.sub(chat, 4)) == "me" then
						complimentplr(plr)
					else
						for i,Others in pairs(findSinglePlayer(string.lower(string.sub(chat, 4)))) do
							if Others == LP then
								game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Don't be silly, I can't compliment myself!", "All")
							else
								complimentplr(Others)
							end
						end
					end
					wait(1)
					complimentReady = true
				end
			end
		end
		if modeMove == true then
			if string.lower(string.sub(chat, 1, 9)) == "!bringbot" then
				run(commandPrefix.."unfollow")
				run(commandPrefix.."unwalk")
				run(commandPrefix.."goto "..plr.Name)
			elseif string.lower(string.sub(chat, 1, 6)) == "!walk " then
				for i,getWalkPlayer in pairs(findSinglePlayer(string.lower(string.sub(chat, 7)))) do
					if getWalkPlayer == LP then
						run(commandPrefix.."unfollow")
						run(commandPrefix.."walk "..plr.Name)
					else
						run(commandPrefix.."unfollow")
						run(commandPrefix.."walk "..getWalkPlayer.Name)
					end
				end
			elseif string.lower(string.sub(chat, 1, 8)) == "!follow " then
				for i,getFollowPlayer in pairs(findSinglePlayer(string.lower(string.sub(chat, 9)))) do
					if getFollowPlayer == LP then
						run(commandPrefix.."unwalk")
						run(commandPrefix.."follow "..plr.Name)
					else
						run(commandPrefix.."unwalk")
						run(commandPrefix.."follow "..getFollowPlayer.Name)
					end
				end
			end
		end
		if modeInfo == true then
			if infoReady then
				infoReady = false
				if string.lower(string.sub(chat, 1, 5)) == "!age " then
					for i,v in pairs(findSinglePlayer(string.lower(string.sub(chat, 6)))) do
						if v == LP then
							run(commandPrefix.."age "..plr.Name)
						else
							run(commandPrefix.."age "..v.Name)
						end
					end
				end
				if string.lower(string.sub(chat, 1, 4)) == "!id " then
					for i,a in pairs(findSinglePlayer(string.lower(string.sub(chat, 5)))) do
						if a == LP then
							run(commandPrefix.."id "..plr.Name)
						else
							run(commandPrefix.."id "..a.Name)
						end
					end
				end
				wait(1)
				infoReady = true
			end
		end
	end)
end)

-- Loops
noclip = false
following = false
trailing = false
annoying = false
flingnoclip = false
staring = false
stopsitting = false
stareplr = ""
CBRINGamount = 3
spawnWS = CurrentWalkspeed
spawnJP = CurrentJumppower
spawnHH = CurrentHipheight
spawningfegod = false
looptpbypassfly = false
if game.GameId == 245662005 or game.GameId == 601130232 then
	bypassMODE = true
else
	bypassMODE = false
end
viewplr = ""
loopview = false
cmdForward = false
forwardSpeed = 1
loopviewfc = false
spinTOhead = false
spinObj = ""
rideACTIVE = false
ridePLAYER = ""

LPcurrenthumanoid = LP.Character.Humanoid
game:GetService('RunService').Stepped:connect(function()
	if LP.Character.Humanoid ~= nil then
		LPcurrenthumanoid = LP.Character.Humanoid
	end
	if noclip then
		if LP.Character then
			if LP.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
				LP.Character.Head.CanCollide = false
				LP.Character.Torso.CanCollide = false
				LP.Character["Left Leg"].CanCollide = false
				LP.Character["Right Leg"].CanCollide = false
				LP.Character["Left Arm"].CanCollide = false
				LP.Character["Right Arm"].CanCollide = false
			elseif LP.Character.Humanoid.RigType == Enum.HumanoidRigType.R15 then
				LP.Character.Head.CanCollide = false
				LP.Character.UpperTorso.CanCollide = false
				LP.Character.LowerTorso.CanCollide = false
				LP.Character.HumanoidRootPart.CanCollide = false
			end
		end
	end
	if following then
		LP.Character.HumanoidRootPart.CFrame = gsPlayers[flwplr.Name].Character.HumanoidRootPart.CFrame + gsPlayers[flwplr.Name].Character.HumanoidRootPart.CFrame.lookVector * flwnum
	end
	if trailing then
		LP.Character.HumanoidRootPart.CFrame = gsPlayers[trlplr.Name].Character.HumanoidRootPart.CFrame + gsPlayers[trlplr.Name].Character.HumanoidRootPart.CFrame.lookVector * trlnum
	end
	if annoying then
		LP.Character.HumanoidRootPart.CFrame = gsPlayers[annplr.Name].Character.HumanoidRootPart.CFrame
	end
	if walkto then
		LP.Character.Humanoid:MoveTo(walkplr.Character.HumanoidRootPart.Position)
	end
	if cbringing then
		CBRINGplr.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * CBRINGamount
	end
	if cbringingall then
		for i,getbringplrs in pairs(gsPlayers:GetPlayers()) do
			if getbringplrs ~= LP then
				getbringplrs.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * CBRINGamount
			end
		end
	end
	if staring then
		LP.Character.HumanoidRootPart.CFrame = CFrame.new(LP.Character.Torso.Position, gsPlayers[stareplr.Name].Character.Torso.Position)
	end
	if stopsitting then
		LP.Character.Humanoid.Sit = false
	end
	if looptpbypassfly then
		pcall(function()
			LP.Character.Head.Anchored = false
			LP.Character.HumanoidRootPart.CFrame = gsWorkspace.rGETpartNUMBER2.CFrame
			LP.Character.Head.Anchored = true
		end)
	end
	if loopview then
		view(viewplr)
	end
	if cmdForward then
		LP.Character.HumanoidRootPart.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * forwardSpeed
	end
	if loopviewfc then
		pcall(function()
			gsWorkspace.CurrentCamera.CameraSubject = gsWorkspace.rGETpartNUMBER2
		end)
	end
	if spinTOhead then
		pcall(function()
			spinObj.Position = LP.Character.Head.Position
		end)
	end
	if rideACTIVE == true then
		LP.character.HumanoidRootPart.CFrame = ridePLAYER.Character.HumanoidRootPart.CFrame + Vector3.new(0, 3, 0)
	end
end)
spawningatreset = false
spawnresetpoint = LP.Character.Head.CFrame

LPcurrenthumanoid.Died:Connect(function()
	flying = false
	doFREECAM = false
	if savingtoolsloop then
		run(commandPrefix.."savealltool")
	end
	if spawningatreset == true then
		spawnresetpoint = LP.Character.Head.CFrame + Vector3.new(0, 5, 0)
	end
end)

LP.CharacterAdded:Connect(function()
	wait(0.2)
	LP.Character.Humanoid.WalkSpeed = spawnWS
	LP.Character.Humanoid.JumpPower = spawnJP
	LP.Character.Humanoid.HipHeight = spawnHH
	if spawningfegod then
		FEGodmode()
	end
	if spawningpos and spawnpos ~= nil then
		LP.Character.HumanoidRootPart.CFrame = spawnpos
	end
	if spawningatreset == true then
		LP.Character.HumanoidRootPart.CFrame = spawnresetpoint
	end
end)

-- Commands
Commands = {}

Commands.print = function(args)
	local msg = table.concat(args," ")
	print(msg)
end

Commands.warn = function(args)
	local msg = table.concat(args," ")
	warn(msg)
end

Commands.sit = function(args)
	LP.Character.Humanoid.Sit = true
end

Commands.god = function(args)
	FEGodmode()
	Notification("warning", "You have enabled FE Godmode, tools will not work. Use "..commandPrefix.."grespawn to remove.", 7)
end

Commands.view = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			if bypassMODE == false then
				view(v)
				Notification("info", "Now viewing "..v.Name..". Use "..commandPrefix.."unview to stop viewing.", 3)
			elseif bypassMODE == true then
				viewplr = v
				loopview = true
			end
		end
	end
end

Commands.unview = function(args)
	view(LP)
	loopview = false
end

Commands.gravity = function(args)
	if args[1] then
		gsWorkspace.Gravity = args[1]
	end
end

Commands.ungravity = function(args)
	gsWorkspace.Gravity = CurrentGravity
end

Commands.goto = function(args)
	if args[1] then
		if bypassMODE == false then
			for i,v in pairs(findPlayer(args[1])) do
				LP.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
			end
		elseif bypassMODE == true then
			for i,v in pairs(findPlayer(args[1])) do
				local TPbypass = {}
				TPbypass.CFrame = v.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
				local TPFunction = gsTween:Create(LP.Character.HumanoidRootPart, TweenInfo.new(1.5, Enum.EasingStyle.Sine, Enum.EasingDirection.In), TPbypass)
				TPFunction:Play()
			end
		end
	end
end

Commands.fecheck = function(args)
	if gsWorkspace.FilteringEnabled == true then
		Notification("warning", "FE is enabled!", 7)
	else
		Notification("warning", "FE is disabled. Consider using a different script.", 7)
	end
end

Commands.lockws = function(args)
	lockWS()
	Notification("info", "Workspace locked.", 4)
end

Commands.unlockws = function(args)
	unlockWS()
	Notification("info", "Workspace unlocked.", 4)
end

Commands.noclip = function(args)
	noclip = true
	Notification("info", "Noclip enabled.", 4)
end

Commands.clip = function(args)
	noclip = false
	Notification("info", "Noclip disabled.", 4)
end

Commands.follow = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			flwplr = v
		end
		if args[2] then
			flwnum = args[2]
		else
			flwnum = -5
		end
		following = true
	else
		Notification("warning", "No player selected to follow! Use: "..commandPrefix.."follow player", 4)
	end
end

Commands.unfollow = function(args)
	following = false
end

Commands.fling = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			if v ~= LP then
				view(v)
				pcall(function()
					LP.Character.HumanoidRootPart.Fling:Destroy()
				end)
				if not args[2] then
					RocketPropulsion(800000,1000,400000,v,"Fling")
				else
					RocketPropulsion(args[2],1500,400000,v,"Fling")
				end
				if noclip ~= true then
					flingnoclip = true
					noclip = true
				end
			end
		end
	else
		Notification("warning", "No player selected to fling! Use: "..commandPrefix.."fling player", 4)
	end
end

Commands.unfling = function(args)
	view(LP)
	pcall(function()
		if LP.Character.HumanoidRootPart.Fling then
			for i,v in pairs(LP.Character:GetDescendants()) do
				if v.Name == "Fling" and v:IsA("RocketPropulsion") then
					v:Destroy()
				end
			end
		end
	end)
	if flingnoclip == true then
		noclip = false
		flingnoclip = false
	end
end

Commands.trail = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			trlplr = v
		end
		if args[2] then
			trlnum = args[2]
		else
			trlnum = 5
		end
		trailing = true
	else
		Notification("warning", "No player selected to trail! Use: "..commandPrefix.."trail player", 4)
	end
end

Commands.untrail = function(args)
	trailing = false
end

Commands.annoy = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			annplr = v
		end
		annoying = true
	else
		Notification("warning", "No player selected to annoy! Use: "..commandPrefix.."annoy player", 4)
	end
end

Commands.unannoy = function(args)
	annoying = false
end

Commands.reset = function(args)
	LP.Character:BreakJoints()
end

Commands.grespawn = function(args)
	LP.Character.Humanoid.Health = 0
	wait(1)
	LP.Character.Head.CFrame = CFrame.new(1000000,0,1000000)
	LP.Character.Torso.CFrame = CFrame.new(1000000,0,1000000)
end

Commands.respawn = function(args)
	local mod = Instance.new('Model', workspace) mod.Name = 'new '..LP.Name
	local hum = Instance.new('Humanoid', mod)
	local ins = Instance.new('Part', mod) ins.Name = 'Torso' ins.CanCollide = false ins.Transparency = 1
	LP.Character = mod
end

Commands.speed = function(args)
	if args[1] then
		run(commandPrefix.."ws "..args[1])
	end
end

bypassingwalkspeed = false
Commands.ws = function(args)
	if args[1] then
		if bypassMODE == false then
			LP.Character.Humanoid.WalkSpeed = args[1]
		elseif bypassMODE == true then
			if game.GameId == 245662005 then
				bypassingwalkspeed = true
				bypassWalkspeed = args[1]
			end
		end
	end
end

game:GetService("RunService").Heartbeat:Connect(function()
	if bypassingwalkspeed then
		LP.Character.Humanoid.WalkSpeed = bypassWalkspeed
	end
end)

Commands.jumppower = function(args)
	if args[1] then
		LP.Character.Humanoid.JumpPower = args[1]
	end
end

Commands.jp = function(args)
	if args[1] then
		LP.Character.Humanoid.JumpPower = args[1]
	end
end

Commands.hipheight = function(args)
	if args[1] then
		LP.Character.Humanoid.HipHeight = args[1]
	end
end

Commands.hh = function(args)
	if args[1] then
		LP.Character.Humanoid.HipHeight = args[1]
	end
end

Commands.default = function(args)
	LP.Character.Humanoid.WalkSpeed = CurrentWalkspeed
	LP.Character.Humanoid.HipHeight = CurrentHipheight
	LP.Character.Humanoid.JumpPower = CurrentJumppower
end

Commands.credits = function(args)
	Notification("info", "Shattervast was made by illremember#3799 , "..commandPrefix.."fullcredits for all credits.", 8)
end

Commands.attach = function(args)
	if hasTools() == false then
		Notification("warning", "You need a tool in your backpack/inventory to use this command.", 8)
	else
		FEGodmode()
		for i,v in pairs(LP.Backpack:GetChildren())do
			LP.Character.Humanoid:EquipTool(v)
		end
		if args[1] then
			for i,v in pairs(findSinglePlayer(args[1])) do
				if v ~= LP then
					LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
					wait(0.3)
					LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
				end
			end
		end
	end
end

Commands.fly = function(args)
	if bypassMODE == false then
		local speedget = 1
		repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('HumanoidRootPart') and LP.Character:FindFirstChild('Humanoid')
		repeat wait() until Mouse
		if args[1] then
			speedfly = args[1]
		else
			speedfly = 1
		end
		
		local T = LP.Character.HumanoidRootPart
		local CONTROL = {F = 0, B = 0, L = 0, R = 0}
		local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
		local SPEED = speedget
		
		local function fly()
			flying = true
			local BG = Instance.new('BodyGyro', T)
			local BV = Instance.new('BodyVelocity', T)
			BG.P = 9e4
			BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
			BG.cframe = T.CFrame
			BV.velocity = Vector3.new(0, 0.1, 0)
			BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
			spawn(function()
			repeat wait()
			LP.Character.Humanoid.PlatformStand = true
			if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
			SPEED = 50
			elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
			SPEED = 0
			end
			if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
			BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
			elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
			BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			else
			BV.velocity = Vector3.new(0, 0.1, 0)
			end
			BG.cframe = workspace.CurrentCamera.CoordinateFrame
					until not flying
					CONTROL = {F = 0, B = 0, L = 0, R = 0}
					lCONTROL = {F = 0, B = 0, L = 0, R = 0}
					SPEED = 0
					BG:destroy()
					BV:destroy()
					LP.Character.Humanoid.PlatformStand = false
				end)
			end
		Mouse.KeyDown:connect(function(KEY)
			if KEY:lower() == 'w' then
				CONTROL.F = speedfly
			elseif KEY:lower() == 's' then
				CONTROL.B = -speedfly
			elseif KEY:lower() == 'a' then
				CONTROL.L = -speedfly 
			elseif KEY:lower() == 'd' then 
				CONTROL.R = speedfly
			end
		end)
		Mouse.KeyUp:connect(function(KEY)
			if KEY:lower() == 'w' then
				CONTROL.F = 0
			elseif KEY:lower() == 's' then
				CONTROL.B = 0
			elseif KEY:lower() == 'a' then
				CONTROL.L = 0
			elseif KEY:lower() == 'd' then
				CONTROL.R = 0
			end
		end)
		fly()
	elseif bypassMODE == true then
		if not args[1] then
			run(commandPrefix.."fc")
		else
			run(commandPrefix.."fc "..args[1])
		end
		LP.Character.Head.Anchored = false
		looptpbypassfly = true
		view(LP)
	end
end

Commands.unfly = function(args)
	if bypassMODE == false then
		flying = false
		LP.Character.Humanoid.PlatformStand = false
	else
		looptpbypassfly = false
		run(commandPrefix.."unfreecam")
		local goalTP = LP.Character.HumanoidRootPart.CFrame
		if game.GameId == 245662005 then
			for i = 1, 5 do wait(0.2)
				LP.Character.HumanoidRootPart.CFrame = goalTP
			end
		else
			LP.Character.HumanoidRootPart.CFrame = goalTP
		end
		LP.Character.Head.Anchored = false
	end
end

Commands.kill = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			if v == LP then
				LP.Character:BreakJoints()
			else
				if hasTools() == false then
					Notification("warning", "You need a tool in your backpack/inventory to use this command.", 8)
				else
					FEGodmode()
					for i,v in pairs(LP.Backpack:GetChildren())do
						LP.Character.Humanoid:EquipTool(v)
					end
					local NOW = LP.Character.HumanoidRootPart.CFrame
					LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
					wait(0.3)
					LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
					local function tp(player,player2)
					local char1,char2=player.Character,player2.Character
					if char1 and char2 then
					char1:MoveTo(char2.Head.Position)
					end
					end
					wait(0.5)
					LP.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(100000,0,100000))
					wait(0.5)
					tp(LP,game:GetService("Players")[v.Name])
					wait(0.7)
					LP.Character.HumanoidRootPart.CFrame = NOW
					view(LP)
				end
			end
		end
	end
end
Commands.bring = function(args)
	if hasTools() == false then
		Notification("warning", "You need a tool in your backpack/inventory to use this command.", 8)
	else
		FEGodmode()
		for i,v in pairs(LP.Backpack:GetChildren())do
			LP.Character.Humanoid:EquipTool(v)
		end
		if args[1] then
			for i,v in pairs(findSinglePlayer(args[1])) do
				if v ~= LP then
					local NOW = LP.Character.HumanoidRootPart.CFrame
					local function tp(player,player2)
					local char1,char2=player.Character,player2.Character
					if char1 and char2 then
					char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
					end
					end
					local function getout(player,player2)
					local char1,char2=player.Character,player2.Character
					if char1 and char2 then
					char1:MoveTo(char2.Head.Position)
					end
					end
					tp(game:GetService("Players")[v.Name], LP)
					wait(0.2)
					tp(game:GetService("Players")[v.Name], LP)
					wait(0.5)
					LP.Character.HumanoidRootPart.CFrame = NOW
					wait(0.5)
					getout(LP, game:GetService("Players")[v.Name])
					wait(0.3)
					LP.Character.HumanoidRootPart.CFrame = NOW
				end
			end
		end
	end
end

Commands.naked = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Clothing") then
			v:Destroy()
		end
	end
end

Commands.nolimbs = function(args)
	LP.Character["Left Arm"]:Destroy()
	LP.Character["Right Arm"]:Destroy()
	LP.Character["Left Leg"]:Destroy()
	LP.Character["Right Leg"]:Destroy()
end

Commands.noarms = function(args)
	LP.Character["Left Arm"]:Destroy()
	LP.Character["Right Arm"]:Destroy()
end

Commands.nolegs = function(args)
	LP.Character["Left Leg"]:Destroy()
	LP.Character["Right Leg"]:Destroy()
end

Commands.headless = function(args)
	local l = LP.Character.Humanoid:Clone()
	LP.Character.Humanoid:Destroy()
	wait(0.2)
	LP.Character.Head.CanCollide = false
	for i,v in pairs(LP.Character:GetDescendants()) do
		if string.sub(v.Name, 1, 4) == "Neck" then
			v:Destroy()
		end
	end
	wait(0.2)
	l.Name = "Humanoid"
	l.Parent = LP.Character
	wait(0.1)
	game:GetService("Workspace").CurrentCamera.CameraSubject = LP.Character
	LP.Character.Animate:Destroy()
end

antiremotes = false
Commands.antikick = function(args)
	if args[1] then
		if args[1] == "on" then
			antiremotes = true
			wait(0.2)
			for i,v in pairs(LP.Character:GetChildren()) do
				if string.find(string.lower(v.Name), "exploit") and v:IsA("LocalScript") then
					v.Disabled = true
				end
			end
			Notification("warning", "This command disables all remotes incase they are kick remotes, may break game.", 8)
			Notification("info", "Does not prevent serverside kicks, use "..commandPrefix.."antikick off to turn off.", 8)
		elseif args[1] == "off" then
			antiremotes = false
			Notification("warning", "Remote anti-kick turned off.", 8)
		end
	end
end

blockedremotes = {}
Commands.blockremote = function(args)
	local getService = ""
	if args[1] then
		local remoteName = string.lower(tostring(args[1]))
		if args[2] then
			local serviceRemote = string.lower(tostring(args[2]))
			if serviceRemote == "workspace" then
				getService = "Workspace"
			elseif serviceRemote == "replicatedstorage" then
				getService = "ReplicatedStorage"
			elseif serviceRemote == "players" then
				getService = "Players"
			elseif serviceRemote == "lighting" then
				getService = "Lighting"
			elseif serviceRemote == "startergui" then
				getService = "StarterGui"
			elseif serviceRemote == "starterpack" then
				getService = "StarterPack"
			elseif serviceRemote == "starterplayer" then
				getService = "StarterPlayer"
			else
				getService = "ReplicatedStorage"
			end
		else
			getService = "ReplicatedStorage"
		end
		for i,getRemote in pairs(game:GetService(getService):GetDescendants()) do
			if string.lower(getRemote.Name) == remoteName then
				table.insert(blockedremotes, getRemote.Name)
			end
		end
	end
	Notification("warning", "If this command does not work, make sure you type remote name/service fully correct.", 8)
end

spyingremotes = false
Commands.remotespy = function(args)
	if args[1] then
		if args[1] == "on" then
			spyingremotes = true
			Notification("info", "Remotespy turned on.", 4)
		elseif args[1] == "off" then
			spyingremotes = false
			Notification("info", "Remotespy turned off.", 4)
		end
	end
end

Commands.bang = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			if v ~= nil then
				following = true
				flwplr = v
				flwnum = -1
				local bangAnimation = Instance.new("Animation")
				bangAnimation.AnimationId = "rbxassetid://148840371"
				bangTrack = LP.Character.Humanoid:LoadAnimation(bangAnimation)
				if args[2] then
					bangTrack:Play(.1, 1, args[2])
				else
					bangTrack:Play(.1, 1, 1)
				end
			end
		end
	else
		Notification("warning", "No player selected to follow! Use: "..commandPrefix.."follow player", 4)
	end
end

Commands.unbang = function(args)
	following = false
	bangTrack:Stop()
end

spamdelay = 1
spamtext = "Spam"
spamming = false
Commands.spam = function(args)
	if args[1] then
		spamtext = args[1]
		spamming = true
	end
end
Commands.spamdelay = function(args)
	if args[1] then
		spamdelay = args[1]
	end
end
spawn(function()
	while wait(spamdelay) do
		if spamming then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(spamtext, "All")
		end
	end
end)

Commands.unspam = function(args)
	spamming = false
end

Commands.info = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			createINFO(v)
		end
	end
end

Commands.age = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.Name.." Account Age: "..v.AccountAge.." days!", "All")
		end
	end
end

Commands.invisible = function(args)
	local Character = LP.Character
	if LP.Character.Humanoid.RigType == Enum.HumanoidRigType.R6 then
		local Clone = Character.HumanoidRootPart:Clone()
		Character.HumanoidRootPart:Destroy()
		Clone.Parent = Character
	else
		local Clone = Character.LowerTorso.Root:Clone()
		Character.LowerTorso.Root:Destroy()
		Clone.Parent = Character.LowerTorso
	end
end

walkto = false
walkplr = ""
Commands.walk = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			walkplr = v
			walkto = true
			noclip = true
		end
	end
end

Commands.unwalk = function(args)
	walkto = false
	noclip = false
	LP.Character.Humanoid:MoveTo(LP.Character.HumanoidRootPart.Position)
end

Commands.glitch = function(args)
	if hasTools() == false then
		Notification("warning", "You need a tool in your backpack/inventory to use this command.", 8)
	else
		FEGodmode()
		for i,v in pairs(LP.Backpack:GetChildren())do
			LP.Character.Humanoid:EquipTool(v)
		end
		if args[1] then
			for i,v in pairs(findSinglePlayer(args[1])) do
				local function tp(player,player2)
				local char1,char2=player.Character,player2.Character
				if char1 and char2 then
				char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
				end
				end
				tp(game:GetService("Players")[v.Name], LP)
				wait(0.2)
				tp(game:GetService("Players")[v.Name], LP)
				wait(0.5)
				local b = Instance.new("BodyForce")
				b.Parent = LP.Character.HumanoidRootPart
				b.Name = "Glitch"
				if args[2] then
					b.Force = Vector3.new(args[2],5000,0)
				else
					b.Force = Vector3.new(100000000,5000,0)
				end
				wait(6)
				b:Destroy()
			end
		end
	end
end

Commands.tp = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			if v == LP then
				if args[2] then
					for i,a in pairs(findSinglePlayer(args[2])) do
						v.Character.HumanoidRootPart.CFrame = a.Character.HumanoidRootPart.CFrame
					end
				end
			else
				if hasTools() == false then
					Notification("warning", "You need a tool in your backpack/inventory to use this command.", 8)
				else
					FEGodmode()
					for i,v in pairs(LP.Backpack:GetChildren())do
						LP.Character.Humanoid:EquipTool(v)
					end
					if args[1] then
						for i,first in pairs(findSinglePlayer(args[1])) do
							if args[2] then
								for i,second in pairs(findSinglePlayer(args[2])) do
									local function tp(player,player2)
									local char1,char2=player.Character,player2.Character
									if char1 and char2 then
									char1.HumanoidRootPart.CFrame = char2.HumanoidRootPart.CFrame
									end
									end
									local function getout(player,player2)
									local char1,char2=player.Character,player2.Character
									if char1 and char2 then
									char1:MoveTo(char2.Head.Position)
									end
									end
									tp(LP, first)
									wait(0.2)
									tp(LP, first)
									wait(0.5)
									tp(LP, second)
									wait(0.2)
									tp(LP, second)
									wait(0.2)
									getout(LP, first)
								end
							end
						end
					end
				end
			end
		end
	end
end

Commands.givetool = function(args)
	if args[1] then
		if args[2] then
			local selectedTool = ""
			for i,allTools in pairs(LP.Character:GetDescendants()) do
				if allTools:IsA("Tool") and string.lower(allTools.Name) == string.lower(args[2]) then
					selectedTool = allTools
				else
					for i,otherTools in pairs(LP.Backpack:GetDescendants()) do
						if otherTools:IsA("Tool") and string.lower(otherTools.Name) == string.lower(args[2]) then
							selectedTool = otherTools
						end
					end
				end
			end
			for i,v in pairs(findSinglePlayer(args[1])) do
				if selectedTool ~= "" then
					selectedTool.Parent = v.Character
				end
			end
		else
			for i,plr in pairs(findSinglePlayer(args[1])) do
				for i,tool in pairs(LP.Character:GetDescendants()) do
					if tool:IsA("Tool") then
						tool.Parent = plr.Character
					end
				end
			end
		end
	end
end

Commands.givealltools = function(args)
	LP.Character.Humanoid:UnequipTools()
	for i,plr in pairs(findSinglePlayer(args[1])) do
		for i,v in pairs(LP.Character:GetDescendants()) do
			if v:IsA("Tool") then
				v.Parent = plr.Character
			end
		end
		for i,a in pairs(LP.Backpack:GetDescendants()) do
			if a:IsA("Tool") then
				a.Parent = plr.Character
			end
		end
	end
end

Commands.blockhats = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Hat") then
			for i,mesh in pairs(v:GetDescendants()) do
				if mesh.Name == "Mesh" then
					mesh:Destroy()
				end
			end
		end
	end
end

Commands.blocktool = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Tool") then
			for i,mesh in pairs(v:GetDescendants()) do
				if mesh.Name == "Mesh" then
					mesh:Destroy()
				end
			end
		end
	end
end

Commands.orbit = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			view(v)
			RocketPropulsion(5000,100,5000,v,"OrbitMove")
		end
	else
		Notification("warning", "No player selected to orbit! Use: "..commandPrefix.."orbit player", 4)
	end
end

Commands.unorbit = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v.Name == "OrbitMove" then
			v:Destroy()
		end
	end
	view(LP)
end

Commands.pos = function(args)
	Notification("info", "Your current position is ".. tostring(LP.Character.HumanoidRootPart.Position), 9)
end

SavedPosition = ""
Commands.savepos = function(args)
	SavedPosition = LP.Character.HumanoidRootPart.CFrame
end
Commands.loadpos = function(args)
	if SavedPosition ~= "" then
		LP.Character.HumanoidRootPart.CFrame = SavedPosition
	end
end

Commands.tppos = function(args)
	if args[1] and args[2] and args[3] then
		LP.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(args[1], args[2], args[3]))
	end
end

Commands.pmspam = function(args)
	if args[1] then
		local gotPlayer = ""
		for i,v in pairs(findPlayer(args[1])) do
			gotPlayer = v
		end
		table.remove(args, 1)
		local pmSpamMsg = table.concat(args," ")
		spamtext = "/w "..gotPlayer.Name.." "..pmSpamMsg
		spamming = true
	end
end

Commands.unpmspam = function(args)
	spamming = false
end

Commands.wsvis = function(args)
	if args[1] then
		for i,v in pairs(gsWorkspace:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Decal") then
				if tonumber(args[1]) > 1 then
					v.Transparency = 0.5
				else
					v.Transparency = args[1]
				end
			end
		end
	end
	clientSided()
end

Commands.bringobj = function(args)
	if args[1] then
		local Object = ""
		for i,v in pairs(gsWorkspace:GetDescendants()) do
			if string.lower(v.Name) == string.lower(args[1]) then
				Object = v				
			end
		end
		if Object == "" then
			Notification("warning", "Object was not found in the workspace.", 6)
		end
		if args[2] then
			Object.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * args[2]
		else
			Object.CFrame = LP.Character.HumanoidRootPart.CFrame + LP.Character.HumanoidRootPart.CFrame.lookVector * 3
		end
		clientSided()
	end
end

CBRINGplr = ""
cbringing = false
cbringingall = false
Commands.cbring = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "all" or string.lower(tostring(args[1])) == "others" then
			cbringingall = true
		else
			for i,v in pairs(findPlayer(args[1])) do
				CBRINGplr = v
				cbringing = true
			end
		end
		if args[2] then
			CBRINGamount = args[2]
		else
			CBRINGamount = 3
		end
		clientSided()
	end
end

Commands.uncbring = function(args)
	cbringing = false
	cbringingall = false
end

Commands.cfreeze = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			v.Character.HumanoidRootPart.Anchored = true
		end
		clientSided()
	end
end

Commands.uncfreeze = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			v.Character.HumanoidRootPart.Anchored = false
		end
	else
		for i,all in pairs(gsPlayers:GetPlayers()) do
			all.Character.HumanoidRootPart.Anchored = false
		end
	end
end

Commands.unattach = function(args)
	local function getout(player,player2)
	local char1,char2=player.Character,player2.Character
	if char1 and char2 then
	char1:MoveTo(char2.Head.Position)
	end
	end
	getout(LP, LP)
end

currentToolSize = ""
Commands.reach = function(args)
	if args[1] then
		for i,v in pairs(LP.Character:GetDescendants()) do
			if v:IsA("Tool") then
				if string.lower(tostring(args[1])) == "off" then
					v.Handle.Size = currentToolSize
					v.Handle.SelectionBoxCreated:Destroy()
					LP.Character.Humanoid:UnequipTools()
				elseif string.lower(tostring(args[1])) == "on" then
					if args[2] then
						currentToolSize = v.Handle.Size
						local a = Instance.new("SelectionBox",v.Handle)
						a.Name = "SelectionBoxCreated"
						a.Adornee = v.Handle
						v.Handle.Size = Vector3.new(0.5,0.5,args[2])
						v.GripPos = Vector3.new(0,0,0)
						LP.Character.Humanoid:UnequipTools()
					else
						currentToolSize = v.Handle.Size
						local a = Instance.new("SelectionBox",v.Handle)
						a.Name = "SelectionBoxCreated"
						a.Adornee = v.Handle
						v.Handle.Size = Vector3.new(0.5,0.5,60)
						v.GripPos = Vector3.new(0,0,0)
						LP.Character.Humanoid:UnequipTools()
					end
				end
			end
		end
	end
end

Commands.droptool = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Parent = gsWorkspace
		end
	end
	for i,a in pairs(LP.Backpack:GetDescendants()) do
		if a:IsA("Tool") then
			a.Parent = gsWorkspace
		end
	end
end

Commands.drophats = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Hat") then
			v.Parent = gsWorkspace
		end
	end
end

Commands.hidecmdbar = function(args)
	CMDBAR.Visible = false
end

Commands.showcmdbar = function(args)
	CMDBAR.Visible = true
end

Commands.prefix = function(args)
	if args[1] then
		commandPrefix = string.sub(tostring(args[1]), 1, 1)
		fullUpdate()
	end
end

Commands.removeinvis = function(args)
	for i,v in pairs(gsWorkspace:GetDescendants()) do
		if v:IsA("Part") and v.Name ~= "HumanoidRootPart" then
			if v.Transparency == 1 then
				v:Destroy()
			end
		end
	end
	clientSided()
end

Commands.removefog = function(args)
	gsLighting.FogStart = 0
	gsLighting.FogEnd = 9999999999999
	clientSided()
end

Commands.animation = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "gui" then
			loadstring(game:HttpGet(("https://pastebin.com/raw/mdbTSP4d"),true))()
		else
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://".. tostring(args[1])
			local track = LP.Character.Humanoid:LoadAnimation(Anim)
			if args[2] then
				track:Play(.1, 1, args[2])
			else
				track:Play(.1, 1, 1)
			end
		end
	end
end

Commands.btools = function(args)
	local Clone_T = Instance.new("HopperBin",LP.Backpack)
	Clone_T.BinType = "Clone"
	local Destruct = Instance.new("HopperBin",LP.Backpack)
	Destruct.BinType = "Hammer"
	local Hold_T = Instance.new("HopperBin",LP.Backpack)
	Hold_T.BinType = "Grab"
	clientSided()
end

Commands.esp = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			local espPlayer = v
			for i,createESP in pairs(espPlayer.Character:GetDescendants()) do
				if createESP:IsA("Part") or createESP:IsA("MeshPart") then
					if createESP.Name ~= "HumanoidRootPart" and createESP.Name ~= "Handle" then
						local current = true
						local espBOX = Instance.new("BoxHandleAdornment")
						espBOX.Parent = gsCoreGui
						espBOX.Name = "rGET"..espPlayer.Name
						espBOX.Adornee = createESP
						espBOX.AlwaysOnTop = true
						espBOX.ZIndex = 0
						espBOX.Size = createESP.Size
						espBOX.Transparency = 0.3
						local AboveHead = Instance.new("BillboardGui")
						AboveHead.Parent = gsCoreGui
						AboveHead.Adornee = espPlayer.Character.Head
						AboveHead.Name = "rGET"..espPlayer.Name
						AboveHead.Size = UDim2.new(0, 100, 0, 100)
						AboveHead.StudsOffset = Vector3.new(0, 1, 0)
						AboveHead.AlwaysOnTop = true
						local Info = Instance.new("TextLabel")
						Info.Parent = AboveHead
						Info.BackgroundTransparency = 1
						Info.Position = UDim2.new(0, 0, 0, 0)
						Info.Size = UDim2.new(1, 0, 0, 40)
						Info.TextColor3 = Color3.fromRGB(200,200,200)
						Info.TextStrokeTransparency = 0.5
						Info.TextSize = 15
						if espPlayer.TeamColor == LP.TeamColor then
							espBOX.Color = BrickColor.new("Lime green")
							Info.TextStrokeColor3 = Color3.fromRGB(10,100,10)
						else
							espBOX.Color = BrickColor.new("Really red")
							Info.TextStrokeColor3 = Color3.fromRGB(100,10,10)
						end
						game:GetService('RunService').Stepped:connect(function()
							if current and LP.Character.Humanoid and espPlayer.Character.HumanoidRootPart then
								Info.Text = espPlayer.Name.." (".. math.floor((LP.Character.HumanoidRootPart.Position - espPlayer.Character.HumanoidRootPart.Position).magnitude)..")"
							end
						end)
						espPlayer.Character.Humanoid.Died:Connect(function()
							current = false
							espBOX:Destroy()
							AboveHead:Destroy()
						end)
						gsPlayers.PlayerRemoving:Connect(function(plr)
							if plr == espPlayer then
								current = false
								espBOX:Destroy()
								AboveHead:Destroy()
							end
						end)
					end
				end
			end
		end
		clientSided()
	end
end

Commands.unesp = function(args)
	if not args[1] then
		for i,v in pairs(gsCoreGui:GetDescendants()) do
			if string.sub(v.Name, 1, 4) == "rGET" then
				v:Destroy()
			end
		end
	else
		for i,v in pairs(gsCoreGui:GetDescendants()) do
			if string.sub(v.Name, 1, 4) == "rGET" then
				for i,a in pairs(findPlayer(args[1])) do
					if string.sub(v.Name, 5) == a.Name then
						v:Destroy()
					end
				end
			end
		end
	end
end

Commands.dice = function(args)
	game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("You rolled a dice for ".. tostring(math.random(1, 6)), "All")
end

Commands.random = function(args)
	if args[1] and args[2] then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Picking random number between "..args[1].." and "..args[2].."... The number is ".. tostring(math.random(args[1], args[2])), "All")
	end
end

Commands.closegame = function(args)
	game:Shutdown()
end

Commands.savetool = function(args)
	if args[1] then
		for i,a in pairs(LP.Character:GetDescendants()) do
			if a:IsA("Tool") and string.lower(a.Name) == string.lower(tostring(args[1])) then
				a.Parent = LP
				local oldName = a.Name
				a.Name = "saved "..oldName
			else
				for i,n in pairs(LP.Backpack:GetDescendants()) do
					if n:IsA("Tool") and string.lower(n.Name) == string.lower(tostring(args[1])) then
						n.Parent = LP
						local sOldName = n.Name
						n.Name = "saved "..sOldName
					end
				end
			end
		end
	else
		for i,v in pairs(LP.Character:GetDescendants()) do
			if v:IsA("Tool") then
				v.Parent = LP
				local oldName = v.Name
				v.Name = "saved "..oldName
			end
		end
	end
end

Commands.loadtool = function(args)
	if args[1] then
		for i,a in pairs(LP:GetChildren()) do
			if a:IsA("Tool") and string.sub(a.Name, 1, 5) == "saved" and string.lower(string.sub(a.Name, 7)) == string.lower(tostring(args[1])) then
				a.Parent = LP.Backpack
				local currentName = a.Name
				a.Name = string.sub(currentName, 7)
			end
		end
	else
		for i,v in pairs(LP:GetChildren()) do
			if string.sub(v.Name, 1, 5) == "saved" then
				v.Parent = LP.Backpack
				local currentName = v.Name
				v.Name = string.sub(currentName, 7)
			end
		end
	end
end

Commands.savealltool = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Tool") then
			v.Parent = LP
			local oldName = v.Name
			v.Name = "saved "..oldName
		end
	end
	for i,v in pairs(LP.Backpack:GetDescendants()) do
		if v:IsA("Tool") then
			v.Parent = LP
			local oldName = v.Name
			v.Name = "saved "..oldName
		end
	end
end

Commands.loadalltool = function(args)
	for i,v in pairs(LP:GetChildren()) do
		if v:IsA("Tool") and string.sub(v.Name, 1, 5) == "saved" then
			v.Parent = LP.Backpack
			local currentName = v.Name
			v.Name = string.sub(currentName, 7)
		end
	end
end

Mouse.KeyDown:Connect(function(key) 
	if key == clicktpKEY and clicktpACTIVE == true then 
		if Mouse.Target then 
			LP.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z)
		end 
	end
	if key == clickdelKEY and clickdelACTIVE == true then 
		if Mouse.Target then 
			Mouse.Target:Destroy()
		end 
	end
end)
Mouse.Button1Down:Connect(function()
	if clicktpACTIVE == true and clicktpCLICK == true then
		if Mouse.Target then 
			LP.Character.HumanoidRootPart.CFrame = CFrame.new(Mouse.Hit.x, Mouse.Hit.y + 5, Mouse.Hit.z)
		end 
	end
	if clickdelACTIVE == true and clickdelCLICK == true then
		if Mouse.Target then
			Mouse.Target:Destroy()
		end
	end
end)

clicktpKEY = ""
clickdelKEY = ""
clicktpACTIVE = false
clickdelACTIVE = false
clicktpCLICK = false
clickdelCLICK = false

Commands.clicktp = function(args)
	if args[1] then
		clicktpKEY = string.sub(tostring(args[1]), 1, 1)
		clicktpACTIVE = true
		clicktpCLICK = false
	else
		clicktpKEY = ""
		clicktpACTIVE = true
		clicktpCLICK = true
	end
	clientSided()
end

Commands.clickdel = function(args)
	if args[1] then
		clickdelKEY = string.sub(tostring(args[1]), 1, 1)
		clickdelACTIVE = true
		clickdelCLICK = false
	else
		clickdelKEY = ""
		clickdelACTIVE = true
		clickdelCLICK = true
	end
	clientSided()
end

Commands.unclicktp = function(args)
	clicktpACTIVE = false
end

Commands.unclickdel = function(args)
	clickdelACTIVE = false
end

Commands.oof = function(args)
	spawn(function()
		while wait() do
		   for i,v in pairs(game:GetService'Players':GetPlayers()) do
		       if v.Character ~= nil and v.Character:FindFirstChild'Head' then
		           for _,x in pairs(v.Character.Head:GetChildren()) do
		               if x:IsA'Sound' then x.Playing = true x.CharacterSoundEvent:FireServer(true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true, true) end
		           end
		       end
		   end
		end
	end)
end

Commands.chatlogs = function(args)
	MainChatFrame.Position = UDim2.new(0, 760, 0, 261)
	MainChatFrame.Visible = true
end

Commands.stopadmin = function(args)
	commandPrefix = "     "
	following = false
	trailing = false
	annoying = false
	CMDBAR.Visible = false
	Match.Visible = false
	flying = false
end

Commands.freecam = function(args)
	for i,getFC in pairs(gsWorkspace:GetDescendants()) do
		if getFC.Name == "rGETpartNUMBER2" then
			getFC:Destroy()
		end
	end
	local CameraPart = Instance.new("Part")
	CameraPart.CanCollide = false
	CameraPart.CFrame = LP.Character.Head.CFrame
	CameraPart.Locked = true
	CameraPart.Transparency = 1
	CameraPart.Size = Vector3.new(1, 1, 1)
	CameraPart.Parent = gsWorkspace
	CameraPart.Name = "rGETpartNUMBER2"
	if bypassMODE == true then
		loopviewfc = true
	elseif bypassMODE == false then
		gsWorkspace.CurrentCamera.CameraSubject = CameraPart
	end
	local speedget = 1
	local T = CameraPart
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local SPEED = speedget
	if args[1] then
		speedfly = tonumber(args[1])
	else
		speedfly = 1
	end
	local function freecamfly()
		LP.Character.Head.Anchored = true
		doFREECAM = true
		local BG = Instance.new('BodyGyro', T)
		local BV = Instance.new('BodyVelocity', T)
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe = T.CFrame
		BV.velocity = Vector3.new(0, 0.1, 0)
		BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		spawn(function()
		repeat wait()
		if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
		SPEED = 50
		elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
		SPEED = 0
		end
		if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
		BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
		lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
		elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
		BV.velocity = ((workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
		else
		BV.velocity = Vector3.new(0, 0.1, 0)
		end
		BG.cframe = workspace.CurrentCamera.CoordinateFrame
				until not doFREECAM
				CONTROL = {F = 0, B = 0, L = 0, R = 0}
				lCONTROL = {F = 0, B = 0, L = 0, R = 0}
				SPEED = 0
				BG:destroy()
				BV:destroy()
			end)
		end
	Mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = speedfly
		elseif KEY:lower() == 's' then
			CONTROL.B = -speedfly
		elseif KEY:lower() == 'a' then
			CONTROL.L = -speedfly 
		elseif KEY:lower() == 'd' then 
			CONTROL.R = speedfly
		end
	end)
	Mouse.KeyUp:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 0
		elseif KEY:lower() == 's' then
			CONTROL.B = 0
		elseif KEY:lower() == 'a' then
			CONTROL.L = 0
		elseif KEY:lower() == 'd' then
			CONTROL.R = 0
		end
	end)
	freecamfly()
end

Commands.fc = function(args)
	if args[1] then
		run(commandPrefix.."freecam "..args[1])
	else
		run(commandPrefix.."freecam")
	end
end

Commands.unfreecam = function(args)
	doFREECAM = false
	LP.Character.Head.Anchored = false
	view(LP)
	if gsWorkspace.rGETpartNUMBER2 then
		gsWorkspace.rGETpartNUMBER2:Destroy()
	end
	loopviewfc = false
end

Commands.unfc = function(args)
	doFREECAM = false
	LP.Character.Head.Anchored = false
	view(LP)
	if gsWorkspace.rGETpartNUMBER2 then
		gsWorkspace.rGETpartNUMBER2:Destroy()
	end
	loopviewfc = false
end

Commands.gotofc = function(args)
	doFREECAM = false
	LP.Character.Head.Anchored = false
	view(LP)
	pcall(function()
		LP.Character.HumanoidRootPart.CFrame = gsWorkspace.rGETpartNUMBER2.CFrame
		gsWorkspace.rGETpartNUMBER2:Destroy()
	end)
	loopviewfc = false
end

Commands.fctp = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			pcall(function()
				gsWorkspace.rGETpartNUMBER2.CFrame = v.Character.Head.CFrame
			end)
		end
	end
end

Commands.cmds = function(args)
	CMDSmain.Position = UDim2.new(0, 695, 0, 297)
	CMDSmain.Visible = true
	CMDSmain:TweenSize(UDim2.new(0, 440, 0, 367), "InOut", "Sine", 1)
end

Commands.fullcredits = function(args)
	Notification("info", "Credit to Autumn, Josh and 3dsboy08 (Help with "..commandPrefix.."remotespy and anti client kick)", 1)
	Notification("info", "Credit to Infinite Yield developers (Assisted in "..commandPrefix.."esp and "..commandPrefix.."fly commands)", 1)
	Notification("info", "Credit to Timeless ("..commandPrefix.."invisible) and Harkinian ("..commandPrefix.."shutdown)", 1)
	Notification("info", "Credit to DEX creators ("..commandPrefix.."explorer) and xFunnieuss ("..commandPrefix.."spinhats)", 1)
	Notification("info", "Only creator is illremember", 2)
end

Commands.hotkey = function(args)
	if args[1] then
		local hotkeyKEY = string.sub(tostring(args[1]), 1, 3)
		if args[2] then
			table.remove(args, 1)
			local hotkeyCMD = table.concat(args, " ")
			table.insert(hotkeys, hotkeyCMD.."//"..hotkeyKEY)
			fullUpdate()
			Notification("info", "Hotkey added!", 1)
		end
	end
end

Mouse.KeyDown:Connect(function(key)
	for i,v in pairs(hotkeys) do
		local currentKey = string.match(v, "[%a%d]+$")
		if string.len(currentKey) == 1 then
			if key == string.sub(v, #v, #v) then
				local commandtoRUN = string.match(v, "^[%w%s]+")
				if string.sub(string.lower(tostring(commandtoRUN)), 1, 3) == "fly" then
					if bypassMODE == true then
						if doFREECAM == false then
							run(commandPrefix..tostring(commandtoRUN))
						else
							run(commandPrefix.."unfly")
						end
					else
						if flying == false then
							run(commandPrefix..tostring(commandtoRUN))
						else
							run(commandPrefix.."unfly")
						end
					end
				elseif tostring(commandtoRUN) == "noclip" then
					if noclip == false then
						run(commandPrefix..tostring(commandtoRUN))
					else
						run(commandPrefix.."clip")
					end
				elseif tostring(commandtoRUN) == "freecam" or tostring(commandtoRUN) == "fc" then
					if doFREECAM == false then
						run(commandPrefix..tostring(commandtoRUN))
					else
						if fchotkeymode == "goto" then
							run(commandPrefix.."gotofc")
						elseif fchotkeymode == "unfc" then
							run(commandPrefix.."unfreecam")
						end
					end
				else
					run(commandPrefix..tostring(commandtoRUN))
				end
			end
		else
			if string.lower(string.sub(tostring(currentKey), 1, 1)) == "f" then
				local commandtoRUN = string.match(v, "^[%w%s]+")
				local hotkeyadjust = tonumber(string.sub(currentKey, 2, 3)) + 25
				if string.byte(key) == hotkeyadjust then
					if string.sub(string.lower(tostring(commandtoRUN)), 1, 3) == "fly" then
						if bypassMODE == true then
							if doFREECAM == false then
								run(commandPrefix..tostring(commandtoRUN))
							else
								run(commandPrefix.."unfly")
							end
						else
							if flying == false then
								run(commandPrefix..tostring(commandtoRUN))
							else
								run(commandPrefix.."unfly")
							end
						end
					elseif tostring(commandtoRUN) == "noclip" then
						if noclip == false then
							run(commandPrefix..tostring(commandtoRUN))
						else
							run(commandPrefix.."clip")
						end
					elseif tostring(commandtoRUN) == "freecam" or tostring(commandtoRUN) == "fc" then
						if doFREECAM == false then
							run(commandPrefix..tostring(commandtoRUN))
						else
							if fchotkeymode == "goto" then
								run(commandPrefix.."gotofc")
							elseif fchotkeymode == "unfc" then
								run(commandPrefix.."unfreecam")
							end
						end
					else
						run(commandPrefix..tostring(commandtoRUN))
					end
				end
			end
		end
	end
end)

Commands.removeallhotkey = function(args)
	hotkeys = {}
	fullUpdate()
	Notification("warning", "All hotkeys reset/removed", 6)
end

Commands.removehotkey = function(args)
	if args[1] then
		for i,v in pairs(hotkeys) do
			local currentKey = string.match(v, "[%a%d]+$")
			if currentKey == string.lower(tostring(args[1])) then
				table.remove(hotkeys, i)
				fullUpdate()
			end
		end
	end
end

Commands.printhotkeys = function(args)
	for i,v in pairs(hotkeys) do
		warn("HOTKEYS:")
		print(v)
	end
end

Commands.os = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.Name.." is on "..v.OsPlatform, "All")
		end
	end
end

spinning = false
Commands.spin = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			run(commandPrefix.."attach "..v.Name)
			annplr = v
			annoying = true
			spinning = true
		end
	end
end

Commands.unspin = function(args)
	if spinning then
		annoying = false
		spinning = false
	end
	run(""..commandPrefix.."unattach")
end

Commands.explorer = function(args)
	loadstring(game:GetObjects("rbxassetid://418957341")[1].Source)()
	Notification("info", "Loaded DEX explorer!", 5)
end

Commands.maxzoom = function(args)
	if args[1] then
		LP.CameraMaxZoomDistance = args[1]
	end
end

Commands.stare = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			stareplr = v
			staring = true
		end
	end
end

Commands.unstare = function(args)
	staring = false
end

Commands.tempgod = function(args)
	local hu = LP.Character.Humanoid
	local l = Instance.new("Humanoid")
	l.Parent = LP.Character
	l.Name = "Humanoid"
	wait(0.1)
	hu.Parent = LP
	gsWorkspace.CurrentCamera.CameraSubject = LP.Character
	LP.Character.Animate.Disabled = true
	wait(0.1)
	LP.Character.Animate.Disabled = false
	Notification("info", "Enabled Temp FE Godmode", 4)
end

Commands.void = function(args)
	if hasTools() == false then
		Notification("warning", "You need a tool in your backpack/inventory to use this command.", 8)
	else
		FEGodmode()
		for i,v in pairs(LP.Backpack:GetChildren())do
			LP.Character.Humanoid:EquipTool(v)
		end
		if args[1] then
			for i,v in pairs(findSinglePlayer(args[1])) do
				local NOW = LP.Character.HumanoidRootPart.CFrame
				LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
				wait(0.3)
				LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
				local function tp(player,player2)
				local char1,char2=player.Character,player2.Character
				if char1 and char2 then
				char1:MoveTo(char2.Head.Position)
				end
				end
				wait(0.5)
				LP.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(999999999999999,0,999999999999999))
			end
		end
	end
end

Commands.freefall = function(args)
	if hasTools() == false then
		Notification("warning", "You need a tool in your backpack/inventory to use this command.", 8)
	else
		FEGodmode()
		for i,v in pairs(LP.Backpack:GetChildren())do
			LP.Character.Humanoid:EquipTool(v)
		end
		if args[1] then
			for i,v in pairs(findSinglePlayer(args[1])) do
				local NOW = LP.Character.HumanoidRootPart.CFrame
				LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
				wait(0.3)
				LP.Character.HumanoidRootPart.CFrame = v.Character["Left Arm"].CFrame
				wait(0.5)
				LP.Character.HumanoidRootPart.CFrame = NOW
				wait(0.5)
				LP.Character.HumanoidRootPart.CFrame = NOW
				wait(0.6)
				LP.Character.HumanoidRootPart.CFrame = CFrame.new(0,50000,0)
			end
		end
	end
end

Commands.version = function(args)
	Notification("info", "Current Shattervast Version: V2.8", 7)
end

Commands.shiftlockon = function(args)
	LP.DevEnableMouseLock = true
	Notification("info", "Shift lock enabled!", 5)
end

for i,needChat in pairs(gsPlayers:GetPlayers()) do
	needChat.Chatted:Connect(function(msg)
		if copychatall then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
		end
	end)
end
gsPlayers.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		if copychatall then
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")
		end
	end)
end)

copychatplayer = nil
copychatall = false
copychatACTIVE = false
Commands.copychat = function(args)
	if args[1] then
		if string.lower(args[1]) == "all" or string.lower(args[1]) == "others" then
			copychatall = true
		else
			for i,v in pairs(findPlayer(args[1])) do
				if v ~= LP then
					copychatplayer = v
					copychatACTIVE = true
				end
			end
		end
	end
end

Commands.uncopychat = function(args)
	copychatall = false
	copychatACTIVE = false
end

Commands.newkill =  function(args)
	if hasTools() == false then
		Notification("warning", "You need TWO tools in your backpack/inventory to use this command.", 8)
	else
		if args[1] then
			for i,plr in pairs(findSinglePlayer(args[1])) do
				for i,v in pairs(LP.Backpack:GetChildren())do
					LP.Character.Humanoid:EquipTool(v)
				end	
				for i,v in pairs(LP.Backpack:GetDescendants()) do
					if v:IsA("Tool") then
						v.Parent = LP.Character
						wait()
						v.Parent = plr.Character
					end
				end
				wait(0.4)
				LP.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(4000000, -10, 200000))
			end
		end
	end
end

Commands.newattach =  function(args)
	if hasTools() == false then
		Notification("warning", "You need TWO tools in your backpack/inventory to use this command.", 8)
	else
		if args[1] then
			for i,plr in pairs(findSinglePlayer(args[1])) do
				for i,v in pairs(LP.Backpack:GetChildren())do
					LP.Character.Humanoid:EquipTool(v)
				end	
				for i,v in pairs(LP.Backpack:GetDescendants()) do
					if v:IsA("Tool") then
						v.Parent = LP.Character
						wait()
						v.Parent = plr.Character
					end
				end
			end
		end
	end
end

Commands.newbring =  function(args)
	if hasTools() == false then
		Notification("warning", "You need TWO tools in your backpack/inventory to use this command.", 8)
	else
		if args[1] then
			for i,plr in pairs(findSinglePlayer(args[1])) do
				local NOW = LP.Character.HumanoidRootPart.CFrame
				for i,v in pairs(LP.Backpack:GetChildren())do
					LP.Character.Humanoid:EquipTool(v)
				end	
				for i,v in pairs(LP.Backpack:GetDescendants()) do
					if v:IsA("Tool") then
						v.Parent = LP.Character
						wait()
						v.Parent = plr.Character
					end
				end
				wait(0.4)
				LP.Character.HumanoidRootPart.CFrame = NOW
				wait(0.4)
				LP.Character.HumanoidRootPart.CFrame = NOW
			end
		end
	end
end

Commands.spawn = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "ws" then
			spawnWS = args[2] or CurrentWalkspeed
			LP.Character.Humanoid.WalkSpeed = args[2] or CurrentWalkspeed
		elseif string.lower(tostring(args[1])) == "jp" then
			spawnJP = args[2] or CurrentJumppower
			LP.Character.Humanoid.JumpPower = args[2] or CurrentJumppower
		elseif string.lower(tostring(args[1])) == "hh" then
			spawnHH = args[2] or CurrentHipheight
			LP.Character.Humanoid.HipHeight = args[2] or CurrentHipheight
		elseif string.lower(tostring(args[1])) == "god" then
			spawningfegod = true
			FEGodmode()
		end
	end
end

Commands.unspawn = function(args)
	spawnWS = CurrentWalkspeed
	spawnJP = CurrentJumppower
	spawnHH = CurrentHipheight
	spawningfegod = false
	Notification("info", "Reset spawning stats", 5)
end

savingtoolsloop = false
Commands.autosavetool = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "on" then
			savingtoolsloop = true
		elseif string.lower(tostring(args[1])) == "off" then
			savingtoolsloop = false
		end
	end
end

modeFling = false
modeCompliment = false
modeMove = false
modeInfo = false
Commands.beginbot = function(args)
	if not args[1] then
		print("fling // compliment // move // info")
		Notification("info", ""..commandPrefix.."beginbot Modes printed", 5)
	else
		if string.lower(tostring(args[1])) == "fling" then
			modeFling = true
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hello! I am Fling-Bot 5000! Say !fling [Player] to fling that player!", "All")
		elseif string.lower(tostring(args[1])) == "compliment" then
			modeCompliment = true
			complimentReady = true
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Good day, I am Compliment-Bot. Say !c [Player] to give them a compliment.", "All")
		elseif string.lower(tostring(args[1])) == "move" then
			modeMove = true
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hi, I am movement bot. Commands you can use: !walk [Player], !bringbot, !follow [Player].", "All")
		elseif string.lower(tostring(args[1])) == "info" then
			modeInfo = true
			infoReady = true
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Hey, I'm Info-Bot. Commands you can use: !age [Player], !id [Player].", "All")
		end
	end
end

Commands.endbot = function(args)
	if not args[1] then
		modeFling = false
		modeCompliment = false
		modeMove = false
		modeInfo = false
	else
		if string.lower(tostring(args[1])) == "fling" then
			modeFling = false
		elseif string.lower(tostring(args[1])) == "compliment" then
			modeCompliment = false
		elseif string.lower(tostring(args[1])) == "move" then
			modeMove = false
		elseif string.lower(tostring(args[1])) == "info" then
			modeInfo = false
		end
	end
end

Commands.stopsit = function(args)
	stopsitting = true
end

Commands.gosit = function(args)
	stopsitting = false
end

chattingerror = true
Commands.chaterror = function(args)
	if chattingerror then
		chattingerror = false
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ", "All")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ", "All")
		wait(4)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ", "All")
		wait(3)
		chattingerror = true
	end
end

spawnpos = nil
spawningpos = true
Commands.spawnpoint = function(args)
	spawnpos = LP.Character.HumanoidRootPart.CFrame
	spawningpos = true
	Notification("info", "Spawn point has been set! Use "..commandPrefix.."nospawn to remove.", 6)
end

Commands.nospawn = function(args)
	spawningpos = false
	Notification("info", "Spawn point has been removed. Use "..commandPrefix.."spawnpoint to enable.", 6)
end

Commands.bypass = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "on" then
			bypassMODE = true
			Notification("warning", "Bypass mode turned on, this changes functions of "..commandPrefix.."fly and other commands to bypass most anti-exploits.", 7)
		elseif string.lower(tostring(args[1])) == "off" then
			bypassMODE = false
			Notification("warning", "Bypass mode has been turned off.", 7)
		end
	end
end

Commands.fixcam = function(args)
	gsWorkspace.CurrentCamera:Destroy()
	wait(0.1)
	game:GetService("Workspace").CurrentCamera.CameraSubject = LP.Character.Humanoid
	game:GetService("Workspace").CurrentCamera.CameraType = "Custom"
	LP.CameraMinZoomDistance = 0.5
	LP.CameraMaxZoomDistance = 400
	LP.CameraMode = "Classic"
	LP.DevCameraOcclusionMode = CurrentNormal
end

Commands.gotoobj = function(args)
	if args[1] then
		for i,v in pairs(gsWorkspace:GetDescendants()) do
			if string.lower(v.Name) == string.lower(tostring(args[1])) then
				LP.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 3, 0)
			end
		end
	end
end

Commands.breakcam = function(args)
	gsWorkspace.CurrentCamera.CameraSubject = LP.Character.Head
end

Commands.inviscam = function(args)
	LP.DevCameraOcclusionMode = "Invisicam"
end

printobjKEY = ""
printobjCLICKING = false
printobjACTIVE = false

Commands.printobj = function(args)
	if args[1] then
		printobjKEY = string.sub(tostring(args[1]), 1, 1)
		printobjACTIVE = true
		printobjCLICKING = false
	else
		printobjKEY = ""
		printobjACTIVE = true
		printobjCLICKING = true
	end
end

Mouse.KeyDown:Connect(function(key) 
	if key == printobjKEY and printobjACTIVE == true then 
		if Mouse.Target then
			local path = Mouse.Target:GetFullName()
			local getPath = "game:GetService(\"Workspace\")"
			local getSpaces = ""
			local separate = {}
			local a = nil
			for v in string.gmatch(string.sub(path, 10), "[^.]+") do
				if string.match(v, " ") then
					a = "["..v.."]"
					table.insert(separate, a)
				else
					a = "."..v
					table.insert(separate, a)
				end
				getSpaces = table.concat(separate, "")
			end
			local fullPath = getPath..getSpaces
			print(fullPath)
		end 
	end
end)
Mouse.Button1Down:Connect(function()
	if printobjCLICKING == true and printobjACTIVE == true then
		if Mouse.Target then 
			local path = Mouse.Target:GetFullName()
			local getPath = "game:GetService(\"Workspace\")"
			local getSpaces = ""
			local separate = {}
			local a = nil
			for v in string.gmatch(string.sub(path, 10), "[^.]+") do
				if string.match(v, " ") then
					a = "["..v.."]"
					table.insert(separate, a)
				else
					a = "."..v
					table.insert(separate, a)
				end
				getSpaces = table.concat(separate, "")
			end
			local fullPath = getPath..getSpaces
			print(fullPath)
		end 
	end
end)

Commands.unprintobj = function(args)
	printobjACTIVE = false
	printobjCLICKING = false
end

Commands.hotkeyfc = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "goto" then
			fchotkeymode = "goto"
		elseif string.lower(tostring(args[1])) == "unfc" then
			fchotkeymode = "unfc"
		end
		fullUpdate()
	end
end

Commands.carpet = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			if v ~= nil then
				annoying = true
				annplr = v
				local carpetAnimation = Instance.new("Animation")
				carpetAnimation.AnimationId = "rbxassetid://282574440"
				carpetTrack = LP.Character.Humanoid:LoadAnimation(carpetAnimation)
				carpetTrack:Play(.1, 1, 1)
			end
		end
	end
end

Commands.uncarpet = function(args)
	annoying = false
	carpetTrack:Stop()
end

Commands.brickcreate = function(args)
	if args[1] then
		local createPosition = LP.Character.HumanoidRootPart.CFrame
		if args[2] and args[3] and args[4] then
			createPosition = CFrame.new(Vector3.new(args[2], args[3], args[4]))
		else
			createPosition = LP.Character.HumanoidRootPart.CFrame
		end
		for i = 1, args[1] do
			LP.Character.HumanoidRootPart.CFrame = createPosition
			run(commandPrefix.."blockhats")
			wait(0.2)
			run(commandPrefix.."drophats")
			wait(0.2)
			run(commandPrefix.."reset")
			wait(6)
		end
	end
end

Commands.forward = function(args)
	if args[1] then
		forwardSpeed = args[1]
	else
		forwardSpeed = 1
	end
	cmdForward = true
end

Commands.unforward = function(args)
	cmdForward = false
end

Commands.id = function(args)
	if args[1] then
		for i,v in pairs(findPlayer(args[1])) do
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.Name.." Account ID: "..v.UserId.."!", "All")
		end
	end
end

Commands.spinhats = function(args) -- Credit to xFunnieuss
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Hat") then
			local keep = Instance.new("BodyPosition") keep.Parent = v.Handle keep.Name = "no"
			local spin = Instance.new("BodyAngularVelocity") spin.Parent = v.Handle spin.Name = "ha"
			if v.Handle.AccessoryWeld then
				v.Handle.AccessoryWeld:Destroy()
			end
			if args[1] then
				spin.AngularVelocity = Vector3.new(0, args[1], 0)
				spin.MaxTorque = Vector3.new(0, args[1] * 2, 0)
			else
				spin.AngularVelocity = Vector3.new(0, 100, 0)
				spin.MaxTorque = Vector3.new(0, 200, 0)
			end
			keep.P = 30000
			keep.D = 50
			spinObj = keep
			spinTOhead = true
		end
	end
end

Commands.unspinhats = function(args)
	for i,v in pairs(LP.Character:GetDescendants()) do
		if v:IsA("Accessory") or v:IsA("Hat") then
			pcall(function()
				run(commandPrefix.."drophats")
				wait(2)
				v.Handle.spin:Destroy()
				v.Handle.keep:Destroy()
			end)
		end
	end
end

savedmap = {}
Commands.savemap = function(args)
	for i,v in pairs(gsWorkspace:GetChildren()) do
		v.Archivable = true
		if not v:IsA("Terrain") and not v:IsA("Camera") then
			if not gsPlayers:FindFirstChild(v.Name) then
				table.insert(savedmap, v:Clone())
			end
		end
	end
	clientSided()
end

Commands.loadmap = function(args)
	for i,v in pairs(gsWorkspace:GetChildren()) do
		if not v:IsA("Terrain") and not v:IsA("Camera") then
			if not gsPlayers:FindFirstChild(v.Name) then
				pcall(function()
					v:Destroy()
				end)
			end
		end
	end
	for i,a in ipairs(savedmap) do
		a:Clone().Parent = gsWorkspace
	end
	clientSided()
end

Commands.creatorid = function(args)
	LP.UserId = game.CreatorId
end

Commands.gameid = function(args)
	Notification("info", "Current game's ID = "..game.GameId, 8)
end

Commands.delobj = function(args)
	if args[1] then
		for i,v in pairs(gsWorkspace:GetDescendants()) do
			if string.lower(v.Name) == string.lower(tostring(args[1])) then
				v:Destroy()
				clientSided()
			end
		end
	end
end

Commands.glide = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			local goal = {}
			goal.CFrame = v.Character.HumanoidRootPart.CFrame
			local defaultSpeed = 3
			if args[2] then
				if tonumber(args[2]) < 10 then
					defaultSpeed = tonumber(args[2])
				else
					defaultSpeed = 5
				end
			else
				defaultSpeed = 3
			end
			local goalFunction = gsTween:Create(LP.Character.HumanoidRootPart, TweenInfo.new(defaultSpeed, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), goal)
			goalFunction:Play()
		end
	end
end

stutterON = false
Commands.stutter = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "on" then
			stutterON = true
		elseif string.lower(tostring(args[1])) == "off" then
			stutterON = false
			wait(0.4)
			LP.Character.HumanoidRootPart.Anchored = false
		end 
	end
end

spawn(function()
	while wait(0.1) do
		if stutterON == true then
			LP.Character.HumanoidRootPart.Anchored = false
			wait(0.1)
			LP.Character.HumanoidRootPart.Anchored = true
		end
	end
end)

Commands.platform = function(args)
	local a = Instance.new("Part")
	a.Parent = gsWorkspace
	a.Size = Vector3.new(10, 1, 10)
	a.Anchored = true
	a.CFrame = LP.Character.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0)
	LP.Character.HumanoidRootPart.CFrame = a.CFrame + Vector3.new(0, 2, 0)
	clientSided()
	wait(20)
	a:Destroy()
end

Commands.servertime = function(args)
	Notification("info", "Server time is "..math.ceil(tonumber(gsWorkspace.DistributedGameTime)).." seconds.", 8)
end

Commands.ride = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://179224234"
			RIDEtrack = LP.Character.Humanoid:LoadAnimation(Anim)
			rideACTIVE = true
			ridePLAYER = v
			RIDEtrack:Play()
		end
	end
end

Commands.unride = function(args)
	RIDEtrack:Stop()
	rideACTIVE = false
end

Commands.cmute = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/mute "..v.Name, "All")
			clientSided()
		end
	end
end

Commands.uncmute = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("/unmute "..v.Name, "All")
		end
	end
end

Commands.hat = function(args)
	if args[1] then
		for i,v in pairs(findSinglePlayer(args[1])) do
			local Anim = Instance.new("Animation")
			Anim.AnimationId = "rbxassetid://282574440"
			HATtrack = LP.Character.Humanoid:LoadAnimation(Anim)
			rideACTIVE = true
			ridePLAYER = v
			HATtrack:Play()
			view(v)
		end
	end
end

Commands.unhat = function(args)
	HATtrack:Stop()
	rideACTIVE = false
	view(LP)
end

--[[Commands.spawnreset = function(args)
	if args[1] then
		if string.lower(tostring(args[1])) == "on" then
			spawningatreset = true
		elseif string.lower(tostring(args[1])) == "off" then
			spawningatreset = false
		end
	end
end]]

Commands.chat = function(args)
	if args[1] then
		local Chatmsg = table.concat(args, " ")
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Chatmsg, "All")
	end
end

-- findPlayer function (ALL, OTHERS, ME, NOOBS, VETERANS, OLDVETERANS, FRIENDS, NOFRIENDS, DEFAULT, RANDOM, SAMETEAM, NOTEAM, OTHERTEAM, TEAMname)
function findPlayer(plr)
    local players = {}
    local find = plr:lower()
	local getAllNames = getmultipleplayers(find)
	for i,mplr in pairs(getAllNames) do
    if mplr == "all" then
        for i,v in pairs(gsPlayers:GetPlayers()) do
            table.insert(players,v)
        end
    elseif mplr == "others" then
        for i,v in pairs(gsPlayers:GetPlayers()) do
            if v.Name ~= LP.Name then
                table.insert(players,v)
            end
        end 
	elseif mplr == "me" then
		table.insert(players,LP)
	elseif mplr == "noobs" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if v.AccountAge <= 3 then
				table.insert(players,v)
			end
		end
	elseif mplr == "veterans" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if v.AccountAge >= 365 then
				table.insert(players,v)
			end
		end
	elseif mplr == "oldveterans" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if v.AccountAge >= 1500 then
				table.insert(players,v)
			end
		end
	elseif mplr == "friends" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if v:IsFriendsWith(LP.UserId) and v.Name ~= LP.Name then
				table.insert(players,v)
			end
		end
	elseif mplr == "nofriends" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if not v:IsFriendsWith(LP.UserId) and v.Name ~= LP.Name then
				table.insert(players,v)
			end
		end
	elseif mplr == "default" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") then
				table.insert(players,v)
			end
		end
	elseif mplr == "random" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			table.insert(players,v[math.random(1, #v)])
		end
	elseif mplr == "sameteam" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if v.Team == LP.Team then
				table.insert(players,v)
			end
		end
	elseif mplr == "noteam" then
		for i,v in pairs(gsPlayers:GetPlayers()) do
			if v.Team == nil then
				table.insert(players,v)
			end
		end
	elseif mplr == "otherteam" then
			for i,v in pairs(gsPlayers:GetPlayers()) do
				if v.Team ~= LP.Team then
					table.insert(players,v)
				end
			end
	elseif string.sub(mplr, 1, 4) == "team" then
			for i,v in pairs(gsPlayers:GetPlayers()) do
				local spaceTEAM = {}
				for teamValues in (string.gmatch(string.sub(mplr, 5), "[^_]+")) do
					spaceTEAM[#spaceTEAM + 1] = teamValues
				end
				local gottrueteam = table.concat(spaceTEAM, " ")
				if string.lower(tostring(v.Team)) == string.lower(gottrueteam) then
					table.insert(players,v)
				end
			end	
	    else
			for i,v in pairs(gsPlayers:GetPlayers()) do
	            if string.lower(v.Name):sub(1, #mplr) == string.lower(mplr) then
	                table.insert(players,v)
	            end
			end
	    end
	end

    return players    
end
function getmultipleplayers(plr)
	local plrsgotten = {}
	for i in string.gmatch(plr,"[^,]+") do
		table.insert(plrsgotten,i)
	end
	return plrsgotten
end
function findSinglePlayer(plr)
    local players = {}
    local find = plr:lower()
	if find == "me" then
		table.insert(players,LP)
	else
		for i,v in pairs(gsPlayers:GetPlayers()) do
	        if string.lower(v.Name):sub(1, #find) == string.lower(find) then
	            table.insert(players,v)
	        end
		end
	end
	local oneplayer = {}
	pcall(function()
		table.insert(oneplayer, players[math.random(1, #players)])
	end)
	return oneplayer
end

-- Anti Kick

if getrawmetatable then
	function formatargs(getArgs,v)
		if #getArgs == 0 then 
			return "" 
		end
		
		local collectArgs = {}
		for k,v in next,getArgs do
			local argument = ""
			if type(v) == "string" then
				argument = "\""..v.."\""
			elseif type(v) == "table" then
				argument = "{" .. formatargs(v,true) .. "}"
			else
				argument = tostring(v)
			end
			if v and type(k) ~= "number" then
				table.insert(collectArgs,k.."="..argument)
			else
				table.insert(collectArgs,argument)
			end
		end
		return table.concat(collectArgs, ", ")
	end
	
	kicknum = 0
	local game_meta = getrawmetatable(game)
	local game_namecall = game_meta.__namecall
	local game_index = game_meta.__index
	local w = (setreadonly or fullaccess or make_writeable)
	pcall(w, game_meta, false)
	game_meta.__namecall = function(out, ...)
		local args = {...}
		local Method = args[#args]
		args[#args] = nil
		
		if Method == "Kick" and out == LP then
			kicknum = kicknum + 1
			warn("Blocked client-kick attempt "..kicknum)
			return
		end
		
		if antiremotes then
			if Method == "FireServer" or Method == "InvokeServer" then
				if out.Name ~= "CharacterSoundEvent" and out.Name ~= "SayMessageRequest" and out.Name ~= "AddCharacterLoadedEvent" and out.Name ~= "RemoveCharacterEvent" and out.Name ~= "DefaultServerSoundEvent" and out.Parent ~= "DefaultChatSystemChatEvents" then
					warn("Blocked remote: "..out.Name.." // Method: "..Method)
					return
				end
			end
		else
			if Method == "FireServer" or Method == "InvokeServer" then
				for i,noremote in pairs(blockedremotes) do
					if out.Name == noremote and out.Name ~= "SayMessageRequest" then
						warn("Blocked remote: "..out.Name.." // Method: "..Method)
						return
					end
				end
			end
		end
		
		if spyingremotes then
			if Method == "FireServer" or Method == "InvokeServer" then
				if out.Name ~= "CharacterSoundEvent" and out.Name ~= "AddCharacterLoadedEvent" and out.Name ~= "RemoveCharacterEvent" and out.Name ~= "DefaultServerSoundEvent" and out.Name ~= "SayMessageRequest" then
					local arguments = {}
					for i = 1,#args do
						arguments[i] = args[i]
					end
					local getScript = getfenv(2).script
					if getScript == nil then
						getScript = "??? (Not Found) ???"
					end
					warn("<> <> <> A "..out.ClassName.." has been fired! How to fire:\ngame."..out:GetFullName()..":"..Method.."("..formatargs(arguments)..")\n\nFired from script: ".. tostring(getScript:GetFullName()))
				end
			end
		end
		
		return game_namecall(out, ...)
	end
end

-- FE Check
function FEcheckDefault()
	if gsWorkspace.FilteringEnabled == true then
		createIntro("warning", "FE is enabled! Press "..commandPrefix.." to bring Command Bar.", 7)
	else
		createIntro("warning", "FE is disabled. Consider using a different script.", 7)
	end
end
FEcheckDefault()