
local RedwoodPrisonUI = Instance.new("ScreenGui")
local GuiFrame = Instance.new("Frame")
local KIllallplr = Instance.new("TextButton")
local Tazeallplr = Instance.new("TextButton")
local me = game.Players.LocalPlayer
RedwoodPrisonUI.Name = "RedwoodPrisonUI"
RedwoodPrisonUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

GuiFrame.Name = "GuiFrame"
GuiFrame.Parent = RedwoodPrisonUI
GuiFrame.BackgroundColor3 = Color3.new(1, 0.411765, 0.439216)
GuiFrame.BorderColor3 = Color3.new(0.964706, 1, 1)
GuiFrame.BorderSizePixel = 10
GuiFrame.Position = UDim2.new(0.0543717854, 0, 0.529553652, 0)
GuiFrame.Size = UDim2.new(0, 386, 0, 243)

KIllallplr.Name = "KIllallplr"
KIllallplr.Parent = GuiFrame
KIllallplr.BackgroundColor3 = Color3.new(1, 1, 1)
KIllallplr.Position = UDim2.new(0.240932643, 0, 0.144032925, 0)
KIllallplr.Size = UDim2.new(0, 200, 0, 50)
KIllallplr.Font = Enum.Font.SourceSansLight
KIllallplr.Text = "KIll"
KIllallplr.TextColor3 = Color3.new(0, 0, 0)
KIllallplr.TextScaled = true
KIllallplr.TextSize = 14
KIllallplr.TextWrapped = true

Tazeallplr.Name = "Tazeallplr"
Tazeallplr.Parent = GuiFrame
Tazeallplr.BackgroundColor3 = Color3.new(1, 1, 1)
Tazeallplr.Position = UDim2.new(0.240932643, 0, 0.592592597, 0)
Tazeallplr.Size = UDim2.new(0, 200, 0, 50)
Tazeallplr.Font = Enum.Font.SourceSansLight
Tazeallplr.Text = "Taze"
Tazeallplr.TextColor3 = Color3.new(0, 0, 0)
Tazeallplr.TextScaled = true
Tazeallplr.TextSize = 14
Tazeallplr.TextWrapped = true

KIllallplr.MouseButton1Down:connect(function()
	end)
for _, v in pairs(game.Players:GetChildren()) do
game.Workspace.resources.RemoteEvent:FireServer("dealDamage", v.Character.Humanoid, 100)
end	
	
Tazeallplr.MouseButton1Down:connect(function()
	
for _, v in pairs(game.Players:GetChildren()) do
game.Workspace.resources.RemoteEvent:FireServer("tase", v)
end
	
end)