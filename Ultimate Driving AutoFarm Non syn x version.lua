local lp = game:GetService"Players".LocalPlayer
local main = workspace["_Main"]
local vehicles = main.Vehicles

local originalcframe = lp.Character:FindFirstChild"HumanoidRootPart".CFrame
local gas = "Regular" -- Regular, Plus, Premium
local gasamount = 20 -- change to how low gas has to be for it to autofill

_G.toggle = true

while _G.toggle do
   for _,v in pairs(vehicles:GetChildren()) do
       if v:IsA"Model" then
           if v.VehicleSeat.Values.Driver.Value == lp then
               if v.VehicleSeat.Values.Gas.Value < gasamount then
                   v.PrimaryPart.Anchored = true
                   v:SetPrimaryPartCFrame(CFrame.new(36935, 38, 27576))
                   game:GetService"ReplicatedStorage".Events.RemoteEvent:FireServer("VehicleFillGas",{
                       gas,
                       lp.PlayerGui.Menus.GasStationMenu.GasStation.Value
                   })
               else
                   v.PrimaryPart.Anchored = false
                   v:SetPrimaryPartCFrame(originalcframe)
               end
           end
       end
   end
   wait(1)
end