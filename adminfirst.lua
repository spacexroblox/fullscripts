local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Admin Script",
   LoadingTitle = "06/06/24",
   LoadingSubtitle = "by Fede",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = Admin Hub, -- Create a custom folder for your hub/game
      FileName = "admin-autosave"
         
   },
   Discord = {
      Enabled = true,
      Invite = "697SeR9d", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
         
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Admin Hub | KeySystem",
      Subtitle = "join discord pls (from misc tab)",
      Note = "key is adminkey",
      FileName = "ismyadmincool", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/59W6AU2p"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("Player", 17745859334) -- Title, Image
local MainSection = MainTab:CreateSection("Player")

Rayfield:Notify({
   Title = "Executed!",
   Content = "Executed the admin!",
   Duration = 5,
   Image = 17745895274,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Slider = MainTab:CreateSlider({
   Name = "Walkspeed",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "Jump Power",
   Range = {0, 1000},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.Jump = (Value)
   end,
})
