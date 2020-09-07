-- MADE BY REDBOY
spawn(function()

-- Instances:
local LT2GUI = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local TOPBAR = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local EXIT = Instance.new("TextButton")
local Cave = Instance.new("TextButton")
local PalmIsland = Instance.new("TextButton")
local Swamp = Instance.new("TextButton")
local Volcano = Instance.new("TextButton")
local LinkLogic = Instance.new("TextButton")
local LandStore = Instance.new("TextButton")
local BobShack = Instance.new("TextButton")
local WoodRUs = Instance.new("TextButton")
local Dock = Instance.new("TextButton")
local BoxedCars = Instance.new("TextButton")
local TPPLOT = Instance.new("TextButton")
local BringWood = Instance.new("TextButton")
local BSellChoppedWood = Instance.new("TextButton")
local BTPCutLogs = Instance.new("TextButton")
local BPhantomWood = Instance.new("TextButton")
local TPNAME = Instance.new("TextLabel")
local FUNCNAME = Instance.new("TextLabel")
local BRejoinServer = Instance.new("TextButton")
local DISCO = Instance.new("TextLabel")
local Open = Instance.new("TextButton")
--Properties:
LT2GUI.Name = "LT2GUI "
LT2GUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = LT2GUI
Main.BackgroundColor3 = Color3.new(0.364706, 0.364706, 0.364706)
Main.Position = UDim2.new(0.5, 0, 0.300000012, 0)
Main.Size = UDim2.new(0, 400, 0, 300)
Main.Active = true
Main.Draggable = true

TOPBAR.Name = "TOPBAR"
TOPBAR.Parent = Main
TOPBAR.BackgroundColor3 = Color3.new(0.815686, 0, 0)
TOPBAR.Position = UDim2.new(0, 0, -0.129999995, 0)
TOPBAR.Size = UDim2.new(0, 400, 0, 39)

Name.Name = "Name"
Name.Parent = TOPBAR
Name.BackgroundColor3 = Color3.new(1, 1, 1)
Name.BackgroundTransparency = 1
Name.Size = UDim2.new(0, 357, 0, 39)
Name.Font = Enum.Font.ArialBold
Name.Text = "Lumber Tycoon 2"
Name.TextColor3 = Color3.new(1, 1, 1)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true

EXIT.Name = "EXIT"
EXIT.Parent = TOPBAR
EXIT.BackgroundColor3 = Color3.new(1, 1, 1)
EXIT.BackgroundTransparency = 1
EXIT.Position = UDim2.new(0.892499983, 0, 0, 0)
EXIT.Size = UDim2.new(0, 43, 0, 39)
EXIT.Font = Enum.Font.SourceSans
EXIT.Text = "X"
EXIT.TextColor3 = Color3.new(0, 0, 0)
EXIT.TextScaled = true
EXIT.TextSize = 14
EXIT.TextWrapped = true
EXIT.MouseButton1Down:connect(function()
    Open.Visible = true
    Main.Visible = false
end)
Cave.Name = "Cave"
Cave.Parent = Main
Cave.BackgroundColor3 = Color3.new(0.776471, 0, 0)
Cave.Position = UDim2.new(0.0199999996, 0, 0.306666672, 0)
Cave.Size = UDim2.new(0, 100, 0, 30)
Cave.Font = Enum.Font.Cartoon
Cave.Text = "Cave"
Cave.TextColor3 = Color3.new(0, 0, 0)
Cave.TextScaled = true
Cave.TextSize = 14
Cave.TextWrapped = true
Cave.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(3581, -179, 430))
end)
PalmIsland.Name = "PalmIsland"
PalmIsland.Parent = Main
PalmIsland.BackgroundColor3 = Color3.new(0.776471, 0, 0)
PalmIsland.Position = UDim2.new(0.0199999996, 0, 0.163333341, 0)
PalmIsland.Size = UDim2.new(0, 100, 0, 30)
PalmIsland.Font = Enum.Font.Cartoon
PalmIsland.Text = "Palm Island"
PalmIsland.TextColor3 = Color3.new(0, 0, 0)
PalmIsland.TextScaled = true
PalmIsland.TextSize = 14
PalmIsland.TextWrapped = true
PalmIsland.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(2549, -5, -42))
end)

Swamp.Name = "Swamp"
Swamp.Parent = Main
Swamp.BackgroundColor3 = Color3.new(0.776471, 0, 0)
Swamp.Position = UDim2.new(0.0199999996, 0, 0.589999974, 0)
Swamp.Size = UDim2.new(0, 100, 0, 30)
Swamp.Font = Enum.Font.Cartoon
Swamp.Text = "Swamp"
Swamp.TextColor3 = Color3.new(0, 0, 0)
Swamp.TextScaled = true
Swamp.TextSize = 14
Swamp.TextWrapped = true
Swamp.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(-1209, 132, -801))
end)
Volcano.Name = "Volcano"
Volcano.Parent = Main
Volcano.BackgroundColor3 = Color3.new(0.776471, 0, 0)
Volcano.Position = UDim2.new(0.0199999996, 0, 0.446666658, 0)
Volcano.Size = UDim2.new(0, 100, 0, 30)
Volcano.Font = Enum.Font.Cartoon
Volcano.Text = "Volcano"
Volcano.TextColor3 = Color3.new(0, 0, 0)
Volcano.TextScaled = true
Volcano.TextSize = 14
Volcano.TextWrapped = true
Volcano.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(-1585, 622, 1140))
end)
LinkLogic.Name = "LinkLogic"
LinkLogic.Parent = Main
LinkLogic.BackgroundColor3 = Color3.new(0.776471, 0, 0)
LinkLogic.Position = UDim2.new(0.320000023, 0, 0.306666672, 0)
LinkLogic.Size = UDim2.new(0, 100, 0, 30)
LinkLogic.Font = Enum.Font.Cartoon
LinkLogic.Text = "Link's Logic"
LinkLogic.TextColor3 = Color3.new(0, 0, 0)
LinkLogic.TextScaled = true
LinkLogic.TextSize = 14
LinkLogic.TextWrapped = true
LinkLogic.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(4605, 3, -727))
end)
LandStore.Name = "LandStore"
LandStore.Parent = Main
LandStore.BackgroundColor3 = Color3.new(0.776471, 0, 0)
LandStore.Position = UDim2.new(0.320000023, 0, 0.589999974, 0)
LandStore.Size = UDim2.new(0, 100, 0, 30)
LandStore.Font = Enum.Font.Cartoon
LandStore.Text = "Land Store"
LandStore.TextColor3 = Color3.new(0, 0, 0)
LandStore.TextScaled = true
LandStore.TextSize = 14
LandStore.TextWrapped = true
LandStore.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(258, 3, -99))
end)
BobShack.Name = "BobShack"
BobShack.Parent = Main
BobShack.BackgroundColor3 = Color3.new(0.776471, 0, 0)
BobShack.Position = UDim2.new(0.320000023, 0, 0.163333341, 0)
BobShack.Size = UDim2.new(0, 100, 0, 30)
BobShack.Font = Enum.Font.Cartoon
BobShack.Text = "Bob's Shack"
BobShack.TextColor3 = Color3.new(0, 0, 0)
BobShack.TextScaled = true
BobShack.TextSize = 14
BobShack.TextWrapped = true
BobShack.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(260, 8, -2542))
end)
WoodRUs.Name = "WoodRUs"
WoodRUs.Parent = Main
WoodRUs.BackgroundColor3 = Color3.new(0.776471, 0, 0)
WoodRUs.Position = UDim2.new(0.320000023, 0, 0.446666658, 0)
WoodRUs.Size = UDim2.new(0, 100, 0, 30)
WoodRUs.Font = Enum.Font.Cartoon
WoodRUs.Text = "Wood R Us"
WoodRUs.TextColor3 = Color3.new(0, 0, 0)
WoodRUs.TextScaled = true
WoodRUs.TextSize = 14
WoodRUs.TextWrapped = true
WoodRUs.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(265, 3, 57))
end)
Dock.Name = "Dock"
Dock.Parent = Main
Dock.BackgroundColor3 = Color3.new(0.776471, 0, 0)
Dock.Position = UDim2.new(0.0199999996, 0, 0.73333329, 0)
Dock.Size = UDim2.new(0, 100, 0, 30)
Dock.Font = Enum.Font.Cartoon
Dock.Text = "Dock"
Dock.TextColor3 = Color3.new(0, 0, 0)
Dock.TextScaled = true
Dock.TextSize = 14
Dock.TextWrapped = true
Dock.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(1114, -1, -197))
end)
BoxedCars.Name = "BoxedCars"
BoxedCars.Parent = Main
BoxedCars.BackgroundColor3 = Color3.new(0.776471, 0, 0)
BoxedCars.Position = UDim2.new(0.320000023, 0, 0.73333329, 0)
BoxedCars.Size = UDim2.new(0, 100, 0, 30)
BoxedCars.Font = Enum.Font.Cartoon
BoxedCars.Text = "Boxed Cars"
BoxedCars.TextColor3 = Color3.new(0, 0, 0)
BoxedCars.TextScaled = true
BoxedCars.TextSize = 14
BoxedCars.TextWrapped = true
BoxedCars.MouseButton1Down:connect(function()
	game:GetService('Players').LocalPlayer.Character:MoveTo(Vector3.new(509, 3, -1463))
end)
TPPLOT.Name = "TPPLOT"
TPPLOT.Parent = Main
TPPLOT.BackgroundColor3 = Color3.new(0.776471, 0, 0)
TPPLOT.Position = UDim2.new(0.0199999996, 0, 0.870000005, 0)
TPPLOT.Size = UDim2.new(0, 220, 0, 30)
TPPLOT.Font = Enum.Font.Cartoon
TPPLOT.Text = "Teleport To Your Plot"
TPPLOT.TextColor3 = Color3.new(0, 0, 0)
TPPLOT.TextScaled = true
TPPLOT.TextSize = 14
TPPLOT.TextWrapped = true
TPPLOT.MouseButton1Down:connect(function()
	for i, v in pairs(game.Workspace.Properties:GetChildren()) do
		if v.Owner.Value == game.Players.LocalPlayer then
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.OriginSquare.CFrame
		end
	end
end)
BringWood.Name = "BringWood"
BringWood.Parent = Main
BringWood.BackgroundColor3 = Color3.new(0.776471, 0, 0)
BringWood.Position = UDim2.new(0.612500012, 0, 0.589999974, 0)
BringWood.Size = UDim2.new(0, 140, 0, 30)
BringWood.Font = Enum.Font.Cartoon
BringWood.Text = "Bring Wood"
BringWood.TextColor3 = Color3.new(0, 0, 0)
BringWood.TextScaled = true
BringWood.TextSize = 14
BringWood.TextWrapped = true
BringWood.MouseButton1Down:connect(function()
	for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
		if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") and Log.Owner.Value == game.Players.LocalPlayer then
			Log:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0, 10, 0))
		end
	end
end)
BSellChoppedWood.Name = "BSellChoppedWood"
BSellChoppedWood.Parent = Main
BSellChoppedWood.BackgroundColor3 = Color3.new(0.776471, 0, 0)
BSellChoppedWood.Position = UDim2.new(0.612500012, 0, 0.163333341, 0)
BSellChoppedWood.Size = UDim2.new(0, 140, 0, 30)
BSellChoppedWood.Font = Enum.Font.Cartoon
BSellChoppedWood.Text = "Sell Chopped Wood"
BSellChoppedWood.TextColor3 = Color3.new(0, 0, 0)
BSellChoppedWood.TextScaled = true
BSellChoppedWood.TextSize = 14
BSellChoppedWood.TextWrapped = true
BSellChoppedWood.MouseButton1Click:connect(function()
		for _, Log in pairs(workspace.LogModels:GetChildren()) do
		if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
			if Log.Owner.Value == game.Players.LocalPlayer then
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
						game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(Log)
					end
				end)
			end
		end
	end
end)
BTPCutLogs.Name = "BTPCutLogs"
BTPCutLogs.Parent = Main
BTPCutLogs.BackgroundColor3 = Color3.new(0.776471, 0, 0)
BTPCutLogs.Position = UDim2.new(0.612500012, 0, 0.306666672, 0)
BTPCutLogs.Size = UDim2.new(0, 140, 0, 30)
BTPCutLogs.Font = Enum.Font.Cartoon
BTPCutLogs.Text = "Teleport Cut Logs To You"
BTPCutLogs.TextColor3 = Color3.new(0, 0, 0)
BTPCutLogs.TextScaled = true
BTPCutLogs.TextSize = 14
BTPCutLogs.TextWrapped = true
BTPCutLogs.MouseButton1Click:connect(function()
	for _, Log in pairs(game.Workspace.LogModels:GetChildren()) do
if Log.Name:sub(1, 6) == "Loose_" and Log:findFirstChild("Owner") then
if Log.Owner.Value == game.Players.LocalPlayer then
Log:MoveTo(game.Players.LocalPlayer.Character.Torso.Position + Vector3.new(0, 15, 0))
end
end
end
end)
BPhantomWood.Name = "BPhantomWood"
BPhantomWood.Parent = Main
BPhantomWood.BackgroundColor3 = Color3.new(0.776471, 0, 0)
BPhantomWood.Position = UDim2.new(0.612500012, 0, 0.446666658, 0)
BPhantomWood.Size = UDim2.new(0, 140, 0, 30)
BPhantomWood.Font = Enum.Font.Cartoon
BPhantomWood.Text = "Teleport Cavecrawler Wood"
BPhantomWood.TextColor3 = Color3.new(0, 0, 0)
BPhantomWood.TextScaled = true
BPhantomWood.TextSize = 14
BPhantomWood.TextWrapped = true
BPhantomWood.MouseButton1Down:connect(function()
for i, v in pairs(game.Workspace:GetChildren()) do
if v.Name == "TreeRegion" then
for a, b in pairs(v:GetChildren()) do
tree(b, "CaveCrawler")
end
end
end
end)
TPNAME.Name = "TPNAME"
TPNAME.Parent = Main
TPNAME.BackgroundColor3 = Color3.new(1, 1, 1)
TPNAME.BackgroundTransparency = 1
TPNAME.Position = UDim2.new(0.0199999996, 0, 0, 0)
TPNAME.Size = UDim2.new(0, 220, 0, 42)
TPNAME.Font = Enum.Font.SourceSans
TPNAME.Text = "Teleports"
TPNAME.TextColor3 = Color3.new(1, 1, 1)
TPNAME.TextScaled = true
TPNAME.TextSize = 14
TPNAME.TextWrapped = true

FUNCNAME.Name = "FUNCNAME"
FUNCNAME.Parent = Main
FUNCNAME.BackgroundColor3 = Color3.new(1, 1, 1)
FUNCNAME.BackgroundTransparency = 1
FUNCNAME.Position = UDim2.new(0.612500012, 0, 0, 0)
FUNCNAME.Size = UDim2.new(0, 140, 0, 42)
FUNCNAME.Font = Enum.Font.SourceSans
FUNCNAME.Text = "Functions"
FUNCNAME.TextColor3 = Color3.new(1, 1, 1)
FUNCNAME.TextScaled = true
FUNCNAME.TextSize = 14
FUNCNAME.TextWrapped = true

BRejoinServer.Name = "BRejoinServer"
BRejoinServer.Parent = Main
BRejoinServer.BackgroundColor3 = Color3.new(0.776471, 0, 0)
BRejoinServer.Position = UDim2.new(0.612500012, 0, 0.73333329, 0)
BRejoinServer.Size = UDim2.new(0, 140, 0, 30)
BRejoinServer.Font = Enum.Font.Cartoon
BRejoinServer.Text = "Rejoin Server"
BRejoinServer.TextColor3 = Color3.new(0, 0, 0)
BRejoinServer.TextScaled = true
BRejoinServer.TextSize = 14
BRejoinServer.TextWrapped = true
BRejoinServer.MouseButton1Down:connect(function()
local placeId = 13822889

game:GetService("TeleportService"):Teleport(placeId)
end)
DISCO.Name = "DISCO"
DISCO.Parent = Main
DISCO.BackgroundColor3 = Color3.new(1, 1, 1)
DISCO.BackgroundTransparency = 1
DISCO.Position = UDim2.new(0.612500012, 0, 0.850000024, 0)
DISCO.Size = UDim2.new(0, 140, 0, 42)
DISCO.Font = Enum.Font.SourceSans
DISCO.Text = "Made By RedBoy    Discord: FdCpM7b"
DISCO.TextColor3 = Color3.new(1, 1, 1)
DISCO.TextScaled = true
DISCO.TextSize = 14
DISCO.TextWrapped = true

Open.Name = "Open"
Open.Parent = LT2GUI
Open.BackgroundColor3 = Color3.new(0.819608, 0, 0)
Open.Position = UDim2.new(0, 0, 0.699999988, 0)
Open.Size = UDim2.new(0, 100, 0, 50)
Open.Font = Enum.Font.SourceSans
Open.Text = "Open"
Open.TextColor3 = Color3.new(0.988235, 0.988235, 0.988235)
Open.TextScaled = true
Open.TextSize = 14
Open.TextWrapped = true
Open.Visible = false
Open.MouseButton1Down:connect(function()
    Open.Visible = false
    Main.Visible = true
end)
end)

---Scripts




