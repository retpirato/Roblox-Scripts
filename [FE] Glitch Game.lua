while true do
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false)
wait()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, true)
wait()
game.Players.LocalPlayer.Character.Head.Running.PlaybackSpeed = 30
game.Players.LocalPlayer.Character.Head.Running.Volume = 10
game.Workspace.Gravity                                = 1000
game.Players.LocalPlayer.Character.Humanoid.JumpPower = 250
end