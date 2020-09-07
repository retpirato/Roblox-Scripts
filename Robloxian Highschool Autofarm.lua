spawn(function()
while true do 
wait()
if game.ReplicatedStorage.Data.PlayerData[game.Players.LocalPlayer.Name].Jobs.Working.Value == false then
game.ReplicatedStorage.Systems.JobService['BeginJob']:InvokeServer("RetailStore")
end
end
end)


spawn(function()
while true do 
wait()
pcall(function()
function getItem(item)
local shelves = workspace.Jobs.RetailStore.Shelves:getChildren()
for i=1,#shelves do
if shelves[i].Item.Value == item then
game.ReplicatedStorage.Modules.Jobs.RetailStore['PutItemInBasket']:FireServer(shelves[i])
break
end
end
local fridges = workspace.Jobs.RetailStore.Fridges:getChildren()
for i=1,#fridges do
if fridges[i].Item.Value == item then
game.ReplicatedStorage.Modules.Jobs.RetailStore['PutItemInBasket']:FireServer(fridges[i])
break
end
end
end
local jobNpcs = workspace.Jobs.RetailStore.NPCs:getChildren()
for i=1,#jobNpcs do 
if jobNpcs[i]:findFirstChild("OrderBillboard") then 
if tostring(jobNpcs[i].Order.Player.Value) == game.Players.LocalPlayer.Name then 
if jobNpcs[i].Order.NumberOfItems.Value == 1 then 
getItem(jobNpcs[i].Order.ItemA.Value)
end
if jobNpcs[i].Order.NumberOfItems.Value == 2 then 
getItem(jobNpcs[i].Order.ItemA.Value)
getItem(jobNpcs[i].Order.ItemB.Value)
end
if jobNpcs[i].Order.NumberOfItems.Value == 3 then 
getItem(jobNpcs[i].Order.ItemA.Value)
getItem(jobNpcs[i].Order.ItemB.Value)
getItem(jobNpcs[i].Order.ItemC.Value)
end
repeat 
wait()
until jobNpcs[i].Order.Ready.Value == true
game.ReplicatedStorage.Modules.Jobs.RetailStore['GiveBasket']:InvokeServer(jobNpcs[i])
jobNpcs[i]:remove()
end
end
end
end)
end
end)