--Ruiner Second  by tomonaoboys
--It's remake of Ruiner. but actuary not that.
script.Parent=nil local name="idk"local Visible=false
local Players=game:FindFirstChildOfClass("Players")local PL=Players.LocalPlayer local Mouse=PL:GetMouse()local debri=function(Item,Ltime)game:GetService("Debris"):AddItem(Item,Ltime)end
local function so(Id,Volume,Parent,spd)
	if PL:FindFirstChild("Sound")then if PL.Sound:FindFirstChildOfClass("Sound")==nil then Instance.new("Sound",PL.Sound)end local smo=PL.Sound:Clone()local e=smo:FindFirstChildOfClass("Sound")e.SoundId=Id e.Volume=Volume if spd~=nil then e.PlaybackSpeed=spd e:Play()e.Parent=Parent debri(smo,7)end
	else local m=Instance.new("Model",PL)m.Name="Sound"Instance.new("Sound",m)local smo=m:Clone()local e=smo:FindFirstChildOfClass("Sound")e.SoundId=Id e.Volume=Volume e.Parent=Parent if spd~=nil then e.PlaybackSpeed=spd debri(smo,7)end
	end
end
local function GetParticleEmitter()
	if PL:FindFirstChild("ParticleEmitter")then if PL.ParticleEmitter:FindFirstChildOfClass("ParticleEmitter")==nil then Instance.new("ParticleEmitter",PL.ParticleEmitter)end local smo=PL.ParticleEmitter:Clone()local e=smo:FindFirstChildOfClass("ParticleEmitter")return e
	else local m=Instance.new("Model",PL)m.Name="ParticleEmitter"Instance.new("ParticleEmitter",m)local smo=m:Clone()local e=smo:FindFirstChildOfClass("ParticleEmitter")return e
	end
end
function mov(part,vec3)local j=Instance.new("BodyVelocity",part)j.MaxForce=Vector3.new(1/0,1/0,1/0)j.Velocity=vec3 return j end function shoot(part,position,speed)if typeof(position)=='CFrame' then position=position.p end part.CFrame=CFrame.new(part.Position,position)return mov(part,part.Position-(part.CFrame*CFrame.new(0,0,speed)).p)end
function rot(part,vec3,pow)local j=Instance.new("BodyAngularVelocity",part)j.MaxTorque=Vector3.new(pow,pow,pow)j.AngularVelocity=vec3 return j end
local function CreateWeld(Parent,Part0,Part1,C0)local weld=Instance.new("Weld",Parent)weld.Part0=Part0 weld.Part1=Part1 weld.C0=C0 end
function CreatePart0(PName,Size,Color,Material,Collide,Transparency,Parent,Mesh)local part=Instance.new("Part")part.Name=PName part.Size=Size part.Transparency=Transparency part.CanCollide=Collide if typeof(Color)=="Color3" then part.Color=Color else part.BrickColor=Color end part.Material=Material part.Parent=Parent if Mesh~=nil then local m=Instance.new("SpecialMesh",part)m.MeshType=Mesh end return part end
local Create=LoadLibrary("RbxUtility").Create local RunService=game:GetService("RunService")
local function FindHumanoid(Part)local humanoid=nil if tostring(Part.Parent)~=PL.Name and Part.Parent
then if Part.Parent:FindFirstChildOfClass("Humanoid")~=nil then humanoid=Part.Parent:FindFirstChildOfClass("Humanoid")else if Part.Parent.Parent then if Part.Parent.Parent:FindFirstChildOfClass("Humanoid")and Part.Parent.Parent.Name~=PL.Name then humanoid=Part.Parent.Parent:FindFirstChildOfClass("Humanoid")end end end
end	return humanoid end
if 1 then
	SwordModel=Instance.new("Model")SwordModel.Name="RuinSword"
	local Center=CreatePart0("Center",Vector3.new(),Color3.new(),"SmoothPlastic",true,0,SwordModel)
	local mp=CreatePart0("MainPart",Vector3.new(.3,.3,1.2),Color3.new(),"SmoothPlastic",false,0,SwordModel)CreateWeld(Center,mp,Center,CFrame.new())
	local neon=CreatePart0("Neon",Vector3.new(.15,.45,4),Color3.new(.25,0,.5),"Neon",true,0,SwordModel)CreateWeld(mp,neon,mp,CFrame.new(0,0,-2.6))
	local pt=CreatePart0("Part",Vector3.new(),Color3.new(),"Neon",false,0,SwordModel)CreateWeld(mp,pt,mp,CFrame.Angles(0,math.rad(45),math.rad(0))*CFrame.new(0,0,.7))local m=Instance.new("SpecialMesh",pt)m.MeshId="rbxassetid://569102850"m.Scale=Vector3.new(.015,.01,.015)
	local pt=CreatePart0("Part",Vector3.new(.35,.65,.2),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel)CreateWeld(neon,pt,neon,CFrame.new(0,0,2))
	local pt=CreatePart0("Part",Vector3.new(.35,.65,.65),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,0,1.6))
	local pt=CreatePart0("Part",Vector3.new(.35,.325,.325),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(0,0,math.rad(180))*CFrame.new(0,-.15,1.45))
	local pt=CreatePart0("Part",Vector3.new(.35,.325,.325),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(math.rad(180),0,0)*CFrame.new(0,-.15,1.125))
	local pt=CreatePart0("Part",Vector3.new(.35,.65,.65),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(0,0,0)*CFrame.new(0,0,.975))
	local pt=CreatePart0("Part",Vector3.new(.351,.15,4),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel)CreateWeld(neon,pt,neon,CFrame.Angles(0,0,0)*CFrame.new(0,.25,0))
	local pt=CreatePart0("Part",Vector3.new(.35,.325,.325),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(0,0,math.rad(180))*CFrame.new(0,-.15,.225))
	local pt=CreatePart0("Part",Vector3.new(.35,.325,1),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel)CreateWeld(neon,pt,neon,CFrame.Angles(0,0,0)*CFrame.new(0,-.15,-.425))
	local pt=CreatePart0("Part",Vector3.new(.35,.65,.65),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(0,math.rad(180),0)*CFrame.new(0,0,.325))
	local pt=CreatePart0("Part",Vector3.new(.35,.325,.325),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(math.rad(180),0,0)*CFrame.new(0,-.15,-1.0875))
	local pt=CreatePart0("Part",Vector3.new(.351,.655,.655),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(0,math.rad(180),math.rad(180))*CFrame.new(0,0,-2.325))
	local pt=CreatePart0("Part",Vector3.new(.351,.655,.655),BrickColor.Black(),"SmoothPlastic",false,0,SwordModel,"Wedge")CreateWeld(neon,pt,neon,CFrame.Angles(0,0,0)*CFrame.new(0,0,-1.675))
	local a0=Instance.new("Attachment",Center)a0.Position=Vector3.new(0,.2,.6)local a1=Instance.new("Attachment",Center)a1.Position=Vector3.new(0,.2,5)
	local tr=Instance.new("Trail",SwordModel)tr.Attachment0=a1 tr.Attachment1=a0 tr.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(.1,0,0),NumberSequenceKeypoint.new(1,1,0)})tr.LightEmission=1 tr.Color=ColorSequence.new(Color3.new(.3,0,1))
	tr.Lifetime=.1 tr.Texture="rbxassetid://1120188157"SwordModel.PrimaryPart=neon
end
if 1 then
	LanceModel=Instance.new("Model")LanceModel.Name="Lance"
	local Center=CreatePart0("Center",Vector3.new(),Color3.new(),"SmoothPlastic",true,0,LanceModel)
	local mp=CreatePart0("MainPart",Vector3.new(15,.3,.3),BrickColor.Black(),"SmoothPlastic",false,0,LanceModel,"Cylinder")CreateWeld(Center,mp,Center,CFrame.new(5,0,0)*CFrame.Angles(0,math.rad(90),0))
	for i=1,11 do
		local pt=CreatePart0("Part",Vector3.new(.025,.301,0.301),Color3.new(.2,0,.66),"Neon",false,0,LanceModel,"Cylinder")CreateWeld(Center,pt,Center,CFrame.new(i/2-3,0,0)*CFrame.Angles(0,math.rad(90),0))
	end
	for i=1,72 do
		local pt=CreatePart0("Part",Vector3.new(.1,.1,9),Color3.new(.2,0,.66),"Neon",false,0,LanceModel)CreateWeld(Center,pt,Center,CFrame.Angles(0,math.rad(10),0)*CFrame.new(1,0,5)*CFrame.Angles(0,0,math.rad(i*10)))
		local pt=CreatePart0("Part",Vector3.new(.05,.41,9),BrickColor.Black(),"SmoothPlastic",false,0,LanceModel)CreateWeld(Center,pt,Center,CFrame.Angles(0,math.rad(10),0)*CFrame.new(1,0,5)*CFrame.Angles(0,0,math.rad(i*5)))
	end
	local pt=CreatePart0("Part",Vector3.new(2,.65,.65),BrickColor.Black(),"SmoothPlastic",false,0,LanceModel,"Cylinder")CreateWeld(Center,pt,Center,CFrame.new(10,0,0)*CFrame.Angles(0,math.rad(90),0))
	local pt=CreatePart0("Spike",Vector3.new(),BrickColor.Black(),"SmoothPlastic",false,0,LanceModel)CreateWeld(Center,pt,Center,CFrame.Angles(math.rad(90),math.rad(270),0)*CFrame.new(11,0,0)*CFrame.Angles(0,math.rad(90),0))local m=Instance.new("SpecialMesh",pt)m.MeshId="rbxassetid://1033714"m.Scale=Vector3.new(.325,4,.325)m.Offset=Vector3.new(0,1.5,0)
	local btm=CreatePart0("Bottom",Vector3.new(1,1,1),Color3.new(),"Neon",false,0,LanceModel,"Sphere")CreateWeld(Center,btm,Center,CFrame.new(0,0,-3))
	local pt=CreatePart0("Part",Vector3.new(0,1,1),Color3.new(.2,0,.66),"Neon",false,0,LanceModel,"Cylinder")CreateWeld(btm,pt,btm,CFrame.new())
	local pt=CreatePart0("Part",Vector3.new(0,1,1),Color3.new(.2,0,.66),"Neon",false,0,LanceModel,"Cylinder")CreateWeld(btm,pt,btm,CFrame.new()*CFrame.Angles(0,math.rad(90),0))
	local pt=CreatePart0("Part",Vector3.new(0,1,1),Color3.new(.2,0,.66),"Neon",false,0,LanceModel,"Cylinder")CreateWeld(btm,pt,btm,CFrame.new()*CFrame.Angles(0,0,math.rad(90)))
	LanceModel.PrimaryPart=mp
	local a0=Instance.new("Attachment",Center)a0.Position=Vector3.new(0,0,2.5)local a1=Instance.new("Attachment",Center)a1.Position=Vector3.new(0,0,-14)
	local tr=Instance.new("Trail",LanceModel)tr.Attachment0=a1 tr.Attachment1=a0 tr.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(.025,0,0),NumberSequenceKeypoint.new(1,1,0)})tr.LightEmission=1 tr.Color=ColorSequence.new(Color3.new(.3,0,1))
	tr.Lifetime=.3 tr.Texture="rbxassetid://1120188157"
	local a0=Instance.new("Attachment",btm)a0.Position=Vector3.new(.5,0,0)local a1=Instance.new("Attachment",btm)a1.Position=Vector3.new(-.5,0,0)
	local tr=Instance.new("Trail",LanceModel)tr.Attachment0=a1 tr.Attachment1=a0 tr.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0,1,0),NumberSequenceKeypoint.new(.025,0,0),NumberSequenceKeypoint.new(1,1,0)})tr.Color=ColorSequence.new(Color3.new())
	tr.Lifetime=.3 tr.Texture="rbxassetid://1120188157"tr.FaceCamera=true
end
local function GetHitBox(Model)if Model~=nil then
	local pt=Instance.new("Part")pt.CanCollide=false pt.Transparency=1 pt.Name="Hitbox"
	pt.Size=Vector3.new(.25,.55,4.2)CreateWeld(Model.PrimaryPart,pt,Model.PrimaryPart,CFrame.new())pt.Parent=Model return pt end
end
local function GetLanceHitBox(Model)if Model~=nil then
	local pt=Instance.new("Part")pt.CanCollide=false pt.Transparency=1 pt.Name="Hitbox"
	pt.Size=Vector3.new(17,.6,.6)CreateWeld(Model.PrimaryPart,pt,Model.PrimaryPart,CFrame.new(1,0,0))pt.Parent=Model return pt end
end
local function ClearHitBox(Model)if Model~=nil then local p=Model:GetChildren()
	for i=1,#p do
		if p.Name=="Hitbox"then p:Destroy()end
	end end
end

function idkX()local Ghost=false local SwordEquipped=false local Center=nil local WSpeed=30 local normalattack=0 local sword=nil local LanceEquipped=false
local Active=false local Stand=false local GDCharge=0 local Lance=nil
local PC=PL.Character local Humanoid=PC:FindFirstChildOfClass("Humanoid")local Torso=PC["Torso"]local CCamera=workspace.CurrentCamera
local HumanoidRootPart=PC["HumanoidRootPart"]
local function PlaySound(soundid,volume,speed)spawn(function()local s=Instance.new("Sound",workspace)s.SoundId=soundid s.PlayOnRemove=true s.Volume=volume if speed~=nil then s.PlaybackSpeed=speed end s:Play()wait(5)s.Volume=0 s:Remove()end)end
if PC:FindFirstChild("Animate")~=nil then PC.Animate:Remove()end if Humanoid:FindFirstChild("Animator")~=nil then Humanoid.Animator:Destroy()end local RightArm=PC["Right Arm"]local RightLeg=PC["Right Leg"]local LeftArm=PC["Left Arm"]local LeftLeg=PC["Left Leg"]local Head=PC["Head"]
local model=Instance.new("Model",PC)model.Name="Gauntlet"Instance.new("Model",model).Name="Effect"local model2=Instance.new("Model",model.Effect)model2.Name="Effect"
local efcfol=Instance.new("Model",workspace)efcfol.Name="Effects"
local function CreatePart1(Size,Color,Material,Collide,Transparency,Parent,Mesh)
local part=Instance.new("Part")part.Name=name part.Size=Size part.Transparency=Transparency part.CanCollide=Collide part.Color=Color part.Material=Material if Parent~="model"then part.Parent=Parent else part.Parent=model2 end if Mesh~=nil then local m=Instance.new("SpecialMesh",part)m.MeshType=Mesh end
return part end
local function a(part)local j=Instance.new("BodyVelocity",part)j.MaxForce=Vector3.new(1/0,1/0,1/0)j.Velocity=Vector3.new(0,0,0)end
local function pa(part)if part:IsA("Part")then part.Anchored=true end local c=part:GetChildren()for i=1,#c do pa(c[i])end end
local function ua(part)if part:IsA("Part")then part.Anchored=false end if part~=model2 then local c=part:GetChildren()for i=1,#c do ua(c[i])end end end
local function mov(part,vec3)local j=Instance.new("BodyVelocity",part)j.MaxForce=Vector3.new(1/0,1/0,1/0)j.Velocity=vec3 end
local sw=CreatePart1(Vector3.new(1.01,1,1.01),Color3.new(),"SmoothPlastic",false,0,model)CreateWeld(sw,RightArm,sw,CFrame.new(0,-.25,0))
local rotmain=CreatePart1(Vector3.new(.5,.5,.5),Color3.new(),"SmoothPlastic",false,1,model)local rotm=CreateWeld(rotmain,rotmain,sw,CFrame.new(0,5,0))
for i=1,8 do local sw=CreatePart1(Vector3.new(.5,.5,.5),Color3.new(.4,.4,.4),"SmoothPlastic",false,0,model)CreateWeld(sw,sw,rotmain,CFrame.new(0,1,0)*CFrame.Angles(math.rad(i*45),0,0))local m=Instance.new("SpecialMesh",sw)m.MeshId="rbxassetid://569102850"m.Scale=Vector3.new(.01,.01,.01)end
local newMotor=function(part0, part1, c0, c1)local w=Create('Motor'){Parent=part0,Part0=part0,Part1=part1,C0=c0,C1=c1}return w end
local function BreakSword()if PC:FindFirstChild("RuinSword")then local rs=PC.RuinSword rs:Destroy()end end local function BreakLance()if PC:FindFirstChild("Lance")then local l=PC.Lance l:Destroy()end end

local RootCF=CFrame.fromEulerAnglesXYZ(-1.57, 0, 3.14)local NeckCF=CFrame.new(0, 1, 0, -1, -0, -0, 0, 0, 1, 0, 1, 0)
local function clerp(a, b, t)return a:lerp(b, t)end
local RootPart=PC.HumanoidRootPart
local RootJoint=RootPart.RootJoint
local RW=newMotor(Torso,RightArm, CFrame.new(1.5, 0, 0), CFrame.new(0, 0, 0))local LW=newMotor(Torso,LeftArm, CFrame.new(-1.5, 0, 0), CFrame.new(0, 0, 0))
local RH=newMotor(Torso,RightLeg, CFrame.new(.5, -2, 0), CFrame.new(0, 0, 0))local LH=newMotor(Torso,LeftLeg, CFrame.new(-.5, -2, 0), CFrame.new(0, 0, 0))
RootJoint.C1=CFrame.new(0, 0, 0)RootJoint.C0=CFrame.new(0, 0, 0)Torso.Neck.C1=CFrame.new(0, 0, 0)Torso.Neck.C0=CFrame.new(0, 1.5, 0)local rarmc1=RW.C1
local larmc1=LW.C1 local rlegc1=RH.C1 local llegc1=LH.C1 local resetc1=false
local function PlayAnimationFromTable(table, speed, bool)
	RootJoint.C0=clerp(RootJoint.C0, table[1], speed) 
	Torso.Neck.C0=clerp(Torso.Neck.C0, table[2], speed) 
	RW.C0=clerp(RW.C0, table[3], speed)LW.C0=clerp(LW.C0, table[4], speed)RH.C0=clerp(RH.C0, table[5], speed)LH.C0=clerp(LH.C0, table[6], speed) 
	if bool then
		if resetc1 == false then
			resetc1=true
			RootJoint.C1=RootJoint.C1
			Torso.Neck.C1=Torso.Neck.C1
			RW.C1=rarmc1
			LW.C1=larmc1
			RH.C1=rlegc1
			LH.C1=llegc1
		end
	end
end
local AmagiccirclePart=Instance.new("Part",PC) AmagiccirclePart.Transparency=1 AmagiccirclePart.CanCollide=false AmagiccirclePart.Anchored=true local AmcDecal=Instance.new("Decal",AmagiccirclePart)AmcDecal.Face="Top"AmcDecal.Texture="rbxassetid://352539051"
local sys=coroutine.create(function()
	local shield={}
	for i=1,16 do
		shield[i]=Instance.new("Attachment",HumanoidRootPart)shield[i].Name="this should be used to shield"
	end
	local lift=.3 local cols=ColorSequence.new(Color3.new(.25,0,.5),Color3.new(0,0,0),Color3.new(0,0,0))
	for i=1,15 do
		local tr=Instance.new("Trail",PC)tr.Attachment0=shield[i]tr.Attachment1=shield[i+1]tr.Transparency=NumberSequence.new(0,1)tr.Lifetime=lift tr.Color=cols
	end
	local tr=Instance.new("Trail",PC)tr.Attachment0=shield[1]tr.Attachment1=shield[16]tr.Transparency=NumberSequence.new(0,1)tr.Lifetime=lift tr.Color=cols
	local rotm=rotmain.Weld
	local PC=PL.Character
	local Phm=nil
	if PC:FindFirstChildOfClass("Humanoid")~=nil then Phm=PC:FindFirstChildOfClass("Humanoid")end
	local countmc=0
	local BillBoard2=Instance.new("BillboardGui",workspace)BillBoard2.StudsOffsetWorldSpace=Vector3.new(0,3,0)BillBoard2.Parent=HumanoidRootPart BillBoard2.Size=UDim2.new(1,0,1,0)
	local TLabel2=Instance.new("TextLabel",BillBoard2)TLabel2.Text=tostring(PL)TLabel2.Font="Bodoni"TLabel2.TextSize=20 TLabel2.Size=UDim2.new(1,0,1,0) TLabel2.BackgroundTransparency=1
	TLabel2.BorderSizePixel=0 TLabel2.TextStrokeTransparency=0 TLabel2.TextColor3=Color3.fromRGB(256,256,256)BillBoard2.AlwaysOnTop=true
	--[[local Lance=LanceModel:Clone()Lance.Parent=PC
	CreateWeld(PC,Lance.Center,RightArm,CFrame.new(0,1,0))]]--
	RunService:BindToRenderStep("System",32,function()
		if not PC.Parent or not PC or PL.Character~=PC then RunService:UnbindFromRenderStep("System")PC:Destroy()end if not PC.Parent then RunService:UnbindFromRenderStep("System")PC:Destroy()end
		if not SwordEquipped then Center=nil sword=nil end if not Active then WSpeed=30 end
		if LanceEquipped then if not Active then WSpeed=5 end else Lance=nil end
		for i=1,16 do
			shield[i].Position=CFrame.Angles(0,math.rad(i*22.5),0)*CFrame.Angles(countmc/40,0,0)*CFrame.new(0,0,4).p
		end
		if PC.Parent==workspace then Ghost=false end if not Ghost then PC.Parent=workspace end
		rotm.C0=CFrame.new(-.7,0,0)*CFrame.Angles(countmc/100,0,0)
		CCamera.FieldOfView=70
		local shi=Instance.new("Part")shi.CanCollide=false shi.Transparency=1 shi.Shape="Ball"shi.Size=Vector3.new(8)shi.Position=HumanoidRootPart.CFrame.p+Vector3.new(0,.05,0)shi.Name="idk"
		shi.Touched:connect(function(t)local hum=FindHumanoid(t)if hum then if hum.Health~=0 then hum.Health=nil so("rbxassetid://260433721",10,t,1)t:Remove()hum.Parent:BreakJoints()end end end)
		debri(shi,.05)shi.Parent=model2
		local r=Ray.new(Torso.Position,(CFrame.new(0,-1,0)*CFrame.Angles(0,math.rad(90),0).p).unit*10)
		local idk,pos=workspace:FindPartOnRay(r,PC,false,true)
		AmagiccirclePart.Size=Vector3.new(6,0.1,6)ua(PC)AmagiccirclePart.Parent=nil
		AmagiccirclePart.CFrame=CFrame.new(pos)AmagiccirclePart.Orientation=Vector3.new(0,countmc,0)countmc=countmc+5
		AmagiccirclePart.Parent=PC AmagiccirclePart.Transparency=1 AmagiccirclePart.Anchored=true AmagiccirclePart.CanCollide=false
		if PC:FindFirstChildOfClass("Humanoid")~=nil then Phm=PC:FindFirstChildOfClass("Humanoid")else Phm=Instance.new("Humanoid",PC)Humanoid=Phm end
		workspace.CurrentCamera.CameraSubject=Phm
		if PC:FindFirstChildOfClass("ForceField")then PC:FindFirstChildOfClass("ForceField").Visible=false else Instance.new("ForceField",PC)end
		Phm.MaxHealth=(1/0)/(1/0)Phm.Health=(1/0)/(1/0)Phm.PlatformStand=false Phm.Name=""if Stand then Phm.WalkSpeed=0 else Phm.WalkSpeed=WSpeed end Phm.JumpPower=50
		PL:FindFirstChildOfClass("Backpack"):ClearAllChildren()Phm.Sit=false Phm.HealthDisplayType="AlwaysOff"
		local child=PC.Torso:GetChildren()for i=1,#child do if not child[i]:IsA("Motor6D")and not child[i]:IsA("Motor")and not child[i]:IsA("Attachment")then child[i]:Destroy()end end
		if PC:FindFirstChild("Left Arm")then local child=PC["Left Arm"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		if PC:FindFirstChild("Left Leg")then local child=PC["Left Leg"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		if PC:FindFirstChild("Right Arm")then local child=PC["Right Arm"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		if PC:FindFirstChild("Right Leg")then local child=PC["Right Leg"]:GetChildren()for i=1,#child do if not child[i]:IsA("Attachment")then child[i]:Destroy()end end end
		local child=PC.Head:GetChildren()for i=1,#child do if not child[i]:IsA("SpecialMesh")and not child[i]:IsA("Weld")and not child[i]:IsA("Attachment")and child[i].Name~="face"then child[i]:Destroy()end end
	end)
end)
Mouse.KeyDown:connect(function(key)
	if key=="w"then	walkW=true Mouse.KeyUp:connect(function(key)if key=="w" then walkW=false end end)end if key=="s"then walkS=true Mouse.KeyUp:connect(function(key)if key=="s" then walkS=false end end)end
	if key=="a"then	walkA=true Mouse.KeyUp:connect(function(key)if key=="a" then walkA=false end end)end if key=="d"then walkD=true Mouse.KeyUp:connect(function(key)if key=="d" then walkD=false end end)end
end)
local walk=coroutine.create(function()local c=0
	while wait()do
		if not Active then
			c=c+.5
			if not LanceEquipped then
			if walkW or walkA or walkS or walkD then
				GDCharge=GDCharge+1
				PlayAnimationFromTable({
				CFrame.new(0, 0, 0) * CFrame.Angles(-.6, 0, 0),
				CFrame.new(0, 1.5, 0) * CFrame.Angles(0,0, 0),
				CFrame.new(1.5, 0, .5) * CFrame.Angles(math.rad(-45), 0,math.rad(15)),
				CFrame.new(-1.5, 0, math.sin(c)*-2) * CFrame.Angles(math.sin(c)*2,0,0),
				CFrame.new(.5, -2,-math.sin(c)*2.6) * CFrame.Angles(math.sin(c)*2.6,0,0),
				CFrame.new(-.5, -2,-math.sin(-c)*2.6) * CFrame.Angles(math.sin(-c)*2.6, 0, 0),
				},.1,false)
			else
			GDCharge=0 Ghost=false
			if SwordEquipped then
			PlayAnimationFromTable({
			CFrame.new(0, 0, 0) * CFrame.Angles(0, -.4, 0),
			CFrame.new(0, 1.5, 0) * CFrame.Angles(0, .4, 0),
			CFrame.new(1.5, 0, .4) * CFrame.Angles(-.3+math.sin(c/5)/20, -1.3+math.sin(c/5)/10, 0),
			CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, .3, -.5),
			CFrame.new(.6, -2, 0) * CFrame.Angles(0, 0, .2),
			CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, -.2),
			},.1,false)
			else
			PlayAnimationFromTable({CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(1.5, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(.5, -2, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, 0),
			},.1,false)end
			end
			else
				GDCharge=0 Ghost=false
				if walkW or walkA or walkS or walkD then
				PlayAnimationFromTable({
				CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
				CFrame.new(0, 1.5, 0) * CFrame.Angles(0,0, 0),
				CFrame.new(1.5, 0, -.4) * CFrame.Angles(.5+math.sin(c/5)/40, .9+math.sin(c/5)/40, 1),
				CFrame.new(-1.5, 0, math.sin(-c/10)) * CFrame.Angles(math.sin(c/10),0,0),
				CFrame.new(.5, -2,-math.sin(c/10)) * CFrame.Angles(math.sin(c/10),0,0),
				CFrame.new(-.5, -2,-math.sin(-c/10)) * CFrame.Angles(math.sin(-c/10), 0, 0),
				},.1,false)
				else
				PlayAnimationFromTable({
				CFrame.new(0, 0, 0) * CFrame.Angles(0, -.4, 0),
				CFrame.new(0, 1.5, 0) * CFrame.Angles(0, .4, 0),
				CFrame.new(1.5, 0, -.4) * CFrame.Angles(.5+math.sin(c/5)/40, -.4+math.sin(c/5)/40, 0),
				CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, .3, -.5),
				CFrame.new(.6, -2, 0) * CFrame.Angles(0, 0, .2),
				CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, -.2),
				},.1,false)
				end
			end
		end
	end
end)
coroutine.resume(sys)coroutine.resume(walk)
game:GetService("UserInputService").InputBegan:connect(function(Key, Gpe)
	if PC.Parent and not Ghost then
		if not Gpe then	
			if Key.KeyCode==Enum.KeyCode.E and GDCharge>60 and not Ghost and not Active then
				Ghost=true PC.Parent=workspace.CurrentCamera local Number=0
				RunService:BindToRenderStep("GhostDash",15,function()
					if Number%5==0 then
					local part=CreatePart1(Vector3.new(),Color3.new(),"Neon",false,0,workspace,"Sphere")local m=part.Mesh part.Anchored=true
                    local pos=AmagiccirclePart.CFrame part.CFrame=pos
					RunService:BindToRenderStep("Effect:GD"..tostring(Number),0,function()part.Transparency=part.Transparency+.01 m.Scale=m.Scale+Vector3.new(2,0,2)if part.Transparency>=1 then part:Remove()RunService:UnbindFromRenderStep("Effect:GD"..tostring(Number))end end)end
					if not Ghost or not PC or not PC.Parent or GDCharge<60 then RunService:UnbindFromRenderStep("GhostDash")end
					Number=Number+1
				end)
			elseif Key.KeyCode==Enum.KeyCode.G and not Active then
				local ray = Ray.new((Torso.CFrame+Vector3.new(0,10,0)).p,(Mouse.Hit.p - Torso.Position-Vector3.new(0,10,0)).unit * 2000)
				local idk, position = workspace:FindPartOnRay(ray, PC, false, true)
				local distance = ((Torso.CFrame+Vector3.new(0,10,0)).p - position).magnitude
				local beam=Instance.new("Part",model2)beam.CanCollide=false beam.Material="Neon"beam.Anchored=true a(beam)
				beam.Color=Color3.new(0,0,0)
				beam.Size=Vector3.new(1,1,distance)
				beam.CFrame = CFrame.new((Torso.CFrame+Vector3.new(0,10,0)).p, position) * CFrame.new(0, 0, -distance / 2)
				local part=CreatePart1(Vector3.new(15,15,15),Color3.new(0,0,0),"Neon",false,0,"model","Sphere")local pos=CFrame.new(position)a(part)
				local mesh=part.Mesh
				part.CFrame=pos part.Anchored=true
				part.Touched:connect(function(pt)
					local hum=FindHumanoid(pt)
					if hum then
						pt.Position=pt.Position
						local pa=GetParticleEmitter()pa.Speed=NumberRange.new(0)pa.Lifetime=NumberRange.new(1)pa.Transparency=NumberSequence.new(0,1)pa.Rate=100
						pa.Acceleration=Vector3.new(0,5,0)
						pa.Texture="rbxassetid://410256160"pa.Color=ColorSequence.new(Color3.new(.1,0,.7),Color3.new(0,1,1))
						pa.Parent=pt
						hum.Health=-1
						hum.MaxHealth=-1
						spawn(function()wait(5)pa.Enabled=false for i=1,40 do pt.Anchored=true pt.Transparency=i/40 wait()end pt:Remove()end)
					end
				end)
				for i=1,60 do
					if beam.Parent then beam.Transparency=i/30 end
					mesh.Scale=Vector3.new(1+i/12,1+i/12,1+i/12)part.Transparency=i/60
					wait()
				end
				beam:Remove()
				part:Remove()
			elseif Key.KeyCode==Enum.KeyCode.R and not Active and SwordEquipped then
				local m=Instance.new("Model",workspace)m.Name="The Hell Master's Jail"
				local Position=Mouse.Hit
				if PC:FindFirstChild("RuinSword")then BreakSword()end SwordEquipped=false 
				for i=1,50 do
				local s=SwordModel:Clone()s.Parent=m s.Neon.CFrame=CFrame.new(Position.p+Vector3.new(math.random(20)-10,100,math.random(20)-10))s.Neon.CFrame=s.Neon.CFrame*CFrame.Angles(math.rad(270),math.rad(360),math.random(360))
				local j=shoot(s.Neon,Position.p+Vector3.new(math.random(8)-4,math.random(8)-4,math.random(8)-4),300+math.random(200))local hit=false
				s.Neon.Touched:connect(function(pt)if tostring(pt.Parent)~="RuinSword"then local h=FindHumanoid(pt)if h~=nil then h.Health=nil h.MaxHealth=nil end if hit==false then hit=true j:Destroy()s.Center.RotVelocity=Vector3.new()s.Center.Velocity=Vector3.new()pa(s)pt.Anchored=true if pt.Name~="Base"and pt.Name~="Baseplate"then pt.CFrame=pt.CFrame-Vector3.new(0,.25,0)end end end end)
				s.Center.Touched:connect(function(pt)if tostring(pt.Parent)~="RuinSword"then local h=FindHumanoid(pt)if h~=nil then h.Health=nil h.MaxHealth=nil end if hit==false then hit=true j:Destroy()s.Center.RotVelocity=Vector3.new()s.Center.Velocity=Vector3.new()pa(s)pt.Anchored=true if pt.Name~="Base"and pt.Name~="Baseplate"then pt.CFrame=pt.CFrame-Vector3.new(0,.25,0)end end end end)
				wait()end debri(m,30)
			elseif Key.KeyCode==Enum.KeyCode.K and not Active and not LanceEquipped then normalattack=0
				if SwordEquipped then BreakSword()SwordEquipped=false print("Removed Sword")
				else
				sword=SwordModel:Clone()sword.Parent=PC CreateWeld(sword,sword.Center,RightArm,CFrame.new(0,1,0))Center=sword.Center SwordEquipped=true print("Equipped Sword")
				end
			elseif Key.KeyCode==Enum.KeyCode.M and not Active and not SwordEquipped then normalattack=1
				if LanceEquipped then
					BreakLance()LanceEquipped=false
				else
				Lance=LanceModel:Clone()Lance.Parent=PC
				CreateWeld(PC,Lance.Center,RightArm,CFrame.new(0,1,1.5))LanceEquipped=true
				end
			elseif Key.KeyCode==Enum.KeyCode.L and not Active then
				--if Visible then Visible=false print("Disabled")if workspace.CurrentCamera:FindFirstChild("Visibler")then workspace.CurrentCamera.Visibler:Remove()end else Visible=false print("Enabled")end
			end
		end
	end
end)
Mouse.Button1Down:connect(function()
	if PL.Character==PC then
	if SwordEquipped and not Active then
		Active=true WSpeed=8
		local count=0
		if normalattack==0 then
		so("rbxassetid://978101945",10,workspace,.25)
		local hb=GetHitBox(sword)
		hb.Touched:connect(function(pt)local h=FindHumanoid(pt)if h then h.MaxHealth=nil spawn(function()pt.Anchored=true pt.CanCollide=false for i=0,1,.1 do pt.Transparency=i wait()end pt:Destroy()end)end end)
		RunService:BindToRenderStep("SwordAttack",0,function()
			count=count+1
			PlayAnimationFromTable({CFrame.new(0, 0, 0) * CFrame.Angles(0, count/6, 0),
			CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(1.5, 0, 0) * CFrame.Angles(0, count/15, 1.5),
			CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(.5, -2, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, 0),
			},1,false)
			if count>=20 then Active=false RunService:UnbindFromRenderStep("SwordAttack")ClearHitBox(sword)
			local s=SwordModel:Clone()s.Parent=workspace s.Neon.CFrame=CFrame.new(Mouse.Hit.p+Vector3.new(0,100,0))s.Neon.CFrame=s.Neon.CFrame*CFrame.Angles(math.rad(270),math.rad(180),math.random(360))
			local j=shoot(s.Neon,s.Neon.Position-Vector3.new(0,-50,0),-250)local hit=false
			s.Neon.Touched:connect(function(pt)local h=FindHumanoid(pt)if h~=nil then h.Health=nil h.MaxHealth=nil end if hit==false then hit=true j:Destroy()s.Center.RotVelocity=Vector3.new()s.Center.Velocity=Vector3.new()pa(s)debri(s,10)end end)
			s.Center.Touched:connect(function(pt)local h=FindHumanoid(pt)if h~=nil then h.Health=nil h.MaxHealth=nil end if hit==false then hit=true j:Destroy()s.Center.RotVelocity=Vector3.new()s.Center.Velocity=Vector3.new()pa(s)debri(s,10)end end)
			end
		end)
		elseif normalattack==1 then
			
		elseif normalattack==2 then
			
		end
	elseif LanceEquipped and not Active then
		Active=true WSpeed=8
		local count=0
		if normalattack==0 then
		so("rbxassetid://978101945",10,workspace,.2)
		GetLanceHitBox(Lance).Touched:connect(function(pt)local h=FindHumanoid(pt)if h then h.MaxHealth=nil spawn(function()pt.Anchored=true pt.CanCollide=false for i=0,1,.1 do pt.Transparency=i wait()end pt:Destroy()end)end end)
		RunService:BindToRenderStep("LanceAttack",0,function()
			count=count+1
			PlayAnimationFromTable({CFrame.new(0, 0, 0) * CFrame.Angles(0, count/6, 0),
			CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(1.5, 0, 0) * CFrame.Angles(0, count/20, 1.5),
			CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(.5, -2, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, 0),
			},1,false)
			if count%31==0 then so("rbxassetid://978101945",10,workspace,.2)end
			if count>=60 then Active=false RunService:UnbindFromRenderStep("LanceAttack")ClearHitBox(Lance)
			end
		end)normalattack=1
		elseif normalattack==1 then
			so("rbxassetid://978101945",10,workspace,.5)
		GetLanceHitBox(Lance).Touched:connect(function(pt)local h=FindHumanoid(pt)if h then h.MaxHealth=nil spawn(function()pt.Anchored=true pt.CanCollide=false for i=0,1,.1 do pt.Transparency=i wait()end pt:Destroy()end)end end)
		PlayAnimationFromTable({CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(1.5, 0, 0) * CFrame.Angles(2.6, 0, 0),
			CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(.5, -2, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, 0),
			},1,false)
		RunService:BindToRenderStep("LanceAttack",0,function()
			count=count+1
			PlayAnimationFromTable({CFrame.new(0, 0, 0) * CFrame.Angles(0, math.rad(20), 0),
			CFrame.new(0, 1.5, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(1.5, 0, 0) * CFrame.Angles(-.2, 0, 0),
			CFrame.new(-1.5, 0, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(.5, -2, 0) * CFrame.Angles(0, 0, 0),
			CFrame.new(-.5, -2, 0) * CFrame.Angles(0, 0, 0),
			},.1,false)
			if count>=60 then Active=false RunService:UnbindFromRenderStep("LanceAttack")ClearHitBox(Lance)
			end
		end)normalattack=0
		end
	end
	end
end)
end
if PL.Character then idkX()end
PL.CharacterAdded:connect(function()spawn(function()wait(.5)idkX()end)end)
local function humanoidvisibler(model,vib,tr)
	local ch=model:GetChildren()
	for i=1,#ch do
		if ch[i]:IsA("Part")and tostring(ch[i])~="HumanoidRootPart"then
			local p=Instance.new("Part") p.Size=ch[i].Size p.Transparency=1 p.Color=ch[i].Color p.CanCollide=false p.CFrame=ch[i].CFrame
			CreateWeld(p,p,ch[i],CFrame.new(0,0,0))p.Parent=vib
			local sc=Instance.new("SurfaceGui",p)sc.AlwaysOnTop=true local tb=Instance.new("TextBox",sc)tb.Size=UDim2.new(1,0,1,0)tb.BorderSizePixel=0 tb.BackgroundTransparency=tr tb.BackgroundColor3=ch[i].Color
			tb.Text=""
			local sc2=sc:Clone()sc2.Parent=p sc2.Face="Top"local sc2=sc:Clone()sc2.Parent=p sc2.Face="Back"local sc2=sc:Clone()sc2.Parent=p sc2.Face="Bottom"
			local sc2=sc:Clone()sc2.Parent=p sc2.Face="Left"local sc2=sc:Clone()sc2.Parent=p sc2.Face="Right"
		end
	end
end
local function v_find(parent,vib,tr)
	if parent:FindFirstChildOfClass("Humanoid")and tostring(parent)~=PL.Name then humanoidvisibler(parent,vib,tr)end
	local c=parent:GetChildren()for i=1,#c do v_find(c[i],vib,tr)end
end
local nu=0
spawn(function()
	while true do
		if Visible then
		local vib=Instance.new("Model",workspace.CurrentCamera)vib.Name="Visibler"
		v_find(workspace,vib,.7)
		end
		wait(2)
		if workspace.CurrentCamera:FindFirstChild("Visibler")then workspace.CurrentCamera.Visibler:Remove()end
	end
end)