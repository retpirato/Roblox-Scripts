speedLimit = 300 --This would set your speed limit to 150, Just divide by 2.
vehicle = "Vehicle" --Vehicle name, Sedan, Lawnmower and so on.

function onKeyPress(actionName, userInputState, inputObject)
if userInputState == Enum.UserInputState.Begin then
game.Workspace._Vehicles[vehicle].LW.VS.Maxspeed = SpeedLimit
game.Workspace._Vehicles[vehicle].RW.VS.Maxspeed = SpeedLimit
else 
print("Car not found")
end
end
end
 
game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.X) 