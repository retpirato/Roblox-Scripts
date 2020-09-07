-- Tricky On V3rm

Gui = Instance.new("ScreenGui", game.CoreGui)
Button = Instance.new("TextButton", Gui)
BackGround = Instance.new("Frame")
Title = Instance.new("TextLabel")
  
  
BackGround.Name = "BackGround"
BackGround.Parent = Gui
BackGround.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BackGround.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BackGround.BorderSizePixel = 2
BackGround.Position = UDim2.new(0.003, 0, 0.93, 0)
BackGround.Size = UDim2.new(0, 210, 0, 70)
BackGround.Active = true
BackGround.Draggable = true

Title.Name = "Title"
Title.Parent = BackGround
Title.BackgroundColor3 = Color3.new(0.615686, 0.247059, 0.247059)
Title.BorderColor3 = Color3.new(0.364706, 0.0666667, 0.0666667)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.SourceSansBold
Title.FontSize = Enum.FontSize.Size32
Title.Text = "Trick-Clip"
Title.TextColor3 = Color3.new(0.419608, 0.498039, 1)
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0
  
Button.Parent = BackGround
Button.BackgroundColor3 = Color3.new(0.615686, 0.247059, 0.247059)
Button.BorderColor3 = Color3.new(0.364706, 0.0666667, 0.0666667)
Button.BorderSizePixel = 2
Button.Size = UDim2.new(0, 210, 0, 33)
Button.Position = UDim2.new(0, 0, 0, 45)
Button.BackgroundTransparency = 0
Button.Font = Enum.Font.SourceSansBold
Button.FontSize = Enum.FontSize.Size32
Button.Text = "Enable Noclip"
Button.TextColor3 = Color3.new(0.419608, 0.498039, 1)
Button.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Button.TextStrokeTransparency = 0
  
noclip = false
game:GetService('RunService').Stepped:connect(function()
if noclip then
game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)
end
end)
Button.MouseButton1Down:connect(function()
noclip = not noclip
if Button.Text == "Enable Noclip" then
    Button.Text = "Disable Noclip"
else
    Button.Text = "Enable Noclip"
end
end)