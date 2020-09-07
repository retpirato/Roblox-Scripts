getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
pushstring x
setfield -2 Name
emptystack
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 x
getfield -1 Clone
pushvalue -2
pcall 1 1 0
pushvalue -3
setfield -2 Parent
pushstring Humanoid
setfield -2 Name
emptystack
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 x
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
emptystack
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
getglobal workspace
getfield -1 CurrentCamera
pushvalue -3
setfield -2 CameraSubject
emptystack
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Animate
pushboolean true
setfield -2 Disabled
emptystack
wait 1
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Animate
pushboolean false
setfield -2 Disabled
emptystack