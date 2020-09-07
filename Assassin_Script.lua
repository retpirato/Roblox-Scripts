-- Press 'x' to enable and a box will show up.
-- Throw your knife at the box until it is no longer colourful. 
-- This will only work if you have a target (not free for all/infected)

local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()

local Enabled = false
Mouse.KeyDown:connect(function(key)
	key = key:upper()
	if key == "X" then
		if Enabled then 
			Enabled = false
			print("Disabled")
		else
			Enabled = true
			print("Enabled")
		end
	end
end)

--// Created by EncryptedRBX/Floof //--

local Hitbox = Instance.new("Part")
Hitbox.Transparency = 0.6
Hitbox.Color = Color3.new(1, 1, 1)
Hitbox.Size = Vector3.new(3, 3, 3)
Hitbox.Material = "SmoothPlastic"
Hitbox.CanCollide = false
Hitbox.Anchored = true

local S = Instance.new("SelectionBox", Hitbox)
S.Adornee = Hitbox
S.Transparency = 0.3
S.SurfaceTransparency = 1
S.Color3 = Color3.new(0, 0, 0)
S.LineThickness = 0.05

game:GetService("RunService"):BindToRenderStep(tostring(math.random(1, 10000)), 1, function()
	if Player and Player.Character then
		if Player.Character:findFirstChild("HumanoidRootPart") then
			local HRP = Player.Character:findFirstChild("HumanoidRootPart")
			Hitbox.CFrame = HRP.CFrame * CFrame.new(10, 0, 0)
		end
		if Player.PlayerGui.ScreenGui.UI.Target.Visible == false then
			Hitbox.Transparency = 1
		else
			Hitbox.Transparency = 0.6
		end
	end
end)

--// Created by EncryptedRBX/Floof //--

function c3lerp(a,b,t)
	return Color3.new(a.r * (1-t) + (b.r*t),a.g * (1-t) + (b.g*t),a.b * (1-t) + (b.b*t))
end

local Rainbow = {
	Color3.new(1,0,0);
	Color3.new(0,1,0);
	Color3.new(0,0,1);
	Color3.new(0,1,1);
	Color3.new(1,0,1);
	Color3.new(1,1,0);
}

spawn(function()
	while true do
		local k=Hitbox.Color
		local b=Rainbow[math.random(1,#Rainbow)]
		local slow=100
		for i=1, slow do
			Hitbox.Color=c3lerp(k,b,i/slow)
			wait()
		end
	end
end)

--// Created by EncryptedRBX/Floof //--

GetTarget = function()
	local Target = nil
	local TargetName = nil
	pcall(function()
		TargetName = Player.PlayerGui.ScreenGui.UI.Target.TargetText.Text
	end)
	if TargetName then
		if Players:findFirstChild(TargetName) then
			Target = Players:findFirstChild(TargetName)
		end
	end
	return Target
end

while wait() do
	if Enabled then
		local Target = GetTarget()
		if Target and Target.Character then
			Hitbox.Parent = Target.Character
		else
			Hitbox.Parent = workspace
		end
	else
		Hitbox.Parent = nil
	end
end
--// Created by Spho3nex //--