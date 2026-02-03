local Rayfield = loadstring(game:HttpGet('https://[Log in to view URL]'))()

local Window = Rayfield:CreateWindow({
   Name = "💎mad city script🔫",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "join our server...",
   LoadingSubtitle = "by murtewy",
   ShowText = "💎mad city script🔫", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "", -- Check https://[Log in to view URL]

   ToggleUIKeybind = "P", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "murtewy"
   },

   Discord = {
      Enabled = true, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "https://[Log in to view URL]", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key system murtewy hub",
      Subtitle = "Join our discord to get new keys!",
      Note = "i hate nihhers", -- Use this to tell the user how to get a key
      FileName = "fashhhh", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"123jopa123"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})


local MainTab = Window:CreateTab("Main/Главное", 4483362458) -- Title, Image
local MainSection = MainTab:CreateSection("Main/Главное")


Rayfield:Notify({
   Title = "Executed!/Запущено",
   Content = "Congratilations! You made it!",
   Duration = 6.5,
   Image = 4483362458,
})

local Slider = MainTab:CreateSlider({
   Name = "Walkspeed/Скорость",
   Range = {0, 300},
   Increment = 1,
   Suffix = "SPEED",
   CurrentValue = 16,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local AimbotTab = Window:CreateTab("AIMBOT", 4483362458) -- Title, Image
local AimbotSection = AimbotTab:CreateSection("Aimbot!")
local Button = AimbotTab:CreateButton({
   Name = "Enable aimbot!",
   Callback = function()
        loadstring(game:HttpGet("https://[Log in to view URL]", true))()
   end,
})
local Button = AimbotTab:CreateButton({
       Name = "Ну извините, скрипт еще не доделан. Если пока что нравится и хотите чтобы продвигалось тогда оставайтесь:3 (Нажми на меня чтобы включить Zglad hub)",
   Callback = function()
        loadstring(game:HttpGet(('https://[Log in to view URL]'),true))()
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower/Высокий прыжок",
   Range = {0, 300},
   Increment = 1,
   Suffix = "JumpPower",
   CurrentValue = 50,
   Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
