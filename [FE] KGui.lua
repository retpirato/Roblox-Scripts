--Define le values list by victiny1223
lplr = game.Players.LocalPlayer
lchar = lplr.Character
lhum = lchar:FindFirstChild("Humanoid")
lrootpart = lhum:FindFirstChild("HumanoidRootPart")
torso = lchar:FindFirstChild("Torso")
animator = lhum.Animator
backpack = lplr.Backpack
ls = torso:FindFirstChild("Left Shoulder")
ra = lchar:FindFirstChild("Right Arm")
lh = torso:FindFirstChild("Left Hip")
la = lchar:FindFirstChild("Left Arm")
rs = torso:FindFirstChild("Right Shoulder")
rh = torso:FindFirstChild("Right Hip")
rl = lchar:FindFirstChild("Right Leg")
ll = lchar:FindFirstChild("Left Leg")
neck = torso:FindFirstChild("Neck")
v3 = Vector3.new
cf = CFrame
create = Instance.new
pgui = lplr.PlayerGui --game.CoreGui 
--[[To do:
	1. Make a working FE kill gui
		a) Position to bottom right [./]
		b) Finish it :)
	2. Add tp into it (tp to other player)

--]]
local gui = Instance.new("ScreenGui")
gui.Parent = pgui
local generalframe = Instance.new("Frame")
generalframe.Size = UDim2.new(0, 350, 0, 140)
generalframe.Position = UDim2.new(0.75, 0, 0.75, 0)
generalframe.BackgroundColor3 = BrickColor.new("Really black").Color
generalframe.BorderSizePixel = 5
generalframe.BorderColor3 = BrickColor.new("Institutional white").Color
generalframe.Transparency = 0.25
generalframe.Active = true
generalframe.Draggable = true
generalframe.Parent = gui
local plrBox = Instance.new("TextBox")
plrBox.Parent = generalframe
plrBox.Size = UDim2.new(0, 300, 0, 42.5)
plrBox.Position = UDim2.new(0.075, 0, 0.2, 0)
plrBox.BackgroundColor3 = BrickColor.new("Really black").Color
plrBox.BorderSizePixel = 5
plrBox.BorderColor3 = BrickColor.new("Institutional white").Color
plrBox.FontSize = Enum.FontSize.Size28
plrBox.Font = "SciFi"
plrBox.TextColor3 = Color3.new(255, 255, 255)
plrBox.Transparency = 0.175
plrBox.Text = "Type your victim's name"
local execbutton = Instance.new("TextButton")
execbutton.Size = UDim2.new(0, 300, 0, 27.5)
execbutton.Position = plrBox.Position + UDim2.new(0, 0, 0, 54)
execbutton.BackgroundColor3 = BrickColor.new("Really black").Color
execbutton.BorderSizePixel = 5
execbutton.BorderColor3 = BrickColor.new("Institutional white").Color
execbutton.Font = "SciFi"
execbutton.FontSize = Enum.FontSize.Size18
execbutton.TextColor3 = Color3.new(255, 255, 255)
execbutton.Transparency = 0.175
execbutton.Text = "Execute"
execbutton.Parent = generalframe
--[[Function/s being made!]]

local function getPlayerByString(name)
for _, Player in pairs(game:service'Players':GetPlayers()) do
if Player.Name:sub(1, #name):lower() == name:lower() then
return Player
end
end
end

function FeKill(Target)
	if plrBox.Text:lower() == "all" or "others" then
		local lpChar = game.Players.LocalPlayer.Character.Torso


for i,plr in pairs (game.Players:GetChildren()) do
 if plr.Name ~= game.Players.LocalPlayer.Name then
  for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
   if v.ClassName == 'Part' then
    if v.Name ~= 'Head' then
     v.Anchored = true
    end
   end
  end
  local w = Instance.new("Weld", lpChar)
  w.Part0 = lpChar
  w.Part1 = plr.Character.Torso
  w.C0 = lpChar.CFrame
  w.C1 = lpChar.CFrame * CFrame.new(0, -10000, 0)
  wait(0.1)
  w:Destroy()
  for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
   if v.ClassName == 'Part' then
    if v.Name ~= 'Head' then
     v.Anchored = false
    end
   end
  end
 end
end
	else
		local chosen = getPlayerByString(Target)
	local plr = chosen
local lpChar = game.Players.LocalPlayer.Character.Torso

for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
 if v.ClassName == 'Part' then
  if v.Name ~= 'Head' then
   v.Anchored = true
  end
 end
end
local w = Instance.new("Weld", lpChar)
w.Part0 = lpChar
w.Part1 = plr.Character.Torso
w.C0 = lpChar.CFrame
w.C1 = lpChar.CFrame * CFrame.new(0, -10000, 0)
wait(0.1)
w:Destroy()
for i,v in pairs (game.Players.LocalPlayer.Character:GetChildren()) do
 if v.ClassName == 'Part' then
  if v.Name ~= 'Head' then
   v.Anchored = false
  end
 end
end
	end
	
end

function rekt(Target)
	if plrBox.Text:lower() == "all" then
		for i, v in pairs (game.Players:GetChildren()) do
			local char = v.Character
			if char then
				char:BreakJoints()
			end
		end
	elseif plrBox.Text:lower() == "others" then
		for i, v in pairs (game.Players:GetChildren()) do
			if v.Name ~= lplr.Name then
			local char = v.Character
			if char then
				char:BreakJoints()
			end
			end
		end
	else
		local prehum = getPlayerByString(Target)
	local hum = prehum.Character
	if hum then
		hum:BreakJoints()
	end
	end
	
	
end
--[[Connecting functions!]]
execbutton.MouseButton1Down:connect(function()
if game.Workspace.FilteringEnabled == true then
	FeKill(plrBox.Text)
elseif game.Workspace.FilteringEnabled ~= true then
	rekt(plrBox.Text)
end
end)