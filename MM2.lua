if game.PlaceId == 142823291 then --Proofing just because ;)
--Note: Don't reset with godmode on or you will be stuck on a black screen for a reasonable amount of time
--Change to false if you dont like printing to console
local printvar = true
--Change to true if you want to see names instead of murderer, sheriff, and innocents with esp
local espnames = true
--Change keybinds to your liking
local coinkey = "c" --Coin grabber keybind
local MSkey = "m" --Murderer/Sheriff esp keybind
local playerskey = "q" --All players esp keybind
local espoffkey = "b" --Turn esp off keybind
local flykey = "f" --Fly keybind
local noclipkey = "r" --Noclip keybind
local godmodekey = "g" --Godmode keybind
local xrayonkey = "x" --Xray on keybind
local xrayoffkey = "z" --Xray off keybind
local bringgunkey = "t" --Teleport to gun keybind
local hideshowguikey = "p" --Show/Hide gui keybind
--End of easy customization options

--Gui Buttons and Status--
local MM2 = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Coin = Instance.new("TextButton")
local MSEsp = Instance.new("TextButton")
local MSESPActive = Instance.new("TextLabel")
local PlayersEsp = Instance.new("TextButton")
local PlayersEspActive = Instance.new("TextLabel")
local EspOff = Instance.new("TextButton")
local EspOffActive = Instance.new("TextLabel")
local Run = Instance.new("TextButton")
local RunActiveGui = Instance.new("TextLabel")
local Fly = Instance.new("TextButton")
local FlyActive = Instance.new("TextLabel")
local Noclip = Instance.new("TextButton")
local NoclipActive = Instance.new("TextLabel")
local GodMode = Instance.new("TextButton")
local GodModeActive = Instance.new("TextLabel")
local GuiXrayOn = Instance.new("TextButton")
local GuiXrayOnActive = Instance.new("TextLabel")
local GuiXrayOff = Instance.new("TextButton")
local GuiXrayOffActive = Instance.new("TextLabel")
local BringGun = Instance.new("TextButton")
local Keybinds = Instance.new("TextButton")
local KeybindsActive = Instance.new("TextLabel")
local Hide = Instance.new("TextButton")
local Show = Instance.new("TextButton")

--Other Variables
local runActive = false
local teamname = "None"
local murderer = "None"
local sheriff = "None"
local player = game:GetService("Players").LocalPlayer

local esp = false
local plresp
local track = false

local NClip = false
local char = game.Players.LocalPlayer.Character
local obj = game.workspace
local mouse=game.Players.LocalPlayer:GetMouse()
local LP = game:GetService("Players").LocalPlayer
local flyvar = false

local showvar = true
local inputcode = game:GetService("UserInputService")
local godmodevar = false
local keyOff = false
local NClip = false

--Start of Gui--
MM2.Name = "MM2"
MM2.Parent = game.CoreGui
MM2.ResetOnSpawn = false

Main.Name = "Main"
Main.Parent = MM2
Main.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Main.BorderColor3 = Color3.new(0, 0.607843, 1)
Main.BorderSizePixel = 5
Main.Draggable = true
Main.Position = UDim2.new(0.574999988, 0, 0.349999994, 0)
Main.Size = UDim2.new(0.2, 0, 0.4, 0)
Main.Visible = true
Main.Active = true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Title.BorderColor3 = Color3.new(0, 0.607843, 1) 
Title.BorderSizePixel = 5
Title.Draggable = true
Title.Size = UDim2.new(1.005, 0, 0.2, 0)
Title.ZIndex = 3
Title.Font = Enum.Font.SciFi
Title.FontSize = Enum.FontSize.Size24
Title.Text = "Murder Mystery 2"
Title.TextColor3 = Color3.new(0, 0.607843, 1)
Title.TextScaled = true
Title.TextSize = 20
Title.TextStrokeColor3 = Color3.new(0.129412, 0.54902, 1)
Title.TextWrapped = true

--Start of functions for buttons--
function Create(base, team, colors1, colors2, colors3, teamname) --For all esps
	local bb = Instance.new("BillboardGui",player.PlayerGui)
	bb.Adornee = base
	bb.ExtentsOffset = Vector3.new(0,1,0)
	bb.AlwaysOnTop = true
	bb.Size = UDim2.new(0,5,0,5)
	bb.StudsOffset = Vector3.new(0,1,0)
	bb.Name = "tracker"
	local frame = Instance.new("Frame",bb)
	frame.ZIndex = 10
	frame.BackgroundTransparency = 0.3
	frame.Size = UDim2.new(1,0,1,0)
	local txtlbl = Instance.new("TextLabel",bb)
	txtlbl.ZIndex = 10
	txtlbl.Text = teamname
	txtlbl.BackgroundTransparency = 1
	txtlbl.Position = UDim2.new(0,0,0,-35)
	txtlbl.Size = UDim2.new(1,0,10,0)
	txtlbl.Font = "ArialBold"
	txtlbl.FontSize = "Size12"
	txtlbl.TextStrokeTransparency = 0.5
	if team then --For teams, left over from origianl but never removed
		txtlbl.TextColor3 = Color3.new(0,0,255)
		frame.BackgroundColor3 = Color3.new(0,0,255)
	else
		txtlbl.TextColor3 = Color3.new(colors1,colors2,colors3)
		frame.BackgroundColor3 = Color3.new(colors1,colors2,colors3)
	end
end

function findmurderer() --Find who the murderer is
	local colors1 = 255
	local colors2 = 0
	local colors3 = 0
	for i, v in pairs(game:GetService("Players"):GetChildren()) do
		if v ~= game:GetService("Players").LocalPlayer then
			for i,v in pairs(v.Backpack:GetChildren()) do --Checks backpack for knife
				if v.Name == "Knife" then
					if espnames == true then
						local teamname = v.Parent.Parent.Name
						if v.Parent.Parent.Character.Head ~= nil then
							Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from murderer!")
							end
						end
					elseif espnames == false then
						local teamname = "Murderer"
						if v.Parent.Parent.Character.Head ~= nil then
							Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from murderer!")
							end
						end
					end
					murderer = v.Parent.Parent.Name
					if printvar == true then
						print(murderer.." is Murderer")
					end
				end
			end
			for i,v in pairs(v.Character:GetChildren()) do --Checks workspace player for knife (holding it)
				if v.Name == "Knife" then
					if espnames == true then
						local teamname = v.Parent.Name
						if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil
							Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from murderer!")
							end
						end
					elseif espnames == false then
						local teamname = "Murderer"
						if v.Parent.Head ~= nil then
							Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from murderer!")
							end
						end
					end
					murderer = v.Parent.Name
					if printvar == true then --Tried to failproof to stop printing nil
						local murderer1 = tostring(v.Parent.Name)
						print(murderer1.." is Murderer")
					end
				end
			end
		end
	end
end
	
function findsheriff() --Find who the sheriff is
	local colors1 = 0
	local colors2 = 0
	local colors3 = 255
	for i, v in pairs(game:GetService("Players"):GetChildren()) do
		if v ~= game:GetService("Players").LocalPlayer then
			for i,v in pairs(v.Backpack:GetChildren()) do
				if v.Name == "Revolver" or v.Name == "Gun" then --Lazy to check if its revolver or gun and checks backpack for gun
					if espnames == true then
						local teamname = v.Parent.Parent.Name
						if v.Parent.Parent.Character.Head ~= nil then --Tried to failproof to stop printing nil
							Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from sheriff!")
							end
						end
					elseif espnames == false then
						local teamname = "Sheriff"
						if v.Parent.Parent.Character.Head ~= nil then --Tried to failproof to stop printing nil
							Create(v.Parent.Parent.Character.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from sheriff!")
							end
						end
					end
					sheriff = v.Parent.Parent.Name
					if printvar == true then
						local sheriff1 = tostring(v.Parent.Parent.Name)
						print(sheriff1.." is Sheriff")
					end
				end
			end
			for i,v in pairs(v.Character:GetChildren()) do
				if v.Name == "Revolver" or v.Name == "Gun" then --Lazy to check if its revolver or gun and checks workspace player for gun (holding it)
					if espnames == true then
						local teamname = v.Parent.Name
						if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil
							Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from sheriff!")
							end
						end
					elseif espnames == false then
						local teamname = "Sheriff"
						if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil
							Create(v.Parent.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from sheriff!")
							end
						end
					end
					sheriff = v.Parent.Name
					if printvar == true then
						local sheriff1 = tostring(v.Parent.Name)
						print(sheriff1.." is Sheriff")
					end
				end
			end
		end
	end
end

function findplayers() --Find all players but local player
	findmurderer() --Finds murderer
	findsheriff() --Finds sheriff
	local colors1 = 0
	local colors2 = 255
	local colors3 = 0
	for i, v in pairs(game:GetService("Players"):GetChildren()) do
		if v ~= game:GetService("Players").LocalPlayer then --If not local player
			if v.Name ~= murderer then --If not murderer
				if v.Name ~= sheriff then --If not sheriff
					if espnames == true then
						local teamname = v.Name
						if v.Character.Head ~= nil then --Tried to failproof to stop printing nil
							Create(v.Character.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from sheriff!")
							end
						end
					elseif espnames == false then
						local teamname = "Innocents"
						if v.Parent.Head ~= nil then --Tried to failproof to stop printing nil
							Create(v.Character.Head, false, colors1 ,colors2, colors3, teamname)
						else
							if printvar == true then
								print("Head missing from sheriff!")
							end
						end
					end
				end
			end
		end
	end
end

function Clear() --Clears all the esps
	for _,v in pairs(player.PlayerGui:children()) do
		if v.Name == "tracker" and v:isA("BillboardGui") then
			v:Destroy()
		end
	end
end

function XrayOn(obj) --Enables xray
	for _,v in pairs(obj:GetChildren()) do 
		if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
			v.LocalTransparencyModifier = 0.75
		end
	XrayOn(v) 
	end
end 

function XrayOff(obj) --Disables xray
	for _,v in pairs(obj:GetChildren()) do
		if (v:IsA("BasePart")) and not v.Parent:FindFirstChild("Humanoid") then
			v.LocalTransparencyModifier = 0
		end XrayOff(v)
	end
end

function sFLY() --Fly function
	repeat wait() until LP and LP.Character and LP.Character:FindFirstChild('Torso') and LP.Character:FindFirstChild('Humanoid')
	repeat wait() until mouse
	
	local T = LP.Character.Torso
	local CONTROL = {F = 0, B = 0, L = 0, R = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
	local SPEED = 0
	
	local function FLY()
		FLYING = true
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
			until not FLYING
			CONTROL = {F = 0, B = 0, L = 0, R = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			SPEED = 0
			BG:destroy()
			BV:destroy()
			LP.Character.Humanoid.PlatformStand = false
		end)
	end
	
	mouse.KeyDown:connect(function(KEY)
		if KEY:lower() == 'w' then
			CONTROL.F = 1
		elseif KEY:lower() == 's' then
			CONTROL.B = -1
		elseif KEY:lower() == 'a' then
			CONTROL.L = -1 
		elseif KEY:lower() == 'd' then 
			CONTROL.R = 1
		end
	end)
	
	mouse.KeyUp:connect(function(KEY)
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
	FLY()
end

function NOFLY() --Unfly function
	FLYING = false
	LP.Character.Humanoid.PlatformStand = false
end

local noclipcoro = coroutine.wrap(function() --Noclip function
	while true do
		if NClip == true then
			if game.Players ~= nil then
				if game.Players.LocalPlayer ~= nil then
					if game.Players.LocalPlayer.Character ~= nil then
						if game.Players.LocalPlayer.Character:FindFirstChild("Torso") ~= nil then
							if game.Players.LocalPlayer.Character:FindFirstChild("Head") ~= nil then
								game.Players.LocalPlayer.Character.Torso.CanCollide = false
								game.Players.LocalPlayer.Character.Head.CanCollide = false
							end
						end
					end
				end
			end
		end
	game:service("RunService").Stepped:wait()
	end
end)

noclipcoro() --For noclip to work

game:GetService("Players").LocalPlayer.CharacterAdded:connect(function(character) --Resets specific things for ease
	flyvar = false
	FlyActive.Text = "Inactive"
	FlyActive.TextColor3 = Color3.new(1, 0, 1)
	godmodevar = false
	GodModeActive.Text = "Inactive"
	GodModeActive.TextColor3 = Color3.new(1, 0, 1)
	Clear()
	MSESPActive.Text = "Inactive"
	MSESPActive.TextColor3 = Color3.new(1, 0, 1)
	PlayersEspActive.Text = "Inactive"
	PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)
	EspOffActive.Text = "Active"
	EspOffActive.TextColor3 = Color3.new(0, 1, 0)
end)

mouse.KeyDown:connect(function(KeyDown) --If shift is held, run
	if KeyDown == "0" and runActive == false and keyOff == false then
		runActive = true
		player.Character.Humanoid.WalkSpeed = 32
		RunActiveGui.Text = "Active"
		RunActiveGui.TextColor3 = Color3.new(0, 1, 0)
	end
end)

mouse.KeyUp:connect(function(KeyUp) --If shift is released, walk
	if KeyUp == "0" and runActive == true and keyOff == false then
		runActive = false
		player.Character.Humanoid.WalkSpeed = 16
		RunActiveGui.Text = "Inactive"
		RunActiveGui.TextColor3 = Color3.new(1, 0, 1)
	end
end)

function coingrabberfunc() --Coin grabber function
	local children = game.Workspace:GetChildren()
	for _, child in pairs(children) do
  		for _, child in pairs(child:GetChildren()) do
       		table.insert(children, child)
  		 end
  		 if child:IsA("BasePart") and child.Name == "Coin" then
         	child.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		end
  	end
end

function godmodefunc() --Godmode function
	local player = game.Players.LocalPlayer
	if player.Character then
		if player.Character:FindFirstChild("Humanoid") then
			player.Character.Humanoid.Name = "1"
		end
		local l = player.Character["1"]:Clone()
		l.Parent = player.Character
		l.Name = "Humanoid"; wait(0.1)
		player.Character["1"]:Destroy()
		workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
		player.Character.Animate.Disabled = true; wait(0.1)
		player.Character.Animate.Disabled = false
	end
end

--Coin Grabber--
Coin.Name = "CoinGrabber"
Coin.Parent = Main
Coin.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Coin.BorderColor3 = Color3.new(0, 0.607843, 1)
Coin.BorderSizePixel = 5
Coin.Position = UDim2.new(0, 0, 0.215, 0)
Coin.Size = UDim2.new(1.005, 0, 0.08, 0)
Coin.ZIndex = 4
Coin.Font = Enum.Font.SciFi
Coin.FontSize = Enum.FontSize.Size24
Coin.Text = "Coin Grabber ["..string.upper(coinkey).."]"
Coin.TextColor3 = Color3.fromRGB(255, 255, 26)
Coin.TextSize = 20
Coin.TextWrapped = true
Coin.MouseButton1Down:connect(function(x, y)
	coingrabberfunc()
end)

--Murderer/Sheriff Esp--
MSESPActive.Name = "MSEspActive"
MSESPActive.Parent = Main
MSESPActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
MSESPActive.BorderColor3 = Color3.new(0, 0.607843, 1)
MSESPActive.BorderSizePixel = 5
MSESPActive.Position = UDim2.new(0.755, 0, 0.315, 0)
MSESPActive.Size = UDim2.new(0.25, 0, 0.08, 0)
MSESPActive.ZIndex = 4
MSESPActive.Font = Enum.Font.SciFi
MSESPActive.FontSize = Enum.FontSize.Size24
MSESPActive.Text = "Inactive"
MSESPActive.TextColor3 = Color3.new(1, 0, 1)
MSESPActive.TextSize = 20
MSESPActive.TextWrapped = true

MSEsp.Name = "MSEsp"
MSEsp.Parent = Main
MSEsp.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
MSEsp.BorderColor3 = Color3.new(0, 0.607843, 1)
MSEsp.BorderSizePixel = 5
MSEsp.Position = UDim2.new(0, 0, 0.315, 0)
MSEsp.Size = UDim2.new(0.75, 0, 0.08, 0)
MSEsp.ZIndex = 4
MSEsp.Font = Enum.Font.SciFi
MSEsp.FontSize = Enum.FontSize.Size24
MSEsp.Text = "Murderer/Sheriff Esp ["..string.upper(MSkey).."]"
MSEsp.TextColor3 = Color3.fromRGB(255, 102, 255)
MSEsp.TextSize = 20
MSEsp.TextWrapped = true
MSEsp.MouseButton1Down:connect(function(x, y)
	murderer = "None"
	sheriff = "None"
	Clear()
	findmurderer()
	findsheriff()
	if printvar == true then
		print("Murderer/Sheriff")
	end
	MSESPActive.Text = "Active"
	MSESPActive.TextColor3 = Color3.new(0, 1, 0)
	PlayersEspActive.Text = "Inactive"
	PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)
	EspOffActive.Text = "Inactive"
	EspOffActive.TextColor3 = Color3.new(1, 0, 1)
end)

--All Players Esp
PlayersEspActive.Name = "PlayersEspActive"
PlayersEspActive.Parent = Main
PlayersEspActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
PlayersEspActive.BorderColor3 = Color3.new(0, 0.607843, 1)
PlayersEspActive.BorderSizePixel = 5
PlayersEspActive.Position = UDim2.new(0.755, 0, 0.415, 0)
PlayersEspActive.Size = UDim2.new(0.25, 0, 0.08, 0)
PlayersEspActive.ZIndex = 4
PlayersEspActive.Font = Enum.Font.SciFi
PlayersEspActive.FontSize = Enum.FontSize.Size24
PlayersEspActive.Text = "Inactive"
PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)
PlayersEspActive.TextSize = 20
PlayersEspActive.TextWrapped = true

PlayersEsp.Name = "PlayersEsp"
PlayersEsp.Parent = Main
PlayersEsp.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
PlayersEsp.BorderColor3 = Color3.new(0, 0.607843, 1)
PlayersEsp.BorderSizePixel = 5
PlayersEsp.Position = UDim2.new(0, 0, 0.415, 0)
PlayersEsp.Size = UDim2.new(0.75, 0, 0.08, 0)
PlayersEsp.ZIndex = 4
PlayersEsp.Font = Enum.Font.SciFi
PlayersEsp.FontSize = Enum.FontSize.Size24
PlayersEsp.Text = "All Players Esp ["..string.upper(playerskey).."]"
PlayersEsp.TextColor3 = Color3.fromRGB(102, 255, 51)
PlayersEsp.TextSize = 20
PlayersEsp.TextWrapped = true
PlayersEsp.MouseButton1Down:connect(function(x, y)
	Clear()
	if printvar == true then
		print("Players Esp")
	end
	MSESPActive.Text = "Inactive"
	MSESPActive.TextColor3 = Color3.new(1, 0, 1)
	PlayersEspActive.Text = "Active"
	PlayersEspActive.TextColor3 = Color3.new(0, 1, 0)
	EspOffActive.Text = "Inactive"
	EspOffActive.TextColor3 = Color3.new(1, 0, 1)
	findplayers()
end)

--Esp Off
EspOffActive.Name = "EspOffActive"
EspOffActive.Parent = Main
EspOffActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
EspOffActive.BorderColor3 = Color3.new(0, 0.607843, 1)
EspOffActive.BorderSizePixel = 5
EspOffActive.Position = UDim2.new(0.755, 0, 0.515, 0)
EspOffActive.Size = UDim2.new(0.25, 0, 0.08, 0)
EspOffActive.ZIndex = 4
EspOffActive.Font = Enum.Font.SciFi
EspOffActive.FontSize = Enum.FontSize.Size24
EspOffActive.Text = "Active"
EspOffActive.TextColor3 = Color3.new(0, 1, 0)
EspOffActive.TextSize = 20
EspOffActive.TextWrapped = true

EspOff.Name = "EspOff"
EspOff.Parent = Main
EspOff.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
EspOff.BorderColor3 = Color3.new(0, 0.607843, 1)
EspOff.BorderSizePixel = 5
EspOff.Position = UDim2.new(0, 0, 0.515, 0)
EspOff.Size = UDim2.new(0.75, 0, 0.08, 0)
EspOff.ZIndex = 4
EspOff.Font = Enum.Font.SciFi
EspOff.FontSize = Enum.FontSize.Size24
EspOff.Text = "Esp Off ["..string.upper(espoffkey).."]"
EspOff.TextColor3 = Color3.fromRGB(255, 255, 255)
EspOff.TextSize = 20
EspOff.TextWrapped = true
EspOff.MouseButton1Down:connect(function(x, y)
	Clear()
	if printvar == true then
		print("Esp Off")
	end
	MSESPActive.Text = "Inactive"
	MSESPActive.TextColor3 = Color3.new(1, 0, 1)
	PlayersEspActive.Text = "Inactive"
	PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)
	EspOffActive.Text = "Active"
	EspOffActive.TextColor3 = Color3.new(0, 1, 0)
end)

--Run
RunActiveGui.Name = "RunActiveGui"
RunActiveGui.Parent = Main
RunActiveGui.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
RunActiveGui.BorderColor3 = Color3.new(0, 0.607843, 1)
RunActiveGui.BorderSizePixel = 5
RunActiveGui.Position = UDim2.new(0.755, 0, 0.615, 0)
RunActiveGui.Size = UDim2.new(0.25, 0, 0.08, 0)
RunActiveGui.ZIndex = 4
RunActiveGui.Font = Enum.Font.SciFi
RunActiveGui.FontSize = Enum.FontSize.Size24
RunActiveGui.Text = "Inactive"
RunActiveGui.TextColor3 = Color3.new(1, 0, 1)
RunActiveGui.TextSize = 20
RunActiveGui.TextWrapped = true

Run.Name = "Run"
Run.Parent = Main
Run.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Run.BorderColor3 = Color3.new(0, 0.607843, 1)
Run.BorderSizePixel = 5
Run.Position = UDim2.new(0, 0, 0.615, 0)
Run.Size = UDim2.new(0.75, 0, 0.08, 0)
Run.ZIndex = 4
Run.Font = Enum.Font.SciFi
Run.FontSize = Enum.FontSize.Size24
Run.Text = "Run [Shift]"
Run.TextColor3 = Color3.fromRGB(255, 51, 0)
Run.TextSize = 20
Run.TextWrapped = true
Run.MouseButton1Down:connect(function(x, y)
	if runActive == false then
		runActive = true
		player.Character.Humanoid.WalkSpeed = 32
		RunActiveGui.Text = "Active"
		RunActiveGui.TextColor3 = Color3.new(0, 1, 0)
	elseif runActive == true then
		runActive = false
		player.Character.Humanoid.WalkSpeed = 16
		RunActiveGui.Text = "Inactive"
		RunActiveGui.TextColor3 = Color3.new(1, 0, 1)
	end
end)

--Fly
FlyActive.Name = "FlyActive"
FlyActive.Parent = Main
FlyActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
FlyActive.BorderColor3 = Color3.new(0, 0.607843, 1)
FlyActive.BorderSizePixel = 5
FlyActive.Position = UDim2.new(0.755, 0, 0.715, 0)
FlyActive.Size = UDim2.new(0.25, 0, 0.08, 0)
FlyActive.ZIndex = 4
FlyActive.Font = Enum.Font.SciFi
FlyActive.FontSize = Enum.FontSize.Size24
FlyActive.Text = "Inactive"
FlyActive.TextColor3 = Color3.new(1, 0, 1)
FlyActive.TextSize = 20
FlyActive.TextWrapped = true

Fly.Name = "Fly"
Fly.Parent = Main
Fly.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Fly.BorderColor3 = Color3.new(0, 0.607843, 1)
Fly.BorderSizePixel = 5
Fly.Position = UDim2.new(0, 0, 0.715, 0)
Fly.Size = UDim2.new(0.75, 0, 0.08, 0)
Fly.ZIndex = 4
Fly.Font = Enum.Font.SciFi
Fly.FontSize = Enum.FontSize.Size24
Fly.Text = "Fly ["..string.upper(flykey).."]"
Fly.TextColor3 = Color3.fromRGB(204, 255, 255)
Fly.TextSize = 20
Fly.TextWrapped = true
Fly.MouseButton1Down:connect(function(x, y)
	if flyvar == false then
		sFLY()
		flyvar = true
		FlyActive.Text = "Active"
		FlyActive.TextColor3 = Color3.new(0, 1, 0)
	elseif flyvar == true then
		flyvar = false
		NOFLY()
		FlyActive.Text = "Inactive"
		FlyActive.TextColor3 = Color3.new(1, 0, 1)
	end
end)

--Noclip
NoclipActive.Name = "NoclipActive"
NoclipActive.Parent = Main
NoclipActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
NoclipActive.BorderColor3 = Color3.new(0, 0.607843, 1)
NoclipActive.BorderSizePixel = 5
NoclipActive.Position = UDim2.new(0.755, 0, 0.815, 0)
NoclipActive.Size = UDim2.new(0.25, 0, 0.08, 0)
NoclipActive.ZIndex = 4
NoclipActive.Font = Enum.Font.SciFi
NoclipActive.FontSize = Enum.FontSize.Size24
NoclipActive.Text = "Inactive"
NoclipActive.TextColor3 = Color3.new(1, 0, 1)
NoclipActive.TextSize = 20
NoclipActive.TextWrapped = true

Noclip.Name = "Noclip"
Noclip.Parent = Main
Noclip.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Noclip.BorderColor3 = Color3.new(0, 0.607843, 1)
Noclip.BorderSizePixel = 5
Noclip.Position = UDim2.new(0, 0, 0.815, 0)
Noclip.Size = UDim2.new(0.75, 0, 0.08, 0)
Noclip.ZIndex = 4
Noclip.Font = Enum.Font.SciFi
Noclip.FontSize = Enum.FontSize.Size24
Noclip.Text = "Noclip ["..string.upper(noclipkey).."]"
Noclip.TextColor3 = Color3.fromRGB(0, 102, 255)
Noclip.TextSize = 20
Noclip.TextWrapped = true
Noclip.MouseButton1Down:connect(function(x, y)
	if NClip == false then
		NClip = true
		if printvar == true then
			print("Noclip Enabled")
		end
		NoclipActive.Text = "Active"
		NoclipActive.TextColor3 = Color3.new(0, 1, 0)
	elseif NClip == true then
		NClip = false
		if printvar == true then
			print("Noclip Disabled")
		end
		NoclipActive.Text = "Inactive"
		NoclipActive.TextColor3 = Color3.new(1, 0, 1)
	end
end)

--GodMode
GodModeActive.Name = "GodModeActive"
GodModeActive.Parent = Main
GodModeActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GodModeActive.BorderColor3 = Color3.new(0, 0.607843, 1)
GodModeActive.BorderSizePixel = 5
GodModeActive.Position = UDim2.new(0.755, 0, 0.915, 0)
GodModeActive.Size = UDim2.new(0.25, 0, 0.08, 0)
GodModeActive.ZIndex = 4
GodModeActive.Font = Enum.Font.SciFi
GodModeActive.FontSize = Enum.FontSize.Size24
GodModeActive.Text = "Inactive"
GodModeActive.TextColor3 = Color3.new(1, 0, 1)
GodModeActive.TextSize = 20
GodModeActive.TextWrapped = true

GodMode.Name = "GodMode"
GodMode.Parent = Main
GodMode.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GodMode.BorderColor3 = Color3.new(0, 0.607843, 1)
GodMode.BorderSizePixel = 5
GodMode.Position = UDim2.new(0, 0, 0.915, 0)
GodMode.Size = UDim2.new(0.75, 0, 0.08, 0)
GodMode.ZIndex = 4
GodMode.Font = Enum.Font.SciFi
GodMode.FontSize = Enum.FontSize.Size24
GodMode.Text = "God Mode ["..string.upper(godmodekey).."]"
GodMode.TextColor3 = Color3.fromRGB(255, 255, 255)
GodMode.TextSize = 20
GodMode.TextWrapped = true
GodMode.MouseButton1Down:connect(function(x, y)
	if godmodevar == false then
		GodModeActive.Text = "Active"
		GodModeActive.TextColor3 = Color3.new(0, 1, 0)
		godmodevar = true
		godmodefunc()
	end
end)

--Xray On
GuiXrayOnActive.Name = "GuiXrayOnActive"
GuiXrayOnActive.Parent = Main
GuiXrayOnActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GuiXrayOnActive.BorderColor3 = Color3.new(0, 0.607843, 1)
GuiXrayOnActive.BorderSizePixel = 5
GuiXrayOnActive.Position = UDim2.new(0.755, 0, 1.015, 0)
GuiXrayOnActive.Size = UDim2.new(0.25, 0, 0.08, 0)
GuiXrayOnActive.ZIndex = 4
GuiXrayOnActive.Font = Enum.Font.SciFi
GuiXrayOnActive.FontSize = Enum.FontSize.Size24
GuiXrayOnActive.Text = "Inactive"
GuiXrayOnActive.TextColor3 = Color3.new(1, 0, 1)
GuiXrayOnActive.TextSize = 20
GuiXrayOnActive.TextWrapped = true

GuiXrayOn.Name = "XrayOn"
GuiXrayOn.Parent = Main
GuiXrayOn.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GuiXrayOn.BorderColor3 = Color3.new(0, 0.607843, 1)
GuiXrayOn.BorderSizePixel = 5
GuiXrayOn.Position = UDim2.new(0, 0, 1.015, 0)
GuiXrayOn.Size = UDim2.new(0.75, 0, 0.08, 0)
GuiXrayOn.ZIndex = 4
GuiXrayOn.Font = Enum.Font.SciFi
GuiXrayOn.FontSize = Enum.FontSize.Size24
GuiXrayOn.Text = "Xray On ["..string.upper(xrayonkey).."]"
GuiXrayOn.TextColor3 = Color3.fromRGB(255, 204, 102)
GuiXrayOn.TextSize = 20
GuiXrayOn.TextWrapped = true
GuiXrayOn.MouseButton1Down:connect(function(x, y)
	GuiXrayOnActive.Text = "Active"
	GuiXrayOnActive.TextColor3 = Color3.new(0, 1, 0)
	GuiXrayOffActive.Text = "Inactive"
	GuiXrayOffActive.TextColor3 = Color3.new(1, 0, 1)
	XrayOn(obj)
end)

--Xray Off
GuiXrayOffActive.Name = "GuiXrayOffActive"
GuiXrayOffActive.Parent = Main
GuiXrayOffActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GuiXrayOffActive.BorderColor3 = Color3.new(0, 0.607843, 1)
GuiXrayOffActive.BorderSizePixel = 5
GuiXrayOffActive.Position = UDim2.new(0.755, 0, 1.115, 0)
GuiXrayOffActive.Size = UDim2.new(0.25, 0, 0.08, 0)
GuiXrayOffActive.ZIndex = 4
GuiXrayOffActive.Font = Enum.Font.SciFi
GuiXrayOffActive.FontSize = Enum.FontSize.Size24
GuiXrayOffActive.Text = "Active"
GuiXrayOffActive.TextColor3 = Color3.new(0, 1, 0)
GuiXrayOffActive.TextSize = 20
GuiXrayOffActive.TextWrapped = true

GuiXrayOff.Name = "XrayOff"
GuiXrayOff.Parent = Main
GuiXrayOff.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
GuiXrayOff.BorderColor3 = Color3.new(0, 0.607843, 1)
GuiXrayOff.BorderSizePixel = 5
GuiXrayOff.Position = UDim2.new(0, 0, 1.115, 0)
GuiXrayOff.Size = UDim2.new(0.75, 0, 0.08, 0)
GuiXrayOff.ZIndex = 4
GuiXrayOff.Font = Enum.Font.SciFi
GuiXrayOff.FontSize = Enum.FontSize.Size24
GuiXrayOff.Text = "Xray Off ["..string.upper(xrayoffkey).."]"
GuiXrayOff.TextColor3 = Color3.fromRGB(255, 153, 51)
GuiXrayOff.TextSize = 20
GuiXrayOff.TextWrapped = true
GuiXrayOff.MouseButton1Down:connect(function(x, y)
	GuiXrayOnActive.Text = "Inactive"
	GuiXrayOnActive.TextColor3 = Color3.new(1, 0, 1)
	GuiXrayOffActive.Text = "Active"
	GuiXrayOffActive.TextColor3 = Color3.new(0, 1, 0)
	XrayOff(obj)
end)

--Bring Gun to You
BringGun.Name = "BringGun"
BringGun.Parent = Main
BringGun.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
BringGun.BorderColor3 = Color3.new(0, 0.607843, 1)
BringGun.BorderSizePixel = 5
BringGun.Position = UDim2.new(0, 0, 1.215, 0)
BringGun.Size = UDim2.new(1.005, 0, 0.08, 0)
BringGun.ZIndex = 4
BringGun.Font = Enum.Font.SciFi
BringGun.FontSize = Enum.FontSize.Size24
BringGun.Text = "Teleport Gun ["..string.upper(bringgunkey).."]"
BringGun.TextColor3 = Color3.fromRGB(0, 255, 0)
BringGun.TextSize = 20
BringGun.TextWrapped = true
BringGun.MouseButton1Down:connect(function(x, y)
	if game.Workspace.GunDrop.CFrame ~= nil then
		game.Workspace.GunDrop.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
	else
		if printvar == true then
			print("Gun not currently dropped")
		end
	end
end)

--Keybinds
KeybindsActive.Name = "KeybindsActive"
KeybindsActive.Parent = Main
KeybindsActive.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
KeybindsActive.BorderColor3 = Color3.new(0, 0.607843, 1)
KeybindsActive.BorderSizePixel = 5
KeybindsActive.Position = UDim2.new(0.755, 0, 1.315, 0)
KeybindsActive.Size = UDim2.new(0.25, 0, 0.08, 0)
KeybindsActive.ZIndex = 4
KeybindsActive.Font = Enum.Font.SciFi
KeybindsActive.FontSize = Enum.FontSize.Size24
KeybindsActive.Text = "Active"
KeybindsActive.TextColor3 = Color3.new(0, 1, 0)
KeybindsActive.TextSize = 20
KeybindsActive.TextWrapped = true

Keybinds.Name = "Keybinds"
Keybinds.Parent = Main
Keybinds.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Keybinds.BorderColor3 = Color3.new(0, 0.607843, 1)
Keybinds.BorderSizePixel = 5
Keybinds.Position = UDim2.new(0, 0, 1.315, 0)
Keybinds.Size = UDim2.new(0.75, 0, 0.08, 0)
Keybinds.ZIndex = 4
Keybinds.Font = Enum.Font.SciFi
Keybinds.FontSize = Enum.FontSize.Size24
Keybinds.Text = "Keybinds [Ctrl]"
Keybinds.TextColor3 = Color3.fromRGB(255, 255, 255)
Keybinds.TextSize = 20
Keybinds.TextWrapped = true
Keybinds.MouseButton1Down:connect(function(x, y)
	if keyOff == true then
		keyOff = false
		KeybindsActive.Text = "Active"
		KeybindsActive.TextColor3 = Color3.new(0, 1, 0)
	elseif keyOff == false then
		keyOff = true
		KeybindsActive.Text = "Inactive"
		KeybindsActive.TextColor3 = Color3.new(1, 0, 1)
	end
end)

Show.Name = "Show"
Show.Parent = MM2
Show.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Show.BorderColor3 = Color3.new(0, 0.607843, 1)
Show.BorderSizePixel = 5
Show.Position = UDim2.new(0, 0, 0.85799998, 0)
Show.Size = UDim2.new(0.08, 0, 0.04, 0)
Show.ZIndex = 4
Show.Font = Enum.Font.SciFi
Show.FontSize = Enum.FontSize.Size24
Show.Text = "Show ["..string.upper(hideshowguikey).."]"
Show.TextColor3 = Color3.new(0, 0.333333, 1)
Show.TextSize = 20
Show.TextWrapped = true
Show.Visible = false

Hide.Name = "Hide"
Hide.Parent = Main
Hide.BackgroundColor3 = Color3.new(0.188235, 0.188235, 0.188235)
Hide.BorderColor3 = Color3.new(0, 0.607843, 1)
Hide.BorderSizePixel = 5
Hide.Position = UDim2.new(0, 0, 1.415, 0)
Hide.Size = UDim2.new(1.005, 0, 0.08, 0)
Hide.ZIndex = 4
Hide.Font = Enum.Font.SciFi
Hide.FontSize = Enum.FontSize.Size24
Hide.Text = "Hide ["..string.upper(hideshowguikey).."]"
Hide.TextColor3 = Color3.new(0, 0.333333, 1)
Hide.TextSize = 20
Hide.TextWrapped = true

Hide.MouseButton1Down:connect(function(x, y)
	if showvar == true then
		showvar = false
		Main.Visible = false
		Show.Visible = true
		if printvar == true then
			print("Hidden")
		end
	end
end)

Show.MouseButton1Down:connect(function(x, y)
	if showvar == false then
		showvar = true
		Show.Visible = false
		Main.Visible = true
		if printvar == true then
			print("Shown")
		end
	end
end)

inputcode.InputBegan:connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftControl then
		if keyOff == true then
			keyOff = false
			KeybindsActive.Text = "Active"
			KeybindsActive.TextColor3 = Color3.new(0, 1, 0)
		elseif keyOff == false then
			keyOff = true
			KeybindsActive.Text = "Inactive"
			KeybindsActive.TextColor3 = Color3.new(1, 0, 1)
		end
	end
end)

mouse.keyDown:connect(function(key)
	if keyOff == false then
		if key == coinkey then --Coin Grabber
			coingrabberfunc()
		elseif key == MSkey then --Murderer/Sheriff Esp On
			murderer = "None"
			sheriff = "None"
			Clear()
			findmurderer()
			findsheriff()
			if printvar == true then
				print("Murderer/Sheriff")
			end
			MSESPActive.Text = "Active"
			MSESPActive.TextColor3 = Color3.new(0, 1, 0)
			PlayersEspActive.Text = "Inactive"
			PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)
			EspOffActive.Text = "Inactive"
			EspOffActive.TextColor3 = Color3.new(1, 0, 1)
		elseif key == playerskey then --Player Esp On
			Clear()
			MSESPActive.Text = "Inactive"
			MSESPActive.TextColor3 = Color3.new(1, 0, 1)
			PlayersEspActive.Text = "Active"
			PlayersEspActive.TextColor3 = Color3.new(0, 1, 0)
			EspOffActive.Text = "Inactive"
			EspOffActive.TextColor3 = Color3.new(1, 0, 1)
			findplayers()
			if printvar == true then
				print("Players")
			end
		elseif key == espoffkey then --Esp off
			Clear()
			if printvar == true then
				print("Esp Disabled")
			end
			MSESPActive.Text = "Inactive"
			MSESPActive.TextColor3 = Color3.new(1, 0, 1)
			PlayersEspActive.Text = "Inactive"
			PlayersEspActive.TextColor3 = Color3.new(1, 0, 1)
			EspOffActive.Text = "Active"
			EspOffActive.TextColor3 = Color3.new(0, 1, 0)
		elseif key == flykey then --Fly
			if flyvar == false then
				sFLY()
				flyvar = true
				FlyActive.Text = "Active"
				FlyActive.TextColor3 = Color3.new(0, 1, 0)
			elseif flyvar == true then
				flyvar = false
				NOFLY()
				FlyActive.Text = "Inactive"
				FlyActive.TextColor3 = Color3.new(1, 0, 1)
			end
		elseif key == noclipkey then --Noclip toggle
			if NClip == false then
				NClip = true
				if printvar == true then
					print("Noclip Enabled")
				end
				NoclipActive.Text = "Active"
				NoclipActive.TextColor3 = Color3.new(0, 1, 0)
			elseif NClip == true then
				NClip = false
				if printvar == true then
					print("Noclip Disabled")
				end
				NoclipActive.Text = "Inactive"
				NoclipActive.TextColor3 = Color3.new(1, 0, 1)
			end
		elseif key == godmodekey then --Godmode
			if godmodevar == false then
				godmodevar = true
				godmodefunc()
				GodModeActive.Text = "Active"
				GodModeActive.TextColor3 = Color3.new(0, 1, 0)
			end
		elseif key == xrayonkey then --Xray On
			GuiXrayOnActive.Text = "Active"
			GuiXrayOnActive.TextColor3 = Color3.new(0, 1, 0)
			GuiXrayOffActive.Text = "Inactive"
			GuiXrayOffActive.TextColor3 = Color3.new(1, 0, 1)
			XrayOn(obj)
		elseif key == xrayoffkey then --Xray Off
			GuiXrayOnActive.Text = "Inactive"
			GuiXrayOnActive.TextColor3 = Color3.new(1, 0, 1)
			GuiXrayOffActive.Text = "Active"
			GuiXrayOffActive.TextColor3 = Color3.new(0, 1, 0)
			XrayOff(obj)
		elseif key == bringgunkey then --Teleport Gun to You
			if game.Workspace.GunDrop.CFrame ~= nil then
				game.Workspace.GunDrop.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
			else
				if printvar == true then
					print("Gun not currently dropped")
				end
			end
		elseif key == hideshowguikey then --Show/Hide Gui
			if showvar == false then
				showvar = true
				Show.Visible = false
				Main.Visible = true
				if printvar == true then
					print("Shown")
				end
			elseif showvar == true then
				showvar = false
				Main.Visible = false
				Show.Visible = true
				if printvar == true then
					print("Hidden")
				end
			end
		end
	end
end)
end