local h1 = "Doge"
local h2 = "Black Wings"
local h3 = "Ruby Eye"
local h4 = "DIY BiggerHead "
local h5 = "Silly Monkey"
local f1 = "JohanSKO's Kermit Face"
local f2 = "JohanSKo's Smiling Guy"
local f3 = "Sad Makeup"
local f4 = "JohanSKO's Frowning Guy With Shine"
local choice = f3
for i,everyone in pairs(game.Players:GetChildren()) do
local single = game.Players.LocalPlayer
local hat = "AddHat"
local face = "ChangeFace"
local mode = everyone
local modeB = hat
game.Workspace.HatEvent:FireServer(modeB, mode.Character, choice)
end