_G.TOKEN = "" -- Version token can be found in #dq-scripts 
_G.TimeToWait = 0 -- Increase when your game loads slow
_G.HideOptions = { -- It hides the selected statistics as soon as possible
    Name = true,
    Level = true,
    XP = true,
    Gold = true
}
_G.InstaRejoin = true -- Directly rejoins when you die or when the dungeon is finished
_G.AutoLeave = 600 -- Time after the script rejoins (if you get stuck)
_G.WaitForPlayers = false -- Wait for specific players (specify below)
_G.PlayersToWaitFor = {"Player1","..."}
_G.Hardcore = true
_G.CustomD = {
    Enabled = false,
    Dungeon = "King's Castle",
    Difficulty = "Nightmare" 
}
_G.CollectDailyReward = true -- Auto collect daily reward
_G.InstakillDebounce = 0.25 -- Time before it instakills 
_G.DupeSlot = "e" -- Slots: e,q
_G.SkillPoints = "physicalPower" -- physicalPower,stamina,spellPower
_G.AutoUpgrade = true -- Auto Upgrades your equipped armor and weapon
_G.AutoEquipClass = "physic" -- physic,spell
_G.AutoEquip = true
_G.AutoSell = { -- AutoSell Settings
    Enabled = true,
    Rarities = { -- Rarities to NOT sell (legendary,epic,rare,uncommon,common)
        "legendary",
        "epic"
    },
    Items = { -- Items to NOT sell
        ["Overlord's Manablade"] = {"legendary"},
        ["Overlord's Rageblade"] = {"legendary"},
        ["Overlord's Warrior Hat"] = {"epic","rare","uncommon"},
        ["Overlord's Warrior Armor"] = {"epic","rare","uncommon"},
        ["Overlord's Mage Hat"] = {"epic","rare","uncommon"},
        ["Overlord's Mage Robes"] = {"epic","rare","uncommon"},
        ["Overlord's Guardian Hat"] = {"epic","rare","uncommon"},
        ["Overlord's Guardian Armor"] = {"epic","rare","uncommon"},
        ["Bloodthirster"] = {"epic"},
        ["Mana Infused Spellblade"] = {"epic"}
    }
}
loadstring(game:HttpGet("https://chronicdev.de/releases/".._G.TOKEN,true))()