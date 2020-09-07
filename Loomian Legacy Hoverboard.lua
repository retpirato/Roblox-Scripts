local global = "_p" --Way too easy tbh
for i,v in pairs(debug.getregistry()) do
if type(v) == 'function' then
for i,v in pairs(debug.getupvalues(v)) do
if i == global then
global = v
break
end
end
end
end
local toggle = false
game:GetService("UserInputService").InputBegan:Connect(function(input)
if input.KeyCode == Enum.KeyCode.LeftControl then
if toggle == false then
global.Hoverboard:equip()
else
global.Hoverboard:unequip()
end
toggle = not toggle
elseif input.KeyCode == Enum.KeyCode.f then
local healerName = global.Network:get("getHealer", "HealthCenter")
global.Network:get("heal", "HealthCenter", healerName)
global.Network:get("heal", global.DataManager.currentChunk:topRoom().id, "HealMachine1")
end
end)
global.NPCChat:say("Loaded script :)")