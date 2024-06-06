local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()

local Window = ArrayField:CreateWindow({
   Name = "Admin Hub",
   LoadingTitle = "Admin Hub",
   LoadingSubtitle = "by Fede",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = AdminHUB, -- Create a custom folder for your hub/game
      FileName = "adminz"
   },
   Discord = {
      Enabled = true,
      Invite = "4uJAyPKc", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Admin Hub | KeySystem",
      Subtitle = "🤨",
      Note = "Giving u they key bc, adminkey - is the key",
      FileName = "zazakey", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"adminkey"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

ArrayField:Notify({
   Title = "Admin Executed!",
   Content = "Admin executed, you're good to go",
   Duration = 5,
   Image = 17745895217,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
 },
})

local MainTab = Window:CreateTab("Player", 17745859305) -- Title, Image

local Slider = MainTab:CreateSlider({
   Name = "Speed",
   Range = {0, 5000},
   Increment = 1,
   Suffix = nil,
   CurrentValue = 16,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower",
   Range = {0, 5000},
   Increment = 1,
   Suffix = nil,
   CurrentValue = 50,
   Flag = "Speed", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
