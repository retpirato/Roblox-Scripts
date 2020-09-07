while wait(0.5) do
for i,v in pairs(game.Workspace._Main.Vehicles:GetChildren()) do
if v.ClassName == "Model" then
if(v.Name == "Wheels" or v.Name == "WheelsVisible" or v.Name == "Core") then
else
print(v)
v.VehicleSeat.Scripts.ControlsScript.RemoteEvent:FireServer("G", "Down")
end
end
end
end