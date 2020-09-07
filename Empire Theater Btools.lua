--aaaaaaaaaaaaaaaaaaa
maind = nil
if workspace:FindFirstChild'GiveSystem' then
	if workspace.GiveSystem:FindFirstChild'GiveItem' then
		maind = workspace.GiveSystem.GiveItem
	end
end
if workspace:FindFirstChild'HandToCentre' then
	if workspace.HandToCentre:FindFirstChild'SendItem' then
		maind = workspace.HandToCentre.SendItem
	end
end
if maind == nil then
	print'could not find give event :('
	return
end
tool = Instance.new'Tool'
me = game:GetService'Players'.LocalPlayer
tool.RequiresHandle = false
tool.TextureId = 'http://www.roblox.com/asset/?id=12223874'
tool.Name = 'ya like jazz?'
tool.Parent = me.Backpack
buttonf = nil
tool.Equipped:connect(function()
	local m = game:GetService'Players'.LocalPlayer:GetMouse()
	m.Icon = 'rbxasset://textures/HammerCursor.png'
	buttonf = m.Button1Down:connect(function()
		if m.Target == nil then return end
		local ob = m.Target
		if ob:IsA'BasePart' or ob:IsA'WedgePart' then
			if ob:IsDescendantOf(me.Character) then return end
			m.Icon = 'rbxasset://textures/HammerOverCursor.png'
			local ex = Instance.new'Explosion'
			ex.BlastRadius = 0
			ex.Position = ob.Position
			ex.Parent = workspace
			maind:FireServer(workspace, ob)
			wait(0.3)
			m.Icon = 'rbxasset://textures/HammerCursor.png'
		end
	end)
end)
tool.Unequipped:connect(function()
	if buttonf ~= nil then
		buttonf:Disconnect()
		buttonf = nil
	end
	local m = game:GetService'Players'.LocalPlayer:GetMouse()
	m.Icon = ''
end)