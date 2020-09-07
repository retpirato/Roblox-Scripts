
Code:
--[[
    Release by Rain on V3rmillion
    Please leave this header intact to encourage future script releases!
  
    Name: cbrohacks.lua
    Author: Autumn
    Desc: Hacky hacks for bad FPS players like me

    Enjoy!
]]

do --SIGHT
    local plr = game.Players.LocalPlayer
    local allsguis = {}

    local enabled = false    

    local dohax = function(lbplr)
        wait() --make sure the character exists
        if not lbplr.Character then return end
        for _,obj in next,lbplr.Character:children() do
            if obj:IsA("BasePart") then
                local sguis = {}
                local snew = function(...)
                    for _,face in next,{...} do
                        local sgui = Instance.new("SurfaceGui",obj)
                        sgui.Enabled = enabled
                        sgui.AlwaysOnTop = true
                        sgui.Face = face
                        table.insert(sguis,sgui)
                        sgui.AncestryChanged:connect(function()
                            for i,v in next,sguis do
                                if v == sgui then
                                    table.remove(sguis,i)
                                    sgui:destroy()
                                end
                            end
                        end)
                    end
                end
                snew("Front", "Back", "Left", "Right", "Top", "Bottom")
                for _,sgui in next,sguis do
                    local sframe = Instance.new("Frame",sgui)
                    sframe.Size = UDim2.new(1,0,1,0)
                    sframe.BorderSizePixel = 0
                    sframe.BackgroundTransparency = .5
                    sframe.BackgroundColor3 = lbplr.TEEM.Value == plr.TEEM.Value and BrickColor.new("Really blue").Color or BrickColor.new("Really red").Color
                end
                table.insert(allsguis,sguis)
            end
        end
    end

    local connectPlayer = function(lbplr)
        if lbplr ~= plr then
            dohax(lbplr)
            lbplr.CharacterAdded:connect(function(char)
                dohax(lbplr)
            end)
        end
    end

    for _,v in next,game.Players:GetPlayers() do
        connectPlayer(v)
    end

    game.Players.PlayerAdded:connect(function(p)
        connectPlayer(p)
    end)

    game:GetService("UserInputService").InputBegan:connect(function(input)
        if input.KeyCode == Enum.KeyCode.BackSlash then
            enabled = not enabled
            for _,v in next,allsguis do
                for __,vv in next,v do
                    vv.Enabled = enabled
                end
            end
        end
    end)
end

do --AIM
    local cam = game:GetService("Workspace").CurrentCamera
    local plrs = game:GetService("Players"):GetPlayers()
    local lplr = game:GetService("Players").LocalPlayer

    local aiming = false
    local dolerp = true

    game:GetService("RunService"):BindToRenderStep("UpdateCamera", Enum.RenderPriority.Camera.Value, function()
        if not aiming or not lplr.Character or not lplr.Character:FindFirstChild("Head") then return end
        local cchar,cdist
        for _,plr in next,plrs do
            if plr ~= lplr and plr.TEEM.Value ~= lplr.TEEM.Value then
                local char = plr.Character
                if char and char:FindFirstChild("Head") then
                    local hit = workspace:FindPartOnRay(Ray.new((cam.CFrame*CFrame.new(0,0,-5)).p, char.Head.Position - (cam.CFrame*CFrame.new(0,0,-5)).p))
                    if hit and hit.Parent and hit.Parent == char or hit.Parent.Parent == char then
                        local dist = (char.Head.Position - lplr.Character.Head.Position).magnitude
                        if cdist == nil or dist < cdist then
                            cdist = dist
                            cchar = char
                        end
                    end
                end
            end
        end
        if not cchar then return end
        cam.CFrame = dolerp and cam.CFrame:lerp(CFrame.new(cam.CFrame.p, cchar.Head.CFrame.p), .15) or CFrame.new(cam.CFrame.p, cchar.Head.CFrame.p)
    end)

    game.Players.PlayerAdded:connect(function(plr)
        table.insert(plrs,plr)
    end)
    
    game.Players.PlayerRemoving:connect(function(plr)
        for i,v in next,plrs do
            if v == plr then
                table.remove(plrs,i)
            end
        end
    end)

    game:GetService("UserInputService").InputBegan:connect(function(input)
        if input.KeyCode == Enum.KeyCode.CapsLock then
            aiming = not aiming
        elseif input.KeyCode == Enum.KeyCode.RightBracket then
            dolerp = true
        elseif input.KeyCode == Enum.KeyCode.LeftBracket then
            dolerp = false
        end
    end)
end

do --OMGWHAT
    local plr = game.Players.LocalPlayer
    game:GetService("UserInputService").InputBegan:connect(function(input)
        if input.KeyCode == Enum.KeyCode.RightAlt then
            if not plr.Character or not plr.Character:FindFirstChild("Head") then return end
            for _,v in next,game.Players:children() do
                if v ~= plr and v.TEEM.Value ~= plr.TEEM.Value and v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Torso") and v.Character.Torso:FindFirstChild("Neck") then
                    local char = v.Character
                    local head = char.Head
                    char.Torso["Neck"]:destroy()
                    head.Anchored = true
                    head.CanCollide = false
                    head.Transparency = 1
                    head.face:destroy()
                    for _,vv in next,head:children() do
                        if vv:IsA("SurfaceGui") then
                            vv:destroy()
                        end
                    end
                    local rs = game:GetService("RunService").RenderStepped:connect(function()
                        head.CFrame = plr.Character.Head.CFrame*CFrame.new(0,0,-5)
                    end)
                    head.AncestryChanged:connect(function()
                        rs:disconnect()
                    end)
                    plr.Character.Head.AncestryChanged:connect(function()
                        rs:disconnect()
                    end)
                end
            end
        end
    end)
end
