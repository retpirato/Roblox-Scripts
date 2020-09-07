local plr = game.Players.LocalPlayer

local mouse = plr:GetMouse()

lpc = game.Players.LocalPlayer.Character

weld1 = Instance.new("Weld")







mouse.KeyDown:connect(function(key1)

if key1 == "q" then

local gg = mouse.Target

if gg ~= nil then

plr.Character.Humanoid:EquipTool(gg.Parent:FindFirstChildOfClass("Tool"))

else

print("fail steal tools")

end

end

end)





mouse.KeyDown:connect(function(key1)

if key1 == "z" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.Character.Humanoid.Sit = true

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "o" then

local gg = mouse.Target

if gg ~= nil then

for i,v in pairs(game.Players:GetPlayers()) do if v.Name == gg.Parent.Name then

game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Account Age (Days) for :", "All")

wait(0.5)

game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(gg.Parent.Name, "All")

wait(0.5)

game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v.AccountAge, "All")

end

end

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "e" then

local gg = mouse.Target

if gg ~= nil then

gg.Parent.Humanoid:EquipTool(plr.Character:FindFirstChildOfClass("Tool"))

else

print("fail steal tools")

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "t" then

local gg = mouse.Target

if gg ~= nil then

for i,v in pairs(game.Players:GetPlayers()) do if v.Name == gg.Parent.Name then

    v:Move(Vector3.new(math.huge*0)) 

v:Move(Vector3.new(math.huge*0)) 

wait()

v:Move(Vector3.new(math.huge*0)) 

v:Move(Vector3.new(math.huge*0)) 

wait()

v:Move(Vector3.new(math.huge*0)) 

v:Move(Vector3.new(math.huge*0)) 

wait()

v:Move(Vector3.new(math.huge*0)) 

v:Move(Vector3.new(math.huge*0)) 

end

end

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "r" then

local gg = mouse.Target

if gg ~= nil then

weld1 = Instance.new("Weld")

weld1.Parent = game.Players.LocalPlayer.Character.Head

weld1.Part1 = game.Players.LocalPlayer.Character.Head

weld1.Part0 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle

weld1.C0 = CFrame.new(0,0,0)

gg.Parent.Humanoid:EquipTool(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"))

wait(0.8)

game.Players.LocalPlayer.Character.Humanoid:EquipTool(gg.Parent:FindFirstChildOfClass("Tool"))

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "v" then

local gg = mouse.Target

if gg ~= nil then

gg.Parent:MoveTo(game.Players.LocalPlayer.Character.Head.Position)

else

print("No target (Steal steal)")

end

end

end)





mouse.KeyDown:connect(function(key1)

if key1 == "y" then

local gg = mouse.Target

if gg ~= nil then

weld1 = Instance.new("Weld")

weld1.Parent = game.Players.LocalPlayer.Character.Head

weld1.Part1 = game.Players.LocalPlayer.Character.Head

weld1.Part0 = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle

weld1.C0 = CFrame.new(0,0,40)

gg.Parent.Humanoid:EquipTool(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool"))

wait(0.8)

game.Players.LocalPlayer.Character.Humanoid:EquipTool(gg.Parent:FindFirstChildOfClass("Tool"))

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "x" then

local gg = mouse.Target

if gg ~= nil then

for i,v in pairs(game.Players:GetPlayers()) do if v.Name ~= plr.Name then

plr.Character.Humanoid:EquipTool(v.Character:FindFirstChildOfClass("Tool"))

end

end

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "c" then

local gg = mouse.Target

if gg ~= nil then

for i,v in pairs(game.Players:GetPlayers()) do if v.Name ~= plr.Name then

    v:Move(Vector3.new(math.huge*0)) 

wait()

v:Move(Vector3.new(math.huge*0)) 

wait()

v:Move(Vector3.new(math.huge*0)) 

v:Move(Vector3.new(math.huge*0)) 

wait()

v:Move(Vector3.new(math.huge*0)) 

v:Move(Vector3.new(math.huge*0)) 

wait()

v:Move(Vector3.new(math.huge*0)) 

v:Move(Vector3.new(math.huge*0)) 

end

end

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "j" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Handle.Mesh:remove()

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "l" then

local gg = mouse.Target

if gg ~= nil then

a=Instance.new("SelectionBox",game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Handle)

a.Adornee=game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Handle

game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Handle.CanCollide=false

game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Handle.Size=Vector3.new(1,1,12)

game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 17

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "u" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.Character:MoveTo(gg.Position)

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "k" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.Character.Head.Died.Playing = true

game.Players.LocalPlayer.Character.Head.Died.TimePosition = 0

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "h" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.Character:FindFirstChildOfClass("Accessory").Handle.Mesh:remove()

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "m" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool"):remove()

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "n" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.Backpack:ClearAllChildren()

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "g" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.PlayerGui.Halpp.MainFrame.Visible = false

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "f" then

local gg = mouse.Target

if gg ~= nil then

game.Players.LocalPlayer.PlayerGui.Halpp.MainFrame.Visible = true

end

end

end)



mouse.KeyDown:connect(function(key1)

if key1 == "p" then

local gg = mouse.Target

if gg ~= nil then

for i,v in pairs(game.Players:GetPlayers()) do

AnimationId = "33796059"

local Anim = Instance.new("Animation")

Anim.AnimationId = "rbxassetid://"..AnimationId

local k = v.Character.Humanoid:LoadAnimation(Anim)

k:Play() --Play the animation

k:AdjustSpeed(1000) --Set '1' to any value you want to adjust the animation speed.

end

end

end
end)