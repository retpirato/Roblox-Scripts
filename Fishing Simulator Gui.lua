-- Made by Cow & Flying Tuna / matuman

local storage = game:GetService("ReplicatedStorage")

local player = game:GetService("Players").LocalPlayer

local character = player.Character

local playerGui = player:FindFirstChild("PlayerGui")

for i, v in pairs(playerGui:GetChildren()) do
   if v.Name == "Cow'sFsExploit" then
       v:Destroy()
   end
end

local add = storage.ADDCASH
local rank = storage.SetRank

local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.Name = "Cow'sFsExploit"

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 150, 0, 0)
frame.Position = UDim2.new(0, 5, 0.6, 0)

local label = Instance.new("TextButton", frame)
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 0)
label.Text = "Add Money"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 30

local amount = Instance.new("TextBox", frame)
amount.Size = UDim2.new(1, 0, 0, 50)
amount.Position = UDim2.new(0, 0, 0, 50)
amount.Text = "Enter Amount"
amount.Font = Enum.Font.SourceSansLight
amount.TextSize = 24

amount.Focused:Connect(function()
amount.Text = ""
end)

label.MouseButton1Click:Connect(function()
add:FireServer(amount.Text)
end)

amount.FocusLost:Connect(function()
wait(1)
amount.Text = "Enter Amount"
end)

local label = Instance.new("TextButton", frame)
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 100)
label.Text = "Change Rank"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 30

local amount = Instance.new("TextBox", frame)
amount.Size = UDim2.new(1, 0, 0, 50)
amount.Position = UDim2.new(0, 0, 0, 150)
amount.Text = "Enter Rank"
amount.Font = Enum.Font.SourceSansLight
amount.TextSize = 24

amount.Focused:Connect(function()
amount.Text = ""
end)

label.MouseButton1Click:Connect(function()
rank:FireServer(amount.Text)
end)

amount.FocusLost:Connect(function()
wait(1)
amount.Text = "Enter Rank"
end)

local label = Instance.new("TextButton", frame)
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 200)
label.Text = "Give Golden Rod"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 24

label.MouseButton1Click:Connect(function()
local clone = storage.Rods.GoldenRod:Clone()
clone.Parent = player.Backpack
end)

local label = Instance.new("TextButton", frame)
label.Size = UDim2.new(1, 0, 0, 50)
label.Position = UDim2.new(0, 0, 0, 250)
label.Text = "Admin Panel"
label.Font = Enum.Font.SourceSansBold
label.TextSize = 24

label.MouseButton1Click:Connect(function()
if playerGui.AdminPanel.Frame.Visible == true then 
playerGui.AdminPanel.Frame.Visible = false
else
playerGui.AdminPanel.Frame.Visible = true
end
end)