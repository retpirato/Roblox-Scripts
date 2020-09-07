-- File Downloaded from RoXploits.com
-- Creator/Credits: Nazorek & (polak23p (Extra money script))

APPLE SCRIPT

Code:
local apple = 13871371373
local Event = game:GetService("ReplicatedStorage").Events.ChangeApples
Event:FireServer(apple)

MONEY SCRIPT

Code:
game.ReplicatedStorage.Events.ChangeMoney:FireServer(math.huge)

OR

local money = 13871371373
local Event = game:GetService("ReplicatedStorage").Events.ChangeMoney
Event:FireServer(money)

PET SCRIPT

Code:
local pet = PETNAME
local Event = game:GetService("ReplicatedStorage").Events.GivePet
Event:FireServer(pet)

ITEM SCRIPT

Code:
local tool = TOOLNAME
local Event = game:GetService("ReplicatedStorage").Events.GiveTool
Event:FireServer(tool)

BAG SCRIPT

Code:
local bag = BAGNAME
local Event = game:GetService("ReplicatedStorage").Events.GiveBag
Event:FireServer(bag)

REBIRTH SCRIPT

Code:
_G.on = true
while _G.on do
wait()
game.ReplicatedStorage.Events.RebirthPlayer:FireServer(0)
end

TO DISABLE TURN TRUE INTO FALSE

TELEPORT TO SELL PLACE (IT DOESN'T TELEPORT YOU BACK)

Code:
game.Players.LocalPlayer.HumanoidRootPart.CFrame = CFrame.new(-20, 1, 20)
