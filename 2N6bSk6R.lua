local VH2Gui = Instance.new("ScreenGui")
local TheBox = Instance.new("Frame")
local ThyButton1 = Instance.new("TextButton")
local ThyButton2 = Instance.new("TextButton")
local ThyButton3 = Instance.new("TextButton")


VH2Gui.Name = "VH2Gui"
VH2Gui.Parent = game.CoreGui

TheBox.Name = "TheBox"
TheBox.Parent = VH2Gui
TheBox.BackgroundColor3 = Color3.new(1, 1, 1)
TheBox.Position = UDim2.new(0, 10, 0, 490)
TheBox.Size = UDim2.new(0, 50, 0, -110)
TheBox.Visible = false
TheBox.Style = Enum.FrameStyle.RobloxRound

ThyButton1.Name = "ThyButton1"
ThyButton1.Parent = VH2Gui
ThyButton1.BackgroundColor3 = Color3.new(0, 0, 0)
ThyButton1.BorderColor3 = Color3.new(0, 0, 0)
ThyButton1.Position = UDim2.new(0, 12, 0, 440)
ThyButton1.Size = UDim2.new(0, 47, 0, 48)
ThyButton1.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
ThyButton1.Font = Enum.Font.Arial
ThyButton1.FontSize = Enum.FontSize.Size12
ThyButton1.Text = "Open"
ThyButton1.TextColor3 = Color3.new(0, 0, 0)

ThyButton2.Name = "ThyButton2"
ThyButton2.Parent = VH2Gui
ThyButton2.BackgroundColor3 = Color3.new(1, 1, 1)
ThyButton2.Position = UDim2.new(0, 16, 0, 380)
ThyButton2.Size = UDim2.new(0, 39, 0, 35)
ThyButton2.Visible = false
ThyButton2.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
ThyButton2.Font = Enum.Font.Bodoni
ThyButton2.FontSize = Enum.FontSize.Size14
ThyButton2.Text = "Give\nCreds"
ThyButton2.TextColor3 = Color3.new(0, 0, 0)

ThyButton3.Name = "ThyButton3"
ThyButton3.Parent = VH2Gui
ThyButton3.BackgroundColor3 = Color3.new(1, 1, 1)
ThyButton3.Position = UDim2.new(0, 16, 0, 410)
ThyButton3.Size = UDim2.new(0, 39, 0, 35)
ThyButton3.Visible = false
ThyButton3.Style = Enum.ButtonStyle.RobloxRoundDefaultButton
ThyButton3.Font = Enum.Font.Bodoni
ThyButton3.FontSize = Enum.FontSize.Size14
ThyButton3.Text = "Give\nExp."
ThyButton3.TextColor3 = Color3.new(0, 0, 0)

Open = false

game.CoreGui.VH2Gui.ThyButton1.MouseButton1Down:connect(function(open)
if Open == false then
game.CoreGui.VH2Gui.ThyButton1.Text = "Close"
game.CoreGui.VH2Gui.TheBox.Visible = true
game.CoreGui.VH2Gui.ThyButton2.Visible = true
game.CoreGui.VH2Gui.ThyButton3.Visible = true
Open = true
elseif Open == true then
game.CoreGui.VH2Gui.ThyButton1.Text = "Open"
game.CoreGui.VH2Gui.TheBox.Visible = false
game.CoreGui.VH2Gui.ThyButton2.Visible = false
game.CoreGui.VH2Gui.ThyButton3.Visible = false
Open = false
end
end)

game.CoreGui.VH2Gui.ThyButton2.MouseButton1Down:connect(function(givecreds)
game.Workspace.Events.GiveCR:FireServer(1000000)  --The credit script, incase you just want that.
end)

game.CoreGui.VH2Gui.ThyButton3.MouseButton1Down:connect(function(giveexp)
game.Workspace.Events.GivePTS:FireServer(1000000)  --The exp script, incase you just came for that.
end)