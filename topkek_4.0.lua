-- syndicate fixed this for intriggered
-- release by vermill122
local topkek = {}
topkek.patch = '1.0.5a'
topkek.data = {}
topkek.commandbase = {}
topkek.navigation = {}
topkek.banmgr = {}
topkek.lplr = game:GetService('Players').LocalPlayer

topkek.tools = {}
topkek.tools.gui = {}
topkek.tools.util = {}
topkek.tools.animator = {}

topkek.windows = {}
topkek.windows.lplr = {}
topkek.windows.server = {}
topkek.windows.players = {}
topkek.windows.destruction = {}
topkek.windows.scripts = {}
topkek.windows.misc = {}

topkek.misc = {}

topkek.gui = game:GetObjects("rbxassetid://678309209")[1] 
topkek.gui.Parent = game:GetService("CoreGui")

topkek.center = topkek.gui.Main
topkek.holder = topkek.center.Holder
topkek.topbar = topkek.center.Topbar
topkek.template = topkek.holder.Template
topkek.navigator = topkek.center.Navigation

AllowHovers = false
PlayerChatHook, UpdateBanlist = nil
cmd = {}

--// data //--
topkek.data.windows = {
	'Home',
	'LocalPlayer',
	'Server',
	'Players',
	'Destruction',
	'Scripts',
	'Catalog',
	'Music',
	'Hats',
	'Faces',
	'Settings',
	'Commands',
	'Banlist',
}

color3 = function(r,g,b)
	return Color3.new(r/255, g/255, b/255)
end
--// doggo dropdown //--
-- thanks krystal
GUI = {
	TextBox = {
		Settings = {
			Font = Enum.Font.SourceSans;
			FontSize = Enum.FontSize.Size14;
		};
		Color = {
			Main = Color3.fromRGB(5,8,11);
			Border = Color3.fromRGB(27,42,53);
			Text = Color3.fromRGB(199,199,199);
		};
		New = function(Position, Size, Parent, ...)
			local arguments = {...};
			
			local TextBox = Instance.new("TextBox", Parent);
			TextBox.BackgroundColor3 = GUI.DropDown.Color.Main;
			TextBox.BorderColor3 = GUI.DropDown.Color.Border;
			TextBox.Font = GUI.TextBox.Settings.Font;
			TextBox.FontSize = GUI.TextBox.Settings.FontSize;
			TextBox.TextColor3 = GUI.TextBox.Color.Text;
			TextBox.Position = Position;
			TextBox.Size = Size;
			if #arguments then
				if arguments[1] then
					TextBox.Text = tostring(arguments[1]);
				else
					TextBox.Text = "";
				end	
			end		
			return TextBox;
		end;
	};
	DropDown = {
		Settings = {
			ScrollerAmount = 5; --A scroller will appear at this amount.
			ScrollBarThickness = 6;
		};
		Gfx = {
			Scroller = "rbxassetid://606572419";
		};
		Color = {
			Main = color3(107, 36, 36);
			Secondary = color3(113, 39, 39);
			Border = color3(127, 44, 44);
			Text = Color3.fromRGB(199,199,199);
		};
		New = function(Position, Size, Parent, ...)
			local vValue = {};
			local arguments = {...};
			local vSelected = Instance.new("StringValue");
			vSelected.Value = "nil";
			
			if arguments then
				if type(arguments) == "table" then
					for i=1,#(arguments) do
						if type(arguments[i]) == "table" then
							for f=1,#(arguments[i]) do
								table.insert(vValue, tostring((arguments[i])[f]));
							end
						else
							table.insert(vValue, tostring(arguments[i]));
						end
					end
					vSelected.Value = (vValue[1]);
				end
			end
			
			local Main = Instance.new("TextButton", Parent);
			Main.BackgroundColor3 = GUI.DropDown.Color.Main;
			Main.BorderColor3 = GUI.DropDown.Color.Border;
			Main.Position = Position;
			Main.Size = Size;
			Main.TextColor3 = GUI.DropDown.Color.Text;
			Main.FontSize = Enum.FontSize.Size14;
			Main.TextStrokeTransparency = 0.5;
			Main.TextXAlignment = Enum.TextXAlignment.Left;
			Main.Font = Enum.Font.SourceSans;
			Main.Text = "  "..tostring(vSelected.Value);
			Main.ZIndex = 3
			
			local Icon = Instance.new("TextLabel", Main);
			Icon.SizeConstraint = Enum.SizeConstraint.RelativeYY;
			Icon.BackgroundColor3 = GUI.DropDown.Color.Secondary;
			Icon.BorderColor3 = GUI.DropDown.Color.Border;
			Icon.Position = UDim2.new(1,-2,1,-2);
			Icon.Size = UDim2.new(-1,4,-1,4);
			Icon.TextColor3 = GUI.DropDown.Color.Text;
			Icon.FontSize = Enum.FontSize.Size14;
			Icon.TextStrokeTransparency = 0.5;
			Icon.Font = Enum.Font.SourceSans;
			Icon.Text = "V"
			Icon.ZIndex = 4

			local Holder, Search;
			local ClearHolder = function()
				if Holder then
					Holder:ClearAllChildren();
					Holder.Size = UDim2.new(1,0,0,0);
					Holder.Visible = false;
					if Search then
						Search.Visible = false;
					end
				end
			end;
			
			local CreateButton;
			local RefreshDropDown = function()
				if #vValue <= (GUI.DropDown.Settings.ScrollerAmount) then
					if not Holder or not Holder:IsA("Frame") then
						Holder = nil; Search = nil;
						Holder = Instance.new("Frame",Main);
						Holder.Size = UDim2.new(1,0,0,0);
						Holder.BackgroundColor3 = GUI.DropDown.Color.Main;
						Holder.BorderColor3 = GUI.DropDown.Color.Border;
						Holder.Visible = false;
						Holder.ZIndex = 3
					end
				elseif #vValue > (GUI.DropDown.Settings.ScrollerAmount) then
					if not Holder or not Holder:IsA("ScrollingFrame") then
						Holder = nil; Search = nil;
						Search = GUI.TextBox.New(UDim2.new(0,0,0,0),UDim2.new(1,0,0,Main.AbsoluteSize.Y),Main);
						Search.Visible = false;
						Search.ZIndex = 4
						Search.Changed:connect(function(p)
							if p == "Text" then
								CreateButton(Search.Text);
							end
						end)
						Holder = Instance.new("ScrollingFrame",Main);
						Holder.BackgroundColor3 = GUI.DropDown.Color.Main;
						Holder.BorderColor3 = GUI.DropDown.Color.Border;
						Holder.TopImage = GUI.DropDown.Gfx.Scroller;
						Holder.MidImage = GUI.DropDown.Gfx.Scroller;
						Holder.BottomImage = GUI.DropDown.Gfx.Scroller;
						Holder.Size = UDim2.new(1,0,0,Main.AbsoluteSize.Y * (GUI.DropDown.Settings.ScrollerAmount-1));
						Holder.Position = UDim2.new(0,0,0,Main.AbsoluteSize.Y)
						Holder.ScrollBarThickness = GUI.DropDown.Settings.ScrollBarThickness;
						Holder.Visible = false;
						Holder.ZIndex = 3;
					end
				end
				if #vValue == 1 and vSelected.Value ~= vValue[1] then
					vSelected.Value = vValue[1];
				elseif #vValue == 0 then
					vSelected.Value = "nil";
					warn("Table amount is nil.");
				end
				Main.Text = "  "..tostring(vSelected.Value);
				--ClearHolder();
			end;
			
			local Debounce = false;
			CreateButton = function(searches)
				if Debounce == false then
					Debounce = true;
					ClearHolder()
					Holder.Visible = true;
					local Searched = 0;
					if #vValue > 0 then
						for i=1,#vValue do
							if (searches ~= nil and string.find(string.lower(vValue[i]), string.lower(searches)) and searches ~= "") then
								Searched = Searched + 1;
							end
						end
						for i=1,#vValue do
							if (searches ~= nil and string.find(string.lower(vValue[i]), string.lower(searches)) and searches ~= "" and Searched > 0) or searches == nil or searches == "" or Searched <= 0 then
								local Select = Instance.new("TextButton", Holder);
								Select.BackgroundColor3 = GUI.DropDown.Color.Main;
								Select.BorderColor3 = GUI.DropDown.Color.Border;
								Select.BackgroundTransparency = 1;
								Select.BorderSizePixel = 0;
								Select.Position = Position;
								if #vValue <= (GUI.DropDown.Settings.ScrollerAmount) then
									Select.Size = UDim2.new(1,0,0,Main.AbsoluteSize.Y);
								else
									Select.Size = UDim2.new(1,-(GUI.DropDown.Settings.ScrollBarThickness),0,Main.AbsoluteSize.Y);
								end
								Select.Position = UDim2.new(0,0,0,(Main.AbsoluteSize.Y) * (#Holder:GetChildren() - 1)) 
								Select.TextColor3 = GUI.DropDown.Color.Text;
								Select.FontSize = Enum.FontSize.Size14;
								Select.TextStrokeTransparency = 0.5;
								Select.Font = Enum.Font.SourceSans;
								Select.Text = tostring(vValue[i]);
								Select.ZIndex = 3
								Select.MouseButton1Click:connect(function()
									vSelected.Value = vValue[i];
									ClearHolder();
									RefreshDropDown();
								end)
								if  #vValue <= (GUI.DropDown.Settings.ScrollerAmount) then
									Holder.Size = UDim2.new(1,0,0,Main.AbsoluteSize.Y * i);
								elseif Holder:IsA("ScrollingFrame") then
									Search.Visible = true;
									if #Holder:GetChildren() >= 1 then
										Holder.CanvasSize = UDim2.new(1,0,0,Main.AbsoluteSize.Y * #Holder:GetChildren());
										Holder.Size = UDim2.new(1,0,0,Main.AbsoluteSize.Y * #Holder:GetChildren());--GUI.DropDown.Settings.ScrollerAmount);
										if #Holder:GetChildren() >= GUI.DropDown.Settings.ScrollerAmount then
											Holder.Size = UDim2.new(1,0,0,Main.AbsoluteSize.Y * GUI.DropDown.Settings.ScrollerAmount);
											Holder.CanvasSize = UDim2.new(1,0,0,Main.AbsoluteSize.Y * #Holder:GetChildren());
										end
									elseif #Holder:GetChildren() < 1 then
										Holder.CanvasSize = UDim2.new(1,0,0,Main.AbsoluteSize.Y * 1);
										Holder.Size = UDim2.new(1,0,0,Main.AbsoluteSize.Y * 1);
									end
								end
							end
						end
					end
					Debounce = false;
				end
			end;
			
			RefreshDropDown();

			Main.MouseButton1Click:connect(function()
				CreateButton()
				if #vValue >= GUI.DropDown.Settings.ScrollerAmount and Search ~= nil then
					Search:CaptureFocus();
					Search.Text = "";
				end
			end)
			
			topkek.lplr:GetMouse().Button1Down:connect(function()
				ClearHolder()
			end)

			return {
				Update = function()
					RefreshDropDown();
				end;
				GetValue = function()
					RefreshDropDown();
					return vValue;
				end;
				GetSelected = function()
					RefreshDropDown();
					return vSelected.Value;
				end;
				SetTable = function(F)
					vValue = F;
					RefreshDropDown(); 
				end;
				Changed = function(F)
					vSelected.Changed:connect(function()
						ypcall(function() 
							F(vSelected.Value);
						end)
					end)
					return "ChangedEvent Hooked";
				end;
				AddValue = function(obj)
					local Type = type(obj);
					if Type == "table" then
						for i=1,#obj do
							table.insert(vValue, obj[i])
						end
					elseif Type == "string" or Type == "number" or Type == "boolean" then
						table.insert(vValue, obj)
					end
					RefreshDropDown();
				end;
				RemoveValue = function(obj)
					local Type = type(obj);
					if Type == "table" then
						for i=1,#vValue do
							for f=1,#obj do
								if tostring(obj[f]) == tostring(vValue[i]) then
									table.remove(vValue,i)
								end
							end
						end
					else
						for i=1,#vValue do
							if tostring(obj) == tostring(vValue[i]) then
								table.remove(vValue,i)
							end
						end
					end
					RefreshDropDown();
				end;
				ClearValue = function()
					vValue = {};
					RefreshDropDown();
				end;
			}
		end;
	};
};
--// util //--
function topkek.tools.util.Object(o, p)
	local a, b = pcall(function()
		Instance.new(o)
	end)
	if not a then
		return
	end
	local obj = Instance.new(o)
	for prop, val in pairs(p) do
		pcall(function()
			obj[prop] = val 
		end)
	end
	return obj
end

function topkek.tools.util.getContainer(n)
	if topkek.holder:FindFirstChild(n) then
		return topkek.holder[n]
	else
		print("menu not found; returning template")
		return topkek.holder['Template']
	end
end

function topkek.tools.util.play(id)
	local mu = Instance.new("Sound", game:GetService('Workspace'))
	mu.Volume = 1
	mu.Looped = true
	mu.Pitch = 1
	mu.SoundId = "rbxassetid://"..tostring(id)
	mu:Play()
end

function topkek.tools.util.getTorso(plr) --r15 compatibility lole
	if plr.Character then
		if plr.Character:FindFirstChild('UpperTorso') then
			return plr.Character.UpperTorso
		elseif plr.Character:FindFirstChild('Torso') then
			return plr.Character.Torso
		else
			return nil
		end
	end
end

function topkek.tools.util.recurseRemove(x,type_)
	local function recurse(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function()
				if v:IsA(type_) then
					v:Destroy()
				end
				if #(v:GetChildren())>0 then
					recurse(v)
				end
			end)
		end
	end
	recurse(x)
end

function topkek.tools.util.recurseFunc(type_,func)
	local function recurse(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function()
				if v:IsA(type_) then
					func(v)
				end
				if #(v:GetChildren())>0 then
					recurse(v)
				end
			end)
		end
	end
	recurse(game)
end
function topkek.tools.util.trowel()
	local T = Instance.new('Tool', game.Players.LocalPlayer.Backpack)
	T.Name = 'Custom Trowel'
	
	local p = Instance.new('Part')
	p.Name = 'Handle'
	p.Size = Vector3.new(1,4.4,1)
	p.Parent = T
	
	local specialMesh = Instance.new('SpecialMesh')
	specialMesh.MeshId = 'rbxasset://fonts/trowel.mesh'
	specialMesh.MeshType = 'FileMesh'
	specialMesh.TextureId = 'rbxasset://textures/TrowelTexture.png'
	specialMesh.Parent = T.Handle
	
	local sound = Instance.new'Sound'
	sound.Name = 'build'
	sound.SoundId = 'rbxasset://sounds//bass.wav'
	sound.Volume = 1
	sound.Parent = T.Handle
	 
	local brickHeight = 100
	local trowelSpeed = 0.05
	local brickWidth = 500
	local mouseConnection
	 
	function newBrick(CF, P, color)
	 local brick = Instance.new('Part')
	 brick.BrickColor = color
	 brick.CFrame = CF * CFrame.new(P + brick.Size / 2)
	 brick.Parent = game.Workspace
	 brick:MakeJoints()
	 brick.Material = 'Neon'
	 brick.Name = 'DeleteMe'
	 return  brick, P + brick.Size
	end
	 
	function genBrick(cFrame)
	 local randBrickColor = BrickColor.Random()
	 assert(brickWidth > 0)
	 
	 local yPos = 0
	 
	 while yPos < brickHeight do
	  local vPos
	  local X = -brickWidth / 2
	  while X < brickWidth / 2 do
	   local brick
	   brick, vPos = newBrick(cFrame, Vector3.new(X, yPos, 0), randBrickColor)
	   X = vPos.x
	   wait(trowelSpeed)
	  end
	  yPos = vPos.y
	 end
	end
	 
	function calcPos(vec)
	 if (math.abs(vec.x) > math.abs(vec.z)) then
	  if vec.x > 0 then
	   return Vector3.new(1, 0, 0)
	  else
	   return Vector3.new(-1, 0, 0)
	  end
	 else
	  if (vec.z > 0) then
	   return Vector3.new(0, 0, 1)
	  else
	   return Vector3.new(0, 0, -1)
	  end
	 end
	end
	 
	T.Enabled = true
	
	T.Activated:connect(function()
	 if T.Enabled and game.Players.LocalPlayer.Character:FindFirstChild('Humanoid') then
	  T.Enabled = false
	  T.Handle.build:Play()
	  genBrick(CFrame.new(game.Players.LocalPlayer.Character.Humanoid.TargetPoint, game.Players.LocalPlayer.Character.Humanoid.TargetPoint + calcPos((game.Players.LocalPlayer.Character.Humanoid.TargetPoint - game.Players.LocalPlayer.Character.Head.Position).unit)))
	  T.Enabled = true
	 end
	end)
	
	T.Equipped:connect(function()
	 mouseConnection = game.Players.LocalPlayer:GetMouse().KeyDown:connect(function(key)
	  if (key == 'r') then
	   for i,v in next, workspace:children'' do
	    if (v.Name == 'DeleteMe') then
	     v:Destroy()
	    end
	   end
	  end
	 end)
	end)
	
	T.Unequipped:connect(function()
	 mouseConnection:disconnect()
	end)
end
function topkek.tools.util.recurseSet(type_,prop,val)
	local function recurse(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function()
				if v:IsA(type_) then
					v[prop]=val
				end
				if #(v:GetChildren())>0 then
					recurse(v)
				end
			end)
		end
	end
	recurse(game)
end
function topkek.tools.util.recurseUltimate(d)
	topkek.tools.util.recurseDecal(d)
	topkek.tools.util.recurseParticles(d)
end
function topkek.tools.util.recurseDecal(img)
	img = 'rbxassetid://' .. img
	local function skybox(x)
		local sky = Instance.new("Sky",game.Lighting)
		local fcs={"Bk","Dn","Ft","Lf","Rt","Up"}
		for i,v in pairs(fcs) do
			sky["Skybox"..v]=x
		end
	end
	
	local function decal(p, b)
		local sides = {"Back", "Bottom", "Front", "Left", "Right", "Top"}
		for i, v in pairs(sides) do
			local a = Instance.new("Decal", p)
			a.Texture = b
			a.Face = v
		end
	end
			
	local function recurse(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function() -- 'error occured, no output from Lua' LOLE
				if v:IsA("BasePart") then
					decal(v, img)
				end
				if #(v:GetChildren())>0 then
					recurse(v)
				end
			end)
		end
	end
			
	recurse(game)
	skybox(img)
end
function topkek.tools.util.recurseParticles(img)--topkek2.0 code tbh
	img = 'rbxassetid://' .. img
	local function skybox(x)
		local sky = Instance.new("Sky",game.Lighting)
		local fcs={"Bk","Dn","Ft","Lf","Rt","Up"}
		for i,v in pairs(fcs) do
			sky["Skybox"..v]=x
		end
	end
	local function particle(p, b)
		local a = Instance.new("ParticleEmitter", p)
		a.Rate = 500
		a.Lifetime = NumberRange.new(20, 30)
		a.VelocitySpread = 200
		a.Texture = b
	end
			
	local function recurse(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function() -- 'error occured, no output from Lua' LOLE
				if v:IsA("BasePart") then
					particle(v, img)
				end
				if #(v:GetChildren())>0 then
					recurse(v)
				end
			end)
		end
	end
			
	recurse(game)
	skybox(img)
end
function topkek.tools.util.recurseSetObj(obj,type_,prop,val)
	local function recurse(x)
		for i, v in pairs(x:GetChildren()) do
			pcall(function()
				if v:IsA(type_) then
					v[prop]=val
				end
				if #(v:GetChildren())>0 then
					recurse(v)
				end
			end)
		end
	end
	recurse(obj)
end
function topkek.tools.util.doPlayers(cval, func)
	local plrs = {}
	if cval == 'All' then
		plrs = game:GetService('Players'):GetPlayers()
	else
		plrs = {game:GetService('Players'):FindFirstChild(cval)}
	end
	for i, v in pairs(plrs) do
		func(v)
	end
end
function topkek.tools.util.scalePlayer(sc,plr)
	local pchar = plr.Character
	if pchar:FindFirstChild("UpperTorso") then
		warn("Player [" ..plr.Name.. "] is R15.")
		return
	end
	local function scale(chr,scl)
	
		for _,v in pairs(pchar:GetChildren()) do
			if v:IsA("Hat") then
				v:Clone()
				v.Parent = game.Lighting
			end
		end
			
	    local Head = chr['Head']
	    local Torso = chr['Torso']
	    local LA = chr['Left Arm']
	    local RA = chr['Right Arm']
	    local LL = chr['Left Leg']
	    local RL = chr['Right Leg']
	    local HRP = chr['HumanoidRootPart']
	
	    wait(0.1)
	   
	    Head.formFactor = 3
	    Torso.formFactor = 3
	    LA.formFactor = 3
	    RA.formFactor = 3
	    LL.formFactor = 3
	    RL.formFactor = 3
	    HRP.formFactor = 3
	    
	    Head.Size = Vector3.new(scl * 2, scl, scl)
	    Torso.Size = Vector3.new(scl * 2, scl * 2, scl)
	    LA.Size = Vector3.new(scl, scl * 2, scl)
	    RA.Size = Vector3.new(scl, scl * 2, scl)
	    LL.Size = Vector3.new(scl, scl * 2, scl)
	    RL.Size = Vector3.new(scl, scl * 2, scl)
	    HRP.Size = Vector3.new(scl * 2, scl * 2, scl)
	    
	    local Motor1 = Instance.new('Motor6D', Torso)
	    Motor1.Part0 = Torso
	    Motor1.Part1 = Head
    	Motor1.C0 = CFrame.new(0, 1 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
    	Motor1.C1 = CFrame.new(0, -0.5 * scl, 0) * CFrame.Angles(-1.6, 0, 3.1)
    	Motor1.Name = "Neck"
			    
    	local Motor2 = Instance.new('Motor6D', Torso)
    	Motor2.Part0 = Torso
    	Motor2.Part1 = LA
    	Motor2.C0 = CFrame.new(-1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
    	Motor2.C1 = CFrame.new(0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, -1.6, 0)
    	Motor2.Name = "Left Shoulder"
    	
    	local Motor3 = Instance.new('Motor6D', Torso)
   		Motor3.Part0 = Torso
    	Motor3.Part1 = RA
    	Motor3.C0 = CFrame.new(1 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
    	Motor3.C1 = CFrame.new(-0.5 * scl, 0.5 * scl, 0) * CFrame.Angles(0, 1.6, 0)
    	Motor3.Name = "Right Shoulder"
    	
    	local Motor4 = Instance.new('Motor6D', Torso)
    	Motor4.Part0 = Torso
    	Motor4.Part1 = LL
    	Motor4.C0 = CFrame.new(-1 * scl, -1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
    	Motor4.C1 = CFrame.new(-0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, -1.6, 0)
    	Motor4.Name = "Left Hip"
    	
    	local Motor5 = Instance.new('Motor6D', Torso)
    	Motor5.Part0 = Torso
    	Motor5.Part1 = RL
    	Motor5.C0 = CFrame.new(1 * scl, -1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
    	Motor5.C1 = CFrame.new(0.5 * scl, 1 * scl, 0) * CFrame.Angles(0, 1.6, 0)
    	Motor5.Name = "Right Hip"
    	
    	local Motor6 = Instance.new('Motor6D', HRP)
    	Motor6.Part0 = HRP
    	Motor6.Part1 = Torso
    	Motor6.C0 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
    	Motor6.C1 = CFrame.new(0, 0, 0) * CFrame.Angles(-1.6, 0, -3.1)
    	    
	end
	
	scale(pchar, sc)
	
	for _,v in pairs(game.Lighting:GetChildren()) do
		if v:IsA("Hat") then
			v.Parent = pchar
		end
	end
end
function topkek.tools.util.applyFace(id)
	local Char = topkek.lplr.Character
	if(Char)then
		local Type = id
		local Meme=id
		local BBG_SIZE=Char.Head.Size.X*1.25;
		local STUD_VECTOR_1=Char.Head.Size.Z/4;
		local STUD_VECTOR_2=Char.Head.Size.Z;
		local bbg=Char:FindFirstChild'BBGMEME'or Instance.new('BillboardGui',Char);
			bbg.StudsOffset=Vector3.new(0,STUD_VECTOR_1,STUD_VECTOR_2);
			bbg.Size=UDim2.new(BBG_SIZE,0,BBG_SIZE);
			bbg.Adornee=Char.Head;
			bbg.Name='BBGMEME';
		local img=bbg:FindFirstChild'Meme'or Instance.new('ImageLabel',bbg);
			img.BackgroundTransparency=1;
			img.Image="rbxassetid://"..Meme;
			img.Size=UDim2.new(1,0,1,0)
			img.Name='Meme';
		for i,v in next,Char:children()do
			if(v.className=='Hat')then
				v=v:FindFirstChild'Handle';
				if(v)then
					v.Transparency=0
				end;
			end;
		end;
	end;
end;
function topkek.tools.util.weenieHutJunior(plr)
	plr=plr.Character
	Shaft=Instance.new("Part", plr)
	Shaft.Name='Shaft'
	Shaft.Size=Vector3.new(1, 2.5, 1)
	Shaft.TopSurface=0
	Shaft.BottomSurface=0
	Shaft.CanCollide=true
	Cyln=Instance.new("CylinderMesh", Shaft)
	Cyln.Scale=Vector3.new(0.5,0.7,0.5)
	Instance.new("Weld", plr)
	plr.Weld.Part0=plr:FindFirstChild("Torso") or plr:FindFirstChild("LowerTorso")
	plr.Weld.Part1=plr.Shaft 
	plr.Weld.C0=CFrame.new(0,-0.35,-0.9)*CFrame.fromEulerAnglesXYZ(2.2,0,0) 
	Shaft.BrickColor=BrickColor.new("Pastel brown")
	Tip=Instance.new("Part", plr)
	Tip.Name='Tip'
	Tip.TopSurface=0
	Tip.BottomSurface=0
	Tip.Size=Vector3.new(1, 1, 1)
	Tip.CanCollide=true
	Tip.Touched:connect(function(prt) if prt.Parent~=player then spawn(function() for i=1, 5 do local pert=Instance.new("Part", player) pert.CFrame=CFrame.new(prt.Position) pert.CanCollide=true local mesh=Instance.new("BlockMesh", pert) mesh.Scale=Vector3.new(0.2,0.2,0.2) pert.BrickColor=BrickColor.new("White") end end) end end)
	Cyln2=Instance.new("SpecialMesh", Tip)
	Cyln2.MeshType='Sphere'
	Cyln2.Scale=Vector3.new(0.6,0.6,0.6)
	Instance.new("Weld", plr).Name='Weld2'
	plr.Weld2.Part0=plr.Shaft
	plr.Weld2.Part1=plr.Tip 
	plr.Weld2.C0=CFrame.new(0,-.9,0)
	Tip.BrickColor=BrickColor.new("Pink")
	-----
	Ball1=Instance.new("Part", plr)
	Ball1.Name='Ball1'
	Ball1.Size=Vector3.new(1, 1, 1)
	Ball1.TopSurface=0
	Ball1.BottomSurface=0
	Cyln3=Instance.new("SpecialMesh", Ball1)
	Cyln3.MeshType='Sphere'
	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)
	Instance.new("Weld", plr).Name='Weld3'
	plr.Weld3.Part0=plr.Shaft
	plr.Weld3.Part1=plr.Ball1 
	plr.Weld3.C0=CFrame.new(0.225,.4,0.2)
	Ball1.BrickColor=BrickColor.new("Pastel brown")
	-----
	Ball2=Instance.new("Part", plr)
	Ball2.Name='Ball2'
	Ball2.Size=Vector3.new(1, 1, 1)
	Ball2.TopSurface=0
	Ball2.BottomSurface=0
	Cyln3=Instance.new("SpecialMesh", Ball2)
	Cyln3.MeshType='Sphere'
	Cyln3.Scale=Vector3.new(0.4,0.4,0.4)
	Instance.new("Weld", plr).Name='Weld4'
	plr.Weld4.Part0=plr.Shaft
	plr.Weld4.Part1=plr.Ball2 
	plr.Weld4.C0=CFrame.new(-0.225,.4,0.2)
	Ball2.BrickColor=BrickColor.new("Pastel brown")
end
--// banmgr //--
topkek.banmgr.isPrivate = false
topkek.banmgr.whitelist = {}
topkek.banmgr.bans = {}
function topkek.banmgr.executeKick(z)
	local function doKick()
        if z.Character and z.Character:FindFirstChild('HumanoidRootPart') and z.Character:FindFirstChild('Torso') then
            z.Character.HumanoidRootPart.CFrame = CFrame.new(math.random(999000, 1001000), 1000000, 1000000)
            local SP = Instance.new('SkateboardPlatform', z.Character) SP.Position = z.Character.HumanoidRootPart.Position SP.Transparency = 1
            spawn(function()
                repeat wait()
                    if z.Character and z.Character:FindFirstChild('HumanoidRootPart') then
                        SP.Position = z.Character.HumanoidRootPart.Position
                    end
                until not game:GetService('Players'):FindFirstChild(z.Name)
            end)
            z.Character.Torso.Anchored = true
        end
	end
	repeat
		doKick()
		wait()
	until not z
end
function topkek.banmgr.loadFromFile()
	-- todo: read file
	topkek.settings.get()
	topkek.banmgr.bans = topkek.settingsTable['Bans']
end
function topkek.banmgr.addHardBan(p)
	-- todo: write file
	table.insert(topkek.banmgr.bans, p.Name)
	topkek.settings.get()
	table.insert(topkek.settingsTable['Bans'], p.Name)
	topkek.settings.write()
	print("Hardbanned " .. p.Name)
	UpdateBanlist()
	topkek.banmgr.executeKick(p)
	topkek.banmgr.loadFromFile()
end
function topkek.banmgr.addSoftBan(p)
	table.insert(topkek.banmgr.bans, p.Name)
	topkek.banmgr.executeKick(p)
end
function topkek.banmgr.plrBanned(p)
	for x, m in pairs(topkek.banmgr.bans) do
		if m == p.Name then
			return true
		end
	end	
	return false
end
function topkek.banmgr.doWhitelist(p)
	print(p .. " whitelisted")
	table.insert(topkek.banmgr.whitelist, p)
end
function topkek.banmgr.unwhitelist(p)
	for x, m in pairs(topkek.banmgr.whitelist) do
		if m == p then
			print(m .. " unwhitelisted")
			table.remove(topkek.banmgr.whitelist, x)
			if game:GetService('Players'):FindFirstChild(p) then
				topkek.banmgr.executeKick(game:GetService('Players')[p])
			end
		end
	end	
end
function topkek.banmgr.plrWhitelisted(p)
	for x, m in pairs(topkek.banmgr.whitelist) do
		if m == p.Name then
			return true
		end
	end	
	return false
end
function topkek.banmgr.makePrivate()
	topkek.banmgr.isPrivate = true
	for i, v in pairs(game:GetService('Players'):GetPlayers()) do
		if not topkek.banmgr.plrWhitelisted(v) and v ~= topkek.lplr then
			spawn(function()
				topkek.banmgr.executeKick(v)
			end)
		end
	end
end
function topkek.banmgr.unprivate()
	topkek.banmgr.isPrivate = false
end
function topkek.banmgr.init()
	topkek.banmgr.loadFromFile()
	game:GetService('Players').PlayerAdded:connect(function(p)
		if topkek.banmgr.plrBanned(p) or (topkek.banmgr.isPrivate and not topkek.banmgr.plrWhitelisted(p)) then
			print("Player " .. p.Name .. " is banned (or private on)! Kicking now.")
			topkek.banmgr.executeKick(p)
		end
	end)
end
--// settings //--
topkek.settings = {}
topkek.settingsTable = {}
function topkek.settings.write()
	--writefile("testplzignore.lua", "", game:GetService('HttpService'):JSONEncode(topkek.settingsTable))
end
function topkek.settings.get()
if game.Players.LocalPlayer.Character then
		print("No settings! Making new ...")
		topkek.settingsTable = {
			['Bans'] = {
				
			},
			['Themes'] = {
				{Primary = {0,0,0}, Secondary = {0,0,0}, Tertiary = {0,0,0}}
			};
		}
		topkek.settings.write()
		return topkek.settingsTable
	else
		local lset = game:GetService('HttpService'):JSONDecode(set)
		topkek.settingsTable = lset
		return lset
end
end
--// shortcuts //--
tk = {}
tk.ob = topkek.tools.util.Object
tk.dp = topkek.tools.util.doPlayers
tk.rcm = topkek.tools.util.recurseRemove
tk.rcs = topkek.tools.util.recurseSet
tk.rcf = topkek.tools.util.recurseFunc
tk.rco = topkek.tools.util.recurseSetObj
tk.play = topkek.tools.util.play
tk.gt = topkek.tools.util.getTorso
--// gui //--
-- copying this from topkek3.0 because i'm
-- too lazy to rewrite my lib
topkek.tools.gui.seperation = 12
function topkek.tools.gui:addLeftIcon(parent, img, sz)
	topkek.tools.util.Object('ImageLabel', {
		Parent = parent;
		BackgroundTransparency = 1;
		Position = UDim2.new(0, 2, 0, 2);
		Size = UDim2.new(0, sz, 0, sz);
		Image = img;
	})
end
function topkek.tools.gui:makeContainer(n)
	local temp = topkek.template:Clone()
	temp.Name = n
	temp.Parent = topkek.holder
	temp.Container.Visible = false
end
function topkek.tools.gui:hookContainer(o, ncan, sepr, stt)
	if not o:IsA("ScrollingFrame") and (not ncan) then
		return nil
	elseif o:IsA("ScrollingFrame") then
		o.CanvasSize = UDim2.new(0, 0, 0, 0)
	end
	
	local self = {}
	self.main = o
	self.drawX = 0
	self.drawY = stt or topkek.tools.gui.seperation/2
	self.drawHeight = 0
	self.sepr = sepr or topkek.tools.gui.seperation
	
	function self:drawButton(sz, txt, func, ysz, cbgd)
		local xposOffset = 0
		local xposScale = self.drawX
		local xszOffset = 0
		local xszScale = sz
		if not (self.drawX == 0)  then
			xszOffset = -5
			if sz + self.drawX > 0.998 then
				xszOffset = -10
			end
		elseif sz == 1 then
			local bzz = 4
			if ncan then
				bzz = 0
			end
			xszOffset = -(self.sepr) - bzz
			xposOffset = self.sepr/2
		else
			xszOffset = -4 + -(self.sepr/2)
			xposOffset = self.sepr/2
		end
		if not ysz then ysz = 20 end
		local obj = topkek.tools.util.Object("TextButton", {
			Parent = self.main;
			BackgroundColor3 = cbgd or Color3.new(163/255, 57/255, 57/255);
			BorderSizePixel = 0;
			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);
			Size = UDim2.new(xszScale, xszOffset, 0, ysz);
			Font = 'SourceSans';
			FontSize = 'Size14';
			Text = txt;
			TextSize = 14;
			TextColor3 = Color3.new(199/255, 199/255, 199/255);
		})
		obj.MouseButton1Down:connect(function()
			spawn(func)
		end)
		if ysz > self.drawHeight then
			self.drawHeight = ysz
		end
		self.drawX = self.drawX + sz
		if self.drawX > 0.998 then
			self.drawY = self.drawY + 3 + self.drawHeight
			self.drawX = 0
			self.drawHeight = 0
			if (not ncan) then
				self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)
			end
		end
		return obj
	end
	
	function self:GetChildren()
		return self.main:GetChildren()
	end
	
	function self:getDrawY()
		return self.drawY
	end
	
	function self:setDrawY(y)
		self.drawY = y
	end
	
	function self:drawTextBox(sz, txt, ysz, cbgd)
		local xposOffset = 0
		local xposScale = self.drawX
		local xszOffset = 0
		local xszScale = sz
		if not (self.drawX == 0)  then
			xszOffset = -5
			if sz + self.drawX > 0.998 then
				xszOffset = -10
			end
		elseif sz == 1 then
			xszOffset = -(self.sepr) - 5
			xposOffset = self.sepr/2
		else
			xszOffset = -4 + -(self.sepr/2)
			xposOffset = self.sepr/2
		end
		if not ysz then ysz = 20 end
		local obj = topkek.tools.util.Object("TextBox", {
			Parent = self.main;
			BackgroundColor3 = cbgd or color3(153, 52, 52); 
			BorderSizePixel = 0;
			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);
			Size = UDim2.new(xszScale, xszOffset, 0, ysz);
			Font = 'SourceSans';
			FontSize = 'Size14';
			Text = txt;
			TextSize = 14;
			TextColor3 = Color3.new(199/255, 199/255, 199/255);
		})
		if ysz > self.drawHeight then
			self.drawHeight = ysz
		end
		self.drawX = self.drawX + sz
		if self.drawX > 0.998 then
			self.drawY = self.drawY + 3 + self.drawHeight
			self.drawX = 0
			self.drawHeight = 0
			self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)
		end
		return obj
	end
	
	function self:drawImage(sz, img, ysz)
		local xposOffset = 0
		local xposScale = self.drawX
		local xszOffset = 0
		local xszScale = sz
		if not (self.drawX == 0)  then
			xszOffset = -5
			if sz + self.drawX > 0.998 then
				xszOffset = -12
			end
		elseif sz == 1 then
			xszOffset = -(self.sepr) - 5
			xposOffset = self.sepr/2
		else
			xszOffset = -5 + -(self.sepr/2)
			xposOffset = self.sepr/2
		end
		if not ysz then ysz = 20 end
		local obj = topkek.tools.util.Object("ImageLabel", {
			Parent = self.main;
			BackgroundTransparency = 1;
			BorderColor3 = Color3.new(27, 42, 53);
			BorderSizePixel = 0;
			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);
			Size = UDim2.new(xszScale, xszOffset, 0, ysz);
			Image = img;
		})
		if ysz > self.drawHeight then
			self.drawHeight = ysz
		end
		self.drawX = self.drawX + sz
		if self.drawX > 0.998 then
			self.drawY = self.drawY + 3 + self.drawHeight
			self.drawX = 0
			self.drawHeight = 0
			if (not ncan) then
				self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)
			end
		end
		return obj
	end
	
	function self:drawText(sz, txt, ysz)
		local xposOffset = 0
		local xposScale = self.drawX
		local xszOffset = 0
		local xszScale = sz
		if not (self.drawX == 0)  then
			xszOffset = -5
			if sz + self.drawX > 0.998 then
				xszOffset = -10
			end
		elseif sz == 1 then
			local bzz = 5
			if ncan then
				bzz = 0
			end
			xszOffset = -(self.sepr) - bzz
			xposOffset = self.sepr/2
		else
			xszOffset = -4 + -(self.sepr/2)
			xposOffset = self.sepr/2
		end
		if not ysz then ysz = 20 end
		local obj = topkek.tools.util.Object("TextLabel", {
			Parent = self.main;
			BackgroundColor3 = Color3.new(148/255, 51/255, 51/255);
			BorderSizePixel = 0;
			Position = UDim2.new(xposScale, xposOffset, 0, self.drawY);
			Size = UDim2.new(xszScale, xszOffset, 0, ysz);
			Font = 'SourceSans';
			FontSize = 'Size14';
			Text = txt;
			TextSize = 14;
			TextColor3 = Color3.new(199/255, 199/255, 199/255);

		})
		if ysz > self.drawHeight then
			self.drawHeight = ysz
		end
		self.drawX = self.drawX + sz
		if self.drawX > 0.998 then
			self.drawY = self.drawY + 3 + self.drawHeight
			self.drawX = 0
			self.drawHeight = 0
			if (not ncan) then
				self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)
			end
		end
		return obj
	end
	
	
	function self:drawScrollingContainer(ysz)
		local sz = UDim2.new(1, -(self.sepr/2) - 11, 0, ysz)
		local pos = UDim2.new(0, self.sepr/2, 0, self.drawY)
		local obj = topkek.tools.util.Object("ScrollingFrame", {
			Parent = self.main;
			BackgroundColor3 = color3(117, 42, 42);
			BorderSizePixel = 0;
			Position = pos;
			Size = sz;
			BottomImage = 'rbxassetid://368504177';
			MidImage = 'rbxassetid://368504177';
			TopImage = 'rbxassetid://368504177';
			ScrollBarThickness = 5;
		})
		
		self.drawY = self.drawY + 5 + ysz
		self.drawX = 0
		self.drawHeight = 0
		if (not ncan) then
			self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)
		end
		return topkek.tools.gui:hookContainer(obj, false, 10, 3)
	end
	
	function self:drawContainer(xsz, ysz, xz, tz, sep)
		local sz = UDim2.new(xsz, -(self.sepr/2) - 11, 0, ysz)
		local pos = UDim2.new(tz or 0, self.sepr/2, 0, self.drawY)
		local obj = topkek.tools.util.Object("Frame", {
			Parent = self.main;
			BackgroundColor3 = color3(117, 42, 42);
			BorderSizePixel = 0;
			Position = pos;
			Size = sz;
		})
		if not xz then
			self.drawY = self.drawY + 5 + ysz
		end
		self.drawX = 0
		self.drawHeight = 0
		if (not ncan) then
			self.main.CanvasSize = UDim2.new(0, 0, 0, self.drawY + 5)
		end
		return topkek.tools.gui:hookContainer(obj, sep or 12, 5)
	end
	
	function self:addSpacing()
		self.drawY = self.drawY + 3
	end
	
	function self:center()
		local a,c,b=
			self.main.Position.X.Scale,
				self.main.Position.X.Offset,self.main.Size.Y.Offset
		self.main.Position=UDim2.new(a,c+2, 0.5, -(b/2))
	end	
	
	return self
end

--//anim//--
topkek.tools.animator.animateTo = function(source, dest)
	-- holder2holder:
	-- invis holder
	-- clone holder; vis
	-- move holder to right
	-- vis dest container
	-- tween clone holder left
	-- tween dest holder right
	print("nav",source,dest)
	topkek.holder.Visible = false
	local hclone = topkek.holder:Clone()
	hclone.Parent = topkek.center
	hclone.Name = 'animclone'
	hclone.Visible = true
	topkek.holder.Position = UDim2.new(-1, 0, 0, 30)
	source.Visible = false
	dest.Visible = true
	dest.Container.Visible = true
	dest.Container.ZIndex = 1
	dest.ZIndex = 1
	topkek.holder.Visible = true
	topkek.holder:TweenPosition(UDim2.new(0, 150, 0, 30), "Out", "Quad", 0.3)
	hclone:TweenPosition(UDim2.new(1, 0, 0, 30), "Out", "Quad", 0.3)
	wait(0.3)
end
topkek.tools.animator.initialAnimation = function()
	-- initanim:
	-- join both composites
	-- delete composites; vis solid
	-- tween solid to nav topbar
	-- copy topbar plrname; move outside region
	-- tween in clone topbar
	-- delete clone and solid; vis topbar
	-- tween down topbar
	-- tween holder out
	local function abspos(x)
		return UDim2.new(0, x.AbsolutePosition.X, 0, x.AbsolutePosition.Y)
	end
	local function abssz(x)
		return UDim2.new(0, x.AbsoluteSize.X, 0, x.AbsoluteSize.Y)
	end
	local holder = topkek.holder
	local nav = topkek.navigator
	local topnav = nav.Topbar
	local topbar = topkek.topbar
	local pname = topbar.PlayerName:Clone()
	local solid = topkek.gui.Solid
	topkek.center.Size = UDim2.new(0, 150, 0, 30)
	topkek.gui.Composite1:TweenPosition(UDim2.new(0.5, -50, 0.5, -50), 'Out', 'Quad', 0.5)
	topkek.gui.Composite2:TweenPosition(UDim2.new(0.5, 0, 0.5, -50), 'Out', 'Quad', 0.5)
	wait(0.52)
	solid.Visible = true
	topkek.gui.Composite1:Destroy()
	topkek.gui.Composite2:Destroy()
	wait(3)
	solid.Label:TweenPosition(UDim2.new(0, 0, 1.5, 0), 'Out', 'Quad', 0.5)
	solid:TweenSizeAndPosition(abssz(topnav), abspos(topnav), 'Out', 'Linear', 0.6)
	wait(0.52)
	solid.Label:Destroy()
	wait(0.12)
	topkek.center.Visible = true
	topnav.Visible = true
	solid:Destroy()
	pname.Position = UDim2.new(0, -170, 0, 0)
	pname.Parent = topnav
	pname.Visible = true
	pname:TweenPosition(UDim2.new(0, 10, 0, 0), 'Out', 'Quad', 0.2)
	wait(0.25)
	topkek.center:TweenSize(UDim2.new(0, 150, 0, 395), 'Out', 'Quad', 0.3)
	spawn(topkek.navigation.buildNavigator)
	wait(0.35)
	topkek.center:TweenSize(UDim2.new(0, 470, 0, 395), 'In', 'Quad', 0.3)
	wait(0.35)
	topbar.PlayerName.Visible = true
	pname:Destroy()
	AllowHovers = true
end
--//nav//--
topkek.navigation.currentContainer = topkek.tools.util.getContainer('Home')
topkek.navigation.windowState = 0
topkek.navigation.gotoContainer = function(cont)
	topkek.tools.animator.animateTo(topkek.navigation.currentContainer, cont)
	topkek.navigation.currentContainer = cont
end
topkek.navigation.buildNavigator = function()
	local nav = topkek.navigator
	local hook = topkek.tools.gui:hookContainer(nav.Scroll, false)
	local btns = {}
	for l, x in pairs(topkek.data.windows) do
		local container = topkek.tools.util.getContainer(x)
		local btn = hook:drawButton(1, x, function() topkek.navigation.gotoContainer(container) end, 25)
		local ZPos = btn.Position
		btn.Position = btn.Position - UDim2.new(0, 0, 0, 5)
		btn:TweenPosition(ZPos, 'Out', 'Bounce', 0.2)
		btn.LayoutOrder = l
		btn.ZIndex = 4
		local OPos = btn.Position
		btn.MouseEnter:connect(function()
			if AllowHovers == false then
				return
			end
			for i, v in pairs(btns) do
				if v[1] ~= btn then
					v[1]:TweenPosition(v[2], 'Out', 'Quad', 0.1)
				end
			end
			btn:TweenPosition(OPos + UDim2.new(0, 3, 0, 0), 'Out', 'Quad', 0.1)
		end)
		btn.MouseLeave:connect(function()
			btn:TweenPosition(OPos, 'Out', 'Quad', 0.1)
		end)
		table.insert(btns, {btn, OPos})
		wait()	
	end
end
topkek.navigation.buildTopbar = function()
	local top = topkek.topbar
	local FELabel = top.Controllers.IsFE
	top.PlayerName.Text = topkek.lplr.Name
	if game:GetService('Workspace').FilteringEnabled == true then
		FELabel.Text = "FE Game"
		FELabel.TextColor3 = BrickColor.new("Bright red").Color
	else
		FELabel.Text = "Not FE"
		FELabel.TextColor3 = BrickColor.new("Bright green").Color
	end
	top.Controllers.Hide.MouseButton1Down:connect(function()
		if topkek.navigation.windowState == 0 then
			topkek.navigation.windowState = 1
			topkek.center:TweenSize(UDim2.new(0, 470, 0, 30), 'Out', 'Quint', 0.2)
		else
			topkek.navigation.windowState = 0
			topkek.center:TweenSize(UDim2.new(0, 470, 0, 395), 'Out', 'Quint', 0.2)
		end
	end)	
	top.Controllers.Exit.MouseButton1Down:connect(function()
		topkek.center:TweenSize(UDim2.new(0, 470, 0, 30), 'Out', 'Quint', 0.3)
		wait(0.31)
		topkek.center:TweenSize(UDim2.new(0, 0, 0, 0), 'Out', 'Quint', 0.3)
		PlayerChatHook:disconnect()
	end)
	
end
topkek.navigation.initCommandBar = function()
	DistributedCmdBar, cmd = topkek.holder.Command, {}
	loadstring(game:GetObjects("rbxassetid://685510751")[1].Source)()
	DistributedCmdBar.FocusLost:connect(function(e)
		if e == true then
			cmd.commands.run(DistributedCmdBar.Text)
			DistributedCmdBar.Text = ''
		end
	end)
	
	PlayerChatHook = cmd.players.PlayerChatted:connect(function (_, plr, msg, _)
		if cmd.util.isadmin(plr.Name) then
			if msg:sub(1,1) == cmd.prefix or msg:sub(1,1) == cmd.hidden then
				cmd.commands.run(msg:sub(2, #msg))
			end
		end
	end)
end
topkek.navigation.buildHomePage = function()
	local count = 0
	for _, _ in pairs(cmd.commands.store) do count = count + 1 end
	local hook = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Home').Container, true)
	hook:drawText(1, 'T0PK3K 4.0 ProtoSmasher Edition edited by bork')
	hook:drawText(1, 'Patch version 1.0.5')
	hook:drawText(1, 'Commandbase patch version 1.0.0')
	hook:drawText(1, 'Number of commands: ' .. tostring(count))
	local stime = hook:drawText(1, 'Server Time: 0')
	spawn(function()
		while true do
			stime.Text = 'Server Time: ' .. tostring(game:GetService('Workspace').DistributedGameTime)
			wait(0.5)
		end
	end)
	local ssz = hook:drawText(1, 'Server Size: 0')
	spawn(function()
		while true do
			ssz.Text = 'Server Size: ' .. tostring(game:GetService('Players').NumPlayers)
			wait(0.5)
		end
	end)
	local fe = game:GetService('Workspace').FilteringEnabled
	hook:drawText(1, 'FilteringEnabled: ' .. (fe and "YES" or "NO"))
	hook:drawText(1, 'PlaceId: ' .. tostring(game.PlaceId))
	hook:drawText(1, 'same', 55)
end
topkek.navigation.buildContainers = function()
	for _, v in pairs(topkek.data.windows) do
		topkek.tools.gui:makeContainer(v)
	end
end

topkek.navigation.initCommandBar()
topkek.navigation.buildContainers()
topkek.navigation.buildTopbar()
topkek.navigation.buildHomePage()
wait()


--// actual code below lole //--

--// PLAYERS //--
local plrwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Players').Container)
local search = plrwin:drawButton(1, '', function()end)
drop = GUI.DropDown.New(UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), search, {'All'})
function fixPlayerDrop()
	local t = {'All'}
	for i, v in pairs(game.Players:GetPlayers()) do
		table.insert(t, v.Name)
	end
	drop.SetTable(t)
end
game.Players.PlayerAdded:connect(function()
	fixPlayerDrop()
end)
game.Players.PlayerRemoving:connect(function()
	fixPlayerDrop()
end)
plrFrame = plrwin:drawContainer(1, 100)
headshotContainer = plrFrame:drawContainer(0.4, 94, true)
headshotContainer:setDrawY(20)
headshot = headshotContainer:drawImage(1, "https://www.roblox.com/bust-thumbnail/image?userId=1&width=420&height=420&format=png", 74)
headshotContainer:setDrawY(0)
userNameText = headshotContainer:drawText(1, "[All]")
userNameText.ClipsDescendants = true
userNameText.Font = Enum.Font.SourceSansBold
infoContainer = plrFrame:drawContainer(0.5, 94, true, 0.5)
infoContainer.BackgroundColor3 = color3(108, 38, 38)
userIdText = infoContainer:drawText(1, "ID: 0")
userAgeText = infoContainer:drawText(1, "Age: 0")
userTeamText = infoContainer:drawText(1, "Team: Neutral")
cval = 'All'
fixPlayerDrop()

function updatePlayer(plri)
	local plr = game:GetService('Players'):FindFirstChild(plri)
	if not plr and plri ~= 'All' then
		print("Couldn't find player!")
		updatePlayer(topkek.lplr)
	else
		headshot.Image = "https://www.roblox.com/bust-thumbnail/image?userId=1&width=420&height=420&format=png"
		userNameText.Text = "[All]"
		userIdText.Text = 'ID: [multiple]'
		userAgeText.Text = 'Age: [multiple]'
		userTeamText.Text = 'Team: [multiple]'
		cval = 'All'
	end
	local team = plr.TeamColor
	if team == nil then
		team = 'Neutral'
	else
		team = tostring(team)
	end
	headshot.Image = "https://www.roblox.com/bust-thumbnail/image?userId=" .. tostring(plr.UserId) .. "&width=420&height=420&format=png"
	userNameText.Text = plr.Name
	userIdText.Text = 'ID: ' .. tostring(plr.UserId)
	userAgeText.Text = 'Age: ' .. tostring(plr.AccountAge)
	userTeamText.Text = 'Team: ' .. team
	cval = plr.Name
	
end
drop.Changed(updatePlayer)
--actual code ------__-
plrwin:addSpacing()
plrwin:drawButton(1/2, 'Kick', function()
	tk.dp(cval, function(p)
		topkek.banmgr.executeKick(p)
	end)
end)

plrwin:drawButton(1/2, 'Ban', function()
	tk.dp(cval, function(p)
		topkek.banmgr.addSoftBan(p)
	end)
end)
plrwin:drawButton(1/2,'Friendlag', function()
	tk.dp(cval, function(p)
		for i = 1, 10 do
			spawn(function()
				while wait() do
		    		game.Players.LocalPlayer:RequestFriendship(p)
		  	  		game.Players.LocalPlayer:RevokeFriendship(p)
				end
			end)
		end
	end)
end)
plrwin:drawButton(1/2, 'Hardban', function()
	tk.dp(cval, function(p)
		topkek.banmgr.addHardBan(p)
	end)
end)
plrwin:addSpacing()
plrwin:drawButton(1/2, 'Bring', function()
	tk.dp(cval, function(z)
		if z.Character then
			z.Character.HumanoidRootPart.CFrame =
				game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(1,1,1)
		end
	end)
end)
plrwin:drawButton(1/2, 'Goto', function()
	tk.dp(cval, function(z)
		game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame =
			z.Character.HumanoidRootPart.CFrame * CFrame.new(1,1,1)
	end)
end)
plrwin:addSpacing()
plrwin:drawButton(1/3, 'Kill', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild("Humanoid") then
			p.Character.Humanoid.Health = 0
		end
	end)
end)
plrwin:drawButton(1/3, 'Seizure', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild("Humanoid") and tk.gt(p) then
			spawn(function()
				p.Character.Humanoid.PlatformStand = true
				tk.gt(p).CFrame = tk.gt(p).CFrame * CFrame.Angles(math.rad(90),0,0) 
				repeat 
					wait()
					p.Character.Humanoid.PlatformStand = true
					tk.gt(p).Velocity = Vector3.new(math.random(-10,10),-5,math.random(-10,10)) 
					tk.gt(p).RotVelocity = Vector3.new(math.random(-5,5),math.random(-5,5),math.random(-5,5)) 
				until not p.Character:FindFirstChild("Humanoid") or not tk.gt(p)
			end)
		end
	end)
end)
plrwin:drawButton(1/3, 'Stun', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild("Humanoid") then
			p.Character.Humanoid.PlatformStand = true
			p.Character.Torso.CFrame = p.Character.Torso.CFrame * CFrame.Angles(math.rad(90),0,0) 
		end
	end)
end)
plrwin:drawButton(1/3, 'Freeze', function()
	tk.dp(cval, function(p)
		if p.Character then
			tk.gt(p).Anchored = true
		end
	end)
end)
plrwin:drawButton(1/3, 'Thaw', function()
	tk.dp(cval, function(p)
		if p.Character then
			tk.gt(p).Anchored = false
		end
	end)
end)
plrwin:drawButton(1/3, 'Superslow', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.Humanoid.WalkSpeed = 1
		end
	end)
end)
plrwin:drawButton(1/3, 'Highjump', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.Humanoid.JumpPower = 125
		end
	end)
end)
plrwin:drawButton(1/3, 'God', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.Humanoid.MaxHealth = math.huge
			p.Character.Humanoid.Health = math.huge
		end
	end)
end)
plrwin:drawButton(1/3, 'Semigod', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.Humanoid.MaxHealth = 9e9
			p.Character.Humanoid.Health = 9e9
		end
	end)
end)
plrwin:drawButton(1/3, 'Fast', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.Humanoid.WalkSpeed = 50
		end
	end)
end)
Follow = false;
plrwin:drawButton(1/3, 'Annoy', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			if Follow == true then
				Follow = false; return
			else Follow = true end
			while Follow == true do
				game:service'Players'.LocalPlayer.Character.HumanoidRootPart.CFrame=
					p.Character.HumanoidRootPart.CFrame
				wait()
			end
		end
	end)
end)
plrwin:drawButton(1/3, 'Freefall', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.HumanoidRootPart.CFrame = p.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10000, 0)		
		end
	end)
end)
plrwin:drawButton(1/3, 'Destroy', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.Humanoid:Destroy()
		end
	end)
end)
plrwin:drawButton(1/3, 'Fix', function()
	tk.dp(cval, function(p)
		if p.Character and p.Character:FindFirstChild('Humanoid') then
			p.Character.Humanoid.Health = 100
			p.Character.Humanoid.MaxHealth = 100
			p.Character.Humanoid.JumpPower = 100
			p.Character.Humanoid.WalkSpeed = 16
			p.Character.Humanoid.PlatformStand = false
			p.Character.Humanoid.Jump = true
		end
	end)
end)
plrwin:drawButton(1/3, 'Respawn', function()
	tk.dp(cval, function(p)
		if p.Character then
			local a1 = Instance.new("Model", game:service'Workspace')
			local a2 = Instance.new("Part", game:service'Workspace')
			a2.CanCollide = true
			a2.Anchored = true
			a2.CFrame = CFrame.new(10000, 10000, 10000)
			a2.Name = "Torso"
			local a3 = Instance.new("Humanoid", a1)
			a3.MaxHealth=100;a3.Health=100
			p.Character = a1
			a3.Health=0
		end
	end)
end)
plrwin:addSpacing()
local nameInp
plrwin:drawButton(1/3, 'Name', function()
	tk.dp(cval, function(z)
		local Character = z.Character
		local newName = Instance.new("Model", z.Character)
		newName.Name = nameInp.Text
		local cl = Character:WaitForChild("Head"):Clone()
		cl.Parent = newName
		cl:WaitForChild("face"):Destroy()
		local hum = Instance.new("Humanoid", newName)
		hum.Name = "NameTag"
		hum.MaxHealth = 0
		hum.Health = 0
		local weld = Instance.new("Weld", cl)
		weld.Part0 = cl
		weld.Part1 = Character:WaitForChild("Head")
		Character:WaitForChild("Head").Transparency = 1
		wait(.5)
		cl.BrickColor = Character:WaitForChild("Head").BrickColor
	end)
end)
nameInp = plrwin:drawTextBox(2/3, '')
local chatInp
plrwin:drawButton(1/3, 'Chat', function()
	tk.dp(cval, function(z)
		game:GetService('Chat'):Chat(z.Charcter, chatInp.Text)
	end)
end)
chatInp = plrwin:drawTextBox(2/3, '')
local disgInp
plrwin:drawButton(1/3, 'Disguise', function()
	tk.dp(cval, function(p)
		local id = 0
		if tonumber(disgInp.Text) then
			id = tonumber(disgInp.Text)
		else
			id = game:GetService('Players'):GetUserIdFromNameAsync(disgInp.Text)
		end
		if p.Character:FindFirstChild("Humanoid") then
			p.Character.Humanoid.Health = 0
		end
		p.CharacterAppearance = 'https://assetgame.roblox.com/Asset/CharacterFetch.ashx?userId=' .. tostring(id)
	end)
end)
disgInp = plrwin:drawTextBox(2/3, 'ROBLOX')
plrwin:addSpacing()
clrR = plrwin:drawTextBox(1/3, '0')
clrG = plrwin:drawTextBox(1/3, '0')
clrB = plrwin:drawTextBox(1/3, '0')
function getColor()
	local r = tonumber(clrR.Text)
	local g = tonumber(clrG.Text)
	local b = tonumber(clrB.Text)
	if not (r and g and b) then return Color3.new(0,0,0) end
	return Color3.new(r/255, g/255, b/255)
end
plrwin:drawButton(1/3, 'Sparkles', function()
	tk.dp(cval, function(z)
		Instance.new("Sparkles", tk.gt(z)).SparkleColor = getColor()
	end)
end)
plrwin:drawButton(1/3, 'Smoke', function()
	tk.dp(cval, function(z)
		Instance.new("Smoke", tk.gt(z)).Color = getColor()

	end)
end)
plrwin:drawButton(1/3, 'Fire', function()
	tk.dp(cval, function(z)
		local fr = Instance.new("Fire", tk.gt(z))
		fr.Color = getColor()
		fr.Heat = 30
		fr.Size = 20
	end)
end)
plrwin:drawButton(1/3, 'Forcefield', function()
	tk.dp(cval, function(z)
		if z.Character then
			Instance.new("ForceField", z.Character)
		end
	end)
end)
plrwin:drawButton(1/3, 'Select', function()
	tk.dp(cval, function(z)
		if z.Character and tk.gt(z) then
			Instance.new("SelectionBox", tk.gt(z)).Adornee = tk.gt(z)
		end
	end)
end)
plrwin:drawButton(1/3, 'Sphere', function()
	tk.dp(cval, function(z)
		if z.Character and tk.gt(z) then
			Instance.new("SelectionSphere", tk.gt(z)).Adornee = tk.gt(z)
		end
	end)
end)
plrwin:drawButton(1/3, 'Fling', function()
	tk.dp(cval, function(z)
		spawn(function() --kohls admin commands lol
			if z.Character and tk.gt(z) then 
				local xran, zran
				repeat xran = math.random(5555, 9999) until math.abs(xran) >= 5555
				repeat zran = math.random(5555, 9999) until math.abs(zran) >= 5555
				z.Character.Humanoid.Sit = true 
				tk.gt(z).Velocity = Vector3.new(0,0,0)
				local frc = Instance.new("BodyForce", tk.gt(z))
				frc.Name = "BFRC" 
				frc.force = Vector3.new(xran*4,9999*5,zran*4) 
				game:GetService("Debris"):AddItem(frc, 0.1)
			end
		end)
	end)
end)
plrwin:drawButton(1/3, 'Explode', function()
	tk.dp(cval, function(z)
		if z.Character and tk.gt(z) then
			local explosion = Instance.new("Explosion")
			explosion.Position = tk.gt(z).Position
			explosion.Parent = workspace
		end
	end)
end)
plrwin:drawButton(1/3, 'Nuke', function()
	tk.dp(cval, function(z)
		if z.Character and tk.gt(z) then
			local torso = tk.gt(z)
			local nuke = Instance.new("Part", game.Workspace)
			local opos = torso.CFrame
			nuke.BrickColor = BrickColor.new("Bright yellow")
			nuke.TopSurface = Enum.SurfaceType.Smooth
			nuke.BottomSurface = Enum.SurfaceType.Smooth
			nuke.Anchored = true
			nuke.CanCollide = false
			nuke.Shape = "Ball"				
			nuke.Transparency = 0.5
			nuke.CFrame = torso.CFrame		
			nuke.Size = Vector3.new(1, 1, 1)
			nuke.Touched:connect(function(p)
				local expl = Instance.new("Explosion", p)
				expl.BlastPressure = 50000
				expl.BlastRadius = 50
				expl.Position = p.Position
				p.Material = Enum.Material.CorrodedMetal
				p:BreakJoints()
			end)
			for i = 1, 150 do
				nuke.Size = Vector3.new(i, i, i)
				nuke.CFrame = opos
				wait(0.08)
			end
			nuke:Destroy()
		end
	end)
end)
plrwin:drawButton(1/3, 'No Tools', function()
	tk.dp(cval, function(p)
		for _, t in pairs(p.Backpack:GetChildren()) do
			t:Destroy()
		end
	end)
end)
plrwin:drawButton(1/3, 'Take Tools', function()
	tk.dp(cval, function(p)
		for _, t in pairs(p.Backpack:GetChildren()) do
			t.Parent = game:service'Players'.LocalPlayer.Backpack
		end
	end)
end)
plrwin:drawButton(1/3, 'BTools', function()
	tk.dp(cval, function(p)
		local a = Instance.new("HopperBin")
		a.BinType = "GameTool"
		a.Parent = p.Backpack
		local a = Instance.new("HopperBin")
		a.BinType = "Clone"
		a.Parent = p.Backpack
		local a = Instance.new("HopperBin")
		a.BinType = "Hammer"
		a.Parent = p.Backpack
	end)
end)
plrwin:drawButton(1/3, 'Hotdog', function()
	tk.dp(cval, function(p)
		if p.Character and tk.gt(p) then
			topkek.tools.util.weenieHutJunior(p)
		end
	end)
end)
plrwin:drawButton(1/3, 'Quicksand', function()
	tk.dp(cval, function(z)
		if z.Character and z.Character:FindFirstChild("Humanoid") then
			local tor = tk.gt(z)
			local hole = Instance.new("Part", z.Character)
			hole.Anchored = true
			hole.Name = "Hole"
			hole.FormFactor = Enum.FormFactor.Custom
			hole.Size = Vector3.new(7, 1, 7)
			hole.CanCollide = false
			hole.CFrame = tor.CFrame * CFrame.new(0,-3.3,0)
			hole.BrickColor = BrickColor.new("Cool yellow")
			hole.Material = Enum.Material.Sand
			local hm = Instance.new("CylinderMesh", hole)
			tor.Anchored = true
			if z.Character:FindFirstChild("Humanoid") then
				z.Character.Humanoid.Jump = true
			end
			for x,m in pairs(z.Character:GetChildren()) do
				if m:IsA("BasePart") or m:IsA("MeshPart") then
					m.CanCollide = false
				end
			end
			for i=1,75 do
				tor.CFrame=tor.CFrame*CFrame.new(0,-0.1,0)
				wait(0.06)
			end
			tor.CFrame=tor.CFrame*CFrame.new(0,
				-500,0
			)
			z.Character.Humanoid.Health = 0
		end
	end)
end)
plrwin:drawButton(1/3, 'Insane', function()
	tk.dp(cval, function(p)
		if p.Character and tk.gt(p) then
			for i,v in pairs(tk.gt(p):GetChildren()) do
				if v:IsA("Motor6D") then
					spawn(function()
						while v do
							v.C0=v.C0*CFrame.Angles(math.random(-180,180),math.random(-180,180),math.random(-180,180))
							wait()
						end
					end)
				end
			end
		end
	end)
end)
plrwin:drawButton(1/3, 'Invisible', function()
	tk.dp(cval, function(p)
		tk.rco(p.Character, 'BasePart', 'Transparency', 1)
		tk.rco(p.Character, 'MeshPart', 'Transparency', 1)
	end)
end)
plrwin:drawButton(1/3, 'Visible', function()
	tk.dp(cval, function(p)
		tk.rco(p.Character, 'BasePart', 'Transparency', 0)
		tk.rco(p.Character, 'MeshPart', 'Transparency', 0)
	end)
end)
plrwin:drawButton(1/3, 'Bighead', function()
	tk.dp(cval, function(z)
		if z.Character then
			if z.Character:FindFirstChild('Head') then
				z.Character.Head.Mesh.Scale=Vector3.new(5,5,5)
			end
		end
	end)
end)
plrwin:drawButton(1/3, 'Goldify', function()
	tk.dp(cval, function(z)
		if z.Character then
			tk.rco(z.Character, 'BasePart', 'Material', 'Marble')
			tk.rco(z.Character, 'MeshPart', 'Material', 'Marble')
			tk.rco(z.Character, 'BasePart', 'BrickColor', BrickColor.new('Bright yellow'))
			tk.rco(z.Character, 'MeshPart', 'BrickColor', BrickColor.new('Bright yellow'))
		end
	end)
end)
plrwin:drawButton(1/3, 'Neon', function()
	tk.dp(cval, function(z)
		if z.Character then
			tk.rco(z.Character, 'BasePart', 'Material', 'Neon')
			tk.rco(z.Character, 'MeshPart', 'Material', 'Neon')
		end
	end)
end)
plrwin:drawButton(1/3, 'Shiny', function()
	tk.dp(cval, function(z)
		if z.Character then
			tk.rco(z.Character, 'BasePart', 'Reflectance', 1)
			tk.rcm(z.Character, 'MeshPart')
		end
	end)
end)
plrwin:drawButton(1/3, 'Shrek', function()
	tk.dp(cval, function(z)
		if z.Character then
			local pchar = z.Character
			for i,v in pairs(pchar:GetChildren()) do
				if v:IsA("Hat") or v:IsA("Accessory") or v:IsA("CharacterMesh") or v:IsA("Shirt") or v:IsA("Pants") then
					v:Destroy()
				end
			end
			for i,v in pairs(pchar.Head:GetChildren()) do
				if v:IsA("Decal") or v:IsA("SpecialMesh") then
					v:Destroy()
				end
			end
			
			local mesh = Instance.new("SpecialMesh", pchar.Head)
			mesh.MeshType = "FileMesh"
			pchar.Head.Mesh.MeshId = "http://www.roblox.com/asset/?id=19999257"
			pchar.Head.Mesh.Offset = Vector3.new(-0.1, 0.1, 0)
			pchar.Head.Mesh.TextureId = "http://www.roblox.com/asset/?id=156397869"
			
			local Shirt = Instance.new("Shirt", z.Character)
			local Pants = Instance.new("Pants", z.Character)
			
			Shirt.ShirtTemplate = "rbxassetid://133078194"
			Pants.PantsTemplate = "rbxassetid://133078204"
		end
	end)
end)
plrwin:drawButton(1/3, 'Duck', function()
	tk.dp(cval, function(z)
		if z.Character then
			local pchar = z.Character
		    for i,v in pairs(pchar:GetChildren()) do
			    if v:IsA("Hat") or v:IsA("Accessory") then
				    v:Destroy()
			    end
		    end
		    local duck = Instance.new("SpecialMesh", z.Character.HumanoidRootPart)
		    duck.MeshType = "FileMesh"
		    duck.MeshId = "http://www.roblox.com/asset/?id=9419831"
		    duck.TextureId = "http://www.roblox.com/asset/?id=9419827"
		    duck.Scale = Vector3.new(5, 5, 5)
		    tk.rco(z.Character, 'Instance', 'Transparency', 1)
			z.Character.HumanoidRootPart.Transparency = 0
		end
	end)
end)
plrwin:drawButton(1/3, 'Spheres', function()
	tk.dp(cval, function(z)
		if z.Character then
			tk.rco(z.Character, 'BasePart', 'Shape', 'Cylinder')
		end
	end)
end)
plrwin:drawButton(1/3, 'Big', function()
	tk.dp(cval, function(z)
		if z.Character then
			topkek.tools.util.scalePlayer(5, z)
		end
	end)
end)
plrwin:drawButton(1/3, 'Small', function()
	tk.dp(cval, function(z)
		if z.Character then
			topkek.tools.util.scalePlayer(5, z)
		end
	end)
end)
plrwin:drawButton(1/3, 'Giraffe', function()
	tk.dp(cval, function(z)
		if z.Character then
			local char=z.Character
			local h=char.Head
			local tor=char:FindFirstChild("Torso")
			if not tor then return end
			tor.Neck.C0=tor.Neck.C0*CFrame.new(0,0,5)
			local fn=Instance.new("Part",char)
			fn.Size=Vector3.new(1,5.5,1)
			fn.Name="FakeNeck"
			fn.Anchored=false
			fn.CanCollide=false
			if char:FindFirstChild("Body Colors") then
				fn.BrickColor=char["Body Colors"].HeadColor
			end
			local cm=Instance.new("CylinderMesh",fn)
			local we=Instance.new("Weld",h)
			we.Part0=h
			we.Part1=fn
			we.C1=we.C1*CFrame.new(0,2.6,0)
		end
	end)
end)
plrwin:drawButton(1/3, 'Dab', function()
	tk.dp(cval, function(z)
		if z.Character and z.Character:FindFirstChild("Torso") then
			local chr = z.Character
			chr.Animate.Disabled = true
	        chr.Torso["Left Shoulder"].C1 = CFrame.new(0, 0.699999988, 0, 0.939692616, 0, -0.342020124, -0.330366075, -0.258819044, -0.907673359, -0.0885213241, 0.965925813, -0.243210346)
	        chr.Torso["Right Shoulder"].C1 = CFrame.new(-0.600000024, 0.5, -0.200000003, 0.664462984, 0.241844743, 0.707106769, -0.664462984, -0.241844788, 0.707106769, 0.342020154, -0.939692616, -3.09086197e-008)
	        chr.Torso["Neck"].C1 = CFrame.new(0, -0.600000024, 0, -0.866025388, 0.5, 0, -0.171010137, -0.29619807, 0.939692616, 0.469846278, 0.813797653, 0.342020124)
		end
	end)
end)
plrwin:drawButton(1/3, 'Force Follow', function()
	tk.dp(cval, function(z)
		game:GetService("RunService"):BindToRenderStep("_", 0, function()
			z.Character.Humanoid:MoveTo(topkek.lplr.Character.Head.Position)
		end)
	end)
end)
plrwin:drawButton(1/3, 'Camlock', function()
	tk.dp(cval, function(z)
		z.CameraMode = "LockFirstPerson"
	end)
end)
--// SERVER //--
local servwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Server').Container)
local detailWin = servwin:drawContainer(1, 100, nil, nil, 18)
detailWin:drawText(1, 'Job ID: ' .. (game.JobId and (game.JobId ~= "") or "???"))
detailWin:drawText(1, 'Game Name: ' .. game:service'MarketplaceService':GetProductInfo(game.PlaceId).Name)
detailWin:drawText(1, 'Creator Name: ' .. game:GetService('Players'):GetNameFromUserIdAsync(game.CreatorId))
servwin:drawButton(1/2, 'Shutdown', function()
	workspace.Gravity = 0/0
end)
servwin:drawButton(1/2, 'Clear', function()
	for i,v in pairs(game:service'Workspace':GetChildren()) do
		if (not v:IsA("Terrain"))and(v.Name~="Camera") then
			v:Destroy()
		end
	end
end)
servwin:drawButton(1/2, 'Baseplate', function()
	for X = -2500, 2500, 512 do
		for Z = -2500, 2500, 512 do
			local P = Instance.new("Part")
		    P.Anchored = true
		    P.Locked = true
		    P.Size = Vector3.new(512,3,512)
		    P.CFrame = CFrame.new(X,0,Z)
		    P.BrickColor = BrickColor.Green()
		    P.Parent = game:service'Workspace'
		end
	end
end)
servwin:drawButton(1/2, 'Reset', function()
	for i,v in pairs(game:service'Workspace':GetChildren()) do
		if (not v:IsA("Terrain"))and(v.Name~="Camera") then
			v:Destroy()
		end
	end
	for X = -2500, 2500, 512 do
		for Z = -2500, 2500, 512 do
			local P = Instance.new("Part")
		    P.Anchored = true
		    P.Locked = true
		    P.Size = Vector3.new(512,3,512)
		    P.CFrame = CFrame.new(X,0,Z)
		    P.BrickColor = BrickColor.Green()
		    P.Parent = game:service'Workspace'
		end
	end
	for i, v in pairs(game:GetService('Players'):GetPlayers()) do
		local a1 = Instance.new("Model", game:service'Workspace')
		local a2 = Instance.new("Part", game:service'Workspace')
		a2.CanCollide = true
		a2.Anchored = true
		a2.CFrame = CFrame.new(10000, 10000, 10000)
		a2.Name = "Torso"
		local a3 = Instance.new("Humanoid", a1)
		a3.MaxHealth=100;a3.Health=100
		v.Character = a1
		a3.Health=0
	end
end)
servwin:drawButton(1, 'Remove Sounds', function()
	tk.rcm(game, 'Sound')
end)
servwin:addSpacing()
servwin:drawButton(1, 'Break All', function()
	workspace:BreakJoints(workspace:GetChildren())
end)
local gravInp
servwin:drawButton(1/3, 'Gravity', function()
	if not tonumber(gravInp.Text) then return end
	workspace.Gravity = tonumber(gravInp.Text)
end)
gravInp = servwin:drawTextBox(2/3, '')
servwin:addSpacing()
servwin:drawButton(1, 'Reset Lighting', function()
	local l = game:service'Lighting'
	l.Ambient = Color3.new(0, 0, 0)
	l.Brightness = 1
	l.GlobalShadows = true
	l.Outlines = true
	l.FogEnd = 100000
	l.FogStart = 0
	l:SetMinutesAfterMidnight(12*60)
end)
local brightInp
servwin:drawButton(1/3, 'Brightness', function()
	if not tonumber(brightInp.Text) then return end
	game:GetService('Lighting').Brightness = tonumber(brightInp.Text)
end)
brightInp = servwin:drawTextBox(2/3, '100')
local fogInp
servwin:drawButton(1/3, 'Fog', function()
	if not tonumber(fogInp.Text) then return end
	game:GetService('Lighting').FogEnd = tonumber(fogInp.Text)
end)
fogInp = servwin:drawTextBox(2/3, '0')
local timeInp
servwin:drawButton(1/3, 'Hour', function()
	if not tonumber(timeInp.Text) then return end
	game:GetService('Lighting'):SetMinutesAfterMidnight(60*tonumber(timeInp.Text))
end)
timeInp = servwin:drawTextBox(2/3, '12')
servwin:addSpacing()
-- private server crap
local privateToggle
local privStatus = false
privateToggle = servwin:drawButton(1, 'Private Server OFF', function()
	if privStatus == false then
		privStatus = true
		privateToggle.Text = 'Private Server ON'
		topkek.banmgr.makePrivate()
	else
		privateToggle.Text = 'Private Server OFF'
		topkek.banmgr.unprivate()
	end
end)
servwin:addSpacing()
servwin:drawText(1, 'Whitelist')
local plrAddInp
servwin:drawButton(1/3, 'Add', function()
	topkek.banmgr.doWhitelist(plrAddInp.Text)
	ReorderWL()
end)
plrAddInp = servwin:drawTextBox(2/3, '')
wlCont = servwin:drawScrollingContainer(100)
function ReorderWL()
	local wl = topkek.banmgr.whitelist
	for i,v in pairs(wlCont:GetChildren()) do
		v:Destroy()
	end
	wlCont:setDrawY(3)
	for i,v in pairs(wl) do
		wlCont:drawText(2/3, v)
		wlCont:drawButton(1/3, 'Remove', function()
			topkek.banmgr.unwhitelist(v)
			ReorderWL()
		end) 
	end
end
ReorderWL()
--// LOCALPLAYER //--
local lpwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('LocalPlayer').Container)
lpwin:drawButton(1, 'Reset Camera', function()
	game.Workspace.CurrentCamera:remove()
	wait(.1)
	game.Workspace.CurrentCamera.CameraSubject = topkek.lplr.Character.Humanoid or 
		game.Workspace[topkek.lplr.Name].Humanoid
	game.Workspace.CurrentCamera.CameraType = "Custom"
end)
lpwin:drawButton(1, 'Respawn', function()
	local a1 = Instance.new("Model", game:service'Workspace')
	local a2 = Instance.new("Part", game:service'Workspace')
	a2.CanCollide = true
	a2.Anchored = true
	a2.CFrame = CFrame.new(10000, 10000, 10000)
	a2.Name = "Torso"
	local a3 = Instance.new("Humanoid", a1)
	a3.MaxHealth=100;a3.Health=100
	topkek.lplr.Character = a1
	a3.Health=0
end)
lpwin:drawButton(1, 'Rejoin', function()
	game:GetService('TeleportService'):Teleport(game.PlaceId)
end)
lpwin:addSpacing()
lpwin:drawButton(1/2, 'God', function()
	if topkek.lplr.Character:FindFirstChild("Humanoid") then
		topkek.lplr.Character.Humanoid.MaxHealth = math.huge
		topkek.lplr.Character.Humanoid.Health = math.huge
	end
end)
lpwin:drawButton(1/2, 'Semigod', function()
	if topkek.lplr.Character:FindFirstChild("Humanoid") then
		topkek.lplr.Character.Humanoid.MaxHealth = 9e9
		topkek.lplr.Character.Humanoid.Health = 9e9
	end
end)
Loopgod = false
lpwin:drawButton(1, 'Loopgod', function()
	if Loopgod == false then
		Loopgod = true
		spawn(function()
			repeat
				topkek.lplr.Character.Humanoid.MaxHealth = math.huge
				topkek.lplr.Character.Humanoid.Health = math.huge
				wait()
			until Loopgod == false
		end)	
	else
		Loopgod = false
	end
end)
lpwin:addSpacing()
plrwin:addSpacing()
local Lev, Clip, Fly
lpwin:drawButton(1/2, 'Levitate', function()
	if Lev == true then
		Lev = false
		return
	end
	Lev = true
	repeat
		topkek.lplr.Character.Humanoid:ChangeState(10)
		wait(0)
	until Lev == false
end)
lpwin:drawButton(1/2, 'Noclip', function()
	if Clip == true then
		Clip = false
		return
	end
	Clip = true
	game:GetService("RunService").Stepped:connect(function()
		tk.gt(topkek.lplr).CanCollide = not Clip
		topkek.lplr.Character.Head.CanCollide = not Clip
		topkek.lplr.Character.HumanoidRootPart.CanCollide = not Clip
		if topkek.lplr.Character.UpperTorso then
			topkek.lplr.Character.LowerTorso.CanCollide = not Clip
		end
	end)
	topkek.lplr.Character.HumanoidRootPart.Changed:connect(function()
		tk.gt(topkek.lplr).CanCollide = not Clip
		topkek.lplr.Character.Head.CanCollide = not Clip
		topkek.lplr.Character.HumanoidRootPart.CanCollide = not Clip
		if topkek.lplr.Character.UpperTorso then
			topkek.lplr.Character.LowerTorso.CanCollide = not Clip
		end
	end)
end)
lpwin:drawButton(1/2, 'Fly', function()
	if Fly == true then
		Fly = false
		return
	end
	Fly = true
  local mouse=game.Players.LocalPlayer:GetMouse''
  localplayer=game.Players.LocalPlayer
  game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
  local torso = game.Players.LocalPlayer.Character.HumanoidRootPart
  local speed=0
  local keys={a=false,d=false,w=false,s=false} 
  local e1
  local e2
  local function start()
   local pos = Instance.new("BodyPosition",torso)
   local gyro = Instance.new("BodyGyro",torso)
   pos.Name="EPIXPOS"
   pos.maxForce = Vector3.new(math.huge, math.huge, math.huge)
   pos.position = torso.Position
   gyro.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
   gyro.cframe = torso.CFrame
   repeat
    wait()
    localplayer.Character.Humanoid.PlatformStand=true
    local new=gyro.cframe - gyro.cframe.p + pos.position
    if not keys.w and not keys.s and not keys.a and not keys.d then
     speed=1
    end 
    if keys.w then 
     new = new + workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed=speed+0.01
    end
    if keys.s then 
     new = new - workspace.CurrentCamera.CoordinateFrame.lookVector * speed
     speed=speed+0.01
    end
    if keys.d then 
     new = new * CFrame.new(speed,0,0)
     speed=speed+0.01
    end
    if keys.a then 
     new = new * CFrame.new(-speed,0,0)
     speed=speed+0.01
    end
    if speed>5 then
     speed=5
    end
    pos.position=new.p
    if keys.w then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(-math.rad(speed*15),0,0)
    elseif keys.s then
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame*CFrame.Angles(math.rad(speed*15),0,0)
    else
     gyro.cframe = workspace.CurrentCamera.CoordinateFrame
    end
   until not Fly
   if gyro then gyro:Destroy() end
   if pos then pos:Destroy() end
   flying=false
   localplayer.Character.Humanoid.PlatformStand=false
   speed=0
  end
  e1=mouse.KeyDown:connect(function(key)
   if not torso or not torso.Parent then flying=false e1:disconnect() e2:disconnect() return end
   if key=="w" then
    keys.w=true
   elseif key=="s" then
    keys.s=true
   elseif key=="a" then
    keys.a=true
   elseif key=="d" then
    keys.d=true
   end
  end)
  e2=mouse.KeyUp:connect(function(key)
   if key=="w" then
    keys.w=false
   elseif key=="s" then
    keys.s=false
   elseif key=="a" then
    keys.a=false
   elseif key=="d" then
    keys.d=false
   end
  end)
  start()
end)
lpwin:drawButton(1/2, 'Highjump', function()
	local thrust = Instance.new("BodyVelocity")
	game:GetService('UserInputService').InputBegan:connect(function(i, b)
		if i.KeyCode == Enum.KeyCode.Space then
			print("Got jump")
			coroutine.resume(coroutine.create(function()
				thrust.Parent = game.Players.LocalPlayer.Character.PrimaryPart
				thrust.velocity = Vector3.new(0,50,0)
				thrust.maxForce = Vector3.new(0,4e+050,0)
				wait(0.2)
				thrust.Parent = nil 
			end))
		end
	end)
end)
lpwin:addSpacing()
local apprInp
lpwin:drawButton(1/3, 'Appearance', function()
	local id = 0
	if tonumber(apprInp.Text) then
		id = tonumber(apprInp.Text)
	else
		id = game:GetService('Players'):GetUserIdFromNameAsync(apprInp.Text)
	end
	if topkek.lplr.Character:FindFirstChild("Humanoid") then
		topkek.lplr.Character.Humanoid.Health = 0
	end
	topkek.lplr.CharacterAppearance = 'https://assetgame.roblox.com/Asset/CharacterFetch.ashx?userId=' .. tostring(id)
end)
apprInp = lpwin:drawTextBox(2/3, 'ROBLOX')
local teamInp
lpwin:drawButton(1/3, 'Team', function()
	topkek.lplr.TeamColor = BrickColor.new(teamInp.Text)
end)
teamInp = lpwin:drawTextBox(2/3, 'Bright red')
lpwin:drawButton(1/2, 'Naked', function()
	topkek.lplr:ClearCharacterAppearance()
end)
lpwin:drawButton(1/2, 'Neutral', function()
	topkek.lplr.Neutral = true
end)
lpwin:addSpacing()
lpwin:drawButton(1/2, 'Orb', function()
	game.Players.LocalPlayer.Character = nil
	--lp:Destroy()
	local cam = game.Workspace.CurrentCamera
	local m = Instance.new("Model", game.Workspace)
	m.Name = game.Players.LocalPlayer.Name
	local hum = Instance.new("Humanoid", m)
	hum.Health = 0
	hum.MaxHealth = 0
	local orb = Instance.new("Part", m)
	orb.Size = Vector3.new(1, 1, 1)
	orb.Shape = "Ball"
	orb.Name = "Head"
	orb.Anchored = true
	orb.CanCollide = true
	orb.BottomSurface = Enum.SurfaceType.Smooth
	orb.TopSurface = Enum.SurfaceType.Smooth
	orb.Transparency = 0
	spawn(function()
		while true do
			wait(0.1)
			if orb then
				orb.BrickColor = BrickColor.Random()
			else break end
		end
	end)
	cam.CameraSubject = orb
	cam.CameraType = Enum.CameraType.Fixed
	game:GetService("RunService").RenderStepped:connect(function()
		orb.CFrame = cam.CoordinateFrame * CFrame.new(0, -2, -6)
	end)
	game.Players.LocalPlayer.Chatted:connect(function(a)
		game:GetService("Chat"):Chat(orb, a)
	end)
end)
lpwin:drawButton(1/2, 'Freecam', function()
	local cam = game.Workspace.CurrentCamera
	cam.CameraType = "Fixed"
	cam.CameraSubject = nil
	topkek.lplr.Character = nil
end)
lpwin:drawButton(1/2, 'NoGrav', function()
	if topkek.lplr.Character then
		for x,m in pairs(topkek.lplr.Character:GetChildren()) do
			if m:IsA("BasePart") then
				local bf = Instance.new("BodyForce", m)
				bf.force = Vector3.new(0, 192.25, 0) * m:GetMass()
			end
			if m:IsA("Hat") or m:IsA("Accessory") then
				if m:findFirstChild("Handle") then
					local bf = Instance.new("BodyForce", m.Handle)
					bf.force = Vector3.new(0, 192.25, 0) * m.Handle:GetMass()
				end
			end
		end
	end
end)
lpwin:drawButton(1/2, 'Trowel', function()
	topkek.tools.util.trowel()
end) 
lpwin:addSpacing()
lpwin:drawButton(1/2, 'Fedora', function()
	local hats={
		98346834,
		215751161,
		119916949,
		72082328,
		147180077,
		100929604,
		63043890,
		1285307,
		1029025,
		334663683,
		259423244
	}
	game:GetObjects("rbxassetid://" .. tostring(hats[math.random(1,#hats)]))[1].Parent = topkek.lplr.Character
end)
lpwin:drawButton(1/2, 'Rainbow Name', function()
	topkek.lplr.Neutral = false
	repeat
		wait()
		topkek.lplr.TeamColor = BrickColor.Random()
	until not topkek.lplr.Character.Humanoid
end)
local tagInp
lpwin:drawButton(1/3, 'Tag', function()
	local len = 10
	local bb = Instance.new("BillboardGui")
	bb.Parent = topkek.lplr.Character.Head
	bb.Adornee = topkek.lplr.Character.Head
	bb.AlwaysOnTop = true
	bb.Enabled = true
	bb.Size = UDim2.new(len, 0, 1.5, 0)
	bb.Name = "tag"
	bb.StudsOffset = Vector3.new(0, 3, 0)
	--local fr = Instance.new("Frame")
	--fr.Parent = bb
	--fr.Size = UDim2.new(1, 0, 1, 0)
	--fr.Style = Enum.FrameStyle.RobloxRound
	local tl = Instance.new("TextLabel")
	tl.Parent = bb
	tl.Font = Enum.Font.Code
	tl.BackgroundTransparency = 1
	tl.TextScaled = true
	tl.TextColor3 = Color3.new(15/255, 15/255, 15/255)
	tl.Size = UDim2.new(1, 0, 1, 0)
	tl.Text = tagInp.Text
	tl.Name = "trutag"
	tl.Visible = true
	tl.ZIndex = 2
end)
tagInp = lpwin:drawTextBox(2/3, '')
--// SCRIPTS //--
local scriptwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Scripts').Container)
local search = scriptwin:drawTextBox(1,'')
local origy = scriptwin:getDrawY()
scriptwin:addSpacing()
scriptwin:addSpacing()
local scripts = game:GetObjects("rbxassetid://376553985")[1]
local container = {}
function MakeList(condition)
	for i,v in pairs(scriptwin:GetChildren()) do
		if v.Name == "Script" then
			v:Destroy()
		end
	end
	scriptwin:setDrawY(origy)
	for i, v in pairs(scripts:GetChildren()) do
		if string.find(v.Name:lower(), condition:lower()) or (condition == "") or (condition == " ") then
			local scr = scriptwin:drawButton(1, v.Name, function()
				spawn(function() loadstring(v.Source)() end)
			end, 25)
			scr.Name = 'Script'
		end
	end
end
game:GetService("UserInputService").InputChanged:connect(function(inp)
	if inp.UserInputType == Enum.UserInputType.TextInput then
		if search:IsFocused() then
			MakeList(search.Text)
		end
	end
end)
MakeList('')
--// DESTRUCTION // --
local destwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Destruction').Container)
local decals, seldec = destwin:drawScrollingContainer(100)
seldec = destwin:drawText(1, 'Selected Decal: None')
cursel = nil
local decs = {
	{'Rain', '574772793'},
	{'Robbie', '574773630'},
	{'Pepe', '244905904'},
	{'Troll Face', '48308661'},
	{'Jeff', '109129888'},
	{'Shrek', '170539018'},
	{'Doge', '133720697'},
	{'Dat Boi', '409578848'},
}
for _, v in pairs(decs) do
	local b = decals:drawButton(1, v[1], function()seldec.Text="Selected Decal: " ..v[2] cursel=v[2] end,20)
	topkek.tools.gui:addLeftIcon(b,'rbxassetid://'..v[2],20)
end
destwin:drawButton(1, 'Spam Decal', function()
	if cursel ~= nil then
		topkek.tools.util.recurseDecal(tonumber(cursel))
	end
end)
destwin:drawButton(1, 'Spam Particles', function()
	if cursel ~= nil then
		topkek.tools.util.recurseParticles(tonumber(cursel))
	end
end)
destwin:drawButton(1, 'Spam Both', function()
	if cursel ~= nil then
		topkek.tools.util.recurseUltimate(tonumber(cursel))
	end
end)
destwin:drawButton(1, 'Rollback', function()
	tk.rcm(workspace, 'Decal')
	tk.rcm(workspace, 'ParticleEmitter')
end)
destwin:addSpacing()
destwin:drawButton(1, '666', function()
	for i,v in next,workspace:children''do
	 	if(v:IsA'BasePart')then
	    me=v;
	    bbg=Instance.new('BillboardGui',me);
	    bbg.Name='stuf';
	    bbg.Adornee=me;
	    bbg.Size=UDim2.new(2.5,0,2.5,0)
	    --bbg.StudsOffset=Vector3.new(0,2,0)
	    tlb=Instance.new'TextLabel';
	    tlb.Text='666 666 666 666 666 666';
	    tlb.Font='SourceSansBold';
	    tlb.FontSize='Size48';
	    tlb.TextColor3=Color3.new(1,0,0);
	    tlb.Size=UDim2.new(1.25,0,1.25,0);
	    tlb.Position=UDim2.new(-0.125,-22,-1.1,0);
	    tlb.BackgroundTransparency=1;
	    tlb.Parent=bbg;
	    end;end;
	    --coroutine.wrap(function()while wait''do
	      s=Instance.new'Sound';
	      s.Parent=workspace;
	      s.SoundId='rbxassetid://152840862';
	      s.Pitch=1;
	      s.Volume=1;
	      s.Looped=true;
	      s:play();
	      --end;end)();
	      function xds(dd)
	        for i,v in next,dd:children''do
	          if(v:IsA'BasePart')then
	            v.BrickColor=BrickColor.new'Really black';
	            v.TopSurface='Smooth';
	            v.BottomSurface='Smooth';
	            s=Instance.new('SelectionBox',v);
	            s.Adornee=v;
	            s.Color=BrickColor.new'Really red';
	            a=Instance.new('PointLight',v);
	            a.Color=Color3.new(1,0,0);
	            a.Range=15;
	            a.Brightness=5;
	            f=Instance.new('Fire',v);
	            f.Size=19;
	            f.Heat=22;
	            end;
	            game.Lighting.TimeOfDay=0;
	            game.Lighting.Brightness=0;
	            game.Lighting.ShadowColor=Color3.new(0,0,0);
	            game.Lighting.Ambient=Color3.new(1,0,0);
	            game.Lighting.FogEnd=200;
	            game.Lighting.FogColor=Color3.new(0,0,0);
	        local dec = 'http://www.roblox.com/asset/?id=19399245';
	            local fac = {'Front', 'Back', 'Left', 'Right', 'Top', 'Bottom'}
	            --coroutine.wrap(function()
	            --for _,__ in pairs(fac) do
	            --local ddec = Instance.new("Decal", v)
	            --ddec.Face = __
	            --ddec.Texture = dec
	        --end end)()
	            if #(v:GetChildren())>0 then
	                   xds(v) 
	              end
	         end
	    end
	xds(game.Workspace)
end)
destwin:drawButton(1, 'Troll', function()
	topkek.tools.util.recurseUltimate('48308661')
	tk.play(154664102)
end)
destwin:addSpacing()
destwin:drawButton(1/2,'Colorize',function() -- when u skid off variable XDDDDDpranked
	local materiallist = 
	{Enum.Material.Plastic,Enum.Material.Wood,Enum.Material.Slate,Enum.Material.Concrete,Enum.Material.CorrodedMetal,
		Enum.Material.DiamondPlate,Enum.Material.Foil,Enum.Material.Grass,
		Enum.Material.Ice,Enum.Material.Marble,Enum.Material.Granite,Enum.Material.Brick,
		Enum.Material.Pebble,Enum.Material.Sand,Enum.Material.Sand,
		Enum.Material.Fabric,Enum.Material.SmoothPlastic,Enum.Material.Metal,Enum.Material.WoodPlanks,Enum.Material.Neon,Enum.Material.Cobblestone}
	local function r(where) 
		for _,v in pairs (where:GetChildren()) do 
		if v:IsA("BasePart") then 
		spawn(function() while wait(0.1) do v.Material = materiallist[math.random(#materiallist)] wait()   end end) end r(v) end end r(workspace)
end)
destwin:drawButton(1/2,'Materialize',function()
	local function r(where) 
 	for _,v in pairs (where:GetChildren()) do 
  	if v:IsA("BasePart") then 
   	spawn(function() while wait(0.1) do v.Transparency = math.random(0,1) wait()   end end) end r(v) end end r(workspace)
end)
destwin:drawButton(1/2,'Meshify',function()
	local enums={
		Enum.MeshType.Head;
		Enum.MeshType.Torso;
		Enum.MeshType.Wedge;
		Enum.MeshType.Brick;
		Enum.MeshType.Sphere;
		Enum.MeshType.Cylinder;
	}
	tk.rcf('BasePart',function(o)
		local mesh = Instance.new('SpecialMesh', o)
		mesh.MeshType = enums[math.random(1,#enums)]
	end)
end)
destwin:drawButton(1/2,'Loop-Meshify',function()
	coroutine.wrap(function()
		while true do
			local enums={
				Enum.MeshType.Head;
				Enum.MeshType.Torso;
				Enum.MeshType.Wedge;
				Enum.MeshType.Brick;
				Enum.MeshType.Sphere;
				Enum.MeshType.Cylinder;
			}
			tk.rcf('BasePart',function(o)
				if o:FindFirstChild("Mesh") then o.Mesh:Destroy() end
				local mesh = Instance.new('SpecialMesh', o)
				mesh.MeshType = enums[math.random(1,#enums)]
			end)
			wait(0.5)
		end
	end)()
end)
destwin:addSpacing()
destwin:drawButton(1, 'Rotations', function()
	tk.rcf('BasePart', function(o)
		o.Rotation = Vector3.new(math.random(0,180),math.random(0,180),math.random(0,180))
	end)
end)
destwin:drawButton(1, 'Collisions', function()
	tk.rcf('BasePart', function(o)
		o.CanCollide = false
	end)
end)
destwin:drawButton(1, 'Velocity', function()
	tk.rcf('BasePart', function(o)
		o.Velocity = Vector3.new(math.random(0,180),math.random(0,180),math.random(0,180))
	end)
end)
destwin:drawButton(1, 'Invisiblity', function()
	tk.rcf('BasePart', function(o)
		o.Transparency = 1
	end)
end)
destwin:drawButton(1, 'BreakJoints', function()
	tk.rcf('Model', function(o)
		o:BreakJoints()
	end)
end)
destwin:drawButton(1, 'Forces', function()
	tk.rcf('BasePart', function(o)
		local bf = Instance.new("BodyForce", o)
		bf.Force = Vector3.new(math.random(0,180)*5,math.random(0,180)*5,math.random(0,180)*5)
	end)
end)
destwin:drawButton(1, 'Brightness', function()
	tk.rcf('BasePart', function(o)
		local light = Instance.new("SpotLight", o)
		light.Brightness = 9e9
		light.Range = 60
	end)
end)
--// CATALOG //--
local catwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Catalog').Container)
local page, currentkeyword = 1, ""
local searchbar, search, makeCatalog, res = 0, 0, 0, {}
local searchbar = catwin:drawTextBox(2/3,'')
local search = catwin:drawButton(1/3, 'Search', function()
	page = 1
	currentkeyword = searchbar.Text
	makeCatalog(currentkeyword, page)
end)
local previous = catwin:drawButton(1/2, 'Previous Page', function()
	if page > 1 then
		page = page - 1
		makeCatalog(currentkeyword, page)
	end
end)
local previous = catwin:drawButton(1/2, 'Next Page', function()
	if page >= 1 then
		page = page + 1
		makeCatalog(currentkeyword, page)
	end
end)
local catalog_start = catwin:getDrawY()
function split(str,divider)
	local found = ""
	local results = {}
	for i=1,string.len(str) do
		if (string.lower(string.sub(str,i,i)) == string.lower(divider)) then
			table.insert(results, found)
			found = ""
		else
			found = found..string.sub(str,i,i)
		end
	end
	table.insert(results, found)
	return results
end
function GetName(nm)
	local spl = split(nm," ")
	local a,b,c,d,e=spl[1] or "",spl[2] or "",spl[3] or "", spl[4] or "", spl[5] or ""
	return (a.." "..b.." "..c.." "..d.." "..e)
end
function makeCatalog(keyword, page)
	local endpoint = "http://search.roblox.com/catalog/json?Category=6&Keyword="..keyword.."&IncludeNotForSale=false&ResultsPerPage=10&PageNumber="..tostring(page)
	local results = game:HttpGet(endpoint, true)
	local parse = game:GetService('HttpService'):JSONDecode(results)
	for i, v in pairs(res) do
		v:Destroy()
	end
	catwin:setDrawY(catalog_start)
	catwin:addSpacing()
	for i, v in pairs(parse) do
		local img = catwin:drawImage(1/2, 'https://www.roblox.com/Thumbs/Asset.ashx?width=420&height=420&assetId='..tostring(v['AssetId']), 50)
		local below = topkek.tools.util.Object("TextButton", {
			Parent = img;
			BackgroundColor3 = Color3.new(163/255, 57/255, 57/255);
			BorderSizePixel = 0;
			Position = UDim2.new(0, -45, 1, 5);
			Size = UDim2.new(0,img.AbsoluteSize.X, 0, 20);
			Font = 'SourceSans';
			FontSize = 'Size14';
			Text = GetName(v['Name']);
			TextSize = 14;
			TextColor3 = color3(199, 199, 199);
			TextStrokeTransparency = 0.5;
			ClipsDescendants = true;
		})
		below.MouseButton1Down:connect(function()
			local Model = Instance.new("Model", workspace)
			game:GetObjects('rbxassetid://'..tostring(v['AssetId']))[1].Parent = Model
			Model:MakeJoints()
			Model:MoveTo(topkek.lplr.Character.Head.Position)
		end)
		img.Size=UDim2.new(0,50,0,50)
		img.Position=img.Position+UDim2.new(0,45,0,0)
		if (i%2)==0 then
			catwin:setDrawY(catwin:getDrawY() + 25)
		end
		if (i==10) then
			catwin.main.CanvasSize = catwin.main.CanvasSize + UDim2.new(0,0,0,25)
		end
		table.insert(res,img)
	end
end
makeCatalog("", 1)
--// CMDS //--
cmdwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Commands').Container)
count = 0
for _, _ in pairs(cmd.commands.store) do count = count + 1 end
cmdwin:drawText(1, tostring(count) .. " Commands")
cmdwin:drawText(1, 'Chat Prefix: /')
local cmdlist = cmdwin:drawScrollingContainer(260)
for i, v in pairs(cmd.commands.fmtstore) do
	local xfmt = {}
	local str = "  ;" .. i .. " "
	for form in v:gmatch("[^%%]+") do
		if form ~= 'cmd' then
			if form == 'inf' then form = 'str' end
			str = str .. "{" .. form .. "} " 
		end
	end
	cmdlist:drawText(1, str)
end
--// MUSIC //--
musicwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Music').Container)
Sounds = {
	{"caramell", 2303479};
	{"epic", 27697743};
	{"rick", 2027611};	
	{"halo", 1034065};
	{"pokemon", 1372261};
	{"cursed", 1372257};
	{"extreme", 11420933};
	{"awaken", 27697277};
	{"alone", 27697392};
	{"mario", 1280470};
	{"choir", 1372258};
	{"chrono" ,1280463};
	{"dotr", 11420922};
	{"entertain", 27697267};
	{"fantasy", 1280473};
	{"final", 787};
	{"organ", 11231513};
	{"tunnel", 9650822}
}

local cursel
local xcursel = 0
scr = musicwin:drawScrollingContainer(230)
for i, v in pairs(Sounds) do
	scr:drawButton(1, v[1] .. " - " .. tonumber(v[2]), function()
		cursel.Text = "Currently Selected - " .. v[1]
		xcursel = v[2]
	end)
end

cursel = musicwin:drawText(1, "Currently Selected - None")
local setInp
musicwin:drawButton(1/3, "Set", function()
	if tonumber(setInp.Text) then
		cursel.Text = "Currently Selected - " .. setInp.Text
		xcursel = tonumber(setInp.Text)
	end
end)
setInp = musicwin:drawTextBox(2/3, '')
musicwin:drawButton(1, "Play", function()
	tk.rcm(game, 'Sound')
	tk.play(xcursel)	
end)
musicwin:drawButton(1, "Stop", function()
	tk.rcm(game, 'Sound')
end)
--// FACES //--
facwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Faces').Container)
local faces = {	
	{name='Rofl',id=47595647},
	{name='Sparta',id=74142203},
	{name='UJelly',id=48989071},
	{name='Troll',id=45120559},
	{name='Horse',id=62079221},
	{name='Angry',id=48258623},
	{name='Okey',id=62830600},
	{name='Yeaw',id=53646377},
	{name='Here',id=62677045},
	{name='Har',id=48260066},
	{name='Baby Sun',id=47596170},
	{name='LOL',id=48293007},
	{name='Sad',id=53645378},
	{name='Joseph Stalin',id=48290678},
	{name='Doge',id=130742396},
	{name='Forever Alone',id=156886272},
	{name='RickRoll',id=5104631},
	{name='Jim Carrey',id=74885351},
	{name='Meh IRL',id=237553381}
}
local cursel, xcursel = nil, 0
faclist = facwin:drawScrollingContainer(260)
for i,v in pairs(faces) do
	local btn = faclist:drawButton(1, v['name'], function()
		xcursel = v['id']
		cursel.Text = 'Currently Selected: ' .. v['name']
	end)
	topkek.tools.gui:addLeftIcon(btn,'rbxassetid://'..tostring(v['id']),20)
end
cursel = facwin:drawText(1, 'Currently Selected: None')
facwin:drawButton(1, 'Wear', function()
	if not (xcursel == 0) then
		if topkek.lplr.Character then
			tk.rcm(topkek.lplr.Character, 'Accessory')
			tk.rcm(topkek.lplr.Character, 'Hat')
			topkek.tools.util.applyFace(xcursel)
		end
	end
end)
--// SETTINGS // --
setwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Settings').Container)
setwin:drawText(1, 'Patch: ' .. topkek.patch)
setwin:drawText(1, 'Devnote: foh skids')
setwin:drawText(1, [[
	=== CREDITS ===
	
	Variable - retard that created Stella
	KrystalTeam - provided critical design tips & advice
	Circumvention - lol joey salads
	
	Thanks to everyone that supported T0PK3K 4.0!
	
]], 260)
--// BANLIST //--
banwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Banlist').Container)
local plrBanInp
banwin:drawButton(1/3, 'Add', function()
	topkek.settings.get()
	table.insert(topkek.settingsTable['Bans'], plrBanInp.Text)
	topkek.settings.write()
	UpdateBanlist()
end)
plrBanInp = banwin:drawTextBox(2/3, '')
banCont = banwin:drawScrollingContainer(288)
function UpdateBanlist(x)
	topkek.settings.get()
	local wl = x or topkek.settingsTable['Bans']
	for i,v in pairs(banCont:GetChildren()) do
		v:Destroy()
	end
	banCont:setDrawY(3)
	for i,v in pairs(wl) do
		banCont:drawText(2/3, v)
		banCont:drawButton(1/3, 'Remove', function()
			for x, m in pairs(wl) do
				if m == v then
					table.remove(topkek.settingsTable['Bans'], x)
					topkek.settings.write()
					UpdateBanlist()
					topkek.banmgr.bans = topkek.settingsTable['Bans']
				end
			end
		end) 
	end
end
UpdateBanlist()
--// HATS //--
hatwin = topkek.tools.gui:hookContainer(topkek.tools.util.getContainer('Hats').Container)
local hats={	
	{name='Dominus Empyreus',id=21070012},
	{name='Dominus Vespertilio',id=96103379},
	{name='Dominus Infernus',id=31101391},
	{name='Dominus Rex',id=250395631},
	{name='Dominus Frigidus',id=48545806},
	{name='Dominus Astra',id=162067148},
	{name='Dominus Aureus',id=138932314},
	{name='DIY Dominus Empyreus',id=151789690},
	{name='Dominus Messor',id=64444871},
	{name='Demon Skeleton Wings',id=133554007},
	{name='Gilded Wings of Glory',id=250405532},
	{name='Majestic Ice Wings',id=188702967},
	{name='Black Wings',id=215719598},
	{name='Clockworks Shades',id=11748356},
	{name='Faerie Wings',id=19399896},
	{name='Orinthian Wings',id=223751505},
	{name='Clockworks Headphones',id=1235488},
	{name='Perfectly Legitimate Business Hat',id=19027209},
	{name='Sparkling Angel Wings',id=192557913},
	{name='Commander Crows Wings',id=133553855},
	{name='Sunfire Wings',id=158068470},
	{name='Royal Faerie Wings',id=119916756},
	{name='Wings of Freedom',id=164174048},
	{name='Firebrand Wings',id=128160626},
	{name='Frozen Wings',id=136758613},
	{name='Webbed Wings',id=120507280},
	{name='Gargoyle Wings',id=120507201},
	{name='Bat Wings',id=19399858},
	{name='Wings of Fire',id=136758532},
	{name='Headrow',id=1082935},
	{name='Rubber Duckie',id=9254254},
	{name='Valkyrie Helm',id=1365767},
{name='Hockey Mask',id=5161514}}
local searchi = hatwin:drawButton(1, '', function()end)
dropx = GUI.DropDown.New(UDim2.new(0, 0, 0, 0), UDim2.new(1, 0, 1, 0), searchi, {'All'})
function fixPlayerDropi()
	local t = {'All'}
	for i, v in pairs(game.Players:GetPlayers()) do
		table.insert(t, v.Name)
	end
	dropx.SetTable(t)
end
game.Players.PlayerAdded:connect(function()
	fixPlayerDropi()
end)
game.Players.PlayerRemoving:connect(function()
	fixPlayerDropi()
end)
local eval = 'All'
dropx.Changed(function(p) eval = p end)
fixPlayerDrop()

local hatInp
hatlist = hatwin:drawScrollingContainer(260)
for i,v in pairs(hats) do
	hatlist:drawButton(1, v['name'], function()
		hatInp.Text = tostring(v['id']) 
	end)
end
hatwin:drawButton(1/3, 'Wear', function()
	local hat = game:GetObjects("rbxassetid://"..tonumber(hatInp.Text))[1]
	tk.dp(eval, function(x)
		if x.Character then
			hat:Clone().Parent = x.Character
		end
	end)
end)


hatInp = hatwin:drawTextBox(2/3, '')
topkek.tools.animator.initialAnimation()
topkek.banmgr.init()