local factory
for _,tycoon in pairs(game.Workspace.Tycoons:GetChildren()) do
if tycoon.Factory.Player.Value == game.Players.LocalPlayer then
factory = tycoon.Factory
end
end

local lastCounter
factory.PlacedItems.Finished.ChildAdded:Connect(function(obj)
if obj.Name == "Counter4" then
lastCounter = obj
end
end)

while true do
game.Workspace.Events.ItemPurchase:InvokeServer(0,"cda",0) 
game.Workspace.Events.Building.PlaceObject:InvokeServer({Workspace.Furniture.Counter4,false,Vector3.new(0,-10,0),90,"cda"})
factory.RestaurantHandler.RemoveFurniture:InvokeServer(lastCounter,3)
end