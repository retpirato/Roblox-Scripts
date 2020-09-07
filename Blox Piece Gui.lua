--Made by rasi1 on vermillion, Chance#0315 on discord
-- Instances:
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local TextButton_3 = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
--Properties:
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(0.262745, 0.262745, 0.262745)
Frame.BackgroundTransparency = 0.5
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 6
Frame.Position = UDim2.new(0.0495169088, 0, 0.402277052, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 173, 0, 119)
Frame.Active = true
Frame.Draggable = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(0.776471, 0.776471, 0.776471)
TextButton.BackgroundTransparency = 0.30000001192093
TextButton.Position = UDim2.new(-0.0026082024, 0, 0.118518516, 0)
TextButton.Size = UDim2.new(0, 80, 0, 37)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "FruitTP"
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.TextSize = 14

TextButton_2.Parent = Frame
TextButton_2.BackgroundColor3 = Color3.new(0.776471, 0.776471, 0.776471)
TextButton_2.BackgroundTransparency = 0.30000001192093
TextButton_2.Position = UDim2.new(0.53289628, 0, 0.118518516, 0)
TextButton_2.Size = UDim2.new(0, 80, 0, 37)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "ChestFarm"
TextButton_2.TextColor3 = Color3.new(0, 0, 0)
TextButton_2.TextSize = 14

TextButton_3.Parent = Frame
TextButton_3.BackgroundColor3 = Color3.new(0.776471, 0.776471, 0.776471)
TextButton_3.BackgroundTransparency = 0.30000001192093
TextButton_3.Position = UDim2.new(-0.0026082024, 0, 0.572300017, 0)
TextButton_3.Size = UDim2.new(0, 80, 0, 37)
TextButton_3.Font = Enum.Font.SourceSans
TextButton_3.Text = "AutoFarm"
TextButton_3.TextColor3 = Color3.new(0, 0, 0)
TextButton_3.TextSize = 14

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.Position = UDim2.new(0.00317215221, 0, 1, 0)
TextLabel.Size = UDim2.new(0, 172, 0, 36)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Made By rasi1 / Chance#0315"
TextLabel.TextColor3 = Color3.new(0, 0, 0)
TextLabel.TextSize = 18
-- Scripts:
function SCRIPT_DSUV85_FAKESCRIPT() -- TextButton.Script
local script = Instance.new('Script')
script.Parent = TextButton
script.Parent.MouseButton1Click:connect(function()
local a = game.Players.LocalPlayer.Character.HumanoidRootPart
local b = a.CFrame
for i,v in pairs(game.Workspace["_WorldOrigin"]:GetDescendants()) do
if v.Name == "Fruit" and v.Parent:IsA("Model") and v.Parent.Name == "Model" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
wait(0.1)
end
end
a.CFrame = b
end)

end
coroutine.resume(coroutine.create(SCRIPT_DSUV85_FAKESCRIPT))
function SCRIPT_IVYS74_FAKESCRIPT() -- TextButton_2.Script
local script = Instance.new('Script')
script.Parent = TextButton_2
script.Parent.MouseButton1Click:connect(function()
local OriginalPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local a = game.Workspace:GetChildren()
for i=1,#a do
   if a[i].Name:lower():match("chest") then
       b = false
       repeat wait()
           if a[i].Parent~=game.Workspace then
               b = true
           else
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].CFrame
           end
       until b == true
   end
end
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = OriginalPos
end)

end
coroutine.resume(coroutine.create(SCRIPT_IVYS74_FAKESCRIPT))
function SCRIPT_RSOP87_FAKESCRIPT() -- TextButton_3.Script
local script = Instance.new('Script')
script.Parent = TextButton_3
script.Parent.MouseButton1Click:connect(function()
_G.StopFarming = false
_G.SwordName = "Katana"

function Slash()
   for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
       if v.Name == _G.SwordName and v:IsA("Tool") then
           require(v.Data).Cooldown = {Z = 0, X = 0}
           v.Parent = game.Players.LocalPlayer.Character
       end
   end
   wait()
   for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
       if v.Name == _G.SwordName and v:IsA("Tool") then
           require(v.Data).Cooldown = {Z = 0, X = 0}
           mouse1click()
       end
   end
end
repeat wait()
   local a = game.Workspace.Enemies:GetChildren()
   for i=1,#a do
       if a[i]:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 then
           local Nilly = false
           repeat wait()
               if Nilly == false and _G.StopFarming == false then
                   if a[i] and a[i]:FindFirstChild("HumanoidRootPart") and a[i]:FindFirstChild("Humanoid") and a[i].Humanoid.Health > 0 then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a[i].HumanoidRootPart.CFrame + a[i].HumanoidRootPart.CFrame.lookVector / 2.3
                       Slash()
                   else
                       Nilly = true
                   end
               end
           until Nilly == true or _G.StopFarming == true
       end
   end
until _G.StopFarming == true
end)

end
coroutine.resume(coroutine.create(SCRIPT_RSOP87_FAKESCRIPT))