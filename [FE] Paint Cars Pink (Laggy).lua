--Change "Hot Pink" to a Roblox Color that they have.

local Color = BrickColor.new('Hot pink')

local PaintCar = function(Car,Color_Code)
for ii, Child in pairs(Car:GetChildren()) do
game.ReplicatedStorage.Channels.VehicleChannel:FireServer('Paint', Child, 'None', Color_Code)
end
end

while wait() do
for i, Car in pairs(workspace.Cars:GetChildren()) do
PaintCar(Car, Color.Number)
end
end