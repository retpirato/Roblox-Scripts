local Me = game:GetService("Players").LocalPlayer
local Char = Me.Character
local Torso = Char.Torso
local TickWait = 1
local Color = "Medium stone gray"
local Dead = false
 
local Tool = Instance.new("HopperBin", Me.Backpack)
Tool.Name = "Bomb Vest"
 
local Position = Vector3.new(0,100,0)
function NewPart(Parent)
   local Part = Instance.new("Part", Parent)
   Part.CanCollide = false
   Part.FormFactor = "Custom"
   Part.Position = Position
   Part.TopSurface = "Smooth"
   Part.BottomSurface = "Smooth"
   Part.BrickColor = BrickColor.new(Color)
   Position = Position + Vector3.new(0,Part.Size.Y + 10,0)
   return Part
end
 
local Model = Char:FindFirstChild("Bomb")
if Model then Model:Destroy() end
 
Model = Instance.new("Model", Char)
Model.Name = "Bomb"
 
local Belt = NewPart(Model)
Belt.Size = Vector3.new(2.2,0.5,1.2)
local Weld = Instance.new("Weld", Belt)
Weld.Part0 = Belt
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,1.1,0)
local Light = Instance.new("PointLight", Belt)
Light.Range = 15
Light.Brightness = 5
Light.Color = Color3.new(1,0,0)
local Beep = Instance.new("Sound", Belt)
Beep.SoundId = "http://www.roblox.com/asset/?id=188588790"
local ExplodeSound = Instance.new("Sound", Belt)
ExplodeSound.SoundId = "http://www.roblox.com/asset/?id="..(tonumber((math.ceil(1776.66^2)+17).."."..string.rep("36",3))*77)+0.00003 --144507765
ExplodeSound.Pitch = 2.8
ExplodeSound.Volume = 100
 
local Back = NewPart(Model)
Back.Size = Vector3.new(1.5,1.5,0.5)
local Weld = Instance.new("Weld", Back)
Weld.Part0 = Back
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0,0.1,-0.75)
 
local StrapLeft = NewPart(Model)
StrapLeft.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapLeft)
Weld.Part0 = StrapLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,-0.9,-0.2)
 
local BuckleLeft = NewPart(Model)
BuckleLeft.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleLeft)
Weld.Part0 = BuckleLeft
Weld.Part1 = Torso
Weld.C0 = CFrame.new(0.65,0.1,0.5)
 
local StrapRight = NewPart(Model)
StrapRight.Size = Vector3.new(0.2,0.5,1.6)
local Weld = Instance.new("Weld", StrapRight)
Weld.Part0 = StrapRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,-0.9,-0.2)
 
local BuckleRight = NewPart(Model)
BuckleRight.Size = Vector3.new(0.2,1.5,0.2)
local Weld = Instance.new("Weld", BuckleRight)
Weld.Part0 = BuckleRight
Weld.Part1 = Torso
Weld.C0 = CFrame.new(-0.65,0.1,0.5)
 
Tool.Selected:connect(function(Mouse)
   TickWait = 0.3
   Mouse.Icon = "http://www.roblox.com/asset/?id=9109985"
 
   Mouse.Button1Down:connect(function()
       if Dead == false then
           Dead = true
           ExplodeSound:Play()
           wait(1.4)
           local Explosion = Instance.new("Explosion", Workspace)
           Explosion.Position = Belt.Position
           Explosion.BlastPressure = 100000
           Explosion.DestroyJointRadiusPercent = 0.7
           Explosion.ExplosionType = "CratersAndDebris"
           Explosion.BlastRadius = 50
           Explosion.Hit:connect(function(Part, Distance)
               Part.Anchored = false
               if Distance <= 10 then
                   Part:BreakJoints()
               end
           end)
       end
   end)
end)
 
Tool.Deselected:connect(function()
   TickWait = 1
end)
 
coroutine.wrap(function()
   repeat
       wait(TickWait)
       Light.Enabled = not Light.Enabled
       Beep:Play()
   until Dead == true
end)()