-----Decompiled And Stolen Of Dahnoob, Leaked By Shelter----  

plr = game.Players.LocalPlayer
  repeat
    wait(0.4)
  until plr.Character
  chr = plr.Character
  human = chr:FindFirstChild("Humanoid")
  mouse = plr:GetMouse()
  cam = workspace.CurrentCamera
  selected = false
  equipd = false
  tors = chr.Torso
  rarm = chr["Right Arm"]
  larm = chr["Left Arm"]
  rleg = chr["Right Leg"]
  lleg = chr["Left Leg"]
  hrp = chr.HumanoidRootPart
  hed = chr.Head
  anim = human:FindFirstChild("Animator")
  activu = false
  ragged = false
  batting = false
  memeing = false
  Heartbeat = Instance.new("BindableEvent")
  Heartbeat.Name = "Heartbeat"
  Heartbeat.Parent = script
  frame = 0.03333333333333333
  tf = 0
  game:GetService("RunService").Heartbeat:connect(function(s, p)
    tf = tf + s
    if tf >= frame then
      for i = 1, math.floor(tf / frame) do
        Heartbeat:Fire()
      end
      tf = tf - frame * math.floor(tf / frame)
    end
  end)
  function swait(num)
    if num == 0 or num == nil then
      Heartbeat.Event:wait()
    else
      for i = 1, num do
        Heartbeat.Event:wait()
      end
    end
  end
  tool = Instance.new("Tool")
  tool.CanBeDropped = false
  tool.RequiresHandle = false
  tool.TextureId = "rbxassetid://291302154"
  tool.ToolTip = "NANI"
  tool.Name = "AAAAAAAAAAAAAA"
  tool.Parent = plr.Backpack
  modz = Instance.new("Model")
  modz.Name = "efx"
  modz.Parent = chr
  RSC0 = CFrame.new(1, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RSC1 = CFrame.new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LSC0 = CFrame.new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LSC1 = CFrame.new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RHC0 = CFrame.new(1, -1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RHC1 = CFrame.new(0.5, 1, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LHC0 = CFrame.new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RJC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  LHC1 = CFrame.new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  NC0 = CFrame.new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NC1 = CFrame.new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RJC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  local nscale = Instance.new("NumberValue")
  nscale.Value = 1
  nscale.Parent = nil
  RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
  LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
  RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  nscale.Changed:connect(function()
    RightShoulderC0 = CFrame.new(1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftShoulderC0 = CFrame.new(-1.5 * nscale.Value, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftShoulderC1 = CFrame.new(0, 0.5 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RightHipC0 = CFrame.new(0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    RightHipC1 = CFrame.new(0, 1 * nscale.Value, 0, 0, 0, 1, 0, 1, 0, -1, 0, 0)
    LeftHipC0 = CFrame.new(-0.5 * nscale.Value, -1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    LeftHipC1 = CFrame.new(0 * nscale.Value, 1 * nscale.Value, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    RootJointC0 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    RootJointC1 = CFrame.new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC0 = CFrame.new(0, 1 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
    NeckC1 = CFrame.new(0, -0.5 * nscale.Value, 0, -1, 0, 0, 0, 0, 1, 0, 1, 0)
  end)
  RS = tors:FindFirstChild("Right Shoulder")
  LS = tors:FindFirstChild("Left Shoulder")
  RH = tors:FindFirstChild("Right Hip")
  LH = tors:FindFirstChild("Left Hip")
  RJ = hrp:FindFirstChild("RootJoint")
  N = tors:FindFirstChild("Neck")
  cf = CFrame.new
  ang = CFrame.Angles
  rd = math.rad
  rd2 = math.random
  function nooutline(p)
    p.TopSurface, p.BottomSurface, p.LeftSurface, p.RightSurface, p.FrontSurface, p.BottomSurface = 10, 10, 10, 10, 10, 10
  end
  function makepart(color, name, reflec, trans, mater, parnt, cfram)
    local port = Instance.new("Part")
    port.BrickColor = BrickColor.new(color)
    port.Name = name
    port.Transparency = trans
    nooutline(port)
    port.Reflectance = reflec
    port.Material = mater
    port.Anchored = false
    port.CanCollide = false
    port.Locked = true
    port.CFrame = cfram
    port.Size = Vector3.new(0.2, 0.2, 0.2)
    port.Parent = parnt
    return port
  end
  function makemesh(meshtype, scale, meshid, parent)
    local mes = Instance.new("SpecialMesh")
    mes.MeshType = meshtype
    mes.Scale = scale
    if meshtype == "FileMesh" then
      mes.MeshId = meshid
    end
    mes.Parent = parent
    return mes
  end
  function makeweld(parent, p0, p1, c0, c1)
    local wel = Instance.new("Weld")
    wel.Part0 = p0
    wel.Part1 = p1
    wel.C0 = c0
    if c1 ~= nil then
      wel.C1 = c1
    end
    wel.Parent = parent
    return wel
  end
  local lauf1 = Instance.new("Sound")
  lauf1.SoundId = "rbxassetid://725969678"
  lauf1.Volume = 1.5
  lauf1.Pitch = 1
  lauf1.Parent = hrp
  function lerpz(joint, prop, cfrmz, alp)
    joint[prop] = joint[prop]:lerp(cfrmz, alp)
  end
  lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
  function resetlerp()
    RJ.C0 = RJC0
    RJ.C1 = RJC1
    N.C0 = NC0
    N.C1 = NC1
    RS.C0 = RSC0
    RS.C1 = RSC1
    LS.C0 = LSC0
    LS.C1 = LSC1
    RH.C0 = RHC0
    RH.C1 = RHC1
    LH.C0 = LHC0
    LH.C1 = LHC1
  end
  function test()
    if selected == false or activu == true then
      return
    end
    if ragged == false then
      ragged = true
      human.PlatformStand = true
      if rarm and tors:FindFirstChild("Right Shoulder") then
        tors:FindFirstChild("Right Shoulder"):Destroy()
        makegloo(tors, RightShoulderC0, RightShoulderC1, tors, rarm, "Right Shoulder")
        maketouchy(rarm, rarm, CFrame.new(0, 0.5, 0))
      end
      if larm and tors:FindFirstChild("Left Shoulder") then
        tors:FindFirstChild("Left Shoulder"):Destroy()
        makegloo(tors, LeftShoulderC0, LeftShoulderC1, tors, larm, "Left Shoulder")
        maketouchy(larm, larm, CFrame.new(0, 0.5, 0))
      end
      if rleg and tors:FindFirstChild("Right Hip") then
        tors:FindFirstChild("Right Hip"):Destroy()
        makegloo(tors, RightHipC0, RightHipC1, tors, rleg, "Right Hip")
        maketouchy(rleg, rleg, CFrame.new(0, 0.5, 0))
      end
      if lleg and tors:FindFirstChild("Left Hip") then
        tors:FindFirstChild("Left Hip"):Destroy()
        makegloo(tors, LeftHipC0, LeftHipC1, tors, lleg, "Left Hip")
        maketouchy(lleg, lleg, CFrame.new(0, 0.5, 0))
      end
    elseif ragged == true then
      ragged = false
      human.Jump = true
      if rarm and tors:FindFirstChild("Right Shoulder") then
        tors:FindFirstChild("Right Shoulder"):Destroy()
        makejoint(tors, RSC0, RSC1, tors, rarm, "Right Shoulder")
        rarm:FindFirstChild("touchy"):Destroy()
      end
      if larm and tors:FindFirstChild("Left Shoulder") then
        tors:FindFirstChild("Left Shoulder"):Destroy()
        makejoint(tors, LSC0, LSC1, tors, larm, "Left Shoulder")
        larm:FindFirstChild("touchy"):Destroy()
      end
      if rleg and tors:FindFirstChild("Right Hip") then
        tors:FindFirstChild("Right Hip"):Destroy()
        makejoint(tors, RHC0, RHC1, tors, rleg, "Right Hip")
        rleg:FindFirstChild("touchy"):Destroy()
      end
      if lleg and tors:FindFirstChild("Left Hip") then
        tors:FindFirstChild("Left Hip"):Destroy()
        makejoint(tors, LHC0, LHC1, tors, lleg, "Left Hip")
        lleg:FindFirstChild("touchy"):Destroy()
      end
      RS = tors:FindFirstChild("Right Shoulder")
      LS = tors:FindFirstChild("Left Shoulder")
      RH = tors:FindFirstChild("Right Hip")
      LH = tors:FindFirstChild("Left Hip")
      RJ = hrp:FindFirstChild("RootJoint")
      N = tors:FindFirstChild("Neck")
    end
  end
  function makegloo(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Glue")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function makejoint(paren, co, ci, parto, parti, nam)
    local gloo = Instance.new("Motor6D")
    gloo.Name = nam
    gloo.C0 = co
    gloo.C1 = ci
    gloo.Part0 = parto
    gloo.Part1 = parti
    gloo.Parent = paren
  end
  function maketouchy(parent, limb, cframe)
    local pr = Instance.new("Part")
    pr.Name = "touchy"
    pr.Size = Vector3.new(1 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    pr.Transparency = 1
    pr.CustomPhysicalProperties = PhysicalProperties.new(0.55, 0.3, 0.5)
    pr.CanCollide = true
    pr.Anchored = false
    pr.Parent = parent
    local w = Instance.new("Weld")
    w.Part0 = pr
    w.Part1 = limb
    w.C0 = cframe
    w.Parent = pr
  end
  local clibat, spec, dipperrot
  local dipperhat = chr:FindFirstChild("DXD_DipperHat")
  if dipperhat then
    dipperrot = dipperhat.Handle.HatAttachment.Rotation
  end
  function bat()
    if selected == false or activu == true then
      return
    end
    if batting == false then
      batting = true
      dipperhat = chr:FindFirstChild("DXD_DipperHat")
      if dipperhat then
        dipperrot = dipperhat.Handle.HatAttachment.Rotation
      else
        dipperhat = nil
      end
      do
        local bmod = Instance.new("Model")
        bmod.Name = "bmodel"
        bmod.Parent = chr
        local hnd = makepart("Br. yellowish green", "hnd", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local hmes = makemesh("Head", Vector3.new(2, 9, 2), nil, hnd)
        local hwel = makeweld(hnd, hnd, rarm, ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0), nil)
        local pt1 = makepart("Bright yellow", "pt1", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p1m = makemesh("Head", Vector3.new(2.5, 2.5, 2.5), nil, pt1)
        local p1w = makeweld(pt1, pt1, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 1, 0), nil)
        local pt2 = makepart("Bright yellow", "pt2", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p2m = makemesh("FileMesh", Vector3.new(0.375, 0.375, 0.375), "rbxassetid://250640098", pt2)
        p2m.TextureId = "rbxassetid://250639536"
        local p2w = makeweld(pt2, pt2, hnd, ang(rd(180), rd(180), rd(0)) * cf(0, 1.225, 0.075), nil)
        local pt3 = makepart("Bright yellow", "pt3", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p3m = makemesh("Head", Vector3.new(2.5, 2.5, 2.5), nil, pt3)
        local p3w = makeweld(pt3, pt3, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0), nil)
        local pt4 = makepart("Bright yellow", "pt4", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p4m = makemesh("FileMesh", Vector3.new(0.025, 0.025, 0.025), "rbxassetid://703458158", pt4)
        local p4w = makeweld(pt4, pt4, hnd, ang(rd(180), rd(0), rd(0)) * cf(0, -1.25, 0), nil)
        local pt5 = makepart("Bright yellow", "pt5", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p5m = makemesh("Cylinder", Vector3.new(21.5, 6.25, 6.25), nil, pt5)
        local p5w = makeweld(pt5, pt5, hnd, ang(rd(0), rd(0), rd(90)) * cf(0, -4.025, 0), nil)
        local pt6 = makepart("Bright yellow", "pt6", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p6m = makemesh("Head", Vector3.new(6.5, 6.5, 6.5), nil, pt6)
        local p6w = makeweld(pt6, pt6, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -6.05, 0), nil)
        local pt7 = makepart("Bright yellow", "pt7", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p7m = makemesh("FileMesh", Vector3.new(0.95, 0.95, 0.95), "rbxassetid://272942659", pt7)
        p7m.TextureId = "rbxassetid://272942750"
        local p7w = makeweld(pt7, pt7, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -6.2, 0), nil)
        local swingwoo = Instance.new("Sound")
        swingwoo.SoundId = "rbxassetid://10209640"
        swingwoo.Pitch = rd2(10, 11) / 10
        swingwoo.Name = "sweae"
        swingwoo.Volume = 1
        swingwoo.Parent = hrp
        clibat = tool.Activated:connect(function()
          if selected == false or activu == true or ragged == true then
            return
          end
          activu = true
          for _ = 1, 5 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          local bon = Instance.new("Sound")
          bon.SoundId = "rbxassetid://135436482"
          bon.Pitch = rd2(10, 12) / 10
          bon.Volume = 1
          bon.Parent = hrp
          game.Debris:AddItem(bon, 1)
          bon:Play()
          swingwoo:Play()
          for X = 1, 5 do
            swait()
            if X > 1 then
              hito(pt5, 5, 10, 0.2, hrp.CFrame.lookVector * 25, Vector3.new(0, rd2(-5, 5), rd2(-40, 40)))
            end
            lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(-10), rd(30)), 0.7)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
          end
          activu = false
        end)
        spec = mouse.KeyDown:connect(function(keya)
          if selected == false or activu == true or ragged == true then
            return
          end
          if keya == "e" then
            activu = true
            local speed = human.WalkSpeed
            human.WalkSpeed = 0
            human:SetStateEnabled(3, false)
            local function expa()
              local sond = Instance.new("Sound")
              sond.Volume = 1.25
              sond.Pitch = 1
              sond.EmitterSize = 15
              sond.SoundId = "rbxassetid://315152748"
              sond.Parent = pt6
              sond:Play()
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(6, 27, 6), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(7.5, 7.5, 7.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 3, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(1.125, 1.125, 1.125), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 3.6750000000000003, 0.22499999999999998), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(7.5, 7.5, 7.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -3, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.07500000000000001, 0.07500000000000001, 0.07500000000000001), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -3.75, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(64.5, 18.75, 18.75), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -12.075000000000001, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(19.5, 19.5, 19.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -18.15, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(2.8499999999999996, 2.8499999999999996, 2.8499999999999996), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -18.6, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(4, 18, 4), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(5, 5, 5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 2, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(0.75, 0.75, 0.75), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 2.45, 0.15), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(5, 5, 5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -2, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.05, 0.05, 0.05), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -2.5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(43, 12.5, 12.5), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -8.05, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(13, 13, 13), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -12.1, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(1.9, 1.9, 1.9), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -12.4, 0), 0.7)
              end
              sond.Pitch = 0.75
              sond:Play()
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(12, 54, 12), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(15, 15, 15), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 6, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(2.25, 2.25, 2.25), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 7.3500000000000005, 0.44999999999999996), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(15, 15, 15), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -6, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.15000000000000002, 0.15000000000000002, 0.15000000000000002), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -7.5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(129, 37.5, 37.5), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -24.150000000000002, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(39, 39, 39), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -36.3, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(5.699999999999999, 5.699999999999999, 5.699999999999999), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -37.2, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(8, 36, 8), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 4, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(1.5, 1.5, 1.5), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 4.9, 0.3), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(10, 10, 10), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.1, 0.1, 0.1), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -5, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(86, 25, 25), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -16.1, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(26, 26, 26), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -24.2, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(3.8, 3.8, 3.8), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -24.8, 0), 0.7)
              end
              sond.Pitch = 0.4
              sond:Play()
              game.Debris:AddItem(sond, 2)
              for _ = 1, 3 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(18, 81, 18), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(22.5, 22.5, 22.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 9, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(3.375, 3.375, 3.375), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 11.025, 0.6749999999999999), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(22.5, 22.5, 22.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -9, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.225, 0.225, 0.225), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -11.25, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(193.5, 56.25, 56.25), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -36.225, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(58.5, 58.5, 58.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -54.449999999999996, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(5.699999999999999, 8.549999999999999, 8.549999999999999), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -55.800000000000004, 0), 0.7)
              end
              for _ = 1, 5 do
                swait()
                hmes.Scale = hmes.Scale:lerp(Vector3.new(14, 63, 14), 0.7)
                p1m.Scale = p1m.Scale:lerp(Vector3.new(17.5, 17.5, 17.5), 0.7)
                p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 7, 0), 0.7)
                p2m.Scale = p2m.Scale:lerp(Vector3.new(2.625, 2.625, 2.625), 0.7)
                p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 8.575000000000001, 0.525), 0.7)
                p3m.Scale = p3m.Scale:lerp(Vector3.new(17.5, 17.5, 17.5), 0.7)
                p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -7, 0), 0.7)
                p4m.Scale = p4m.Scale:lerp(Vector3.new(0.17500000000000002, 0.17500000000000002, 0.17500000000000002), 0.7)
                p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -8.75, 0), 0.7)
                p5m.Scale = p5m.Scale:lerp(Vector3.new(150.5, 43.75, 43.75), 0.7)
                p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -28.175000000000004, 0), 0.7)
                p6m.Scale = p6m.Scale:lerp(Vector3.new(45.5, 45.5, 45.5), 0.7)
                p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -42.35, 0), 0.7)
                p7m.Scale = p7m.Scale:lerp(Vector3.new(6.6499999999999995, 6.6499999999999995, 6.6499999999999995), 0.7)
                p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -43.4, 0), 0.7)
              end
            end
            for _ = 1, 9 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.5)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.5)
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(0), rd(-10)), 0.5)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LS, "C0", LSC0 * cf(0, 0.2, -0.2) * ang(rd(70), rd(-60), rd(-100)), 0.5)
              if dipperhat then
                dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(0, 0, 0), 0.3)
              end
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.5)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.5)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
            end
            for _ = 1, 9 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.5)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.5)
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-20), rd(0), rd(-10)), 0.5)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(35), rd(-50), rd(-100)), 0.3)
              if dipperhat then
                dipperhat.Handle.HatAttachment.Rotation = dipperhat.Handle.HatAttachment.Rotation:lerp(dipperrot + Vector3.new(15, 0, 0), 0.3)
              end
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.5)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.5)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
            end
            for _ = 1, 30 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(1.1, 0.6, 0) * ang(rd(0), rd(0), rd(-120)), 0.2)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.2)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(-20), rd(80)), 0.2)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.2)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.2)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.2)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.2)
            end
            expa()
            for O = 1, 10 do
              swait()
              lerpz(RJ, "C0", RJC0 * cf(0, 0.3, 0) * ang(rd(0), rd(0), rd(60)), 0.001 + O * 0.01)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.001 + O * 0.01)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(-20), rd(80)), 0.001 + O * 0.01)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.001 + O * 0.01)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.001 + O * 0.01)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.001 + O * 0.01)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.001 + O * 0.01)
            end
            local whoooo = Instance.new("Sound")
            whoooo.Volume = 3
            whoooo.TimePosition = 0.15
            whoooo.Pitch = 0.5
            whoooo.SoundId = "rbxassetid://320557353"
            whoooo.Parent = pt5
            whoooo:Play()
            game.Debris:AddItem(whoooo, 2)
            for O = 1, 6 do
              swait()
              hito(pt5, 25, 40, 0.75, hrp.CFrame.rightVector * -100 + Vector3.new(0, 50, 0), Vector3.new(0, rd2(-25, 25), rd2(-160, 160)))
              lerpz(RJ, "C0", RJC0 * cf(0.9, -0.7, 0) * ang(rd(0), rd(0), rd(120)), 0.1 + O * 0.05)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.1 + O * 0.05)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(20), rd(20)), 0.1 + O * 0.05)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(-20), rd(-60), rd(-80)), 0.1 + O * 0.05)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.1 + O * 0.05)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.1 + O * 0.05)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + O * 0.05)
            end
            for O = 1, 13 do
              swait()
              hmes.Scale = hmes.Scale:lerp(Vector3.new(2, 9, 2), 0.05 + O * 0.075)
              p1m.Scale = p1m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p1w.C0 = p1w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 1, 0), 0.05 + O * 0.075)
              p2m.Scale = p2m.Scale:lerp(Vector3.new(0.375, 0.375, 0.375), 0.05 + O * 0.075)
              p2w.C0 = p2w.C0:lerp(ang(rd(180), rd(180), rd(0)) * cf(0, 1.225, 0.075), 0.05 + O * 0.075)
              p3m.Scale = p3m.Scale:lerp(Vector3.new(2.5, 2.5, 2.5), 0.05 + O * 0.075)
              p3w.C0 = p3w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -1, 0), 0.05 + O * 0.075)
              p4m.Scale = p4m.Scale:lerp(Vector3.new(0.025, 0.025, 0.025), 0.05 + O * 0.075)
              p4w.C0 = p4w.C0:lerp(ang(rd(180), rd(0), rd(0)) * cf(0, -1.25, 0), 0.05 + O * 0.075)
              p5m.Scale = p5m.Scale:lerp(Vector3.new(21.5, 6.25, 6.25), 0.05 + O * 0.075)
              p5w.C0 = p5w.C0:lerp(ang(rd(0), rd(0), rd(90)) * cf(0, -4.025, 0), 0.05 + O * 0.075)
              p6m.Scale = p6m.Scale:lerp(Vector3.new(6.5, 6.5, 6.5), 0.05 + O * 0.075)
              p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -6.05, 0), 0.05 + O * 0.075)
              p7m.Scale = p7m.Scale:lerp(Vector3.new(0.95, 0.95, 0.95), 0.05 + O * 0.075)
              p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0, -6.2, 0), 0.05 + O * 0.075)
              lerpz(RJ, "C0", RJC0 * cf(1.1, -0.8, 0) * ang(rd(0), rd(0), rd(150)), 0.05 + O * 0.075)
              lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(-20)), 0.05 + O * 0.075)
              lerpz(RS, "C0", RSC0 * cf(0, 0.4, 0.2) * ang(rd(80), rd(30), rd(10)), 0.05 + O * 0.075)
              lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(LS, "C0", LSC0 * cf(0, -0.2, -0.7) * ang(rd(20), rd(20), rd(-20)), 0.05 + O * 0.075)
              lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-5)), 0.05 + O * 0.075)
              lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
              lerpz(LH, "C0", LHC0 * cf(0.4, 0, -0.4) * ang(rd(-10), rd(70), rd(-5)), 0.05 + O * 0.075)
              lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.05 + O * 0.075)
            end
            if dipperhat then
              dipperhat.Handle.HatAttachment.Rotation = dipperrot
            end
            human.WalkSpeed = speed
            human:SetStateEnabled(3, true)
            activu = false
          end
          if keya == "q" then
            activu = true
            do
              local checkkey = true
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "q" then
                  checkkey = false
                end
              end)
              repeat
                for _ = 1, 2 do
                  swait()
                  lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-20), rd(10), rd(-40)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(-20), rd(179)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(-110)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                swingwoo:Play()
                for T = 1, 2 do
                  swait()
                  if T == 2 then
                    hito(pt5, 5, 4, 0.03, hrp.CFrame.lookVector * 10, Vector3.new(0, rd2(-2, 2), rd2(-10, 10)))
                  end
                  lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(60), rd(-10), rd(30)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(20), rd(20), rd(40)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(20), rd(-40), rd(80)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-20), rd(60)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                for _ = 1, 2 do
                  swait()
                  lerpz(RJ, "C0", RJC0 * cf(0, 0.5, 0) * ang(rd(-30), rd(20), rd(0)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0.5, 0) * ang(rd(60), rd(20), rd(179)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-40), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-30), rd(20), rd(35)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
                swingwoo:Play()
                for T = 1, 2 do
                  swait()
                  if T == 2 then
                    hito(pt5, 5, 4, 0.03, hrp.CFrame.lookVector * 10, Vector3.new(0, rd2(-2, 2), rd2(-10, 10)))
                  end
                  lerpz(RJ, "C0", RJC0 * cf(0, -0.5, 0) * ang(rd(40), rd(40), rd(0)), 0.7)
                  lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(20), rd(0), rd(0)), 0.7)
                  lerpz(RS, "C0", RSC0 * cf(0, 0.5, 0) * ang(rd(60), rd(20), rd(30)), 0.7)
                  lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-70), rd(20), rd(30)), 0.7)
                  lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-30)), 0.7)
                  lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                  lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-30), rd(20), rd(-65)), 0.7)
                  lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.7)
                end
              until not checkkey
              keyingup:Disconnect()
              activu = false
            end
          end
          if keya == "f" then
            activu = true
            do
              local speed = human.WalkSpeed
              human.WalkSpeed = 2
              human:SetStateEnabled(3, false)
              local checkkey = true
              local chargecounter = 0
              local keyingup = mouse.KeyUp:connect(function(xzx)
                if xzx == "f" then
                  checkkey = false
                end
              end)
              local firederp
              for _ = 1, 8 do
                swait()
                hwel.C0 = hwel.C0:lerp(ang(rd(65), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, 0.5, 0) * ang(rd(0), rd(0), rd(-70)), 0.5)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(60)), 0.5)
                lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(70), rd(-10), rd(80)), 0.5)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(-10), rd(-70), rd(-75)), 0.5)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.5)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.5)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
                lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(0), rd(80), rd(-5)), 0.5)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.5)
              end
              repeat
                swait()
                chargecounter = chargecounter + 1
                lerpz(RS, "C0", RSC0 * cf(rd2(-5, 5) / 100, rd2(-5, 5) / 100, rd2(-5, 5) / 100) * ang(rd(rd2(65, 75)), rd(rd2(-15, 5)), rd(rd2(75, 85))), 0.05 + chargecounter * 0.019)
                lerpz(LS, "C0", LSC0 * cf(-0.3, -0.1, -1) * ang(rd(rd2(-15, -5)), rd(rd2(-75, -65)), rd(rd2(-80, -70))), 0.05 + chargecounter * 0.019)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(rd2(-25, -15)), rd(0)), 0.05 + chargecounter * 0.019)
                if chargecounter > 15 and firederp == nil then
                  firederp = Instance.new("Fire")
                  firederp.Parent = pt5
                end
              until not checkkey or chargecounter > 50
              swingwoo:Play()
              for U = 1, 10 do
                swait()
                if U < 3 then
                  hito(pt5, 5, 10 + chargecounter / 10, 0.2, hrp.CFrame.lookVector * (80 + chargecounter * 3) + Vector3.new(0, 6 + 6 * (chargecounter / 5), 0), Vector3.new(0, rd2(-25, 25) * (chargecounter / 25), rd2(-80, 80) * (chargecounter / 25)))
                  if chargecounter > 15 then
                    tagexplode(pt5, 5, 0.65)
                  end
                end
                hwel.C0 = hwel.C0:lerp(ang(rd(135), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
                lerpz(RJ, "C0", RJC0 * cf(0.5, -0.5, 0) * ang(rd(0), rd(0), rd(50)), 0.6)
                lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(-30)), 0.6)
                lerpz(RS, "C0", RSC0 * cf(0.75, 0.5, -0.5) * ang(rd(0), rd(60), rd(120)), 0.4)
                lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(100), rd(0)), 0.4)
                lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-10), rd(20), rd(-125)), 0.4)
                lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(-20), rd(0)), 0.4)
                lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(5)), 0.6)
                lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.6)
                lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(-6)), 0.6)
                lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(5), rd(0), rd(0)), 0.6)
              end
              if firederp then
                firederp:Destroy()
              end
              swait(10)
              hwel.C0 = ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0)
              keyingup:Disconnect()
              human.WalkSpeed = speed
              human:SetStateEnabled(3, true)
              activu = false
            end
          end
        end)
      end
    elseif batting == true then
      batting = false
      clibat:Disconnect()
      spec:Disconnect()
      hrp.sweae:Destroy()
      local batmod = chr:FindFirstChild("bmodel")
      batmod.hnd.Weld:Destroy()
      batmod.PrimaryPart = batmod.hnd
      batmod:SetPrimaryPartCFrame(rarm.CFrame * ang(rd(-90), rd(0), rd(0)) * cf(0, 0, -1))
      for _, A in pairs(batmod:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
          A.Anchored = false
        end
      end
      batmod.Parent = workspace
      game.Debris:AddItem(batmod, 8)
    end
  end
  local movin = false
  local cliham, hamspec
  function ham()
    if batting == false then
      batting = true
      do
        local bmod = Instance.new("Model")
        bmod.Name = "bmodel"
        bmod.Parent = chr
        local makemotor = function(parent, p0, p1, c0, c1)
          local wel = Instance.new("Motor6D")
          wel.Part0 = p0
          wel.Part1 = p1
          wel.C0 = c0
          if c1 ~= nil then
            wel.C1 = c1
          end
          wel.Parent = parent
          return wel
        end
        local hnd = makepart("Br. yellowish green", "hnd", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        hnd.Anchored = true
        local hmes = makemesh("Head", Vector3.new(5, 30, 5), nil, hnd)
        movin = true
        hnd.CFrame = hrp.CFrame
        coroutine.resume(coroutine.create(function()
          while hnd.Anchored == true do
            swait()
            if movin then
              hnd.CFrame = hnd.CFrame:lerp(hrp.CFrame * ang(rd(40), rd(0), rd(0)) * cf(0, 11, 0), 0.65)
            end
          end
        end))
        local pt1 = makepart("Br. yellowish green", "pt1", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p1m = makemesh("Head", Vector3.new(6, 5.5, 5.5), nil, pt1)
        local p1w = makemotor(pt1, pt1, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 3, 0), nil)
        local pt2 = makepart("Br. yellowish green", "pt2", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p2m = makemesh("Head", Vector3.new(6, 5.5, 5.5), nil, pt2)
        local p2w = makemotor(pt2, pt2, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -3, 0), nil)
        local pt3 = makepart("Bright yellow", "pt3", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p3m = makemesh("Head", Vector3.new(6.5, 6.5, 6.5), nil, pt3)
        local p3w = makemotor(pt3, pt3, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, 3.75, 0), nil)
        local pt4 = makepart("Br. yellowish green", "pt4", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p4m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://250640098", pt4)
        p4m.TextureId = "rbxassetid://250639536"
        local p4w = makemotor(pt4, pt4, hnd, ang(rd(180), rd(180), rd(0)) * cf(0, 4.25, 0.25), nil)
        local pt5 = makepart("Bright blue", "pt5", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p5m = makemesh("Head", Vector3.new(5, 90, 4), nil, pt5)
        local p5w = makemotor(pt5, pt5, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -12, 0), nil)
        local pt6 = makepart("Bright blue", "pt6", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p6m = makemesh("FileMesh", Vector3.new(0.16, 0.4, 0.16), "rbxassetid://703458158", pt6)
        local p6w = makemotor(pt6, pt6, hnd, ang(rd(180), rd(0), rd(0)) * cf(0, -16, 0), nil)
        local pt7 = makepart("Bright yellow", "pt7", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p7m = makemesh("Head", Vector3.new(75, 75, 75), nil, pt7)
        local p7w = makemotor(pt7, pt7, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -27, 0), nil)
        local hdec1 = Instance.new("Decal")
        hdec1.Texture = "rbxasset://textures/face.png"
        hdec1.Face = "Front"
        hdec1.Parent = pt7
        local pt8 = makepart("Bright yellow", "pt8", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p8m = makemesh("Head", Vector3.new(75, 75, 75), nil, pt8)
        local p8w = makemotor(pt8, pt8, hnd, ang(rd(0), rd(-90), rd(0)) * cf(0, -27, 0), nil)
        local hdec2 = Instance.new("Decal")
        hdec2.Texture = "rbxasset://textures/face.png"
        hdec2.Face = "Front"
        hdec2.Parent = pt8
        local pt9 = makepart("Bright yellow", "pt9", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p9m = makemesh("FileMesh", Vector3.new(12, 11, 11), "rbxassetid://272942659", pt9)
        local p9w = makemotor(pt9, pt9, hnd, ang(rd(0), rd(90), rd(0)) * cf(0, -30, 0), nil)
        p9m.TextureId = "rbxassetid://272942750"
        local pt10 = makepart("Bright yellow", "pt10", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p10m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt10)
        local p10w = makemotor(pt10, pt10, pt7, ang(rd(0), rd(0), rd(90)) * cf(11, 0, 0), nil)
        local hdec3 = Instance.new("Decal")
        hdec3.Texture = "rbxasset://textures/face.png"
        hdec3.Face = "Front"
        hdec3.Parent = pt10
        local pt11 = makepart("Bright yellow", "pt11", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p11m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt11)
        local p11w = makemotor(pt11, pt11, pt7, ang(rd(0), rd(180), rd(90)) * cf(11, 0, 0), nil)
        local hdec4 = Instance.new("Decal")
        hdec4.Texture = "rbxasset://textures/face.png"
        hdec4.Face = "Front"
        hdec4.Parent = pt11
        local pt12 = makepart("Bright yellow", "pt12", 0, 0, "SmoothPlastic", bmod, hrp.CFrame)
        local p12m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt12)
        local p12w = makemotor(pt12, pt12, pt7, ang(rd(0), rd(0), rd(-90)) * cf(-11, 0, 0), nil)
        local hdec5 = Instance.new("Decal")
        hdec5.Texture = "rbxasset://textures/face.png"
        hdec5.Face = "Front"
        hdec5.Parent = pt12
        local pt13 = makepart("Bright yellow", "pt13", 0, 1, "SmoothPlastic", bmod, hrp.CFrame)
        local p13m = makemesh("Head", Vector3.new(60, 60, 60), nil, pt13)
        local p13w = makemotor(pt13, pt13, pt7, ang(rd(0), rd(180), rd(-90)) * cf(-11, 0, 0), nil)
        local hdec6 = Instance.new("Decal")
        hdec6.Texture = "rbxasset://textures/face.png"
        hdec6.Face = "Front"
        hdec6.Parent = pt13
        cliham = tool.Activated:connect(function()
          if selected == false or activu == true or ragged == true then
            return
          end
          activu = true
          movin = false
          for B = 1, 20 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.4)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(8), rd(0), rd(0)), 0.4)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-15), rd(-5), rd(170)), 0.4)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(-10), rd(10)), 0.4)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-5), rd(-10), rd(-10)), 0.4)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-5), rd(10), rd(10)), 0.4)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 0.1 + B * 0.045)
          end
          for B = 1, 30 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0.8, 0) * ang(rd(-25), rd(0), rd(-50)), 0.1 + B / 80)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-18), rd(0), rd(40)), 0.1 + B / 80)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(-30), rd(-5), rd(160)), 0.1 + B / 80)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-20), rd(-150)), 0.1 + B / 80)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(-10)), 0.1 + B / 80)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            lerpz(LH, "C0", LHC0 * cf(0.5, 0, -0.4) * ang(rd(-5), rd(60), rd(-110)), 0.1 + B / 80)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.1 + B / 80)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          for B = 1, 7 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(40)), 0.015 + B / 15)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(9), rd(0), rd(-15)), 0.015 + B / 15)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-50), rd(100)), 0.015 + B / 15)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-25), rd(-90)), 0.015 + B / 15)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(10)), 0.015 + B / 15)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            lerpz(LH, "C0", LHC0 * cf(0.1, 0, -0.1) * ang(rd(-5), rd(20), rd(-20)), 0.015 + B / 15)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.015 + B / 15)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          for B = 1, 4 do
            swait()
            lerpz(RJ, "C0", RJC0 * cf(0, -0.8, 0) * ang(rd(70), rd(0), rd(40)), 0.38 + B * 0.1)
            lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(9), rd(0), rd(-15)), 0.38 + B * 0.1)
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(-40), rd(100)), 0.38 + B * 0.1)
            lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(LS, "C0", LSC0 * cf(-0.8, 0, -1) * ang(rd(-60), rd(-25), rd(-90)), 0.38 + B * 0.1)
            lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-20), rd(60)), 0.38 + B * 0.1)
            lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            lerpz(LH, "C0", LHC0 * cf(0.1, 0, -0.1) * ang(rd(-5), rd(20), rd(70)), 0.38 + B * 0.1)
            lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.38 + B * 0.1)
            hnd.CFrame = hnd.CFrame:lerp(rarm.CFrame * ang(rd(-110), rd(0), rd(0)) * cf(0, 0, -1), 1)
          end
          swait(15)
          movin = true
          activu = false
        end)
      end
    elseif batting == true then
      batting = false
      cliham:Disconnect()
      local badevz = chr:FindFirstChild("bmodel")
      badevz.PrimaryPart = badevz.hnd
      for _, A in pairs(badevz:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
          A.Anchored = false
        end
      end
      movin = false
      badevz.Parent = workspace
      badevz:SetPrimaryPartCFrame(hrp.CFrame * ang(rd(40), rd(0), rd(0)) * cf(0, -11, 0))
      game.Debris:AddItem(badevz, 8)
    end
  end
  local ehhh = false
  local ymmu, kabomobepo
  local memedonlist = {}
  local noobcharge = 0
  function nommy()
    if selected == false or activu == true then
      return
    end
    if batting == false then
      batting = true
      do
        local bmod = Instance.new("Model")
        bmod.Name = "bmodel"
        bmod.Parent = chr
        local hnd = makepart("Br. yellowish green", "hnd", 0, 1, "SmoothPlastic", bmod, rarm.CFrame)
        local hmes = makemesh("Head", Vector3.new(1, 1, 1), nil, hnd)
        local hwel = makeweld(hnd, hnd, rarm, ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0), nil)
        local pt1 = makepart("Br. yellowish green", "pt1", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p1m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/leftleg.mesh", pt1)
        local p1w = makeweld(pt1, pt1, hnd, ang(rd(0), rd(0), rd(0)) * cf(0.5, -1, 0), nil)
        local pt2 = makepart("Br. yellowish green", "pt2", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p2m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/rightleg.mesh", pt2)
        local p2w = makeweld(pt2, pt2, hnd, ang(rd(0), rd(0), rd(0)) * cf(-0.5, -1, 0), nil)
        local pt3 = makepart("Bright blue", "pt3", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p3m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/torso.mesh", pt3)
        local p3w = makeweld(pt3, pt3, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -3, 0), nil)
        local pt4 = makepart("Bright yellow", "pt4", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p4m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/rightarm.mesh", pt4)
        local p4w = makeweld(pt4, pt4, hnd, ang(rd(0), rd(0), rd(0)) * cf(-1.5, -3, 0), nil)
        local pt5 = makepart("Bright yellow", "pt5", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p5m = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxasset://fonts/leftarm.mesh", pt5)
        local p5w = makeweld(pt5, pt5, hnd, ang(rd(0), rd(0), rd(0)) * cf(1.5, -3, 0), nil)
        local pt6 = makepart("Bright yellow", "pt6", 0, 1, "SmoothPlastic", bmod, rarm.CFrame)
        local p6m = makemesh("Brick", Vector3.new(5.5, 5.5, 5.5), nil, pt6)
        local p6w = makeweld(pt6, pt6, hnd, ang(rd(0), rd(0), rd(0)) * cf(0, -4.5, 0), nil)
        local pt7 = makepart("Bright yellow", "pt7", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p7m = makemesh("Brick", Vector3.new(5.5, 5.5, 1), nil, pt7)
        local p7w = makeweld(pt7, pt7, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, 0, -0.425), nil)
        local pt8 = makepart("Bright yellow", "pt8", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p8m = makemesh("Brick", Vector3.new(5.5, 2.5, 4.25), nil, pt8)
        local p8w = makeweld(pt8, pt8, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, -0.3, 0.1), nil)
        local pt9 = makepart("Bright yellow", "pt9", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p9m = makemesh("Brick", Vector3.new(5.5, 0.5, 4.25), nil, pt9)
        local p9w = makeweld(pt9, pt9, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, 0.5, 0.1), nil)
        local pt10 = makepart("Bright yellow", "pt10", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p10m = makemesh("Brick", Vector3.new(2.75, 2.5, 4.25), nil, pt10)
        local p10w = makeweld(pt10, pt10, pt6, ang(rd(0), rd(0), rd(0)) * cf(-0.275, 0.2, 0.1), nil)
        local pt11 = makepart("Bright yellow", "pt11", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p11m = makemesh("Brick", Vector3.new(2.75, 2.5, 4.25), nil, pt11)
        local p11w = makeweld(pt11, pt11, pt6, ang(rd(0), rd(0), rd(0)) * cf(0.275, 0.2, 0.1), nil)
        local pt12 = makepart("Really black", "pt12", 0, 0.1, "SmoothPlastic", bmod, rarm.CFrame)
        local p12m = makemesh("Brick", Vector3.new(4.25, 3.25, 2.5), nil, pt12)
        local p12w = makeweld(pt12, pt12, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, -0.25), nil)
        local pt13 = makepart("Really black", "pt13", 0, 0.2, "SmoothPlastic", bmod, rarm.CFrame)
        local p13m = makemesh("Brick", Vector3.new(4.25, 3.25, 0.75), nil, pt13)
        local p13w = makeweld(pt13, pt13, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.05), nil)
        local pt14 = makepart("Really black", "pt14", 0, 0.3, "SmoothPlastic", bmod, rarm.CFrame)
        local p14m = makemesh("Brick", Vector3.new(4.25, 3.25, 0.75), nil, pt14)
        local p14w = makeweld(pt14, pt14, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.2), nil)
        local pt15 = makepart("Really black", "pt15", 0, 0.4, "SmoothPlastic", bmod, rarm.CFrame)
        local p15m = makemesh("Brick", Vector3.new(4.25, 3.25, 0.75), nil, pt15)
        local p15w = makeweld(pt15, pt15, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.35), nil)
        local pt16 = makepart("Bright yellow", "pt16", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p16m = makemesh("Cylinder", Vector3.new(5.244999999999999, 0, 0), nil, pt16)
        local p16w = makeweld(pt16, pt16, pt6, ang(rd(0), rd(90), rd(0)) * cf(0.5, 0.1, 0), nil)
        local pt17 = makepart("Bright yellow", "pt17", 0, 0, "SmoothPlastic", bmod, rarm.CFrame)
        local p17m = makemesh("Cylinder", Vector3.new(5.244999999999999, 0, 0), nil, pt17)
        local p17w = makeweld(pt17, pt17, pt6, ang(rd(0), rd(90), rd(0)) * cf(-0.5, 0.1, 0), nil)
        local pt420 = makepart("Bright yellow", "pt420", 0, 1, "SmoothPlastic", bmod, rarm.CFrame)
        local p420m = makemesh("Brick", Vector3.new(5.5, 5.25, 0), nil, pt420)
        local p420w = makeweld(pt420, pt420, pt6, ang(rd(0), rd(0), rd(0)) * cf(0, 0, 0.525), nil)
        local hd1 = Instance.new("Decal")
        hd1.Name = "face1"
        hd1.Texture = "rbxasset://textures/face.png"
        hd1.Face = "Front"
        hd1.Transparency = 0
        hd1.Parent = pt420
        local hd2 = Instance.new("Decal")
        hd2.Name = "face2"
        hd2.Texture = "rbxassetid://14175189"
        hd2.Face = "Front"
        hd2.Transparency = 1
        hd2.Parent = pt420
        local souno1 = Instance.new("Sound")
        souno1.SoundId = "rbxassetid://189505649"
        souno1.Volume = 1.5
        souno1.Parent = hnd
        local souno2 = Instance.new("Sound")
        souno2.SoundId = "rbxassetid://189652112"
        souno2.Volume = 1.5
        souno2.Parent = hnd
        local souno3 = Instance.new("Sound")
        souno3.SoundId = "rbxassetid://90869127"
        souno3.Pitch = 1.15
        souno3.Volume = 1.5
        souno3.Parent = hnd
        local haseaten = false
        local function squarehito(partoz)
          for _, huh in pairs(workspace:GetChildren()) do
            if huh:IsA("BasePart") then
              local objs = partoz.CFrame:pointToObjectSpace(huh.Position)
              if huh:GetMass() < 1750 and objs.Z < 3 and objs.Z > -1 and objs.X < 6 and objs.X > -6 and math.abs(objs.Y) < 14 then
                if math.ceil(huh:GetMass() * 1.5) < 25 then
                  noobcharge = noobcharge + math.ceil(huh:GetMass() * 3)
                else
                  noobcharge = noobcharge + 25
                end
                huh:Destroy()
                haseaten = true
              end
            elseif huh:IsA("Model") and huh ~= chr then
              for _, WOP in pairs(huh:GetChildren()) do
                if WOP:IsA("BasePart") then
                  local objs = partoz.CFrame:pointToObjectSpace(WOP.Position)
                  if WOP:GetMass() < 1750 and objs.Z < 3 and objs.Z > -1 and objs.X < 6 and objs.X > -6 and math.abs(objs.Y) < 14 then
                    if math.ceil(WOP:GetMass() * 1.5) < 25 then
                      noobcharge = noobcharge + math.ceil(WOP:GetMass() * 3)
                    else
                      noobcharge = noobcharge + 25
                    end
                    WOP:Destroy()
                    haseaten = true
                  end
                end
              end
            end
          end
        end
        local asplohito = function(poso, magn, dmg, debtim, bodyfdire, bodyrot)
          for _, guy in pairs(workspace:GetChildren()) do
            if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and magn > (guy:FindFirstChild("HumanoidRootPart").Position - poso).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
              do
                local humz = guy:FindFirstChild("Humanoid")
                local horp = guy:FindFirstChild("HumanoidRootPart")
                humz.Health = humz.Health - humz.MaxHealth / 100 * dmg
                humz:SetStateEnabled(16, true)
                delay(debtim, function()
                  humz:SetStateEnabled(16, true)
                end)
                local db = Instance.new("StringValue")
                db.Name = "alabo"
                db.Parent = horp
                delay(debtim, function()
                  db:Destroy()
                end)
                local damageind = Instance.new("Model")
                damageind.Name = dmg
                damageind.Parent = workspace
                game.Debris:AddItem(damageind, 0.5 + dmg / 75)
                local awawaa = Instance.new("Humanoid")
                awawaa.MaxHealth = 0
                awawaa.Parent = damageind
                local dhed = Instance.new("Part")
                dhed.Name = "Head"
                dhed.Locked = true
                dhed.Size = Vector3.new(0.2, 0.2, 0.2)
                dhed.Position = horp.Position
                dhed.BrickColor = BrickColor.new("Bright red")
                dhed.CanCollide = false
                dhed.Parent = damageind
                local flo = Instance.new("BodyPosition")
                flo.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                flo.P = 20000
                flo.D = 300
                flo.Position = dhed.Position + Vector3.new(0, 5, 0)
                flo.Parent = dhed
                local dasdada = Instance.new("CylinderMesh")
                dasdada.Parent = dhed
                coroutine.resume(coroutine.create(function()
                  while dasdada do
                    swait()
                    dasdada.Scale = dasdada.Scale:lerp(Vector3.new(2.5 + dmg / 10, 1.25 + dmg / 35, 2.5 + dmg / 10), 0.4)
                  end
                end))
                if bodyfdire then
                  local boopyve = Instance.new("BodyVelocity")
                  boopyve.MaxForce = Vector3.new(9999999999999, 9999999999999, 9999999999999)
                  boopyve.P = 9999999999
                  boopyve.Velocity = bodyfdire
                  boopyve.Parent = horp
                  game.Debris:AddItem(boopyve, debtim)
                end
                if bodyrot then
                  local boopyro = Instance.new("BodyAngularVelocity")
                  boopyro.MaxTorque = Vector3.new(999999, 999999, 999999)
                  boopyro.P = math.huge
                  boopyro.AngularVelocity = bodyrot
                  boopyro.Parent = horp
                  game.Debris:AddItem(boopyro, debtim)
                end
              end
            end
          end
        end
        local awawarafasa = false
        local customactive = false
        ymmu = tool.Activated:connect(function()
          if activu == true or customactive == true or ragged == true then
            return
          end
          customactive = true
          awawarafasa = true
          coroutine.resume(coroutine.create(function()
            tool.Deactivated:wait()
            awawarafasa = false
          end))
          for _ = 1, 5 do
            wait()
            lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(50)), 0.25)
            hwel.C0 = hwel.C0:lerp(ang(rd(80), rd(0), rd(0)) * cf(0, 1, 0), 0.25)
          end
          hd1.Transparency = 1
          hd2.Transparency = 0
          local chargecountaPOOOOO = 0
          if awawarafasa then
            souno3.TimePosition = 0.15
            souno3:Play()
            local oz = 20
            local dz = 10
            local az = oz / 6
            repeat
              wait()
              if chargecountaPOOOOO < 10 then
                chargecountaPOOOOO = chargecountaPOOOOO + 1
              end
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(190)), 0.5)
              hwel.C0 = hwel.C0:lerp(ang(rd(160), rd(0), rd(0)) * cf(0, 1, 0), 0.45)
              p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4.5 * az, 0), 0.45)
              p7m.Scale = p7m.Scale:lerp(Vector3.new(5.5 * dz, 5.5 * oz, 1), 0.45)
              p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0, -0.425), 0.45)
              p8m.Scale = p8m.Scale:lerp(Vector3.new(5.5 * dz, 0.5 * oz, 4.25), 0.45)
              p8w.C0 = p8w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -0.5 * oz, 0.1), 0.45)
              p9m.Scale = p9m.Scale:lerp(Vector3.new(5.5 * dz, 0.125 * oz, 4.25), 0.45)
              p9w.C0 = p9w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.5375 * oz, 0.1), 0.45)
              p10m.Scale = p10m.Scale:lerp(Vector3.new(2.5, 5 * oz, 4.25), 0.45)
              p10w.C0 = p10w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(-0.2625 * oz, 0.5, 0.1), 0.45)
              p11m.Scale = p11m.Scale:lerp(Vector3.new(2.5, 5 * oz, 4.25), 0.45)
              p11w.C0 = p11w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0.2625 * oz, 0.5, 0.1), 0.45)
              p12m.Scale = p12m.Scale:lerp(Vector3.new(5 * dz, 5.25 * oz, 2.5), 0.45)
              p12w.C0 = p12w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, -0.25), 0.45)
              p13m.Scale = p13m.Scale:lerp(Vector3.new(5 * dz, 5.25 * oz, 0.75), 0.45)
              p13w.C0 = p13w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.05), 0.45)
              p14m.Scale = p14m.Scale:lerp(Vector3.new(5 * dz, 5.25 * oz, 0.75), 0.45)
              p14w.C0 = p14w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.2), 0.45)
              p15m.Scale = p15m.Scale:lerp(Vector3.new(5 * dz, 5.25 * oz, 0.75), 0.45)
              p15w.C0 = p15w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.35), 0.45)
              p16m.Scale = p16m.Scale:lerp(Vector3.new(5.244999999999999, 0, 0), 0.45)
              p16w.C0 = p16w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0.5, 0.1, 0), 0.45)
              p17m.Scale = p17m.Scale:lerp(Vector3.new(5.244999999999999, 0, 0), 0.45)
              p17w.C0 = p17w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(-0.5, 0.1, 0), 0.45)
              p420m.Scale = p420m.Scale:lerp(Vector3.new(5.5 * dz, 5.25 * dz, 0), 0.45)
              p420w.C0 = p420w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -0.4 * oz, 0.525), 0.45)
            until not awawarafasa
          end
          if chargecountaPOOOOO > 7 then
            activu = true
            souno1:Play()
            local RIDLEYDIDDLY = hrp.Velocity
            local AWSHOOTMYPOO = hrp.Position
            hrp.Velocity = Vector3.new(0, 0, 0)
            local BAP = Instance.new("BodyPosition")
            BAP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            BAP.D = 500
            BAP.P = 5000
            BAP.Position = AWSHOOTMYPOO
            BAP.Parent = hrp
            game.Debris:AddItem(BAP, 8)
            local HWOWH = Instance.new("BodyAngularVelocity")
            HWOWH.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
            HWOWH.AngularVelocity = Vector3.new(0, 0, 0)
            HWOWH.P = 2000
            HWOWH.Parent = hrp
            game.Debris:AddItem(HWOWH, 8)
            for _ = 1, 5 do
              wait()
              squarehito(pt7)
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(50)), 0.6)
              hwel.C0 = hwel.C0:lerp(ang(rd(155), rd(0), rd(0)) * cf(0, 1, 0), 0.6)
            end
            if haseaten == true then
              swait(5)
              hd1.Transparency = 0
              hd2.Transparency = 1
              souno2:Play()
              for _ = 1, 5 do
                for _ = 1, 5 do
                  wait()
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
                  hwel.C0 = hwel.C0:lerp(ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0), 0.3)
                  p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4.5, 0), 0.45)
                  p7m.Scale = p7m.Scale:lerp(Vector3.new(5.5, 4.125, 1), 0.45)
                  p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.125, -0.425), 0.45)
                  p8m.Scale = p8m.Scale:lerp(Vector3.new(5.5, 1.875, 4.25), 0.45)
                  p8w.C0 = p8w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -0.1, 0.1), 0.45)
                  p9m.Scale = p9m.Scale:lerp(Vector3.new(5.5, 0.5, 4.25), 0.45)
                  p9w.C0 = p9w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.5, 0.1), 0.45)
                  p10m.Scale = p10m.Scale:lerp(Vector3.new(2.75, 1.875, 4.25), 0.45)
                  p10w.C0 = p10w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(-0.275, 0.275, 0.1), 0.45)
                  p11m.Scale = p11m.Scale:lerp(Vector3.new(2.75, 1.875, 4.25), 0.45)
                  p11w.C0 = p11w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0.275, 0.275, 0.1), 0.45)
                  p12m.Scale = p12m.Scale:lerp(Vector3.new(4.25, 3.25, 2.5), 0.45)
                  p12w.C0 = p12w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, -0.25), 0.45)
                  p13m.Scale = p13m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
                  p13w.C0 = p13w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.05), 0.45)
                  p14m.Scale = p14m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
                  p14w.C0 = p14w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.2), 0.45)
                  p15m.Scale = p15m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
                  p15w.C0 = p15w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.35), 0.45)
                  p16m.Scale = p16m.Scale:lerp(Vector3.new(5.244999999999999, 5, 5), 0.45)
                  p16w.C0 = p16w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0.6, 0.1, 0), 0.45)
                  p17m.Scale = p17m.Scale:lerp(Vector3.new(5.244999999999999, 5, 5), 0.45)
                  p17w.C0 = p17w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(-0.6, 0.1, 0), 0.45)
                  p420m.Scale = p420m.Scale:lerp(Vector3.new(5.5, 5.25, 0), 0.45)
                  p420w.C0 = p420w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.15, 0.525), 0.45)
                end
                for _ = 1, 5 do
                  wait()
                  lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
                  hwel.C0 = hwel.C0:lerp(ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0), 0.3)
                  p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4.5, 0), 0.45)
                  p7m.Scale = p7m.Scale:lerp(Vector3.new(5.5, 5.5, 1), 0.45)
                  p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0, -0.425), 0.45)
                  p8m.Scale = p8m.Scale:lerp(Vector3.new(5.5, 2.5, 4.25), 0.45)
                  p8w.C0 = p8w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -0.3, 0.1), 0.45)
                  p9m.Scale = p9m.Scale:lerp(Vector3.new(5.5, 0.5, 4.25), 0.45)
                  p9w.C0 = p9w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.5, 0.1), 0.45)
                  p10m.Scale = p10m.Scale:lerp(Vector3.new(2.75, 2.5, 4.25), 0.45)
                  p10w.C0 = p10w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(-0.275, 0.2, 0.1), 0.45)
                  p11m.Scale = p11m.Scale:lerp(Vector3.new(2.75, 2.5, 4.25), 0.45)
                  p11w.C0 = p11w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0.275, 0.2, 0.1), 0.45)
                  p12m.Scale = p12m.Scale:lerp(Vector3.new(4.25, 3.25, 2.5), 0.45)
                  p12w.C0 = p12w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, -0.25), 0.45)
                  p13m.Scale = p13m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
                  p13w.C0 = p13w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.05), 0.45)
                  p14m.Scale = p14m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
                  p14w.C0 = p14w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.2), 0.45)
                  p15m.Scale = p15m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
                  p15w.C0 = p15w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.35), 0.45)
                  p16m.Scale = p16m.Scale:lerp(Vector3.new(5.244999999999999, 1.75, 1.75), 0.45)
                  p16w.C0 = p16w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0.5, 0.15, 0), 0.45)
                  p17m.Scale = p17m.Scale:lerp(Vector3.new(5.244999999999999, 1.75, 1.75), 0.45)
                  p17w.C0 = p17w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(-0.5, 0.15, 0), 0.45)
                  p420m.Scale = p420m.Scale:lerp(Vector3.new(5.5, 5.25, 0), 0.45)
                  p420w.C0 = p420w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0, 0.525), 0.45)
                end
              end
              print(noobcharge)
              haseaten = false
            else
              swait(10)
            end
            BAP:Destroy()
            HWOWH:Destroy()
            hrp.Velocity = RIDLEYDIDDLY
            activu = false
          end
          hd1.Transparency = 0
          hd2.Transparency = 1
          customactive = false
        end)
        kabomobepo = mouse.KeyDown:connect(function(thekeyyyy)
          if activu == true or customactive == true or ragged == true or noobcharge < 100 or thekeyyyy ~= "f" then
            return
          end
          noobcharge = 0
          batting = false
          ymmu:Disconnect()
          ymmu = nil
          kabomobepo:Disconnect()
          kabomobepo = nil
          local taggedpos = mouse.Hit.p
          local badevz = chr:FindFirstChild("bmodel")
          badevz.PrimaryPart = badevz.hnd
          if badevz.hnd:FindFirstChildOfClass("Weld") then
            badevz.hnd:FindFirstChildOfClass("Weld"):Destroy()
          end
          badevz.Parent = workspace
          badevz:SetPrimaryPartCFrame(rarm.CFrame * ang(rd(-90), rd(0), rd(0)) * cf(0, 0, -1))
          game.Debris:AddItem(badevz, 40)
          local bodyrot = Instance.new("BodyAngularVelocity")
          bodyrot.MaxTorque = Vector3.new(9999999999999, 9999999999999, 9999999999999)
          bodyrot.P = 500000
          bodyrot.AngularVelocity = Vector3.new(0, 0, 0)
          bodyrot.Parent = badevz.hnd
          local bodyfor = Instance.new("BodyForce")
          bodyfor.Force = Vector3.new(0, 20, 0)
          bodyfor.Parent = badevz.hnd
          coroutine.resume(coroutine.create(function()
            while bodyrot do
              swait(3)
              bodyfor.Force = bodyfor.Force + Vector3.new(0, 1, 0)
            end
          end))
          local AWDAMN = {}
          for _ = 1, 8 do
            local aw = makepart("Grey", "wot", 0, 0.4, "SmoothPlastic", modz, badevz.hnd.CFrame)
            aw.Size = Vector3.new(2, 2, 2)
            aw.Anchored = true
            game.Debris:AddItem(aw, 20)
            table.insert(AWDAMN, aw)
          end
          for _ = 1, 35 do
            for _, ADASD in pairs(AWDAMN) do
              swait()
              if 1 < ADASD.Transparency then
                ADASD.Size = Vector3.new(2, 2, 2)
                ADASD.Transparency = 0.4
              else
                ADASD.Transparency = ADASD.Transparency + 0.1
                ADASD.Size = ADASD.Size + Vector3.new(1, 1, 1)
              end
              ADASD.CFrame = badevz.hnd.CFrame * ang(rd(rd2(0, 360)), rd(rd2(0, 360)), rd(rd2(0, 360)))
            end
          end
          bodyfor:Destroy()
          bodyrot:Destroy()
          badevz.hnd.Anchored = true
          badevz:SetPrimaryPartCFrame(CFrame.new(badevz.hnd.Position, taggedpos) * ang(rd(-90), rd(0), 0))
          for _ = 1, 40 do
            wait()
            local wayy = Ray.new(badevz.hnd.Position, badevz.hnd.CFrame.upVector * 200)
            local gotdeparto = workspace:FindPartOnRayWithIgnoreList(wayy, {badevz}, true, false)
            if gotdeparto then
              asplohito(taggedpos, 100, 80, 1, Vector3.new(rd2(-40, 40), rd2(160, 180), rd2(-40, 40)), Vector3.new(rd2(-20, 20), rd2(40, 80), rd2(-20, 20)))
              do
                local poopys = makepart("White", "WOAH", 0, 0.2, "Neon", modz, cf(taggedpos))
                poopys.Anchored = true
                local loldon = makemesh("Sphere", Vector3.new(30, 30, 30), nil, poopys)
                game.Debris:AddItem(poopys, 10)
                coroutine.resume(coroutine.create(function()
                  for _ = 1, 20 do
                    swait()
                    loldon.Scale = loldon.Scale + Vector3.new(60, 60, 60)
                    poopys.Transparency = poopys.Transparency + 0.05
                  end
                  poopys:Destroy()
                end))
                badevz:Destroy()
                break
              end
            else
              badevz:SetPrimaryPartCFrame(badevz.hnd.CFrame * cf(0, 180, 0))
            end
          end
        end)
        coroutine.resume(coroutine.create(function()
          while ymmu do
            wait()
            if not customactive then
              lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
              hwel.C0 = hwel.C0:lerp(ang(rd(90), rd(0), rd(0)) * cf(0, 1, 0), 0.3)
              p6w.C0 = p6w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -4.5, 0), 0.45)
              p7m.Scale = p7m.Scale:lerp(Vector3.new(5.5, 5.5, 1), 0.45)
              p7w.C0 = p7w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0, -0.425), 0.45)
              p8m.Scale = p8m.Scale:lerp(Vector3.new(5.5, 2.5, 4.25), 0.45)
              p8w.C0 = p8w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, -0.3, 0.1), 0.45)
              p9m.Scale = p9m.Scale:lerp(Vector3.new(5.5, 0.5, 4.25), 0.45)
              p9w.C0 = p9w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.5, 0.1), 0.45)
              p10m.Scale = p10m.Scale:lerp(Vector3.new(2.75, 2.5, 4.25), 0.45)
              p10w.C0 = p10w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(-0.275, 0.2, 0.1), 0.45)
              p11m.Scale = p11m.Scale:lerp(Vector3.new(2.75, 2.5, 4.25), 0.45)
              p11w.C0 = p11w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0.275, 0.2, 0.1), 0.45)
              p12m.Scale = p12m.Scale:lerp(Vector3.new(4.25, 3.25, 2.5), 0.45)
              p12w.C0 = p12w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, -0.25), 0.45)
              p13m.Scale = p13m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
              p13w.C0 = p13w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.05), 0.45)
              p14m.Scale = p14m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
              p14w.C0 = p14w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.2), 0.45)
              p15m.Scale = p15m.Scale:lerp(Vector3.new(4.25, 3.25, 0.75), 0.45)
              p15w.C0 = p15w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0.175, 0.35), 0.45)
              p16m.Scale = p16m.Scale:lerp(Vector3.new(5.244999999999999, 0, 0), 0.45)
              p16w.C0 = p16w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(0.5, 0.1, 0), 0.45)
              p17m.Scale = p17m.Scale:lerp(Vector3.new(5.244999999999999, 0, 0), 0.45)
              p17w.C0 = p17w.C0:lerp(ang(rd(0), rd(90), rd(0)) * cf(-0.5, 0.1, 0), 0.45)
              p420m.Scale = p420m.Scale:lerp(Vector3.new(5.5, 5.25, 0), 0.45)
              p420w.C0 = p420w.C0:lerp(ang(rd(0), rd(0), rd(0)) * cf(0, 0, 0.525), 0.45)
            end
          end
        end))
      end
    elseif batting == true then
      if customactive == true or activu == true then
        return
      end
      batting = false
      ymmu:Disconnect()
      ymmu = nil
      kabomobepo:Disconnect()
      kabomobepo = nil
      noobcharge = 0
      for h = 1, #memedonlist do
        table.remove(memedonlist, h)
      end
      local badevz = chr:FindFirstChild("bmodel")
      badevz.PrimaryPart = badevz.hnd
      if badevz.hnd:FindFirstChildOfClass("Weld") then
        badevz.hnd:FindFirstChildOfClass("Weld"):Destroy()
      end
      for _, A in pairs(badevz:GetChildren()) do
        if A.ClassName == "Part" then
          A.CanCollide = true
        end
      end
      badevz.Parent = workspace
      badevz:SetPrimaryPartCFrame(rarm.CFrame * ang(rd(-90), rd(0), rd(0)) * cf(0, 0, -1))
      game.Debris:AddItem(badevz, 6)
    end
  end
  game:GetService("ContentProvider"):Preload("rbxassetid://725969678")
  function lauf()
    if selected == false or activu == true or batting == true or ragged == true then
      return
    end
    activu = true
    local sped = human.WalkSpeed
    hrp.Anchored = true
    human.WalkSpeed = 0
    lauf1:Play()
    cam.CameraType = "Scriptable"
    cam.CoordinateFrame = hrp.CFrame * ang(rd(0), rd(215), rd(0)) * cf(0, 0, 13)
    for i = 1, 4 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(80)), 0.4 + i * 0.15)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4 + i * 0.15)
      lerpz(RS, "C0", RSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(10)), 0.4 + i * 0.15)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4 + i * 0.15)
      lerpz(LS, "C0", LSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(-10)), 0.4 + i * 0.15)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4 + i * 0.15)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.4 + i * 0.15)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4 + i * 0.15)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.4 + i * 0.15)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.4 + i * 0.15)
    end
    local makeglasses = function(whicharm, motorcf)
      local makemotor = function(parent, p0, p1, c0, c1)
        local wel = Instance.new("Motor6D")
        wel.Part0 = p0
        wel.Part1 = p1
        wel.C0 = c0
        if c1 ~= nil then
          wel.C1 = c1
        end
        wel.Parent = parent
        return wel
      end
      local glasses = makepart("Black", "glasses", 0, 0, "SmoothPlastic", whicharm, whicharm.CFrame)
      local glassesmesh = makemesh("FileMesh", Vector3.new(1, 1, 1), "rbxassetid://30166087", glasses)
      glassesmesh.TextureId = "rbxassetid://30166098"
      local glassesmotor = makemotor(glasses, glasses, whicharm, motorcf, nil)
      return glasses, glassesmotor
    end
    swait(10)
    local glasses1, glassesmotor1 = makeglasses(hed, ang(rd(0), rd(0), 0) * cf(0, -0.2, 0.25))
    swait(13)
    cam.CoordinateFrame = hed.CFrame * ang(rd(5), rd(145), rd(-5)) * cf(0, 0, 5)
    local glasses2, glassesmotor2 = makeglasses(rarm, ang(rd(180), rd(0), 0) * cf(0, 1, 0))
    for i = 1, 4 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(80)), 0.3 + i * 0.14)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RS, "C0", RSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(170)), 0.3 + i * 0.14)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LS, "C0", LSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
    end
    glassesmotor2.Part1 = hed
    glassesmotor2.C0 = ang(rd(-25), rd(-2), rd(4)) * cf(0, -0.55, 0.275)
    swait(3)
    local glasses3, glassesmotor3 = makeglasses(larm, ang(rd(180), rd(0), 0) * cf(0, 1, 0))
    for i = 1, 4 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(80)), 0.3 + i * 0.14)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RS, "C0", RSC0 * cf(0, -0.3, 0) * ang(rd(20), rd(-10), rd(10)), 0.3 + i * 0.14)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LS, "C0", LSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(170)), 0.3 + i * 0.14)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
    end
    glassesmotor3.Part1 = hed
    glassesmotor3.C0 = ang(rd(-8), rd(13), rd(-2)) * cf(-0.075, 0, 0.35)
    swait(3)
    local glasses4, glassesmotor4 = makeglasses(rarm, ang(rd(180), rd(0), 0) * cf(0, 1, 0))
    for i = 1, 4 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(80)), 0.3 + i * 0.14)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RS, "C0", RSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(170)), 0.3 + i * 0.14)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LS, "C0", LSC0 * cf(0, -0.3, 0) * ang(rd(40), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
    end
    glassesmotor4.Part1 = hed
    glassesmotor4.C0 = ang(rd(10), rd(-10), rd(16)) * cf(0, 0.1, 0.325)
    swait(3)
    local glasses5, glassesmotor5 = makeglasses(larm, ang(rd(180), rd(0), 0) * cf(0, 1, 0))
    for i = 1, 4 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(80)), 0.3 + i * 0.14)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RS, "C0", RSC0 * cf(0, -0.3, 0) * ang(rd(20), rd(-10), rd(10)), 0.3 + i * 0.14)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LS, "C0", LSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(170)), 0.3 + i * 0.14)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
    end
    glassesmotor5.Part1 = hed
    glassesmotor5.C0 = ang(rd(-37), rd(17), rd(-8)) * cf(0, -0.75, 0.2)
    swait(3)
    local glasses6, glassesmotor6 = makeglasses(rarm, ang(rd(180), rd(0), 0) * cf(0, 1, 0))
    for i = 1, 4 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(80)), 0.3 + i * 0.14)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RS, "C0", RSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(170)), 0.3 + i * 0.14)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LS, "C0", LSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(10)), 0.3 + i * 0.14)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
    end
    glassesmotor6.Part1 = hed
    glassesmotor6.C0 = ang(rd(37), rd(4), rd(-2)) * cf(0, 0.3, 0.275)
    for i = 1, 4 do
      swait()
      lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(80)), 0.3 + i * 0.14)
      lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RS, "C0", RSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(10)), 0.3 + i * 0.14)
      lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LS, "C0", LSC0 * cf(0, -0.3, 0) * ang(rd(-40), rd(-10), rd(10)), 0.3 + i * 0.14)
      lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-10), rd(-10), rd(-10)), 0.3 + i * 0.14)
      lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
      lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-10), rd(10), rd(-10)), 0.3 + i * 0.14)
      lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3 + i * 0.14)
    end
    swait(1)
    local scg = Instance.new("ScreenGui")
    scg.Parent = plr.PlayerGui
    local t1 = Instance.new("TextLabel")
    t1.AnchorPoint = Vector2.new(0.5, 0.5)
    t1.BackgroundTransparency = 0
    t1.BorderSizePixel = 0
    t1.Position = UDim2.new(0.4, 0, 0.78, 0)
    t1.Rotation = -6
    t1.Size = UDim2.new(0, 2, 0, 2)
    t1.TextSize = 100
    t1.Font = "Cartoon"
    t1.Text = "I"
    t1.TextStrokeTransparency = 0
    t1.Parent = scg
    coroutine.resume(coroutine.create(function()
      while t1 do
        t1.TextColor3 = Color3.new(rd2(0, 1), rd2(0, 1), rd2(0, 1))
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t1.TextColor3 = Color3.new(t1.TextColor3.r, t1.TextColor3.g + 0.06666666666666667, t1.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t1.TextColor3 = Color3.new(t1.TextColor3.r - 0.06666666666666667, t1.TextColor3.g, t1.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t1.TextColor3 = Color3.new(t1.TextColor3.r, t1.TextColor3.g, t1.TextColor3.b + 0.06666666666666667)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t1.TextColor3 = Color3.new(t1.TextColor3.r, t1.TextColor3.g - 0.06666666666666667, t1.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t1.TextColor3 = Color3.new(t1.TextColor3.r + 0.06666666666666667, t1.TextColor3.g, t1.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t1.TextColor3 = Color3.new(t1.TextColor3.r, t1.TextColor3.g, t1.TextColor3.b - 0.06666666666666667)
        end
      end
    end))
    swait(8)
    local t2 = Instance.new("TextLabel")
    t2.AnchorPoint = Vector2.new(0.5, 0.5)
    t2.BackgroundTransparency = 0
    t2.BorderSizePixel = 0
    t2.Position = UDim2.new(0.575, 0, 0.84, 0)
    t2.Rotation = 15
    t2.Size = UDim2.new(0, 2, 0, 2)
    t2.TextSize = 100
    t2.Font = "Cartoon"
    t2.Text = "WIN"
    t2.TextStrokeTransparency = 0
    t2.Parent = scg
    coroutine.resume(coroutine.create(function()
      while t2 do
        t2.TextColor3 = Color3.new(rd2(0, 1), rd2(0, 1), rd2(0, 1))
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t2.TextColor3 = Color3.new(t2.TextColor3.r, t2.TextColor3.g + 0.06666666666666667, t2.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t2.TextColor3 = Color3.new(t2.TextColor3.r - 0.06666666666666667, t2.TextColor3.g, t2.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t2.TextColor3 = Color3.new(t2.TextColor3.r, t2.TextColor3.g, t2.TextColor3.b + 0.06666666666666667)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t2.TextColor3 = Color3.new(t2.TextColor3.r, t2.TextColor3.g - 0.06666666666666667, t2.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t2.TextColor3 = Color3.new(t2.TextColor3.r + 0.06666666666666667, t2.TextColor3.g, t2.TextColor3.b)
        end
        for _ = 1, 15 do
          game:GetService("RunService").RenderStepped:wait()
          t2.TextColor3 = Color3.new(t2.TextColor3.r, t2.TextColor3.g, t2.TextColor3.b - 0.06666666666666667)
        end
      end
    end))
    swait(20)
    scg:Destroy()
    glasses1:Destroy()
    glasses2:Destroy()
    glasses3:Destroy()
    glasses4:Destroy()
    glasses5:Destroy()
    glasses6:Destroy()
    cam.CameraType = "Custom"
    hrp.Anchored = false
    human.WalkSpeed = sped
    activu = false
  end
  function makenoob(cfrem, scalo, rags)
    nscale.Value = scalo
    local md = Instance.new("Model")
    md.Name = "Noob"
    md.Parent = workspace
    local hu = Instance.new("Humanoid")
    hu.RigType = "R6"
    hu.MaxHealth = 100 * scalo
    hu.Health = 100 * scalo
    hu.Parent = md
    local anm = Instance.new("Animator")
    anm.Parent = hu
    hu.PlatformStand = true
    local light = function(part)
      part.CustomPhysicalProperties = PhysicalProperties.new(0.35, 0.3, 0.5)
    end
    local hd = Instance.new("Part")
    hd.Name = "Head"
    hd.Size = Vector3.new(2 * nscale.Value, 1 * nscale.Value, 1 * nscale.Value)
    hd.TopSurface = "Smooth"
    hd.BottomSurface = "Inlet"
    hd.Locked = true
    hd.BrickColor = BrickColor.new("Bright yellow")
    hd.CanCollide = true
    hd.Anchored = false
    light(hd)
    hd.Parent = md
    local hm = Instance.new("SpecialMesh")
    hm.MeshType = "Head"
    hm.Scale = Vector3.new(1.25, 1.25, 1.25)
    hm.Parent = hd
    local hf = Instance.new("Decal")
    hf.Name = "face"
    hf.Texture = "rbxasset://textures/face.png"
    local gen = math.random(1, 40)
    if gen == 3 then
      hf.Texture = "rbxassetid://260884109"
    end
    if gen == 8 then
      hf.Texture = "rbxassetid://260569492"
    end
    if gen == 12 then
      hf.Texture = "rbxassetid://259580505"
    end
    if gen == 16 then
      hf.Texture = "rbxassetid://259579232"
    end
    if gen == 24 then
      hf.Texture = "rbxassetid://259571525"
    end
    if gen == 28 then
      hf.Texture = "rbxassetid://258283210"
    end
    if gen == 32 then
      hf.Texture = "rbxassetid://258940032"
    end
    if gen == 38 then
      hf.Texture = "rbxassetid://673220970"
      hf.Color3 = Color3.new(0, 0, 0)
    end
    hf.Face = "Front"
    hf.Parent = hd
    local hrpa = Instance.new("Part")
    hrpa.Name = "HumanoidRootPart"
    hrpa.TopSurface, hrpa.BottomSurface = 0, 0
    hrpa.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    hrpa.Transparency = 1
    hrpa.CanCollide = false
    hrpa.Locked = true
    light(hrpa)
    hrpa.Parent = md
    local tagbomb = Instance.new("BoolValue")
    tagbomb.Name = "tagbomb"
    tagbomb.Value = false
    tagbomb.Parent = hrpa
    local learm = Instance.new("Part")
    learm.Name = "Left Arm"
    learm.BrickColor = BrickColor.new("Bright yellow")
    learm.CanCollide = false
    learm.Locked = true
    learm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    light(learm)
    learm.Parent = md
    local riarm = Instance.new("Part")
    riarm.Name = "Right Arm"
    riarm.BrickColor = BrickColor.new("Bright yellow")
    riarm.CanCollide = false
    riarm.Locked = true
    light(riarm)
    riarm.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    riarm.Parent = md
    local leleg = Instance.new("Part")
    leleg.Name = "Left Leg"
    leleg.BrickColor = BrickColor.new("Br. yellowish green")
    leleg.CanCollide = false
    leleg.Locked = true
    light(leleg)
    leleg.BottomSurface = 0
    leleg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    leleg.Parent = md
    local rileg = Instance.new("Part")
    rileg.Name = "Right Leg"
    rileg.BrickColor = BrickColor.new("Br. yellowish green")
    rileg.CanCollide = false
    rileg.Locked = true
    light(rileg)
    rileg.BottomSurface = 0
    rileg.Size = Vector3.new(1 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    rileg.Parent = md
    local tor = Instance.new("Part")
    tor.Name = "Torso"
    tor.BrickColor = BrickColor.new("Bright blue")
    tor.Locked = true
    light(tor)
    tor.Size = Vector3.new(2 * nscale.Value, 2 * nscale.Value, 1 * nscale.Value)
    tor.LeftSurface, tor.RightSurface = "Weld", "Weld"
    tor.Parent = md
    md.PrimaryPart = hrpa
    md:SetPrimaryPartCFrame(cfrem)
    md:makeJoints()
    makejoint(hrpa, RootJointC0, RootJointC1, hrpa, tor, "RootJoint")
    makejoint(tor, NeckC0, NeckC1, tor, hd, "Neck")
    if rags == true then
      makegloo(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makegloo(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makegloo(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makegloo(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      maketouchy(riarm, riarm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(learm, learm, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(leleg, leleg, CFrame.new(0, 0.5 * nscale.Value, 0))
      maketouchy(rileg, rileg, CFrame.new(0, 0.5 * nscale.Value, 0))
    elseif rags == false then
      makejoint(tor, RightShoulderC0, RightShoulderC1, tor, riarm, "Right Shoulder")
      makejoint(tor, LeftShoulderC0, LeftShoulderC1, tor, learm, "Left Shoulder")
      makejoint(tor, RightHipC0, RightHipC1, tor, rileg, "Right Hip")
      makejoint(tor, LeftHipC0, LeftHipC1, tor, leleg, "Left Hip")
      hu.PlatformStand = false
    end
    nscale.Value = 1
    local whistl = Instance.new("Sound")
    whistl.SoundId = "rbxassetid://170297200"
    whistl.Name = "whistl"
    whistl.Volume = 1
    whistl.TimePosition = 0.6
    whistl.Pitch = 1
    whistl.Parent = hrpa
    hu.Touched:connect(function(tpart, uwot)
      if tagbomb.Value == true and tpart.Parent ~= md and tpart.Parent.Parent ~= md and tpart.Parent.Parent.Parent ~= md and tpart.Parent ~= "Noob" then
        tagbomb.Value = false
        hu.Health = 0
        local derp = Instance.new("Explosion")
        derp.BlastPressure = 200
        derp.BlastRadius = 16
        derp.DestroyJointRadiusPercent = 0
        derp.ExplosionType = 2
        derp.Visible = true
        derp.Position = uwot.Position - Vector3.new(0, 0.5, 0)
        derp.Parent = workspace
        game.Debris:AddItem(md, 8)
        local sound2 = Instance.new("Sound")
        sound2.SoundId = "rbxassetid://157878578"
        sound2.Volume = 0.8
        sound2.Pitch = 0.9
        sound2.Parent = uwot
        sound2:Play()
        whistl:Stop()
        hito(uwot, 14, 24, 0.3, Vector3.new(rd2(-10, 10), rd2(20, 30), rd2(-10, 10)), Vector3.new(rd2(-10, 10), rd2(20, 30), rd2(-10, 10)))
      end
    end)
    return md
  end
  local pl, st, gotago
  function musicnoob()
    if selected == false or activu == true then
      return
    end
    if memeing == false then
      activu = true
      do
        local nib = spawnnoob(hrp.CFrame * cf(5, 3, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 1, false)
        nib.Name = "Nooprah"
        nib.Parent = modz
        local nHuman = nib:FindFirstChild("Humanoid")
        local nhrp = nib:FindFirstChild("HumanoidRootPart")
        local nTorso = nib:FindFirstChild("Torso")
        local nRS = nTorso:FindFirstChild("Right Shoulder")
        local nLS = nTorso:FindFirstChild("Left Shoulder")
        local nRH = nTorso:FindFirstChild("Right Hip")
        local nLH = nTorso:FindFirstChild("Left Hip")
        local nRJ = nhrp:FindFirstChild("RootJoint")
        local nN = nTorso:FindFirstChild("Neck")
        local nFace = nib:FindFirstChild("Head"):FindFirstChild("face")
        nHuman.MaxHealth = math.huge
        nHuman.Health = math.huge
        nFace.Texture = "rbxassetid://14175189"
        local mp = makepart("Black", "mauth", 0, 0, "SmoothPlastic", nib:FindFirstChild("Head"), nhrp.CFrame)
        local mm = makemesh("Sphere", Vector3.new(3, 0.25, 0.75), nil, mp)
        local mmot = makejoint(mp, cf(0, 0.175, 0.55), cf(0, 0, 0), mp, nib:FindFirstChild("Head"), "derp")
        local mosicu = Instance.new("Sound")
        mosicu.Name = "moose"
        mosicu.Volume = 1
        mosicu.EmitterSize = 40
        mosicu.MaxDistance = 80
        mosicu.Looped = true
        mosicu.Parent = nib:FindFirstChild("Head")
        local sg = Instance.new("ScreenGui")
        sg.Name = "simpleflips"
        sg.Parent = plr.PlayerGui
        local fr = Instance.new("Frame")
        fr.AnchorPoint = Vector2.new(1, 0.5)
        fr.BackgroundColor3 = Color3.new(1, 1, 0.0784313725490196)
        fr.BorderSizePixel = 2
        fr.Position = UDim2.new(0.975, 0, 0.5, 0)
        fr.Size = UDim2.new(0, 200, 0, 100)
        fr.Parent = sg
        local mbox = Instance.new("TextBox")
        mbox.AnchorPoint = Vector2.new(0.5, 0.5)
        mbox.BackgroundColor3 = Color3.new(0.9019607843137255, 0.9019607843137255, 0.0784313725490196)
        mbox.BorderSizePixel = 2
        mbox.Position = UDim2.new(0.5, 0, 0.25, 0)
        mbox.Size = UDim2.new(0, 150, 0, 40)
        mbox.Font = "SourceSansBold"
        mbox.FontSize = "Size24"
        mbox.Text = "MEME"
        mbox.TextWrapped = true
        mbox.Parent = fr
        local pley = Instance.new("TextButton")
        pley.AnchorPoint = Vector2.new(0.5, 0.5)
        pley.BackgroundColor3 = Color3.new(0.25098039215686274, 1, 0.3137254901960784)
        pley.BorderSizePixel = 2
        pley.Position = UDim2.new(0.25, 0, 0.75, 0)
        pley.Size = UDim2.new(0, 75, 0, 35)
        pley.Font = "SourceSansBold"
        pley.FontSize = "Size18"
        pley.Text = "kappa"
        pley.Parent = fr
        local stap = Instance.new("TextButton")
        stap.AnchorPoint = Vector2.new(0.5, 0.5)
        stap.BackgroundColor3 = Color3.new(1, 0.25098039215686274, 0.11764705882352941)
        stap.BorderSizePixel = 2
        stap.Position = UDim2.new(0.75, 0, 0.75, 0)
        stap.Size = UDim2.new(0, 75, 0, 35)
        stap.Font = "SourceSansBold"
        stap.FontSize = "Size18"
        stap.Text = "pride"
        stap.Parent = fr
        pl = pley.MouseButton1Click:connect(function()
          mosicu.SoundId = "rbxassetid://" .. mbox.Text
          mosicu:Play()
        end)
        st = stap.MouseButton1Click:connect(function()
          mosicu:Stop()
        end)
        gotago = tool.Activated:connect(function()
          if mouse.Hit ~= nil and batting == false then
            nHuman:MoveTo(mouse.Hit.p)
          end
        end)
        local memevalue, memevalue2, liftvalue
        coroutine.resume(coroutine.create(function()
          while nib do
            swait()
            memevalue = -90 * (mosicu.PlaybackLoudness / 500)
            memevalue2 = -20 * (mosicu.PlaybackLoudness / 500)
            liftvalue = 0.75 * (mosicu.PlaybackLoudness / 500)
            mm.Scale = mm.Scale:lerp(Vector3.new(3 * (1 - mosicu.PlaybackLoudness / 900), 0.25 * (1 + mosicu.PlaybackLoudness / 30), 0.75 * (1 + mosicu.PlaybackLoudness / 1750)), 0.7)
            if mosicu.PlaybackLoudness > 1 and mosicu.PlaybackLoudness < 10000000 then
              lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(memevalue), rd(0), rd(0)), 0.5)
              lerpz(nRJ, "C0", RJC0 * cf(0, 0, liftvalue) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(nRS, "C0", RightShoulderC0 * cf(0, 0, 0) * ang(rd(memevalue), rd(0), rd(0)), 0.5)
              lerpz(nLS, "C0", LeftShoulderC0 * cf(0, 0, 0) * ang(rd(memevalue), rd(0), rd(0)), 0.5)
              lerpz(nRH, "C0", RightHipC0 * cf(0, 0, 0) * ang(rd(memevalue2), rd(0), rd(0)), 0.5)
              lerpz(nLH, "C0", LeftHipC0 * cf(0, 0, 0) * ang(rd(memevalue2), rd(0), rd(0)), 0.5)
            else
              lerpz(nRJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(nN, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(nRS, "C0", RightShoulderC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(nLS, "C0", LeftShoulderC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(nRH, "C0", RightHipC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
              lerpz(nLH, "C0", LeftHipC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.5)
            end
          end
        end))
        activu = false
        memeing = true
      end
    elseif memeing == true then
      gotago:Disconnect()
      pl:Disconnect()
      st:Disconnect()
      if plr.PlayerGui:FindFirstChild("simpleflips") then
        plr.PlayerGui:FindFirstChild("simpleflips"):Destroy()
      end
      if modz:FindFirstChild("Nooprah") then
        modz:FindFirstChild("Nooprah"):Destroy()
      end
      memeing = false
    end
  end
  function makecircle(cfrem, scalo)
    local mcir1 = Instance.new("Part")
    mcir1.Anchored = true
    mcir1.CanCollide = false
    mcir1.Size = Vector3.new(0.2, 0.2, 0.2)
    mcir1.Transparency = 1
    mcir1.CFrame = cfrem
    mcir1.Parent = modz
    game.Debris:AddItem(mcir1, 8)
    local d1 = Instance.new("Decal")
    d1.Texture = "rbxassetid://602615043"
    d1.Face = "Front"
    d1.Parent = mcir1
    local d2 = Instance.new("Decal")
    d2.Texture = "rbxassetid://602617463"
    d2.Face = "Back"
    d2.Parent = mcir1
    local bme = Instance.new("BlockMesh")
    bme.Parent = mcir1
    for _ = 1, 9 do
      swait()
      bme.Scale = bme.Scale:lerp(Vector3.new(35 * scalo, 35 * scalo, 0), 0.3)
    end
    coroutine.resume(coroutine.create(function()
      swait(15)
      for _ = 1, 12 do
        swait()
        d1.Transparency = d1.Transparency + 0.08
        d2.Transparency = d2.Transparency + 0.08
      end
      mcir1:Destroy()
    end))
    return mcir1
  end
  function spawnnoob(circlecf, noobcf, scalez, ragd)
    local aearae = makecircle(circlecf, scalez)
    local nananb
    if ragd then
      nananb = makenoob(aearae.CFrame * noobcf, scalez, true)
    elseif not ragd then
      nananb = makenoob(aearae.CFrame * noobcf, scalez, false)
    end
    return nananb
  end
  function tagexplode(partoz, magn, bombdelay)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy.Name == "Noob" and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude then
        coroutine.resume(coroutine.create(function()
          guy:FindFirstChild("HumanoidRootPart").whistl:Play()
          swait(bombdelay * 30)
          guy:FindFirstChild("HumanoidRootPart").tagbomb.Value = true
        end))
      end
    end
  end
  function hito(partoz, magn, dmg, debtim, bodyfdire, bodyrot)
    for _, guy in pairs(workspace:GetChildren()) do
      if guy:FindFirstChild("Humanoid") and guy:FindFirstChild("HumanoidRootPart") and guy ~= chr and magn > (guy:FindFirstChild("HumanoidRootPart").Position - partoz.Position).magnitude and guy:FindFirstChild("HumanoidRootPart"):FindFirstChild("alabo") == nil then
        do
          local humz = guy:FindFirstChild("Humanoid")
          local horp = guy:FindFirstChild("HumanoidRootPart")
          humz:TakeDamage(dmg)
          if guy:FindFirstChildOfClass("ForceField") then
            humz.Health = humz.Health - dmg
          end
          humz:SetStateEnabled(16, true)
          delay(debtim, function()
            humz:SetStateEnabled(16, true)
          end)
          local db = Instance.new("StringValue")
          db.Name = "alabo"
          db.Parent = horp
          delay(debtim, function()
            db:Destroy()
          end)
          local b = Instance.new("Part")
          nooutline(b)
          b.Size = Vector3.new(0.2, 0.2, 0.2)
          b.Transparency = 0.25
          b.Anchored = true
          b.CanCollide = false
          b.BrickColor = BrickColor.new("Institutional white")
          b.Locked = true
          b.CFrame = horp.CFrame * CFrame.new(rd2(-1, 1), rd2(-2, 2), rd2(-1, 1))
          b.Parent = modz
          local c = Instance.new("SpecialMesh")
          c.MeshType = "Sphere"
          c.Scale = Vector3.new(3.5, 3.5, 3.5)
          c.Parent = b
          game.Debris:AddItem(b, 1)
          local damageind = Instance.new("Model")
          damageind.Name = dmg
          damageind.Parent = workspace
          game.Debris:AddItem(damageind, 0.5 + dmg / 75)
          local awawaa = Instance.new("Humanoid")
          awawaa.MaxHealth = 0
          awawaa.Parent = damageind
          local dhed = Instance.new("Part")
          dhed.Name = "Head"
          dhed.Locked = true
          dhed.Size = Vector3.new(0.2, 0.2, 0.2)
          dhed.Position = horp.Position
          dhed.BrickColor = BrickColor.new("Bright red")
          dhed.CanCollide = false
          dhed.Parent = damageind
          local flo = Instance.new("BodyPosition")
          flo.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
          flo.P = 20000
          flo.D = 300
          flo.Position = dhed.Position + Vector3.new(0, 5, 0)
          flo.Parent = dhed
          local dasdada = Instance.new("CylinderMesh")
          dasdada.Parent = dhed
          coroutine.resume(coroutine.create(function()
            while dasdada do
              swait()
              dasdada.Scale = dasdada.Scale:lerp(Vector3.new(2.5 + dmg / 10, 1.25 + dmg / 35, 2.5 + dmg / 10), 0.4)
            end
          end))
          if bodyfdire then
            local boopyve = Instance.new("BodyVelocity")
            boopyve.MaxForce = Vector3.new(9999999999999, 9999999999999, 9999999999999)
            boopyve.P = 9999999999
            boopyve.Velocity = bodyfdire
            boopyve.Parent = horp
            game.Debris:AddItem(boopyve, debtim)
          end
          if bodyrot then
            local boopyro = Instance.new("BodyAngularVelocity")
            boopyro.MaxTorque = Vector3.new(999999, 999999, 999999)
            boopyro.P = math.huge
            boopyro.AngularVelocity = bodyrot
            boopyro.Parent = horp
            game.Debris:AddItem(boopyro, debtim)
          end
          local bet = Instance.new("Sound")
          bet.Pitch = rd2(9, 11) / 10
          bet.Volume = rd2(12, 14) / 10
          bet.SoundId = "rbxassetid://305526724"
          bet.Parent = b
          bet:Play()
          coroutine.resume(coroutine.create(function()
            for _ = 1, 5 do
              swait()
              b.Transparency = b.Transparency + 0.175
              c.Scale = c.Scale + Vector3.new(0.8 * dmg, 0.8 * dmg, 0.8 * dmg)
            end
          end))
        end
      end
    end
  end
  function cleannoobs()
    for _, nib in pairs(workspace:GetChildren()) do
      coroutine.resume(coroutine.create(function()
        if nib.Name == "Noob" then
          if nib:FindFirstChild("HumanoidRootPart") then
            local g = Instance.new("Part")
            g.CanCollide, g.Anchored = false, true
            g.Transparency = 1
            g.CFrame = nib:FindFirstChild("HumanoidRootPart").CFrame
            g.Parent = workspace
            game.Debris:AddItem(g, 3.5)
            local sou = Instance.new("Sound")
            sou.Pitch = math.random(7, 11) / 10
            sou.Volume = 0.8
            sou.SoundId = "rbxassetid://111124523"
            sou.Parent = g
            local pe = Instance.new("ParticleEmitter")
            pe.Acceleration = Vector3.new(0, 8, 0)
            pe.Lifetime = NumberRange.new(1, 1.5)
            pe.Rate = 0.005
            pe.RotSpeed = NumberRange.new(-30, 30)
            pe.Rotation = NumberRange.new(0, 360)
            pe.Size = NumberSequence.new({
              NumberSequenceKeypoint.new(0, 4.38, 0),
              NumberSequenceKeypoint.new(0.672, 4.14, 0),
              NumberSequenceKeypoint.new(1, 1.48, 0)
            })
            pe.Texture = "rbxassetid://244221440"
            pe.Transparency = NumberSequence.new({
              NumberSequenceKeypoint.new(0, 0, 0),
              NumberSequenceKeypoint.new(0.529, 0.3, 0),
              NumberSequenceKeypoint.new(1, 1, 1)
            })
            pe.ZOffset = 5
            pe.Enabled = true
            pe.VelocitySpread = 360
            pe.Parent = g
            swait(5)
            pe:Emit(6)
            sou:Play()
          end
          nib:Destroy()
        end
      end))
    end
  end
  function animo(yep)
    if anim then
      if yep == true then
        anim.Parent = human
        chr.Animate.Disabled = false
      elseif yep == false then
        chr.Animate.Disabled = true
        anim.Parent = nil
      end
    end
  end
  human.Died:connect(function()
    script:Destroy()
  end)
  mouse.KeyDown:connect(function(key)
    if key == "r" then
      test()
    end
    if key == "m" then
      lauf()
    end
    if key == "c" then
      ham()
    end
    if key == "v" then
      nommy()
    end
    if key == "x" then
      bat()
    end
    if key == "l" and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 3, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-100), 0, 0), 1, true)
    end
    if key == ";" and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 60, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 10, true)
    end
    if key == "k" and selected == true then
      spawnnoob(hrp.CFrame * cf(5, 3, -1) * ang(rd(90), 0, 0), cf(0, 0, 0) * ang(rd(-90), 0, 0), 1, false)
    end
    if key == "p" then
      cleannoobs()
    end
    if key == "[" then
      musicnoob()
    end
    if key == "z" then
      if selected == false or activu == true then
        return
      end
      if human.WalkSpeed == 25 then
        human.WalkSpeed = 70
        human.JumpPower = 75
      else
        human.WalkSpeed = 25
        human.JumpPower = 50
      end
    end
  end)
  tool.Equipped:connect(function()
    selected = true
  end)
  tool.Unequipped:connect(function()
    selected = false
  end)
  animo(false)
  human.WalkSpeed = 25
  sine = 0
  charge = 1
  cos = math.cos
  game:GetService("RunService").RenderStepped:connect(function()
    if ragged == false and activu == false then
      local checkfloor = Ray.new(hrp.Position, Vector3.new(0, -5, 0))
      local checkpart = workspace:FindPartOnRayWithIgnoreList(checkfloor, {chr}, false, false)
      local checkstate = human:GetState()
      if checkstate.Value == 13 then
        animpose = "Sitting"
      elseif hrp.Velocity.y > 1 and checkpart == nil then
        animpose = "Jumping"
      elseif hrp.Velocity.y < -1 and checkpart == nil then
        animpose = "Falling"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 2 then
        animpose = "Idle"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude < 40 then
        animpose = "Walking"
      elseif (hrp.Velocity * Vector3.new(1, 0, 1)).magnitude > 40 then
        animpose = "TooFast"
      end
      if animpose == "Idle" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0.05 * cos(sine / 40), 0, -0.05 - 0.05 * cos(sine / 20)) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(4 + 2 * cos(sine / 20)), rd(0), rd(0)), 0.3)
        if not ymmu then
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(8 * cos(sine / 80)), rd(0), rd(8 * cos(sine / 80))), 0.3)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        end
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(8 * cos(sine / 80)), rd(0), rd(8 * cos(sine / 80))), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0.05 + 0.05 * cos(sine / 20), 0.05 * cos(sine / 40)) * ang(rd(-5), rd(-5), rd(1)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0.05 + 0.05 * cos(sine / 20), -0.05 * cos(sine / 40)) * ang(rd(-5), rd(5), rd(1)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Walking" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.025 * cos(sine / 4)) * ang(rd(-5), math.sin(hrp.RotVelocity.Y / 30), math.sin(hrp.RotVelocity.Y / 5)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-2), rd(0), rd(0)), 0.3)
        if not ymmu then
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(5 * cos(sine / 5)), rd(-20 * cos(sine / 5)), rd(90 * cos(sine / 5))), 0.6)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        end
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5 * cos(sine / 5)), rd(-20 * cos(sine / 5)), rd(90 * cos(sine / 5))), 0.6)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(-1 - 1 * cos(sine / 60)), rd(-90 * cos(sine / 5))), 0.6)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(1 - 1 * cos(sine / 60)), rd(-90 * cos(sine / 5))), 0.6)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Jumping" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(-5), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-10), rd(0), rd(0)), 0.3)
        if not ymmu then
          lerpz(RS, "C0", RSC0 * cf(0, -0.5, 0.2) * ang(rd(-70), rd(-5), rd(-20)), 0.3)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        end
        lerpz(LS, "C0", LSC0 * cf(0, -0.5, 0.2) * ang(rd(-70), rd(5), rd(20)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-20), rd(-20), rd(-20)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-20), rd(20), rd(15)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Falling" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(10), rd(0), rd(0)), 0.3)
        if not ymmu then
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0.6) * ang(rd(-150), rd(-5), rd(-20)), 0.3)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        end
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0.6) * ang(rd(-150), rd(5), rd(20)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-15), rd(-15), rd(-20)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-15), rd(15), rd(15)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "TooFast" then
        sine = sine + charge
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0.35 * cos(sine / 2)) * ang(rd(-20), math.sin(hrp.RotVelocity.Y / 20), math.sin(hrp.RotVelocity.Y / 2)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(-15 - 5 * cos(sine / 2)), rd(0), rd(0)), 0.3)
        if not ymmu then
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(5 * cos(sine / 3)), rd(-120 * cos(sine / 3)), rd(110 * cos(sine / 3))), 0.6)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        end
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(-5 * cos(sine / 3)), rd(-120 * cos(sine / 3)), rd(110 * cos(sine / 3))), 0.6)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(-1 - 1 * cos(sine / 60)), rd(-110 * cos(sine / 3))), 0.6)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(-1 - 1 * cos(sine / 60)), rd(1 - 1 * cos(sine / 60)), rd(-110 * cos(sine / 3))), 0.6)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
      if animpose == "Sitting" then
        lerpz(RJ, "C0", RJC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(N, "C0", NC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        if not ymmu then
          lerpz(RS, "C0", RSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
          lerpz(RS, "C1", RSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        end
        lerpz(LS, "C0", LSC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.3)
        lerpz(LS, "C1", LSC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(RH, "C0", RHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(90)), 0.3)
        lerpz(RH, "C1", RHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
        lerpz(LH, "C0", LHC0 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(-90)), 0.3)
        lerpz(LH, "C1", LHC1 * cf(0, 0, 0) * ang(rd(0), rd(0), rd(0)), 0.3)
      end
    end
  end)