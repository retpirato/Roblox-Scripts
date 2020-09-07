local me = game.Players.LocalPlayer
local spinRemote = game:GetService("ReplicatedStorage").Remotes.Spin

function getFolder()
for i,v in pairs(workspace:GetChildren()) do 
if v:IsA("Folder") and v:FindFirstChild("Spin") then 
return v
end
end
end

while getFolder().PlayerData[me.Name].Quirk.Value ~= 0 do --replace 0 with the quirk id you want
spinRemote:FireServer("CommonSpin")
wait(1)
end