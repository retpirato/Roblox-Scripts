--==Made By Infinity==--
for i=1,500 do --Feel free to change value!
game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer("gay", "8", "hatassetidhere")

for i,v in pairs(game:GetService'Players'.LocalPlayer.Character:GetDescendants()) do
if v:IsA'Hat' or v:IsA'Accessory' then
v.Parent = workspace
end
end
end