--==Made by Infinity==--
--==Made by Azurez==--

game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer("gay", "8", "001527622")

local plr = game.Players.LocalPlayer
while not plr.Character do wait() end
local character = plr.Character

local gay = game:GetService("RunService")
gay.RenderStepped:connect(function()
   for _,h in pairs(character:GetChildren()) do
       if h:IsA("Accoutrement") then
           h.Handle.LocalTransparencyModifier = 1
       end
   end
end)

game:GetService'ReplicatedStorage'.ITEM_PURCHASE:InvokeServer("gay", "11", "445626340")