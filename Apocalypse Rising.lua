main = Instance.new("ScreenGui",game.CoreGui)
tab = Instance.new("Frame",main)
xout = Instance.new("TextButton",tab)
minus = Instance.new("TextButton",tab)
logo = Instance.new("ImageLabel",tab)
creds = Instance.new("TextLabel",tab)
frame = Instance.new("Frame",tab)
 
lcl = Instance.new("TextButton",frame)
others = Instance.new("TextButton",frame)
serv = Instance.new("TextButton",frame)
spwn = Instance.new("TextButton",frame)
 
lclf = Instance.new("Frame",frame)
othersf = Instance.new("Frame",frame)
servf = Instance.new("Frame",frame)
spwnf = Instance.new("Frame",frame)
 
tpbods = Instance.new("TextButton",lclf)
tpcrates = Instance.new("TextButton",lclf)
infstam = Instance.new("TextButton",lclf)
infammo = Instance.new("TextButton",lclf)
infht = Instance.new("TextButton",lclf)
 
plrname1 = Instance.new("TextBox",othersf)
staties = Instance.new("TextBox",othersf)
kickgroups = Instance.new("TextButton",othersf)
spect = Instance.new("TextButton",othersf)
infstat = Instance.new("TextButton",othersf)
giveskins = Instance.new("TextButton",othersf)
 
plrname2 = Instance.new("TextBox",servf)
msgspam = Instance.new("TextButton",servf)
killzombs = Instance.new("TextButton",servf)
 
itemsp = Instance.new("TextBox",spwnf)
val = Instance.new("TextBox",spwnf)
spwnitem = Instance.new("TextButton",spwnf)
vtab = Instance.new("TextLabel",spwnf)
vehs = Instance.new("ScrollingFrame",spwnf)
destcar = Instance.new("TextButton",spwnf)
godcar = Instance.new("TextButton",spwnf)
speedcar = Instance.new("TextButton",spwnf)
bringcar = Instance.new("TextButton",spwnf)
sspwn = Instance.new("TextButton",spwnf)
 
 
 
--User Interface--
 
tab.AnchorPoint = Vector2.new(0.5,0.5)
tab.Position = UDim2.new(0.5,0,0.3,0)
tab.Size = UDim2.new(0,450,0,40)
tab.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
tab.BorderSizePixel = 0
tab.Active = true
tab.Draggable = true
 
xout.Position = UDim2.new(0,430,0,0)
xout.Size = UDim2.new(0,20,0,20)
xout.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
xout.BorderSizePixel = 0
xout.TextColor3 = Color3.new(255/255,255/255,255/255)
xout.TextSize = 15
xout.Font = ("ArialBold")
xout.Text = ("X")
 
minus.Position = UDim2.new(0,410,0,0)
minus.Size = UDim2.new(0,20,0,20)
minus.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
minus.BorderSizePixel = 0
minus.TextColor3 = Color3.new(255/255,255/255,255/255)
minus.TextSize = 15
minus.Font = ("ArialBold")
minus.Text = ("-")
 
logo.AnchorPoint = Vector2.new(0.5,0)
logo.Position = UDim2.new(0.5,0,0,0)
logo.Size = UDim2.new(0,80,0,30)
logo.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
logo.BorderSizePixel = 0
logo.Image = ("rbxassetid://2538089816") --needs new logo(?)
 
creds.AnchorPoint = Vector2.new(0.5,0)
creds.Position = UDim2.new(0.5,0,0,23)
creds.Size = UDim2.new(0,20,0,20)
creds.BackgroundTransparency = 1
creds.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
creds.BorderSizePixel = 0
creds.TextColor3 = Color3.new(255/255,255/255,255/255)
creds.TextSize = 10
creds.Font = ("ArialBold")
creds.Text = ("by RelentlessRaptor")
 
frame.Position = UDim2.new(0,0,0,40)
frame.Size = UDim2.new(0,450,0,350)
frame.BackgroundColor3 = Color3.new(0/255,90/255,115/255)
frame.BorderSizePixel = 0
 
 
 
lcl.Position = UDim2.new(0,0,0,10)
lcl.Size = UDim2.new(0,100,0,25)
lcl.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
lcl.BorderSizePixel = 0
lcl.TextColor3 = Color3.new(255/255,255/255,255/255)
lcl.TextSize = 13
lcl.Font = ("ArialBold")
lcl.Text = ("Local")
 
others.Position = UDim2.new(0,0,0,45)
others.Size = UDim2.new(0,100,0,25)
others.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
others.BorderSizePixel = 0
others.TextColor3 = Color3.new(255/255,255/255,255/255)
others.TextSize = 13
others.Font = ("ArialBold")
others.Text = ("Players")
 
serv.Position = UDim2.new(0,0,0,80)
serv.Size = UDim2.new(0,100,0,25)
serv.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
serv.BorderSizePixel = 0
serv.TextColor3 = Color3.new(255/255,255/255,255/255)
serv.TextSize = 13
serv.Font = ("ArialBold")
serv.Text = ("Server")
 
spwn.Position = UDim2.new(0,0,0,115)
spwn.Size = UDim2.new(0,100,0,25)
spwn.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
spwn.BorderSizePixel = 0
spwn.TextColor3 = Color3.new(255/255,255/255,255/255)
spwn.TextSize = 13
spwn.Font = ("ArialBold")
spwn.Text = ("Spawning")
 
 
 
lclf.Position = UDim2.new(0,110,0,10)
lclf.Size = UDim2.new(0,330,0,330)
lclf.BackgroundTransparency = 1
lclf.BorderSizePixel = 0
 
current = lclf
 
othersf.Position = UDim2.new(5,110,0,10)
othersf.Size = UDim2.new(0,330,0,330)
othersf.BackgroundTransparency = 1
othersf.BorderSizePixel = 0
 
servf.Position = UDim2.new(5,110,0,10)
servf.Size = UDim2.new(0,330,0,330)
servf.BackgroundTransparency = 1
servf.BorderSizePixel = 0
 
spwnf.Position = UDim2.new(5,110,0,10)
spwnf.Size = UDim2.new(0,330,0,330)
spwnf.BackgroundTransparency = 1
spwnf.BorderSizePixel = 0
 
 
 
tpbods.Position = UDim2.new(0,10,0,10)
tpbods.Size = UDim2.new(0,150,0,35)
tpbods.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
tpbods.BorderSizePixel = 0
tpbods.TextColor3 = Color3.new(255/255,255/255,255/255)
tpbods.TextSize = 15
tpbods.Font = ("ArialBold")
tpbods.Text = ("TP Bodies")
 
tpcrates.Position = UDim2.new(0,170,0,10)
tpcrates.Size = UDim2.new(0,150,0,35)
tpcrates.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
tpcrates.BorderSizePixel = 0
tpcrates.TextColor3 = Color3.new(255/255,255/255,255/255)
tpcrates.TextSize = 15
tpcrates.Font = ("ArialBold")
tpcrates.Text = ("TP Crates")
 
infstam.Position = UDim2.new(0,10,0,55)
infstam.Size = UDim2.new(0,150,0,35)
infstam.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
infstam.BorderSizePixel = 0
infstam.TextColor3 = Color3.new(255/255,255/255,255/255)
infstam.TextSize = 13
infstam.Font = ("ArialBold")
infstam.Text = ("Enable Infinite Stamina")
 
infammo.Position = UDim2.new(0,170,0,55)
infammo.Size = UDim2.new(0,150,0,35)
infammo.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
infammo.BorderSizePixel = 0
infammo.TextColor3 = Color3.new(255/255,255/255,255/255)
infammo.TextSize = 13
infammo.Font = ("ArialBold")
infammo.Text = ("Enable Infinite Ammo")
 
infht.Position = UDim2.new(0,10,0,100)
infht.Size = UDim2.new(0,150,0,35)
infht.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
infht.BorderSizePixel = 0
infht.TextColor3 = Color3.new(255/255,255/255,255/255)
infht.TextSize = 10
infht.Font = ("ArialBold")
infht.Text = ("Enable Infinite Hunger / Thirst")
 
 
---------------------made by !!!RelentlessRaptor#5709
 
plrname1.AnchorPoint = Vector2.new(0.5,0.5)
plrname1.Position = UDim2.new(0.3,0,0,20)
plrname1.Size = UDim2.new(0,125,0,25)
plrname1.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
plrname1.BorderSizePixel = 0
plrname1.TextColor3 = Color3.new(255/255,255/255,255/255)
plrname1.TextSize = 15
plrname1.Font = ("ArialBold")
plrname1.Text = ("Player")
plrname1.TextScaled = true
 
staties.AnchorPoint = Vector2.new(0.5,0.5)
staties.Position = UDim2.new(0.6,0,0,20)
staties.Size = UDim2.new(0,35,0,25)
staties.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
staties.BorderSizePixel = 0
staties.TextColor3 = Color3.new(255/255,255/255,255/255)
staties.TextSize = 12
staties.Font = ("ArialBold")
staties.Text = ("Stats")
 
kickgroups.Position = UDim2.new(0,10,0,50)
kickgroups.Size = UDim2.new(0,150,0,35)
kickgroups.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
kickgroups.BorderSizePixel = 0
kickgroups.TextColor3 = Color3.new(255/255,255/255,255/255)
kickgroups.TextSize = 15
kickgroups.Font = ("ArialBold")
kickgroups.Text = ("Kick All Groups")
 
spect.Position = UDim2.new(0,170,0,50)
spect.Size = UDim2.new(0,150,0,35)
spect.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
spect.BorderSizePixel = 0
spect.TextColor3 = Color3.new(255/255,255/255,255/255)
spect.TextSize = 15
spect.Font = ("ArialBold")
spect.Text = ("Spectate Player")
 
infstat.Position = UDim2.new(0,10,0,95)
infstat.Size = UDim2.new(0,150,0,35)
infstat.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
infstat.BorderSizePixel = 0
infstat.TextColor3 = Color3.new(255/255,255/255,255/255)
infstat.TextSize = 15
infstat.Font = ("ArialBold")
infstat.Text = ("Set Player Stats")
 
giveskins.Position = UDim2.new(0,170,0,95)
giveskins.Size = UDim2.new(0,150,0,35)
giveskins.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
giveskins.BorderSizePixel = 0
giveskins.TextColor3 = Color3.new(255/255,255/255,255/255)
giveskins.TextSize = 15
giveskins.Font = ("ArialBold")
giveskins.Text = ("Give Skins")
 
 
--------------------
 
plrname2.AnchorPoint = Vector2.new(0.5,0.5)
plrname2.Position = UDim2.new(0.5,0,0,20)
plrname2.Size = UDim2.new(0,125,0,25)
plrname2.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
plrname2.BorderSizePixel = 0
plrname2.TextColor3 = Color3.new(255/255,255/255,255/255)
plrname2.TextSize = 15
plrname2.Font = ("ArialBold")
plrname2.Text = ("Message")
plrname2.TextScaled = true
 
msgspam.Position = UDim2.new(0,10,0,50)
msgspam.Size = UDim2.new(0,150,0,35)
msgspam.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
msgspam.BorderSizePixel = 0
msgspam.TextColor3 = Color3.new(255/255,255/255,255/255)
msgspam.TextSize = 15
msgspam.Font = ("ArialBold")
msgspam.Text = ("Enable Chat Spam")
 
killzombs.Position = UDim2.new(0,170,0,50)
killzombs.Size = UDim2.new(0,150,0,35)
killzombs.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
killzombs.BorderSizePixel = 0
killzombs.TextColor3 = Color3.new(255/255,255/255,255/255)
killzombs.TextSize = 15
killzombs.Font = ("ArialBold")
killzombs.Text = ("Kill All Zombies")
 
 
------------------------------
 
itemsp.AnchorPoint = Vector2.new(0.5,0.5)
itemsp.Position = UDim2.new(0.4,0,0,20)
itemsp.Size = UDim2.new(0,80,0,25)
itemsp.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
itemsp.BorderSizePixel = 0
itemsp.TextColor3 = Color3.new(255/255,255/255,255/255)
itemsp.TextSize = 15
itemsp.Font = ("ArialBold")
itemsp.Text = ("Item name / Speed")
itemsp.TextScaled = true
 
val.AnchorPoint = Vector2.new(0.5,0.5)
val.Position = UDim2.new(0.6,0,0,20)
val.Size = UDim2.new(0,25,0,25)
val.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
val.BorderSizePixel = 0
val.TextColor3 = Color3.new(255/255,255/255,255/255)
val.TextSize = 12
val.Font = ("ArialBold")
val.Text = ("1")
 
spwnitem.Position = UDim2.new(0,10,0,50)
spwnitem.Size = UDim2.new(0,150,0,35)
spwnitem.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
spwnitem.BorderSizePixel = 0
spwnitem.TextColor3 = Color3.new(255/255,255/255,255/255)
spwnitem.TextSize = 15
spwnitem.Font = ("ArialBold")
spwnitem.Text = ("Spawn Item")
 
vtab.Position = UDim2.new(0,340,0,-10)
vtab.Size = UDim2.new(0,175,0,40)
vtab.BackgroundColor3 = Color3.new(0/255,180/255,225/255)
vtab.BorderSizePixel = 0
vtab.TextColor3 = Color3.new(0,0,0)
vtab.TextSize = 15
vtab.Font = ("ArialBold")
vtab.Text = ("Vehicle: None")
 
vehs.Position = UDim2.new(0,340,0,30)
vehs.Size = UDim2.new(0,175,0,310)
vehs.BackgroundColor3 = Color3.new(0/255,130/255,155/255)
vehs.BorderSizePixel = 0
vehs.CanvasSize = UDim2.new(0,0,3,0)
 
destcar.Position = UDim2.new(0,170,0,50)
destcar.Size = UDim2.new(0,150,0,35)
destcar.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
destcar.BorderSizePixel = 0
destcar.TextColor3 = Color3.new(255/255,255/255,255/255)
destcar.TextSize = 15
destcar.Font = ("ArialBold")
destcar.Text = ("Destroy Car")
 
godcar.Position = UDim2.new(0,10,0,95)
godcar.Size = UDim2.new(0,150,0,35)
godcar.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
godcar.BorderSizePixel = 0
godcar.TextColor3 = Color3.new(255/255,255/255,255/255)
godcar.TextSize = 15
godcar.Font = ("ArialBold")
godcar.Text = ("God Car")
 
speedcar.Position = UDim2.new(0,170,0,95)
speedcar.Size = UDim2.new(0,150,0,35)
speedcar.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
speedcar.BorderSizePixel = 0
speedcar.TextColor3 = Color3.new(255/255,255/255,255/255)
speedcar.TextSize = 15
speedcar.Font = ("ArialBold")
speedcar.Text = ("Set Car Speed")
 
bringcar.Position = UDim2.new(0,10,0,140)
bringcar.Size = UDim2.new(0,150,0,35)
bringcar.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
bringcar.BorderSizePixel = 0
bringcar.TextColor3 = Color3.new(255/255,255/255,255/255)
bringcar.TextSize = 15
bringcar.Font = ("ArialBold")
bringcar.Text = ("Bring Car")
 
sspwn.Position = UDim2.new(0,170,0,140)
sspwn.Size = UDim2.new(0,150,0,35)
sspwn.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
sspwn.BorderSizePixel = 0
sspwn.TextColor3 = Color3.new(255/255,255/255,255/255)
sspwn.TextSize = 15
sspwn.Font = ("ArialBold")
sspwn.Text = ("Server Side Spawn")
 
 
 
--Buttons--
 
function  getplr(thing)
    for _, v in pairs(game.Players:GetPlayers()) do
        if string.find(string.lower(v.Name),string.lower(thing)) then
            return v
        end
    end
end
function changeval(value,amount)
    workspace.Remote.GroupLeader:FireServer({Name = amount}, {member1 = value} , nil)
end
function getitem(thing)
    for _, v in pairs(game.Lighting.LootDrops:GetChildren()) do
        if string.find(string.lower(v.Name),string.lower(thing)) then
            return v
        end
    end
end
 
 
lcl.MouseButton1Up:connect(function()
    current.Position = UDim2.new(5,0,0,0)
    lclf.Position = UDim2.new(0,110,0,10)
    current = lclf
end)
 
others.MouseButton1Up:connect(function()
    current.Position = UDim2.new(5,0,0,0)
    othersf.Position = UDim2.new(0,110,0,10)
    current = othersf
end)
 
serv.MouseButton1Up:connect(function()
    current.Position = UDim2.new(5,0,0,0)
    servf.Position = UDim2.new(0,110,0,10)
    current = servf
end)
 
spwn.MouseButton1Up:connect(function()
    current.Position = UDim2.new(5,0,0,0)
    spwnf.Position = UDim2.new(0,110,0,10)
    current = spwnf
end)
 
 
xout.MouseButton1Up:connect(function()
    main:Destroy()
end)
minused = false
minus.MouseButton1Up:connect(function()
    if minused == false then
        minused = true
        frame.Position = UDim2.new(30,0,0,40)
    else
        minused = false
        frame.Position = UDim2.new(0,0,0,40)
    end
end)
 
---------------
tpbods.MouseButton1Up:connect(function()
    for _, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == ("Corpse") then
            v:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-15,15),-2,math.random(-15,15)))
        end
    end
end)
tpcrates.MouseButton1Up:connect(function()
    for _, v in pairs(game.Workspace:GetChildren()) do
        if v.Name == ("LargeCrateOpen") or v.Name == ("SmallCrateOpen") then
            v:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-15,15),-2,math.random(-15,15)))
            --made by !!!RelentlessRaptor#5709
        end
    end
end)
 
infenabl = false
infstam.MouseButton1Up:connect(function()
    if infenabl == false then
        infenabl = true
        infstam.Text = ("Disable Infinite Stamina")
    else
        infenabl = false
        infstam.Text = ("Enable Infinite Stamina")
    end
    while infenabl == true do
        wait()
        game.Players.LocalPlayer.Backpack.GlobalFunctions.Stamina.Value = 100
    end
end)
 
infammenabl = false
infammo.MouseButton1Up:connect(function()--i see u looking at my infammo u fat piece of cheese dont touch it
    if infammenabl == false then
        infammenabl = true
        infammo.Text = ("Disable Infinite Ammo")
    else
        infammenabl = false
        infammo.Text = ("Enable Infinite Ammo")
        wait()
        for _, v in pairs(game.Players.LocalPlayer.playerstats.slots:GetDescendants()) do
            if v.Name == ("Clip") then
                for _, t in pairs(game.Lighting.LootDrops:GetChildren()) do
                    if t:FindFirstChild("ObjectID") then
                        if t.ObjectID.Value == v.Parent.Parent.ObjectID.Value then
                            print("aids")
                            changeval(v,t.ObjectID.Clip.Value)
                            changeval(v.MaxClip,t.ObjectID.Clip.MaxClip.Value)
                        end
                    end
                end
            end
        end
    end
    while infammenabl == true do
        wait()
        for _, v in pairs(game.Players.LocalPlayer.playerstats.slots:GetDescendants()) do
            if v.Name == ("Clip") then
                changeval(v,"PiiYYAiSPS")
            elseif v.Name == ("MaxClip") then
                changeval(v,10000)
            end
        end
    end
end)
game.Players.LocalPlayer.CharacterRemoving:connect(function()
    for _, v in pairs(game.Players.LocalPlayer.playerstats.slots:GetDescendants()) do
        if v.Name == ("Clip") then
            for _, t in pairs(game.Lighting.LootDrops:GetChildren()) do
                if t:FindFirstChild("ObjectID") then
                    if t.ObjectID.Value == v.Parent.Parent.ObjectID.Value then
                        print("aids")
                        changeval(v,t.ObjectID.Clip.Value)
                        changeval(v.MaxClip,t.ObjectID.Clip.MaxClip.Value)
                    end
                end
            end
        end
    end
end)
 
infhtenabl = false
infht.MouseButton1Up:connect(function()
    if infhtenabl == false then
        infhtenabl = true
        infht.Text = ("Disable Infinite Hunger / Thirst")
    else
        infhtenabl = false
        infht.Text = ("Enable Infinite Hunger / Thirst")
    end
    while infhtenabl == true do
        wait()
        changeval(game.Players.LocalPlayer.playerstats.Hunger, 100)
        changeval(game.Players.LocalPlayer.playerstats.Thirst, 100)
    end
end)
 
-------------------------
 
kickgroups.MouseButton1Up:connect(function()
    for _, v in pairs(game.Lighting.Groups:GetChildren()) do
        if v.Name ~= ("GlobalGroups") then
            for _, p in pairs(game.Players:GetPlayers()) do
                game.Workspace.Remote.GroupKick:FireServer(v,p)
            end
        end
    end
end)
 
spect.MouseButton1Up:connect(function()
    game.Workspace.CurrentCamera.CameraSubject = getplr(plrname1.Text).Character.Humanoid
end)
 
infstat.MouseButton1Up:connect(function()
    changeval(getplr(plrname1.Text).playerstats.PlayerKill.Aggressive, tonumber(staties.Text))
    changeval(getplr(plrname1.Text).playerstats.ZombieKill.Civilian, tonumber(staties.Text))
    changeval(getplr(plrname1.Text).playerstats.Days, tonumber(staties.Text))
end)
 
giveskins.MouseButton1Up:connect(function()
            --credit to 999 for the skin values
            changeval(getplr(plrname1.Text).playerstats.skins.skin1,31)
            changeval(getplr(plrname1.Text).playerstats.skins.skin1.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin1.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin1.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin2,27)
            changeval(getplr(plrname1.Text).playerstats.skins.skin2.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin2.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin2.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin3,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin3.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin3.secondary,20)
            changeval(getplr(plrname1.Text).playerstats.skins.skin3.secondary.material,4)
            changeval(getplr(plrname1.Text).playerstats.skins.skin4,20)
            changeval(getplr(plrname1.Text).playerstats.skins.skin4.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin4.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin4.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin5,46)
            changeval(getplr(plrname1.Text).playerstats.skins.skin5.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin5.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin5.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin6,27)
            changeval(getplr(plrname1.Text).playerstats.skins.skin6.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin6.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin6.secondary.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin7,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin7.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin7.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin7.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin8,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin8.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin8.secondary,17)
            changeval(getplr(plrname1.Text).playerstats.skins.skin8.secondary.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin9,32)
            changeval(getplr(plrname1.Text).playerstats.skins.skin9.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin9.secondary,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin9.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin10,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin10.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin10.secondary,13)
            changeval(getplr(plrname1.Text).playerstats.skins.skin10.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin11,43)
            changeval(getplr(plrname1.Text).playerstats.skins.skin11.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin11.secondary,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin11.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin12,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin12.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin12.secondary,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin12.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin13,52)
            changeval(getplr(plrname1.Text).playerstats.skins.skin13.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin13.secondary,47)
            changeval(getplr(plrname1.Text).playerstats.skins.skin13.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin14,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin14.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin14.secondary,17)
            changeval(getplr(plrname1.Text).playerstats.skins.skin14.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin15,19)
            changeval(getplr(plrname1.Text).playerstats.skins.skin15.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin15.secondary,31)
            changeval(getplr(plrname1.Text).playerstats.skins.skin15.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin16,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin16.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin16.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin16.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin17,19)
            changeval(getplr(plrname1.Text).playerstats.skins.skin17.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin17.secondary,33)
            changeval(getplr(plrname1.Text).playerstats.skins.skin17.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin18,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin18.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin18.secondary,41)
            changeval(getplr(plrname1.Text).playerstats.skins.skin18.secondary.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin19,46)
            changeval(getplr(plrname1.Text).playerstats.skins.skin19.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin19.secondary,44)
            changeval(getplr(plrname1.Text).playerstats.skins.skin19.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin20,40)
            changeval(getplr(plrname1.Text).playerstats.skins.skin20.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin20.secondary,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin20.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin21,30)
            changeval(getplr(plrname1.Text).playerstats.skins.skin21.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin21.secondary,57)
            changeval(getplr(plrname1.Text).playerstats.skins.skin21.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin22,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin22.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin22.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin22.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin23,13)
            changeval(getplr(plrname1.Text).playerstats.skins.skin23.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin23.secondary,37)
            changeval(getplr(plrname1.Text).playerstats.skins.skin23.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin24,26)
            changeval(getplr(plrname1.Text).playerstats.skins.skin24.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin24.secondary,38)
            changeval(getplr(plrname1.Text).playerstats.skins.skin24.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin25,5)
            changeval(getplr(plrname1.Text).playerstats.skins.skin25.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin25.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin25.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin26,24)
            changeval(getplr(plrname1.Text).playerstats.skins.skin26.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin26.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin26.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin27,19)
            changeval(getplr(plrname1.Text).playerstats.skins.skin27.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin27.secondary,44)
            changeval(getplr(plrname1.Text).playerstats.skins.skin27.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin28,53)
            changeval(getplr(plrname1.Text).playerstats.skins.skin28.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin28.secondary,25)
            changeval(getplr(plrname1.Text).playerstats.skins.skin28.secondary.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin29,18)
            changeval(getplr(plrname1.Text).playerstats.skins.skin29.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin29.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin29.secondary.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin30,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin30.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin30.secondary,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin30.secondary.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin31,38)
            changeval(getplr(plrname1.Text).playerstats.skins.skin31.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin31.secondary,29)
            changeval(getplr(plrname1.Text).playerstats.skins.skin31.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin32,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin32.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin32.secondary,7)
            changeval(getplr(plrname1.Text).playerstats.skins.skin32.secondary.material,4)
            changeval(getplr(plrname1.Text).playerstats.skins.skin33,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin33.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin33.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin33.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin34,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin34.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin34.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin34.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin35,60)
            changeval(getplr(plrname1.Text).playerstats.skins.skin35.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin35.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin35.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin36,59)
            changeval(getplr(plrname1.Text).playerstats.skins.skin36.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin36.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin36.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin37,45)
            changeval(getplr(plrname1.Text).playerstats.skins.skin37.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin37.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin37.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin38,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin38.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin38.secondary,23)
            changeval(getplr(plrname1.Text).playerstats.skins.skin38.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin39,36)
            changeval(getplr(plrname1.Text).playerstats.skins.skin39.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin39.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin39.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin40,43)
            changeval(getplr(plrname1.Text).playerstats.skins.skin40.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin40.secondary,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin40.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin41,56)
            changeval(getplr(plrname1.Text).playerstats.skins.skin41.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin41.secondary,54)
            changeval(getplr(plrname1.Text).playerstats.skins.skin41.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin42,19)
            changeval(getplr(plrname1.Text).playerstats.skins.skin42.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin42.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin42.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin43,25)
            changeval(getplr(plrname1.Text).playerstats.skins.skin43.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin43.secondary,25)
            changeval(getplr(plrname1.Text).playerstats.skins.skin43.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin44,17)
            changeval(getplr(plrname1.Text).playerstats.skins.skin44.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin44.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin44.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin45,5)
            changeval(getplr(plrname1.Text).playerstats.skins.skin45.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin45.secondary,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin45.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin46,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin46.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin46.secondary,52)
            changeval(getplr(plrname1.Text).playerstats.skins.skin46.secondary.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin47,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin47.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin47.secondary,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin47.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin48,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin48.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin48.secondary,51)
            changeval(getplr(plrname1.Text).playerstats.skins.skin48.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin49,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin49.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin49.secondary,47)
            changeval(getplr(plrname1.Text).playerstats.skins.skin49.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin50,21)
            changeval(getplr(plrname1.Text).playerstats.skins.skin50.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin50.secondary,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin50.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin51,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin51.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin51.secondary,54)
            changeval(getplr(plrname1.Text).playerstats.skins.skin51.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin52,40)
            changeval(getplr(plrname1.Text).playerstats.skins.skin52.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin52.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin52.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin53,15)
            changeval(getplr(plrname1.Text).playerstats.skins.skin53.material,7)
            changeval(getplr(plrname1.Text).playerstats.skins.skin53.secondary,37)
            changeval(getplr(plrname1.Text).playerstats.skins.skin53.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin54,57)
            changeval(getplr(plrname1.Text).playerstats.skins.skin54.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin54.secondary,32)
            changeval(getplr(plrname1.Text).playerstats.skins.skin54.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin55,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin55.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin55.secondary,21)
            changeval(getplr(plrname1.Text).playerstats.skins.skin55.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin56,60)
            changeval(getplr(plrname1.Text).playerstats.skins.skin56.material,4)
            changeval(getplr(plrname1.Text).playerstats.skins.skin56.secondary,48)
            changeval(getplr(plrname1.Text).playerstats.skins.skin56.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin57,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin57.material,7)
            changeval(getplr(plrname1.Text).playerstats.skins.skin57.secondary,36)
            changeval(getplr(plrname1.Text).playerstats.skins.skin57.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin58,40)
            changeval(getplr(plrname1.Text).playerstats.skins.skin58.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin58.secondary,41)
            changeval(getplr(plrname1.Text).playerstats.skins.skin58.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin59,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin59.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin59.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin59.secondary.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin60,12)
            changeval(getplr(plrname1.Text).playerstats.skins.skin60.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin60.secondary,7)
            changeval(getplr(plrname1.Text).playerstats.skins.skin60.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin61,32)
            changeval(getplr(plrname1.Text).playerstats.skins.skin61.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin61.secondary,21)
            changeval(getplr(plrname1.Text).playerstats.skins.skin61.secondary.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin62,17)
            changeval(getplr(plrname1.Text).playerstats.skins.skin62.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin62.secondary,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin62.secondary.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin63,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin63.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin63.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin63.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin64,18)
            changeval(getplr(plrname1.Text).playerstats.skins.skin64.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin64.secondary,16)
            changeval(getplr(plrname1.Text).playerstats.skins.skin64.secondary.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin65,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin65.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin65.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin65.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin66,54)
            changeval(getplr(plrname1.Text).playerstats.skins.skin66.material,10)
            changeval(getplr(plrname1.Text).playerstats.skins.skin66.secondary,54)
            changeval(getplr(plrname1.Text).playerstats.skins.skin66.secondary.material,10)
            changeval(getplr(plrname1.Text).playerstats.skins.skin67,15)
            changeval(getplr(plrname1.Text).playerstats.skins.skin67.material,7)
            changeval(getplr(plrname1.Text).playerstats.skins.skin67.secondary,32)
            changeval(getplr(plrname1.Text).playerstats.skins.skin67.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin68,20)
            changeval(getplr(plrname1.Text).playerstats.skins.skin68.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin68.secondary,41)
            changeval(getplr(plrname1.Text).playerstats.skins.skin68.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin69,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin69.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin69.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin69.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin70,51)
            changeval(getplr(plrname1.Text).playerstats.skins.skin70.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin70.secondary,42)
            changeval(getplr(plrname1.Text).playerstats.skins.skin70.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin71,42)
            changeval(getplr(plrname1.Text).playerstats.skins.skin71.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin71.secondary,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin71.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin72,23)
            changeval(getplr(plrname1.Text).playerstats.skins.skin72.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin72.secondary,20)
            changeval(getplr(plrname1.Text).playerstats.skins.skin72.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin73,51)
            changeval(getplr(plrname1.Text).playerstats.skins.skin73.material,4)
            changeval(getplr(plrname1.Text).playerstats.skins.skin73.secondary,46)
            changeval(getplr(plrname1.Text).playerstats.skins.skin73.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin74,60)
            changeval(getplr(plrname1.Text).playerstats.skins.skin74.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin74.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin74.secondary.material,4)
            changeval(getplr(plrname1.Text).playerstats.skins.skin75,23)
            changeval(getplr(plrname1.Text).playerstats.skins.skin75.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin75.secondary,23)
            changeval(getplr(plrname1.Text).playerstats.skins.skin75.secondary.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin76,5)
            changeval(getplr(plrname1.Text).playerstats.skins.skin76.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin76.secondary,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin76.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin77,21)
            changeval(getplr(plrname1.Text).playerstats.skins.skin77.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin77.secondary,10)
            changeval(getplr(plrname1.Text).playerstats.skins.skin77.secondary.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin78,17)
            changeval(getplr(plrname1.Text).playerstats.skins.skin78.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin78.secondary,21)
            changeval(getplr(plrname1.Text).playerstats.skins.skin78.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin79,30)
            changeval(getplr(plrname1.Text).playerstats.skins.skin79.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin79.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin79.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin80,32)
            changeval(getplr(plrname1.Text).playerstats.skins.skin80.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin80.secondary,54)
            changeval(getplr(plrname1.Text).playerstats.skins.skin80.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin81,50)
            changeval(getplr(plrname1.Text).playerstats.skins.skin81.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin81.secondary,44)
            changeval(getplr(plrname1.Text).playerstats.skins.skin81.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin82,30)
            changeval(getplr(plrname1.Text).playerstats.skins.skin82.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin82.secondary,31)
            changeval(getplr(plrname1.Text).playerstats.skins.skin82.secondary.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin83,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin83.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin83.secondary,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin83.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin84,44)
            changeval(getplr(plrname1.Text).playerstats.skins.skin84.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin84.secondary,45)
            changeval(getplr(plrname1.Text).playerstats.skins.skin84.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin85,7)
            changeval(getplr(plrname1.Text).playerstats.skins.skin85.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin85.secondary,25)
            changeval(getplr(plrname1.Text).playerstats.skins.skin85.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin86,13)
            changeval(getplr(plrname1.Text).playerstats.skins.skin86.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin86.secondary,29)
            changeval(getplr(plrname1.Text).playerstats.skins.skin86.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin87,32)
            changeval(getplr(plrname1.Text).playerstats.skins.skin87.material,10)
            changeval(getplr(plrname1.Text).playerstats.skins.skin87.secondary,33)
            changeval(getplr(plrname1.Text).playerstats.skins.skin87.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin88,27)
            changeval(getplr(plrname1.Text).playerstats.skins.skin88.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin88.secondary,41)
            changeval(getplr(plrname1.Text).playerstats.skins.skin88.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin89,34)
            changeval(getplr(plrname1.Text).playerstats.skins.skin89.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin89.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin89.secondary.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin90,55)
            changeval(getplr(plrname1.Text).playerstats.skins.skin90.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin90.secondary,23)
            changeval(getplr(plrname1.Text).playerstats.skins.skin90.secondary.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin91,42)
            changeval(getplr(plrname1.Text).playerstats.skins.skin91.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin91.secondary,43)
            changeval(getplr(plrname1.Text).playerstats.skins.skin91.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin92,27)
            changeval(getplr(plrname1.Text).playerstats.skins.skin92.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin92.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin92.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin93,23)
            changeval(getplr(plrname1.Text).playerstats.skins.skin93.material,3)
            changeval(getplr(plrname1.Text).playerstats.skins.skin93.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin93.secondary.material,6)
            changeval(getplr(plrname1.Text).playerstats.skins.skin94,4)
            changeval(getplr(plrname1.Text).playerstats.skins.skin94.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin94.secondary,35)
            changeval(getplr(plrname1.Text).playerstats.skins.skin94.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin95,46)
            changeval(getplr(plrname1.Text).playerstats.skins.skin95.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin95.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin95.secondary.material,9)
            changeval(getplr(plrname1.Text).playerstats.skins.skin96,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin96.material,8)
            changeval(getplr(plrname1.Text).playerstats.skins.skin96.secondary,10)
            changeval(getplr(plrname1.Text).playerstats.skins.skin96.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin97,19)
            changeval(getplr(plrname1.Text).playerstats.skins.skin97.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin97.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin97.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin98,19)
            changeval(getplr(plrname1.Text).playerstats.skins.skin98.material,2)
            changeval(getplr(plrname1.Text).playerstats.skins.skin98.secondary,22)
            changeval(getplr(plrname1.Text).playerstats.skins.skin98.secondary.material,1)
            changeval(getplr(plrname1.Text).playerstats.skins.skin99,18)
            changeval(getplr(plrname1.Text).playerstats.skins.skin99.material,11)
            changeval(getplr(plrname1.Text).playerstats.skins.skin99.secondary,20)
            changeval(getplr(plrname1.Text).playerstats.skins.skin99.secondary.material,2)
end)
 
--------------------------
 
spamm = false
msgspam.MouseButton1Up:connect(function()
    if spamm == false and game.Workspace.messages.Value == 0 then
        spamm = true
        msgspam.Text = ("Disable Chat Spam")
        while spamm == true do
            wait(0.1)
            game.Workspace.Remote.Chat:FireServer("Global",plrname2.Text)
            game.Workspace.Remote.Chat:FireServer("Global"," ")
        end
    else
        spamm = false
        msgspam.Text = ("Enable Chat Spam")
    end
end)
 
killzombs.MouseButton1Up:connect(function()
    for _, v in pairs(game.Workspace.Zombies:GetDescendants()) do
        if v:FindFirstChild("Humanoid") then
            game.Workspace.Remote.DamageZombie:FireServer(v:FindFirstChild("Humanoid"), 1000)
        end
    end
end)
 
---------------------------
 
spwnitem.MouseButton1Up:connect(function()
   
    for i = 1, tonumber(val.Text) do
        local newit = getitem(itemsp.Text):Clone()
        newit.Parent = game.Workspace.SpawnLoot
        newit:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-7.24,7.24),1,math.random(-7.24,7.24)))
    end
end)
actvted = false
curv = false
spwn.MouseButton1Up:connect(function()
    if actvted == false then
        actvted = true
        while true do
            vehs:ClearAllChildren()
            local lasty = false
            for _, v in pairs(game.Workspace.Vehicles:GetChildren()) do if v.Name ~= ("VehicleWreck") then
                local t = Instance.new("TextButton",vehs)
                if lasty ~= false then
                    t.Position = UDim2.new(t.Position.X, lasty.Position.Y + UDim.new(0,40))
                else
                    t.Position = UDim2.new(0,0,0,0)
                end
                t.Size = UDim2.new(0,163,0,40)
                t.BackgroundColor3 = Color3.new(0/255,140/255,185/255)
                t.BorderSizePixel = 0
                t.Text = v.Name
                t.TextColor3 = Color3.new(255,255,255)
                t.TextSize = 15
                t.Font = ("ArialBold")
                lasty = t
                t.MouseButton1Down:connect(function()
                    curv = v
                    vtab.Text = ("Vehicle: "..v.Name)
                end)
            end end
            wait(5)
        end
    end
end)
 
destcar.MouseButton1Up:connect(function()
    if curv ~= false then
        changeval(curv.Stats.Hull, math.huge)
        changeval(curv.Stats.Hull.Max, math.huge)
        changeval(curv.Stats.Engine, math.huge)
        changeval(curv.Stats.Engine.Max, math.huge)
        changeval(curv.Stats.Tank, math.huge)
        changeval(curv.Stats.Tank.Max, math.huge)
        changeval(curv.Stats.Fuel, math.huge)
        changeval(curv.Stats.Fuel.Max, math.huge)
        changeval(curv.Stats.Armor, math.huge)
        changeval(curv.Stats.Armor.Max, math.huge)
    end
end)
 
godcar.MouseButton1Up:connect(function()
    if curv ~= false then
        changeval(curv.Stats.Hull, 99999999)
        changeval(curv.Stats.Hull.Max, 99999999)
        changeval(curv.Stats.Engine, 99999999)
        changeval(curv.Stats.Engine.Max, 99999999)
        changeval(curv.Stats.Tank, 99999999)
        changeval(curv.Stats.Tank.Max, 99999999)
        changeval(game.Workspace.messages.m1, "RelentlessR5ptor")
        changeval(curv.Stats.Fuel, 99999999)
        changeval(curv.Stats.Fuel.Max, 99999999)
        changeval(curv.Stats.Armor, 99999999)
        changeval(curv.Stats.Armor.Max, 99999999)
    end
end)
 
speedcar.MouseButton1Up:connect(function()
    if curv ~= false then
        changeval(curv.Stats.MaxSpeed, tonumber(itemsp.Text))
        changeval(curv.Stats.MaxSpeed.Offroad, tonumber(itemsp.Text))
    end
end)
 
bringcar.MouseButton1Up:connect(function()
    if curv ~= false then
        for i = 1, 10 do
            wait()
            curv:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,2,20))
        end
    end
end)
 
sspwn.MouseButton1Up:connect(function()
    math.randomseed(tick())
        local its = getitem(itemsp.Text)--i see you looking at my shitty spawn method, dont skid it boi
        local itsid = its.ObjectID.Value
        local lasttable = {}
        for i = 1, tonumber(val.Text) do
            for _, v in pairs(game.Workspace.SpawnLoot:GetChildren()) do
                if #lasttable ~= tonumber(val.Text) then--val.text
                    if v.Name == ("BloodBag") or v.Name == ("Beans") then
                        table.insert(lasttable, v)
                    end
                end
            end
        end
        for _, t in pairs(lasttable) do
            local relentlessraptor = nil
            changeval(t.ObjectID, itsid)
            for _, v in pairs(t:GetChildren()) do
                if v.ClassName == ("Model") then
                    v:Remove()
                end
                local cl = its:FindFirstChildOfClass("Model"):Clone()
                cl.Parent = t
            end
            if its.ObjectID:FindFirstChild("Clip") then
                local cl = its.ObjectID:FindFirstChild("Clip"):Clone()
                cl.Parent = t.ObjectID
            end
            t:MoveTo(game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(math.random(-7.24,7.24),1,math.random(-7.24,7.24)))
        end
end)