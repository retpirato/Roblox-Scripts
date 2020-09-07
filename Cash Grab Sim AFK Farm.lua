toggleKey = 'r'; -- any letter or key. R by default.

local Services 	= setmetatable({},{__index=function(s,i) return game:service(i) end});

local plr 		= Services.Players.LocalPlayer;
local rem 		= Services.ReplicatedStorage.remotes.bindCustomer;
local uis		= Services.UserInputService;
local dep 		= workspace.zones.depositZone;
local enabled 	= true;
local key		= toggleKey or 'r';

uis.InputBegan:connect(function(data,gpe)
	if not gpe and data.UserInputType == Enum.UserInputType.Keyboard then
		local press = data.KeyCode.Name:lower();
		if key == press then
			enabled = not enabled;
			print('bot is now',enabled and 'enabled' or 'disabled');
		end
	end
end)

local function hasMax(getMax)
	local a,b = plr.PlayerGui.screenGui.customerList.header.textLabel.Text:match('(%d+)/(%d+)');
	return getMax and b or (a == b);
end
local function backpackIsFull(leasure)
	if not plr.Character then return false end
	local display = plr.Character:FindFirstChild('backpackDisplay', true)
	if not display then return false end 
	a,b = display.holder.textLabel.Text:match('(%d+)/(%d+)');
	return (a == b) or (tonumber(a) > tonumber(b)-(leasure or 0));
end


coroutine.resume(coroutine.create(function()
	while wait(1/15) do
		if enabled then
			if backpackIsFull(tonumber(hasMax(true))/10) then
				local cf = plr.Character.HumanoidRootPart.CFrame;
				plr.Character.HumanoidRootPart.CFrame = dep.CFrame;
				wait(1/20)
				plr.Character.HumanoidRootPart.CFrame = cf;
			end
		end
	end
end))

while wait() do
	if enabled then
		if not hasMax() then
			for i,v in ipairs(workspace.customers:children()) do
				if v:FindFirstChild('properties') and v.properties:FindFirstChild('owner') and not v.properties.owner.Value and not hasMax() and (plr.Character.HumanoidRootPart.CFrame.p-v.HumanoidRootPart.CFrame.p).magnitude < 100 then
					rem:FireServer(v);
					wait(.5);
				end
			end
		end
	end
end