_G.farm = true
local plr = game:GetService("Players").LocalPlayer
local hint = Instance.new('Hint', game:GetService("CoreGui"))
local Happiness = plr.leaderstats["? Happiness"]
local Rebirths = plr.Rebirths
local RS = game:GetService("ReplicatedStorage")
local Remotes = RS.Remotes
local Input = Remotes.Input
local Rebirth = Remotes.Rebirth
while _G.farm do
    local Me = Happiness.Value
    local rebirths = Rebirths.Value
    local price = rebirths * 1000 + 10000
    local difference = price - Me
    hint.Text = "You need: " ..  difference .. " ? Happiness to rebirth"
    local bottle = plr.Backpack:FindFirstChild("Baby Bottle") or plr.Character and plr.Character:FindFirstChild("Baby Bottle")
    if bottle then
        local hum = plr.Character:FindFirstChildOfClass("Humanoid")
        if hum then
            hum:EquipTool(bottle)
            Input:FireServer(bottle)
        end
    end
    if Me >= price then
for i = 1,10 do 
        Rebirth:FireServer()
end
    end
    wait()
end