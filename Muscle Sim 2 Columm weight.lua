function onKeyPress(actionName, userInputState, inputObject)
if userInputState == Enum.UserInputState.Begin then
for i=1, 100 do
game.ReplicatedStorage.addStrength:InvokeServer(Workspace.YOURNAME["Column Weight"].Handle, 1, "GODSIMULATOR5453683029304829109328375973423942740270295886894jdadw8210jd10j9d8S8jEjc8E")
end
end
end

game.ContextActionService:BindAction("keyPress", onKeyPress, false, Enum.KeyCode.R)