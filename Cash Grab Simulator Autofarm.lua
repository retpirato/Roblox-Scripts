local gameName = "Legends of League" -- NAME OF YOUR GAME

local backpackName = "Duffel" -- NAME OF YOUR BAG

--------------------------------------------- EDIT HERE ^^^^

local gameTiers = {
   ["ROBLOX"] = "Noob",
   ["Breakjail"] = "Noob",
   ["Nitefort"] = "Casual",
   ["ManSpider: The Amazing"] = "Casual",
   ["Kombat Mortal"] = "Enthusiast",
   ["ToonSplat"] = "Enthusiast",
   ["Legends of League"] = "Pro",
   ["Watchover"] = "Pro",
   ["GO:CS"] = "Legend",
   ["UnknownPlayer's Groundbattle"] = "Legend",
   ["Starbattle Warfront 2"] = "God",
   ["Grab Cash Simulator"] = "God"
}

local gamePrices = {
   ["ROBLOX"] = 0,
   ["Breakjail"] = 100,
   ["Nitefort"] = 300,
   ["ManSpider: The Amazing"] = 500,
   ["Kombat Mortal"] = 1000,
   ["ToonSplat"] = 1500,
   ["Legends of League"] = 3200,
   ["Watchover"] = 5500,
   ["GO:CS"] = 9000,
   ["UnknownPlayer's Groundbattle"] = 20000,
   ["Starbattle Warfront 2"] = 100000,
   ["Grab Cash Simulator"] = 5000000
}

local backpackLimits = {
   ["Basic"] = "25",
   ["Enhanced"] = "75",
   ["Advanced"] = "300",
   ["Duffel"] = "800",
   ["Rucksack"] = "2500",
   ["Bank Vault"] = "10000",
   ["Golden Vault"] = "99999"
}


while wait() do
   local s = game.Workspace[game.Players.LocalPlayer.Name][backpackName].display.backpackDisplay.holder.textLabel.Text
   if string.find(s, backpackLimits[backpackName].. "/") ~= nil then
       repeat
           wait()
           game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame = game.Workspace.deposit.CFrame
       until game.Workspace[game.Players.LocalPlayer.Name][backpackName].display.backpackDisplay.holder.textLabel.Text == "0/".. backpackLimits[backpackName]
   else
       for i, v in pairs(game.Workspace.customers:GetChildren()) do
           if v.properties ~= nil then
if v.properties.tier.Value == gameTiers[gameName] then
                v.UpperTorso.Anchored = true
                v.UpperTorso.CFrame = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
                wait()
                game.ReplicatedStorage.remotes.bindCustomer:FireServer(v)
            end
end
       end
   end
end