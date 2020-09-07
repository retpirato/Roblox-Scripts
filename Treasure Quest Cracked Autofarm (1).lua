_G.Security = false -- will prevent mods and admins from join your dungeon and ban you (will kick you if they try)
_G.AutoPickMeds = true -- autopicks medkits
_G.SemiGodMode = true -- makes u invunerable to mobs and minibosses at the cost of making your farm a little slower.
_G.AutoLeave = true -- if true this will leave after killing the boss and join another server.
_G.AutoGrabChests = true -- if true this will grab chests for money.
_G.AutoChooseLevel = true -- if false  configure below!
_G.Map = "Ancient Jungle"
_G.Difficulty = "Medium"
_G.WaitForPlayers = false -- if true will wait for the players listed below
_G.PlayersToWaitFor = {} -- put the players you are waiting for down here in this format: {"Player1","Player2","Player3"}
--- Auto Sell ---
_G.SellCommons = true
_G.SellRares = true
_G.SellLegendaries = false
_G.SellMythicals = false
--- Auto Upgrade ---
_G.AutoUpgradeWeapon = true
_G.AutoUpgradeHelmet = true

loadstring(game:HttpGet("https://pastebin.com/raw/CZYz1JP3",true))()