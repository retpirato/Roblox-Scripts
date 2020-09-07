--/Replace Player1 with the player teleporting, and Player2 with the player to teleport to

getglobal game
getfield -1 Workspace
getfield -1 Player1
getfield -1 HumanoidRootPart
getglobal game
getfield -1 Workspace
getfield -1 Player2
getfield -1 Torso
getfield -1 CFrame
setfield -6 CFrame
emptystack