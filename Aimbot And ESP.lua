local plrs = game:GetService("Players")
local TeamBased = true ; local teambasedswitch = "o"
local presskeytoaim = true; local aimkey = "e"
local raycast = false
 
local espupdatetime = 5; autoesp = false
 
 
 
local lockaim = true; local lockangle = 5
 
 
 
--function findwat(folder, what)
--  for i, smth in pairs(folder:GetChildren()) do
--      if string.find(string.lower(tostring(smth)), string.lower(what)) then
--          return smth
--      end
--  end
--end
--
--local plrs = findwat(game, "Players")
 
 
 
 
local Gui = Instance.new("ScreenGui")
local Move = Instance.new("Frame")
local Main = Instance.new("Frame")
local EspStatus = Instance.new("TextLabel")
local st1 = Instance.new("TextLabel")
local st1_2 = Instance.new("TextLabel")
local st1_3 = Instance.new("TextLabel")
local Name = Instance.new("TextLabel")
--Properties:
Gui.Name = "Gui"
Gui.Parent = plrs.LocalPlayer:WaitForChild("PlayerGui")
 
Move.Name = "Move"
Move.Parent = Gui
Move.BackgroundColor3 = Color3.new(0.0431373, 1, 0.0745098)
Move.BackgroundTransparency = 0.40000000596046
Move.BorderSizePixel = 0
Move.Position = UDim2.new(0.005, 0,0.018, 0)
Move.Size = UDim2.new(0.28141585, 0, 0.0320388414, 0)
 
Main.Name = "Main"
Main.Parent = Move
Main.BackgroundColor3 = Color3.new(0.176471, 0.176471, 0.176471)
Main.BackgroundTransparency = 0.69999998807907
Main.Position = UDim2.new(0, 0, 0.995670795, 0)
Main.Size = UDim2.new(1.0000006, 0, 9.79697132, 0)
 
EspStatus.Name = "EspStatus"
EspStatus.Parent = Main
EspStatus.BackgroundColor3 = Color3.new(1, 1, 1)
EspStatus.BackgroundTransparency = 1
EspStatus.Size = UDim2.new(0.272955924, 0, 0.161862016, 0)
EspStatus.Font = Enum.Font.ArialBold
EspStatus.Text = "Press T to update Esp"
EspStatus.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
EspStatus.TextScaled = true
EspStatus.TextSize = 14
EspStatus.TextWrapped = true
 
st1.Name = "st1"
st1.Parent = Main
st1.BackgroundColor3 = Color3.new(1, 1, 1)
st1.BackgroundTransparency = 1
st1.Position = UDim2.new(0.271787882, 0, 0, 0)
st1.Size = UDim2.new(0.728211343, 0, 0.161862016, 0)
st1.Font = Enum.Font.ArialBold
st1.Text = "Press "..aimkey.." to lock on a person inside ur view"
st1.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1.TextScaled = true
st1.TextSize = 14
st1.TextWrapped = true
 
st1_2.Name = "st1"
st1_2.Parent = Main
st1_2.BackgroundColor3 = Color3.new(1, 1, 1)
st1_2.BackgroundTransparency = 1
st1_2.Position = UDim2.new(0, 0, 0.375590861, 0)
st1_2.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
st1_2.Font = Enum.Font.ArialBold
st1_2.Text = "Press L to enable esp loop"
st1_2.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1_2.TextScaled = true
st1_2.TextSize = 14
st1_2.TextWrapped = true
 
st1_3.Name = "st1"
st1_3.Parent = Main
st1_3.BackgroundColor3 = Color3.new(1, 1, 1)
st1_3.BackgroundTransparency = 1
st1_3.Position = UDim2.new(0, 0, 0.18558608, 0)
st1_3.Size = UDim2.new(0.999999881, 0, 0.161862016, 0)
st1_3.Font = Enum.Font.ArialBold
st1_3.Text = "Press O to change team based mode"
st1_3.TextColor3 = Color3.new(0.0431373, 1, 0.0745098)
st1_3.TextScaled = true
st1_3.TextSize = 14
st1_3.TextWrapped = true
local teambasedstatus = st1_3:Clone()
teambasedstatus.Parent = st1_3
teambasedstatus.TextScaled = true
teambasedstatus.Position = UDim2.new(0, 0,0.694, 0)
teambasedstatus.Text = tostring(TeamBased)
 
Name.Name = "Name"
Name.Parent = Move
Name.BackgroundColor3 = Color3.new(1, 1, 1)
Name.BackgroundTransparency = 1
Name.Size = UDim2.new(0.838, 0, 0.980000019, 0)
Name.Font = Enum.Font.Arial
Name.Text = "FPS gui v1.0"
Name.TextColor3 = Color3.new(0, 0, 0)
Name.TextScaled = true
Name.TextSize = 14
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left
-- Scripts:
 
 
local plrsforaim = {}
 
local lplr = game:GetService("Players").LocalPlayer
Move.Draggable = true
Gui.ResetOnSpawn = false
Gui.Name = "Chat"
Gui.DisplayOrder = 999
 
    Gui.Parent = plrs.LocalPlayer.PlayerGui
 
 
f = {}
local espforlder
 
f.addesp = function()
    --print("ESP ran")
    if espforlder then
    else
        espforlder = Instance.new("Folder")
        espforlder.Parent = game.Workspace.CurrentCamera
    end
    for i, v in pairs(espforlder:GetChildren()) do
        v:Destroy()
    end
    for _, plr in pairs(plrs:GetChildren()) do
        if plr.Character and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name then
            if TeamBased == true then
                if plr.Team.Name ~= plrs.LocalPlayer.Team.Name  then
                    local e = espforlder:FindFirstChild(plr.Name)
                    if not e then
                        --print("Added esp for team based")
                        local bill = Instance.new("BillboardGui", espforlder)
                        bill.Name = plr.Name
                        bill.AlwaysOnTop = true
                        bill.Size = UDim2.new(1,0,1,0)
                        bill.Adornee = plr.Character.Head
                        local Frame = Instance.new('Frame',bill)
                        Frame.Active = true
                        Frame.BackgroundColor3 = Color3.new(0/255,255/255,0/255)
                        Frame.BackgroundTransparency = 0
                        Frame.BorderSizePixel = 0
                        Frame.AnchorPoint = Vector2.new(.5, .5)
                        Frame.Position = UDim2.new (0.5,0,0.5,0)
                        Frame.Size = UDim2.new (1,0,1,0)
                        Frame.Rotation = 0
                        plr.Character.Humanoid.Died:Connect(function()
                            bill:Destroy()
                        end)
                    end
                end
            else
                local e = espforlder:FindFirstChild(plr.Name)
                if not e then
                    --print("Added esp")
                    local bill = Instance.new("BillboardGui", espforlder)
                    bill.Name = plr.Name
                    bill.AlwaysOnTop = true
                    bill.Size = UDim2.new(1,0,1,0)
                    bill.Adornee = plr.Character.Head
                    local Frame = Instance.new('Frame',bill)
                    Frame.Active = true
                    Frame.BackgroundColor3 = Color3.new(0/255,255/255,0/255)
                    Frame.BackgroundTransparency = 0
                    Frame.BorderSizePixel = 0
                    Frame.AnchorPoint = Vector2.new(.5, .5)
                    Frame.Position = UDim2.new (0.5,0,0.5,0)
                    Frame.Size = UDim2.new (1,0,1,0)
                    Frame.Rotation = 0
                    plr.Character.Humanoid.Died:Connect(function()
                        bill:Destroy()
                    end)
                end
            end
           
           
        end
    end
end
local cam = game.Workspace.CurrentCamera
 
local mouse = lplr:GetMouse()
local switch = false
local key = "k"
local aimatpart = nil
mouse.KeyDown:Connect(function(a)
    if a == "t" then
        print("worked1")
        f.addesp()
    elseif a == "u" then
        if raycast == true then
            raycast = false
        else
            raycast = true
        end
    elseif a == "l" then
        if autoesp == false then
            autoesp = true
        else
            autoesp = false
        end
    end
    if a == "j" then
        if mouse.Target then
            mouse.Target:Destroy()
        end
    end
    if a == key then
        if switch == false then
            switch = true
        else
            switch = false
            if aimatpart ~= nil then
                aimatpart = nil
            end
        end
    elseif a == teambasedswitch then
        if TeamBased == true then
            TeamBased = false
            teambasedstatus.Text = tostring(TeamBased)
        else
            TeamBased = true
            teambasedstatus.Text = tostring(TeamBased)
        end
    elseif a == aimkey then
        if not aimatpart then
            local maxangle = math.rad(20)
            for i, plr in pairs(plrs:GetChildren()) do
                if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
                    if TeamBased == true then
                        if plr.Team.Name ~= lplr.Team.Name then
                            local an = checkfov(plr.Character.Head)
                            if an < maxangle then
                                maxangle = an
                                aimatpart = plr.Character.Head
                            end
                        end
                    else
                        local an = checkfov(plr.Character.Head)
                            if an < maxangle then
                                maxangle = an
                                aimatpart = plr.Character.Head
                            end
                            print(plr)
                    end
                    plr.Character.Humanoid.Died:Connect(function()
                        if aimatpart.Parent == plr.Character or aimatpart == nil then
                            aimatpart = nil
                        end
                    end)
                end
            end
        else
            aimatpart = nil
        end
    end
end)
 
function getfovxyz (p0, p1, deg)
    local x1, y1, z1 = p0:ToOrientation()
    local cf = CFrame.new(p0.p, p1.p)
    local x2, y2, z2 = cf:ToOrientation()
    --local d = math.deg
    if deg then
        --return Vector3.new(d(x1-x2), d(y1-y2), d(z1-z2))
    else
        return Vector3.new((x1-x2), (y1-y2), (z1-z2))
    end
end
 
function getaimbotplrs()
    plrsforaim = {}
    for i, plr in pairs(plrs:GetChildren()) do
        if plr.Character and plr.Character.Humanoid and plr.Character.Humanoid.Health > 0 and plr.Name ~= lplr.Name and plr.Character.Head then
           
            if TeamBased == true then
                if plr.Team.Name ~= lplr.Team.Name then
                    local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
                    local r = Ray.new(cf, cf.LookVector * 10000)
                    local ign = {}
                    for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
                        if v:IsA("BasePart") then
                            table.insert(ign , v)
                        end
                    end
                    local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
                    if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
                        table.insert(plrsforaim, obj)
                    end
                end
            else
                local cf = CFrame.new(game.Workspace.CurrentCamera.CFrame.p, plr.Character.Head.CFrame.p)
                local r = Ray.new(cf, cf.LookVector * 10000)
                local ign = {}
                for i, v in pairs(plrs.LocalPlayer.Character:GetChildren()) do
                    if v:IsA("BasePart") then
                        table.insert(ign , v)
                    end
                end
                local obj = game.Workspace:FindPartOnRayWithIgnoreList(r, ign)
                if obj.Parent == plr.Character and obj.Parent ~= lplr.Character then
                    table.insert(plrsforaim, obj)
                end
            end
           
           
        end
    end
end
 
function aimat(part)
    cam.CFrame = CFrame.new(cam.CFrame.p, part.CFrame.p)
end
function checkfov (part)
    local fov = getfovxyz(game.Workspace.CurrentCamera.CFrame, part.CFrame)
    local angle = math.abs(fov.X) + math.abs(fov.Y)
    return angle
end
 
game:GetService("RunService").RenderStepped:Connect(function()
    if aimatpart then
        aimat(aimatpart)
        if aimatpart.Parent == plrs.LocalPlayer.Character then
            aimatpart = nil
        end
    end
   
   
--  if switch == true then
--      local maxangle = 99999
--     
--      --print("Loop")
--      if true and raycast == false then
--          for i, plr in pairs(plrs:GetChildren()) do
--              if plr.Name ~= lplr.Name and plr.Character and plr.Character.Head and plr.Character.Humanoid and plr.Character.Humanoid.Health > 1 then
--                  if TeamBased then
--                      if plr.Team.Name ~= lplr.Team.Name or plr.Team.TeamColor ~= lplr.Team.TeamColor then
--                          local an = checkfov(plr.Character.Head)
--                          if an < maxangle then
--                              maxangle = an
--                              aimatpart = plr.Character.Head
--                              if an < lockangle then
--                                  break
--                              end
--                          end
--                      end
--                  else
--                      local an = checkfov(plr.Character.Head)
--                          if an < maxangle then
--                              maxangle = an
--                              aimatpart = plr.Character.Head
--                              if an < lockangle then
--                                  break
--                              end
--                          end
--                  end
--                 
--                 
--                 
--                 
--              end
--          end
--      elseif raycast == true then
--         
--      end
       
        if raycast == true and switch == false and not aimatpart then
            getaimbotplrs()
            aimatpart = nil
            local maxangle = 999
            for i, v in ipairs(plrsforaim) do
                if v.Parent ~= lplr.Character then
                    local an = checkfov(v)
                    if an < maxangle and v ~= lplr.Character.Head then
                        maxangle = an
                        aimatpart = v
                        print(v:GetFullName())
                        v.Parent.Humanoid.Died:connect(function()
                            aimatpart = nil
                        end)
                    end
                end
            end
       
    end
end)
delay(0, function()
    while wait(espupdatetime) do
        if autoesp == true then
            pcall(function()
            f.addesp()
            end)
        end
    end
end)
warn("loaded")