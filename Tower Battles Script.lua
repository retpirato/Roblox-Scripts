--Created by Drahazar#5976 aka MintyLatios
--Press the num keys to place that tower
--Can be placed anywhere, and no tower limit when placing towers like this.

local me = game:service'Players'.localPlayer
local map = workspace.Map
local mouse = me:GetMouse()
local lite = game:service'Lighting'
function GetHigh()
	for _,v in next, map:GetDescendants() do 
		if(v.Name=='High' and v:FindFirstChild'Team')then 
			if(v.Team.Value==me.TeamColor)then 
				return v
			end
		end
	end
end

function GetGrass()
	for _,v in next, map:children() do 
		if(v.Name=='Grass' and v:FindFirstChild'Team')then 
			if(v.Team.Value==me.TeamColor)then 
				return v
			end
		end
	end
end

function GetShit(tower)
	local what = lite:FindFirstChild(tower)
	if(what)then 
		if(what.Type.Value=='High')then 
			return GetHigh()
		else
			return GetGrass()
		end
	end
end

mouse.KeyDown:connect(function(k)
if(me.StuffToSave:FindFirstChild("Tower"..k))then
local what=me.StuffToSave['Tower'..k].Value
workspace.Placed:InvokeServer(mouse.Hit.p,1,what,GetShit(what))
end
end)