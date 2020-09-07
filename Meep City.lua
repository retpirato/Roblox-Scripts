game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Gui Made By GianFromYoutube";
Color = Color3.new(255, 0, 0);
Font = Enum.Font.SourceSansBold;
FontSize = Enum.FontSize.Size24;
})

wait(1)

game.StarterGui:SetCore("ChatMakeSystemMessage", {
Text = "Subscribe Now : GianFromYoutube";
Color = Color3.new(85, 255, 255);
Font = Enum.Font.SourceSansBold;
FontSize = Enum.FontSize.Size24;
})

wait(1)

game.StarterGui:SetCore("SendNotification", {
Title = "Wait 3 Seconds";
Text = "Please Wait 3 Seconds";
})

wait(3)

game.StarterGui:SetCore("SendNotification", {
Title = "GianFromYoutube Gui Loaded!";
Text = "Gui Made By GianFromYoutube";
})

-- Objects

local MeepCity = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Plus = Instance.new("TextButton")
local Bantuan = Instance.new("TextButton")
local Made = Instance.new("TextLabel")
local Tutup = Instance.new("TextButton")
local Boom = Instance.new("TextButton")
local Money = Instance.new("TextButton")
local Chalk = Instance.new("TextButton")
local BFrame = Instance.new("Frame")
local Dudu = Instance.new("TextLabel")
local BanTutup = Instance.new("TextButton")
local BuFrame = Instance.new("Frame")
local Buka = Instance.new("TextButton")

-- Properties

MeepCity.Name = "MeepCity"
MeepCity.Parent = game.CoreGui

MainFrame.Name = "MainFrame"
MainFrame.Parent = MeepCity
MainFrame.Active = true
MainFrame.BackgroundColor3 = Color3.new(1, 1, 1)
MainFrame.Position = UDim2.new(0.148325354, 0, 0.268686861, 0)
MainFrame.Size = UDim2.new(0, 470, 0, 283)
MainFrame.Visible = false
MainFrame.Style = Enum.FrameStyle.RobloxSquare
MainFrame.Draggable = true

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
Title.Position = UDim2.new(-0.0170212761, 0, -0.0282685515, 0)
Title.Size = UDim2.new(0, 470, 0, 30)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Meep City Gui"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.TextSize = 25
Title.TextStrokeTransparency = 0.10000000149012

Plus.Name = "Plus"
Plus.Parent = MainFrame
Plus.BackgroundColor3 = Color3.new(0, 0, 0)
Plus.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Plus.BorderSizePixel = 2
Plus.Position = UDim2.new(0.0489361696, 0, 0.176678449, 0)
Plus.Size = UDim2.new(0, 185, 0, 57)
Plus.Font = Enum.Font.Cartoon
Plus.Text = "Plus Game Pass"
Plus.TextColor3 = Color3.new(1, 1, 1)
Plus.TextSize = 20
Plus.TextStrokeColor3 = Color3.new(0.333333, 1, 1)
Plus.TextStrokeTransparency = 0
Plus.MouseButton1Down:connect(function()
game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].PLUS.Value = true
end)

Bantuan.Name = "Bantuan"
Bantuan.Parent = MainFrame
Bantuan.BackgroundColor3 = Color3.new(0, 0, 0)
Bantuan.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Bantuan.BorderSizePixel = 2
Bantuan.Position = UDim2.new(0.644680858, 0, 0.879858613, 0)
Bantuan.Size = UDim2.new(0, 146, 0, 30)
Bantuan.Font = Enum.Font.Cartoon
Bantuan.Text = "Help"
Bantuan.TextColor3 = Color3.new(1, 1, 1)
Bantuan.TextSize = 20
Bantuan.TextStrokeColor3 = Color3.new(0.333333, 1, 1)
Bantuan.TextStrokeTransparency = 0
Bantuan.MouseButton1Down:connect(function()
BFrame.Visible = true
end)

Made.Name = "Made"
Made.Parent = MainFrame
Made.BackgroundColor3 = Color3.new(0.247059, 0.247059, 0.247059)
Made.BackgroundTransparency = 1
Made.Position = UDim2.new(0.08723405, 0, 0.936395764, 0)
Made.Size = UDim2.new(0, 59, 0, 15)
Made.Font = Enum.Font.SourceSansBold
Made.Text = "Gui Made By Anwarun"
Made.TextColor3 = Color3.new(1, 1, 1)
Made.TextSize = 19
Made.TextStrokeTransparency = 0.10000000149012

Tutup.Name = "Tutup"
Tutup.Parent = MainFrame
Tutup.BackgroundColor3 = Color3.new(0, 0, 0)
Tutup.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Tutup.BorderSizePixel = 2
Tutup.Position = UDim2.new(0.929787219, 0, -0.0282685515, 0)
Tutup.Size = UDim2.new(0, 40, 0, 30)
Tutup.Font = Enum.Font.Cartoon
Tutup.Text = "X"
Tutup.TextColor3 = Color3.new(1, 1, 1)
Tutup.TextSize = 20
Tutup.TextStrokeColor3 = Color3.new(0.333333, 1, 1)
Tutup.TextStrokeTransparency = 0
Tutup.MouseButton1Down:connect(function()
MainFrame.Visible = false
BuFrame.Visible = true
end)

Boom.Name = "Boom"
Boom.Parent = MainFrame
Boom.BackgroundColor3 = Color3.new(0, 0, 0)
Boom.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Boom.BorderSizePixel = 2
Boom.Position = UDim2.new(0.506383002, 0, 0.176678449, 0)
Boom.Size = UDim2.new(0, 185, 0, 57)
Boom.Font = Enum.Font.Cartoon
Boom.Text = "Boom Box Pass"
Boom.TextColor3 = Color3.new(1, 1, 1)
Boom.TextSize = 20
Boom.TextStrokeColor3 = Color3.new(0.333333, 1, 1)
Boom.TextStrokeTransparency = 0
Boom.MouseButton1Down:connect(function()
game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].BoomBox.Value = true
end)

Money.Name = "Money"
Money.Parent = MainFrame
Money.BackgroundColor3 = Color3.new(0, 0, 0)
Money.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Money.BorderSizePixel = 2
Money.Position = UDim2.new(0.506383002, 0, 0.455830395, 0)
Money.Size = UDim2.new(0, 185, 0, 57)
Money.Font = Enum.Font.Cartoon
Money.Text = "Money Farm"
Money.TextColor3 = Color3.new(1, 1, 1)
Money.TextSize = 20
Money.TextStrokeColor3 = Color3.new(0.333333, 1, 1)
Money.TextStrokeTransparency = 0
Money.MouseButton1Down:connect(function()
 game.ReplicatedStorage.Connection:InvokeServer(9,2) --Made by Amicus Vale
game.ReplicatedStorage.Connection:InvokeServer(50)
game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].PLUS.Value = true -- this will give you more money when you sell
while wait() do
game.ReplicatedStorage.Connection:InvokeServer(49)
game.ReplicatedStorage.Connection:InvokeServer(51)
end 
end)

Chalk.Name = "Chalk"
Chalk.Parent = MainFrame
Chalk.BackgroundColor3 = Color3.new(0, 0, 0)
Chalk.BorderColor3 = Color3.new(0.333333, 0.333333, 0.333333)
Chalk.BorderSizePixel = 2
Chalk.Position = UDim2.new(0.0489361919, 0, 0.455830395, 0)
Chalk.Size = UDim2.new(0, 185, 0, 57)
Chalk.Font = Enum.Font.Cartoon
Chalk.Text = "Chalk Pass"
Chalk.TextColor3 = Color3.new(1, 1, 1)
Chalk.TextSize = 20
Chalk.TextStrokeColor3 = Color3.new(0.333333, 1, 1)
Chalk.TextStrokeTransparency = 0
Chalk.MouseButton1Down:connect(function()
game.ReplicatedStorage.PlayerData[game.Players.LocalPlayer.UserId].ChalkPass.Value = true
end)

BFrame.Name = "BFrame"
BFrame.Parent = MeepCity
BFrame.Active = true
BFrame.BackgroundColor3 = Color3.new(1, 1, 1)
BFrame.Position = UDim2.new(0.185007975, 0, 0.282828301, 0)
BFrame.Size = UDim2.new(0, 395, 0, 214)
BFrame.Visible = false
BFrame.Style = Enum.FrameStyle.RobloxSquare
BFrame.Draggable = true

Dudu.Name = "Dudu"
Dudu.Parent = BFrame
Dudu.Active = true
Dudu.BackgroundColor3 = Color3.new(1, 1, 1)
Dudu.BackgroundTransparency = 1
Dudu.Position = UDim2.new(-0.0202531647, 0, -0.0186915882, 0)
Dudu.Size = UDim2.new(0, 395, 0, 206)
Dudu.Font = Enum.Font.SourceSansBold
Dudu.Text = "Money Farm : Go To Phising Place PHISING THE FISH AND SELL FISH                                                                                        PLUS PASS: YOU CAN GET WINGS IN SHOP                                        ANOTHER ? I DONT KNOW , BTW THX FOR USE THIS GUI :D                                                                                                                                    MADE BY : ANWARUN"
Dudu.TextColor3 = Color3.new(0.972549, 0.972549, 0.972549)
Dudu.TextSize = 19
Dudu.TextWrapped = true
Dudu.TextXAlignment = Enum.TextXAlignment.Left
Dudu.TextYAlignment = Enum.TextYAlignment.Top

BanTutup.Name = "BanTutup"
BanTutup.Parent = BFrame
BanTutup.Active = false
BanTutup.BackgroundColor3 = Color3.new(0, 0, 0)
BanTutup.BorderColor3 = Color3.new(0.415686, 0.415686, 0.415686)
BanTutup.BorderSizePixel = 2
BanTutup.Position = UDim2.new(0.493670881, 0, 0.785046697, 0)
BanTutup.Size = UDim2.new(0, 200, 0, 50)
BanTutup.Font = Enum.Font.SourceSansBold
BanTutup.Text = "TUTUP / CLOSE"
BanTutup.TextColor3 = Color3.new(1, 1, 1)
BanTutup.TextSize = 20
BanTutup.MouseButton1Down:connect(function()
BFrame.Visible = false
end)

BuFrame.Name = "BuFrame"
BuFrame.Parent = MeepCity
BuFrame.BackgroundColor3 = Color3.new(0, 0, 0)
BuFrame.BorderColor3 = Color3.new(0.435294, 0.435294, 0.435294)
BuFrame.BorderSizePixel = 2
BuFrame.Position = UDim2.new(0, 0, 0.474747479, 0)
BuFrame.Size = UDim2.new(0, 179, 0, 52)

Buka.Name = "Buka"
Buka.Parent = BuFrame
Buka.BackgroundColor3 = Color3.new(1, 1, 1)
Buka.BackgroundTransparency = 1
Buka.Size = UDim2.new(0, 179, 0, 52)
Buka.Font = Enum.Font.SourceSansBold
Buka.Text = "BUKA / OPEN"
Buka.TextColor3 = Color3.new(1, 1, 1)
Buka.TextScaled = true
Buka.TextSize = 14
Buka.TextWrapped = true
Buka.MouseButton1Down:connect(function()
BuFrame.Visible = false
MainFrame.Visible = true
end)