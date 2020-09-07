-- Kinda a jank way to grab all the localplayer's info but oh well :)
-- HamstaGang - V3RM


local collectit = workspace.Ores
local lpn = game:GetService("Players").LocalPlayer.Name:lower() -- We NEED IT! :C
local shipsearch = workspace.Ships[lpn]:GetChildren() --hehe
local shippie

for i, ship in ipairs(shipsearch) do
    shippie = ship.Name
end


while true do
    wait(0.5)
    local descendants = collectit:GetDescendants()
    for index, descendant in pairs(descendants) do
        if descendant.Name == "Ore" and shippie ~= nil then 
            descendant.CFrame = workspace.Ships[lpn][shippie].Hitbox.CFrame
        end
    end
end