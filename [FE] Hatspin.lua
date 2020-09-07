local obese = game:GetService('Players')
for i,v in pairs(obese.LocalPlayer.Character:GetChildren()) do
if v.ClassName == "Accessory" then
local stg = v.Handle:FindFirstChildOfClass("BodyForce")
if stg == nil then
local a = Instance.new("BodyPosition")
local b = Instance.new("BodyAngularVelocity")
a.Parent = v.Handle
b.Parent = v.Handle
v.Handle.AccessoryWeld:Destroy()
b.AngularVelocity = Vector3.new(0,100,0)
b.MaxTorque = Vector3.new(0,200,0)
a.P = 30000
a.D = 50
game:GetService('RunService').Stepped:connect(function()
a.Position = obese.LocalPlayer.Character.Head.Position
end)
end
end
end