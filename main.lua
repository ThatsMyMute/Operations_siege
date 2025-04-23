
--[[
  I hope you enjoy this script i put a tad bit of time into so any likes would be nice
  You can also learn from this cause why not

]]



if game.PlaceId ~= 13997264379 then do 
  game:GetService("StarterGui"):SetCore("SendNotification",{
Title = "Teleporting you to a Game", -- Required
Text = "Make sure to execute the script again. Teleporting u in 5 seconds." -- Required
})
wait(5)
  game:GetService('TeleportService'):Teleport(13997264379)
end
end

-- // Libraries UI: Rayfield ESP: Sense, Aimbot: Exunys Aimbot V3 

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua'))()
local Sense = loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatsMyMute/Sense/refs/heads/main/main.lua'))()
local aimbot = loadstring(game:HttpGet'https://github.com/RunDTM/Zeerox-Aimbot/raw/main/library.lua')()

-- // Locals (FML)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")
local Workspace = game:GetService("Workspace")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local ServerStorage = game:GetService("ServerStorage")
local Teams = game:GetService("Teams")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local AssetService = game:GetService("AssetService")
local Chat = game:GetService("Chat")
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local Plrname = game:GetService("Players").LocalPlayer.Name
local pgui = LocalPlayer.PlayerGui
-- Aimbot Locals





-- // GetGenv Customs

getgenv().Headshot = false
getgenv().Fireshot = false
getgenv().Theme = "Default"
-- // Game Local
local Breach = game.workspace["SE_Workspace"].Breach
local Doors = game.workspace["SE_Workspace"].Doors
local Drones = game.workspace["SE_Workspace"].Drones
local Objective = game.workspace.Objective
local Gadgets = game.workspace.Gadgets
-- // Object Cham Functions thanks GRIFFIN discord.gg/griffin
local function addCham(object, tbl)
if not object:FindFirstChild("cham") then
    local h = Instance.new("Highlight")
    h.Name = "cham"
    h.Parent = object
    h.Adornee = object
    h.Enabled = true
    h.FillColor = tbl.color
    h.FillTransparency = tbl.fTransparency
    h.OutlineColor = tbl.color
    h.OutlineTransparency = tbl.oTransparency
end
end

local function removeCham(object)
if object and object:FindFirstChild("cham") and object:FindFirstChild("cham"):IsA("Highlight") then
    object:FindFirstChild("cham"):Destroy()
end
end
if LocalPlayer then
  local character = LocalPlayer.Character
  if character then
      local humanoid = character:FindFirstChildOfClass("Humanoid")
      if humanoid then
          local fireSound = humanoid:FindFirstChild("Fire")
          if fireSound and fireSound:IsA("Sound") then
              return fireSound
          end
      end
  end
end
local fireSound = Workspace.Camera:FindFirstChild("Fire")


-- // ESP Configuring :)
--[[
Sense = {
whitelist = {}, -- When this table contains at least 1 user id, it will only show esp for those players.
sharedSettings = {
    textSize = 13,
    textFont = 2,
    limitDistance = false, -- Set a maximum render distance
    maxDistance = 150,
    useTeamColor = false -- Change all colors to the players team color
},
teamSettings = {
    enemy = {
        enabled = false,
        box = false,
        boxColor = { Color3.new(1,0,0), 1 },
        --boxColor = { "Team Color", 1 }, -- Do this to change a single color to the team color
        boxOutline = true,
        boxOutlineColor = { Color3.new(), 1 },
        boxFill = false,
        boxFillColor = { Color3.new(1,0,0), 0.5 },
        healthBar = false,
        healthyColor = Color3.new(0,1,0),
        dyingColor = Color3.new(1,0,0),
        healthBarOutline = true,
        healthBarOutlineColor = { Color3.new(), 0.5 },
        healthText = false,
        healthTextColor = { Color3.new(1,1,1), 1 },
        healthTextOutline = true,
        healthTextOutlineColor = Color3.new(),
        box3d = false,
        box3dColor = { Color3.new(1,0,0), 1 },
        name = false,
        nameColor = { Color3.new(1,1,1), 1 },
        nameOutline = true,
        nameOutlineColor = Color3.new(),
        weapon = false,
        weaponColor = { Color3.new(1,1,1), 1 },
        weaponOutline = true,
        weaponOutlineColor = Color3.new(),
        distance = false,
        distanceColor = { Color3.new(1,1,1), 1 },
        distanceOutline = true,
        distanceOutlineColor = Color3.new(),
        tracer = false,
        tracerOrigin = "Bottom",
        tracerColor = { Color3.new(1,0,0), 1 },
        tracerOutline = true,
        tracerOutlineColor = { Color3.new(), 1 },
        offScreenArrow = false,
        offScreenArrowColor = { Color3.new(1,1,1), 1 },
        offScreenArrowSize = 15,
        offScreenArrowRadius = 150,
        offScreenArrowOutline = true,
        offScreenArrowOutlineColor = { Color3.new(), 1 },
        chams = false,
        chamsVisibleOnly = false,
        chamsFillColor = { Color3.new(0.2, 0.2, 0.2), 0.5 },
        chamsOutlineColor = { Color3.new(1,0,0), 0 },
    },
    friendly = {
        enabled = false,
        box = false,
        boxColor = { Color3.new(0,1,0), 1 },
        boxOutline = true,
        boxOutlineColor = { Color3.new(), 1 },
        boxFill = false,
        boxFillColor = { Color3.new(0,1,0), 0.5 },
        healthBar = false,
        healthyColor = Color3.new(0,1,0),
        dyingColor = Color3.new(1,0,0),
        healthBarOutline = true,
        healthBarOutlineColor = { Color3.new(), 0.5 },
        healthText = false,
        healthTextColor = { Color3.new(1,1,1), 1 },
        healthTextOutline = true,
        healthTextOutlineColor = Color3.new(),
        box3d = false,
        box3dColor = { Color3.new(0,1,0), 1 },
        name = false,
        nameColor = { Color3.new(1,1,1), 1 },
        nameOutline = true,
        nameOutlineColor = Color3.new(),
        weapon = false,
        weaponColor = { Color3.new(1,1,1), 1 },
        weaponOutline = true,
        weaponOutlineColor = Color3.new(),
        distance = false,
        distanceColor = { Color3.new(1,1,1), 1 },
        distanceOutline = true,
        distanceOutlineColor = Color3.new(),
        tracer = false,
        tracerOrigin = "Bottom",
        tracerColor = { Color3.new(0,1,0), 1 },
        tracerOutline = true,
        tracerOutlineColor = { Color3.new(), 1 },
        offScreenArrow = false,
        offScreenArrowColor = { Color3.new(1,1,1), 1 },
        offScreenArrowSize = 15,
        offScreenArrowRadius = 150,
        offScreenArrowOutline = true,
        offScreenArrowOutlineColor = { Color3.new(), 1 },
        chams = false,
        chamsVisibleOnly = false,
        chamsFillColor = { Color3.new(0.2, 0.2, 0.2), 0.5 },
        chamsOutlineColor = { Color3.new(0,1,0), 0 }
    }
}
}
]]



-- // Ui code

local Window = Rayfield:CreateWindow({
Name = "Operations Siege 2.0",
LoadingTitle = "Rayfield Interface Suite",
LoadingSubtitle = "By: ThatsMyMute",
ConfigurationSaving = {
   Enabled = true,
   FolderName = "CharityHub", -- Create a custom folder for your hub/game
   FileName = "Operations_Siege"
},
Discord = {
   Enabled = false,
   Invite = "eJmQmjqNJ3", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
   RememberJoins = true -- Set this to false to make them join the discord every time they load it up
},
KeySystem = false, -- Set this to true to use our key system
KeySettings = {
   Title = "Charity Hub",
   Subtitle = "Key System",
   Note = "Check Discord #Key",
   FileName = "CharityHubKey", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
   SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
   GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
   Key = {"Charity","3"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
}
})


-- // ESP TAB OF UI

local ESP = Window:CreateTab("ESP")
local WEAPON = Window:CreateTab("Gun Mods")
local a = Window:CreateTab("FUN/AIMBOT")
local b = Window:CreateTab("Settings")
local ExplainGunMods = WEAPON:CreateLabel("If it says call back error wait until you can actually shoot")
local ExplainSounds = a:CreateLabel("This is a beta test might not work")
local ExplainSettings = b:CreateLabel("This is in beta. Should Support more soon.")



getgenv().Headshot = false
getgenv().Fireshot = false


local FPSSLIDER = b:CreateSlider({
  Name = "FPS CAP (turn on uncap fps)",
  Range = {0, 120},
  Increment = 5,
  Suffix = "FPS",
  CurrentValue = 60,
  Flag = "FPS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
  Callback = function(Value)
    setfpscap(Value)
  end,
})


  local FireSoundToggle = a:CreateToggle({
    Name = "Enable FireSound Mod",
    CurrentValue = false,
    Flag = "FireSoundToggle", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
    getgenv().Fireshot = Value
    end,
    })
  

local HeadshotSound = a:CreateInput({
 Name = "HeadShot Sound",
 PlaceholderText = "Sound Id Here",
 RemoveTextAfterFocusLost = false,
 Callback = function(Text)
  while getgenv().Headshot do wait()
game:GetService("ReplicatedStorage").Skorpio_Engine.FX.HelmetBreak.SoundId = "rbxassetid://" .. Text .. ""
  end
 end,
})
local FireSoundGUN = a:CreateInput({
  Name = "Fire Sound",
  PlaceholderText = "Sound Id Here",
  RemoveTextAfterFocusLost = false,
  Callback = function(Text)
    while getgenv().Fireshot do wait()
fireSound.SoundId = "rbxassetid://" .. Text .. ""
    end
  end,
 })


local Enable_ESP = ESP:CreateToggle({
Name = "Enable Enemy ESP",
CurrentValue = false,
Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
Sense.teamSettings.enemy.enabled = Value
Sense.teamSettings.enemy.chams = Value
end,
})

local ENABLE_TEAM_ESP = ESP:CreateToggle({
Name = "Enable TEAM ESP",
CurrentValue = false,
Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
Sense.teamSettings.friendly.enabled = Value
Sense.teamSettings.friendly.chams = Value
end,
})

local Enable_Health = ESP:CreateToggle({
Name = "Enable Health esp Enemy team",
CurrentValue = false,
Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
Sense.teamSettings.enemy.healthBar = Value
end,
})
local Enable_Health_sameteam = ESP:CreateToggle({
Name = "Enable Heath esp Your team",
CurrentValue = false,
Flag = "Toggle4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
Sense.teamSettings.friendly.healthBar = Value
end,
})
getgenv().objectcham = true
local objectCham = ESP:CreateToggle({
Name = "Object Esp",
CurrentValue = false,
Flag = "object",
Callback = function(value)
---@diagnostic disable-next-line: undefined-global
  objectcham     = value
      while objectcham and task.wait() do
          for _, gadget in ipairs(Gadgets:GetChildren()) do
              addCham(gadget, {
                  color = Color3.fromRGB(255,0,0),
                  oTransparency = 0,
                  fTransparency = 0.5
              })
          end
      end
      for _, gadget in ipairs(Gadgets:GetChildren()) do
          removeCham(gadget)
      end
     
    end})
--[[
local weaponesp = ESP:CreateToggle({
Name = "Weapon Esp",
CurrentValue = false,
Flag = "Toggle5",
Callback = function(Value)
Sense.teamSettings.enemy.weapon = Value
end
})
local weaponesp_sameteam = ESP:CreateToggle({
Name = "Weapon Esp Your Team",
CurrentValue = false,
Flag = "Toggle6", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
Callback = function(Value)
Sense.teamSettings.friendly.weapon = Value
end,
})
]]

local teamCP = ESP:CreateColorPicker({Name = "Team Color",
Color = Color3.fromRGB(0,255,0),
Flag = "TeamColor",
Callback = function(x)
Sense.teamSettings.friendly.chams = {x,1} 
Sense.teamSettings.friendly.box3dColor = {x,1} 
Sense.teamSettings.friendly.offScreenArrowColor = {x,1} 
Sense.teamSettings.friendly.tracerColor = {x,1}
end})
local enemyCP = ESP:CreateColorPicker({
Name = "Enemy Color",Color = Color3.fromRGB(255,0,0),
Flag = "EnemyColor",
Callback = function(x)Sense.teamSettings.enemy.chams = {x,1} Sense.teamSettings.enemy.box3dColor = {x,1} Sense.teamSettings.enemy.offScreenArrowColor = {x,1}  Sense.teamSettings.enemy.tracerColor = {x,1} 
end
})

local AutoWeapon = WEAPON:CreateToggle({
Name = "Make Auto (might not work)",
CurrentValue = false,
Flag = "GunMod1",
Callback = function(Value)
while Value do wait()
local moduleFolder = game:GetService("Players").LocalPlayer.PlayerGui.GModule
local moduleScripts = moduleFolder:GetChildren()

if #moduleScripts >= 5 then
  for i = 4, 5 do
      local moduleScript = moduleScripts[i]
      if moduleScript:IsA("ModuleScript") then
          local m = require(moduleScript)
          if m then

              m.Auto = true
              m.ChangeFiremode = true
          else
       warn("Failed to load module:", moduleScript.Name)
              end
      end
        while Value == false do wait()
            
          return
        end
        end
else

end

end
end,
})
local AmmoMod = WEAPON:CreateToggle({
Name = "Ammo",
CurrentValue = false,
Flag = "GunMod2",
Callback = function(Value)
while Value do wait()
local moduleFolder = game:GetService("Players").LocalPlayer.PlayerGui.GModule
local moduleScripts = moduleFolder:GetChildren()

if #moduleScripts >= 5 then
  for i = 4, 5 do
      local moduleScript = moduleScripts[i]
      if moduleScript:IsA("ModuleScript") then
          local m = require(moduleScript)
          if m then
        
             m.Ammo = math.huge
              m.StoredAmmo = math.huge
          else
       warn("Failed to load module:", moduleScript.Name)
              end
      end
        while Value == false do 
        m.Ammo = 30
        m.StoredAmmo = 120
        wait()
        end
        
        end
else
end

end
end,
})
local Slider = WEAPON:CreateSlider({
 Name = "FIRE RATE",
 Range = {0, 2000},
 Increment = 10,
 Suffix = "Fire Rate",
 CurrentValue = 700,
 Flag = "FireRate", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
local moduleFolder = game:GetService("Players").LocalPlayer.PlayerGui.GModule
local moduleScripts = moduleFolder:GetChildren()

if #moduleScripts >= 5 then
  for i = 4, 5 do
      local moduleScript = moduleScripts[i]
      if moduleScript:IsA("ModuleScript") then
          local m = require(moduleScript)
          if m then
        
          m.ShootRate = Value
          else
       warn("Failed to load module:", moduleScript.Name)
              end
      end
end
end

 end,
})

local Scope = WEAPON:CreateToggle({
 Name = "1.5 Scope",
 CurrentValue = false,
 Flag = "Scope", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
  while Value do wait()
local moduleFolder = game:GetService("Players").LocalPlayer.PlayerGui.GModule
local moduleScripts = moduleFolder:GetChildren()

if #moduleScripts >= 5 then
  for i = 4, 5 do
      local moduleScript = moduleScripts[i]
      if moduleScript:IsA("ModuleScript") then
          local m = require(moduleScript)
          if m then
        
          m.SightAtt = "Scope 1.5x"
          else
       warn("Failed to load module:", moduleScript.Name)
              end
      end
        if Value == false then do 
      m.SightAtt = false
        end
else
end
end
end
end
 end,
})
            
local WeaponSpread = WEAPON:CreateToggle({
 Name = "Weapon Spread",
 CurrentValue = false,
 Flag = "Spread", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
     while Value do wait()
      local moduleFolder = game:GetService("Players").LocalPlayer.PlayerGui.GModule
local moduleScripts = moduleFolder:GetChildren()

if #moduleScripts >= 5 then
  for i = 4, 5 do
      local moduleScript = moduleScripts[i]
      if moduleScript:IsA("ModuleScript") then
          local m = require(moduleScript)
          if m then
 m.MaxSpread = 0
              m.MinSpread = 0
              end
              else 
              
     end
  end
if Value == false then do
  m.MaxSpread = 100
  m.MinSpread = 1
end
end
end
end
end,
})

 local Recoil = WEAPON:CreateToggle({
 Name = "Weapon Recoil (WIP)",
 CurrentValue = false,
 Flag = "Recoil", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
 Callback = function(Value)
     while Value do wait()
                local moduleFolder = game:GetService("Players").LocalPlayer.PlayerGui.GModule
local moduleScripts = moduleFolder:GetChildren()

if #moduleScripts >= 5 then
  for i = 4, 5 do
      local moduleScript = moduleScripts[i]
      if moduleScript:IsA("ModuleScript") then
          local m = require(moduleScript)
          m.camRecoilRight = 0
          m.camRecoil = 0
          m.camRecoilUp = 0
          m.camRecoilLeft = 0 
          m.camRecoilTilt = 0
          m.gunRecoilTilt = 0
          m.gunRecoilUp = 0
      m.gunRecoilLeft = 0
        m.gunRecoilRight = 0
        m.RecoilPowerStepAmount = 0
m.MaxRecoilPower = 0
m.MinRecoilPower = 0
      end
  end
end
end

     if Value == false then do
      m.camRecoilRight = 15
      m.camRecoil = 15
      m.camRecoilUp = 15
      m.camRecoilLeft = 15 
      m.camRecoilTilt = 15
      m.gunRecoilTilt = 15
      m.gunRecoilUp = 15
  m.gunRecoilLeft = 15
    m.gunRecoilRight = 15
    m.RecoilPowerStepAmount = 15
m.MaxRecoilPower = 15
m.MinRecoilPower = 15
     end
     end
    end,
})
              

--[[
getgenv().ExunysDeveloperEsp = {
DeveloperSettings = {
  UpdateMode = "RenderStepped",
  TeamCheckOption = "TeamColor",
  RainbowSpeed = 1 -- Bigger = Slower
},

Settings = {
  Enabled = true,

  TeamCheck = false,
  AliveCheck = true,
  WallCheck = false,

  OffsetToMoveDirection = false,
  OffsetIncrement = 15, -- Min: 1; Max: 30

  Sensitivity = 0, -- Animation length (in seconds) before fully locking onto target
  Sensitivity2 = 3, -- mousemoverel Sensitivity

  LockMode = 1, -- 1 = CFrame; 2 = mousemoverel
  LockPart = "Head", -- Body part to lock on

  TriggerKey = Enum.UserInputType.MouseButton2,
  Toggle = false
},

FOVSettings = {
  Enabled = true,
  Visible = true,

  Radius = 90, -- Field Of View
  NumSides = 60,

  Thickness = 1,
  Transparency = 1,
  Filled = false,

  RainbowColor = false,
  RainbowOutlineColor = false,
  Color = Color3.fromRGB(255, 255, 255),
  OutlineColor = Color3.fromRGB(0, 0, 0),
  LockedColor = Color3.fromRGB(255, 150, 150)
}
}
]]





-- // Hit parts
--[[
{"Head", "HumanoidRootPart", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg", "LeftHand", "RightHand", "LeftLowerArm", "RightLowerArm", "LeftUpperArm", "RightUpperArm", "LeftFoot", "LeftLowerLeg", "UpperTorso", "LeftUpperLeg", "RightFoot", "RightLowerLeg", "LowerTorso", "RightUpperLeg"}
]]
Sense.Load()
--[[

]]
