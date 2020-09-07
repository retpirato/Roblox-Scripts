local HidenSeek = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextButton_3 = Instance.new("TextButton")
local Frame_3 = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
--Properties:
HidenSeek.Name = "Hide n Seek"
HidenSeek.Parent = game.CoreGui

Main.Name = "Main"
Main.Visible = false
Main.Parent = HidenSeek
Main.BackgroundColor3 = Color3.new(0.705882, 0.701961, 0.705882)
Main.BorderColor3 = Color3.new(0, 0, 0)
Main.BorderSizePixel = 5
Main.Position = UDim2.new(0.74275136, 0, 0.367970645, 0)
Main.Size = UDim2.new(0, 280, 0, 209)
Main.Style = Enum.FrameStyle.DropShadow

Frame.Parent = Main
Frame.BackgroundColor3 = Color3.new(0.258824, 0.254902, 0.258824)
Frame.Position = UDim2.new(0.0392857119, 0, 0.0291323904, 0)
Frame.Size = UDim2.new(0, 244, 0, 180)

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.new(0.258824, 0.254902, 0.258824)
Frame_2.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame_2.Position = UDim2.new(0.524590135, 0, 0.0444444455, 0)
Frame_2.Size = UDim2.new(0, 96, 0, 163)

TextButton.Parent = Frame_2
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(-1.125, 0, 0.00613496918, 0)
TextButton.Size = UDim2.new(0, 96, 0, 161)
TextButton.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton.Font = Enum.Font.Code
TextButton.Text = "ESP/Alarm"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 16
TextButton.MouseButton1Click:connect(function()
local it 
plr=game:service'Players'.LocalPlayer
char=plr.Character
hum=char:FindFirstChildOfClass'Humanoid'
alarm=Instance.new('Sound',workspace)
alarm.Volume = 1
alarm.SoundId = "rbxassetid://910713928"
alarm.Looped = false
alarm.Name = "FatAlarm"

function esp(a)
for _, b in pairs(a.Character:children()) do
if b.Name == "FatESP" or b.Name == "FatAlarm" then
b:Destroy()
end
end
if a.Character and not a.Character:FindFirstChild'FatESP' then
for i = 0,5 do
local sg = Instance.new("SurfaceGui")
sg.Face = i
sg.AlwaysOnTop = true
sg.Parent = a.Character
sg.Name = "FatESP"
sg.Adornee = a.Character:FindFirstChild'HumanoidRootPart'
local fr = Instance.new("Frame", sg)
fr.BackgroundColor3 = BrickColor.new('Really red').Color
fr.BorderSizePixel = 0
fr.BackgroundTransparency = 0.55
fr.Size = UDim2.new(1,0,1,0)
end
end
end

while wait() do
ypcall(function()
hum=char:FindFirstChildOfClass'Humanoid'
end)
for _, a in pairs(game:service'Players':players()) do
if a.Character and a:FindFirstChild'PlayerData' and a.PlayerData.It.Value == true then
esp(a)
it = a
wait(.1)
end
end
if it and it.Character and (it.Character.HumanoidRootPart.Position-char.HumanoidRootPart.Position).magnitude <= 125 then
TextLabel_4.Visible = true
Frame_3.Visible = true
hum.WalkSpeed = hum.WalkSpeed * 1.1
alarm:Resume()
else
Frame_3.Visible =false
TextLabel_4.Visible =false
hum.WalkSpeed = 50
alarm:Stop()
end
end
end)

TextButton_2.Parent = Frame_2
TextButton_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_2.BorderSizePixel = 0
TextButton_2.Position = UDim2.new(0, 0, 0.650306761, 0)
TextButton_2.Size = UDim2.new(0, 96, 0, 56)
TextButton_2.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton_2.Font = Enum.Font.Code
TextButton_2.Text = "Close GUI"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 16
TextButton_2.MouseButton1Click:connect(function()
Main.Visible = false
TextButton_3.Visible = true
end)

TextLabel.Parent = Frame_2
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.00613497198, 0)
TextLabel.Size = UDim2.new(0, 96, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "GUI by Lagx"
TextLabel.TextColor3 = Color3.new(1, 0, 0)
TextLabel.TextSize = 14
TextLabel.TextStrokeColor3 = Color3.new(0.666667, 0, 0)

TextLabel_2.Parent = Frame_2
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.312883437, 0)
TextLabel_2.Size = UDim2.new(0, 96, 0, 30)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Script by"
TextLabel_2.TextColor3 = Color3.new(1, 0, 0)
TextLabel_2.TextSize = 14
TextLabel_2.TextStrokeColor3 = Color3.new(0.666667, 0, 0)

TextLabel_3.Parent = Frame_2
TextLabel_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_3.BackgroundTransparency = 1
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0, 0, 0.435582697, 0)
TextLabel_3.Size = UDim2.new(0, 96, 0, 30)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Sharkringan"
TextLabel_3.TextColor3 = Color3.new(1, 0, 0)
TextLabel_3.TextSize = 14
TextLabel_3.TextStrokeColor3 = Color3.new(0.666667, 0, 0)

TextButton_3.Parent = HidenSeek
TextButton_3.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton_3.Position = UDim2.new(0, 0, 0.694376588, 0)
TextButton_3.Size = UDim2.new(0, 99, 0, 50)
TextButton_3.Style = Enum.ButtonStyle.RobloxRoundButton
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "Open GUI"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14
TextButton_3.MouseButton1Click:connect(function()
Main.Visible = true
TextButton_3.Visible =false
end)

Frame_3.Parent = HidenSeek
Frame_3.Visible = false
Frame_3.BackgroundColor3 = Color3.new(0.258824, 0.254902, 0.258824)
Frame_3.BorderColor3 = Color3.new(0.666667, 0, 0)
Frame_3.Position = UDim2.new(0.384848505, 0, 0.90220046, 0)
Frame_3.Size = UDim2.new(0, 379, 0, 67)
Frame_3.Style = Enum.FrameStyle.DropShadow

TextLabel_4.Parent = Frame_3
TextLabel_4.Visible = false
TextLabel_4.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Position = UDim2.new(0.213720322, 0, 0, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "Warning, IT is near!"
TextLabel_4.TextColor3 = Color3.new(1, 0, 0)
TextLabel_4.TextSize = 20