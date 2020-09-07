getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
getglobal Instance
getfield -1 new
pushstring BodyVelocity
pushvalue -4
pcall 2 1 0
emptystack