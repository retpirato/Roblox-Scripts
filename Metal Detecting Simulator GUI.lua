--[[Metal Detecting Simulator - Farm, Rebirth, Shop
    Created by YourMom
]]

plr=game:GetService('Players').LocalPlayer

game.Players.LocalPlayer.UserId = "352889457"

farmactive = false
rebirthactive = false

local MainGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Farm = Instance.new("TextButton")
local Spawn = Instance.new("TextButton")
local Shop = Instance.new("TextButton")
local VIP = Instance.new("TextButton")
local Rebirth = Instance.new("TextButton")

MainGUI.Name = "MainGUI"
MainGUI.Parent = game.CoreGui
local MainCORE = game.CoreGui["MainGUI"]

MainFrame.Name = "MainFrame"
MainFrame.Parent = MainGUI
MainFrame.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
MainFrame.BackgroundTransparency = 0
MainFrame.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
MainFrame.Active = true
MainFrame.Selectable = true
MainFrame.Draggable = true
MainFrame.Position = UDim2.new(1, -145, 0.5, -90)
MainFrame.Size = UDim2.new(0, 140, 0, 185)
MainFrame.Visible = true

Farm.Name = "Farm"
Farm.Parent = MainFrame
Farm.BackgroundColor3 = Color3.new(0, 0, 0)
Farm.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Farm.Position = UDim2.new(0, 10, 0, 10)
Farm.Size = UDim2.new(0, 120, 0, 25)
Farm.Font = Enum.Font.Fantasy
Farm.TextColor3 = Color3.new(1, 1, 1)
Farm.Text = "Farm"
Farm.TextSize = 17
Farm.TextWrapped = true

Rebirth.Name = "Rebirth"
Rebirth.Parent = MainFrame
Rebirth.BackgroundColor3 = Color3.new(0, 0, 0)
Rebirth.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Rebirth.Position = UDim2.new(0, 10, 0, 45)
Rebirth.Size = UDim2.new(0, 120, 0, 25)
Rebirth.Font = Enum.Font.Fantasy
Rebirth.TextColor3 = Color3.new(1, 1, 1)
Rebirth.Text = "Auto Rebirth"
Rebirth.TextSize = 17
Rebirth.TextWrapped = true

Spawn.Name = "Spawn"
Spawn.Parent = MainFrame
Spawn.BackgroundColor3 = Color3.new(0, 0, 0)
Spawn.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Spawn.Position = UDim2.new(0, 10, 0, 80)
Spawn.Size = UDim2.new(0, 120, 0, 25)
Spawn.Font = Enum.Font.Fantasy
Spawn.TextColor3 = Color3.new(1, 1, 1)
Spawn.Text = "Go To Spawn"
Spawn.TextSize = 17
Spawn.TextWrapped = true

Shop.Name = "Shop"
Shop.Parent = MainFrame
Shop.BackgroundColor3 = Color3.new(0, 0, 0)
Shop.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
Shop.Position = UDim2.new(0, 10, 0, 115)
Shop.Size = UDim2.new(0, 120, 0, 25)
Shop.Font = Enum.Font.Fantasy
Shop.TextColor3 = Color3.new(1, 1, 1)
Shop.Text = "Shop"
Shop.TextSize = 17
Shop.TextWrapped = true

VIP.Name = "VIP"
VIP.Parent = MainFrame
VIP.BackgroundColor3 = Color3.new(0, 0, 0)
VIP.BorderColor3 = Color3.new(0.1, 0.1, 0.1)
VIP.Position = UDim2.new(0, 10, 0, 150)
VIP.Size = UDim2.new(0, 120, 0, 25)
VIP.Font = Enum.Font.Fantasy
VIP.TextColor3 = Color3.new(1, 1, 1)
VIP.Text = "Tp to vip"
VIP.TextSize = 17
VIP.TextWrapped = true

function notify(msg)
	game.StarterGui:SetCore('SendNotification', {
		Title = 'MDS by YourMom 1.1v';
		Text = msg;
		Duration = 5;
	})
end

Farm.MouseButton1Click:connect(function()
	if farmactive == true then
		farmactive = false
		Farm.BackgroundColor3 = Color3.new(0, 0, 0)
		Farm.Text = "Farm"
	else
		farmactive = true
		Farm.BackgroundColor3 = Color3.new(0, 0.5, 0)
		Farm.Text = "Stop Farming"
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1203.73, 70.55, 398.512)
		for i=1,8 do
			spawn(function()
				game:GetService('RunService').RenderStepped:connect(function()
					if farmactive == true then
						workspace['__REMOTES'].Dig:FireServer('Stop','Bronze Relic', 2)
						workspace['__REMOTES'].Sell:FireServer()
					end
				end)
			end)
		end
	end
end)
		
Rebirth.MouseButton1Click:connect(function()
	if rebirthactive == true then
		rebirthactive = false
		Rebirth.BackgroundColor3 = Color3.new(0, 0, 0)
		Rebirth.Text = "Auto Rebirth"
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 71.806, 451.9)
	else
		rebirthactive = true
		Rebirth.BackgroundColor3 = Color3.new(0, 0.5, 0)
		Rebirth.Text = "Stop Auto Rebirth"
		while rebirthactive == true do
			game:GetService("Workspace")["__REMOTES"].Rebirth:InvokeServer()
			if plr.leaderstats.Level.Value < 12 then
				game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1203.73, 70.55, 398.512)
			end
			wait(2)
		end
	end
end)

Spawn.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-264, 71.806, 451.9)
	notify'Teleported to the Spawn'
end)

Shop.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-256.373, 71.787, 366.732)
	notify'Teleported to the Shop'
end)

VIP.MouseButton1Click:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-171.722, 70.553, 402.491)
	notify'Teleported to the VIP'
end)
