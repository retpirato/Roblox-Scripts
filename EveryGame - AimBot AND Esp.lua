-- Made by Clifford from Intriga Discord -- Edited by Foxxy#2439 --

local localPlayer=game.Players.LocalPlayer

function highlightModel(objObject)
	for i,v in pairs(objObject:children())do
		if v:IsA'BasePart'and v.Name~='HumanoidRootPart'then
			local bHA=Instance.new('BoxHandleAdornment',v)
			bHA.Adornee=v
			bHA.Size= v.Name=='Head' and Vector3.new(1.25,1.25,1.25) or v.Size
			bHA.Color3=v.Name=='Head'and Color3.new(1,0,0)or v.Name=='Torso'and Color3.new(0,1,0)or Color3.new(0,0,1)
			bHA.Transparency=.5
			bHA.ZIndex=1
			bHA.AlwaysOnTop=true
		end
		if #v:children()>0 then
			highlightModel(v)
		end
	end
end

function unHighlightModel(objObject)
	for i,v in pairs(objObject:children())do
		if v:IsA'BasePart' and v:findFirstChild'BoxHandleAdornment' then
			v.BoxHandleAdornment:Destroy()
		end
		if #v:children()>0 then
			unHighlightModel(v)
		end
	end
end

function sortTeamHighlights(objPlayer)
	repeat wait() until objPlayer.Character
	if objPlayer.TeamColor~=localPlayer.TeamColor then
		highlightModel(objPlayer.Character)
	else
		unHighlightModel(objPlayer.Character)
	end
	if objPlayer~=localPlayer then
		objPlayer.Changed:connect(function(strProp)
			if strProp=='TeamColor'then
				if objPlayer.TeamColor~=localPlayer.TeamColor then
					unHighlightModel(objPlayer.Character)
					highlightModel(objPlayer.Character)
				else
					unHighlightModel(objPlayer.Character)
				end
			end
		end)
	else
		objPlayer.Changed:connect(function(strProp)
			if strProp=='TeamColor'then
				wait(.5)
				for i,v in pairs(game.Players:GetPlayers())do
					unHighlightModel(v)
					if v.TeamColor~=localPlayer.TeamColor then
						highlightModel(v.Character)
					end
				end
			end
		end)
	end
end

for i,v in pairs(game.Players:GetPlayers())do
	v.CharacterAdded:connect(function()
		sortTeamHighlights(v)
	end)
	sortTeamHighlights(v)
end
game.Players.PlayerAdded:connect(function(objPlayer)
	objPlayer.CharacterAdded:connect(function(objChar)
		sortTeamHighlights(objPlayer)
	end)
end)