local region = Region3.new(Vector3.new(-1250,0,-1250), Vector3.new(1250,18,1250))
region = region:ExpandToGrid(4)
game.Workspace.Terrain:FillRegion(region, 4, Enum.Material.Water)