for i,x in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
    if x:IsA("BasePart") then
        x.BrickColor = BrickColor.Black() or BrickColor.White()
        x.BackSurface = Enum.SurfaceType.Motor
        x.BottomSurface = Enum.SurfaceType.Motor
        x.FrontSurface = Enum.SurfaceType.Motor
        x.LeftSurface = Enum.SurfaceType.Motor
        x.RightSurface = Enum.SurfaceType.Motor
        x.TopSurface = Enum.SurfaceType.Motor
    end
end