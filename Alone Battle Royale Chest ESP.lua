--made by Jan#5106, don't be a leech
--https://v3rmillion.net/member.php?action=profile&uid=557102
--https://v3rmillion.net/showthread.php?tid=790226

--using _G because I can't be asked to make a gui
_G.textcolor = Color3.fromRGB(255,60,60)
_G.textstroketrans = 0
_G.boundingbox = true
_G.boundcolor = Color3.fromRGB(255,60,60)

for i,v in pairs(workspace.LootSpawns:GetChildren()) do
	
	local bbg = Instance.new("BillboardGui", v)
	bbg.Name = v.Name
	bbg.AlwaysOnTop = true
	bbg.Size = UDim2.new(2,0,2,0)
	bbg.ClipsDescendants = false
	
	local bound = Instance.new("Frame", bbg)
	bound.Size = UDim2.new(1,0,1,0)
	bound.BorderSizePixel = 0
	bound.BackgroundTransparency = 1
	local left = Instance.new("Frame", bound)
	left.BorderSizePixel = 0
	left.Size = UDim2.new(0,1,1,0)
	local right = left:Clone()
	right.Parent = bound
	right.Size = UDim2.new(0,-1,1,0)
	right.Position = UDim2.new(1,0,0,0)
	local up = left:Clone()
	up.Parent = bound
	up.Size = UDim2.new(1,0,0,1)
	local down = left:Clone()
	down.Parent = bound
	down.Size = UDim2.new(1,0,0,-1)
	down.Position = UDim2.new(0,0,1,0)
	
	local ctext = Instance.new("TextLabel", bbg)
	ctext.AnchorPoint = Vector2.new(0.5,1)
	ctext.BackgroundTransparency = 1
	ctext.Text = v.Name
	ctext.TextYAlignment = Enum.TextYAlignment.Bottom
	ctext.Position = UDim2.new(0.5,0,0,1)
	
	co = coroutine.create(function()
		while wait(2) do
			for i,c in pairs(v:FindFirstChild"AnimationController":GetChildren()) do
				if i <= 1 then
					left.BackgroundColor3 = _G.boundcolor
					right.BackgroundColor3 = _G.boundcolor
					up.BackgroundColor3 = _G.boundcolor
					down.BackgroundColor3 = _G.boundcolor
					ctext.TextColor3 = _G.textcolor
					ctext.TextStrokeTransparency = _G.textstroketrans
					if _G.boundingbox == true then
						bound.Visible = true
					else
						bound.Visible = false
					end
				else
					bbg:Destroy()
					coroutine.yield()
				end
			end
		end
	end)
	coroutine.resume(co)
end