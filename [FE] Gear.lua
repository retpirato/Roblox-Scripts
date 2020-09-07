--the gear currently in the thing is f3x tools asd
--works on high school life and roblox university and work at a pizza place :)


local GearID = 142785488 -- put in the id of ur gay gear xd
game.ReplicatedStorage.Events.EquipGear:FireServer(GearID) -- dont change this nubs its the variable.

local GetBackpack = game.Players.LocalPlayer.Backpack:GetChildren() --this haks makes it so u can drop the gears so u can give it to ur friends or watever
for i=1, #GetBackpack do
   if GetBackpack[i].ClassName == "Tool" then
       GetBackpack[i].CanBeDropped = true
   end
end

wait(1)

local GetBackpack = game.Players.LocalPlayer.Backpack:GetChildren() --makes it better lel
for i=1, #GetBackpack do
   if GetBackpack[i].ClassName == "Tool" then
       GetBackpack[i].CanBeDropped = true
   end
end