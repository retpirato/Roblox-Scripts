-- by Dissapear#6969 or GerryNyx
-- DarkDevs GUI
-- All Credits to people made that script
plr = game:GetService('Players').LocalPlayer
Kntl = game.Players.LocalPlayer.Character.HumanoidRootPart
Awal = Kntl.CFrame
local DarkDevs = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Header = Instance.new("Frame")
local SHeader = Instance.new("Frame")
local title = Instance.new("TextLabel")
local credits = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local Frame = Instance.new("Frame")
local LocalPlayerButton = Instance.new("TextButton")
local autoFarm = Instance.new("TextButton")
local autoBuyEGG = Instance.new("TextButton")
local autoSell = Instance.new("TextButton")
local autoRebirth = Instance.new("TextButton")
local LocalFrame = Instance.new("Frame")
local HeaderLocal = Instance.new("Frame")
local SHeader_2 = Instance.new("Frame")
local CloseButton_2 = Instance.new("TextButton")
local Frame_2 = Instance.new("Frame")
local walkfaster = Instance.new("TextButton")
local highjump = Instance.new("TextButton")
local infjumper = Instance.new("TextButton")
local tpToMagnet = Instance.new("TextButton")
local FastFarm = Instance.new("TextButton")

-- Properties

DarkDevs.Name = "DarkDevs"
DarkDevs.Parent = game.CoreGui

Main.Name = "Main"
Main.Parent = DarkDevs
Main.Active = true
Main.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.367, 0, 0.261, 0)
Main.Size = UDim2.new(0, 260, 0, 240)
Main.SizeConstraint = Enum.SizeConstraint.RelativeXX
Main.Draggable = true

Header.Name = "Header"
Header.Parent = Main
Header.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Header.BorderSizePixel = 0
Header.Size = UDim2.new(0, 260, 0, 31)

SHeader.Name = "SHeader"
SHeader.Parent = Header
SHeader.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SHeader.BorderSizePixel = 0
SHeader.Position = UDim2.new(0, 0, 0.781586051, 0)
SHeader.Size = UDim2.new(0, 260, 0, 6)

title.Name = "title"
title.Parent = Header
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(0, 131, 0, 30)
title.Font = Enum.Font.GothamBlack
title.Text = "DARK DEVS </>"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 14
title.TextStrokeTransparency = 0.80000001192093

credits.Name = "credits"
credits.Parent = Header
credits.BackgroundColor3 = Color3.new(1, 1, 1)
credits.BackgroundTransparency = 1
credits.Position = UDim2.new(0.0423076935, 0, 6.12903214, 0)
credits.Size = UDim2.new(0, 249, 0, 50)
credits.Font = Enum.Font.SourceSans
credits.Text = "Note: if you use Buy EGG button, u cant use AutoFARM,  All credits to people made that script, i dont know he's name but i'l give credits, if you need help with this gui, join our discord server, link on v3rmillion thread"
credits.TextColor3 = Color3.new(1, 1, 1)
credits.TextSize = 14
credits.TextWrapped = true
credits.TextXAlignment = Enum.TextXAlignment.Left
credits.TextYAlignment = Enum.TextYAlignment.Top

CloseButton.Name = "CloseButton"
CloseButton.Parent = Header
CloseButton.BackgroundColor3 = Color3.new(0.819608, 0, 0)
CloseButton.Position = UDim2.new(0.880769253, 0, 0, 0)
CloseButton.Size = UDim2.new(0, 31, 0, 31)
CloseButton.Font = Enum.Font.GothamBold
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 14

CloseButton.MouseButton1Down:connect(function()
	DarkDevs:Destroy()
end)



Frame.Parent = CloseButton
Frame.BackgroundColor3 = Color3.new(0.509804, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.78158617, 0)
Frame.Size = UDim2.new(0, 31, 0, 7)

LocalPlayerButton.Name = "LocalPlayerButton"
LocalPlayerButton.Parent = Header
LocalPlayerButton.BackgroundColor3 = Color3.new(0.819608, 0, 0)
LocalPlayerButton.BackgroundTransparency = 1
LocalPlayerButton.Position = UDim2.new(0.738461554, 0, 0, 0)
LocalPlayerButton.Size = UDim2.new(0, 31, 0, 31)
LocalPlayerButton.Font = Enum.Font.GothamBold
LocalPlayerButton.Text = "[+]"
LocalPlayerButton.TextColor3 = Color3.new(1, 1, 1)
LocalPlayerButton.TextSize = 14
LocalPlayerButton.MouseButton1Down:connect(function()
	LocalFrame.Visible = true
end)

autoFarm.Name = "autoFarm"
autoFarm.Parent = Main
autoFarm.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
autoFarm.BorderSizePixel = 0
autoFarm.Position = UDim2.new(0.0423076935, 0, 0.158333331, 0)
autoFarm.Size = UDim2.new(0, 120, 0, 35)
autoFarm.Font = Enum.Font.GothamBold
autoFarm.Text = "AutoFarm: OFF"
autoFarm.TextColor3 = Color3.new(1, 1, 1)
autoFarm.TextSize = 14
Farm = 0
Active = 0
autoFarm.MouseButton1Down:connect(function()
	if Farm == 1 then
Farm = 0
autoFarm.Text = "AutoFarm: OFF"
Active = false
else
Farm = 1
Active = true
autoFarm.Text = "AutoFarm: ON"
AutoDuit()
end
end)

autoBuyEGG.Name = "autoBuyEGG"
autoBuyEGG.Parent = Main
autoBuyEGG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
autoBuyEGG.BorderSizePixel = 0
autoBuyEGG.Position = UDim2.new(0.0423076935, 0, 0.329166651, 0)
autoBuyEGG.Size = UDim2.new(0, 120, 0, 35)
autoBuyEGG.Font = Enum.Font.GothamBold
autoBuyEGG.Text = "AutoBuyEGG: OFF"
autoBuyEGG.TextColor3 = Color3.new(1, 1, 1)
autoBuyEGG.TextSize = 14

buyEgg = 0
Active99 = 0
autoBuyEGG.MouseButton1Down:connect(function()
if buyEgg == 1 then
buyEgg = 0
autoBuyEGG.Text = "AutoBuyEGG: OFF"
Active99 = false
else
buyEgg = 1
Active99 = true
autoBuyEGG.Text = "AutoBuyEGG: ON"
autoBuyTelor()
end
end)

autoSell.Name = "autoSell"
autoSell.Parent = Main
autoSell.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
autoSell.BorderSizePixel = 0
autoSell.Position = UDim2.new(0.538461566, 0, 0.158333331, 0)
autoSell.Size = UDim2.new(0, 110, 0, 35)
autoSell.Font = Enum.Font.GothamBold
autoSell.Text = "AutoSell: OFF"
autoSell.TextColor3 = Color3.new(1, 1, 1)
autoSell.TextSize = 14
Sell = 0
Active2 = false
local plr = game:GetService("Players").LocalPlayer
local obj = game:GetService("Workspace")["Rings"]["Sell"]
autoSell.MouseButton1Down:connect(function()
	 if Sell == 1 then
        Sell = 0
        Active2 = false
        autoSell.Text = "AutoSell: OFF"
    else
        Sell = 1
        Active2 = true
        autoSell.Text = "AutoSell: ON"
        if Active2 == true then
            while Active2 do
                game:GetService('RunService').Stepped:wait()
               
               plr.Character.HumanoidRootPart.CFrame = obj.CFrame
               wait()
                plr.Character.HumanoidRootPart.CFrame = obj.CFrame
               wait()
            end
            Kntl.CFrame = Awal
            end
        end
end)

autoRebirth.Name = "autoRebirth"
autoRebirth.Parent = Main
autoRebirth.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
autoRebirth.BorderSizePixel = 0
autoRebirth.Position = UDim2.new(0.538461566, 0, 0.329166651, 0)
autoRebirth.Size = UDim2.new(0, 110, 0, 35)
autoRebirth.Font = Enum.Font.GothamBold
autoRebirth.Text = "AutoRebirth: OFF"
autoRebirth.TextColor3 = Color3.new(1, 1, 1)
autoRebirth.TextSize = 12

Rebirth = 0
Active3 = false

autoRebirth.MouseButton1Down:connect(function()
	    if Rebirth == 1 then
        Rebirth = 0
        Active3 = false
        autoRebirth.Text = "AutoRebith: OFF"
    else
        Rebirth = 1
        Active3 = true
        autoRebirth.Text = "AutoRebirth: ON"
        if Active3 == true then
            while Active3 do
                wait()
                local Rebit = game:GetService("ReplicatedStorage").RebirthEvents["requestRebirth"]
                Rebit:FireServer()
            end
        end
    end
end)

LocalFrame.Name = "LocalFrame"
LocalFrame.Parent = Main
LocalFrame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
LocalFrame.BorderSizePixel = 0
LocalFrame.Position = UDim2.new(1.02307689, 0, 0, 0)
LocalFrame.Size = UDim2.new(0, 169, 0, 217)
LocalFrame.Visible = false

HeaderLocal.Name = "HeaderLocal"
HeaderLocal.Parent = LocalFrame
HeaderLocal.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
HeaderLocal.BorderSizePixel = 0
HeaderLocal.Size = UDim2.new(0, 169, 0, 31)

SHeader_2.Name = "SHeader"
SHeader_2.Parent = HeaderLocal
SHeader_2.BackgroundColor3 = Color3.new(0.0784314, 0.0784314, 0.0784314)
SHeader_2.BorderSizePixel = 0
SHeader_2.Position = UDim2.new(0, 0, 0.78158617, 0)
SHeader_2.Size = UDim2.new(0, 169, 0, 6)

CloseButton_2.Name = "CloseButton"
CloseButton_2.Parent = HeaderLocal
CloseButton_2.BackgroundColor3 = Color3.new(0.819608, 0, 0)
CloseButton_2.Position = UDim2.new(0.815680683, 0, 0, 0)
CloseButton_2.Size = UDim2.new(0, 31, 0, 30)
CloseButton_2.Font = Enum.Font.GothamBold
CloseButton_2.Text = "X"
CloseButton_2.TextColor3 = Color3.new(1, 1, 1)
CloseButton_2.TextSize = 14
CloseButton_2.MouseButton1Down:connect(function()
	LocalFrame.Visible = false
end)

Frame_2.Parent = CloseButton_2
Frame_2.BackgroundColor3 = Color3.new(0.509804, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0, 0, 0.78158617, 0)
Frame_2.Size = UDim2.new(0, 31, 0, 7)

walkfaster.Name = "walkfaster"
walkfaster.Parent = LocalFrame
walkfaster.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
walkfaster.BorderSizePixel = 0
walkfaster.Position = UDim2.new(0.035502959, 0, 0.172863796, 0)
walkfaster.Size = UDim2.new(0, 156, 0, 50)
walkfaster.Font = Enum.Font.GothamBold
walkfaster.Text = "WalkFasterKey: Q"
walkfaster.TextColor3 = Color3.new(1, 1, 1)
walkfaster.TextSize = 14
walkfaster.MouseButton1Down:connect(function()
	local plr = game:GetService("Players").LocalPlayer
local char = plr.Character
local mouse = game:GetService("Players").LocalPlayer:GetMouse()
local hum = char:FindFirstChild("HumanoidRootPart")
local speed = 7
mouse.KeyDown:connect(function(key)
    if key == "q"  then
        loop = true
        while loop do
            hum.CFrame = hum.CFrame + hum.CFrame.lookVector * speed
            wait()
        end
        end
end)

mouse.KeyUp:connect(function(key)
    if key == "q"  then
        loop = false
    end
end)


end)

highjump.Name = "highjump"
highjump.Parent = LocalFrame
highjump.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
highjump.BorderSizePixel = 0
highjump.Position = UDim2.new(0.035502959, 0, 0.435550064, 0)
highjump.Size = UDim2.new(0, 156, 0, 50)
highjump.Font = Enum.Font.GothamBold
highjump.Text = "High Jump"
highjump.TextColor3 = Color3.new(1, 1, 1)
highjump.TextSize = 14
highjump.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = 200
end)

infjumper.Name = "infjumper"
infjumper.Parent = LocalFrame
infjumper.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
infjumper.BorderSizePixel = 0
infjumper.Position = UDim2.new(0.035502959, 0, 0.704838395, 0)
infjumper.Size = UDim2.new(0, 156, 0, 50)
infjumper.Font = Enum.Font.GothamBold
infjumper.Text = "Infinity Jump"
infjumper.TextColor3 = Color3.new(1, 1, 1)
infjumper.TextSize = 14
infjumper.MouseButton1Down:connect(function()
	local Player = game:GetService'Players'.LocalPlayer;
	local UIS = game:GetService'UserInputService';

	_G.JumpHeight = 50;

	function Action(Object, Function) if Object ~= nil then Function(Object); end end

	UIS.InputBegan:connect(function(UserInput)
	    if UserInput.UserInputType == Enum.UserInputType.Keyboard and UserInput.KeyCode == Enum.KeyCode.Space then
	        Action(Player.Character.Humanoid, function(self)
	            if self:GetState() == Enum.HumanoidStateType.Jumping or self:GetState() == Enum.HumanoidStateType.Freefall then
	                Action(self.Parent.HumanoidRootPart, function(self)
	                    self.Velocity = Vector3.new(0, _G.JumpHeight, 0);
	                end)
	            end
	        end)
	    end
	end)
end)

tpToMagnet.Name = "tpToMagnet"
tpToMagnet.Parent = Main
tpToMagnet.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
tpToMagnet.BorderSizePixel = 0
tpToMagnet.Position = UDim2.new(0.538461566, 0, 0.5, 0)
tpToMagnet.Size = UDim2.new(0, 110, 0, 35)
tpToMagnet.Font = Enum.Font.GothamBold
tpToMagnet.Text = "Tp to Magnet.IS"
tpToMagnet.TextColor3 = Color3.new(1, 1, 1)
tpToMagnet.TextSize = 12
tpToMagnet.MouseButton1Down:connect(function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.IslandInfo.islandtp.CFrame
end)

FastFarm.Name = "FastFarm"
FastFarm.Parent = Main
FastFarm.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
FastFarm.BorderSizePixel = 0
FastFarm.Position = UDim2.new(0.0423076935, 0, 0.5, 0)
FastFarm.Size = UDim2.new(0, 120, 0, 35)
FastFarm.Font = Enum.Font.GothamBold
FastFarm.Text = "FastCoins: OFF"
FastFarm.TextColor3 = Color3.new(1, 1, 1)
FastFarm.TextSize = 12
ActiveFast = 0
fastcoins = 0
FastFarm.MouseButton1Down:connect(function()
	if fastcoins == 1 then
fastcoins = 0
FastFarm.Text = "FastFarm: OFF"
ActiveFast = false
else
fastcoins = 1
ActiveFast = true
FastFarm.Text = "FastFarm: ON"
FastCoinscok()
end
end)

function AutoDuit()
    if Active == true then
while Active do
game:GetService('RunService').Stepped:wait()
for i = 1,25 do
local tool = game.Workspace[plr.Name]:FindFirstChildOfClass("Tool")
if tool then
    local A_1 = "8250"
local A_2 = tool
local Event = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
Event:FireServer(A_1, A_2)
else
local tool = plr.Backpack:FindFirstChildOfClass("Tool")
if tool then
    local A_1 = "8250"
local A_2   = tool
local Event = game:GetService("ReplicatedStorage").Events.MagnetEvents.requestGrab
Event:FireServer(A_1, A_2)
end
end
end
end
    end
end

function autoBuyTelor()
	if Active99 == true then
while Active99 do
game:GetService('RunService').Stepped:wait()
for i = 1,25 do
local Remote = game.ReplicatedStorage.Events.MagnetEvents['requestGrab']
local Arguments = {
     [1] = "8250",
     [2] = game.ReplicatedStorage.Tools["Heavenly Rebirth Magnet"]
}
local plr = game.Players.LocalPlayer
local char = plr.Character.HumanoidRootPart
game.Workspace.Rings.Sell.CanCollide = false
game.Workspace.Rings.Sell.CFrame = char.CFrame + Vector3.new(0,math.random(-1,1),0)
Remote:FireServer(unpack(Arguments))
wait(0.03)
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Catacylsmic Egg")
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Psychadelic Egg")
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Mythical Egg")
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Epic Egg")
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Legendary Egg")
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Rare Egg")
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Uncommon Egg")
game.ReplicatedStorage.PetEvents.requesthatch:FireServer("Common Egg")
end
	end
	end
	end

function FastCoinscok()
	if ActiveFast == true then
		local Remote = game.ReplicatedStorage.Events.MagnetEvents['requestGrab']
local Arguments = {
      [1] = "8250",
      [2] = game.ReplicatedStorage.Tools["Heavenly Rebirth Magnet"]
}
while wait() do
Remote:FireServer(unpack(Arguments))
end
	end
end