while true do
   wait()
local sellpoint = game.workspace.SellParts:GetChildren()[7]
sellpoint.CanCollide = false
sellpoint.CFrame = game.Workspace[game.Players.LocalPlayer.Name].HumanoidRootPart.CFrame
game.Players.LocalPlayer.Character.Humanoid.Jump = true
end