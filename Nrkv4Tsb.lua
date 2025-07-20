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

local Label = Info:CreateLabel("Faheem", aperture, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Label = Info:CreateLabel("Mspaint - Upio", bolt, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

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

local Section2 = Main:CreateSection("Anti - Player")

local Button = Main:CreateButton({
   Name = "Anti Kick",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/welomenchaina/Loader/refs/heads/main/AntiKickLoader",true))()
   end,
})

local Button = Main:CreateButton({
   Name = "Anti Kick - Code: Bac (Beta)",
   Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/Mjajas/ANTII/refs/heads/main/antikick.lua"))()
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

local Button = Main:CreateButton({
   Name = "Anti Afk v1",
   Callback = function()
     for i,v in next, getconnections(game:GetService("Players").LocalPlayer.Idled) do
                    v:Disable()
end
   end,
})

local Section3 = Main:CreateSection("Esp & More")

local Button = Main:CreateButton({
   Name = "Esp Players",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/'))()
   end,
})

local Button = Main:CreateButton({
   Name = "Esp Player+",
   Callback = function()
     loadstring(game:HttpGet('https://raw.githubusercontent.com/zzerexx/scripts/main/UniversalEsp.lua '))() 
   end,
})

local Button = Main:CreateButton({
   Name = "Esp Player++",
   Callback = function()
     --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
getgenv().EspSettings = {
	TeamCheck = false,
	ToggleKey = "RightAlt",
	RefreshRate = 10, -- how fast the esp updates (milliseconds)
	MaximumDistance = 500, -- only renders players within this distance
	FaceCamera = false, -- Makes esp appear 2D
	AlignPoints = false, -- Improves 2D effect; only works while FaceCamera is enabled
	-- AlignPoints: This may cause esp to have abnormal behavior when looking from certain angles
	MouseVisibility = {
		Enabled = true, -- makes any drawing objects transparent when they are near your mouse
		Radius = 60,
		Transparency = 0.3,
		Method = "Hover", -- "Radius" or "Hover" | Hover is newest method and is a lot more accurate than Radius
		HoverRadius = 50,
		Selected = { -- set any of these to false to ignore them
			Boxes = true,
			Tracers = true,
			Names = true,
			Skeletons = true,
			HealthBars = true,
			HeadDots = true,
			LookTracers = true
		}
	},
	Highlights = {
		Enabled = false,
		Players = {}, -- put player usernames into this table to 'highlight' them
		Transparency = 1,
		Color = Color3.fromRGB(255, 150, 0),
		AlwaysOnTop = true
	},
	NPC = {
		Color = Color3.fromRGB(150,150,150),
		Transparency = 1,
		RainbowColor = false,
		Overrides = {
			Boxes = true,
			Tracers = true,
			Names = true,
			Skeletons = true,
			HealthBars = true,
			HeadDots = true,
			LookTracers = true
		}
	},
	Boxes = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1
	},
	Tracers = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Origin = "Top", -- "Top" or "Center" or "Bottom" or "Mouse"
		Thickness = 1
	},
	Names = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		Font = Drawing.Fonts.UI, -- UI or System or Plex or Monospace
		Size = 18,
		ShowDistance = false,
		ShowHealth = true,
		UseDisplayName = false,
		DistanceDataType = "m", -- what it says after the distance (ex. 100m)
		HealthDataType = "Percentage" -- "Percentage" or "Value"
	},
	Skeletons = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1
	},
	HealthBars = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(0,255,0),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Origin = "None", -- "None" or "Left" or "Right"
		OutlineBarOnly = true
	},
	HeadDots = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1,
		Filled = false,
		Scale = 1
	},
	LookTracers = {
		Enabled = true,
		Transparency = 1,
		Color = Color3.fromRGB(255,255,255),
		UseTeamColor = true,
		RainbowColor = false,
		Outline = true,
		OutlineColor = Color3.fromRGB(0,0,0),
		OutlineThickness = 1,
		Thickness = 1,
		Length = 5
	}
}
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dragon5819/Main/main/esp", "UniversalEsp"))()
   end,
})

local Section = Mics:CreateSection("Servers")

local Button = Tab:CreateButton({
   Name = "Rejoin Servers",
   Callback = function()
     local ts = game:GetService("TeleportService")
         
     local p = game:GetService("Players").LocalPlayer

     ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
   end,
})

local Button = Tab:CreateButton({
   Name = "Hop Servers",
   Callback = function()
local Lowest = "ping" -- set to "playing" to find the lowest player server

local HTTPService = game:GetService("HttpService")

local success, servers = pcall(function()
   return HTTPService:JSONDecode(game:HttpGet(
       "https://games.roblox.com/v1/games/" .. tostring(game.PlaceId) .. "/servers/Public?limit=100"
   )).data
end)

if not success then return end

local server = servers[1]

for i,svr in pairs(servers) do
   if svr[Lowest] < server[Lowest] then
       server = svr
   end
end

game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, server.id)
   end,
})

