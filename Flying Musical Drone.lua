wait(2)

local plr = game:GetService("Players").LocalPlayer
local char,mouse = plr.Character,plr:GetMouse()
local camera = game:GetService("Workspace").CurrentCamera
local fly = false
local campos = CFrame.new(0,0,0)

local wd,ad,sd,dd,qd,ed,rd,fd,moused = false,false,false,false,false,false,false,false,false

local returnhome = true
local gun = false
local gcd = false
local shooting = false
local tPitch = 3

local tCf = CFrame.new(0,20,0)

o1 = Instance.new("Model")
o2 = Instance.new("Part")
o3 = Instance.new("BlockMesh")
o4 = Instance.new("Part")
o5 = Instance.new("BlockMesh")
o6 = Instance.new("Part")
o7 = Instance.new("Part")
o8 = Instance.new("BlockMesh")
o9 = Instance.new("Part")
o10 = Instance.new("BlockMesh")
o11 = Instance.new("Part")
o12 = Instance.new("CylinderMesh")
o13 = Instance.new("Part")
o14 = Instance.new("BlockMesh")
o15 = Instance.new("Part")
o16 = Instance.new("BlockMesh")
o17 = Instance.new("Part")
o18 = Instance.new("BlockMesh")
o19 = Instance.new("Part")
o20 = Instance.new("Part")
o21 = Instance.new("BlockMesh")
o22 = Instance.new("Part")
o23 = Instance.new("BlockMesh")
o24 = Instance.new("Part")
o25 = Instance.new("BlockMesh")
o26 = Instance.new("Part")
o27 = Instance.new("Part")
o28 = Instance.new("Part")
o29 = Instance.new("BlockMesh")
o30 = Instance.new("Part")
o31 = Instance.new("BlockMesh")
o32 = Instance.new("Part")
o33 = Instance.new("Part")
o34 = Instance.new("BlockMesh")
o35 = Instance.new("Part")
o36 = Instance.new("CylinderMesh")
o37 = Instance.new("Part")
o38 = Instance.new("CylinderMesh")
o39 = Instance.new("SpotLight")
o40 = Instance.new("Model")
o41 = Instance.new("Part")
o42 = Instance.new("BlockMesh")
o43 = Instance.new("Part")
o44 = Instance.new("BlockMesh")
o45 = Instance.new("Part")
o46 = Instance.new("BlockMesh")
o47 = Instance.new("Part")
o48 = Instance.new("BlockMesh")
o49 = Instance.new("Part")
o50 = Instance.new("BlockMesh")
o51 = Instance.new("Part")
o52 = Instance.new("BlockMesh")
o53 = Instance.new("Model")
o54 = Instance.new("Part")
o55 = Instance.new("BlockMesh")
o56 = Instance.new("Part")
o57 = Instance.new("BlockMesh")
o58 = Instance.new("Part")
o59 = Instance.new("BlockMesh")
o60 = Instance.new("Part")
o61 = Instance.new("BlockMesh")
o62 = Instance.new("Part")
o63 = Instance.new("BlockMesh")
o64 = Instance.new("Part")
o65 = Instance.new("BlockMesh")
o66 = Instance.new("Part")
o67 = Instance.new("BlockMesh")
o68 = Instance.new("Part")
o69 = Instance.new("BlockMesh")
o70 = Instance.new("Part")
o71 = Instance.new("Model")
o72 = Instance.new("Part")
o73 = Instance.new("BlockMesh")
o74 = Instance.new("Part")
o75 = Instance.new("BlockMesh")
o76 = Instance.new("Part")
o77 = Instance.new("BlockMesh")
o78 = Instance.new("Part")
o79 = Instance.new("BlockMesh")
o80 = Instance.new("Part")
o81 = Instance.new("BlockMesh")
o82 = Instance.new("Part")
o83 = Instance.new("BlockMesh")
o84 = Instance.new("Model")
o85 = Instance.new("Part")
o86 = Instance.new("BlockMesh")
o87 = Instance.new("Part")
o88 = Instance.new("BlockMesh")
o89 = Instance.new("Part")
o90 = Instance.new("BlockMesh")
o91 = Instance.new("Part")
o92 = Instance.new("BlockMesh")
o93 = Instance.new("Part")
o94 = Instance.new("BlockMesh")
o95 = Instance.new("Part")
o96 = Instance.new("BlockMesh")
o97 = Instance.new("Part")
o98 = Instance.new("Model")
o99 = Instance.new("Part")
o100 = Instance.new("CylinderMesh")
o101 = Instance.new("Part")
o102 = Instance.new("CylinderMesh")
o103 = Instance.new("Part")
o104 = Instance.new("CylinderMesh")
o105 = Instance.new("Part")
o106 = Instance.new("CylinderMesh")
o107 = Instance.new("Part")
o108 = Instance.new("CylinderMesh")
o109 = Instance.new("Part")
local s = Instance.new("Sound",char)
s.SoundId = "http://www.roblox.com/asset/?id=146830287"
s.Parent = o1.PrimaryPart
s.Pitch = 1
s.Volume = 1
s.Looped = true
wait(0.1)
s:play()

o1.Name = "Drone"
o1.Parent = game.Players.LocalPlayer.Character
o2.Parent = o1
o2.Material = Enum.Material.SmoothPlastic
o2.BrickColor = BrickColor.new("Institutional white")
o2.Position = Vector3.new(13.0515203, 41.184063, -70.0561295)
o2.Anchored = true
o2.CanCollide = false
o2.Size = Vector3.new(0.200000003, 0.200000003, 0.432551533)
o2.CFrame = CFrame.new(13.0515203, 41.184063, -70.0561295, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o2.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o2.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o2.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o2.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o2.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o2.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o2.Color = Color3.new(0.972549, 0.972549, 0.972549)
o2.Position = Vector3.new(13.0515203, 41.184063, -70.0561295)
o3.Parent = o2
o3.Scale = Vector3.new(0.337930918, 0.270344734, 1)
o4.Parent = o1
o4.Material = Enum.Material.SmoothPlastic
o4.BrickColor = BrickColor.new("Institutional white")
o4.Position = Vector3.new(11.0104322, 40.8393707, -70.0561218)
o4.Anchored = true
o4.CanCollide = false
o4.Size = Vector3.new(0.200000003, 0.7434479, 0.432551622)
o4.CFrame = CFrame.new(11.0104322, 40.8393707, -70.0561218, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o4.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o4.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o4.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o4.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o4.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o4.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o4.Color = Color3.new(0.972549, 0.972549, 0.972549)
o4.Position = Vector3.new(11.0104322, 40.8393707, -70.0561218)
o5.Parent = o4
o5.Scale = Vector3.new(0.337930918, 1, 1)
o6.Parent = o1
o6.Material = Enum.Material.SmoothPlastic
o6.BrickColor = BrickColor.new("Institutional white")
o6.Position = Vector3.new(12.0309782, 40.8393707, -70.5968246)
o6.Anchored = true
o6.Size = Vector3.new(2.10868883, 0.7434479, 0.648827374)
o6.CFrame = CFrame.new(12.0309782, 40.8393707, -70.5968246, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o6.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o6.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o6.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o6.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o6.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o6.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o6.Color = Color3.new(0.972549, 0.972549, 0.972549)
o6.Position = Vector3.new(12.0309782, 40.8393707, -70.5968246)
o7.Parent = o1
o7.Material = Enum.Material.SmoothPlastic
o7.BrickColor = BrickColor.new("Institutional white")
o7.Position = Vector3.new(13.0380087, 40.9340019, -70.0561295)
o7.Anchored = true
o7.CanCollide = false
o7.Size = Vector3.new(0.200000003, 0.446068704, 0.432551533)
o7.CFrame = CFrame.new(13.0380087, 40.9340019, -70.0561295, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o7.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o7.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o7.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o7.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o7.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o7.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o7.Color = Color3.new(0.972549, 0.972549, 0.972549)
o7.Position = Vector3.new(13.0380087, 40.9340019, -70.0561295)
o8.Parent = o7
o8.Scale = Vector3.new(0.202758551, 1, 1)
o9.Parent = o1
o9.Material = Enum.Material.SmoothPlastic
o9.BrickColor = BrickColor.new("Institutional white")
o9.Position = Vector3.new(13.0515203, 40.4946709, -70.0561295)
o9.Anchored = true
o9.CanCollide = false
o9.Size = Vector3.new(0.200000003, 0.200000003, 0.432551533)
o9.CFrame = CFrame.new(13.0515203, 40.4946709, -70.0561295, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o9.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o9.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o9.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o9.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o9.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o9.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o9.Color = Color3.new(0.972549, 0.972549, 0.972549)
o9.Position = Vector3.new(13.0515203, 40.4946709, -70.0561295)
o10.Parent = o9
o10.Scale = Vector3.new(0.337930918, 0.270344734, 1)
o11.Parent = o1
o11.Material = Enum.Material.SmoothPlastic
o11.BrickColor = BrickColor.new("Really black")
o11.Position = Vector3.new(13.0447683, 40.9407463, -70.0561218)
o11.Rotation = Vector3.new(-0, 0, -89.9999771)
o11.Anchored = true
o11.CanCollide = false
o11.Size = Vector3.new(0.432551593, 0.200000003, 0.432551533)
o11.CFrame = CFrame.new(13.0447683, 40.9407463, -70.0561218, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o11.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o11.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o11.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o11.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o11.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o11.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o11.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o11.Position = Vector3.new(13.0447683, 40.9407463, -70.0561218)
o12.Parent = o11
o12.Scale = Vector3.new(1, 0.270344734, 1)
o13.Parent = o1
o13.Material = Enum.Material.SmoothPlastic
o13.BrickColor = BrickColor.new("Institutional white")
o13.Position = Vector3.new(11.6057615, 40.8393707, -71.2487564)
o13.Rotation = Vector3.new(-180, 14.9999971, -180)
o13.Anchored = true
o13.CanCollide = false
o13.Size = Vector3.new(1.08137906, 0.200000003, 0.200000003)
o13.CFrame = CFrame.new(11.6057615, 40.8393707, -71.2487564, -0.965925872, 0, 0.258818984, 0, 1, 0, -0.258818984, 0, -0.965925872)
o13.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o13.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o13.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o13.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o13.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o13.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o13.Color = Color3.new(0.972549, 0.972549, 0.972549)
o13.Position = Vector3.new(11.6057615, 40.8393707, -71.2487564)
o14.Parent = o13
o14.Scale = Vector3.new(1, 0.473103225, 0.946206748)
o15.Parent = o1
o15.Material = Enum.Material.SmoothPlastic
o15.BrickColor = BrickColor.new("Institutional white")
o15.Position = Vector3.new(12.0377378, 40.8393707, -69.1775131)
o15.Anchored = true
o15.CanCollide = false
o15.Size = Vector3.new(1.82482684, 0.608275533, 0.200000003)
o15.CFrame = CFrame.new(12.0377378, 40.8393707, -69.1775131, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o15.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o15.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o15.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o15.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o15.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o15.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o15.Color = Color3.new(0.972549, 0.972549, 0.972549)
o15.Position = Vector3.new(12.0377378, 40.8393707, -69.1775131)
o16.Parent = o15
o16.Scale = Vector3.new(1, 1, 0.540689588)
o17.Parent = o1
o17.Material = Enum.Material.SmoothPlastic
o17.BrickColor = BrickColor.new("Institutional white")
o17.Position = Vector3.new(11.5763578, 40.8393707, -68.866394)
o17.Rotation = Vector3.new(-0, 14.9999971, -180)
o17.Anchored = true
o17.CanCollide = false
o17.Size = Vector3.new(1.08137906, 0.200000003, 0.200000003)
o17.CFrame = CFrame.new(11.5763578, 40.8393707, -68.866394, -0.965925872, 0, 0.258818984, 0, -1, 0, 0.258818984, 0, 0.965925872)
o17.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o17.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o17.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o17.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o17.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o17.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o17.Color = Color3.new(0.972549, 0.972549, 0.972549)
o17.Position = Vector3.new(11.5763578, 40.8393707, -68.866394)
o18.Parent = o17
o18.Scale = Vector3.new(1, 0.473103225, 0.946206748)
o19.Parent = o1
o19.Material = Enum.Material.SmoothPlastic
o19.BrickColor = BrickColor.new("Institutional white")
o19.Position = Vector3.new(13.1865072, 40.8325996, -71.4201889)
o19.Rotation = Vector3.new(-180, -14.9999971, -0)
o19.Anchored = true
o19.Size = Vector3.new(0.243310437, 0.243310243, 0.243310302)
o19.CFrame = CFrame.new(13.1865072, 40.8325996, -71.4201889, 0.965925872, 0, -0.258818984, 0, -1, 0, -0.258818984, 0, -0.965925872)
o19.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o19.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o19.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o19.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o19.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o19.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o19.Color = Color3.new(0.972549, 0.972549, 0.972549)
o19.Position = Vector3.new(13.1865072, 40.8325996, -71.4201889)
o20.Parent = o1
o20.Material = Enum.Material.SmoothPlastic
o20.BrickColor = BrickColor.new("Institutional white")
o20.Position = Vector3.new(12.0650892, 40.8393707, -71.0390167)
o20.Rotation = Vector3.new(-180, 0, -180)
o20.Anchored = true
o20.CanCollide = false
o20.Size = Vector3.new(0.432551652, 0.202758521, 0.200000003)
o20.CFrame = CFrame.new(12.0650892, 40.8393707, -71.0390167, -1, 0, 0, 0, 1, 0, 0, 0, -1)
o20.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o20.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o20.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o20.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o20.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o20.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o20.Color = Color3.new(0.972549, 0.972549, 0.972549)
o20.Position = Vector3.new(12.0650892, 40.8393707, -71.0390167)
o21.Parent = o20
o21.Scale = Vector3.new(1, 1, 0.878620446)
o22.Parent = o1
o22.Material = Enum.Material.SmoothPlastic
o22.BrickColor = BrickColor.new("Institutional white")
o22.Position = Vector3.new(12.517333, 40.8393707, -68.866394)
o22.Rotation = Vector3.new(-0, -15.0000248, -0)
o22.Anchored = true
o22.CanCollide = false
o22.Size = Vector3.new(1.08137906, 0.200000003, 0.200000003)
o22.CFrame = CFrame.new(12.517333, 40.8393707, -68.866394, 0.965927541, 0, -0.258819461, 0, 1, 0, 0.258819461, 0, 0.965927541)
o22.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o22.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o22.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o22.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o22.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o22.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o22.Color = Color3.new(0.972549, 0.972549, 0.972549)
o22.Position = Vector3.new(12.517333, 40.8393707, -68.866394)
o23.Parent = o22
o23.Scale = Vector3.new(1, 0.473103225, 0.946206748)
o24.Parent = o1
o24.Material = Enum.Material.SmoothPlastic
o24.BrickColor = BrickColor.new("Institutional white")
o24.Position = Vector3.new(12.0242186, 40.8393707, -70.9347534)
o24.Anchored = true
o24.CanCollide = false
o24.Size = Vector3.new(1.85186148, 0.608275533, 0.200000003)
o24.CFrame = CFrame.new(12.0242186, 40.8393707, -70.9347534, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o24.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o24.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o24.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o24.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o24.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o24.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o24.Color = Color3.new(0.972549, 0.972549, 0.972549)
o24.Position = Vector3.new(12.0242186, 40.8393707, -70.9347534)
o25.Parent = o24
o25.Scale = Vector3.new(1, 1, 0.540689588)
o26.Parent = o1
o26.Material = Enum.Material.SmoothPlastic
o26.BrickColor = BrickColor.new("Institutional white")
o26.Position = Vector3.new(10.936595, 40.8325996, -68.6949692)
o26.Rotation = Vector3.new(-0, 14.9999971, -180)
o26.Anchored = true
o26.Size = Vector3.new(0.243310437, 0.243310243, 0.243310302)
o26.CFrame = CFrame.new(10.936595, 40.8325996, -68.6949692, -0.965925872, 0, 0.258818984, 0, -1, 0, 0.258818984, 0, 0.965925872)
o26.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o26.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o26.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o26.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o26.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o26.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o26.Color = Color3.new(0.972549, 0.972549, 0.972549)
o26.Position = Vector3.new(10.936595, 40.8325996, -68.6949692)
o27.Parent = o1
o27.Material = Enum.Material.SmoothPlastic
o27.BrickColor = BrickColor.new("Institutional white")
o27.Position = Vector3.new(10.9659986, 40.8325996, -71.4201889)
o27.Rotation = Vector3.new(-180, 14.9999971, -180)
o27.Anchored = true
o27.Size = Vector3.new(0.243310437, 0.243310243, 0.243310302)
o27.CFrame = CFrame.new(10.9659986, 40.8325996, -71.4201889, -0.965925872, 0, 0.258818984, 0, 1, 0, -0.258818984, 0, -0.965925872)
o27.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o27.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o27.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o27.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o27.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o27.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o27.Color = Color3.new(0.972549, 0.972549, 0.972549)
o27.Position = Vector3.new(10.9659986, 40.8325996, -71.4201889)
o28.Parent = o1
o28.Material = Enum.Material.SmoothPlastic
o28.BrickColor = BrickColor.new("Institutional white")
o28.Position = Vector3.new(12.0580168, 40.8393707, -69.0761337)
o28.Anchored = true
o28.CanCollide = false
o28.Size = Vector3.new(0.432551652, 0.202758521, 0.200000003)
o28.CFrame = CFrame.new(12.0580168, 40.8393707, -69.0761337, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o28.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o28.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o28.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o28.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o28.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o28.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o28.Color = Color3.new(0.972549, 0.972549, 0.972549)
o28.Position = Vector3.new(12.0580168, 40.8393707, -69.0761337)
o29.Parent = o28
o29.Scale = Vector3.new(1, 1, 0.878620446)
o30.Parent = o1
o30.Material = Enum.Material.SmoothPlastic
o30.BrickColor = BrickColor.new("Institutional white")
o30.Position = Vector3.new(12.0580168, 40.8393707, -69.0355835)
o30.Anchored = true
o30.CanCollide = false
o30.Size = Vector3.new(0.405517191, 0.200000003, 0.256827533)
o30.CFrame = CFrame.new(12.0580168, 40.8393707, -69.0355835, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o30.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o30.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o30.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o30.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o30.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o30.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o30.Color = Color3.new(0.972549, 0.972549, 0.972549)
o30.Position = Vector3.new(12.0580168, 40.8393707, -69.0355835)
o31.Parent = o30
o31.Scale = Vector3.new(1, 0.473103225, 1)
o32.Parent = o1
o32.Material = Enum.Material.SmoothPlastic
o32.BrickColor = BrickColor.new("Institutional white")
o32.Position = Vector3.new(13.1571112, 40.8325996, -68.6949692)
o32.Rotation = Vector3.new(-0, -15.0000248, -0)
o32.Anchored = true
o32.Size = Vector3.new(0.243310437, 0.243310243, 0.243310302)
o32.CFrame = CFrame.new(13.1571112, 40.8325996, -68.6949692, 0.965927541, 0, -0.258819461, 0, 1, 0, 0.258819461, 0, 0.965927541)
o32.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o32.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o32.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o32.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o32.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o32.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o32.Color = Color3.new(0.972549, 0.972549, 0.972549)
o32.Position = Vector3.new(13.1571112, 40.8325996, -68.6949692)
o33.Parent = o1
o33.Material = Enum.Material.SmoothPlastic
o33.BrickColor = BrickColor.new("Institutional white")
o33.Position = Vector3.new(12.5467367, 40.8393707, -71.2487564)
o33.Rotation = Vector3.new(-180, -14.9999971, -0)
o33.Anchored = true
o33.CanCollide = false
o33.Size = Vector3.new(1.08137906, 0.200000003, 0.200000003)
o33.CFrame = CFrame.new(12.5467367, 40.8393707, -71.2487564, 0.965925872, 0, -0.258818984, 0, -1, 0, -0.258818984, 0, -0.965925872)
o33.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o33.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o33.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o33.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o33.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o33.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o33.Color = Color3.new(0.972549, 0.972549, 0.972549)
o33.Position = Vector3.new(12.5467367, 40.8393707, -71.2487564)
o34.Parent = o33
o34.Scale = Vector3.new(1, 0.473103225, 0.946206748)
o35.Parent = o1
o35.Material = Enum.Material.Neon
o35.BrickColor = BrickColor.new("Institutional white")
o35.Position = Vector3.new(13.05828, 40.9407463, -70.0561218)
o35.Rotation = Vector3.new(-0, 0, -89.9999771)
o35.Anchored = true
o35.CanCollide = false
o35.Size = Vector3.new(0.324413657, 0.200000003, 0.432551533)
o35.CFrame = CFrame.new(13.05828, 40.9407463, -70.0561218, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o35.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o35.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o35.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o35.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o35.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o35.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o35.Color = Color3.new(0.972549, 0.972549, 0.972549)
o35.Position = Vector3.new(13.05828, 40.9407463, -70.0561218)
o36.Parent = o35
o36.Scale = Vector3.new(1, 0.405517131, 1)
o37.Name = "Eye"
o37.Parent = o1
o37.Material = Enum.Material.Neon
o37.BrickColor = BrickColor.new("Lime green")
o37.Position = Vector3.new(13.0515203, 40.9407463, -70.0561218)
o37.Rotation = Vector3.new(-0, 0, -89.9999771)
o37.Anchored = true
o37.CanCollide = false
o37.Size = Vector3.new(0.405517131, 0.200000003, 0.432551533)
o37.CFrame = CFrame.new(13.0515203, 40.9407463, -70.0561218, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o37.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o37.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o37.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o37.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o37.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o37.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o37.Color = Color3.new(0, 1, 0)
o37.Position = Vector3.new(13.0515203, 40.9407463, -70.0561218)
o38.Parent = o37
o38.Scale = Vector3.new(1, 0.337930918, 1)
o39.Parent = o37
o39.Color = Color3.new(0, 1, 0)
o39.Brightness = 3
o39.Face = Enum.NormalId.Top
o39.Name = "Light"
o40.Name = "Rotor4"
o40.Parent = o1
o40.PrimaryPart = o41
o41.Name = "Main"
o41.Parent = o40
o41.Material = Enum.Material.SmoothPlastic
o41.BrickColor = BrickColor.new("Fossil")
o41.Position = Vector3.new(13.1841497, 41.1367531, -71.4254456)
o41.Anchored = true
o41.CanCollide = false
o41.Size = Vector3.new(0.200000003, 0.36496532, 0.200000003)
o41.CFrame = CFrame.new(13.1841497, 41.1367531, -71.4254456, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o41.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o41.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o41.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o41.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o41.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o41.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o41.Color = Color3.new(0.623529, 0.631373, 0.67451)
o41.Position = Vector3.new(13.1841497, 41.1367531, -71.4254456)
o42.Parent = o41
o42.Scale = Vector3.new(0.405518085, 1, 0.40551728)
o43.Parent = o40
o43.Material = Enum.Material.SmoothPlastic
o43.BrickColor = BrickColor.new("Fossil")
o43.Position = Vector3.new(13.1841497, 41.3597794, -71.4254456)
o43.Anchored = true
o43.CanCollide = false
o43.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o43.CFrame = CFrame.new(13.1841497, 41.3597794, -71.4254456, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o43.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o43.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o43.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o43.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o43.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o43.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o43.Color = Color3.new(0.623529, 0.631373, 0.67451)
o43.Position = Vector3.new(13.1841497, 41.3597794, -71.4254456)
o44.Parent = o43
o44.Scale = Vector3.new(0.540690422, 0.540689468, 0.540689766)
o45.Parent = o40
o45.Material = Enum.Material.SmoothPlastic
o45.BrickColor = BrickColor.new("Fossil")
o45.Position = Vector3.new(13.1841497, 41.3597794, -71.1821365)
o45.Rotation = Vector3.new(-0, 0, -14.9999666)
o45.Anchored = true
o45.CanCollide = false
o45.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o45.CFrame = CFrame.new(13.1841497, 41.3597794, -71.1821365, 0.965925932, 0.258818477, 0, -0.258818448, 0.965926051, 0, 0, 0, 1)
o45.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o45.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o45.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o45.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o45.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o45.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o45.Color = Color3.new(0.623529, 0.631373, 0.67451)
o45.Position = Vector3.new(13.1841497, 41.3597794, -71.1821365)
o46.Parent = o45
o46.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o47.Parent = o40
o47.Material = Enum.Material.SmoothPlastic
o47.BrickColor = BrickColor.new("Fossil")
o47.Position = Vector3.new(12.9408331, 41.3597794, -71.4254456)
o47.Rotation = Vector3.new(14.999939, -90, 0)
o47.Anchored = true
o47.CanCollide = false
o47.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o47.CFrame = CFrame.new(12.9408331, 41.3597794, -71.4254456, 0, 0, -1, -0.25881803, 0.965926111, 0, 0.965926111, 0.25881803, 0)
o47.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o47.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o47.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o47.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o47.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o47.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o47.Color = Color3.new(0.623529, 0.631373, 0.67451)
o47.Position = Vector3.new(12.9408331, 41.3597794, -71.4254456)
o48.Parent = o47
o48.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o49.Parent = o40
o49.Material = Enum.Material.SmoothPlastic
o49.BrickColor = BrickColor.new("Fossil")
o49.Position = Vector3.new(13.1841497, 41.3597794, -71.6687622)
o49.Rotation = Vector3.new(-0, 0, 14.9999952)
o49.Anchored = true
o49.CanCollide = false
o49.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o49.CFrame = CFrame.new(13.1841497, 41.3597794, -71.6687622, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1)
o49.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o49.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o49.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o49.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o49.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o49.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o49.Color = Color3.new(0.623529, 0.631373, 0.67451)
o49.Position = Vector3.new(13.1841497, 41.3597794, -71.6687622)
o50.Parent = o49
o50.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o51.Parent = o40
o51.Material = Enum.Material.SmoothPlastic
o51.BrickColor = BrickColor.new("Fossil")
o51.Position = Vector3.new(13.4274492, 41.3597794, -71.4254532)
o51.Rotation = Vector3.new(-14.9999952, -90, 0)
o51.Anchored = true
o51.CanCollide = false
o51.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o51.CFrame = CFrame.new(13.4274492, 41.3597794, -71.4254532, 0, 0, -1, 0.258818984, 0.965925872, 0, 0.965925872, -0.258818984, 0)
o51.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o51.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o51.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o51.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o51.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o51.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o51.Color = Color3.new(0.623529, 0.631373, 0.67451)
o51.Position = Vector3.new(13.4274492, 41.3597794, -71.4254532)
o52.Parent = o51
o52.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o53.Name = "Rotor3"
o53.Parent = o1
o53.PrimaryPart = o54
o54.Name = "Main"
o54.Parent = o53
o54.Material = Enum.Material.SmoothPlastic
o54.BrickColor = BrickColor.new("Fossil")
o54.Position = Vector3.new(10.9673338, 41.1367531, -71.4254456)
o54.Anchored = true
o54.CanCollide = false
o54.Size = Vector3.new(0.200000003, 0.36496532, 0.200000003)
o54.CFrame = CFrame.new(10.9673338, 41.1367531, -71.4254456, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o54.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o54.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o54.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o54.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o54.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o54.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o54.Color = Color3.new(0.623529, 0.631373, 0.67451)
o54.Position = Vector3.new(10.9673338, 41.1367531, -71.4254456)
o55.Parent = o54
o55.Scale = Vector3.new(0.405518085, 1, 0.40551728)
o56.Parent = o53
o56.Material = Enum.Material.SmoothPlastic
o56.BrickColor = BrickColor.new("Fossil")
o56.Position = Vector3.new(10.9673338, 41.3597794, -71.4254456)
o56.Anchored = true
o56.CanCollide = false
o56.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o56.CFrame = CFrame.new(10.9673338, 41.3597794, -71.4254456, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o56.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o56.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o56.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o56.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o56.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o56.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o56.Color = Color3.new(0.623529, 0.631373, 0.67451)
o56.Position = Vector3.new(10.9673338, 41.3597794, -71.4254456)
o57.Parent = o56
o57.Scale = Vector3.new(0.540690422, 0.540689468, 0.540689766)
o58.Parent = o53
o58.Material = Enum.Material.SmoothPlastic
o58.BrickColor = BrickColor.new("Fossil")
o58.Position = Vector3.new(10.9673338, 41.3597794, -71.1821365)
o58.Rotation = Vector3.new(-0, 0, -14.9999666)
o58.Anchored = true
o58.CanCollide = false
o58.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o58.CFrame = CFrame.new(10.9673338, 41.3597794, -71.1821365, 0.965925932, 0.258818477, 0, -0.258818448, 0.965926051, 0, 0, 0, 1)
o58.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o58.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o58.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o58.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o58.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o58.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o58.Color = Color3.new(0.623529, 0.631373, 0.67451)
o58.Position = Vector3.new(10.9673338, 41.3597794, -71.1821365)
o59.Parent = o58
o59.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o60.Parent = o53
o60.Material = Enum.Material.SmoothPlastic
o60.BrickColor = BrickColor.new("Fossil")
o60.Position = Vector3.new(10.7240248, 41.3597794, -71.4254456)
o60.Rotation = Vector3.new(14.999939, -90, 0)
o60.Anchored = true
o60.CanCollide = false
o60.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o60.CFrame = CFrame.new(10.7240248, 41.3597794, -71.4254456, 0, 0, -1, -0.25881803, 0.965926111, 0, 0.965926111, 0.25881803, 0)
o60.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o60.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o60.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o60.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o60.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o60.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o60.Color = Color3.new(0.623529, 0.631373, 0.67451)
o60.Position = Vector3.new(10.7240248, 41.3597794, -71.4254456)
o61.Parent = o60
o61.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o62.Parent = o53
o62.Material = Enum.Material.SmoothPlastic
o62.BrickColor = BrickColor.new("Fossil")
o62.Position = Vector3.new(10.9673338, 41.3597794, -71.6687622)
o62.Rotation = Vector3.new(-0, 0, 14.9999952)
o62.Anchored = true
o62.CanCollide = false
o62.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o62.CFrame = CFrame.new(10.9673338, 41.3597794, -71.6687622, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1)
o62.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o62.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o62.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o62.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o62.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o62.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o62.Color = Color3.new(0.623529, 0.631373, 0.67451)
o62.Position = Vector3.new(10.9673338, 41.3597794, -71.6687622)
o63.Parent = o62
o63.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o64.Parent = o53
o64.Material = Enum.Material.SmoothPlastic
o64.BrickColor = BrickColor.new("Fossil")
o64.Position = Vector3.new(11.2106352, 41.3597794, -71.4254532)
o64.Rotation = Vector3.new(-14.9999952, -90, 0)
o64.Anchored = true
o64.CanCollide = false
o64.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o64.CFrame = CFrame.new(11.2106352, 41.3597794, -71.4254532, 0, 0, -1, 0.258818984, 0.965925872, 0, 0.965925872, -0.258818984, 0)
o64.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o64.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o64.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o64.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o64.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o64.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o64.Color = Color3.new(0.623529, 0.631373, 0.67451)
o64.Position = Vector3.new(11.2106352, 41.3597794, -71.4254532)
o65.Parent = o64
o65.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o66.Parent = o1
o66.Material = Enum.Material.SmoothPlastic
o66.BrickColor = BrickColor.new("Institutional white")
o66.Position = Vector3.new(13.0515203, 40.6163445, -70.1642685)
o66.Anchored = true
o66.CanCollide = false
o66.Size = Vector3.new(0.200000003, 0.200000003, 0.216275766)
o66.CFrame = CFrame.new(13.0515203, 40.6163445, -70.1642685, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o66.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o66.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o66.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o66.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o66.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o66.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o66.Color = Color3.new(0.972549, 0.972549, 0.972549)
o66.Position = Vector3.new(13.0515203, 40.6163445, -70.1642685)
o67.Parent = o66
o67.Scale = Vector3.new(0.337930918, 0.94620645, 1)
o68.Name = "SmgShutter"
o68.Parent = o1
o68.Material = Enum.Material.SmoothPlastic
o68.BrickColor = BrickColor.new("Institutional white")
o68.Position = Vector3.new(13.0515203, 40.6163445, -69.9479904)
o68.Anchored = true
o68.CanCollide = false
o68.Size = Vector3.new(0.200000003, 0.200000003, 0.216275766)
o68.CFrame = CFrame.new(13.0515203, 40.6163445, -69.9479904, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o68.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o68.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o68.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o68.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o68.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o68.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o68.Color = Color3.new(0.972549, 0.972549, 0.972549)
o68.Position = Vector3.new(13.0515203, 40.6163445, -69.9479904)
o69.Parent = o68
o69.Scale = Vector3.new(0.337930918, 0.94620645, 1)
o70.Parent = o1
o70.Material = Enum.Material.SmoothPlastic
o70.BrickColor = BrickColor.new("Institutional white")
o70.Position = Vector3.new(12.0242186, 40.8325996, -70.0561218)
o70.Anchored = true
o70.Size = Vector3.new(1.98703384, 0.865103006, 1.62206864)
o70.CFrame = CFrame.new(12.0242186, 40.8325996, -70.0561218, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o70.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o70.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o70.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o70.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o70.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o70.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o70.Color = Color3.new(0.972549, 0.972549, 0.972549)
o70.Position = Vector3.new(12.0242186, 40.8325996, -70.0561218)
o71.Name = "Rotor1"
o71.Parent = o1
o71.PrimaryPart = o72
o72.Name = "Main"
o72.Parent = o71
o72.Material = Enum.Material.SmoothPlastic
o72.BrickColor = BrickColor.new("Fossil")
o72.Position = Vector3.new(13.1571112, 41.1367531, -68.6949692)
o72.Anchored = true
o72.CanCollide = false
o72.Size = Vector3.new(0.200000003, 0.36496532, 0.200000003)
o72.CFrame = CFrame.new(13.1571112, 41.1367531, -68.6949692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o72.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o72.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o72.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o72.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o72.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o72.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o72.Color = Color3.new(0.623529, 0.631373, 0.67451)
o72.Position = Vector3.new(13.1571112, 41.1367531, -68.6949692)
o73.Parent = o72
o73.Scale = Vector3.new(0.405518085, 1, 0.40551728)
o74.Parent = o71
o74.Material = Enum.Material.SmoothPlastic
o74.BrickColor = BrickColor.new("Fossil")
o74.Position = Vector3.new(13.1571112, 41.3597794, -68.6949692)
o74.Anchored = true
o74.CanCollide = false
o74.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o74.CFrame = CFrame.new(13.1571112, 41.3597794, -68.6949692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o74.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o74.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o74.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o74.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o74.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o74.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o74.Color = Color3.new(0.623529, 0.631373, 0.67451)
o74.Position = Vector3.new(13.1571112, 41.3597794, -68.6949692)
o75.Parent = o74
o75.Scale = Vector3.new(0.540690422, 0.540689468, 0.540689766)
o76.Parent = o71
o76.Material = Enum.Material.SmoothPlastic
o76.BrickColor = BrickColor.new("Fossil")
o76.Position = Vector3.new(13.1571112, 41.3597794, -68.4516602)
o76.Rotation = Vector3.new(-0, 0, -14.9999666)
o76.Anchored = true
o76.CanCollide = false
o76.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o76.CFrame = CFrame.new(13.1571112, 41.3597794, -68.4516602, 0.965925932, 0.258818477, 0, -0.258818448, 0.965926051, 0, 0, 0, 1)
o76.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o76.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o76.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o76.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o76.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o76.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o76.Color = Color3.new(0.623529, 0.631373, 0.67451)
o76.Position = Vector3.new(13.1571112, 41.3597794, -68.4516602)
o77.Parent = o76
o77.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o78.Parent = o71
o78.Material = Enum.Material.SmoothPlastic
o78.BrickColor = BrickColor.new("Fossil")
o78.Position = Vector3.new(12.9138021, 41.3597794, -68.6949692)
o78.Rotation = Vector3.new(14.999939, -90, 0)
o78.Anchored = true
o78.CanCollide = false
o78.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o78.CFrame = CFrame.new(12.9138021, 41.3597794, -68.6949692, 0, 0, -1, -0.25881803, 0.965926111, 0, 0.965926111, 0.25881803, 0)
o78.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o78.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o78.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o78.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o78.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o78.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o78.Color = Color3.new(0.623529, 0.631373, 0.67451)
o78.Position = Vector3.new(12.9138021, 41.3597794, -68.6949692)
o79.Parent = o78
o79.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o80.Parent = o71
o80.Material = Enum.Material.SmoothPlastic
o80.BrickColor = BrickColor.new("Fossil")
o80.Position = Vector3.new(13.1571112, 41.3597794, -68.9382782)
o80.Rotation = Vector3.new(-0, 0, 14.9999952)
o80.Anchored = true
o80.CanCollide = false
o80.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o80.CFrame = CFrame.new(13.1571112, 41.3597794, -68.9382782, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1)
o80.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o80.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o80.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o80.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o80.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o80.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o80.Color = Color3.new(0.623529, 0.631373, 0.67451)
o80.Position = Vector3.new(13.1571112, 41.3597794, -68.9382782)
o81.Parent = o80
o81.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o82.Parent = o71
o82.Material = Enum.Material.SmoothPlastic
o82.BrickColor = BrickColor.new("Fossil")
o82.Position = Vector3.new(13.4004259, 41.3597794, -68.6949692)
o82.Rotation = Vector3.new(-14.9999952, -90, 0)
o82.Anchored = true
o82.CanCollide = false
o82.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o82.CFrame = CFrame.new(13.4004259, 41.3597794, -68.6949692, 0, 0, -1, 0.258818984, 0.965925872, 0, 0.965925872, -0.258818984, 0)
o82.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o82.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o82.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o82.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o82.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o82.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o82.Color = Color3.new(0.623529, 0.631373, 0.67451)
o82.Position = Vector3.new(13.4004259, 41.3597794, -68.6949692)
o83.Parent = o82
o83.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o84.Name = "Rotor2"
o84.Parent = o1
o84.PrimaryPart = o85
o85.Name = "Main"
o85.Parent = o84
o85.Material = Enum.Material.SmoothPlastic
o85.BrickColor = BrickColor.new("Fossil")
o85.Position = Vector3.new(10.9403028, 41.1367531, -68.6949692)
o85.Anchored = true
o85.CanCollide = false
o85.Size = Vector3.new(0.200000003, 0.36496532, 0.200000003)
o85.CFrame = CFrame.new(10.9403028, 41.1367531, -68.6949692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o85.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o85.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o85.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o85.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o85.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o85.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o85.Color = Color3.new(0.623529, 0.631373, 0.67451)
o85.Position = Vector3.new(10.9403028, 41.1367531, -68.6949692)
o86.Parent = o85
o86.Scale = Vector3.new(0.405518085, 1, 0.40551728)
o87.Parent = o84
o87.Material = Enum.Material.SmoothPlastic
o87.BrickColor = BrickColor.new("Fossil")
o87.Position = Vector3.new(10.9403028, 41.3597794, -68.6949692)
o87.Anchored = true
o87.CanCollide = false
o87.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o87.CFrame = CFrame.new(10.9403028, 41.3597794, -68.6949692, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o87.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o87.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o87.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o87.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o87.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o87.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o87.Color = Color3.new(0.623529, 0.631373, 0.67451)
o87.Position = Vector3.new(10.9403028, 41.3597794, -68.6949692)
o88.Parent = o87
o88.Scale = Vector3.new(0.540690422, 0.540689468, 0.540689766)
o89.Parent = o84
o89.Material = Enum.Material.SmoothPlastic
o89.BrickColor = BrickColor.new("Fossil")
o89.Position = Vector3.new(10.9403028, 41.3597794, -68.4516602)
o89.Rotation = Vector3.new(-0, 0, -14.9999666)
o89.Anchored = true
o89.CanCollide = false
o89.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o89.CFrame = CFrame.new(10.9403028, 41.3597794, -68.4516602, 0.965925932, 0.258818477, 0, -0.258818448, 0.965926051, 0, 0, 0, 1)
o89.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o89.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o89.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o89.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o89.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o89.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o89.Color = Color3.new(0.623529, 0.631373, 0.67451)
o89.Position = Vector3.new(10.9403028, 41.3597794, -68.4516602)
o90.Parent = o89
o90.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o91.Parent = o84
o91.Material = Enum.Material.SmoothPlastic
o91.BrickColor = BrickColor.new("Fossil")
o91.Position = Vector3.new(10.6969938, 41.3597794, -68.6949692)
o91.Rotation = Vector3.new(14.999939, -90, 0)
o91.Anchored = true
o91.CanCollide = false
o91.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o91.CFrame = CFrame.new(10.6969938, 41.3597794, -68.6949692, 0, 0, -1, -0.25881803, 0.965926111, 0, 0.965926111, 0.25881803, 0)
o91.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o91.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o91.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o91.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o91.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o91.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o91.Color = Color3.new(0.623529, 0.631373, 0.67451)
o91.Position = Vector3.new(10.6969938, 41.3597794, -68.6949692)
o92.Parent = o91
o92.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o93.Parent = o84
o93.Material = Enum.Material.SmoothPlastic
o93.BrickColor = BrickColor.new("Fossil")
o93.Position = Vector3.new(10.9403028, 41.3597794, -68.9382782)
o93.Rotation = Vector3.new(-0, 0, 14.9999952)
o93.Anchored = true
o93.CanCollide = false
o93.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o93.CFrame = CFrame.new(10.9403028, 41.3597794, -68.9382782, 0.965925872, -0.258818984, 0, 0.258818984, 0.965925872, 0, 0, 0, 1)
o93.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o93.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o93.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o93.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o93.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o93.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o93.Color = Color3.new(0.623529, 0.631373, 0.67451)
o93.Position = Vector3.new(10.9403028, 41.3597794, -68.9382782)
o94.Parent = o93
o94.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o95.Parent = o84
o95.Material = Enum.Material.SmoothPlastic
o95.BrickColor = BrickColor.new("Fossil")
o95.Position = Vector3.new(11.1836042, 41.3597794, -68.6949692)
o95.Rotation = Vector3.new(-14.9999952, -90, 0)
o95.Anchored = true
o95.CanCollide = false
o95.Size = Vector3.new(0.200000003, 0.200000003, 0.405517161)
o95.CFrame = CFrame.new(11.1836042, 41.3597794, -68.6949692, 0, 0, -1, 0.258818984, 0.965925872, 0, 0.965925872, -0.258818984, 0)
o95.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o95.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o95.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o95.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o95.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o95.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o95.Color = Color3.new(0.623529, 0.631373, 0.67451)
o95.Position = Vector3.new(11.1836042, 41.3597794, -68.6949692)
o96.Parent = o95
o96.Scale = Vector3.new(0.405518085, 0.135172486, 1)
o97.Parent = o1
o97.Material = Enum.Material.SmoothPlastic
o97.BrickColor = BrickColor.new("Institutional white")
o97.Position = Vector3.new(12.0309782, 40.8393707, -69.5154419)
o97.Anchored = true
o97.Size = Vector3.new(2.10868883, 0.7434479, 0.648827374)
o97.CFrame = CFrame.new(12.0309782, 40.8393707, -69.5154419, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o97.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o97.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o97.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o97.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o97.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o97.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o97.Color = Color3.new(0.972549, 0.972549, 0.972549)
o97.Position = Vector3.new(12.0309782, 40.8393707, -69.5154419)
o98.Name = "Smg"
o98.Parent = o1
o99.Parent = o98
o99.Material = Enum.Material.SmoothPlastic
o99.BrickColor = BrickColor.new("Smoky grey")
o99.Position = Vector3.new(12.7068396, 40.616333, -69.9344788)
o99.Rotation = Vector3.new(-0, 0, -89.9999771)
o99.Anchored = true
o99.CanCollide = false
o99.Size = Vector3.new(0.200000003, 0.216275766, 0.200000003)
o99.CFrame = CFrame.new(12.7068396, 40.616333, -69.9344788, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o99.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o99.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o99.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o99.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o99.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o99.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o99.Color = Color3.new(0.356863, 0.364706, 0.411765)
o99.Position = Vector3.new(12.7068396, 40.616333, -69.9344788)
o100.Parent = o99
o100.Scale = Vector3.new(0.946206272, 1, 0.946206272)
o101.Parent = o98
o101.Material = Enum.Material.SmoothPlastic
o101.BrickColor = BrickColor.new("Smoky grey")
o101.Position = Vector3.new(12.8217306, 40.616333, -69.9344788)
o101.Rotation = Vector3.new(-0, 0, -89.9999771)
o101.Anchored = true
o101.CanCollide = false
o101.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o101.CFrame = CFrame.new(12.8217306, 40.616333, -69.9344788, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o101.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o101.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o101.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o101.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o101.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o101.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o101.Color = Color3.new(0.356863, 0.364706, 0.411765)
o101.Position = Vector3.new(12.8217306, 40.616333, -69.9344788)
o102.Parent = o101
o102.Scale = Vector3.new(0.811033964, 0.20275867, 0.946206272)
o103.Parent = o98
o103.Material = Enum.Material.SmoothPlastic
o103.BrickColor = BrickColor.new("Smoky grey")
o103.Position = Vector3.new(12.9095907, 40.6298485, -69.9344788)
o103.Rotation = Vector3.new(-0, 0, -89.9999771)
o103.Anchored = true
o103.CanCollide = false
o103.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o103.CFrame = CFrame.new(12.9095907, 40.6298485, -69.9344788, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o103.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o103.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o103.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o103.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o103.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o103.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o103.Color = Color3.new(0.356863, 0.364706, 0.411765)
o103.Position = Vector3.new(12.9095907, 40.6298485, -69.9344788)
o104.Parent = o103
o104.Scale = Vector3.new(0.54068929, 0.811033964, 0.946206272)
o105.Name = "SMGPipeH"
o105.Parent = o98
o105.Material = Enum.Material.SmoothPlastic
o105.BrickColor = BrickColor.new("Really black")
o105.Position = Vector3.new(12.9974585, 40.6298485, -69.9344788)
o105.Rotation = Vector3.new(-0, 0, -89.9999771)
o105.Anchored = true
o105.CanCollide = false
o105.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o105.CFrame = CFrame.new(12.9974585, 40.6298485, -69.9344788, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o105.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o105.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o105.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o105.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o105.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o105.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o105.Color = Color3.new(0.0666667, 0.0666667, 0.0666667)
o105.Position = Vector3.new(12.9974585, 40.6298485, -69.9344788)
o106.Parent = o105
o106.Scale = Vector3.new(0.270344585, 0.0675861686, 0.946206272)
o107.Parent = o98
o107.Material = Enum.Material.SmoothPlastic
o107.BrickColor = BrickColor.new("Smoky grey")
o107.Position = Vector3.new(12.8758001, 40.5825348, -69.9344788)
o107.Rotation = Vector3.new(-0, 0, -89.9999771)
o107.Anchored = true
o107.CanCollide = false
o107.Size = Vector3.new(0.200000003, 0.200000003, 0.200000003)
o107.CFrame = CFrame.new(12.8758001, 40.5825348, -69.9344788, 4.17232513e-07, 1.00000525, 0, -1.00000525, 4.17232513e-07, 0, 0, 0, 1)
o107.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o107.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o107.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o107.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o107.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o107.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o107.Color = Color3.new(0.356863, 0.364706, 0.411765)
o107.Position = Vector3.new(12.8758001, 40.5825348, -69.9344788)
o108.Parent = o107
o108.Scale = Vector3.new(0.337930739, 0.473103255, 0.946206272)
o109.Name = "Controller"
o109.Parent = o1
o109.Material = Enum.Material.SmoothPlastic
o109.BrickColor = BrickColor.new("Institutional white")
o109.Position = Vector3.new(12.0515394, 40.7946739, -70.0561295)
o109.Anchored = true
o109.CanCollide = false
o109.Size = Vector3.new(0.200000003, 0.400000006, 0.432551533)
o109.CFrame = CFrame.new(12.0515394, 40.7946739, -70.0561295, 1, 0, 0, 0, 1, 0, 0, 0, 1)
o109.BackSurface = Enum.SurfaceType.SmoothNoOutlines
o109.BottomSurface = Enum.SurfaceType.SmoothNoOutlines
o109.FrontSurface = Enum.SurfaceType.SmoothNoOutlines
o109.LeftSurface = Enum.SurfaceType.SmoothNoOutlines
o109.RightSurface = Enum.SurfaceType.SmoothNoOutlines
o109.TopSurface = Enum.SurfaceType.SmoothNoOutlines
o109.Color = Color3.new(0.972549, 0.972549, 0.972549)
o109.Position = Vector3.new(12.0515394, 40.7946739, -70.0561295)
o1.PrimaryPart = o109
s.SoundId = "rbxassetid://146830287"
s.Parent = o1.PrimaryPart
s.Pitch = 1
s.Volume = 2
s.Looped = true
wait(0.1)
s:play()


local seat = Instance.new("Seat",o1)
seat.Name = "Seat"
seat.Size = Vector3.new(1,1,1)
seat.Transparency = 1
seat.CFrame = o1.Controller.CFrame * CFrame.Angles(math.rad(0),math.rad(-90),math.rad(0))
seat.CanCollide = false

local soisoi = Instance.new("Sound",o1.Controller)
soisoi.SoundId = "rbxassetid://151800925"
soisoi.Volume = 0.3
soisoi.Pitch = 3
soisoi.Looped = true
soisoi:Play()

o1:FindFirstChild("Rotor1").PrimaryPart = o1:FindFirstChild("Rotor1").Main
o1:FindFirstChild("Rotor2").PrimaryPart = o1:FindFirstChild("Rotor2").Main
o1:FindFirstChild("Rotor3").PrimaryPart = o1:FindFirstChild("Rotor3").Main
o1:FindFirstChild("Rotor4").PrimaryPart = o1:FindFirstChild("Rotor4").Main
o1:FindFirstChild("Smg").PrimaryPart = o1:FindFirstChild("Smg").SMGPipeH

o1:FindFirstChild("Eye").Changed:connect(function()
	o1:FindFirstChild("Eye").Light.Color = o1:FindFirstChild("Eye").Color
end)

o1:FindFirstChild("Eye").BrickColor = BrickColor.new("New Yeller")

for i,v in pairs(o1:GetChildren()) do
	if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("WedgePart") then
		if v.BrickColor == BrickColor.new("Institutional white") then
			v.BrickColor = BrickColor.new("Really black")
		end
		if v.Material ~= Enum.Material.Neon then
			v.Material = "Metal"
		end
		local w = Instance.new("Weld",o109)
		w.Part0 = o109
		w.Part1 = v
		w.C0 = CFrame.new(v.Position-o109.CFrame.p)*CFrame.Angles(math.rad(v.Rotation.X),math.rad(v.Rotation.Y),math.rad(v.Rotation.Z))
	end
end

for i,v in pairs(o1:FindFirstChild("Rotor1"):GetChildren()) do
	v.BrickColor = BrickColor.new("Really black")
end
for i,v in pairs(o1:FindFirstChild("Rotor2"):GetChildren()) do
	v.BrickColor = BrickColor.new("Really black")
end
for i,v in pairs(o1:FindFirstChild("Rotor3"):GetChildren()) do
	v.BrickColor = BrickColor.new("Really black")
end
for i,v in pairs(o1:FindFirstChild("Rotor4"):GetChildren()) do
	v.BrickColor = BrickColor.new("Really black")
end

--o1.SmgShutter.Material = "DiamondPlate"

local plr = game:GetService("Players").LocalPlayer
local msgidGlob = 0
local state = true
local font = "Arcade"
local tcol = Color3.fromRGB(255,217,0)
local tscol = Color3.fromRGB(0,0,0)
local fsiz = 28
local tr = true
local fade = 2

local p = Instance.new("Part",game.Workspace)
p.Size = Vector3.new(0.2,0.2,0.2)
p.Transparency = 1
p.Anchored = true
p.CanCollide = false
p.Name = "Msg"
p.CFrame = o1.PrimaryPart.CFrame + Vector3.new(0,2.25,0)

local r = 255
local b = 0
local g = 0

function cMsg(c)
	msgidGlob = msgidGlob + 1
	local curMsgId = msgidGlob
	for i,v in pairs(p:GetChildren()) do
		if v:IsA("BillboardGui") and v.Name == "J2CMSG" then
			v:Destroy()
		end
	end
	local bbgui = Instance.new("BillboardGui",p)
	bbgui.Name = "J2CMSG"
	bbgui.AlwaysOnTop = true
	bbgui.ExtentsOffsetWorldSpace = Vector3.new(0,4.5,0)
	bbgui.Size = UDim2.new(0.2,0,0.14,0)
	local tl = Instance.new("TextLabel",bbgui)
	tl.BackgroundTransparency = 1
	tl.BorderSizePixel = 0
	tl.Size = UDim2.new(1,0,10,0)
	tl.Position = UDim2.new(0,0,-5,0)
	tl.Font = font or "Arcade"
	tl.FontSize = "Size"..fsiz or "Size28"
	tl.TextColor3 = tcol
	tl.TextScaled = false
	tl.TextWrapped = false
	tl.TextStrokeColor3 = tscol
	tl.TextStrokeTransparency = 0
			
	game:GetService("RunService").RenderStepped:connect(function()
		if tr then
			if tl.Parent ~= nil then
				tl.TextColor3 = Color3.fromRGB(r,g,b)
			end
		end
	end)

	for i=1,#c do
		if msgidGlob == curMsgId then
			tl.Text = string.sub(c,1,i)
			if string.sub(c,i,i) ~= " " then
				local s = Instance.new("Sound",p)
				s.SoundId = "rbxassetid://418252437"
				s.Volume = 1
				s.Pitch = 1
				s:Play()
				game.Debris:AddItem(s,2)
			end
			wait()
		end
	end
	wait(fade)
	if msgidGlob == curMsgId then
		for i=1,10 do
			if msgidGlob == curMsgId then
				tl.TextTransparency = tl.TextTransparency + 0.1
				tl.TextStrokeTransparency = tl.TextStrokeTransparency + 0.1
				tl.Position = tl.Position + UDim2.new(0,0,0,-3)
				wait()
			end
		end
		if msgidGlob == curMsgId then
			bbgui:Destroy()
		end
	end
end

mouse.KeyDown:connect(function(key)
	if key == "b" then
		if fly == false then
			fly = true
			campos = camera.CoordinateFrame
			cMsg("Remote control!")
		else
			fly = false
			returnhome = false
			cMsg("Standby.")
		end
	end
	if key == "w" then
		wd = true
	elseif key == "a" then
		ad = true
	elseif key == "s" then
		sd = true
	elseif key == "d" then
		dd = true
	elseif key == "q" then
		qd = true
	elseif key == "e" then
		ed = true
	elseif key == "r" then
		rd = true
	elseif key == "f" then
		fd = true
	elseif key == "t" then
		if fly == false and returnhome == false then
			returnhome = true
			cMsg("Returning home!")
		elseif fly == false and returnhome == true then
			returnhome = false
			cMsg("Standby.")
		end
	elseif key == "g" then
		if gcd == false and moused == false then
			gcd = true
			if gun == false then
				spawn(function() cMsg("Gun Mode Activated!") end)
				gun = true
				o1.SmgShutter.Transparency = 1
				for i=1,30 do
					o1.Smg:SetPrimaryPartCFrame(o1.Smg.PrimaryPart.CFrame * CFrame.new(0,0.01,0))
					wait()
				end
			else
				spawn(function() cMsg("Deactivating gun mode.") end)
				gun = false
				for i=1,30 do
					o1.Smg:SetPrimaryPartCFrame(o1.Smg.PrimaryPart.CFrame * CFrame.new(0,-0.01,0))
					wait()
				end
				o1.SmgShutter.Transparency = 0
			end
			wait(1)
			gcd = false
		end
	end
end)

mouse.KeyUp:connect(function(key)
	if key == "w" then
		wd = false
	elseif key == "a" then
		ad = false
	elseif key == "s" then
		sd = false
	elseif key == "d" then
		dd = false
	elseif key == "q" then
		qd = false
	elseif key == "e" then
		ed = false
	elseif key == "r" then
		rd = false
	elseif key == "f" then
		fd = false
	end
end)

mouse.Button1Down:connect(function()
	if moused == false and gun == true then
		moused = true
		local frms = 0
		frm = game:GetService("RunService").RenderStepped:connect(function()
			if math.floor(frms/5) == frms/5 then
				spawn(function()
					local ray = Ray.new(o1.Smg.SMGPipeH.CFrame.p,((mouse.Hit.p - o1.Smg.SMGPipeH.CFrame.p).unit*2048) + Vector3.new(math.random(-1000,1000)/50,math.random(-1000,1000)/50,math.random(-1000,1000)/50))
					local part,pos,normal = game:GetService("Workspace"):FindPartOnRayWithIgnoreList(ray,char:GetChildren(),false,true)
					local trace = Instance.new("Part")
					trace.BrickColor = BrickColor.new("New Yeller")
					trace.Size = Vector3.new(0.2,0.2,(o1.Smg.SMGPipeH.CFrame.p - pos).Magnitude)
					trace.Anchored = true
					trace.Material = "Neon"
					trace.CanCollide = false
					trace.Parent = game:GetService("Workspace")
					trace.CFrame = CFrame.new(o1.Smg.SMGPipeH.CFrame.p,pos)*CFrame.new(0,0,-((o1.Smg.SMGPipeH.CFrame.p - pos).Magnitude/2))
					local s = Instance.new("Sound",o1.Smg.SMGPipeH)
					s.SoundId = "rbxassetid://131257506"
					s:Play()
					spawn(function()
						wait(2)
						s:Destroy()
					end)

					if part then
						if part.Parent:IsA("Model") then
							if part.Parent:FindFirstChild("Humanoid") then
								part.Parent.Humanoid.Health = part.Parent.Humanoid.Health - 15
							end
						elseif part.Parent.Parent:IsA("Model") then
							if part.Parent.Parent:FindFirstChild("Humanoid") then
								part.Parent.Parent.Humanoid.Health = part.Parent.Parent.Humanoid.Health - 15
							end
						end
					end

					wait(0.05)
					trace:Destroy()
				end)
			end
			frms = frms + 1
		end)
		mbup = mouse.Button1Up:connect(function()
			moused = false
			frm:disconnect()
			mbup:disconnect()
		end)
	end
end)

game:GetService("RunService").RenderStepped:connect(function()
	local xt = 0
	local yt = 0
	local zt = 0
	local pspd = 0
	if wd == true or ad == true or sd == true or dd == true or qd == true or ed == true or rd == true or fd == true then
		tPitch = 3.4
		pspd = -30
	else
		tPitch = 3
		pspd = -15
	end
	local pChange = (tPitch - soisoi.Pitch)/10
	soisoi.Pitch = soisoi.Pitch + pChange
	if fly == true then
		if wd == true then
			tCf = tCf * CFrame.new(0.5,0,0)
			yt = yt + 5
		end
		if ad == true then
			tCf = tCf * CFrame.new(0,0,-0.5)
			zt = zt - 5
		end
		if sd == true then
			tCf = tCf * CFrame.new(-0.5,0,0)
			yt = yt - 5
		end
		if dd == true then
			tCf = tCf * CFrame.new(0,0,0.5)
			zt = zt + 5
		end
		if qd == true then
			tCf = tCf * CFrame.Angles(math.rad(0),math.rad(3),math.rad(0))
		end
		if ed == true then
			tCf = tCf * CFrame.Angles(math.rad(0),math.rad(-3),math.rad(0))
		end
		if rd == true then
			tCf = tCf * CFrame.new(0,0.5,0)
		end
		if fd == true then
			tCf = tCf * CFrame.new(0,-0.5,0)
		end
		local nvec = Vector3.new(0,2,7)
		if seat.Occupant ~= nil then
			nvec = Vector3.new(2,4,7)
		end
		campos = campos:lerp((o37.CFrame * CFrame.Angles(math.rad(90 - xt),math.rad(0 - yt),math.rad(90 - zt))) * CFrame.new(nvec),0.33)
		camera.CoordinateFrame = campos
		char:FindFirstChild("Humanoid").WalkSpeed = 0
		char:FindFirstChild("Humanoid").JumpPower = 0
	else
		if returnhome == true then
			tCf = (char:FindFirstChild("Head").CFrame + Vector3.new(0,5,0)) * CFrame.Angles(math.rad(0),math.rad(90),math.rad(0))
		end
		char:FindFirstChild("Humanoid").WalkSpeed = 16
		char:FindFirstChild("Humanoid").JumpPower = 50
	end
	o1:FindFirstChild("Rotor1"):SetPrimaryPartCFrame(o1:FindFirstChild("Rotor1").PrimaryPart.CFrame * CFrame.Angles(math.rad(0),math.rad(pspd),math.rad(0)))
	o1:FindFirstChild("Rotor2"):SetPrimaryPartCFrame(o1:FindFirstChild("Rotor2").PrimaryPart.CFrame * CFrame.Angles(math.rad(0),math.rad(pspd),math.rad(0)))
	o1:FindFirstChild("Rotor3"):SetPrimaryPartCFrame(o1:FindFirstChild("Rotor3").PrimaryPart.CFrame * CFrame.Angles(math.rad(0),math.rad(pspd),math.rad(0)))
	o1:FindFirstChild("Rotor4"):SetPrimaryPartCFrame(o1:FindFirstChild("Rotor4").PrimaryPart.CFrame * CFrame.Angles(math.rad(0),math.rad(pspd),math.rad(0)))
	o1:SetPrimaryPartCFrame(o1.PrimaryPart.CFrame:lerp((tCf + Vector3.new(0,math.sin(tick()*4)/5,0)) * CFrame.Angles(math.rad(zt*2),math.rad(0*2),math.rad(-(yt*2))),0.06))
end)

plr.Chatted:connect(function(c)
	if o1.PrimaryPart ~= nil and fly == true then
		if string.lower(string.sub(c,1,3)) == "/e " then
			cMsg(string.sub(c,4,#c))
		else
			cMsg(c)
		end
	end
end)

coroutine.resume(coroutine.create(function()
	while wait() do
		for i=0,255,10 do g = i wait() end
		for i=255,0,-10 do r = i wait() end
		for i=0,255,10 do b = i wait() end
		for i=255,0,-10 do g = i wait() end
		for i=0,255,10 do r = i wait() end
		for i=255,0,-10 do b = i wait() end
	end
end))

game:GetService("RunService").RenderStepped:connect(function()
	if p.Parent ~= nil then
		p.CFrame = p.CFrame:lerp(o1.PrimaryPart.CFrame + Vector3.new(0,1,0),0.16)
	else
		p = Instance.new("Part",game.Workspace)
		p.Size = Vector3.new(0.2,0.2,0.2)
		p.Transparency = 1
		p.Anchored = true
		p.CanCollide = false
		p.Name = "Msg"
		p.CFrame = o1.PrimaryPart.CFrame + Vector3.new(0,1,0)
	end
end)