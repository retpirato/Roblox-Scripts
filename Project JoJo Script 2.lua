while wait(0) do
spawn(function()
local a = {
  [3] = workspace['Titan Dummy'].Torso.CFrame,

  [2] = workspace['Titan Dummy'].Torso,
  [5] = game.Players.LocalPlayer.Character.Torso.voiceline,
  [6] = workspace['Titan Dummy'].Humanoid,

  [10] = false,
  [7] = false,
  [9] = false,

  [1] = 7,
  [4] = 2e999
}

game.ReplicatedStorage.Logic.hitbox:InvokeServer(unpack(a))
end)
end