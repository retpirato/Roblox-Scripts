-- Scripting Made by Talha/Sigma
-- Fixed by Murphy. Thank you Murphy for the Ultra Legandery magikal hax script
-- Version 1.2
-- Why? DJ Mykal and his staff scammed me 200 robux

-- Ultra Legandery magikal hax script
function getPartFromKey(keys)
   for _,key in pairs(keys) do
       for _,part in pairs(workspace:children()) do
           if part.Name == key then
               return part
           end
       end
   end
end

local BLOCK = getPartFromKey({"79DC6FC1-09FE-47F6-874E-9A754E5614B3","F4AFB9DB-4364-413B-89A5-764AE0BCBED4","BAD97D50-BB9D-482C-8820-C4731DA5F69E"})
BLOCK:Destroy()
game.Workspace.StageZone:Remove()
-- end lol
a = Instance.new("Part")
a.Parent = workspace
a.Name = "theblockok"
a.Position = Vector3.new(-65.8976288, 6.77892256, 248.734894)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = a.CFrame
a:Remove()