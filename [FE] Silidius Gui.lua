--Created by SupremeGggggg
--Have fun!
--BIG UPDATE!
--BIG UPDATE!
--BIG UPDATE!
--BIG UPDATE!
--BIG UPDATE!
local plr = game.Players.LocalPlayer -- This will send the script to your self!



--[[
	///////////          //          //          //          ////               //          //              //          ///////////
	//                                    //                       //   //                         //              //          //
	///////////         //          //          //          //     //          //          //              //          ///////////
	             //         //          //          //          //   //            //          //              //                        //
	///////////        //          //          //          ////               //             /////////              ///////////
--]]



-------------------------------------------------------------------------------------------------------------------------
--Do not touch the rest below this line!
--Starting Point
wait(2)
local newscreenui = Instance.new("ScreenGui")
newscreenui.Parent = plr.PlayerGui 	
newscreenui.Name = "Silidius"
--MainFrame
local mainframe = Instance.new("Frame")
mainframe.Parent = newscreenui
mainframe.Name = "Main"
mainframe.Active = true
mainframe.Draggable = true
mainframe.BackgroundColor3 = Color3.new(109/255, 109/255, 109/255)
mainframe.BorderColor3 = Color3.new(0/255, 0/255, 0/255)
mainframe.BorderSizePixel = 1
mainframe.Position = UDim2.new(.296, 0, .192, 0)
mainframe.Size = UDim2.new(.409, 0, .66, 0)
mainframe.Draggable = true
--NavBar
local CommandBar = Instance.new("TextButton")
CommandBar.Parent = mainframe
CommandBar.Name = "Commands"
CommandBar.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
CommandBar.Position = UDim2.new(0, 0, .144, 0)
CommandBar.Size = UDim2.new(.24, 0, .099, 0)
CommandBar.Font = "ArialBold"
CommandBar.Text = "Commands"
CommandBar.TextColor3 = Color3.new(249/255, 74/255, 255/255)
CommandBar.TextScaled = true
local FE = Instance.new("TextButton")
FE.Parent = mainframe
FE.Name = "FE"
FE.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
FE.Position = UDim2.new(.254, 0, .144, 0)
FE.Size = UDim2.new(.24, 0, .099, 0)
FE.Font = "ArialBold"
FE.Text = "FE Commands"
FE.TextColor3 = Color3.new(255/255, 255/255, 255/255)
FE.TextScaled = true
local LC = Instance.new("TextButton")
LC.Parent = mainframe
LC.Name = "LargeCommands"
LC.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
LC.Position = UDim2.new(.51, 0, .144, 0)
LC.Size = UDim2.new(.24, 0, .099, 0)
LC.Font = "ArialBold"
LC.Text = "Large Commands"
LC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
LC.TextScaled = true
local PC = Instance.new("TextButton")
PC.Parent = mainframe
PC.Name = "ParticleCommands"
PC.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
PC.Position = UDim2.new(.766, 0, .144, 0)
PC.Size = UDim2.new(.234, 0, .099, 0)
PC.Font = "ArialBold"
PC.Text = "Particle Commands"
PC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
PC.TextScaled = true
--TopBar
local TopBar = Instance.new("Frame")
TopBar.Parent = mainframe
TopBar.Name = "TopBar"
TopBar.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0, 0, 0, 0)
TopBar.Size = UDim2.new(1, 0, .138, 0)
local Exit = Instance.new("TextButton")
Exit.Parent = TopBar
Exit.Name = "Exit"
Exit.BackgroundColor3 = Color3.new(47/255, 58/255, 49/255)
Exit.BackgroundTransparency = 1
Exit.BorderSizePixel = 0
Exit.Size = UDim2.new(.076, 0, 1, 0)
Exit.Position = UDim2.new(.924, 0, 0, 0)
Exit.Font = "ArialBold"
Exit.Text = "X"
Exit.TextColor3 = Color3.new(255/255, 0/255, 0/255)
Exit.TextScaled = true
Exit.MouseButton1Click:connect(function()
	newscreenui:Destroy()
end)
local FEStats = Instance.new("TextLabel")
FEStats.Parent = TopBar
FEStats.Name = "FEStats"
FEStats.TextXAlignment = "Left"
FEStats.Position = UDim2.new(.467, 0, .221, 0)
FEStats.Size = UDim2.new(.252, 0, .558, 0)
FEStats.Text = "- FE Status: Disabled!"
FEStats.BackgroundTransparency = 1
FEStats.TextColor3 = Color3.new(255/255, 255/255, 255/255)
local Title = Instance.new("TextLabel")
Title.Parent = TopBar
Title.Name = "Title"
Title.BackgroundColor3 = Color3.new(255/255, 255/255, 255/255)
Title.BackgroundTransparency = 1
Title.BorderSizePixel = 1
Title.Position = UDim2.new(.022, 0, 0, 0)
Title.Size = UDim2.new(.445, 0, 1, 0)
Title.Font = "ArialBold"
Title.TextScaled = true
Title.Text = "Silidius Commands"
Title.TextColor3 = Color3.new(255/255, 255/255, 255/255)
--CommandsFrame
local commandsframe = Instance.new("Frame")
commandsframe.Parent = mainframe
commandsframe.Name = "CommandsFrame"
commandsframe.BackgroundTransparency = 1
commandsframe.Size = UDim2.new(1, 0, .756, 0)
commandsframe.Position = UDim2.new(0, 0, .244, 0)
local PlayerNameText = Instance.new("TextLabel")
PlayerNameText.Parent = commandsframe
PlayerNameText.Name = "PlayerNameText"
PlayerNameText.BackgroundTransparency = 1
PlayerNameText.Position = UDim2.new(.787, 0, .059, 0)
PlayerNameText.Size = UDim2.new(.193, 0, .055, 0)
PlayerNameText.Text = "Player Name:"
PlayerNameText.Font = "ArialBold"
PlayerNameText.TextColor3 = Color3.new(255/255, 255/255, 255/255)
PlayerNameText.TextScaled = true
local PlayerName = Instance.new("TextBox")
PlayerName.Parent = commandsframe
PlayerName.Name = "PlayerName"
PlayerName.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
PlayerName.Position = UDim2.new(.786, 0, .158, 0)
PlayerName.Size = UDim2.new(.193, 0, .138, 0)
PlayerName.Font = "ArialBold"
PlayerName.Text = "Put player name here..."
PlayerName.TextColor3 = Color3.new(255/255, 255/255, 255/255)
PlayerName.TextScaled = true
PlayerName.TextXAlignment = "Left"
local IntValText = Instance.new("TextLabel")
IntValText.Parent = commandsframe
IntValText.Name = "IntValText"
IntValText.BackgroundTransparency = 1
IntValText.Position = UDim2.new(.308, 0, .727, 0)
IntValText.Size = UDim2.new(.425, 0, .055, 0)
IntValText.Text = "Number Value:"
IntValText.Font = "ArialBold"
IntValText.TextColor3 = Color3.new(255/255, 255/255, 255/255)
IntValText.TextScaled = true
local IntVal = Instance.new("TextBox")
IntVal.Parent = commandsframe
IntVal.Name = "IntVal"
IntVal.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
IntVal.Position = UDim2.new(.308, 0, .802, 0)
IntVal.Size = UDim2.new(.425, 0, .162, 0)
IntVal.Font = "ArialBold"
IntVal.Text = "This will work with all Numbers needed including skybox and music..."
IntVal.TextColor3 = Color3.new(255/255, 255/255, 255/255)
IntVal.TextScaled = true
IntVal.TextXAlignment = "Left"
local StringText = Instance.new("TextLabel")
StringText.Parent = commandsframe
StringText.Name = "StringValText"
StringText.BackgroundTransparency = 1
StringText.Position = UDim2.new(.786, 0, .372, 0)
StringText.Size = UDim2.new(.193, 0, .055, 0)
StringText.Text = "String Value:"
StringText.Font = "ArialBold"
StringText.TextColor3 = Color3.new(255/255, 255/255, 255/255)
StringText.TextScaled = true
local StringVal = Instance.new("TextBox")
StringVal.Parent = commandsframe
StringVal.Name = "StringVal"
StringVal.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
StringVal.Position = UDim2.new(.787, 0, .458, 0)
StringVal.Size = UDim2.new(.193, 0, .344, 0)
StringVal.Font = "ArialBold"
StringVal.Text = "This will work with messages and anything that needs a string attached!"
StringVal.TextColor3 = Color3.new(255/255, 255/255, 255/255)
StringVal.TextScaled = true
StringVal.TextXAlignment = "Left"
local kill = Instance.new("TextButton")
kill.Parent = commandsframe
kill.Name = "Kill"
kill.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
kill.Font = "ArialBold"
kill.Text = "Kill"
kill.TextColor3 = Color3.new(255/255, 255/255, 255/255)
kill.TextScaled = true
kill.Size = UDim2.new(.232, 0, .075, 0)
kill.Position = UDim2.new(.022, 0, .083, 0)
kill.MouseButton1Click:connect(function()
	local victim = PlayerName.Text
	game.Players:FindFirstChild(victim).Character:BreakJoints()
end)
local loopkill = Instance.new("TextButton")
loopkill.Parent = commandsframe
loopkill.Name = "LoopKill"
loopkill.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
loopkill.Font = "ArialBold"
loopkill.Text = "Loop Kill"
loopkill.TextColor3 = Color3.new(255/255, 255/255, 255/255)
loopkill.TextScaled = true
loopkill.Size = UDim2.new(.232, 0, .075, 0)
loopkill.Position = UDim2.new(.277, 0, .083, 0)
loopkill.MouseButton1Click:connect(function()
	while true do
		wait(1)
		local victim = PlayerName.Text
	end
end)
local respawn = Instance.new("TextButton")
respawn.Parent = commandsframe
respawn.Name = "Respawn"
respawn.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
respawn.Font = "ArialBold"
respawn.Text = "Respawn"
respawn.TextColor3 = Color3.new(255/255, 255/255, 255/255)
respawn.TextScaled = true
respawn.Size = UDim2.new(.232, 0, .075, 0)
respawn.Position = UDim2.new(.533, 0, .083, 0)
respawn.MouseButton1Click:connect(function()
	local victim = PlayerName.Text
	game.Players:FindFirstChild(victim):LoadCharacter()
end)
local destroyc = Instance.new("TextButton")
destroyc.Parent = commandsframe
destroyc.Name = "DestroyChar"
destroyc.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
destroyc.Font = "ArialBold"
destroyc.Text = "Destroy Char"
destroyc.TextColor3 = Color3.new(255/255, 255/255, 255/255)
destroyc.TextScaled = true
destroyc.Size = UDim2.new(.232, 0, .075, 0)
destroyc.Position = UDim2.new(.022, 0, .19, 0)
destroyc.MouseButton1Click:connect(function()
	local victim = PlayerName.Text
	game.Players:FindFirstChild(victim).Character:Destroy()
end)
local poison = Instance.new("TextButton")
poison.Parent = commandsframe
poison.Name = "Poison"
poison.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
poison.Font = "ArialBold"
poison.Text = "Poison"
poison.TextColor3 = Color3.new(255/255, 255/255, 255/255)
poison.TextScaled = true
poison.Size = UDim2.new(.232, 0, .075, 0)
poison.Position = UDim2.new(.277, 0, .19, 0)
poison.MouseButton1Click:connect(function()
	local victim = PlayerName.Text
	local smoke = Instance.new("Smoke")
		smoke.Parent = game.Players:FindFirstChild(victim).Character.HumanoidRootPart
		smoke.Name = "Poison"
		smoke.Color = Color3.new(51/255, 181/255, 11/255)
	while game.Players:FindFirstChild(victim).Character.Humanoid.Health > 0 do
		wait(.5)
		game.Players:FindFirstChild(victim).Character.Humanoid.Health = game.Players:FindFirstChild(victim).Character.Humanoid.Health - game.Players:FindFirstChild(victim).Character.Humanoid.MaxHealth/25
	end
end)
local fire = Instance.new("TextButton")
fire.Parent = commandsframe
fire.Name = "Fire"
fire.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
fire.Font = "ArialBold"
fire.Text = "Fire"
fire.TextColor3 = Color3.new(255/255, 255/255, 255/255)
fire.TextScaled = true
fire.Size = UDim2.new(.232, 0, .075, 0)
fire.Position = UDim2.new(.533, 0, .19, 0)
fire.MouseButton1Click:connect(function()
	local victim = PlayerName.Text
	local fire1 = Instance.new("Fire")
	fire1.Parent = game.Players:FindFirstChild(victim).Character.HumanoidRootPart
end)
local sparkles = Instance.new("TextButton")
sparkles.Parent = commandsframe
sparkles.Name = "Sparkles"
sparkles.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
sparkles.Font = "ArialBold"
sparkles.Text = "Sparkles"
sparkles.TextColor3 = Color3.new(255/255, 255/255, 255/255)
sparkles.TextScaled = true
sparkles.Size = UDim2.new(.232, 0, .075, 0)
sparkles.Position = UDim2.new(.022, 0, .296, 0)
sparkles.MouseButton1Click:connect(function()
	local victim = PlayerName.Text
	local fire1 = Instance.new("Sparkles")
	fire1.Parent = game.Players:FindFirstChild(victim).Character.HumanoidRootPart
end)
local WalkSpeed = Instance.new("TextButton")
WalkSpeed.Parent = commandsframe
WalkSpeed.Name = "WalkSpeed"
WalkSpeed.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
WalkSpeed.Font = "ArialBold"
WalkSpeed.Text = "WalkSpeed"
WalkSpeed.TextColor3 = Color3.new(255/255, 255/255, 255/255)
WalkSpeed.TextScaled = true
WalkSpeed.Size = UDim2.new(.232, 0, .075, 0)
WalkSpeed.Position = UDim2.new(.277, 0, .296, 0)
WalkSpeed.MouseButton1Click:connect(function()
	local victim = PlayerName.Text
	local value = IntVal.Text
	game.Players:FindFirstChild(victim).Character.Humanoid.WalkSpeed = value
end)
local eatserver = Instance.new("TextButton")
eatserver.Parent = commandsframe
eatserver.Name = "SlowlyEatServer"
eatserver.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
eatserver.Font = "ArialBold"
eatserver.Text = "Slowly Eat Server"
eatserver.TextColor3 = Color3.new(255/255, 255/255, 255/255)
eatserver.TextScaled = true
eatserver.Size = UDim2.new(.232, 0, .075, 0)
eatserver.Position = UDim2.new(.533, 0, .296, 0)
eatserver.MouseButton1Click:connect(function()
	while true do
		wait(1)
		local category = workspace:GetChildren()
	    for i,v in pairs(category) do
	       if v:IsA("Part") then
		s = i
	end
	end
	local chosen = category[math.random(1, s)]
	chosen:Destroy()
	end
end)
local blackdeath = Instance.new("TextButton")
blackdeath.Parent = commandsframe
blackdeath.Name = "BlackDeath"
blackdeath.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
blackdeath.Font = "ArialBold"
blackdeath.Text = "Black Death"
blackdeath.TextColor3 = Color3.new(255/255, 255/255, 255/255)
blackdeath.TextScaled = true
blackdeath.Size = UDim2.new(.232, 0, .075, 0)
blackdeath.Position = UDim2.new(.022, 0, .403, 0)
blackdeath.MouseButton1Click:connect(function()
	for i,v in pairs(game.Players:GetChildren()) do
		for i, parts in pairs(v.Character:GetChildren()) do
		if parts:IsA("Part") or parts:IsA("MeshPart") then
		local fire = Instance.new("Fire")
		fire.Parent = parts
		fire.Heat = 0
		fire.Color = Color3.new(0, 0, 0)
		fire.SecondaryColor = Color3.new(0, 0, 0)
		v.Character:BreakJoints()
		end
		end
	end
end)
local sonic = Instance.new("TextButton")
sonic.Parent = commandsframe
sonic.Name = "SonicSpeed"
sonic.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
sonic.Font = "ArialBold"
sonic.Text = "Sonic Speed"
sonic.TextColor3 = Color3.new(255/255, 255/255, 255/255)
sonic.TextScaled = true
sonic.Size = UDim2.new(.232, 0, .075, 0)
sonic.Position = UDim2.new(.277, 0, .403, 0)
sonic.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	local newtrail = Instance.new("Trail")
	newtrail.Parent = victim.Character.Head
	local attachment0 = Instance.new("Attachment", victim.Character.Head)
	attachment0.Name = "TrailAttachment0"
	local attachment1 = Instance.new("Attachment", victim.Character.HumanoidRootPart)
	attachment1.Name = "TrailAttachment1"
	newtrail.Attachment0 = attachment0
	newtrail.Attachment1 = attachment1
	local startcolor = Color3.new(255/255, 255/255, 255/255)
	local endcolor = Color3.new(0/255, 0/255, 255/255)
	local colorsequence = ColorSequence.new(startcolor, endcolor)
	newtrail.Color = colorsequence
	victim.Character.Humanoid.WalkSpeed = 50
end)
local smoke = Instance.new("TextButton")
smoke.Parent = commandsframe
smoke.Name = "Smoke"
smoke.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
smoke.Font = "ArialBold"
smoke.Text = "Smoke"
smoke.TextColor3 = Color3.new(255/255, 255/255, 255/255)
smoke.TextScaled = true
smoke.Size = UDim2.new(.232, 0, .075, 0)
smoke.Position = UDim2.new(.533, 0, .403, 0)
smoke.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	local smoke = Instance.new("Smoke")
	smoke.Parent = victim.Character.HumanoidRootPart
end)
local skybox = Instance.new("TextButton")
skybox.Parent = commandsframe
skybox.Name = "SkyBox"
skybox.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
skybox.Font = "ArialBold"
skybox.Text = "Skybox"
skybox.TextColor3 = Color3.new(255/255, 255/255, 255/255)
skybox.TextScaled = true
skybox.Size = UDim2.new(.232, 0, .075, 0)
skybox.Position = UDim2.new(.022, 0, .514, 0)
skybox.MouseButton1Click:connect(function()
	 local newsky = Instance.new("Sky")
	newsky.Parent = game.Lighting
	newsky.MoonTextureId = " "
	newsky.SkyboxBk = "rbxassetid://"..IntVal.Text
	newsky.SkyboxDn = "rbxassetid://"..IntVal.Text
	newsky.SkyboxFt = "rbxassetid://"..IntVal.Text
	newsky.SkyboxLf = "rbxassetid://"..IntVal.Text
	newsky.SkyboxRt = "rbxassetid://"..IntVal.Text
	newsky.SkyboxUp = "rbxassetid://"..IntVal.Text
	newsky.StarCount = 0
	newsky.SunangularSize = 0
	newsky.SunTextureId = " "
end)
local jump = Instance.new("TextButton")
jump.Parent = commandsframe
jump.Name = "JumpPower"
jump.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
jump.Font = "ArialBold"
jump.Text = "JumpPower"
jump.TextColor3 = Color3.new(255/255, 255/255, 255/255)
jump.TextScaled = true
jump.Size = UDim2.new(.232, 0, .075, 0)
jump.Position = UDim2.new(.277, 0, .514, 0)
jump.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	local num = IntVal.Text
	victim.Character.Humanoid.JumpPower = tonumber(num)
end)
local height = Instance.new("TextButton")
height.Parent = commandsframe
height.Name = "HipHeight"
height.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
height.Font = "ArialBold"
height.Text = "HipHeight"
height.TextColor3 = Color3.new(255/255, 255/255, 255/255)
height.TextScaled = true
height.Size = UDim2.new(.232, 0, .075, 0)
height.Position = UDim2.new(.533, 0, .514, 0)
height.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	local num = IntVal.Text
	victim.Character.Humanoid.HipHeight = tonumber(num)
end)
local rbase = Instance.new("TextButton")
rbase.Parent = commandsframe
rbase.Name = "Remove Baseplate"
rbase.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
rbase.Font = "ArialBold"
rbase.Text = "Remove Baseplate"
rbase.TextColor3 = Color3.new(255/255, 255/255, 255/255)
rbase.TextScaled = true
rbase.Size = UDim2.new(.232, 0, .075, 0)
rbase.Position = UDim2.new(.022, 0, .621, 0)
rbase.MouseButton1Click:connect(function()
	game.Workspace:FindFirstChild("Baseplate"):Destroy()
end)
local see = Instance.new("TextButton")
see.Parent = commandsframe
see.Name = "SeeThrough"
see.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
see.Font = "ArialBold"
see.Text = "See Through"
see.TextColor3 = Color3.new(255/255, 255/255, 255/255)
see.TextScaled = true
see.Size = UDim2.new(.232, 0, .075, 0)
see.Position = UDim2.new(.277, 0, .621, 0)
see.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	for i,v in pairs(victim.Character:GetChildren()) do
		if v:IsA("Part") or v:IsA("MeshPart") then
			v.Transparency = .5
		end
	end
end)
local Freeze = Instance.new("TextButton")
Freeze.Parent = commandsframe
Freeze.Name = "Freeze"
Freeze.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
Freeze.Font = "ArialBold"
Freeze.Text = "Freeze"
Freeze.TextColor3 = Color3.new(255/255, 255/255, 255/255)
Freeze.TextScaled = true
Freeze.Size = UDim2.new(.232, 0, .075, 0)
Freeze.Position = UDim2.new(.533, 0, .621, 0)
Freeze.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	for i,v in pairs(victim.Character:GetChildren()) do
		if v:IsA("MeshPart") or v:IsA("Part") then
			v.Anchored = true
		end
	end
end)
local Thaw = Instance.new("TextButton")
Thaw.Parent = commandsframe
Thaw.Name = "Thaw"
Thaw.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
Thaw.Font = "ArialBold"
Thaw.Text = "Thaw"
Thaw.TextColor3 = Color3.new(255/255, 255/255, 255/255)
Thaw.TextScaled = true
Thaw.Size = UDim2.new(.232, 0, .075, 0)
Thaw.Position = UDim2.new(.022, 0, .727, 0)
Thaw.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	for i,v in pairs(victim.Character:GetChildren()) do
		if v:IsA("MeshPart") or v:IsA("Part") then
			v.Anchored = false
		end
	end
end)
local set = Instance.new("TextButton")
set.Parent = commandsframe
set.Name = ""
set.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
set.Font = "ArialBold"
set.Text = "Thaw"
set.TextColor3 = Color3.new(255/255, 255/255, 255/255)
set.TextScaled = true
set.Size = UDim2.new(.232, 0, .075, 0)
set.Position = UDim2.new(.022, 0, .727, 0)
set.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName.Text)
	for i,v in pairs(victim.Character:GetChildren()) do
		if v:IsA("MeshPart") or v:IsA("Part") then
			v.Anchored = false
		end
	end
end)
--FE Commands Frame
local FEcommandsframe = Instance.new("Frame")
FEcommandsframe.Parent = mainframe
FEcommandsframe.Name = "FECommandsFrame"
FEcommandsframe.Visible = false
FEcommandsframe.BackgroundTransparency = 1
FEcommandsframe.Position = UDim2.new(0, 0, .244, 0)
FEcommandsframe.Size = UDim2.new(1, 0, .756, 0)
local nav = Instance.new("ScrollingFrame")
nav.Parent = FEcommandsframe
nav.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
nav.Name = "NavBar"
nav.Position = UDim2.new(.022, 0, .028, 0)
nav.Size = UDim2.new(.249, 0, .937, 0)
nav.ScrollBarThickness = 6
local all = Instance.new("TextButton")
all.Parent = nav
all.Name = "All"
all.BackgroundColor3 = Color3.new(163/255, 0/255, 0/255)
all.Position = UDim2.new(0, 0, 0, 0)
all.Size = UDim2.new(.94, 0, .063, 0)
all.Text = "All"
all.TextColor3 = Color3.new(255/255, 255/255, 255/255)
all.Font = "ArialBold"
all.TextScaled = true
local main = Instance.new("ScrollingFrame")
main.Parent = FEcommandsframe
main.Name = "MainFrame"
main.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
main.Position = UDim2.new(.286, 0, .032, 0)
main.Size = UDim2.new(.695, 0, .818, 0)
main.ScrollBarThickness = 6
local feflybutton = Instance.new("TextButton")
feflybutton.Parent = main
feflybutton.Name = "FlyMode"
feflybutton.Position = UDim2.new(0, 0, 0, 0)
feflybutton.Size = UDim2.new(.966, 0, .054, 0)
feflybutton.Text = "Fly Mode"
feflybutton.TextColor3 = Color3.new(255/255, 255/255, 255/255)
feflybutton.BackgroundColor3 = Color3.new(204/255, 31/255, 31/255)
feflybutton.TextScaled = true
feflybutton.MouseButton1Click:connect(function()
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local torso = plr.Character.Torso
local flying = true
local firsttimeflying = true
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0

function Fly()
local bg = Instance.new("BodyGyro", torso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = torso.CFrame
local bv = Instance.new("BodyVelocity", torso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
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
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
feflybutton.MouseButton1Click:connect(function()
if flying and not firsttimeflying then 
feflybutton.Text = "Fly Mode"
flying = false
else
firsttimeflying = false
feflybutton.Text = "Fly Mode"
flying = true
Fly()
end
end)
mouse.KeyDown:connect(function(key)
if key:lower() == "w" then
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
end
end)
Fly()
end)
local hatspin = Instance.new("TextButton")
hatspin.Parent = main
hatspin.Name = "HatSpin"
hatspin.Position = UDim2.new(0, 0, 0.06, 0)
hatspin.Size = UDim2.new(.966, 0, .054, 0)
hatspin.Text = "HatSpin"
hatspin.TextColor3 = Color3.new(255/255, 255/255, 255/255)
hatspin.BackgroundColor3 = Color3.new(204/255, 31/255, 31/255)
hatspin.TextScaled = true
hatspin.MouseButton1Click:connect(function()
local obese = game:GetService('Players')
for i,v in pairs(obese.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Accessory" then
local stg = v.Handle:FindFirstChildOfClass("BodyForce")
if stg == nil then
local a = Instance.new("BodyPosition")
local b = Instance.new("BodyAngularVelocity")
a.Parent = v.Handle
b.Parent = v.Handle
v.Handle.AccessoryWeld:Destroy()
b.AngularVelocity = Vector3.new(0,100,0)
b.MaxTorque = Vector3.new(0,200,0)
a.P = 30000
a.D = 50
game:GetService('RunService').Stepped:connect(function()
a.Position = obese.LocalPlayer.Character.Head.Position
end)
end
end
end
end)
local god = Instance.new("TextButton")
god.Parent = main
god.Name = "God"
god.Position = UDim2.new(0, 0, 0.12, 0)
god.Size = UDim2.new(.966, 0, .054, 0)
god.Text = "God"
god.TextColor3 = Color3.new(255/255, 255/255, 255/255)
god.BackgroundColor3 = Color3.new(204/255, 31/255, 31/255)
god.TextScaled = true
god.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Name = 1
local l = game.Players.LocalPlayer.Character["1"]:Clone()
l.Parent = game.Players.LocalPlayer.Character
l.Name = "Humanoid"
wait(0.1)
game.Players.LocalPlayer.Character["1"]:Destroy()
game.Workspace.CurrentCamera.CameraSubject = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.Character.Animate.Disabled = true
wait(0.1)
game.Players.LocalPlayer.Character.Animate.Disabled = false
game.Players.LocalPlayer.Character.Humanoid.DisplayDistanceType = "None"
end)
local spasm = Instance.new("TextButton")
spasm.Parent = main
spasm.Name = "Spasm"
spasm.Position = UDim2.new(0, 0, 0.18, 0)
spasm.Size = UDim2.new(.966, 0, .054, 0)
spasm.Text = "Spasm"
spasm.TextColor3 = Color3.new(255/255, 255/255, 255/255)
spasm.BackgroundColor3 = Color3.new(204/255, 31/255, 31/255)
spasm.TextScaled = true
spasm.MouseButton1Click:connect(function()
while wait(1) do
for i,v in pairs(game:GetService('Players'):GetChildren()) do
   local Player = v.Name
   local AnimationId = "33796059"
   local Anim = Instance.new("Animation")
   Anim.AnimationId = "rbxassetid://"..AnimationId
   local k = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
   k:Play() --Play the animation
   k:AdjustSpeed(99)
end
end
end)
--Large Extra Commands Frame
local lEcommandsframe = Instance.new("Frame")
lEcommandsframe.Parent = mainframe
lEcommandsframe.Name = "LargeExtraCommandsFrame"
lEcommandsframe.Visible = false
lEcommandsframe.BackgroundTransparency = 1
lEcommandsframe.Position = UDim2.new(0, 0, .244, 0)
lEcommandsframe.Size = UDim2.new(1, 0, .756, 0)
local IntValText3 = Instance.new("TextLabel")
IntValText3.Parent = lEcommandsframe
IntValText3.Name = "IntValText"
IntValText3.BackgroundTransparency = 1
IntValText3.Position = UDim2.new(.308, 0, .727, 0)
IntValText3.Size = UDim2.new(.425, 0, .055, 0)
IntValText3.Text = "Number Value:"
IntValText3.Font = "ArialBold"
IntValText3.TextColor3 = Color3.new(255/255, 255/255, 255/255)
IntValText3.TextScaled = true
local IntVal3 = Instance.new("TextBox")
IntVal3.Parent = lEcommandsframe
IntVal3.Name = "IntVal"
IntVal3.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
IntVal3.Position = UDim2.new(.308, 0, .802, 0)
IntVal3.Size = UDim2.new(.425, 0, .162, 0)
IntVal3.Font = "ArialBold"
IntVal3.Text = "This will work with all Numbers needed including skybox and music..."
IntVal3.TextColor3 = Color3.new(255/255, 255/255, 255/255)
IntVal3.TextScaled = true
IntVal3.TextXAlignment = "Left"
local StringText3 = Instance.new("TextLabel")
StringText3.Parent = lEcommandsframe
StringText3.Name = "StringValText"
StringText3.BackgroundTransparency = 1
StringText3.Position = UDim2.new(.786, 0, .372, 0)
StringText3.Size = UDim2.new(.193, 0, .055, 0)
StringText3.Text = "String Value:"
StringText3.Font = "ArialBold"
StringText3.TextColor3 = Color3.new(255/255, 255/255, 255/255)
StringText3.TextScaled = true
local StringVal3 = Instance.new("TextBox")
StringVal3.Parent = lEcommandsframe
StringVal3.Name = "StringVal"
StringVal3.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
StringVal3.Position = UDim2.new(.787, 0, .458, 0)
StringVal3.Size = UDim2.new(.193, 0, .344, 0)
StringVal3.Font = "ArialBold"
StringVal3.Text = "This will work with messages and anything that needs a string attached!"
StringVal3.TextColor3 = Color3.new(255/255, 255/255, 255/255)
StringVal3.TextScaled = true
StringVal3.TextXAlignment = "Left"
local PlayerNameText3 = Instance.new("TextLabel")
PlayerNameText3.Parent = lEcommandsframe
PlayerNameText3.Name = "PlayerNameText"
PlayerNameText3.BackgroundTransparency = 1
PlayerNameText3.Position = UDim2.new(.787, 0, .059, 0)
PlayerNameText3.Size = UDim2.new(.193, 0, .055, 0)
PlayerNameText3.Text = "Player Name:"
PlayerNameText3.Font = "ArialBold"
PlayerNameText3.TextColor3 = Color3.new(255/255, 255/255, 255/255)
PlayerNameText3.TextScaled = true
local PlayerName3 = Instance.new("TextBox")
PlayerName3.Parent = lEcommandsframe
PlayerName3.Name = "PlayerName"
PlayerName3.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
PlayerName3.Position = UDim2.new(.786, 0, .158, 0)
PlayerName3.Size = UDim2.new(.193, 0, .138, 0)
PlayerName3.Font = "ArialBold"
PlayerName3.Text = "Put player name here..."
PlayerName3.TextColor3 = Color3.new(255/255, 255/255, 255/255)
PlayerName3.TextScaled = true
PlayerName3.TextXAlignment = "Left"
local newnotice2 = Instance.new("TextLabel")
newnotice2.Parent = lEcommandsframe
newnotice2.Name = "Notice"
newnotice2.BackgroundTransparency = 1
newnotice2.Position = UDim2.new(.043, 0, .059, 0)
newnotice2.Size = UDim2.new(.634, 0, .538, 0)
newnotice2.Text = "Notice: There are currently no Large Commands Added!"
newnotice2.TextColor3 = Color3.new(64/255, 64/255, 64/255)
newnotice2.TextStrokeColor3 = Color3.new(255/255, 255/255, 255/255)
newnotice2.TextStrokeTransparency = 0
newnotice2.TextScaled = true
newnotice2.TextStrokeColor3 = Color3.new(255/255, 255/255, 255/255)
--Cool Particle Commands
local PCcommandsframe = Instance.new("Frame")
PCcommandsframe.Parent = mainframe
PCcommandsframe.Name = "CoolParticleCommands"
PCcommandsframe.Visible = false
PCcommandsframe.BackgroundTransparency = 1
PCcommandsframe.Position = UDim2.new(0, 0, .244, 0)
PCcommandsframe.Size = UDim2.new(1, 0, .756, 0)
local PlayerNameText4 = Instance.new("TextLabel")
PlayerNameText4.Parent = PCcommandsframe
PlayerNameText4.Name = "PlayerNameText"
PlayerNameText4.BackgroundTransparency = 1
PlayerNameText4.Position = UDim2.new(.787, 0, .059, 0)
PlayerNameText4.Size = UDim2.new(.193, 0, .055, 0)
PlayerNameText4.Text = "Player Name:"
PlayerNameText4.Font = "ArialBold"
PlayerNameText4.TextColor3 = Color3.new(255/255, 255/255, 255/255)
PlayerNameText4.TextScaled = true
local PlayerName4 = Instance.new("TextBox")
PlayerName4.Parent = PCcommandsframe
PlayerName4.Name = "PlayerName"
PlayerName4.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
PlayerName4.Position = UDim2.new(.786, 0, .158, 0)
PlayerName4.Size = UDim2.new(.193, 0, .138, 0)
PlayerName4.Font = "ArialBold"
PlayerName4.Text = "Put player name here..."
PlayerName4.TextColor3 = Color3.new(255/255, 255/255, 255/255)
PlayerName4.TextScaled = true
PlayerName4.TextXAlignment = "Left"
local Dark = Instance.new("TextButton")
Dark.Parent = PCcommandsframe
Dark.Name = "DarkMatter"
Dark.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
Dark.Font = "ArialBold"
Dark.Text = "Dark Matter"
Dark.TextColor3 = Color3.new(255/255, 255/255, 255/255)
Dark.TextScaled = true
Dark.Size = UDim2.new(.232, 0, .075, 0)
Dark.Position = UDim2.new(.022, 0, .083, 0)
Dark.MouseButton1Click:connect(function()
local victim = game.Players:FindFirstChild(PlayerName4.Text)
local newparticle2 = Instance.new("ParticleEmitter")
newparticle2.Parent = victim.Character.HumanoidRootPart
newparticle2.Color = ColorSequence.new(Color3.new(255/255, 0/255, 0/255), Color3.new(77/255, 1/255, 165/255))
newparticle2.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(.0977, .15, 0),
	NumberSequenceKeypoint.new(1, .05, 0),
})
newparticle2.Texture = "http://www.roblox.com/asset/?id=118322059"
newparticle2.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(.8, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0),
})
newparticle2.ZOffset = 0
newparticle2.Acceleration = Vector3.new(0, .2, 0)
newparticle2.Lifetime = NumberRange.new(5)
newparticle2.Rate = 20
newparticle2.EmissionDirection = "Top"
newparticle2.Rotation = NumberRange.new(0)
newparticle2.RotSpeed = NumberRange.new(20, 40)
newparticle2.Speed = NumberRange.new(2, 4)
newparticle2.SpreadAngle = Vector2.new(100, 100)


local newparticle = Instance.new("ParticleEmitter")
newparticle.Parent = plr.Character.HumanoidRootPart
newparticle.Color = ColorSequence.new(Color3.new(255/255, 0/255, 0/255), Color3.new(77/255, 1/255, 165/255))
newparticle.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(.218, .625, 0),
	NumberSequenceKeypoint.new(.468, 1.38, 0),
	NumberSequenceKeypoint.new(.747, 3.06, 0),
	NumberSequenceKeypoint.new(1, 3.31, 0),
})
newparticle.Texture = "http://www.roblox.com/asset/?id=243664672"
newparticle.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1, 0),
	NumberSequenceKeypoint.new(.509, .725, 0),
	NumberSequenceKeypoint.new(.762, .85, .15),
	NumberSequenceKeypoint.new(1, 1, 0),
})
newparticle.ZOffset = 2
newparticle.LightEmission = .4
newparticle.EmissionDirection = "Top"
newparticle.Lifetime = NumberRange.new(1, 2)
newparticle.Rate = 500
newparticle.Rotation = NumberRange.new(-360, 360)
newparticle.RotSpeed = NumberRange.new(-200, 200)
newparticle.Speed = NumberRange.new(.5)
newparticle.SpreadAngle = NumberRange.new(100, 100)
local newparticle2 = Instance.new("ParticleEmitter")
newparticle2.Parent = plr.Character.HumanoidRootPart
newparticle2.Color = ColorSequence.new(Color3.new(255/255, 0/255, 0/255), Color3.new(77/255, 1/255, 165/255))
newparticle2.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(.0977, .15, 0),
	NumberSequenceKeypoint.new(1, .05, 0),
})
newparticle2.Texture = "http://www.roblox.com/asset/?id=118322059"
newparticle2.Transparency = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0, 0),
	NumberSequenceKeypoint.new(.8, 0, 0),
	NumberSequenceKeypoint.new(1, 1, 0),
})
newparticle2.ZOffset = 0
newparticle2.Acceleration = Vector3.new(0, .2, 0)
newparticle2.Lifetime = NumberRange.new(5)
newparticle2.Rate = 20
newparticle2.EmissionDirection = "Top"
newparticle2.Rotation = NumberRange.new(0)
newparticle2.RotSpeed = NumberRange.new(20, 40)
newparticle2.Speed = NumberRange.new(2, 4)
newparticle2.SpreadAngle = Vector2.new(100, 100)
end)
local rain = Instance.new("TextButton")
rain.Parent = PCcommandsframe
rain.Name = "Rain"
rain.BackgroundColor3 = Color3.new(64/255, 64/255, 64/255)
rain.Font = "ArialBold"
rain.Text = "Rain"
rain.TextColor3 = Color3.new(255/255, 255/255, 255/255)
rain.TextScaled = true
rain.Size = UDim2.new(.232, 0, .075, 0)
rain.Position = UDim2.new(.277, 0, .083, 0)
rain.MouseButton1Click:connect(function()
	local victim = game.Players:FindFirstChild(PlayerName4.Text)
	local particle1 = Instance.new("ParticleEmitter")
	local particle2 = Instance.new("ParticleEmitter")
	particle1.Parent = victim.Character.HumanoidRootPart
	particle2.Parent = victim.Character.HumanoidRootPart
	local colorsequence1 = ColorSequence.new(Color3.new(46/255, 158/255, 255/255))
	particle1.Color = colorsequence1
	local colorsequence2 = ColorSequence.new(Color3.new(13/255, 46/255, 74/255))
	particle2.Color = colorsequence2
	particle1.LightEmission = .1
	particle1.LightInfluence = 0
	particle1.Size = NumberSequence.new(.05)
	particle1.Texture = "http://www.roblox.com/asset/?id=118322059"
	particle1.ZOffset = 0
	particle1.Name = "Rain"
	particle1.Acceleration = Vector3.new(0, -20, 0)
	particle1.Drag = 0
	particle1.LockedToPart = true
	particle1.VelocityInheritance = 0
	particle1.EmissionDirection = "Top"
	particle1.Enabled = true
	particle1.Lifetime = NumberRange.new(2.49)
	particle1.Rate = 50
	particle1.Rotation = NumberRange.new(0)
	particle1.RotSpeed = NumberRange.new(0)
	particle1.Speed = NumberRange.new(25)
	particle1.SpreadAngle = Vector2.new(0, 0)
	particle1.Transparency = NumberSequence.new({
		NumberSequenceKeypoint.new(0, 1, 0),
		NumberSequenceKeypoint.new(.743,1,0),
		NumberSequenceKeypoint.new(.756,0,0),
		NumberSequenceKeypoint.new(1,0,0),
	})
	particle2.Name = "Smoke"
	particle2.Color = ColorSequence.new(Color3.new(13/255, 46/255, 74/255))
	particle2.LightEmission = .1
	particle2.LightInfluence = 0
	particle2.Size = NumberSequence.new({
	NumberSequenceKeypoint.new(0,0,0),
	NumberSequenceKeypoint.new(.499,0,0),
	NumberSequenceKeypoint.new(.516,1.42,0),
	NumberSequenceKeypoint.new(.6,1.4,0),
	NumberSequenceKeypoint.new(.601,0,0),
	NumberSequenceKeypoint.new(1,0,0),
	})
	particle2.Texture = "http://www.roblox.com/asset/?id=290833005"
	particle2.ZOffset = 2
	particle2.Acceleration = Vector3.new(0, 0, 0)
	particle2.EmissionDirection = "Top"
	particle2.Enabled = true
	particle2.Lifetime = NumberRange.new(20)
	particle2.Rate = 50
	particle2.LockedToPart = true
	particle2.Rotation = NumberRange.new(0, 360)
	particle2.Speed = NumberRange.new(1)
	particle2.RotSpeed = NumberRange.new(0)
	particle2.SpreadAngle = Vector2.new(0, 0)
	particle2.Transparency = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 1, 0),
    NumberSequenceKeypoint.new(.5,1,0),
    NumberSequenceKeypoint.new(.535,0,0),
    NumberSequenceKeypoint.new(.567,0,0),
    NumberSequenceKeypoint.new(.6,1,0),
    NumberSequenceKeypoint.new(1,1,0),
    })
end)
FE.MouseButton1Click:connect(function()
	FE.TextColor3 = Color3.new(249/255, 74/255, 255/255)
	CommandBar.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	LC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	PC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	FEcommandsframe.Visible = true
	commandsframe.Visible = false
	lEcommandsframe.Visible = false
	PCcommandsframe.Visible = false
end)
CommandBar.MouseButton1Click:connect(function()
	FE.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	CommandBar.TextColor3 = Color3.new(249/255, 74/255, 255/255)
	LC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	PC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	FEcommandsframe.Visible = false
	commandsframe.Visible = true
	lEcommandsframe.Visible = false
	PCcommandsframe.Visible = false
end)
LC.MouseButton1Click:connect(function()
	FE.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	CommandBar.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	LC.TextColor3 = Color3.new(249/255, 74/255, 255/255)
	PC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	FEcommandsframe.Visible = false
	commandsframe.Visible = false
	lEcommandsframe.Visible = true
	PCcommandsframe.Visible = false
end)
PC.MouseButton1Click:connect(function()
	FE.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	CommandBar.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	LC.TextColor3 = Color3.new(255/255, 255/255, 255/255)
	PC.TextColor3 = Color3.new(249/255, 74/255, 255/255)
	FEcommandsframe.Visible = false
	commandsframe.Visible = false
	lEcommandsframe.Visible = false
	PCcommandsframe.Visible = true
end)
--FilteringCheckLoop
while true do
	wait()
	if workspace.FilteringEnabled == true then
		FEStats.Text = "- FE Status: Enabled!"
	elseif workspace.FilteringEnabled == false then
		FEStats.Text = "- FE Status: Disabled!"
	end
end