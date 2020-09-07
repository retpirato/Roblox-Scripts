_G.LoopHealToggle = true
while _G.LoopHealToggle and wait() do
workspace.Events.ChangeHealth:FireServer(100, true)
end