local VoteCheatGUI = Instance.new("ScreenGui")
local Player2Button = Instance.new("TextButton")
local Player1Button = Instance.new("TextButton")VoteCheatGUI.Name = "VoteCheatGUI"
VoteCheatGUI.Parent = game.CoreGui
Player2Button.Name = "Player2Button"
Player2Button.Parent = VoteCheatGUI
Player2Button.BackgroundColor3 = Color3.new(1, 1, 1)
Player2Button.Position = UDim2.new(0, 0, 0.800000012, 0)
Player2Button.Size = UDim2.new(0, 200, 0, 50)
Player2Button.Font = Enum.Font.SourceSans
Player2Button.FontSize = Enum.FontSize.Size14
Player2Button.TextSize = 14
Player1Button.Name = "Player1Button"
Player1Button.Parent = VoteCheatGUI
Player1Button.BackgroundColor3 = Color3.new(1, 1, 1)
Player1Button.Position = UDim2.new(0, 0, 0.699999988, 0)
Player1Button.Size = UDim2.new(0, 200, 0, 50)
Player1Button.Font = Enum.Font.SourceSans
Player1Button.FontSize = Enum.FontSize.Size14
Player1Button.TextSize = 14
Player1Button.MouseButton1Down:connect(function()
for i = 0,1 do
   game.Workspace.Votes:FireServer(false,"p1")
   game:GetService("RunService").Heartbeat:Wait()
end
end)

Player2Button.MouseButton1Down:connect(function()
for i = 0,1 do
   game.Workspace.Votes:FireServer(false,"p2")
   game:GetService("RunService").Heartbeat:Wait()
end
end)

while true do
Player2Button.Text = game.Workspace.RapBattles.Rappers.player2.Value
Player1Button.Text = game.Workspace.RapBattles.Rappers.player1.Value
wait(0.1)
end