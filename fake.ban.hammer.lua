local player = game.Players.LocalPlayer
local char = player.Character
local invisible = false
local invisiblehammer = false

local tool = Instance.new("Tool",workspace)
tool.TextureId = "http://www.roblox.com/asset/?id=10684453"
tool.Enabled = true
tool.Name = "BanHammer"
local thma = Instance.new("Camera",tool)
thma.Name = "ThumbnailCamera"
local smack = Instance.new("Sound",tool)
smack.Name = "Smash"
smack.Volume = 1
smack.SoundId = "rbxassetid://147722910" -- rbxassetid://147722910 rbxassetid://514867425
local handle = Instance.new("Part",tool)
handle.Name = "Handle"
handle.Size = Vector3.new(1, 5.2, 1)
handle.Anchored = true
handle.Position = Vector3.new(0,6,0)
local txtfag = Instance.new("BillboardGui",handle)
txtfag.Name = "BanHammerLabel"
txtfag.Size = UDim2.new(2, 0, 1.2, 0)
txtfag.StudsOffset = Vector3.new(-5, 3, 0)
txtfag.Enabled = false
local textfag = Instance.new("TextLabel", txtfag)
textfag.Size = UDim2.new(6, 0, 1, 0)
textfag.FontSize = "Size8"
textfag.TextScaled = true
textfag.TextTransparency = 0
textfag.BackgroundTransparency = 1
textfag.TextTransparency = 0
textfag.TextStrokeTransparency = 0
textfag.Font = Enum.Font.Highway
textfag.Text = "The Ban Hammer"
textfag.TextStrokeColor3 = Color3.new(0.55, 0.9, 0.16)
local sparkles = Instance.new("Sparkles",handle)
sparkles.SparkleColor = Color3.new(0,0,0)
sparkles.Enabled = true
local mesh = Instance.new("SpecialMesh",handle)
mesh.Name = "Mesh"
mesh.MeshType = Enum.MeshType.FileMesh
mesh.MeshId = "http://www.roblox.com/asset/?id=10604848"
mesh.TextureId = "http://www.roblox.com/asset/?id=10605252"
mesh.Scale = Vector3.new(0.5,0.5,0.5)
mesh.Offset = Vector3.new(0,0,0)
mesh.VertexColor = Vector3.new(1,1,1)
script.Parent = tool
local animation = Instance.new("Animation",tool)
animation.Name = "Animation"
animation.AnimationId = "http://www.roblox.com/twohandswordwithswingout-item?id=32659706"
--Impletion [awful coding i know]
wait()
explode=false
soundlock=false
lock=false
script.Parent.Activated:connect(function(click)
	if lock==false then
	lock=true
	local char=script.Parent.Parent
	local anim=char.Humanoid:LoadAnimation(script.Parent.Animation)
	anim:Play()
	wait(1.4)
	lock=false
	end
end)

script.Parent.Handle.Touched:connect(function(hit)
	if tool.Parent.ClassName=="Model"then
	if hit.Parent:FindFirstChild("BanHammer")==nil then
	hit.Parent.Head.face.Texture = "http://www.roblox.com/asset/?id=432180642"
	local gethum=hit.Parent:GetChildren()
		for i=1,#gethum do
			if gethum[i].ClassName=="Humanoid" and gethum[i] ~= nil and hit.Parent.Name ~= tool.Parent.Name and lock==true then
				local hum=gethum[i]
				hum.Sit=true
				if soundlock==false then
					soundlock=true
					script.Parent.Smash:Play()
				end
			local character=hit.Parent
			local b=character:GetChildren()
				for i=1,#b do
					if b[i]:IsA("Part") and b[i] ~= nil then
						b[i].CanCollide=false
						b[i].Anchored=false
					end
				end
					local HumanoidRootPart=hit.Parent:findFirstChild("HumanoidRootPart")
					character.HumanoidRootPart.Velocity=tool.Parent.HumanoidRootPart.CFrame.lookVector * 1200 
					character.HumanoidRootPart.Velocity=character.HumanoidRootPart.Velocity + Vector3.new(0,300,0)
					wait(1.8)
					if explode==false then
						explode=true
						local expl=Instance.new("Explosion", workspace)
						expl.BlastPressure=900
						expl.BlastRadius=1
						expl.Position=HumanoidRootPart.Position
						for _,xccrptparts in pairs(character:GetChildren())do
							if xccrptparts.ClassName=="Part"then
							xccrptparts.Transparency = 0
							xccrptparts.Anchored = false
							end
							if xccrptparts.ClassName=="MeshPart"then
							xccrptparts.Transparency = 0
							xccrptparts.Anchored = false
							end
						end
						HumanoidRootPart.Transparency = 1
						local p=game.Players:GetPlayerFromCharacter(character)
						character.Humanoid:Destroy()
					end
				end
			end
	wait(1)
	soundlock=false
	explode=false
	end
	else
		if invisible==true then
	hit.Parent.Animate.walk.WalkAnim.AnimationId = "http://www.roblox.com/asset/?id=252557606"
	local invisibility = coroutine.wrap(function()
		for _,en in pairs(hit.Parent:GetChildren())do
			if en.ClassName=="Part"then
				local turninv = coroutine.wrap(function(part)
					for count = 1,10 do
						part.Transparency = part.Transparency + 0.1
						wait(.1)
					end
				end)
				turninv(en)
			end
			if en.ClassName=="MeshPart"then
				local turninv = coroutine.wrap(function(part)
					for count = 1,10 do
						part.Transparency = part.Transparency + 0.1
						wait(.1)
					end
				end)
				turninv(en)
			end
			if en.ClassName=="Hat"then
				local turninv = coroutine.wrap(function(part)
					for count = 1,10 do
						part.Transparency = part.Transparency + 0.1
						wait(.1)
					end
				end)
				turninv(en.Handle)
			end
			if en.ClassName=="Accessory"then
				local turninv = coroutine.wrap(function(part)
					for count = 1,10 do
						part.Transparency = part.Transparency + 0.1
						wait(.1)
					end
				end)
				turninv(en.Handle)
			end
		end
		for count = 1,10 do
			hit.Parent.Head.face.Transparency = hit.Parent.Head.face.Transparency + 0.1
			if invisiblehammer == true then
			handle.Transparency = handle.Transparency + 0.1
			end
			textfag.TextTransparency = textfag.TextTransparency + 0.1
			textfag.TextStrokeTransparency = textfag.TextStrokeTransparency + 0.1
			sparkles.Enabled = false
			wait(.1)
		end 
	end)
	invisibility()
	hit.Parent:WaitForChild("Humanoid").HealthDisplayDistance = 0
	hit.Parent:WaitForChild("Humanoid").NameDisplayDistance = 0
end
	end
end)

using = false

script.Parent.Equipped:connect(function(equip)
	wait(.1)
	tool.Parent.Humanoid.MaxHealth=math.huge*math.huge
	tool.Parent.Humanoid.Health=math.huge*math.huge
	tool.Parent.Humanoid.WalkSpeed=100
	using = true
end)

script.Parent.Unequipped:connect(function(equip)
	if not tool.Parent:FindFirstChild("Humanoid")~=nil then
	if not tool.Parent.Humanoid.Health==0 then
	wait(.1)
	tool.Parent.Parent.Character.Humanoid.MaxHealth=100
	tool.Parent.Parent.Character.Humanoid.Health=100
	tool.Parent.Parent.Character.Humanoid.WalkSpeed=16
	sparkles.SparkleColor = Color3.new(0,0,0)
	using = false
	end
	end
end)

local depth = 1
local speed = 50
local itsalive = Instance.new("Sound",tool)
itsalive.Name = "NotEquippedMusic"
itsalive.SoundId = "rbxassetid://149119648"
itsalive.Volume = 8.75
itsalive.Looped = true
function alive()
for i = 1, speed do wait()
handle.CFrame = handle.CFrame * CFrame.new(0,-depth/speed,0) 
end
for i = 1, speed do wait()
handle.CFrame = handle.CFrame * CFrame.new(0,depth/speed,0) 
end
end

print("Ban hammer Created!")

while true do
	if using==true then
		txtfag.Enabled = false
		handle.Anchored = false
		itsalive:Stop()
		sparkles.SparkleColor = BrickColor.Random().Color
		if tool.Parent:FindFirstChild("Humanoid")~=nil then
			tool.Parent = workspace
			handle.Position = handle.Position + Vector3.new(0,3,0)
			using=false
		end
		if tool.Parent:WaitForChild("Humanoid").Health==0 then
			tool.Parent = workspace
			handle.Position = handle.Position + Vector3.new(0,3,0)
			using=false
		end
		wait(.5)
	else
txtfag.Enabled = true
handle.Anchored = true
itsalive:Play()
repeat
sparkles.SparkleColor = Color3.new(0,0,0)
alive()
until using==true
	end
end
