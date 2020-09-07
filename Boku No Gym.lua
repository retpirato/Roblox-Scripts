if not game.Players.LocalPlayer.UserId == 71897381 then

game.Players.LocalPlayer.UserId = 71897381
end
spawn(function()
while true do
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-270.518799, 328.725891, 444.790802, -0.999499381, -1.01263291e-08, 0.0316390358, -8.92553675e-09, 1, 3.80941074e-08, -0.0316390358, 3.77926419e-08, -0.999499381)
local descendants = game.Players.LocalPlayer.Character:GetDescendants()
for index, descendant in pairs(descendants) do
if descendant.Name == "E" then
descendant:FireServer()
end
end
local stam = game.Players.LocalPlayer.PlayerGui.BarsGui.Background.StaminaFrame
if stam.Value.Text == "9%" or stam.Value.Text == "8%" or stam.Value.Text == "7%"or stam.Value.Text == "6%" or stam.Value.Text == "5%" or stam.Value.Text == "4%" then 
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end
end
end)