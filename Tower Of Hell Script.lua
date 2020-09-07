game:GetService("StarterGui"):SetCore("SendNotification", {Title = "FunTrat0r On V3rm", Text = "NOT A BAD ONE!!!"})
local royale = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local hello = Instance.new("TextLabel")
local place = Instance.new("TextButton")
local save = Instance.new("TextButton")
local darkdevs = Instance.new("TextLabel")
local name = Instance.new("TextBox")
royale.Name = "royale"
royale.Parent = game.CoreGui
main.Name = "main"
main.Parent = royale
main.Active = true
main.BackgroundColor3 = Color3.new(0.0117647, 0.160784, 0.223529)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.379414737, 0, 0.475655437, 0)
main.Size = UDim2.new(0, 230, 0, 124)
hello.Name = "hello"
hello.Parent = main
hello.BackgroundColor3 = Color3.new(0.0117647, 0.160784, 0.223529)
hello.BorderColor3 = Color3.new(0.0627451, 0.596078, 0.807843)
hello.Position = UDim2.new(0.030837005, 0, 0.0454545468, 0)
hello.Size = UDim2.new(0, 211, 0, 18)
hello.Font = Enum.Font.Fantasy
hello.Text = "Hello : ".. game.Players.LocalPlayer.Name
hello.TextColor3 = Color3.new(1, 1, 1)
hello.TextSize = 14
place.Name = "place"
place.Parent = main
place.BackgroundColor3 = Color3.new(0.0156863, 0.278431, 0.380392)
place.Position = UDim2.new(0.0485156104, 0, 0.269977987, 0)
place.Size = UDim2.new(0, 199, 0, 16)
place.Font = Enum.Font.Fantasy
place.Text = "Win Stage"
place.TextColor3 = Color3.new(1, 1, 1)
place.TextSize = 14
save.Name = "save"
save.Parent = main
save.BackgroundColor3 = Color3.new(0.0156863, 0.278431, 0.380392)
save.Position = UDim2.new(0.0485156104, 0, 0.695564508, 0)
save.Size = UDim2.new(0, 199, 0, 16)
save.Font = Enum.Font.Fantasy
save.Text = "Teleport To Player"
save.TextColor3 = Color3.new(1, 1, 1)
save.TextSize = 14
darkdevs.Name = "darkdevs"
darkdevs.Parent = main
darkdevs.BackgroundColor3 = Color3.new(0.00392157, 0.541176, 0.0235294)
darkdevs.BackgroundTransparency = 1
darkdevs.BorderColor3 = Color3.new(0.0627451, 0.596078, 0.807843)
darkdevs.Position = UDim2.new(0.0264317188, 0, 0.829545438, 0)
darkdevs.Size = UDim2.new(0, 211, 0, 23)
darkdevs.Font = Enum.Font.Fantasy
darkdevs.Text = "Credits: FunTrat0r | DarkDevs.Pro"
darkdevs.TextColor3 = Color3.new(1, 1, 1)
darkdevs.TextSize = 10
name.Name = "name"
name.Parent = main
name.BackgroundColor3 = Color3.new(0.0156863, 0.278431, 0.380392)
name.BorderColor3 = Color3.new(0.0156863, 0.278431, 0.380392)
name.BorderSizePixel = 0
name.Position = UDim2.new(0.0565217398, 0, 0.483870983, 0)
name.Size = UDim2.new(0, 195, 0, 16)
name.Font = Enum.Font.Fantasy
name.Text = "Player Name . . ."
name.TextColor3 = Color3.new(1, 0, 0.0156863)
name.TextSize = 14
main.Draggable = true
place.MouseButton1Down:connect(function()
	local plr = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart
local path = game.Workspace
for i,v in pairs(path:GetDescendants()) do
if v.Name == 'Finish' then
plr.CFrame = v.CFrame
end
end
end)
save.MouseButton1Down:connect(function()
	local plr = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart
local path = game.Workspace
for i,v in pairs(path:GetChildren()) do
if v.Name == name.Text then
plr.CFrame = v.UpperTorso.CFrame
end
end
end)