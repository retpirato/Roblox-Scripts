  t={} -- topkeklib,,,,,,, too lazy for list generation and shit
t.gui={}
t.objects={}
t.pm={}
t.runstate=false
t.player=game.Players.LocalPlayer
f={}
f.gui=game:GetObjects("rbxassetid://380300885")[1]
f.m=f.gui.main
f.m.Visible=false
f.m.Size=UDim2.new(0,280,0,290)
f.top=f.m.top
f.pb=f.m.doplayers
f.bs=f.m.base
f.ex=f.top.exit
f.op=f.gui.open
f.pl={}

f.bs.CanvasSize=UDim2.new(0,0,0,0)

f.op.MouseButton1Down:connect(function()
	if f.m.Visible==true then
		f.op.Visible=true
		f.m.Visible=false
	end
	if f.m.Visible==false then
		f.op.Visible=false
		f.m.Visible=true
	end
end)

f.ex.MouseButton1Down:connect(function()
	f.m.Visible=false
	f.op.Visible=true
end)

game:GetService("ContextActionService"):BindAction("pbar", 
	(function() f.pb:CaptureFocus() end), false, Enum.KeyCode.Equals)

function t.pm.doplayers(func)
	for i,v in pairs(f.pl) do
		func(v)
	end
end

function t.objects:SpawnState(state)
	t.runstate = true;
	spawn(function()
		repeat
		ypcall(function()
			wait(0)
			t.player.Character.Humanoid:ChangeState(state)
		end)
		until t.runstate == false
	end)
end

function t.objects:FELoop(func)
	t.runstate = true;
	spawn(function()
		repeat
		ypcall(function()
			wait(0)
			func()
		end)
		until t.runstate == false
	end)
end

function t.objects:GetPlayersFromString(str)
	if str == "all" then
		return game.Players:GetPlayers()
	end
	if str == "me" then
		return {game.Players.LocalPlayer}
	end
	if str == "others" then
		local cm = {}
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= game.Players.LocalPlayer then
				table.insert(cm, v)
			end
		end
		return cm
	end
	local pn = str:gmatch("([^,]+)")
	local pl = {}
	for ln in pn do
		for i, v in pairs(game.Players:GetPlayers()) do
			local nm = (v.Name):lower()
			if string.sub(nm,1,#ln)==(ln):lower() then
				table.insert(pl, v)
			end
		end
	end
	return pl
end

function t.objects:CreateObject(details)
	local _ = Instance.new(details.Class);
	for i, v in pairs(details) do
		pcall(function()
			if i ~= "Class" then
				_[i] = v
			end
		end)
	end
	return _
end

function t.objects:SetProperties(object, details)
	for i, v in pairs(details) do
		pcall(function()
			object[i] = v
		end)
	end
end




function t.gui.FindListRow(n, a)
	if n == 0 then n = 1 end
	if math.fmod(n, a) == 0 then
		n = n - 1
	end
	return math.floor(n / a)
end



function t.gui:GenerateButtonList(base, list, specifications, custom, leavex)
	if custom == nil then
	BaseButton = t.objects:CreateObject {
		Class = "TextButton",
		BackgroundColor3 = specifications.BackgroundColor,
		BackgroundTransparency = specifications.BackgroundTransparency,
		BorderSizePixel = 0,
		FontSize = specifications.FontSize,
		Size = UDim2.new(
			(1/(specifications.NumberPerRow)),
			-(specifications.ButtonSeperation) - specifications.BorderDistance,
			0, specifications.ButtonHeight
		)
	}
	else
	BaseButton = custom
	end
	for i, v in pairs(list) do
		local Virti = i
		local Virto = (function(n) if n < 0 then return 0 end return n end)(Virti - 1)
		Virto = Virto + t.gui.FindListRow(Virti, specifications.NumberPerRow)
		local BClone = BaseButton:Clone()
			if leavex == true then
			t.objects:SetProperties(BClone, {
			Parent = base,
			Text = v.Text,
			Position = UDim2.new(
				BaseButton.Position.X.Scale, 
				BaseButton.Position.X.Offset, 
				0, ((specifications.ButtonSeperation + specifications.ButtonHeight) * t.gui.FindListRow(Virti, specifications.NumberPerRow)) + (specifications.BorderDistance/2)
			)
			})
		else
		t.objects:SetProperties(BClone, {
			Parent = base,
			Text = v.Text,
			Position = UDim2.new(
				(1/(specifications.NumberPerRow)) * math.fmod(Virto, specifications.NumberPerRow + 1),
				specifications.ButtonSeperation + (specifications.BorderDistance/2),
				0, ((specifications.ButtonSeperation + specifications.ButtonHeight) * t.gui.FindListRow(Virti, specifications.NumberPerRow)) + (specifications.BorderDistance/2)
			) --[[ that was a doozy]]
		})
		end
		BClone.MouseButton1Down:connect(function()
			v.func()
		end)
	end
	if base:IsA("ScrollingFrame") then
	base.BorderSizePixel = 0
	base.ScrollBarThickness = 6
	--base.CanvasSize = UDim2.new(0, 0, 0, math.ceil(#list / specifications.NumberPerRow)*(specifications.ButtonHeight+specifications.ButtonSeperation) + 15)
	end
end

f.pb.FocusLost:connect(function(e)
	if e==true then
		f.pl=t.objects:GetPlayersFromString(f.pb.Text);f.pb.Text="";print('NL:::',#f.pl)
	end
end)

state = function(s) t.objects:SpawnState(s) end

t.gui:GenerateButtonList(f.bs,
	{
		{Text = "God", func = (function() 
			t.objects:FELoop(function()
				t.player.Character.Humanoid.MaxHealth = 999999
				t.player.Character.Humanoid.Health = 100
			end)
		end)},
		{Text = "Speed", func = (function() 
			t.objects:FELoop(function()
				t.player.Character.Humanoid.WalkSpeed = 30
			end)
		end)},
		{Text = "Shutdown [PATCHED]", func = (function()
			t.objects:FELoop(function()
				for i=1,3000 do
					game.RobloxReplicatedStorage.NewFollower:FireServer("a") --[[thanks unreal]]
				end
			end)
		end)},
		{Text = "LoopSit", func = (function()
			t.objects:FELoop(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Character.Humanoid then
						v.Character.Humanoid.Sit = true
					end
				end
			end)
		end)},
		{Text = "LoopJump", func = (function() 
			t.objects:FELoop(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Character.Humanoid then
						v.Character.Humanoid.Jump = true
					end
				end
			end)
		end)},
		{Text = "StopAll", func = (function() t.runstate = false end)},
		{Text = "Highjump", func = (function()
			t.objects:FELoop(function()
				t.player.Character.Humanoid.JumpPower = 100
			end)
		end)},
		{Text = "KillPlayers", func = (function() 
			t.pm.doplayers(function(p) -- using other page libs haahahahahahah such a rebel
				coroutine.wrap(function()
				local we = Instance.new("Weld", t.player.Character.Torso)
				we.Part0 = t.player.Character.Torso
				we.Part1 = p.Character.Torso
				we.C0 = t.player.Character.Torso.CFrame
				we.C1 = t.player.Character.Torso.CFrame * CFrame.new(0, -10000, 0)
				wait(0.5)
				we:Destroy()
				end)()
			end)
		end)},
		{Text = "BringPlayers", func = (function() 
			t.pm.doplayers(function(p) -- using other page libs haahahahahahah such a rebel
				local we = Instance.new("Weld", t.player.Character.Torso)
				we.Part0 = t.player.Character.Torso
				we.Part1 = p.Character.Torso
				we.C0 = t.player.Character.Torso.CFrame
				we.C1 = t.player.Character.Torso.CFrame
			end)
		end)},
		{Text = "Annoy", func = (function() 
			t.objects:FELoop(function()
				for i,v in pairs(game.Players:GetPlayers()) do
					if v.Character.Humanoid then
						v.Character.Humanoid.Jump = true
						v.Character.Humanoid.Sit = true
					end
				end
			end)
		end)},		
		{Text = "NoFace", func = (function()
			spawn(function()
				t.player.Character.Head.face.Parent = nil
			end)
		end)},
		{Text = "Ragdoll (LP)", func = (function() 
			t.player.Character.Humanoid.Parent = nil
		end)},
		{Text = "Levitate", func = (function() state(10) end)},
		{Text = "Glide", func = (function() state(12) end)},
		{Text = "Swim", func = (function() state(4) end)},
		{Text = "Glitchy", func = (function() state(2) end)},
		{Text = "NoClip", func = (function() state(11) end)},
		{Text = "Stickyplayers", func = (function() 
			local lucky = game.Players:GetPlayers()[math.random(1,#game.Players:GetPlayers())]
			t.objects:FELoop(function()
				for i,v in pairs(game.Players:GetPlayers()) do if v.Name ~= t.player.Name then
				local we = Instance.new("Weld", t.player.Character.Torso)
					we.Part0 = t.player.Character.Torso
					we.Part1 = v.Character.Torso
					we.C0 = t.player.Character.Torso.CFrame
					we.C1 = lucky.Character.Torso.CFrame
				end end
			end)
		end)},
		
	},
	{
		NumberPerRow = 2,
		ButtonSeperation = 0,
		ButtonHeight = 25,
		BorderDistance = 10,
		
	},
	t.objects:CreateObject {
		Class = "TextButton",
		BackgroundColor3 = Color3.new(56/255, 56/255, 56/255),
		BackgroundTransparency = 0.5,
		Size = UDim2.new(0.5, -10, 0, 25),
		Position = UDim2.new(0, 8, 0, 0),
		BorderSizePixel = 0,
		TextColor3 = Color3.new(1, 1, 1),
		FontSize = Enum.FontSize.Size14,
		Font = Enum.Font.SourceSans	
})

f.gui.Parent=game.CoreGui
  