for i,v in pairs(game.Players:GetChildren()) do
local Target = v.Name
local R_C = Instance.new("BallSocketConstraint")
R_C.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
local hah = Instance.new("Attachment")
hah.Parent = game.Players[Target].Character.HumanoidRootPart
local hah2 = Instance.new("Attachment")
hah2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
R_C.Attachment0 = hah
R_C.Attachment1 = hah2
R_C.Visible = false
wait(0.1)
end