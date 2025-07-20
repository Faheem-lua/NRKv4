local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "NRK v4 | The strongest Battlegrounds",
   Icon = code, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "😃 The Script its loading...",
   LoadingSubtitle = "🤍 Made By Faheem & k4sii Checking Valiadating..",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "L", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = NrkV4, -- Create a custom folder for your hub/game
      FileName = "BOmtopHub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Athencation | Powered by Boba.gg",
      Subtitle = "🔑 Key System",
      Note = "Please enter the valid key!", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"NRK101"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Info = Window:CreateTab("Info", "info")
local Main = Window:CreateTab("Main", "code")
local Misc = Window:CreateTab("Misc", "biohazard")
local Op = Window:CreateTab("Op", "sparkles")

local Paragraph = Info:CreateParagraph({Title = "❗️Information", Content = "This Hub its still in (BETA!)"})

local Paragraph = Info:CreateParagraph({Title = "🤍 Credits:", Content = "Faheem: Owner-Script YQANTQ: Script function callback Subcribe to him for more script on yt⚙️"})

local Label = Info:CreateLabel("Faheem", 9676276958, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Label = Info:CreateLabel("Mspaint - Upio", 6675147490, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Section = Main:CreateSection("LocalPlayer")

local Slider = Main:CreateSlider({
   Name = "Fov Changer",
   Range = {10, 200},
   Increment = 10,
   Suffix = "Fov",
   CurrentValue = 10,
   Flag = "FovVhanger1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     workspace.CurrentCamera.FieldOfView = Value
   end,
})

local Slider = Main:CreateSlider({
   Name = "Jump Changer",
   Range = {10, 200},
   Increment = 10,
   Suffix = "Jump",
   CurrentValue = 10,
   Flag = "JumpPower", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
     local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.UseJumpPower = true
            humanoid.JumpPower = Value
        end
   end,
})

local Section2 = Main:CreateSection("Anti")

local Button = Main:CreateButton({
   Name = "Anti Kick",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/welomenchaina/Loader/refs/heads/main/AntiKickLoader",true))()
   end,
})

local Button = Main:CreateButton({
   Name = "Anti Kick - Code: Bac (Beta)",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Faheem-lua/NRKv4/main/NRKv4RayfieldFovJump.lua"))()
   end,
})

local Button = Main:CreateButton({
   Name = "Anti Fling",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/Linux6699/DaHubRevival/main/AntiFling.lua'))()
   end,
})

local Button = Main:CreateButton({
   Name = "Anti Chat Logger",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua", true))() 
   end,
})


