getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
emptystack
wait 2
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getglobal Instance
getfield -1 new
pushstring Humanoid
pushvalue -4
pcall 2 1 0
emptystack
wait 1
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
pushnumber 16
setfield -2 WalkSpeed
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
pushnumber 50
setfield -2 JumpPower
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
pushnumber 0
setfield -2 HipHeight
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
emptystack
