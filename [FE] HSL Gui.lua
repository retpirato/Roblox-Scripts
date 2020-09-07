--Developed By: Venomouz Inc

local Version = "1.01"
local ChangeLogDatabase = {
	"Released UI!";
	"Added New Features!";
	"More Coming...";
}

local function GetEncryptedName()
	local EncryptedName = math.random(100000000,999999999)
	return EncryptedName
end

function LoadIntroGUIData()
	local ShowFramePosition = UDim2.new(0.25,0,0.25,0)
	local HideFramePosition = UDim2.new(0.25,0,-1,0)
	
	--Creates Welcome Screen GUI...
	local GUI = Instance.new("ScreenGui", game.Players.LocalPlayer.PlayerGui)
	GUI.Name = "HSLUI"

	--Creates Welcome Frame...
	local WelcomeFrame = Instance.new("Frame", GUI)
	WelcomeFrame.Name = GetEncryptedName()
	WelcomeFrame.BackgroundColor3 = Color3.new(0,0,0)
	WelcomeFrame.BackgroundTransparency = 0.5
	WelcomeFrame.BorderColor3 = Color3.new(0,255,0)
	WelcomeFrame.Position = HideFramePosition
	WelcomeFrame.Size = UDim2.new(0.5,0,0.5,0)
	WelcomeFrame.ZIndex = 2
	
	wait(1)
	
	WelcomeFrame:TweenPosition(ShowFramePosition, "Out", "Quad", 1, true)
	
	wait(1)
	
	--Create Welcome Title...
	local TitleText = Instance.new("TextLabel", WelcomeFrame)
	TitleText.Name = GetEncryptedName()
	TitleText.BackgroundTransparency = 1
	TitleText.Position = UDim2.new(0.05,0,0,0)
	TitleText.Size = UDim2.new(0.9,0,0.1,0)
	TitleText.ZIndex = 3
	TitleText.Font = Enum.Font.SciFi
	TitleText.Text = "High School Life UI V"..Version
	TitleText.TextColor3 = Color3.new(0,255,0)
	TitleText.TextScaled = true
	TitleText.TextStrokeColor3 = Color3.new(0,0,0)
	TitleText.TextStrokeTransparency = 0.5
	TitleText.TextTransparency = 0
	TitleText.TextWrapped = true
	TitleText.TextXAlignment = Enum.TextXAlignment.Center
	TitleText.TextYAlignment = Enum.TextYAlignment.Center
	
	wait(0.5)
	
	--Create Change Log...
	local ChangeLogText = TitleText:Clone()
	ChangeLogText.Name = GetEncryptedName()
	ChangeLogText.Parent = WelcomeFrame
	ChangeLogText.Position = UDim2.new(0.05,0,0.14,0)
	ChangeLogText.Size = UDim2.new(0.9,0,0.075,0)
	ChangeLogText.Text = "V"..Version.." Change Log:"
	
	wait(1)
	
	--Create Change Log Text...
	local LogText = ChangeLogText:Clone()
	LogText.Name = GetEncryptedName()
	LogText.Text = ""
	LogText.Parent = WelcomeFrame
	LogText.TextScaled = false
	LogText.TextSize = 20
	LogText.Position = UDim2.new(0.05,0,0.25,0)
	LogText.Size = UDim2.new(0.9,0,0.65,0)
	LogText.TextXAlignment = Enum.TextXAlignment.Left
	--Create Log Text Format...
	for i=1, #ChangeLogDatabase do
		wait(1)
		LogText.Text = LogText.Text.."- "..ChangeLogDatabase[i].."\n"
	end
	
	wait(1)
	
	--Create Credits Text...
	local CreditText = LogText:Clone()
	CreditText.Name = GetEncryptedName()
	CreditText.Parent = WelcomeFrame
	CreditText.Text = "D".."e".."v".."e".."l".."o".."p".."e".."d".." ".."B".."y"..": ".."V".."e".."n".."o".."m".."o".."u".."z".." ".."I".."n".."c".."."
	CreditText.Position = UDim2.new(0.05,0,0.94,0)
	CreditText.Size = UDim2.new(0.9,0,0.05,0)
	wait(3)
	
	WelcomeFrame:TweenPosition(HideFramePosition, "Out", "Quad", 1, true)
	
	wait(1)
	WelcomeFrame:remove()
	wait()
	LoadGUIAdmin(GUI)
end

function LoadGUIAdmin(GUI)
	local ButtonExecutedSound = Instance.new("Sound", GUI)
	ButtonExecutedSound.SoundId = "rbxassetid://552979202"
	ButtonExecutedSound.Volume = 1
	ButtonExecutedSound.Looped = false

	local function ExecuteButton()
		ButtonExecutedSound:Play()
	end	
	
	--Creates Button Frame...
	local HSLShowButton = Instance.new("TextButton", GUI)
	HSLShowButton.Name = GetEncryptedName()
	--HSLShowButton.Text = "Show HSL GUI"
	HSLShowButton.Text = "Show HSL UI"
	HSLShowButton.BackgroundTransparency = 0.5
	HSLShowButton.TextColor3 = Color3.new(0,255,0)
	HSLShowButton.BackgroundColor3 = Color3.new(0,0,0)
	HSLShowButton.BorderColor3 = Color3.new(0,255,0)
	HSLShowButton.Size = UDim2.new(0.15,0,0.05,0)
	HSLShowButton.Position = UDim2.new(0,0,0.6,0)
	HSLShowButton.Font = Enum.Font.SciFi
	HSLShowButton.TextScaled = true
	HSLShowButton.TextStrokeColor3 = Color3.new(0,0,0)
	HSLShowButton.TextStrokeTransparency = 0.5
	HSLShowButton.TextTransparency = 0
	
	--Creates UI Frame...
	local UIFrame = Instance.new("Frame", GUI)
	UIFrame.Visible = false
	UIFrame.Name = GetEncryptedName()
	UIFrame.BackgroundColor3 = Color3.new(0,0,0)
	UIFrame.BackgroundTransparency = 0.5
	UIFrame.BorderColor3 = Color3.new(0,255,0)
	UIFrame.Position = UDim2.new(0.25,0,0.2,0)
	UIFrame.Size = UDim2.new(0.6,0,0.6,0)
	UIFrame.ZIndex = 2
	
	--Creates Close Button
	local CloseButton = HSLShowButton:Clone()
	CloseButton.Text = "X"
	CloseButton.Name = GetEncryptedName()
	CloseButton.Position = UDim2.new(0.95,0,0,0)
	CloseButton.Size = UDim2.new(0.05,0,0.05,0)
	CloseButton.Parent = UIFrame
	CloseButton.ZIndex = 2
	
	
	--=First Roll Column (1)=--
	
	
	--Create Cash Button
	local CashButton = CloseButton:Clone()
	CashButton.Parent = UIFrame
	CashButton.Text = "Give $100,000 Cash"
	CashButton.Position = UDim2.new(0.01,0,0.01,0)
	CashButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Comet Button
	local SpawnCometButton = CashButton:Clone()
	SpawnCometButton.Parent = UIFrame
	SpawnCometButton.Text = "Spawn Comet"
	SpawnCometButton.Position = UDim2.new(0.01,0,0.08,0)
	SpawnCometButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Commander Button
	local SpawnCommanderButton = SpawnCometButton:Clone()
	SpawnCommanderButton.Parent = UIFrame
	SpawnCommanderButton.Text = "Spawn Commander"
	SpawnCommanderButton.Position = UDim2.new(0.01,0,0.15,0)
	SpawnCommanderButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn FanclubCar Button
	local SpawnFanclubCarButton = SpawnCometButton:Clone()
	SpawnFanclubCarButton.Parent = UIFrame
	SpawnFanclubCarButton.Text = "Spawn Fanclub Car"
	SpawnFanclubCarButton.Position = UDim2.new(0.01,0,0.22,0)
	SpawnFanclubCarButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Four Door Button
	local SpawnFourDoorButton = SpawnCometButton:Clone()
	SpawnFourDoorButton.Parent = UIFrame
	SpawnFourDoorButton.Text = "Spawn Four Door"
	SpawnFourDoorButton.Position = UDim2.new(0.01,0,0.29,0)
	SpawnFourDoorButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Rari Button
	local SpawnRariButton = SpawnCometButton:Clone()
	SpawnRariButton.Parent = UIFrame
	SpawnRariButton.Text = "Spawn Rari"
	SpawnRariButton.Position = UDim2.new(0.01,0,0.36,0)
	SpawnRariButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Regular Car Button
	local SpawnRegularCarButton = SpawnCometButton:Clone()
	SpawnRegularCarButton.Parent = UIFrame
	SpawnRegularCarButton.Text = "Spawn Regular Car"
	SpawnRegularCarButton.Position = UDim2.new(0.01,0,0.42,0)
	SpawnRegularCarButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Roadster Button
	local SpawnRoadsterButton = SpawnCometButton:Clone()
	SpawnRoadsterButton.Parent = UIFrame
	SpawnRoadsterButton.Text = "Spawn Roadster"
	SpawnRoadsterButton.Position = UDim2.new(0.01,0,0.49,0)
	SpawnRoadsterButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Speedster Button
	local SpawnSpeedsterButton = SpawnCometButton:Clone()
	SpawnSpeedsterButton.Parent = UIFrame
	SpawnSpeedsterButton.Text = "Spawn Speedster"
	SpawnSpeedsterButton.Position = UDim2.new(0.01,0,0.56,0)
	SpawnSpeedsterButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Ultimator Button
	local SpawnUltimatorButton = SpawnCometButton:Clone()
	SpawnUltimatorButton.Parent = UIFrame
	SpawnUltimatorButton.Text = "Spawn Ultimator"
	SpawnUltimatorButton.Position = UDim2.new(0.01,0,0.63,0)
	SpawnUltimatorButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Zagani Button
	local SpawnZaganiButton = SpawnCometButton:Clone()
	SpawnZaganiButton.Parent = UIFrame
	SpawnZaganiButton.Text = "Spawn Zagani"
	SpawnZaganiButton.Position = UDim2.new(0.01,0,0.7,0)
	SpawnZaganiButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Shadow Car Button
	local SpawnShadowCarButton = SpawnCometButton:Clone()
	SpawnShadowCarButton.Parent = UIFrame
	SpawnShadowCarButton.Text = "Spawn Shadow Car"
	SpawnShadowCarButton.Position = UDim2.new(0.01,0,0.77,0)
	SpawnShadowCarButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn DanTDM Car Button
	local SpawnDanTDMCarButton = SpawnCometButton:Clone()
	SpawnDanTDMCarButton.Parent = UIFrame
	SpawnDanTDMCarButton.Text = "Spawn DanTDM Car"
	SpawnDanTDMCarButton.Position = UDim2.new(0.01,0,0.84,0)
	SpawnDanTDMCarButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Halloween Car Button
	local SpawnHalloweenCarButton = SpawnCometButton:Clone()
	SpawnHalloweenCarButton.Parent = UIFrame
	SpawnHalloweenCarButton.Text = "Spawn Halloween Car"
	SpawnHalloweenCarButton.Position = UDim2.new(0.01,0,0.91,0)
	SpawnHalloweenCarButton.Size = UDim2.new(0.2,0,0.05,0)
	
	
	--==Second Roll Column (2)==--
	
	
	--Create Spawn Halloween Car Button
	local SpawnFourDoorConvertibleButton = SpawnCometButton:Clone()
	SpawnFourDoorConvertibleButton.Parent = UIFrame
	SpawnFourDoorConvertibleButton.Text = "Spawn Four Door Convertible"
	SpawnFourDoorConvertibleButton.Position = UDim2.new(0.22,0,0.01,0)
	SpawnFourDoorConvertibleButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Futuristic Car Button
	local SpawnFuturisticCarButton = SpawnCometButton:Clone()
	SpawnFuturisticCarButton.Parent = UIFrame
	SpawnFuturisticCarButton.Text = "Spawn Futuristic Car"
	SpawnFuturisticCarButton.Position = UDim2.new(0.22,0,0.08,0)
	SpawnFuturisticCarButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Spawn Soccerball Button
	local SpawnSoccerballButton = SpawnCometButton:Clone()
	SpawnSoccerballButton.Parent = UIFrame
	SpawnSoccerballButton.Text = "Spawn Soccerball"
	SpawnSoccerballButton.Position = UDim2.new(0.22,0,0.15,0)
	SpawnSoccerballButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Become DJ Button
	local BecomeDJButton = SpawnCometButton:Clone()
	BecomeDJButton.Parent = UIFrame
	BecomeDJButton.Text = "Become DJ"
	BecomeDJButton.Position = UDim2.new(0.22,0,0.22,0)
	BecomeDJButton.Size = UDim2.new(0.2,0,0.05,0)
	
	--Create Quit DJ Button
	local QuitDJButton = SpawnCometButton:Clone()
	QuitDJButton.Parent = UIFrame
	QuitDJButton.Text = "Quit DJ"
	QuitDJButton.Position = UDim2.new(0.22,0,0.29,0)
	QuitDJButton.Size = UDim2.new(0.2,0,0.05,0)
	

	
	--Create Button Listeners...
	
	--Closes Menu Button
	CloseButton.MouseButton1Click:connect(function()
		ExecuteButton()
		HSLShowButton.Visible = true
		UIFrame.Visible = false
	end)
	
	--Opens Menu Button
	HSLShowButton.MouseButton1Click:connect(function()
		ExecuteButton()
		HSLShowButton.Visible = false
		UIFrame.Visible = true
	end)
	
	--Cash Button Clicked
	CashButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: $100,000 Cash Given!")
		game.ReplicatedStorage.Events.BuyCar:FireServer("Comet", -100000)
	end)
	
	--Spawn Comet Button Clicked
	SpawnCometButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Comet Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "Comet")
	end)
	
	--Spawn Commander Button Clicked
	SpawnCommanderButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Commander Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "Commander")
	end)

	--Spawn Fanclub Car Button Clicked
	SpawnFanclubCarButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Fanclub Car Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "FanclubCar")
	end)
	
	--Spawn Four Door Button Clicked
	SpawnFourDoorButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Four Door Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "FourDoor")
	end)

	--Spawn Rari Button Clicked
	SpawnRariButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Rari Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "Rari")
	end)
	
	--Spawn Regular Car Button Clicked
	SpawnRegularCarButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Regular Car Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "RegularCar")
	end)
	
	--Spawn Regular Car Button Clicked
	SpawnRoadsterButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Roadster Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "Roadster")
	end)
	
	--Spawn Speedster Car Button Clicked
	SpawnSpeedsterButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Speedster Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "Speedster")
	end)
	
	--Spawn Ultimator Car Button Clicked
	SpawnUltimatorButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Ultimator Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "Ultimator")
	end)
	
	--Spawn Zagani Car Button Clicked
	SpawnZaganiButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Zagani Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "Zagani")
	end)
	
	--Spawn Shadow Car Button Clicked
	SpawnShadowCarButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Shadow Car Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "ShadowCar")
	end)
	
	--Spawn DanTDM Car Button Clicked
	SpawnDanTDMCarButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: DanTDM Car Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "DanTDMCar")
	end)
	
	--Spawn Halloween Car Button Clicked
	SpawnHalloweenCarButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Halloween Car Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "HalloweenCar")
	end)
	
	--Spawn Four Door Convertible Car Button Clicked
	SpawnFourDoorConvertibleButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Four Door Convertible Car Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "FourDoorConvertible")
	end)
	
	--Spawn Futuristic Car Button Clicked
	SpawnFuturisticCarButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Futuristic Car Spawned!")
		game.ReplicatedStorage.Events.PlaceCar:FireServer(game.Players.LocalPlayer.Character.Torso.Position.X, game.Players.LocalPlayer.Character.Torso.Position.Y, game.Players.LocalPlayer.Character.Torso.Position.Z, "FuturisticCar")
	end)
	
	--Spawn Soccerball Button Clicked
	SpawnSoccerballButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: Soccerball Spawned!")
		game.ReplicatedStorage.GIVEBALL:FireServer("y")
	end)

	--Become DJ Button Clicked
	BecomeDJButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: You are now the DJ!")
		game.ReplicatedStorage.Events.BecomeDJ:FireServer()
	end)
	
	--Quit DJ Button Clicked
	QuitDJButton.MouseButton1Click:connect(function()
		ExecuteButton()
		warn("HSL UI: You are no longer a DJ!")
		game.ReplicatedStorage.Events.QuitDJ:FireServer()
	end)
end

wait()
if game.Players.LocalPlayer.PlayerGui:FindFirstChild("HSLUI") == nil then
	LoadIntroGUIData()
end