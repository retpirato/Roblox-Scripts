--[[
Made by Bean07#0001 / Bean07 on v3rm

Credits to: LeviTheOtaku for this TP Bypass

Please do not re rel or make a video on it without a proper credit!
]]
_G.YEET = true

function tp(x,y,z)local a=25;moving=true;if x<game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then while x<game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X-a,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))end end;if z<game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then while z<game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z-a))end end;if x>game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X then while x>game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X do wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X+a,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))end end;if z>game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z then while z>game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z do wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z+a))end end;if y<game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then while y<game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y-a,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))end end;if y>game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y then while y>game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y do wait()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(Vector3.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position.X,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Y+a,game.Players.LocalPlayer.Character.HumanoidRootPart.Position.Z))end end;moving=false end;spawn(function()game:getService("RunService"):BindToRenderStep("",0,function()if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid")then return end;if moving==true then game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)end end)end)game.Players.LocalPlayer.Character:MoveTo(Vector3.new(x,y,z))

while wait() and _G.YEET do
    pcall(function()
        local Target;
        for _, v in next, game.Players:GetPlayers() do
            if v.Team.Name == "Criminals" or v.Team.Name == "Villians" then
                if Target==nil or game.Players.LocalPlayer:DistanceFromCharacter(v.Character.HumanoidRootPart.Position) <= game.Players.LocalPlayer:DistanceFromCharacter(Target.Character.HumanoidRootPart.Position) then
                    Target = v
                end
            end
        end
        if game.Players.LocalPlayer:DistanceFromCharacter(Target.Character.HumanoidRootPart.Position) > 200 then
            local TP = Target.Character.HumanoidRootPart.Position
            tp(TP.x,TP.y,TP.z)
        end
        if game.Players.LocalPlayer.Character.Humanoid.Health > 25 then
            for i = 1, 5 do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Handcuffs"))
                game.ReplicatedStorage.Event:FireServer("Eject", Target)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Tazer"))
                game.ReplicatedStorage.Event:FireServer("TAZ", Target.Character.HumanoidRootPart)
            end
        else
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Handcuffs"))
            game.ReplicatedStorage.Event:FireServer("Arrest", Target)
        end
    end)
end