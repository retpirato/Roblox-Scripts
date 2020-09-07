plr = game:GetService("Players").LocalPlayer
hum = plr.Character.Humanoid

local GoldSwords = {
	game.Workspace.GoldWeaponStandScimitar.StandClicker.CFrame,
	game.Workspace.GoldWeaponStandHero.StandClicker.CFrame,
	game.Workspace.GoldWeaponStandFirelance.StandClicker.CFrame,
	game.Workspace.GoldWeaponStandCyber.StandClicker.CFrame,
	game.Workspace.GoldWeaponStandVanquisher.StandClicker.CFrame,
	game.Workspace.GoldWeaponStandBreaker.StandClicker.CFrame,
	game.Workspace.GoldWeaponStandKatana.StandClicker.CFrame,
	game.Workspace.GoldWeaponStandTribal.StandClicker.CFrame
}

-- Instances:
local MainGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local AutoTrain = Instance.new("TextButton")
local ToggleOrb = Instance.new("TextButton")
local Heading = Instance.new("TextLabel")
local OrbLabel = Instance.new("TextLabel")
local TrainLabel = Instance.new("TextLabel")
local Status = Instance.new("TextLabel")
local SpawnLabel = Instance.new("TextLabel")
local ToSpawn = Instance.new("TextButton")
local AutoRespawnLabel = Instance.new("TextLabel")
local Respawn = Instance.new("TextButton")
local TextButton = Instance.new("TextButton")


--Properties:
MainGui.Name = "MainGui"
MainGui.Parent = game.CoreGui

Frame.Parent = MainGui
Frame.BackgroundColor3 = Color3.new(1, 0, 1)
Frame.BackgroundTransparency = 0.60000002384186
Frame.Position = UDim2.new(0.402554691, 0, 0.184810162, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 226, 0, 250)
Frame.Active = true
Frame.Draggable = true

Exit.Name = "Exit"
Exit.Parent = Frame
Exit.BackgroundColor3 = Color3.new(1, 1, 1)
Exit.BackgroundTransparency = 1
Exit.Position = UDim2.new(0.866306543, 0, 0.0364282131, 0)
Exit.Size = UDim2.new(0, 25, 0, 21)
Exit.Font = Enum.Font.SourceSans
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 0, 0.0156863)
Exit.TextScaled = true
Exit.TextSize = 14
Exit.TextWrapped = true

Exit.MouseButton1Click:Connect(function()
    MainGui:Destroy()
end)


AutoTrain.Name = "AutoTrain"
AutoTrain.Parent = Frame
AutoTrain.BackgroundColor3 = Color3.new(1, 0, 0)
AutoTrain.Position = UDim2.new(0.760002077, 0, 0.282138348, 0)
AutoTrain.Size = UDim2.new(0, 23, 0, 21)
AutoTrain.Font = Enum.Font.SourceSans
AutoTrain.Text = ""
AutoTrain.TextColor3 = Color3.new(0, 0, 0)
AutoTrain.TextSize = 14

trainToggle = false
AutoTrain.MouseButton1Click:Connect(function()
    if trainToggle then
        trainToggle = false
        AutoTrain.BackgroundColor3 = Color3.fromRGB(255,0,0)
    else 
        trainToggle = true
        AutoTrain.BackgroundColor3 = Color3.fromRGB(0,255,0)
    end
	local sword = game.Players.LocalPlayer.Character.TrainingSword
	local count = 0
	while trainToggle do
	    wait()
		if sword ~= nil then
	    	sword._TrainingSword:FireServer()
			count = count+1
			if count==1 then
				Status.Text = "You can unequip Training Sword now!!"
			end
		elseif sword==nil and trainToggle==true then
			count = 0
			Status.Text = "Equip Training Sword!!!"
			AutoTrain.BackgroundColor3 = Color3.fromRGB(255,0,0)
			trainToggle = false
			wait(1)
		end    
	end
end)


ToggleOrb.Name = "ToggleOrb"
ToggleOrb.Parent = Frame
ToggleOrb.BackgroundColor3 = Color3.new(1, 0, 0)
ToggleOrb.Position = UDim2.new(0.760002196, 0, 0.191543877, 0)
ToggleOrb.Size = UDim2.new(0, 23, 0, 20)
ToggleOrb.Font = Enum.Font.SourceSans
ToggleOrb.Text = ""
ToggleOrb.TextColor3 = Color3.new(0, 0, 0)
ToggleOrb.TextSize = 14

orbToggle = false
ToggleOrb.MouseButton1Click:Connect(function()
    if orbToggle then
        orbToggle = false
		ToggleOrb.BackgroundColor3 = Color3.fromRGB(255,0,0)
    else 
        orbToggle = true
		Status.Text = "Teleporting Orbs to you..."
        ToggleOrb.BackgroundColor3 = Color3.fromRGB(0,255,0)
    end
	while orbToggle do
	    wait()
	    workspace:WaitForChild("XpOrb"):WaitForChild("Part").CFrame = plr.Character.HumanoidRootPart.CFrame 
	end
end)


Heading.Name = "Heading"
Heading.Parent = Frame
Heading.BackgroundColor3 = Color3.new(1, 1, 1)
Heading.BackgroundTransparency = 1
Heading.Position = UDim2.new(0.179882258, 0, 0.0379248261, 0)
Heading.Size = UDim2.new(0, 134, 0, 26)
Heading.Font = Enum.Font.SourceSans
Heading.Text = "Ninja Wizard GUI"
Heading.TextColor3 = Color3.new(1, 0, 0)
Heading.TextScaled = true
Heading.TextSize = 14
Heading.TextStrokeTransparency = 0.20000000298023
Heading.TextWrapped = true

OrbLabel.Name = "OrbLabel"
OrbLabel.Parent = Frame
OrbLabel.BackgroundColor3 = Color3.new(0, 0.266667, 1)
OrbLabel.BackgroundTransparency = 0.40000000596046
OrbLabel.Position = UDim2.new(0.0701510012, 0, 0.187564999, 0)
OrbLabel.Size = UDim2.new(0, 128, 0, 23)
OrbLabel.Font = Enum.Font.SourceSans
OrbLabel.Text = "ORBS Teleport"
OrbLabel.TextColor3 = Color3.new(0, 0, 0)
OrbLabel.TextScaled = true
OrbLabel.TextSize = 14
OrbLabel.TextWrapped = true

TrainLabel.Name = "TrainLabel"
TrainLabel.Parent = Frame
TrainLabel.BackgroundColor3 = Color3.new(0, 0.266667, 1)
TrainLabel.BackgroundTransparency = 0.40000000596046
TrainLabel.Position = UDim2.new(0.0701510012, 0, 0.278384477, 0)
TrainLabel.Size = UDim2.new(0, 128, 0, 24)
TrainLabel.Font = Enum.Font.SourceSans
TrainLabel.Text = "Auto-Train"
TrainLabel.TextColor3 = Color3.new(0, 0, 0)
TrainLabel.TextScaled = true
TrainLabel.TextSize = 14
TrainLabel.TextWrapped = true

Status.Name = "Status"
Status.Parent = Frame
Status.BackgroundColor3 = Color3.new(0.92549, 1, 0.0784314)
Status.BackgroundTransparency = 0.40000000596046
Status.Position = UDim2.new(0.0611939505, 0, 0.725567043, 0)
Status.Size = UDim2.new(0, 185, 0, 58)
Status.Font = Enum.Font.SourceSans
Status.Text = ""
Status.TextColor3 = Color3.new(0, 0, 0)
Status.TextScaled = true
Status.TextWrapped = true

SpawnLabel.Name = "SpawnLabel"
SpawnLabel.Parent = Frame
SpawnLabel.BackgroundColor3 = Color3.new(0, 0.266667, 1)
SpawnLabel.BackgroundTransparency = 0.40000000596046
SpawnLabel.Position = UDim2.new(0.0745757818, 0, 0.374384463, 0)
SpawnLabel.Size = UDim2.new(0, 128, 0, 24)
SpawnLabel.Font = Enum.Font.SourceSans
SpawnLabel.Text = "To Spawn at low health"
SpawnLabel.TextColor3 = Color3.new(0, 0, 0)
SpawnLabel.TextScaled = true
SpawnLabel.TextSize = 14
SpawnLabel.TextWrapped = true

ToSpawn.Name = "ToSpawn"
ToSpawn.Parent = Frame
ToSpawn.BackgroundColor3 = Color3.new(1, 0, 0)
ToSpawn.Position = UDim2.new(0.760002136, 0, 0.378138363, 0)
ToSpawn.Size = UDim2.new(0, 23, 0, 21)
ToSpawn.Font = Enum.Font.SourceSans
ToSpawn.Text = ""
ToSpawn.TextColor3 = Color3.new(0, 0, 0)
ToSpawn.TextSize = 14

spawnToggle = false
spawnDebounce = false
ToSpawn.MouseButton1Click:Connect(function()
	if spawnToggle then
		spawnToggle = false
		ToSpawn.BackgroundColor3 = Color3.fromRGB(255,0,0)
	else
		spawnToggle = true
		ToSpawn.BackgroundColor3 = Color3.fromRGB(0,255,0)
	end
end)

hum.HealthChanged:Connect(function(health)
	if spawnDebounce then
		if (health>30) then
			spawnDebounce = false
		end
		wait(1)
		if health == 0 then	
			Status.Text = "Failed Teleport!!"
			AutoTrain.BackgroundColor3 = Color3.fromRGB(255,0,0)
			trainToggle = false
		end
	else
		if health<=30 and spawnToggle then
			plr.Character.HumanoidRootPart.CFrame = CFrame.new(-584,100,-8)
			Status.Text = "Low Health!! Teleported to Spawn"
			spawnDebounce = true
		elseif health == 0 then
			AutoTrain.BackgroundColor3 = Color3.fromRGB(255,0,0)
			trainToggle = false
		end
	end	
end)


AutoRespawnLabel.Name = "AutoRespawnLabel"
AutoRespawnLabel.Parent = Frame
AutoRespawnLabel.BackgroundColor3 = Color3.new(0, 0.266667, 1)
AutoRespawnLabel.BackgroundTransparency = 0.40000000596046
AutoRespawnLabel.Position = UDim2.new(0.0745757818, 0, 0.46638453, 0)
AutoRespawnLabel.Size = UDim2.new(0, 128, 0, 24)
AutoRespawnLabel.Font = Enum.Font.SourceSans
AutoRespawnLabel.Text = "Auto-Respawn"
AutoRespawnLabel.TextColor3 = Color3.new(0, 0, 0)
AutoRespawnLabel.TextScaled = true
AutoRespawnLabel.TextSize = 14
AutoRespawnLabel.TextWrapped = true

Respawn.Name = "Respawn"
Respawn.Parent = Frame
Respawn.BackgroundColor3 = Color3.new(1, 0, 0)
Respawn.Position = UDim2.new(0.760002136, 0, 0.478138298, 0)
Respawn.Size = UDim2.new(0, 23, 0, 21)
Respawn.Font = Enum.Font.SourceSans
Respawn.Text = ""
Respawn.TextColor3 = Color3.new(0, 0, 0)
Respawn.TextSize = 14

AutoRespawnToggle = false
Respawn.MouseButton1Click:Connect(function()
	if AutoRespawnToggle then
		AutoRespawnToggle = false
		Respawn.BackgroundColor3 = Color3.fromRGB(255,0,0)
	else 
		AutoRespawnToggle = true
		Respawn.BackgroundColor3 = Color3.fromRGB(0,255,0)
	end
end)
plr.Character.Humanoid.Died:Connect(function()
	if AutoRespawnToggle then
		if game.Lighting.DeathBlur~=nil then
			game.Lighting.DeathBlur:Destroy()
			game.Lighting.DeathColorCorrection:Destroy()
			plr.PlayerGui.GuiRoot.DeathScreen:Destroy()
		end
		game:GetService("ReplicatedStorage")["_ActionRemote"]:FireServer("RequestRespawn", "RANDOM")
	end
end)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 0.0235294)
TextButton.BackgroundTransparency = 0.5
TextButton.Position = UDim2.new(0.14159292, 0, 0.560000002, 0)
TextButton.Size = UDim2.new(0, 162, 0, 31)
TextButton.Font = Enum.Font.Highway
TextButton.Text = "Unlock All Gold Swords"
TextButton.TextColor3 = Color3.new(0.0745098, 0.0117647, 1)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextStrokeTransparency = 0.89999997615814
TextButton.TextWrapped = true

TextButton.MouseButton1Click:Connect(function()
	for i,v in pairs(GoldSwords) do
		wait(.5)
		plr.Character.HumanoidRootPart.CFrame = v
	end	
end)


print("Loaded Ninja Wizard Gui!! \n By Arcane (Discord : Arcane#1735)")

Status.Text = "WELCOME to Ninja Wizard Gui!! By Arcane (Discord : Arcane#1735)"