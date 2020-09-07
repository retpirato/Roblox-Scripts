music = Instance.new("Sound",  game.Players.LocalPlayer.Character)
music.SoundId = "rbxassetid://1542642349"
music:Play()
local player = game.Players.LocalPlayer.Character
player.Humanoid:Remove()
Instance.new('Humanoid',player)
wait(0)
game.Players.LocalPlayer.Character.Humanoid.Health = 0