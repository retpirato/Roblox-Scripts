-- Leaked, but anyhow, when you enter a game, make sure you say :btools me, run the script and DROP YOUR DELETE TOOL!

local MainUI = game:GetObjects('rbxassetid://1110957552')[1]
MainUI.Parent = game.CoreGui

local text = MainUI.Frame.TextBox

local banned = {}


game.Players.LocalPlayer.Backpack.DescendantAdded:connect(function(item)
    if item:IsA("Tool") then
        item.CanBeDropped = true
    end
end)

game.Players.PlayerAdded:connect(function(plr)
    for i,v in pairs(banned) do
        if v == plr.Name then
            game.Workspace.Delete.delete:FireServer(plr)
        end
    end
end)

MainUI.Frame.Ban.MouseButton1Down:connect(function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name:lower():sub(1, string.len(text.Text)) == text.Text:lower() then
            table.insert(banned, v.Name)
            game.Workspace.Delete.delete:FireServer(v)
            break
        end
    end
end)

MainUI.Frame.Kick.MouseButton1Down:connect(function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Name:lower():sub(1, string.len(text.Text)) == text.Text:lower() then
            game.Workspace.Delete.delete:FireServer(v)
            break
        end
    end
end)