--[[
Infinite Backpack Name is Infinite Storage
Black Hole Bomb is Black Hole Bomb
Black Hole Launcher is Black Hole Launcher
]]--

-- SPEED CONFIGURATION
local speed = 65 -- Speed Here!

spawn(function()
while wait() do
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speed
end
end)

-- DUPE CONFIGURATION
local howmany = 3 -- Number here for how many items you want to duplicate

if game:GetService("Players").LocalPlayer.Name == "SirFrost" then
local howmany = 5
else
end
wait(0.01)
 
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Ran, Made GUI by Atom!";
    Color = Color3.new(0, 185, 0);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size24;
})
wait(1)
game.StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Scripts by JlmmyKewlKiDz and ObitoXDm8OI, Baconie Show them support, and GUI by Atom!";
    Color = Color3.new(170, 0, 0);
    Font = Enum.Font.SourceSansBold;
    FontSize = Enum.FontSize.Size24;
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
       Title = "Loaded!";
       Text = "Please read chat for credits, and configure stuff in the script!";
})  
game.StarterGui:SetCore("SendNotification", {
       Title = "ATOM";
       Text = "Atom#0995 made this gui";
})  

-- Made by Atom

-- Scripts to JlmmyKewlKiDz, ObitoXDm8OI, Baconie


local Name = game.Players.LocalPlayer.Name


local random = math.random(1,9999999)


local DestructionSim = Instance.new("ScreenGui")
local Page1 = Instance.new("Frame")
local BGDETAIL = Instance.new("Frame")
local DetailLabel = Instance.new("TextLabel")
local Shop = Instance.new("TextButton")
local Highway = Instance.new("TextButton")
local Site = Instance.new("TextButton")
local Home = Instance.new("TextButton")
local Ship = Instance.new("TextButton")
local Space = Instance.new("TextButton")
local Camp = Instance.new("TextButton")
local Pillar = Instance.new("TextButton")
local Castle = Instance.new("TextButton")
local Empire = Instance.new("TextButton")
local Exit = Instance.new("TextButton")
local Farm = Instance.new("TextButton")
local Teleports = Instance.new("TextLabel")
local Sell = Instance.new("TextButton")
local Next = Instance.new("TextButton")
local Number1 = Instance.new("TextLabel")
local Page2 = Instance.new("Frame")
local BGDETAIL2 = Instance.new("Frame")
local DetailLabel2 = Instance.new("TextLabel")
local AutoSell = Instance.new("TextButton")
local Destroy = Instance.new("TextButton")
local Functions = Instance.new("TextLabel")
local Previous = Instance.new("TextButton")
local Number2 = Instance.new("TextLabel")
local SellBrick = Instance.new("TextButton")
local Dupe = Instance.new("TextButton")
local Bomb = Instance.new("TextButton")
local Backpack = Instance.new("TextButton")
local Gun = Instance.new("TextButton")
local TextBox = Instance.new("TextBox")

DestructionSim.Name = "DestructionSim"
DestructionSim.Parent = game.Players.LocalPlayer.PlayerGui

Page1.Name = "Page1"
Page1.Parent = DestructionSim
Page1.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Page1.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Page1.Position = UDim2.new(0.0965853631, 0, 0.404382467, 0)
Page1.Size = UDim2.new(0, 270, 0, 257)
Page1.Active = true
Page1.Draggable = true

BGDETAIL.Name = "BGDETAIL"
BGDETAIL.Parent = Page1
BGDETAIL.BackgroundColor3 = Color3.new(0.458824, 0.792157, 1)
BGDETAIL.BorderColor3 = Color3.new(0.352941, 0.643137, 0.807843)
BGDETAIL.Size = UDim2.new(0, 270, 0, 30)

DetailLabel.Name = "DetailLabel"
DetailLabel.Parent = BGDETAIL
DetailLabel.BackgroundColor3 = Color3.new(1, 1, 1)
DetailLabel.BackgroundTransparency = 1
DetailLabel.Position = UDim2.new(0.0925925896, 0, 0, 0)
DetailLabel.Size = UDim2.new(0, 235, 0, 30)
DetailLabel.Font = Enum.Font.SourceSansBold
DetailLabel.Text = "Destruction Simulator"
DetailLabel.TextColor3 = Color3.new(1, 1, 1)
DetailLabel.TextScaled = true
DetailLabel.TextSize = 14
DetailLabel.TextWrapped = true

Shop.Name = "Shop"
Shop.Parent = Page1
Shop.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Shop.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Shop.Position = UDim2.new(0.0333333611, 0, 0.192288339, 0)
Shop.Size = UDim2.new(0, 107, 0, 22)
Shop.Font = Enum.Font.SourceSansBold
Shop.Text = "Teleport to Shop"
Shop.TextColor3 = Color3.new(1, 1, 1)
Shop.TextScaled = true
Shop.TextSize = 14
Shop.TextWrapped = true

Shop.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-52.7326279, 3.45200205, -556.515015)
end)

Highway.Name = "Highway"
Highway.Parent = Page1
Highway.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Highway.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Highway.Position = UDim2.new(0.0333333313, 0, 0.305615187, 0)
Highway.Size = UDim2.new(0, 107, 0, 22)
Highway.Font = Enum.Font.SourceSansBold
Highway.Text = "Highway Racing"
Highway.TextColor3 = Color3.new(1, 1, 1)
Highway.TextScaled = true
Highway.TextSize = 14
Highway.TextWrapped = true

Highway.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(19.63, 3.35, -434.96)
end)

Site.Name = "Site"
Site.Parent = Page1
Site.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Site.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Site.Position = UDim2.new(0.562962949, 0, 0.307392985, 0)
Site.Size = UDim2.new(0, 108, 0, 22)
Site.Font = Enum.Font.SourceSansBold
Site.Text = "Construction Site"
Site.TextColor3 = Color3.new(1, 1, 1)
Site.TextScaled = true
Site.TextSize = 14
Site.TextWrapped = true

Site.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-89, 3, -452)
end)

Home.Name = "Home"
Home.Parent = Page1
Home.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Home.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Home.Position = UDim2.new(0.567841053, 0, 0.421485007, 0)
Home.Size = UDim2.new(0, 107, 0, 22)
Home.Font = Enum.Font.SourceSansBold
Home.Text = "Happy Home"
Home.TextColor3 = Color3.new(1, 1, 1)
Home.TextScaled = true
Home.TextSize = 14
Home.TextWrapped = true

Home.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-88, 3.5, -150)
end)

Ship.Name = "Ship"
Ship.Parent = Page1
Ship.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Ship.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Ship.Position = UDim2.new(0.0333333351, 0, 0.536964953, 0)
Ship.Size = UDim2.new(0, 107, 0, 22)
Ship.Font = Enum.Font.SourceSansBold
Ship.Text = "Ship Dock"
Ship.TextColor3 = Color3.new(1, 1, 1)
Ship.TextScaled = true
Ship.TextSize = 14
Ship.TextWrapped = true

Ship.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(18.19, 3.35, 144)
end)

Space.Name = "Space"
Space.Parent = Page1
Space.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Space.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Space.Position = UDim2.new(0.567841053, 0, 0.538166225, 0)
Space.Size = UDim2.new(0, 107, 0, 22)
Space.Font = Enum.Font.SourceSansBold
Space.Text = "Space Travel"
Space.TextColor3 = Color3.new(1, 1, 1)
Space.TextScaled = true
Space.TextSize = 14
Space.TextWrapped = true

Space.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-89.05, 3.35, 144)
end)

Camp.Name = "Camp"
Camp.Parent = Page1
Camp.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Camp.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Camp.Position = UDim2.new(0.0345077515, 0, 0.658738494, 0)
Camp.Size = UDim2.new(0, 107, 0, 22)
Camp.Font = Enum.Font.SourceSansBold
Camp.Text = "Military Camp"
Camp.TextColor3 = Color3.new(1, 1, 1)
Camp.TextScaled = true
Camp.TextSize = 14
Camp.TextWrapped = true

Camp.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(17.74, 3.35, 453.33)
end)

Pillar.Name = "Pillar"
Pillar.Parent = Page1
Pillar.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Pillar.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Pillar.Position = UDim2.new(0.56413734, 0, 0.658738494, 0)
Pillar.Size = UDim2.new(0, 107, 0, 22)
Pillar.Font = Enum.Font.SourceSansBold
Pillar.Text = "Pyramid & Pillars"
Pillar.TextColor3 = Color3.new(1, 1, 1)
Pillar.TextScaled = true
Pillar.TextSize = 14
Pillar.TextWrapped = true

Pillar.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-86.08, 3.35, 446.63)
end)

Castle.Name = "Castle"
Castle.Parent = Page1
Castle.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Castle.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Castle.Position = UDim2.new(0.0333333351, 0, 0.774319053, 0)
Castle.Size = UDim2.new(0, 107, 0, 22)
Castle.Font = Enum.Font.SourceSansBold
Castle.Text = "Castle"
Castle.TextColor3 = Color3.new(1, 1, 1)
Castle.TextScaled = true
Castle.TextSize = 14
Castle.TextWrapped = true

Castle.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(18.35, 3.35, 774.2)
end)

Empire.Name = "Empire"
Empire.Parent = Page1
Empire.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Empire.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Empire.Position = UDim2.new(0.56413734, 0, 0.775470018, 0)
Empire.Size = UDim2.new(0, 107, 0, 22)
Empire.Font = Enum.Font.SourceSansBold
Empire.Text = "Empire State & HQ"
Empire.TextColor3 = Color3.new(1, 1, 1)
Empire.TextScaled = true
Empire.TextSize = 14
Empire.TextWrapped = true

Empire.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-89.75, 3.35, 747.22)
end)

Exit.Name = "Exit"
Exit.Parent = Page1
Exit.BackgroundColor3 = Color3.new(0.458824, 0.792157, 1)
Exit.BorderSizePixel = 0
Exit.Size = UDim2.new(0, 24, 0, 30)
Exit.Font = Enum.Font.SourceSansBold
Exit.Text = "X"
Exit.TextColor3 = Color3.new(1, 1, 1)
Exit.TextScaled = true
Exit.TextSize = 14
Exit.TextWrapped = true

Exit.MouseButton1Click:connect(function()
DestructionSim:Destroy()
end)

Farm.Name = "Farm"
Farm.Parent = Page1
Farm.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Farm.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Farm.Position = UDim2.new(0.0345077515, 0, 0.421447635, 0)
Farm.Size = UDim2.new(0, 107, 0, 22)
Farm.Font = Enum.Font.SourceSansBold
Farm.Text = "Farm"
Farm.TextColor3 = Color3.new(1, 1, 1)
Farm.TextScaled = true
Farm.TextSize = 14
Farm.TextWrapped = true

Farm.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(16.23, 3.35, -152.98)
end)

Teleports.Name = "Teleports"
Teleports.Parent = Page1
Teleports.BackgroundColor3 = Color3.new(1, 1, 1)
Teleports.BackgroundTransparency = 1
Teleports.Position = UDim2.new(0.42592591, 0, 0.116731517, 0)
Teleports.Size = UDim2.new(0, 38, 0, 15)
Teleports.Font = Enum.Font.SourceSansBold
Teleports.Text = "Teleports"
Teleports.TextColor3 = Color3.new(1, 1, 1)
Teleports.TextSize = 14

Sell.Name = "Sell"
Sell.Parent = Page1
Sell.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Sell.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Sell.Position = UDim2.new(0.566666722, 0, 0.192288339, 0)
Sell.Size = UDim2.new(0, 107, 0, 22)
Sell.Font = Enum.Font.SourceSansBold
Sell.Text = "Teleport to Sell"
Sell.TextColor3 = Color3.new(1, 1, 1)
Sell.TextScaled = true
Sell.TextSize = 14
Sell.TextWrapped = true

Sell.MouseButton1Click:connect(function()
game.Workspace[Name].HumanoidRootPart.CFrame = CFrame.new(-14.55, 3.86, -558.21)
end)


Next.Name = "Next"
Next.Parent = Page1
Next.BackgroundColor3 = Color3.new(1, 1, 1)
Next.BackgroundTransparency = 1
Next.Position = UDim2.new(0.566666603, 0, 0.922178984, 0)
Next.Size = UDim2.new(0, 16, 0, 20)
Next.Font = Enum.Font.SourceSansBold
Next.Text = "->"
Next.TextColor3 = Color3.new(1, 1, 1)
Next.TextSize = 14

Next.MouseButton1Click:connect(function()
Page1.Visible = false
Page1.Active = false
Page1.Draggable = false
Page2.Visible = true
Page2.Active = true
Page2.Draggable = true
end)

Number1.Name = "Number1"
Number1.Parent = Page1
Number1.BackgroundColor3 = Color3.new(1, 1, 1)
Number1.BackgroundTransparency = 1
Number1.Position = UDim2.new(0.470370412, 0, 0.933852136, 0)
Number1.Size = UDim2.new(0, 14, 0, 14)
Number1.Font = Enum.Font.SourceSans
Number1.Text = "1"
Number1.TextColor3 = Color3.new(1, 1, 1)
Number1.TextSize = 14

Page2.Name = "Page2"
Page2.Parent = DestructionSim
Page2.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
Page2.BorderColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Page2.Position = UDim2.new(0.418536544, 0, 0.384462178, 0)
Page2.Size = UDim2.new(0, 270, 0, 257)
Page2.Visible = false

BGDETAIL2.Name = "BGDETAIL2"
BGDETAIL2.Parent = Page2
BGDETAIL2.BackgroundColor3 = Color3.new(0.458824, 0.792157, 1)
BGDETAIL2.BorderColor3 = Color3.new(0.352941, 0.643137, 0.807843)
BGDETAIL2.Size = UDim2.new(0, 270, 0, 30)

DetailLabel2.Name = "DetailLabel2"
DetailLabel2.Parent = BGDETAIL2
DetailLabel2.BackgroundColor3 = Color3.new(1, 1, 1)
DetailLabel2.BackgroundTransparency = 1
DetailLabel2.Position = UDim2.new(0.092592597, 0, 0, 0)
DetailLabel2.Size = UDim2.new(0, 235, 0, 30)
DetailLabel2.Font = Enum.Font.SourceSansBold
DetailLabel2.Text = "Destruction Simulator"
DetailLabel2.TextColor3 = Color3.new(1, 1, 1)
DetailLabel2.TextScaled = true
DetailLabel2.TextSize = 14
DetailLabel2.TextWrapped = true

AutoSell.Name = "AutoSell"
AutoSell.Parent = Page2
AutoSell.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
AutoSell.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
AutoSell.Position = UDim2.new(0.0313919783, 0, 0.190970525, 0)
AutoSell.Size = UDim2.new(0, 107, 0, 22)
AutoSell.Font = Enum.Font.SourceSansBold
AutoSell.Text = "Auto Sell Bricks"
AutoSell.TextColor3 = Color3.new(1, 1, 1)
AutoSell.TextScaled = true
AutoSell.TextSize = 14
AutoSell.TextWrapped = true

AutoSell.MouseButton1Click:connect(function()
local remote = game["ReplicatedStorage"]["Remotes"]["sellBricks"]
while true do
   remote:FireServer()
   wait(12.5)
end
end)

Destroy.Name = "Destroy"
Destroy.Parent = Page2
Destroy.BackgroundColor3 = Color3.new(0.458824, 0.792157, 1)
Destroy.BorderSizePixel = 0
Destroy.Size = UDim2.new(0, 24, 0, 30)
Destroy.Font = Enum.Font.SourceSansBold
Destroy.Text = "X"
Destroy.TextColor3 = Color3.new(1, 1, 1)
Destroy.TextScaled = true
Destroy.TextSize = 14
Destroy.TextWrapped = true

Destroy.MouseButton1Click:connect(function()
DestructionSim:Destroy()
end)

Functions.Name = "Functions"
Functions.Parent = Page2
Functions.BackgroundColor3 = Color3.new(1, 1, 1)
Functions.BackgroundTransparency = 1
Functions.Position = UDim2.new(0.42592591, 0, 0.116731517, 0)
Functions.Size = UDim2.new(0, 38, 0, 15)
Functions.Font = Enum.Font.SourceSansBold
Functions.Text = "Functions"
Functions.TextColor3 = Color3.new(1, 1, 1)
Functions.TextSize = 14

Previous.Name = "Previous"
Previous.Parent = Page2
Previous.BackgroundColor3 = Color3.new(1, 1, 1)
Previous.BackgroundTransparency = 1
Previous.Position = UDim2.new(0.366666615, 0, 0.922178984, 0)
Previous.Size = UDim2.new(0, 16, 0, 20)
Previous.Font = Enum.Font.SourceSansBold
Previous.Text = "<-"
Previous.TextColor3 = Color3.new(1, 1, 1)
Previous.TextSize = 14

Previous.MouseButton1Click:connect(function()
Page2.Visible = false
Page2.Active = false
Page2.Draggable = false
Page1.Visible = true
Page1.Active = true
Page1.Draggable = true
end)

Number2.Name = "Number2"
Number2.Parent = Page2
Number2.BackgroundColor3 = Color3.new(1, 1, 1)
Number2.BackgroundTransparency = 1
Number2.Position = UDim2.new(0.470370412, 0, 0.933852136, 0)
Number2.Size = UDim2.new(0, 14, 0, 14)
Number2.Font = Enum.Font.SourceSans
Number2.Text = "2"
Number2.TextColor3 = Color3.new(1, 1, 1)
Number2.TextSize = 14

SellBrick.Name = "SellBrick"
SellBrick.Parent = Page2
SellBrick.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
SellBrick.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
SellBrick.Position = UDim2.new(0.570425451, 0, 0.190970525, 0)
SellBrick.Size = UDim2.new(0, 107, 0, 22)
SellBrick.Font = Enum.Font.SourceSansBold
SellBrick.Text = "Sell Bricks"
SellBrick.TextColor3 = Color3.new(1, 1, 1)
SellBrick.TextScaled = true
SellBrick.TextSize = 14
SellBrick.TextWrapped = true

SellBrick.MouseButton1Click:connect(function()
local remote = game["ReplicatedStorage"]["Remotes"]["sellBricks"]
remote:FireServer()
end)

Dupe.Name = "Dupe"
Dupe.Parent = Page2
Dupe.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Dupe.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Dupe.Position = UDim2.new(0.0296296291, 0, 0.315175086, 0)
Dupe.Size = UDim2.new(0, 252, 0, 22)
Dupe.Font = Enum.Font.SourceSansBold
Dupe.Text = "Dupe Launchers And Bombs"
Dupe.TextColor3 = Color3.new(1, 1, 1)
Dupe.TextScaled = true
Dupe.TextSize = 14
Dupe.TextWrapped = true

function blacklist()
if game.Players.LocalPlayer.Name == "silky_dev" then
game.Players.LocalPlayer:Kick("Hi Owner, Goodbye owner.")
end
end

Dupe.MouseButton1Click:connect(function()
for i = 1, howmany do

    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if (v:IsA("Tool")) then
        v.Parent = game.Players.LocalPlayer
    end
    end

wait(0.5)

    game.Players.LocalPlayer.Character.Head.Neck:Destroy()

wait(8)
end
wait(1)

for _,v in pairs(game.Players.LocalPlayer:GetChildren()) do
    if (v:IsA("Tool")) then
    v.Parent = game.Players.LocalPlayer.Backpack
    end
end
end)

Bomb.Name = "Bomb"
Bomb.Parent = Page2
Bomb.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Bomb.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Bomb.Position = UDim2.new(0.0296296291, 0, 0.560311258, 0)
Bomb.Size = UDim2.new(0, 83, 0, 22)
Bomb.Font = Enum.Font.SourceSansBold
Bomb.Text = "Equip Bomb"
Bomb.TextColor3 = Color3.new(1, 1, 1)
Bomb.TextScaled = true
Bomb.TextSize = 14
Bomb.TextWrapped = true

Backpack.Name = "Backpack"
Backpack.Parent = Page2
Backpack.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Backpack.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Backpack.Position = UDim2.new(0.655555606, 0, 0.560311258, 0)
Backpack.Size = UDim2.new(0, 83, 0, 22)
Backpack.Font = Enum.Font.SourceSansBold
Backpack.Text = "Equip Backpack"
Backpack.TextColor3 = Color3.new(1, 1, 1)
Backpack.TextScaled = true
Backpack.TextSize = 14
Backpack.TextWrapped = true

Gun.Name = "Gun"
Gun.Parent = Page2
Gun.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
Gun.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Gun.Position = UDim2.new(0.366666675, 0, 0.560311258, 0)
Gun.Size = UDim2.new(0, 70, 0, 22)
Gun.Font = Enum.Font.SourceSansBold
Gun.Text = "Equip Gun"
Gun.TextColor3 = Color3.new(1, 1, 1)
Gun.TextScaled = true
Gun.TextSize = 14
Gun.TextWrapped = true

TextBox.Parent = Page2
TextBox.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
TextBox.BorderColor3 = Color3.new(0.176471, 0.176471, 0.176471)
TextBox.Position = UDim2.new(0.125925928, 0, 0.431906581, 0)
TextBox.Size = UDim2.new(0, 200, 0, 22)
TextBox.Font = Enum.Font.SourceSansBold
TextBox.PlaceholderColor3 = Color3.new(1, 1, 1)
TextBox.Text = "Equipment Name Here [Cap Sensitive]"
TextBox.TextColor3 = Color3.new(1, 1, 1)
TextBox.TextScaled = true
TextBox.TextSize = 14
TextBox.TextWrapped = true

Bomb.MouseButton1Click:connect(function()
local A_1 = "Bomb"
local A_2 = TextBox.Text
local Event = game:GetService("ReplicatedStorage").Remotes.equipItem
Event:FireServer(A_1, A_2)
end)

Gun.MouseButton1Click:connect(function()
local A_1 = "Launcher"
local A_2 = TextBox.Text
local Event = game:GetService("ReplicatedStorage").Remotes.equipItem
Event:FireServer(A_1, A_2)
end)

for i = 1, 5 do
blacklist()
end

Backpack.MouseButton1Click:connect(function()
local A_1 = "Backpack"
local A_2 = TextBox.Text
local Event = game:GetService("ReplicatedStorage").Remotes.equipItem
Event:FireServer(A_1, A_2)
end)