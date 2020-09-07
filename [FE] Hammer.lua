--how to hammer 101--
plr = "yournamehere" --player to give tool to


plr = game:GetService'Players'[plr]
game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer('meme', '7', '1055299')
lp = game:GetService'Players'.LocalPlayer
hat = lp.Character:WaitForChild'meme'
hammer = hat.GravityHammer
hammer.Parent = lp:FindFirstChildOfClass'Backpack'
--DIRTY HACKS TO PARENT HAT/TOOLS WITH REPLICATION ON FE--
hat.Parent = nil
hammer.Parent = lp.Character
game:GetService'RunService'.Stepped:wait()
hammer.Parent = plr.Character
for i = 1,3 do
local lol = lp:FindFirstChildOfClass'Backpack':FindFirstChildOfClass'HopperBin'
if lol:FindFirstChild'LocalScript' then lol:Destroy() end
end