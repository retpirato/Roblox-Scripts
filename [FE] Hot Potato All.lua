for index, child in pairs(game.Players:GetChildren()) do
game.Workspace.RemoteEvents.PotatoEvent:FireServer(child.Name)
end 