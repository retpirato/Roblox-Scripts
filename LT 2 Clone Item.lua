local Character = game.Players.LocalPlayer.Character
local Mouse = game.Players.LocalPlayer:GetMouse()
local Land = nil

for i,v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer or v.Owner.Value == nil then
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
break
end
end

for i,v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer then
Land = v
break
end
end

function Clone(Item)
local Info = {}
Info.Name = "Wire"
Info.Type = Item
Info.OtherInfo = game.ReplicatedStorage.Purchasables.WireObjects.Wire.OtherInfo

local Points = {Land.OriginSquare.Position - Vector3.new(0,100,0), Land.OriginSquare.Position - Vector3.new(0,100,0)}
game.ReplicatedStorage.PlaceStructure.ClientPlacedWire:FireServer(Info, Points)
end

local Tool = Instance.new("Tool")
Tool.Name = "Clone"
Tool.RequiresHandle = false
Tool.Parent = game.Players.LocalPlayer.Backpack

Tool.Activated:Connect(function()
if Mouse.Target and Land then
local Target = Mouse.Target

if Target.Parent:IsA("Model") and Target.Parent:FindFirstChild("Main") then
Target = Target.Parent
elseif Target.Parent.Parent:IsA("Model") and Target.Parent.Parent:FindFirstChild("Main") then
Target = Target.Parent.Parent
elseif Target.Parent:IsA("Model") and Target.Parent:FindFirstChild("CutEvent") then
Target = Target.Parent
end

Clone(Target)
else
for i,v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer or v.Owner.Value == nil then
game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
break
end
end

for i,v in pairs(game.Workspace.Properties:GetChildren()) do
if v.Owner.Value == game.Players.LocalPlayer then
Land = v
break
end
end
end
end)