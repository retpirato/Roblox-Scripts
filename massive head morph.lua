----------------------------------Step one execute this----------------------------------
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
pushnumber 20
setfield -2 WalkSpeed
emptystack
-----------------------------------Step two execute this----------------------------------
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
pushnumber 65
setfield -2 HipHeight
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Humanoid
emptystack
----------------------------------Step three execute this----------------------------------

getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
getfield -1 Mesh
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
getfield -1 face
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
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
pushstring SpecialMesh
pushvalue -4
pcall 2 0 0
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
getfield -1 Mesh
pushstring rbxassetidUndecided/460071024
setfield -2 MeshId
pcall 1 0 0
getglobal game
getfield -1 GetService
pushvalue -2
pushstring Players
pcall 2 1 0
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Head
getfield -1 Mesh
pushstring rbxassetidUndecided/460071032
setfield -2 TextureId
pcall 1 0 0
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Left Arm
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
emptystack
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Right Arm
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
emptystack
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Left Leg
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
emptystack
getglobal game
getfield -1 Players
getfield -1 LocalPlayer
getfield -1 Character
getfield -1 Right Leg
getfield -1 Destroy
pushvalue -2
pcall 1 0 0
emptystack
