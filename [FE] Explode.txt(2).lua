assets = {540034631, 178993946, 461493477, 110288809}
me = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'
for i,v in pairs(me.Parent:GetChildren()) do
if v:IsA'Accoutrement' then v.Parent = nil end
end
for i,v in pairs(assets) do
  game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('xdd', tostring(game:GetService'MarketplaceService':GetProductInfo(v).AssetTypeId), v)
end
me.WalkSpeed = 50 --same
mouse = game:GetService'Players'.LocalPlayer:GetMouse()
exploded = false
boom = mouse.Button1Down:connect(function()
if exploded == true then return end
exploded = true
game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('boom', '8', '1527622')
print'exploding!!!'
exploded = true
boom:Disconnect()
end)