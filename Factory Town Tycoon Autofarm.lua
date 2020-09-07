game:GetService("RunService").RenderStepped:Connect(function()
for i,v in pairs(workspace.ScatteredMoney:GetChildren()) do 
if v.ClassName == "MeshPart" then 
for i,c in pairs(v:GetChildren()) do 
if c.ClassName == "ClickDetector" then 
fireclickdetector(c)
end
end
end
end
end)