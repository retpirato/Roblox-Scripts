getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 PlayerGui
getfield -1 Statistics
getfield -1 Skill
pushstring 2e9
setfield -2 Value