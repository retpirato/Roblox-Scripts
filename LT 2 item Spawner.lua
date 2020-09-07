local Item = "ItemName"
local Quantity = 10

local Land = nil
for i,v in pairs(game.Workspace.Properties:GetChildren()) do
   if v.Owner.Value == game.Players.LocalPlayer then
       Land = v
       break
   end
end
if not Land then
   for i,v in pairs(game.Workspace.Properties:GetChildren()) do
       if v.Owner.Value == game.Players.LocalPlayer or v.Owner.Value == nil then
           Land = v
           game.ReplicatedStorage.Interaction.ClientIsDragging:FireServer(v)
           break
       end
   end
end

function Spawn(Item)
   local Info = {}
   Info.Name = Item.Name
   Info.Type = game.ReplicatedStorage.Purchasables.Structures.HardStructures.Sawmill2.Type
   Info.OtherInfo = game.ReplicatedStorage.Purchasables.WireObjects.Wire.OtherInfo
   local Points = {Land.OriginSquare.Position + Vector3.new(0,5,0), Land.OriginSquare.Position + Vector3.new(0,5,0)}
   game.ReplicatedStorage.PlaceStructure.ClientPlacedWire:FireServer(Info, Points)
end

for i=1, Quantity do
   Spawn(game.ReplicatedStorage.Purchasables:FindFirstChild(Item, true))
end