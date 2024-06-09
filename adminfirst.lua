local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Admin Hub | Universal", HidePremium = false, SaveConfig = true, ConfigFolder = "orionadminhub"})

local Tab1 = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://17745859305",
	PremiumOnly = false
})

OrionLib:MakeNotification({
	Name = "Locked & Loaded",
	Content = "Executed script, enjoy!",
	Image = "rbxassetid://4483345998",
	Time = 5
})


Tab1:AddSlider({
	Name = "Walkspeed",
	Min = 16,
	Max = 5000,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
		print(Value)
	end    
})

Tab1:AddSlider({
	Name = "Jump Power",
	Min = 50,
	Max = 5000,
	Default = 50,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Power",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
		print(Value)
	end    
})

Tab1:AddToggle({
	Name = "Inf Jump",
	Default = false,
	Callback = function(Value)
        --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = false
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="WeAreDevs.net"; Text="The WeAreDevs Infinite Jump exploit is ready!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
		print(Value)
	end    
})

Tab1:AddButton({
	Name = "Fly, Keyboard (G to fly)",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/GGH52lan/GGH52lan/main/keyboard.txt"))()
		loadstring(game:HttpGet("https://pastebin.com/raw/8uzbykJb"))()
      		print("Fly And Keyboard")
  	end    
})



local Tab1 = Window:MakeTab({
	Name = "Troll",
	Icon = "rbxassetid://17745895217",
	PremiumOnly = false
})

Tab1:AddButton({
	Name = "Bang Script",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/spacexroblox/fullscripts/main/bang-script.lua"))()
      		print("Bang Loaded")
  	end    
})

Tab1:AddButton({
	Name = "Infinite Yield Bang",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
      		print("Inf IY Loaded")
  	end    
})

Tab1:AddButton({
	Name = "Fling ALL (only games where u can go on people!)",
	Callback = function()
		loadstring(game:HttpGet("https://pastebin.com/raw/zqyDSUWX"))()
      		print("Fling All Loaded")
  	end    
})

local Tab1 = Window:MakeTab({
	Name = "ESP ecc.",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab1:AddButton({
	Name = "ESP Loader",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/zzerexx/scripts/main/UniversalEsp.lua'))()
      		print("ESP Loaded")
  	end    
})

Tab1:AddButton({
	Name = "Aimbot (ONLY MOUSE)",
	Callback = function()
		local Aimbot = loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V3/main/src/Aimbot.lua"))()
		Aimbot.Load()
      		print("Aimbot Mouse")
  	end    
})

Tab1:AddButton({
	Name = "AimBot Skidded (GUI)",
	Callback = function()
		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Yousuck780/troll-x/main/ahhhh"), true))()
      		print("Aimbot Skidded Loaded")
  	end    
})

local Tab1 = Window:MakeTab({
	Name = "Misc (Games, ecc)",
	Icon = "rbxassetid://17798380037",
	PremiumOnly = false
})

Tab1:AddButton({
	Name = "Cart ride troll 1",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/ZOMBIEKING9998/ZOMBIEKING9998/main/Cart%20Ride%20INTO%20Rdite"))()
      		print("Rdite V96")
  	end    
})

Tab1:AddButton({
	Name = "Cart ride troll 2",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/spacexroblox/fullscripts/main/rdite.lua"))()
      		print("cart ride troll")
  	end    
})

Tab1:AddButton({
	Name = "Fling Things And People",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/BlizTBr/scripts/main/FTAP.lua"))()
      		print("FTAP")
  	end    
})
