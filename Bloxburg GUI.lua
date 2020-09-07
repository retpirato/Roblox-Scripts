-- BloxBurg Gui Created by LuckyMMB @ V3rmillion.net --
-- Discord https://discord.gg/GKzJnUC --

AntiAFKMode = "Nothing"

-- Objects

local BloxGUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Close = Instance.new("TextButton")
local AntiAFK = Instance.new("TextButton")
local Kick = Instance.new("TextButton")
local IceCream = Instance.new("TextButton")
local IceCreamFrame = Instance.new("Frame")
local IceCreamHeader = Instance.new("TextLabel")
local StartIceCream = Instance.new("TextButton")
local LightsOn = Instance.new("TextButton")
local InfoScreen = Instance.new("TextButton")
local InfoFrame = Instance.new("Frame")
local InfoText1 = Instance.new("TextLabel")

-- Properties

BloxGUI.Name = "BloxGUI"
BloxGUI.Parent = game.CoreGui
local BloxCORE = game.CoreGui["BloxGUI"]
local MainFrame = Instance.new("Frame")
local AntiAFK = Instance.new("TextButton")
local Icecream = Instance.new("TextButton")

MainFrame.Name = "MainFrame"
MainFrame.Parent = BloxGUI
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(0, 0, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.5, -355, 0, -27)
MainFrame.Size = UDim2.new(0, 695, 0, 20)
MainFrame.Selectable = true

Close.Name = "Close"
Close.Parent = MainFrame
Close.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Close.BorderColor3 = Color3.new(0, 1, 0)
Close.Position = UDim2.new(0, 0, 0, 0)
Close.Size = UDim2.new(0, 20, 0, 20)
Close.Font = Enum.Font.Fantasy
Close.FontSize = Enum.FontSize.Size18
Close.Text = "X"
Close.TextColor3 = Color3.new(1, 0, 0)
Close.TextSize = 17
Close.TextScaled = true
Close.TextWrapped = true

IceCream.Name = "IceCream"
IceCream.Parent = MainFrame
IceCream.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
IceCream.TextColor3 = Color3.new(1, 1, 1)
IceCream.BorderColor3 = Color3.new(0, 1, 0)
IceCream.Position = UDim2.new(0, 25, 0, 0)
IceCream.Size = UDim2.new(0, 170, 0, 20)
IceCream.Font = Enum.Font.Fantasy
IceCream.FontSize = Enum.FontSize.Size18
IceCream.Text = "Ben's IceCream Money"
IceCream.TextSize = 17

IceCreamFrame.Name = "IceCreamFrame"
IceCreamFrame.Parent = MainFrame
IceCreamFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
IceCreamFrame.BackgroundTransparency = 0.5
IceCreamFrame.BorderColor3 = Color3.new(0, 0, 0)
IceCreamFrame.Position = UDim2.new(0, -35, 0, 30)
IceCreamFrame.Size = UDim2.new(0, 290, 0, 210)
IceCreamFrame.Visible = false

IceCreamHeader.Name = "IceCreamHeader"
IceCreamHeader.Parent = IceCreamFrame
IceCreamHeader.BackgroundColor3 = Color3.new(1, 1, 1)
IceCreamHeader.BackgroundTransparency = 0.15
IceCreamHeader.BorderColor3 = Color3.new(1, 1, 1)
IceCreamHeader.Position = UDim2.new(0, 5, 0, 5)
IceCreamHeader.Size = UDim2.new(0, 280, 0, 165)
IceCreamHeader.Font = Enum.Font.SourceSans
IceCreamHeader.FontSize = Enum.FontSize.Size18
IceCreamHeader.Text = "1. Click Start Money Farming\n\n2. Grab a cup manually and give it to the person [Only need to do this the first time]\n\n3. Stand near the cups, it may take a few times to get it right before cups equip automatically\n\n4. Keep from timing out after 20 minutes idle and enjoy the Money"
IceCreamHeader.TextColor3 = Color3.new(0, 0, 0)
IceCreamHeader.TextSize = 16
IceCreamHeader.TextWrapped = true
IceCreamHeader.TextYAlignment = Enum.TextYAlignment.Top

StartIceCream.Name = "StartIceCream"
StartIceCream.Parent = IceCreamFrame
StartIceCream.BackgroundColor3 = Color3.new(0.18, 0.18, 0.18)
StartIceCream.BorderColor3 = Color3.new(0.5, 0.5, 0.5)
StartIceCream.Position = UDim2.new(0, 50, 0, 175)
StartIceCream.Size = UDim2.new(0, 180, 0, 30)
StartIceCream.Font = Enum.Font.Fantasy
StartIceCream.FontSize = Enum.FontSize.Size18
StartIceCream.Text = "Start Money Farming"
StartIceCream.TextColor3 = Color3.new(1, 1, 1)
StartIceCream.TextWrapped = true
StartIceCream.TextSize = 17

LightsOn.Name = "LightsOn"
LightsOn.Parent = MainFrame
LightsOn.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
LightsOn.TextColor3 = Color3.new(1, 1, 1)
LightsOn.BorderColor3 = Color3.new(0, 1, 0)
LightsOn.Position = UDim2.new(0, 200, 0, 0)
LightsOn.Size = UDim2.new(0, 80, 0, 20)
LightsOn.Font = Enum.Font.Fantasy
LightsOn.FontSize = Enum.FontSize.Size18
LightsOn.Text = "Lights On"
LightsOn.TextSize = 17

Kick.Name = "Kick"
Kick.Parent = MainFrame
Kick.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
Kick.TextColor3 = Color3.new(1, 1, 1)
Kick.BorderColor3 = Color3.new(0, 1, 0)
Kick.Position = UDim2.new(0, 430, 0, 0)
Kick.Size = UDim2.new(0, 50, 0, 20)
Kick.Font = Enum.Font.Fantasy
Kick.FontSize = Enum.FontSize.Size18
Kick.Text = "Kick"
Kick.TextSize = 17

AntiAFK.Name = "AntiAFK"
AntiAFK.Parent = MainFrame
AntiAFK.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
AntiAFK.BorderColor3 = Color3.new(0, 1, 0)
AntiAFK.Position = UDim2.new(0, 485, 0, 0)
AntiAFK.Size = UDim2.new(0, 160, 0, 20)
AntiAFK.BackgroundTransparency = 0
AntiAFK.Font = Enum.Font.Fantasy
AntiAFK.FontSize = Enum.FontSize.Size18
AntiAFK.Text = "Start AFK Message"
AntiAFK.TextColor3 = Color3.new(1, 1, 1)
AntiAFK.TextSize = 17

InfoScreen.Name = "InfoScreen"
InfoScreen.Parent = MainFrame
InfoScreen.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
InfoScreen.BorderColor3 = Color3.new(0, 1, 0)
InfoScreen.Position = UDim2.new(0, 650, 0, 0)
InfoScreen.Size = UDim2.new(0, 45, 0, 20)
InfoScreen.BackgroundTransparency = 0
InfoScreen.Font = Enum.Font.Fantasy
InfoScreen.FontSize = Enum.FontSize.Size18
InfoScreen.TextColor3 = Color3.new(1, 1, 1)
InfoScreen.Text = "Info"
InfoScreen.TextSize = 17
InfoScreen.TextWrapped = true

InfoFrame.Name = "InfoFrame"
InfoFrame.Parent = MainFrame
InfoFrame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
InfoFrame.BorderColor3 = Color3.new(0, 0, 0)
InfoFrame.BackgroundTransparency = 0.5
InfoFrame.Position = UDim2.new(0, 578, 0, 30)
InfoFrame.Size = UDim2.new(0, 200, 0, 130)
InfoFrame.Visible = false

InfoText1.Name = "InfoText1"
InfoText1.Parent = InfoFrame
InfoText1.BackgroundColor3 = Color3.new(0, 0, 0)
InfoText1.BorderColor3 = Color3.new(0, 0, 0)
InfoText1.BackgroundTransparency = 1
InfoText1.Position = UDim2.new(0, 5, 0, 5)
InfoText1.Size = UDim2.new(0, 190, 0, 120)
InfoText1.TextColor3 = Color3.new(1, 1, 1)
InfoText1.Font = Enum.Font.Fantasy
InfoText1.FontSize = Enum.FontSize.Size18
InfoText1.Text = "This Gui was created by LuckyMMB@V3rmillion.net\nDiscord https://discord.gg/GKzJnUC"
InfoText1.TextSize = 14
InfoText1.TextWrapped = true
InfoText1.TextYAlignment = Enum.TextYAlignment.Top

--- Menus ---

local Menus = {
	[IceCream] = IceCreamFrame;
	[InfoScreen] = InfoFrame;
}
for button,frame in pairs(Menus) do
	button.MouseButton1Click:connect(function()
		if frame.Visible then
			frame.Visible = false
			return
		end
		for k,v in pairs(Menus) do
			v.Visible = v == frame
		end
	end)
end

--- Close ---

Close.MouseButton1Down:connect(function()
BloxGUI:Destroy()
end)

--- Notify Function ---

function notify(msg)
game.StarterGui:SetCore('SendNotification', {
Title = 'BloxBurg LuckyGUI';
Text = msg;
Duration = 5;
})
end

--- Ben's Icecream Money ---

StartIceCream.MouseButton1Click:Connect(function()
	function handle()
		game.ReplicatedStorage.DataEvent:FireServer({Type = 'TakeIceCreamCup'})
		wait(.1)
		local plr = game:GetService'Players'.LocalPlayer.Name
		local flavours = {'Vanilla', 'Chocolate', 'Strawberry'}
		local extra = {'Sprinkles', 'Nuts', 'Caramel'}
		local stuff
		local event = game.ReplicatedStorage.DataEvent

		local send_valid = function()
			for k,v in next, workspace.BensIceCream.CustomerTargets:GetChildren()do
				if v.Occupied.Value ~= nil then
					return v
				end
			end
		end

		for s,j in next, workspace.SpawnedCharacters:GetChildren() do
			if j.Name:find('BensIceCream') then
				local char = j
				local p = send_valid()
				if p.Occupied.Value:FindFirstChild('Order') then
					stuff = {}
					for _,x in next, p.Occupied.Value.Order:GetChildren()do
						table.insert(stuff, x.Value)
					end
				end
			end
		end

		local ball = function()
			if workspace[plr]:FindFirstChild('Ice Cream Cup'):WaitForChild'Ball1'.Transparency == 1 then
				return workspace[plr]:FindFirstChild('Ice Cream Cup').Ball1
			elseif workspace[plr]:FindFirstChild('Ice Cream Cup'):WaitForChild'Ball2'.Transparency == 1 then
				return workspace[plr]:FindFirstChild('Ice Cream Cup').Ball2
			end
		end

		table.foreach(flavours, function(s,l)
			for k,v in next, stuff do
				if l:lower() == v:lower() then
					local new = ball()
					event:FireServer({
					Type = "AddIceCreamScoop",
					Taste = v,
					Ball = new,
					})
					new.Transparency = 0
				end
			end
		end)

		table.foreach(extra, function(s,l)
			for k,v in next, stuff do
				if l:lower() == v:lower() then
					event:FireServer({
					Type = "AddIceCreamTopping",
					Taste = l
					})
				end
			end
		end)
		wait()
		for k,v in next, workspace.BensIceCream.CustomerTargets:GetChildren()do
			if v.Occupied.Value ~= nil then
				game.ReplicatedStorage.DataEvent:FireServer({Type = 'FinishOrder', Workstation = v})
			end
		end
	end

	IceCream.BackgroundColor3 = Color3.new(0, 0.5, 0)
	StartIceCream.BackgroundColor3 = Color3.new(0, 0.5, 0)
	StartIceCream.Text = "IceCream Money Active"
	notify'IceCream Money Farming Started'
	for k,v in next,  workspace.BensIceCream.CustomerTargets:GetChildren()do
		v.Occupied:GetPropertyChangedSignal('Value'):Connect(function()
			handle()
		end)
	end
end)

--- Kick From House ---

Kick.MouseButton1Click:Connect(function()
    local oldLoc = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.ReplicatedStorage.DataFunction:InvokeServer({Type="EnterBuild"})
    wait(0.01)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldLoc
	notify'All players kicked from house'
end)

--- LightsOn ---

LightsOn.MouseButton1Click:Connect(function()
   local plot = game.Workspace.Plots:FindFirstChild("Plot_"..game.Players.LocalPlayer.Name)
   for i,v in pairs(plot.House.Objects:children()) do
       if v.Type.Value == "Lighting" then
           if not v.ObjectData.IsOn.Value then
               game.ReplicatedStorage.DataEvent:FireServer({Type="Interact", Path=1, Target=v})
           end
       end
   end
   for ii,wall in pairs(plot.House.Walls:children()) do
       if wall:FindFirstChild("ItemHolder") then
           for i,v in pairs(wall.ItemHolder:children()) do
               if v.Type.Value == "Lighting" then
                   if v:FindFirstChild("ObjectData") then
                       if not v.ObjectData.IsOn.Value then
                           game.ReplicatedStorage.DataEvent:FireServer({Type="Interact", Path=1, Target=v})
                       end
                   end
               end
           end
       end
   end
end)

--- Anti AFK ---

AntiAFK.MouseButton1Click:Connect(function()
	if AntiAFKMode == "On" then
		AntiAFKMode = "Nothing"
		AntiAFK.BackgroundColor3 = Color3.new(0.1, 0.1, 0.1)
		AntiAFK.Text = "Start AFK Message"
		notify'Afk message turned off'
	else
		AntiAFKMode = "On"
		AntiAFK.BackgroundColor3 = Color3.new(0, 0.5, 0)
		AntiAFK.Text = "Stop AFK Message"
		notify'Afk message turned on'
		while AntiAFKMode == "On" do
			wait(300)
			game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("I'm afk", "All")
            game.Players:Chat("/e point")
		end
	end
end)
