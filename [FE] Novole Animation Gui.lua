-- FilteringEnabled Animations Script, by Icyxos on V3rmillion!
 
-- Objects
 
local Novole = Instance.new("ScreenGui")
local BackFrame = Instance.new("Frame")
local Catagories = Instance.new("ScrollingFrame")
local Players = Instance.new("TextButton")
local Respawn = Instance.new("TextButton")
local NovoleLabel = Instance.new("TextLabel")
local PlayersFrame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local PartyDance = Instance.new("TextButton")
local SwordSlash = Instance.new("TextButton")
local DickHold = Instance.new("TextButton")
local FastTeleport = Instance.new("TextButton")
local HoldHands = Instance.new("TextButton")
local Levitate = Instance.new("TextButton")
local ArmFlap = Instance.new("TextButton")
local StompWalk = Instance.new("TextButton")
local FloorCrawl = Instance.new("TextButton")
local CockSucking = Instance.new("TextButton")
local CloneGlitch = Instance.new("TextButton")
local MonsterMash = Instance.new("TextButton")
local HeadFloat = Instance.new("TextButton")
local MovingDance = Instance.new("TextButton")
local Hug = Instance.new("TextButton")
local OpenClose = Instance.new("TextButton")
local OpenClose2 = Instance.new("TextButton")
 
-- Properties
 
Novole.Name = "Novole"
Novole.Parent = game.Players.LocalPlayer.PlayerGui
Novole.ResetOnSpawn = false
 
BackFrame.Name = "BackFrame"
BackFrame.Parent = Novole
BackFrame.Active = true
BackFrame.Visible = false
BackFrame.BackgroundColor3 = Color3.new(0.113725, 0.113725, 0.113725)
BackFrame.BorderColor3 = Color3.new(0, 0, 0)
BackFrame.BorderSizePixel = 2
BackFrame.Position = UDim2.new(0.334442586, 0, 0.303030312, 0)
BackFrame.Size = UDim2.new(0, 500, 0, 300)
 
Catagories.Name = "Catagories"
Catagories.Parent = BackFrame
Catagories.Active = true
Catagories.BackgroundColor3 = Color3.new(0, 0, 0)
Catagories.BackgroundTransparency = 0.80000001192093
Catagories.BorderColor3 = Color3.new(0, 0, 0)
Catagories.BorderSizePixel = 0
Catagories.Position = UDim2.new(0, 0, 0.143333331, 0)
Catagories.Size = UDim2.new(0, 130, 0, 257)
Catagories.ScrollBarThickness = 7
 
Players.Name = "Players"
Players.Parent = Catagories
Players.BackgroundColor3 = Color3.new(0, 0, 0)
Players.BackgroundTransparency = 1
Players.BorderSizePixel = 0
Players.Position = UDim2.new(0, 0, 0.00389104709, 0)
Players.Size = UDim2.new(0, 130, 0, 50)
Players.Font = Enum.Font.Cartoon
Players.FontSize = Enum.FontSize.Size24
Players.Text = "Players"
Players.TextColor3 = Color3.new(1, 1, 1)
Players.TextSize = 20
 
Respawn.Name = "Respawn"
Respawn.Parent = Catagories
Respawn.BackgroundColor3 = Color3.new(0, 0, 0)
Respawn.BackgroundTransparency = 1
Respawn.BorderSizePixel = 0
Respawn.Position = UDim2.new(0, 0, 0.00389104709, 0)
Respawn.Size = UDim2.new(0, 130, 0, 150)
Respawn.Font = Enum.Font.Cartoon
Respawn.FontSize = Enum.FontSize.Size24
Respawn.Text = "Respawn"
Respawn.TextColor3 = Color3.new(1, 1, 1)
Respawn.TextSize = 20
 
NovoleLabel.Name = "NovoleLabel"
NovoleLabel.Parent = BackFrame
NovoleLabel.BackgroundColor3 = Color3.new(0, 0, 0)
NovoleLabel.BackgroundTransparency = 0.75
NovoleLabel.BorderColor3 = Color3.new(0.141176, 0.141176, 0.141176)
NovoleLabel.BorderSizePixel = 2
NovoleLabel.Size = UDim2.new(0, 500, 0, 43)
NovoleLabel.Font = Enum.Font.Cartoon
NovoleLabel.FontSize = Enum.FontSize.Size48
NovoleLabel.Text = "Novole Gui"
NovoleLabel.TextColor3 = Color3.new(1, 1, 1)
NovoleLabel.TextSize = 38
 
PlayersFrame.Name = "PlayersFrame"
PlayersFrame.Parent = BackFrame
PlayersFrame.Active = true
PlayersFrame.BackgroundColor3 = Color3.new(0, 0, 0)
PlayersFrame.BackgroundTransparency = 1
PlayersFrame.BorderColor3 = Color3.new(0, 0, 0)
PlayersFrame.BorderSizePixel = 0
PlayersFrame.Position = UDim2.new(0.272000015, 0, 0.143333331, 0)
PlayersFrame.Size = UDim2.new(0, 364, 0, 257)
 
ScrollingFrame.Parent = PlayersFrame
ScrollingFrame.BackgroundColor3 = Color3.new(0, 0, 0)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Size = UDim2.new(0, 364, 0, 257)
ScrollingFrame.ScrollBarThickness = 7
 
PartyDance.Name = "Party Dance"
PartyDance.Parent = ScrollingFrame
PartyDance.BackgroundColor3 = Color3.new(0, 0, 0)
PartyDance.BackgroundTransparency = 0.95999997854233
PartyDance.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
PartyDance.BorderSizePixel = 2
PartyDance.Position = UDim2.new(0.653846085, 0, 0.0272373408, 0)
PartyDance.Size = UDim2.new(0, 110, 0, 50)
PartyDance.Font = Enum.Font.Cartoon
PartyDance.FontSize = Enum.FontSize.Size24
PartyDance.Text = "Party Dance"
PartyDance.TextColor3 = Color3.new(1, 1, 1)
PartyDance.TextSize = 20
 
SwordSlash.Name = "SwordSlash"
SwordSlash.Parent = ScrollingFrame
SwordSlash.BackgroundColor3 = Color3.new(0, 0, 0)
SwordSlash.BackgroundTransparency = 0.95999997854233
SwordSlash.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
SwordSlash.BorderSizePixel = 2
SwordSlash.Position = UDim2.new(0.32967037, 0, 0.0272373538, 0)
SwordSlash.Size = UDim2.new(0, 110, 0, 50)
SwordSlash.Font = Enum.Font.Cartoon
SwordSlash.FontSize = Enum.FontSize.Size24
SwordSlash.Text = "Sword Slash"
SwordSlash.TextColor3 = Color3.new(1, 1, 1)
SwordSlash.TextSize = 20
 
DickHold.Name = "DickHold"
DickHold.Parent = ScrollingFrame
DickHold.BackgroundColor3 = Color3.new(0, 0, 0)
DickHold.BackgroundTransparency = 0.95999997854233
DickHold.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
DickHold.BorderSizePixel = 2
DickHold.Position = UDim2.new(0.0054945033, 0, 0.0272373538, 0)
DickHold.Size = UDim2.new(0, 110, 0, 50)
DickHold.Font = Enum.Font.Cartoon
DickHold.FontSize = Enum.FontSize.Size24
DickHold.Text = "Hold Dick"
DickHold.TextColor3 = Color3.new(1, 1, 1)
DickHold.TextSize = 20
 
FastTeleport.Name = "FastTeleport"
FastTeleport.Parent = ScrollingFrame
FastTeleport.BackgroundColor3 = Color3.new(0, 0, 0)
FastTeleport.BackgroundTransparency = 0.95999997854233
FastTeleport.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
FastTeleport.BorderSizePixel = 2
FastTeleport.Position = UDim2.new(0.653846085, 0, 0.1400778, 0)
FastTeleport.Size = UDim2.new(0, 110, 0, 50)
FastTeleport.Font = Enum.Font.Cartoon
FastTeleport.FontSize = Enum.FontSize.Size24
FastTeleport.Text = "Fast Teleport"
FastTeleport.TextColor3 = Color3.new(1, 1, 1)
FastTeleport.TextSize = 20
 
HoldHands.Name = "HoldHands"
HoldHands.Parent = ScrollingFrame
HoldHands.BackgroundColor3 = Color3.new(0, 0, 0)
HoldHands.BackgroundTransparency = 0.95999997854233
HoldHands.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
HoldHands.BorderSizePixel = 2
HoldHands.Position = UDim2.new(0.32967025, 0, 0.1400778, 0)
HoldHands.Size = UDim2.new(0, 110, 0, 50)
HoldHands.Font = Enum.Font.Cartoon
HoldHands.FontSize = Enum.FontSize.Size24
HoldHands.Text = "Hold Hands"
HoldHands.TextColor3 = Color3.new(1, 1, 1)
HoldHands.TextSize = 20
 
Levitate.Name = "Levitate"
Levitate.Parent = ScrollingFrame
Levitate.BackgroundColor3 = Color3.new(0, 0, 0)
Levitate.BackgroundTransparency = 0.95999997854233
Levitate.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
Levitate.BorderSizePixel = 2
Levitate.Position = UDim2.new(0.00549441576, 0, 0.140077785, 0)
Levitate.Size = UDim2.new(0, 110, 0, 50)
Levitate.Font = Enum.Font.Cartoon
Levitate.FontSize = Enum.FontSize.Size24
Levitate.Text = "Levitate"
Levitate.TextColor3 = Color3.new(1, 1, 1)
Levitate.TextSize = 20
 
ArmFlap.Name = "ArmFlap"
ArmFlap.Parent = ScrollingFrame
ArmFlap.BackgroundColor3 = Color3.new(0, 0, 0)
ArmFlap.BackgroundTransparency = 0.95999997854233
ArmFlap.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
ArmFlap.BorderSizePixel = 2
ArmFlap.Position = UDim2.new(0.00549441576, 0, 0.252918273, 0)
ArmFlap.Size = UDim2.new(0, 110, 0, 50)
ArmFlap.Font = Enum.Font.Cartoon
ArmFlap.FontSize = Enum.FontSize.Size24
ArmFlap.Text = "Arm Flap"
ArmFlap.TextColor3 = Color3.new(1, 1, 1)
ArmFlap.TextSize = 20
 
StompWalk.Name = "StompWalk"
StompWalk.Parent = ScrollingFrame
StompWalk.BackgroundColor3 = Color3.new(0, 0, 0)
StompWalk.BackgroundTransparency = 0.95999997854233
StompWalk.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
StompWalk.BorderSizePixel = 2
StompWalk.Position = UDim2.new(0.32967025, 0, 0.252918273, 0)
StompWalk.Size = UDim2.new(0, 110, 0, 50)
StompWalk.Font = Enum.Font.Cartoon
StompWalk.FontSize = Enum.FontSize.Size24
StompWalk.Text = "Stomp Walk"
StompWalk.TextColor3 = Color3.new(1, 1, 1)
StompWalk.TextSize = 20
 
FloorCrawl.Name = "FloorCrawl"
FloorCrawl.Parent = ScrollingFrame
FloorCrawl.BackgroundColor3 = Color3.new(0, 0, 0)
FloorCrawl.BackgroundTransparency = 0.95999997854233
FloorCrawl.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
FloorCrawl.BorderSizePixel = 2
FloorCrawl.Position = UDim2.new(0.653846085, 0, 0.252918273, 0)
FloorCrawl.Size = UDim2.new(0, 110, 0, 50)
FloorCrawl.Font = Enum.Font.Cartoon
FloorCrawl.FontSize = Enum.FontSize.Size24
FloorCrawl.Text = "Floor Crawl"
FloorCrawl.TextColor3 = Color3.new(1, 1, 1)
FloorCrawl.TextSize = 20
 
CockSucking.Name = "CockSucking"
CockSucking.Parent = ScrollingFrame
CockSucking.BackgroundColor3 = Color3.new(0, 0, 0)
CockSucking.BackgroundTransparency = 0.95999997854233
CockSucking.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
CockSucking.BorderSizePixel = 2
CockSucking.Position = UDim2.new(0.32967028, 0, 0.365758717, 0)
CockSucking.Size = UDim2.new(0, 110, 0, 50)
CockSucking.Font = Enum.Font.Cartoon
CockSucking.FontSize = Enum.FontSize.Size24
CockSucking.Text = "Cock Sucking"
CockSucking.TextColor3 = Color3.new(1, 1, 1)
CockSucking.TextSize = 20
 
CloneGlitch.Name = "CloneGlitch"
CloneGlitch.Parent = ScrollingFrame
CloneGlitch.BackgroundColor3 = Color3.new(0, 0, 0)
CloneGlitch.BackgroundTransparency = 0.95999997854233
CloneGlitch.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
CloneGlitch.BorderSizePixel = 2
CloneGlitch.Position = UDim2.new(0.653846085, 0, 0.478599191, 0)
CloneGlitch.Size = UDim2.new(0, 110, 0, 50)
CloneGlitch.Font = Enum.Font.Cartoon
CloneGlitch.FontSize = Enum.FontSize.Size24
CloneGlitch.Text = "Clone Glitch"
CloneGlitch.TextColor3 = Color3.new(1, 1, 1)
CloneGlitch.TextSize = 20
 
MonsterMash.Name = "MonsterMash"
MonsterMash.Parent = ScrollingFrame
MonsterMash.BackgroundColor3 = Color3.new(0, 0, 0)
MonsterMash.BackgroundTransparency = 0.95999997854233
MonsterMash.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
MonsterMash.BorderSizePixel = 2
MonsterMash.Position = UDim2.new(0.653846145, 0, 0.365758717, 0)
MonsterMash.Size = UDim2.new(0, 110, 0, 50)
MonsterMash.Font = Enum.Font.Cartoon
MonsterMash.FontSize = Enum.FontSize.Size24
MonsterMash.Text = "Monster Mash"
MonsterMash.TextColor3 = Color3.new(1, 1, 1)
MonsterMash.TextSize = 20
 
HeadFloat.Name = "HeadFloat"
HeadFloat.Parent = ScrollingFrame
HeadFloat.BackgroundColor3 = Color3.new(0, 0, 0)
HeadFloat.BackgroundTransparency = 0.95999997854233
HeadFloat.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
HeadFloat.BorderSizePixel = 2
HeadFloat.Position = UDim2.new(0.00549444556, 0, 0.365758717, 0)
HeadFloat.Size = UDim2.new(0, 110, 0, 50)
HeadFloat.Font = Enum.Font.Cartoon
HeadFloat.FontSize = Enum.FontSize.Size24
HeadFloat.Text = "Head Float"
HeadFloat.TextColor3 = Color3.new(1, 1, 1)
HeadFloat.TextSize = 20
 
MovingDance.Name = "MovingDance"
MovingDance.Parent = ScrollingFrame
MovingDance.BackgroundColor3 = Color3.new(0, 0, 0)
MovingDance.BackgroundTransparency = 0.95999997854233
MovingDance.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
MovingDance.BorderSizePixel = 2
MovingDance.Position = UDim2.new(0.32967025, 0, 0.478599191, 0)
MovingDance.Size = UDim2.new(0, 110, 0, 50)
MovingDance.Font = Enum.Font.Cartoon
MovingDance.FontSize = Enum.FontSize.Size24
MovingDance.Text = "Moving Dance"
MovingDance.TextColor3 = Color3.new(1, 1, 1)
MovingDance.TextSize = 20
 
Hug.Name = "Hug"
Hug.Parent = ScrollingFrame
Hug.BackgroundColor3 = Color3.new(0, 0, 0)
Hug.BackgroundTransparency = 0.95999997854233
Hug.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
Hug.BorderSizePixel = 2
Hug.Position = UDim2.new(0.00549441576, 0, 0.478599191, 0)
Hug.Size = UDim2.new(0, 110, 0, 50)
Hug.Font = Enum.Font.Cartoon
Hug.FontSize = Enum.FontSize.Size24
Hug.Text = "Hug Person"
Hug.TextColor3 = Color3.new(1, 1, 1)
Hug.TextSize = 20
 
OpenClose.Name = "Open"
OpenClose.Parent = Novole
OpenClose.BackgroundColor3 = Color3.new(0, 0, 0)
OpenClose.BackgroundTransparency = 0.20000000298023
OpenClose.BorderColor3 = Color3.new(0, 0, 0)
OpenClose.BorderSizePixel = 2
OpenClose.Position = UDim2.new(0, 0, 0, 353)
OpenClose.Size = UDim2.new(0, 65, 0, 30)
OpenClose.Font = Enum.Font.Cartoon
OpenClose.FontSize = Enum.FontSize.Size24
OpenClose.Text = "Open"
OpenClose.TextColor3 = Color3.new(1, 1, 1)
OpenClose.TextSize = 20
OpenClose.TextWrapped = true
 
OpenClose2.Name = "Close"
OpenClose2.Parent = Novole
OpenClose2.Visible = false
OpenClose2.BackgroundColor3 = Color3.new(0, 0, 0)
OpenClose2.BackgroundTransparency = 0.20000000298023
OpenClose2.BorderColor3 = Color3.new(0, 0, 0)
OpenClose2.BorderSizePixel = 2
OpenClose2.Position = UDim2.new(0, 0, 0, 353)
OpenClose2.Size = UDim2.new(0, 65, 0, 30)
OpenClose2.Font = Enum.Font.Cartoon
OpenClose2.FontSize = Enum.FontSize.Size24
OpenClose2.Text = "Close"
OpenClose2.TextColor3 = Color3.new(1, 1, 1)
OpenClose2.TextSize = 20
OpenClose2.TextWrapped = true
 
-- Extra
 
warn("Icyxos's FilteringEnabled Animations Script has loaded!")
print("Don't activate two animations at once!")
 
-- Buttons
 
OpenClose.MouseButton1Click:connect(function()
game.Players.LocalPlayer.PlayerGui.Novole.BackFrame.Visible = true
game.Players.LocalPlayer.PlayerGui.Novole.Close.Visible = true
print("Opened!")
end)
 
OpenClose2.MouseButton1Click:connect(function()
game.Players.LocalPlayer.PlayerGui.Novole.BackFrame.Visible = false
game.Players.LocalPlayer.PlayerGui.Novole.Close.Visible = false
game.Players.LocalPlayer.PlayerGui.Novole.Open.Visible = true
print("Closed!")
end)
 
DickHold.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "48975505"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play(2)
Anim:AdjustSpeed(1)
wait(4)
end)
 
SwordSlash.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "35978879"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
PartyDance.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "48972923"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
Levitate.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "313762630"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
HoldHands.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "54513258"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
FastTeleport.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "215384594"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
ArmFlap.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "27432691"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(100000)
end)
 
StompWalk.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "204328711"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
FloorCrawl.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "282574440"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
HeadFloat.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "121572214"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
CockSucking.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "45036843"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
MonsterMash.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "35634514"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
Hug.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "42071631"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
MovingDance.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "429703734"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(1)
end)
 
CloneGlitch.MouseButton1Click:connect(function()
Player = "LocalPlayer"
AnimationId = "215384594"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local Anim = game.Players[Player].Character.Humanoid:LoadAnimation(Anim)
Anim:Play()
Anim:AdjustSpeed(10000)
end)
 
Respawn.MouseButton1Click:connect(function()
game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)
 
-- FilteringEnabled Animations Script, by Icyxos on V3rmillion!