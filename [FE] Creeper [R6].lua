      -->>Creeper R6<<--
-->>___Made By Infinity#3369___<--

local lol = game:GetService('Players').LocalPlayer
lol.Character["Head"].Mesh:Destroy()
lol.Character["Left Arm"]:Destroy()
lol.Character["Right Arm"]:Destroy()

for i,v in pairs(game:GetService('Players').LocalPlayer.Character:GetDescendants()) do
if v:IsA'Hat' or v:IsA'Accessory' then
v.Parent = game:GetService'Workspace'
end
end

local fuck = game:GetService('Players').LocalPlayer
if game.Players.LocalPlayer == fuck then
print("succesfully creeped u! enjoy!")
end