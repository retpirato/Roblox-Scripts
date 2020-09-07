print()
wait(0.1)
local function esp()
   for i,v in pairs(game.Players:GetChildren()) do
       if v ~= game.Players.LocalPlayer.Character.Torso then    

   local base = Instance.new("BillboardGui", workspace.Camera)
   local esP = Instance.new("Frame", base)

   base.AlwaysOnTop = true
   base.Enabled = true
   base.Size = UDim2.new(2,0,2,0)
   base.Name = "ESP"
   base.Adornee = v.Character.Torso
   base.StudsOffset = Vector3.new(0, -0.75, 0)

   esP.BackgroundColor3 = Color3.new(255, 0, 0)
   esP.BackgroundTransparency = 0.8
   esP.BorderColor3 = Color3.new(0,0,0)
   esP.BorderSizePixel = 1
   esP.Size = UDim2.new(1,0,1,0)

   local name = Instance.new("TextLabel",base)
   name.Size = UDim2.new(1,0,1,0)
   name.BackgroundTransparency = 1
   name.Position = UDim2.new(0,0,0,0)
   name.Text = v.Name
   name.TextScaled = true
       name.TextColor3 = Color3.new(255,255,255)
   name.TextXAlignment = "Center"
   name.TextYAlignment = "Top"
       name.Font = "Highway"
       name.Position = UDim2.new(0,0,0,-100)
end        
   end
print("ESP Loaded!")
print("Created by Kid Atlaas/FileExplorer")
print("Modified by alex/Cxtrl")
end

game.Players.LocalPlayer.CharacterAdded:connect(esp)

esp()