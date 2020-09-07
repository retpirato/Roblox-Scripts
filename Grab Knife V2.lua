--RIP V4 
wait()
me = game.Players.LocalPlayer
char = me.Character
selected = false
attacking = false
hurt = false
grabbed = nil
mode = "kill"
bloodcolors = {"Bright red", "Really red", "Crimson"}
enabled = true
enabled2 = true
 
local breaksound = Instance.new("Sound")
breaksound.SoundId = "http://www.roblox.com/asset/?id=2801263"
breaksound.Parent = game.Workspace
breaksound.Volume = 0.8
   
local killsound = Instance.new("Sound")
killsound.SoundId = "http://www.roblox.com/asset?id=16950449"
killsound.Pitch = 0.65
killsound.Parent = game.Workspace
 
local drainsound = Instance.new("Sound")
drainsound.SoundId = "http://www.roblox.com/asset/?id=2785493"
drainsound.Pitch = 0.7
 
 
function prop(part, parent, collide, tran, ref, x, y, z, color, anchor, form)
part.Parent = parent
part.formFactor = form
part.CanCollide = collide
part.Transparency = tran
part.Reflectance = ref
part.Size = Vector3.new(x,y,z)
part.BrickColor = BrickColor.new(color)
part.TopSurface = 0
part.BottomSurface = 0
part.Anchored = anchor
part.Locked = true
part:BreakJoints()
end
 
function weld(w, p, p1, a, b, c, x, y, z)
w.Parent = p
w.Part0 = p
w.Part1 = p1
w.C1 = CFrame.fromEulerAnglesXYZ(a,b,c) * CFrame.new(x,y,z)
end
 
function mesh(mesh, parent, x, y, z, type)
mesh.Parent = parent
mesh.Scale = Vector3.new(x, y, z)
mesh.MeshType = type
end
 
function remgui()
    for _,v in pairs(me.PlayerGui:GetChildren()) do
        if v.Name == "Modeshow" then
            v:remove()
        end
    end
end
 
function inform(text,delay)
    remgui()
    local sc = Instance.new("ScreenGui")
    sc.Parent = me.PlayerGui
    sc.Name = "Modeshow"
    local bak = Instance.new("Frame",sc)
    bak.BackgroundColor3 = Color3.new(1,1,1)
    bak.Size = UDim2.new(0.94,0,0.1,0)
    bak.Position = UDim2.new(0.03,0,0.037,0)
    bak.BorderSizePixel = 0
    local gi = Instance.new("TextLabel",sc)
    gi.Size = UDim2.new(0.92,0,0.09,0)
    gi.BackgroundColor3 = Color3.new(0,0,0)
    gi.Position = UDim2.new(0.04,0,0.042,0)
    gi.TextColor3 = Color3.new(1,1,1)
    gi.FontSize = "Size14"
    gi.Text = text
    coroutine.resume(coroutine.create(function()
        wait(delay)
        sc:remove()
    end))
end
 
if char:findFirstChild("Bricks",true) then
    char:findFirstChild("Bricks",true):remove()
end
 
bricks = Instance.new("Model",me.Character)
bricks.Name = "Bricks"
 
--Parts and shit
 
rarm = char:findFirstChild("Right Arm")
larm = char:findFirstChild("Left Arm")
lleg = char:findFirstChild("Left Leg")
torso = char:findFirstChild("Torso")
hum = char:findFirstChild("Humanoid")
rleg = char:findFirstChild("Right Leg")
 
righthold = Instance.new("Part")
prop(righthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Black", false, "Custom")
w11 = Instance.new("Weld")
weld(w11, rarm, righthold, 0, 0, 0, 0, 1, 0)
 
lefthold = Instance.new("Part")
prop(lefthold, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Black", false, "Custom")
w12 = Instance.new("Weld")
weld(w12, larm, lefthold, 0, 0, 0, 0, 1, 0)
 
hold = Instance.new("Part")
prop(hold, bricks, false, 0, 0, 0.2, 0.3, 0.3, "Black", false, "Custom")
oh = Instance.new("Weld")
weld(oh, torso, hold, -math.pi/-0.86, 1.5, math.rad(0), -0.35, -0.4, -0.5)
 
knife = Instance.new("Part")
knife.Material = "Marble"
prop(knife, bricks, false, 0, 0, 0.25, 1.1, 0.3, "Black", false, "Custom")
orr = Instance.new("Weld")
weld(orr, hold, knife, 0, 0, 0, 0, 0.7, 0)
ar = Instance.new("Weld")
weld(ar, lefthold, nil, math.pi/2, 0, math.pi, 0, 0, 0)
 
blade = Instance.new("Part")
blade.Material = "Neon"
prop(blade, bricks, false, 0, 0, 0.1, 2.5, 0.25, "Institutional white", false, "Custom")
Instance.new("BlockMesh",blade).Scale = Vector3.new(0.3,1,1)
w2 = Instance.new("Weld")
weld(w2, knife, blade, 0, 0, 0, 0, -0.65, 0)
 
blade2 = Instance.new("Part")
blade2.Material = "Neon"
prop(blade2, bricks, false, 0, 0, 0.1, 0.4, 0.25, "Institutional white", false, "Custom")
local mew = Instance.new("SpecialMesh",blade2)
mew.MeshType = "Wedge"
mew.Scale = Vector3.new(0.3,1,1)
w3 = Instance.new("Weld")
weld(w3, blade, blade2, 0, 0, 0, 0, -1.45, 0)
 
 
rb = Instance.new("Part")
prop(rb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w13 = Instance.new("Weld")
weld(w13, torso, rb, 0, 0, 0, -1.5, -0.5, 0)
 
lb = Instance.new("Part")
prop(lb, bricks, false, 1, 0, 0.1, 0.1, 0.1, "Bright red", false, "Custom")
w14 = Instance.new("Weld")
weld(w14, torso, lb, 0, 0, 0, 1.5, -0.5, 0)
 
rw = Instance.new("Weld")
weld(rw, rb, nil, 0, 0, 0, 0, 0.5, 0)
 
lw = Instance.new("Weld")
weld(lw, lb, nil, 0, 0, 0, 0, 0.5, 0)
 
grabweld = nil
platlol = nil
lolhum = nil
 
function touch(h)
    if hurt then
        if grabbed == nil then
            local hu = h.Parent:findFirstChild("Humanoid")
            local head = h.Parent:findFirstChild("Head")
            local torz = h.Parent:findFirstChild("Torso")
            if hu ~= nil and head ~= nil and torz ~= nil and h.Parent.Name ~= name then
                if hu.Health > 0 then
                grabbed = torz
                hu.PlatformStand = true
                local w = Instance.new("Weld")
                weld(w,righthold,grabbed,math.pi/2,0.2,0,0.7,-0.9,-0.6)
                grabweld = w
                lolhum = hu
                local lolxd = true
                platlol = lolxd
                hu.Changed:connect(function(prop)
                    if prop == "PlatformStand" and platlol then
                        hu.PlatformStand = true
                    end
                end)
                end
            end
        end
    end
end
 
righthold.Touched:connect(touch)
lefthold.Touched:connect(touch)
 
function bleed(part,po)
    local lol1 = math.random(5,30)/100
    local lol2 = math.random(5,30)/100
    local lol3 = math.random(5,30)/100
    local lol4 = math.random(1,#bloodcolors)
    local p = Instance.new("Part")
    prop(p,part.Parent,false,0,0,lol1,lol2,lol3,bloodcolors[lol4],false,"Custom")
    p.CFrame = part.CFrame * CFrame.new(math.random(-5,5)/10,po,math.random(-5,5)/10)
    p.Velocity = Vector3.new(math.random(-25,25),math.random(-25,25),math.random(-25,25))
    p.RotVelocity = Vector3.new(math.random(-400,400)/10,math.random(-400,400)/10,math.random(-400,400)/10)
    p.CanCollide = true
    coroutine.resume(coroutine.create(function()
        wait(3)
        p:remove()
    end))
end
 
h = Instance.new("HopperBin",me.Backpack)
 
h.Name = "Grab"
 
script.Parent = h
 
bin = h
 
function select(mouse)
    orr.Part1 = nil
    ar.Part1 = knife
    mouse.Button1Down:connect(function()
        if attacking == false then
            attacking = true
            lw.Part1 = larm
            rw.Part1 = rarm
            hurt = true
            for i=1, 8 do
                rw.C0 = rw.C0 * CFrame.new(-0.03,0,-0.08) * CFrame.fromEulerAnglesXYZ(0.18,0.04,0)
                lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
                wait()
            end
            wait(1)
            hurt = false
            if grabbed == nil then
                for i=1, 4 do
                    rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                    lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
                    wait()
                end
                lw.C0 = CFrame.new(0,0,0)
                rw.C0 = CFrame.new(0,0,0)
                lw.Part1 = nil
                rw.Part1 = nil
                attacking = false
            end
        elseif hurt == false and grabbed ~= nil and mode == "drop" then
            enabled2 = true
            grabweld:remove()
            grabweld = nil
            platlol = false
            grabbed = nil
            lolhum.PlatformStand = false
            lolhum = nil
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
                wait()
            end
            lw.C0 = CFrame.new(0,0,0)
            rw.C0 = CFrame.new(0,0,0)
            lw.Part1 = nil
            rw.Part1 = nil
            attacking = false
            platlol = nil
           
        elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "para" and enabled2 == true then
            enabled2 = false
            enabled = false
           
            breaksound.Parent = grabbed
            breaksound:Play()
           
            for i=1, 5 do
                lw.C0 = lw.C0 * CFrame.new(0.02,0.15,-0.02) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
                wait()
            end
            local duh = grabbed
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)               
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            bleed(duh,1)
            wait(0.12)
            for i=1, 5 do
                lw.C0 = lw.C0 * CFrame.new(-0.02,-0.15,0.02) * CFrame.fromEulerAnglesXYZ(0.05,-0,0.03)
                wait()
            end
           
           
            if grabbed.Parent:findFirstChild("HumanoidRootPart",true) then
                grabbed.Parent.HumanoidRootPart:Remove()
            end
            grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health / 1.5
           
        elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "drain" and enabled == true then
                enabled = false
                enabled2 = true
               
                for i=1, 2 do
                    lw.C0 = lw.C0 * CFrame.new(0.06,0,-0.06) * CFrame.fromEulerAnglesXYZ(0.15,-0.11,-0.05)
                    wait()
                end
 
                while char.Humanoid.Health == char.Humanoid.MaxHealth do
                    bleed(grabbed, 1)
                    char.Humanoid.Health = char.Humanoid.Health + 1
                    grabbed.Parent.Humanoid.Health = grabbed.Parent.Humanoid.Health - 1
                    wait(0.0335)
                end
               
                for i=1, 1 do
                    lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
                    wait()
                end
                enabled = true
               
               
        elseif hurt == false and grabbed ~= nil and grabweld ~= nil and mode == "throw" then
            enabled2 = true
            grabweld:remove()
            grabweld = nil
            local bf = Instance.new("BodyForce",grabbed)
            bf.force = torso.CFrame.lookVector * 4000
            bf.force = bf.force + Vector3.new(0,1500,0)
            coroutine.resume(coroutine.create(function()
                wait(0.12)
                bf:remove()
            end))
            for i=1, 6 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.35,0,0)
                lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.18,0,0)
                wait()
            end
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(-0.47,0,0)
                lw.C0 = lw.C0 * CFrame.new(0,0,0) * CFrame.fromEulerAnglesXYZ(0.2,0,0)
                wait()
            end
            wait(0.2)
            platlol = false
            grabbed = nil
            lolhum.PlatformStand = false
            lolhum = nil
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.3,0.2,0)
                wait()
            end
            lw.C0 = CFrame.new(0,0,0)
            rw.C0 = CFrame.new(0,0,0)
            lw.Part1 = nil
            rw.Part1 = nil
            attacking = false
            platlol = nil
        elseif hurt == false and grabbed ~= nil and lolhum ~= nil and grabweld ~= nil and mode == "kill" then
            enabled2 = true
            killsound.Parent = grabbed
            killsound:Play()
            for i=1, 5 do
                lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
                wait()
            end
            local ne = grabbed:findFirstChild("Neck")
            coroutine.resume(coroutine.create(function()
                local duh = grabbed
                local duh2 = grabbed.Parent.Head
                local lolas = lolhum
                duh.RotVelocity = Vector3.new(math.random(-20,20),math.random(-20,20),math.random(-20,20))
                for i=1, 75 do
                    wait()
                    local hm = math.random(1,15)
                    pcall(function()
                        if hm == 1 then
                            duh2.Sound.Pitch = math.random(90,110)/100
                            duh2.Sound:play()
                            script.Parent.Splat:Play();
                        end
                    end)
 
                    if hm > 0 and hm < 4 then
 
                        bleed(duh,1)
                        bleed(duh2,-0.1)
                        bleed(duh,1)
                        bleed(duh2,-0.1)
                        bleed(duh,1)
                        bleed(duh,1)
                        bleed(duh,1)                                       
                    end
                end
                wait(1.2)
               
                lolas.Health = 0
                for i=1, 85 do
                    wait()
                    local hm = math.random(1,9)
                    pcall(function()
                        if hm == 1 then
                            duh2.Sound.Pitch = math.random(90,110)/100
                            duh2.Sound:play()
                        end
                    end)
                    if hm > 0 and hm < 3 then
                        bleed(duh,1)
                        bleed(duh2,-0.5)
                    end
                end
            end))
            for i=1, 3 do
                lw.C0 = lw.C0 * CFrame.new(0.02,0.12,0.1) * CFrame.fromEulerAnglesXYZ(-0.05,0,-0.03)
                if ne ~= nil then
                    grabbed.Neck.C0 = grabbed.Neck.C0 * CFrame.fromEulerAnglesXYZ(-0.35,0,0)
                end
                wait()
            end
            grabweld:remove()
            grabweld = nil
            for i=1, 4 do
                lw.C0 = lw.C0 * CFrame.new(-0.04,-0.24,-0.2) * CFrame.fromEulerAnglesXYZ(0.1,0,0.06)
                wait()
            end
            for i=1, 4 do
                rw.C0 = rw.C0 * CFrame.new(0.06,0,0.16) * CFrame.fromEulerAnglesXYZ(-0.36,-0.08,0)
                lw.C0 = lw.C0 * CFrame.new(-0.12,0,0.12) * CFrame.fromEulerAnglesXYZ(-0.3,0.22,0.05)
                wait()
            end
            lw.C0 = CFrame.new(0,0,0)
            rw.C0 = CFrame.new(0,0,0)
            lw.Part1 = nil
            rw.Part1 = nil
            platlol = false
            grabbed = nil
            lolhum = nil
            attacking = false
            platlol = nil
        end
    end)
    mouse.KeyDown:connect(function(kai)
        key = kai:lower()
        if key == "q" then
            mode = "drop"
            inform("Release",1)
        elseif key == "e" then
            mode = "throw"
            inform("Push",1)
        elseif key == "f" then
            mode = "kill"
            inform("Kill",1)
        elseif key == "c" then
            mode = "para"
            inform("Paralyze",1)
        elseif key == "x" then
            mode = "drain"
            inform("Drain",1)
        end
    end)
end
 
function desel()
    repeat wait() until attacking == false
    orr.Part1 = knife
    ar.Part1 = nil
end
 
bin.Selected:connect(select)
bin.Deselected:connect(desel)
 
char.Humanoid.Died:connect(function()
    pcall(function()
        grabweld:remove()
        grabweld = nil
        grabbed = nil
        platlol = false
        platlol = nil
    end)
end)
 
inform("Grab Knife 2 script loaded (okay there i released it calm the fuck down)",3)