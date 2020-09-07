function del()
game.Workspace.ClanDoor:Destroy()
game.Workspace.ClanSelectZone:Destroy()
end
function check()
for _,v in pairs(game.Workspace:GetDescendants()) do
	if string.match(v.Name, "ClanDoor") or string.match(v.Name, "ClanSelectionZone") then
		del()
		break
	end
end
end
wait(0.5)
check()
wait(2)
local plr = game.Players.LocalPlayer
for _,v in pairs(game.Workspace:GetDescendants()) do
if v.ClassName == "TouchTransmitter" then
v.Parent.CFrame = plr.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-2)
end
end
--[[By RedVN
If you made a GUI out of this, just credit me in it.]]