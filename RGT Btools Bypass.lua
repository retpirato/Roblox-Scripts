local rawrxd = workspace.CurrentCamera:Clone()
rawrxd:ClearAllChildren()
workspace.CurrentCamera:Destroy()
rawrxd.Parent = workspace
for i=2,4 do
   Instance.new("HopperBin", game:GetService'Players'.LocalPlayer.Backpack).BinType = i
end