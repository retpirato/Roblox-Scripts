-- Instances:
local TBKiller = Instance.new("ScreenGui")
local LabelCredits = Instance.new("TextLabel")
local ButtonClose = Instance.new("TextButton")
local MainFrame = Instance.new("Frame")
local LabelSpamming = Instance.new("TextLabel")
local LabelStuff = Instance.new("TextLabel")
local OptionsFrame = Instance.new("Frame")
local ButtonInfJump = Instance.new("TextButton")
local ButtonSoon2 = Instance.new("TextButton")
local ButtonSoon1 = Instance.new("TextButton")
local ButtonAdvertise = Instance.new("TextButton")
local ButtonSpamZombies = Instance.new("TextButton")
local ButtonRemoteSpy = Instance.new("TextButton")
local SpammingFrame = Instance.new("Frame")
local ButtonSpam = Instance.new("TextButton")
local TextToSpam = Instance.new("TextBox")
local FillerFrame = Instance.new("Frame")
--Properties:
TBKiller.Name = "TBKiller"
TBKiller.Parent = game.CoreGui
TBKiller.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

LabelCredits.Name = "LabelCredits"
LabelCredits.Parent = TBKiller
LabelCredits.BackgroundColor3 = Color3.new(0, 0, 0)
LabelCredits.Position = UDim2.new(0.475141585, 0, 0.280098289, 0)
LabelCredits.Size = UDim2.new(0, 286, 0, 15)
LabelCredits.Font = Enum.Font.SourceSans
LabelCredits.Text = "Warpedirish#6666"
LabelCredits.TextColor3 = Color3.new(1, 1, 1)
LabelCredits.TextScaled = true
LabelCredits.TextSize = 14
LabelCredits.TextWrapped = true
LabelCredits.Active = true
LabelCredits.Draggable = true

ButtonClose.Name = "ButtonClose"
ButtonClose.Parent = LabelCredits
ButtonClose.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonClose.Position = UDim2.new(0.996627092, 0, 0, 0)
ButtonClose.Size = UDim2.new(0, 15, 0, 15)
ButtonClose.Font = Enum.Font.SourceSans
ButtonClose.Text = "X"
ButtonClose.TextColor3 = Color3.new(1, 1, 1)
ButtonClose.TextSize = 14

MainFrame.Name = "MainFrame"
MainFrame.Parent = LabelCredits
MainFrame.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
MainFrame.Position = UDim2.new(0, 0, 1, 0)
MainFrame.Size = UDim2.new(0, 300, 0, 200)

LabelSpamming.Name = "LabelSpamming"
LabelSpamming.Parent = MainFrame
LabelSpamming.BackgroundColor3 = Color3.new(0, 0, 0)
LabelSpamming.Position = UDim2.new(0, 0, 0.430000007, 0)
LabelSpamming.Size = UDim2.new(0, 300, 0, 10)
LabelSpamming.Font = Enum.Font.SourceSans
LabelSpamming.Text = "Spamming"
LabelSpamming.TextColor3 = Color3.new(1, 1, 1)
LabelSpamming.TextSize = 14

LabelStuff.Name = "LabelStuff"
LabelStuff.Parent = MainFrame
LabelStuff.BackgroundColor3 = Color3.new(0, 0, 0)
LabelStuff.Position = UDim2.new(0, 0, 0.0299999993, 0)
LabelStuff.Size = UDim2.new(0, 300, 0, 10)
LabelStuff.Font = Enum.Font.SourceSans
LabelStuff.Text = "Options"
LabelStuff.TextColor3 = Color3.new(1, 1, 1)
LabelStuff.TextSize = 14

OptionsFrame.Name = "OptionsFrame"
OptionsFrame.Parent = MainFrame
OptionsFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
OptionsFrame.Position = UDim2.new(0.00333333015, 0, 0.115000002, 0)
OptionsFrame.Size = UDim2.new(0, 299, 0, 57)

ButtonInfJump.Name = "ButtonInfJump"
ButtonInfJump.Parent = MainFrame
ButtonInfJump.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonInfJump.Position = UDim2.new(0.699999988, 0, 0.13500005, 0)
ButtonInfJump.Size = UDim2.new(0, 90, 0, 20)
ButtonInfJump.Font = Enum.Font.SourceSans
ButtonInfJump.Text = "Inf Jump"
ButtonInfJump.TextColor3 = Color3.new(1, 1, 1)
ButtonInfJump.TextSize = 14

ButtonSoon2.Name = "ButtonSoon2"
ButtonSoon2.Parent = MainFrame
ButtonSoon2.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonSoon2.Position = UDim2.new(0.699999988, 0, 0.280000031, 0)
ButtonSoon2.Size = UDim2.new(0, 90, 0, 20)
ButtonSoon2.Font = Enum.Font.SourceSans
ButtonSoon2.Text = "Soon..."
ButtonSoon2.TextColor3 = Color3.new(1, 1, 1)
ButtonSoon2.TextSize = 14

ButtonSoon1.Name = "ButtonSoon1"
ButtonSoon1.Parent = MainFrame
ButtonSoon1.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonSoon1.Position = UDim2.new(0.353333354, 0, 0.280000031, 0)
ButtonSoon1.Size = UDim2.new(0, 90, 0, 20)
ButtonSoon1.Font = Enum.Font.SourceSans
ButtonSoon1.Text = "Soon..."
ButtonSoon1.TextColor3 = Color3.new(1, 1, 1)
ButtonSoon1.TextSize = 14

ButtonAdvertise.Name = "ButtonAdvertise"
ButtonAdvertise.Parent = MainFrame
ButtonAdvertise.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonAdvertise.Position = UDim2.new(0.353333354, 0, 0.13500005, 0)
ButtonAdvertise.Size = UDim2.new(0, 90, 0, 20)
ButtonAdvertise.Font = Enum.Font.SourceSans
ButtonAdvertise.Text = "Advertise"
ButtonAdvertise.TextColor3 = Color3.new(1, 1, 1)
ButtonAdvertise.TextSize = 14

ButtonSpamZombies.Name = "ButtonSpamZombies"
ButtonSpamZombies.Parent = MainFrame
ButtonSpamZombies.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonSpamZombies.Position = UDim2.new(0.00333333015, 0, 0.13500005, 0)
ButtonSpamZombies.Size = UDim2.new(0, 90, 0, 20)
ButtonSpamZombies.Font = Enum.Font.SourceSans
ButtonSpamZombies.Text = "Spam Zombies"
ButtonSpamZombies.TextColor3 = Color3.new(1, 1, 1)
ButtonSpamZombies.TextSize = 14

ButtonRemoteSpy.Name = "ButtonRemoteSpy"
ButtonRemoteSpy.Parent = MainFrame
ButtonRemoteSpy.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonRemoteSpy.Position = UDim2.new(0.00333333015, 0, 0.280000031, 0)
ButtonRemoteSpy.Size = UDim2.new(0, 90, 0, 20)
ButtonRemoteSpy.Font = Enum.Font.SourceSans
ButtonRemoteSpy.Text = "Remote Spy"
ButtonRemoteSpy.TextColor3 = Color3.new(1, 1, 1)
ButtonRemoteSpy.TextSize = 14

SpammingFrame.Name = "Spamming Frame"
SpammingFrame.Parent = MainFrame
SpammingFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
SpammingFrame.Position = UDim2.new(0, 0, 0.50999999, 0)
SpammingFrame.Size = UDim2.new(0, 300, 0, 87)

ButtonSpam.Name = "ButtonSpam"
ButtonSpam.Parent = MainFrame
ButtonSpam.BackgroundColor3 = Color3.new(0, 0, 0)
ButtonSpam.Position = UDim2.new(0.169999957, 0, 0.685000002, 0)
ButtonSpam.Size = UDim2.new(0, 200, 0, 50)
ButtonSpam.Font = Enum.Font.SourceSans
ButtonSpam.Text = "Spam!"
ButtonSpam.TextColor3 = Color3.new(1, 1, 1)
ButtonSpam.TextScaled = true
ButtonSpam.TextSize = 14
ButtonSpam.TextWrapped = true

TextToSpam.Name = "TextToSpam"
TextToSpam.Parent = MainFrame
TextToSpam.BackgroundColor3 = Color3.new(0, 0, 0)
TextToSpam.Position = UDim2.new(0.169999957, 0, 0.519999921, 0)
TextToSpam.Size = UDim2.new(0, 200, 0, 25)
TextToSpam.Font = Enum.Font.SourceSans
TextToSpam.MultiLine = true
TextToSpam.Text = "Text To Spam"
TextToSpam.TextColor3 = Color3.new(1, 1, 1)
TextToSpam.TextScaled = true
TextToSpam.TextSize = 14
TextToSpam.TextWrapped = true

FillerFrame.Name = "FillerFrame"
FillerFrame.Parent = MainFrame
FillerFrame.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
FillerFrame.Size = UDim2.new(0, 300, 0, 6)
-- Scripts:
counter = 0 
function zigzag(X) return math.acos(math.cos(X*math.pi))/math.pi end

ButtonClose.MouseButton1Click:connect(function()
	TBKiller:Destroy()
end)

ButtonInfJump.MouseButton1Click:connect(function()
	game:GetService("UserInputService").JumpRequest:connect(function()
    	game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")       
    end)
end)

ButtonRemoteSpy.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/Wt4aChsw",true))()
end)

ButtonSpam.MouseButton1Click:connect(function()
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(TextToSpam.Text, "All")
end)

ButtonAdvertise.MouseButton1Click:connect(function()
	game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Buy This Script From Warpedirish#6666", "All")
end)

ButtonSpamZombies.MouseButton1Click:connect(function()
	loadstring(game:HttpGet("https://pastebin.com/raw/VqMBPJ2E", true))()
end)

--Rainbow UI Stuff
while wait(0.1) do
	LabelCredits.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	ButtonClose.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	LabelStuff.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	LabelSpamming.BackgroundColor3 = Color3.fromHSV(zigzag(counter),1,1)
	counter = counter + 0.01
end