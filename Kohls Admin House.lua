wait(.2)
whitelist = {game.Players.LocalPlayer.Name,"Fren1","Fren2"} -- put admin names here
banlist = {"noob","noob2"} -- put noob names here
deletepath = game.Players.LocalPlayer.Character:FindFirstChild("Delete")
deletepath2 = game.Players.LocalPlayer.Backpack:FindFirstChild("Delete")
slock = false
 
function newtag(plr)
admintag = Instance.new("BoolValue")
    admintag.Parent = game.Players[plr]
    admintag.Value = true
    admintag.Name = "admin"
    print("created admin tag for " .. plr)
end
 
newtag(game.Players.LocalPlayer.Name)
 
game.Players.LocalPlayer.ChildRemoved:connect(function(obj)
    if obj.Name == "admin" then
        newtag(game.Players.LocalPlayer.Name)
    end
end)    
    
            function adminexe(plr,msg)
                if plr:FindFirstChild("admin") then
                
            local lower = string.lower(msg)
            local len = string.len(lower)
            
            if string.find(lower,":kick ") then
                local name = string.gsub(lower,":kick ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player) 
                                    end
                                end
                            end
                end
                end
 
 
    if string.find(lower,"/e :kick ") then
                local name = string.gsub(lower,"/e :kick ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player) 
                                    end
                                end
                            end
                end
                end
 
    if string.find(lower,"/e kick ") then
                local name = string.gsub(lower,"/e kick ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player) 
                                    end
                                end
                            end
                end
                end
 
                if string.find(lower,"heck ") then
                local name = string.gsub(lower,"heck ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character)   
                                    end
                                end
                            end
                end
                end
 
        if string.find(lower,":heck ") then
                local name = string.gsub(lower,":heck ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character)   
                                    end
                                end
                            end
                end
                end
 
        if string.find(lower,"/e heck ") then
                local name = string.gsub(lower,"/e heck ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character)   
                                    end
                                end
                            end
                end
                end
 
        if string.find(lower,"/e :heck ") then
                local name = string.gsub(lower,"/e :heck ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character)   
                                    end
                                end
                            end
                end
                end
 
                if string.find(lower,"frick ") then
                local name = string.gsub(lower,"frick ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character.Torso.Neck)
                                game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character.Torso.Neck)
                                    game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)  
                                    end
                                end
                            end
                end
                end
 
                if string.find(lower,":frick ") then
                local name = string.gsub(lower,":frick ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character.Torso.Neck)
                                game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character.Torso.Neck)
                                    game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)  
                                    end
                                end
                            end
                end
                end
 
                if string.find(lower,"/e frick ") then
                local name = string.gsub(lower,"/e frick ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character.Torso.Neck)
                                game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character.Torso.Neck)
                                    game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)  
                                    end
                                end
                            end
                end
                end
 
                if string.find(lower,"/e :frick ") then
                local name = string.gsub(lower,"/e :frick ","")
                local player = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                game.Workspace.Delete.delete:FireServer(v.Character.Torso.Neck)
                                game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)
                            end
                        end
                else
                    
                    names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)                      
                                
                                if name == sub then 
                                    player = v
                                    if player.Name ~= game.Players.LocalPlayer.Name then
                                    game.Workspace.Delete.delete:FireServer(player.Character.Torso.Neck)
                                    game.Workspace.Delete.delete:FireServer(v.Character.Head.Neck)  
                                    end
                                end
                            end
                end
                end
            
            if string.find(lower,":ban ") then
                local name = string.gsub(lower,":ban ","")
                local player = nil
                local plrname = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                plrname = v.Name
                                table.insert(banlist,(#banlist+1),plrname)
                                game.Workspace.Delete.delete:FireServer(v)
                            end
                        end
                else
                
                names = game.Players:GetChildren()
                                
                        for i,v in pairs(names) do
                            strlower = string.lower(v.Name)
                            sub = string.sub(strlower,1,#name)
                                
                            if name == sub then
                                plrname = v.Name
                                player = v
 
                                if player.Name ~= game.Players.LocalPlayer.Name then
                                table.insert(banlist,(#banlist+1),plrname)
                                game.Workspace.Delete.delete:FireServer(player)
                                end 
                            end
                            
                        end
                        
                        
                end
                end
 
            if string.find(lower,"/e ban ") then
                local name = string.gsub(lower,"/e ban ","")
                local player = nil
                local plrname = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                plrname = v.Name
                                table.insert(banlist,(#banlist+1),plrname)
                                game.Workspace.Delete.delete:FireServer(v)
                            end
                        end
                else
                
                names = game.Players:GetChildren()
                                
                        for i,v in pairs(names) do
                            strlower = string.lower(v.Name)
                            sub = string.sub(strlower,1,#name)
                                
                            if name == sub then
                                plrname = v.Name
                                player = v
 
                                if player.Name ~= game.Players.LocalPlayer.Name then
                                table.insert(banlist,(#banlist+1),plrname)
                                game.Workspace.Delete.delete:FireServer(player)
                                end 
                            end
                            
                        end
                        
                        
                end
                end
 
            if string.find(lower,"/e :ban ") then
                local name = string.gsub(lower,"/e :ban ","")
                local player = nil
                local plrname = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                plrname = v.Name
                                table.insert(banlist,(#banlist+1),plrname)
                                game.Workspace.Delete.delete:FireServer(v)
                            end
                        end
                else
                
                names = game.Players:GetChildren()
                                
                        for i,v in pairs(names) do
                            strlower = string.lower(v.Name)
                            sub = string.sub(strlower,1,#name)
                                
                            if name == sub then
                                plrname = v.Name
                                player = v
 
                                if player.Name ~= game.Players.LocalPlayer.Name then
                                table.insert(banlist,(#banlist+1),plrname)
                                game.Workspace.Delete.delete:FireServer(player)
                                end 
                            end
                            
                        end
                        
                        
                end
                end
                
            if string.find(lower,":unban ") then
                local name = string.gsub(lower,":unban ","")
                local player = nil      
                local plrname = nil
                local index = nil
                
                if name == "all" then
                    
                    for i,v in pairs(banlist) do
                        table.remove(banlist,i)
                    end
                    
                else
                    names = banlist
                                
                        for i,v in pairs(names) do
                            strlower = string.lower(v)
                            sub = string.sub(strlower,1,#name)
                                
                            if name == sub then
                                 table.remove(banlist,i)
                            end
                        end
                end
                end
            
            if lower == ":bans" then
                print("-------------------------")
                
                for i,v in pairs(banlist) do
                    print("Ban #" .. i .. " Player: " .. v)
                end
                
                print("-------------------------")
            end
            
            if lower == ":obby" then
                if game.Workspace.Terrain.GameFolder.Workspace.Obby then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Obby)
                end
            end
 
            if lower == ":removeobby" then
                if game.Workspace.Terrain.GameFolder.Workspace.Obby then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Obby)
                end
            end
            
            if lower == ":givers" then
                if game.Workspace.Terrain.GameFolder.Admin then
                local dividers = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Admin Dividers")
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin.Pads)
                    game.Workspace.Delete.delete:FireServer(dividers)
                end
            end
            
            if lower == ":removegivers" then
                if game.Workspace.Terrain.GameFolder.Admin then
                local dividers2 = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Admin Dividers")
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin.Pads)
                    game.Workspace.Delete.delete:FireServer(dividers2)
                end
            end
 
            if lower == ":removepads" then
                if game.Workspace.Terrain.GameFolder.Admin then
                local dividers2 = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Admin Dividers")
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin.Pads)
                    game.Workspace.Delete.delete:FireServer(dividers2)
                end
            end
 
                if lower == ":pads" then
                if game.Workspace.Terrain.GameFolder.Admin then
                local dividers2 = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Admin Dividers")
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin.Pads)
                    game.Workspace.Delete.delete:FireServer(dividers2)
                end
            end
        if lower == ":roof" then
                if game.Workspace.Terrain.GameFolder.Admin then
                
                    epic = game.Players.Vortexturize.Backpack:FindFirstChild("Clone")
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
                end
            end
        if lower == ":darkness" then
                if game.Workspace.Terrain.GameFolder.Admin then
                
                    epic = game.Players.Vortexturize.Backpack:FindFirstChild("Clone")
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
            epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
        --EFFECIENCY AT IT'S FINEST
                end
            end
 
        if lower == ":clonebaseplate" then
                if game.Workspace.Terrain.GameFolder.Admin then
                epic = game.Players.Vortexturize.Backpack:FindFirstChild("Clone")
        epic.create:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate, Vector3.new(-85, 10, 17), Vector3.new(180, 90, 0))
                end
            end
 
                if lower == ":regen" then
                if game.Workspace.Terrain.GameFolder.Admin then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin.Regen)
                end
            end
            if lower == ":removeregen" then
                if game.Workspace.Terrain.GameFolder.Admin then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin.Regen)
                end
            end
            
            if lower == "clear" then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if v:IsA("Part") then
                        game.Workspace.Delete.delete:FireServer(v)
                    end
                end
            end
            
            if lower == ":slock on" then
                slock = true
            end
 
            if lower == "/e :slock on" then
                slock = true
            end
 
            if lower == "/e slock on" then
                slock = true
            end
            
            if lower == ":slock off" then
                slock = false
            end
 
            if lower == "/e :slock off" then
                slock = false
            end
 
            if lower == "/e slock off" then
                slock = false
            end
            
            if string.find(lower,":wl ") then
                local name = string.gsub(lower,":wl ","")
                local player = nil
                local plrname = nil
                
                if name == "others" then
                        for i,v in pairs(game.Players:GetChildren()) do
                            if (not v:FindFirstChild("admin")) and v.Name ~= game.Players.LocalPlayer.Name then
                                table.insert(whitelist,(#whitelist+1),v.Name)
                                newtag(v.Name)
                                
                                v.Chatted:connect(function(msg)
                                    adminexe(v,msg)
                                end)
                            end
                        end
                else
                    
                names = game.Players:GetChildren()
                                
                            for i,v in pairs(names) do
                                strlower = string.lower(v.Name)
                                sub = string.sub(strlower,1,#name)
                                
                                if name == sub then
                                    newtag(v.Name)
                                    table.insert(whitelist,(#whitelist+1),v.Name)   
                                    
                                    v.Chatted:connect(function(msg)
                                        adminexe(v,msg)
                                    end)
                                end
                            end
                end
                end
            
            if string.find(lower,":unwl ") then
                local name = string.gsub(lower,":unwl ","")
                local player = nil
                local plrname = nil
                local index = nil
                
                if name == "others" then
                        for i,v in pairs(whitelist) do
                                for i,v in pairs(banlist) do
                                    if v ~= game.Players.LocalPlayer.Name then
                                    table.remove(whitelist,i)
                                    end
                                end
                                
                                if game.Workspace:FindFirstChild(v) then
                                    
                                    if v.Name ~= game.Players.LocalPlayer.Name then
                                if v:FindFirstChild("admin") then
                                    v.admin:Destroy()
                                end
                                end
                                end
                            end
                else
                names = whitelist
                                
                        for i,v in pairs(names) do
                            strlower = string.lower(v)
                            sub = string.sub(strlower,1,#name)
                                
                            if name == sub then
                                 table.remove(whitelist,i)
                            end
                        end
                end
                end
            
            if lower == ":wls" then
                for i,v in pairs(whitelist) do
                    print("Player #" .. i .. " Player: " .. v)
                end
            end
          
            if lower == ":ruin" then 
                house2 = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Simple House")
                house = house2:GetChildren()
                for i=1,#house,3 do
                    game.Workspace.Delete.delete:FireServer(house[i])
end
 
            end
 
            if lower == ":barriers" then
                if game.Workspace.Terrain.GameFolder.Workspace then
                    epicheskiy = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Obby Box")
                    game.Workspace.Delete.delete:FireServer(epicheskiy)
                end
            end
 
            if lower == ":removebarriers" then
                if game.Workspace.Terrain.GameFolder.Workspace then
                    epicheskiy = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Obby Box")
                    game.Workspace.Delete.delete:FireServer(epicheskiy)
                end
            end
 
            if lower == ":baseplate" then
                if game.Workspace.Terrain.GameFolder.Workspace.Baseplate then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate)
                end
            end
 
        if lower == ":tohouse" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-33.2027435, 8.22999954, 82.6940842))
            end
        if lower == ":gotohouse" then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(Vector3.new(-33.2027435, 8.22999954, 82.6940842))
            end
 
            if lower == ":removebaseplate" then
                if game.Workspace.Terrain.GameFolder.Workspace.Baseplate then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Workspace.Baseplate)
                end
            end
 
            if lower == ":removehouse" then
                if game.Workspace.Terrain.GameFolder.Workspace then
                    epicheskiy2 = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Basic House")
                    game.Workspace.Delete.delete:FireServer(epicheskiy2)
                end
            end
            if lower == ":house" then
                if game.Workspace.Terrain.GameFolder.Workspace then
                    epicheskiy2 = game.Workspace.Terrain.GameFolder.Workspace:FindFirstChild("Basic House")
                    game.Workspace.Delete.delete:FireServer(epicheskiy2)
                end
            end
    if lower == ":unlock" then
                   local function unlock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
            end
 
    if lower == "/e unlock" then
                   local function unlock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
            end
 
    if lower == "/e :unlock" then
                   local function unlock(instance) 
        for i,v in pairs(instance:GetChildren()) do
            if v:IsA("BasePart") then
                v.Locked = false
            end
            unlock(v)
        end
    end
    unlock(workspace)
            end
    
            if lower == ":breakgame" then
                if game.Workspace.Terrain then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Workspace)
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin)
                end
            end
 
            if lower == ":endme" then
                if game.Players.LocalPlayer then
                    game.Workspace.Delete.delete:FireServer(game.Players.LocalPlayer)
                end
            end
 
            if lower == ":removegame" then
                if game.Workspace.Terrain then
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Workspace)
                    game.Workspace.Delete.delete:FireServer(game.Workspace.Terrain.GameFolder.Admin)
                end
            end
            
            if lower == ":clear" then
                for i,v in pairs(game.Workspace:GetChildren()) do
                    if not v:IsA("Model") or not v:IsA("Camera") or not v:IsA("Terrain") then
                        game.Workspace.Delete.delete:FireServer(v)
                    end
                end
            end
            
            if string.find(lower,":cmds") then
 
        game.StarterGui:SetCore("ChatMakeSystemMessage", {
                Text = "Check the developer console for a list of  additional commands. (F9 or Shift + F9)";
                Color = Color3.new(127, 0, 0);
                Font = Enum.Font.SourceSansBold;
                FontSize = Enum.FontSize.Size24;
            })
 
 
                print("----------------COMMANDS-------------------")
                print("Selection options: Full Player Name, Abrreviated, Others")
                print('Example: ":ban others"')
                print()
                print(":cmds - I wonder what this does.")
                print(":ban - Prevents user from rejoining the server. (/e :ban and /e ban work)")
                print(":unban -can use :unban all")
                print(":bans - Shows bans in console")
                print(":slock on - Turns serverlock on")
                print(":slock off - Turns server lock off")
                print(":kick - Removes player from the game (/e :kick and /e kick work)")
                print(":wl - Whitelists the player (Can use commands, not on you though.)")
                print(":unwl - Unwhitelists the player")
                print(":wls -outputs whitelisted players to console (F9)")
                print(":obby - Removes obby at the start. (removeobby also works.)")
                print(":givers - Removes admin givers. (:removegivers :removepads and :pads also all work.)")
                print(":clear --removes parts placed by players (Re-do the script after you run this. Also, use the respawn command to get unstuck.)")
                print(":removehouse - removes house")
                print(":baseplate - Removes baseplate. (:removebaseplate also works.)")
                print(":regen - Removes baseplate. (:removeregen also works.)")
                print(":barriers - Removes barriers around spawn (:removebarriers also works.)")
                print(":breakgame - Breaks everything. (:removegame also works incase you got used to the remove commands.)")
                print(":frick - Kills the player (Doing it without the : yields the same results)")
                print(":heck - Deletes the player's character (Doing it without the : yields the same results)")
                print(":roof - Clones the baseplate over the map")
                print(":darkness - Clones multiple baseplates over the map (Casting a shadow on the map)")
                print(":unlock - Allows you to use your btools on any part in the game (/e unlock and /e :unlock work)")
        print(":gotohouse - Teleports you into the house")
                print()
                print('Executing "kick others/etc." wont kick those whitelisted, but if you single them out it will')
                print('If a user is whitelisted he/she will not be able to see commands on their screen with :cmds,')
                print('and the same goes for :bans and :wls, since the game is filtering enabled, however they will')
                print('be able to use commands if whitelisted')
                print('You can not be unwhitelisted or banned / kicked')
                print("If someone uses the clear / clr command, you must re-apply the script.")
                print("Most commands that effect players can be used silently. (Example /e :kick and /e kick would both work)")
                print("-------------------------------------------")
                print("Made by Timeless. (Updated by Vortex)")
                print("-------------------------------------------")
            
                
            end
            end
            end
 
game.Players.LocalPlayer.Chatted:connect(function(msg)
    adminexe(game.Players.LocalPlayer,msg)
end)
 
if deletepath then
    game.Players.LocalPlayer.Character.Delete.CanBeDropped = true
    
    drop = Instance.new("BillboardGui")
    drop.Parent = game.Players.LocalPlayer.PlayerGui
    
    droplbl = Instance.new("TextLabel")
    droplbl.Parent = drop
    droplbl.Text = "Drop the delete tool to initialize commands"
    droplbl.BackgroundTransparency = 1
    droplbl.TextColor3 = Color3.new(200,0,0)
    droplbl.TextScaled = true
    droplbl.Size = UDim2.new(0,150,0,30)
    droplbl.Position = UDim2.new(0,400,0,400)
    
    wait(2)
    
    drop:Destroy()
end
 
if deletepath2 then
    game.Players.LocalPlayer.Backpack.Delete.CanBeDropped = true
    
    drop = Instance.new("BillboardGui")
    drop.Parent = game.Players.LocalPlayer.PlayerGui
    
    droplbl = Instance.new("TextLabel")
    droplbl.Parent = drop
    droplbl.Text = "Drop the delete tool to initialize commands"
    droplbl.BackgroundTransparency = 1
    droplbl.TextColor3 = Color3.new(200,0,0)
    droplbl.TextScaled = true
    droplbl.Size = UDim2.new(0,150,0,30)
    droplbl.Position = UDim2.new(0,400,0,400)
    
    wait(2)
    
    drop:Destroy()
end
 
game.Players.LocalPlayer.Backpack.ChildAdded:connect(function(tool)
    if tool.Name == "Delete" then
        wait(.1)
        tool.CanBeDropped = true
        
        drop = Instance.new("BillboardGui")
    drop.Parent = game.Players.LocalPlayer.PlayerGui
    
    droplbl = Instance.new("TextLabel")
    droplbl.Text = "Drop the delete tool to initialize commands"
    droplbl.BackgroundTransparency = 1
    droplbl.Parent = drop
    droplbl.TextColor3 = Color3.new(200,0,0)
    droplbl.TextScaled = true
    droplbl.Size = UDim2.new(0,150,0,30)
    droplbl.Position = UDim2.new(0,400,0,400)
    
    wait(2)
    
    drop:Destroy()
    end
end)
 
    function start(plr)
        
    local found = false
    local banned = false
    
    for i=1,#whitelist do
        if plr.Name == (whitelist[i]) then
            found = true
        end
    end
 
        for i=1,#banlist do
              if plr.Name == banlist[i] then
            banned = true  
end
 
    if banned == true then
        game.Workspace.Delete.delete:FireServer(plr)
    end
end
    if found == false and slock == true then
        game.Workspace.Delete.delete:FireServer(plr)
    end
    
    if found == true then
        newtag(plr.Name)
        plr.Chatted:connect(function(msg)
            adminexe(plr,msg)
        end)
    end
        end
game.Players.PlayerAdded:connect(function(plr)
    start(plr)
end)
 
 
 
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Say :cmds for further instructions on how to access additional commands.";
        Color = Color3.new(127, 0, 0);
        Font = Enum.Font.SourceSansBold;
        FontSize = Enum.FontSize.Size24;
        })
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "Drop the hammer tool to get access to the extra commands. (Make sure to inject after giving yourself btools)";
        Color = Color3.new(0, 0, 127);
        Font = Enum.Font.SourceSansBold;
        FontSize = Enum.FontSize.Size24;
        })
    game.StarterGui:SetCore("ChatMakeSystemMessage", {
        Text = "If someone uses the clear / clr command, you'll have to re-apply the script.";
        Color = Color3.new(0, 127, 0);
        Font = Enum.Font.SourceSansBold;
        FontSize = Enum.FontSize.Size24;
        })