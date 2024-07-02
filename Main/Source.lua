local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local Mouse = LocalPlayer:GetMouse()
local Camera = workspace.CurrentCamera
local Client = LocalPlayer.PlayerGui:FindFirstChild("Client") and getsenv(LocalPlayer.PlayerGui.Client) or nil

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/liquidcheats/Solstic.win/main/Main/Library.lua"))()
local Window = Library:Window({ text = "solstic.win" })

local cfglocation = "solsticiscfg/"
makefolder("solsticiscfg")

-- Toggle UI: Library:Toggle()

local TabsSection = {
    Aimbot = Window:TabSection({ text = "Aimbot" }),
    ESP = Window:TabSection({ text = "Visuals" }),
    Misc = Window:TabSection({ text = "Miscellaneous" }),
}

local Tabs = { -- Default: rbxassetid://7999345313
    Ragebot = TabsSection.Aimbot:Tab({ text = "Ragebot", icon = "rbxassetid://8547236654" }),
    AntiAim = TabsSection.Aimbot:Tab({ text = "Anti Aim", icon = "rbxassetid://8547310764" }),
    Legitbot = TabsSection.Aimbot:Tab({ text = "Legitbot", icon = "rbxassetid://8547249956" }),

    Players = TabsSection.ESP:Tab({ text = "Players", icon = "rbxassetid://7999345313" }),
    World = TabsSection.ESP:Tab({ text = "World", icon = "rbxassetid://7999345313" }),
    Inventory = TabsSection.ESP:Tab({ text = "Inventory", icon = "rbxassetid://8547258459" }),

    MiscMain = TabsSection.Misc:Tab({ text = "Main", icon = "rbxassetid://7999345313" }),
    Config = TabsSection.Misc:Tab({ text = "Configs", icon = "rbxassetid://7999345313" }),
}

local Ragebot = {
        Enabled = false,
        SilentAim = false,
        FOV = 100,
        OverrideResolver = false,

        Hideshots = false,
        DoubleTap = false,
        KillAll = nil,

        HitChance = 0,
        StaticPointScale = false,
        SafePoints = false,
        ForceConditions = "None",
        HeadSafetyifLethal = false,
        BodyAim = "None",
        Maxmisses = 0,

        Visible = 0,
        Autowall = 0,
        AutoStop = false,
        Conditions = "None",
        AutoScope = false,
}

local AntiAim = {
        Enabled = false,
        Spinbot = false,
        SpinSpeed = 10,
        Pitch = "Down",
        YawBase = "None",
        YawAdd = 0,
        YawMod = "None",
        Degree = 0,
}

local Legitbot = {

}

local Players = {

}

local World = {
        OverrideZoom = false,
        ForceThirdperson = false,
        VisualRecoil = false,
        Removals = "None",
}

local Inventory = {

}

local MiscellaneousMain = {
        BunnyHop = false,
        AirStrafe = false,
        AirDuck = false,
        BHopSpeed = 0,
        StrafeAissist = false,
        InfiniteDuck = false,
        EdgeJump = false,
        BlockBot = false,

        BypassFireDmg = false,
        BypassFallDmg = false,
        AntiSpectate = false,
        InfiniteCash = false,

        NoFilter = false, -- most easiest way to be ban
}

-- Toggle

-- Ragebot

local Aimbot = Tabs.Ragebot:Section({ text = "Main" })

Aimbot:Toggle({
    text = "Enable Ragebot",
    state = false,
    callback = function(tbl)
        Ragebot.Enabled = tbl
    end
})

Aimbot:Toggle({
    text = "Silent Aim",
    state = false,
    callback = function(tbl)
        Ragebot.SilentAim = tbl
    end
})

Aimbot:Slider({
    text = "FOV",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        Ragebot.FOV = tbl
    end
})

Aimbot:Toggle({
    text = "Override Resolver",
    state = false,
    callback = function(tbl)
        Ragebot.OverrideResolver = tbl
    end
})

local Exploits = Tabs.Ragebot:Section({ text = "Exploits" })

Exploits:Toggle({
    text = "Hide shots",
    state = false,
    callback = function(tbl)
        Rage.Hideshots = tbl
    end
})

Exploits:Keybind({
    text = "Double Tap",
    default = Enum.KeyCode.T,
    callback = function(tbl)
        Rage.DoubleTap = tbl
    end
})

Exploits:Keybind({
    text = "Kill All",
    default = Enum.KeyCode.Unknown,
    callback = function(tbl)
        Ragebot.KillAll = tbl
    end
})

local Accuracy = Tabs.Ragebot:Section({ text = "Accuracy" })

Accuracy:Slider({
    text = "Hit Chance",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        Ragebot.HitChance = tbl
    end
})

Accuracy:Toggle({
    text = "Static Point Scale",
    state = false,
    callback = function(tbl)
        Ragebot.StaticPointScale = tbl
    end
})

Accuracy:Dropdown({
    text = "Safe Points",
    list = {"Head", "HumanoidRootPart", "UpperTorso", "LowerTorso", "RightUpperArm", "LeftUpperArm", "RightLowerArm", "LeftLowerArm", "RightUpperLeg", "LeftUpperLeg", "RightLowerLeg", "LeftLowerLeg"},
    default = "Default",
    callback = function(tbl)
        Ragebot.SafePoints = tbl
    end
})

Accuracy:Dropdown({
    text = "Force Conditions",
    list = {"", ""},
    default = "Default",
    callback = function(tbl)
        Ragebot.ForceConditions = tbl
    end
})

Accuracy:Toggle({
    text = "Head Safety if Lethal",
    state = false,
    callback = function(tbl)
        Ragebot.HeadSafetyifLethal = tbl
    end
})

Accuracy:Dropdown({
    text = "Body Aim",
    list = {"", ""},
    default = "Select",
    callback = function(tbl)
        Ragebot.BodyAim = tbl
    end
})

Accuracy:Slider({
    text = "Max misses",
    min = 0,
    max = 10,
    Float = 1,
   callback = function(tbl)
        Ragebot.Maxmisses = tbl
    end
})

local MinDamage = Tabs.Ragebot:Section({ text = "Min. Damage" })

MinDamage:Slider({
    text = "Visible",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        Ragebot.Visible = tbl
    end
})

MinDamage:Slider({
    text = "Autowall",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        Ragebot.Autowall = tbl
    end
})

local MiscRage = Tabs.Ragebot:Section({ text = "Misc" })

MiscRage:Toggle({
    text = "Auto Stop",
    state = false,
    callback = function(tbl)
        Ragebot.AutoStop = tbl
    end
})

MiscRage:Dropdown({
    text = "Conditions",
    list = {"Off", "Lethal", "Visibled"},
    default = "Off",
    callback = function(tbl)
        Ragebot.Conditions = tbl
    end
})

MiscRage:Toggle({
    text = "Auto Scope",
    state = false,
    callback = function(tbl)
        Ragebot.AutoScope = tbl
    end
})

-- AntiAim

local AntiAim = Tabs.AntiAim:Section({ text = "Main" })

AntiAim:Toggle({
    text = "Enable Anti Aim",
    state = false,
    callback = function(tbl)
        AntiAim.Enabled = tbl
    end
})

AntiAim:Toggle({
    text = "Spinbot",
    state = false,
    callback = function(tbl)
        AntiAim.Spinbot = tbl
    end
})

AntiAim:Slider({
    text = "Speed",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        AntiAim.SpinSpeed = tbl
    end
})

AntiAim:Dropdown({
    text = "Pitch",
    list = {"Off", "Up", "Down", "Left", "Right", "Random"},
    default = "Off",
    callback = function(tbl)
        AntiAim.Pitch = tbl
    end
})

AntiAim:Dropdown({
    text = "Yaw Base",
    list = {"Off", "At Target", "Auto"},
    default = "Off",
    callback = function(tbl)
        AntiAim.YawBase = tbl
    end
})

AntiAim:Slider({
    text = "Yaw Add",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        AntiAim.YawAdd = tbl
    end
})

AntiAim:Dropdown({
    text = "Yaw Modifier",
    list = {"Off", "Center"},
    default = "Off",
    callback = function(tbl)
        AntiAim.YawMod = tbl
    end
})

AntiAim:Slider({
    text = "Degree",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        AntiAim.Degree = tbl
    end
})

local FakeAngle = Tabs.AntiAim:Section({ text = "Fake Angle" })
local FakeLag = Tabs.AntiAim:Section({ text = "Fake Lag" })
local AAMisc = Tabs.AntiAim:Section({ text = "Misc" })

-- Legitbot

-- Player

-- World

local WorldMain = Tabs.World:Section({ text = "Main" })

WorldMain:Slider({
    text = "FOV",
    min = 0,
    max = 120,
    Float = 3,
   callback = function(tbl)
        workspace.Camera.FieldOfView = tbl
    end
})

WorldMain:Slider({
    text = "Override",
    min = 0,
    max = 15,
    Float = 1,
   callback = function(tbl)
        World.OverrideZoom = tbl
    end
})

WorldMain:Toggle({
    text = "Force Thirdperson",
    state = false,
    callback = function(tbl)
        World.ForceThirdperson = tbl
    end
})

WorldMain:Dropdown({
    text = "Visual Recoil",
    list = {"Off"},
    default = "Off",
    callback = function(tbl)
        World.VisualRecoil = tbl
    end
})

WorldMain:Dropdown({
    text = "Removals",
    list = {"Off"},
    default = "Off",
    callback = function(tbl)
        World.Removals = tbl
    end
})

local WorldESP = Tabs.World:Section({ text = "World ESP" })
local Ambient = Tabs.World:Section({ text = "Ambient" })
local WorldOther = Tabs.World:Section({ text = "Other" })

-- Inventory

-- Miscellaneous

local Movement = Tabs.MiscMain:Section({ text = "Movement" })

Movement:Toggle({
    text = "Bunny Hop",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.BunnyHop = tbl
    end
})

Movement:Toggle({
    text = "Air Strafe",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.AirStrafe = tbl
    end
})

Movement:Toggle({
    text = "Air Duck",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.AirDuck = tbl
    end
})

Movement:Slider({
    text = "Speed",
    min = 0,
    max = 100,
    Float = 3,
   callback = function(tbl)
        MiscellaneousMain.BHopSpeed = tbl
    end
})

Movement:Toggle({
    text = "Strafe Assist",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.StrafeAissist = tbl
    end
})

Movement:Toggle({
    text = "Infinity Duck",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.InfiniteDuck = tbl
    end
})

Movement:Toggle({
    text = "Edge Jump",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.EdgeJump = tbl
    end
})

Movement:Toggle({
    text = "BlockBot",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.BlockBot = tbl
    end
})

local Chat = Tabs.MiscMain:Section({ text = "Chat" })

Chat:Toggle({
    text = "Chat spam",
    state = false,
    callback = function(tbl)

    end
})

Chat:Dropdown({
    text = "type",
    list = {"Standard", "Toxic", "Solstic.win"},
    default = "Standard",
    callback = function(tbl)

    end
})

Chat:Toggle({
    text = "Speed (ms)",
    min = 150,
    max = 1000,
    callback = function(tbl)

    end
})

Chat:Toggle({
    text = "Kill say",
    state = false,
    callback = function(tbl)

    end
})

Chat:Textbox({
        text = "message",
        value = "message",
        callback = function(tbl)

        end
})

Chat:Toggle({
    text = "No Filter",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.NoFilter = tbl
    end
})

local Other = Tabs.MiscMain:Section({ text = "Other" })

local Cilent = Tabs.MiscMain:Section({ text = "Cilent" })

Cilent:Toggle({
    text = "Bypass Fire Damage",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.BypassFireDmg = tbl
    end
})

Cilent:Toggle({
    text = "Bypass Fall Damage",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.BypassFallDmg = tbl
    end
})

Cilent:Toggle({
    text = "Anti-Spectate",
    state = false,
    callback = function(tbl)
        MiscellaneousMain.AntiSpectate = tbl
    end
})

Cilent:Toggle({
    text = "Infinite Cash",
    state = false,
    callback = function(tbl)
                LocalPlayer.Cash.Value = 8000
                MiscellaneousMain.InfiniteCash = tbl
    end
})

local Buybot = Tabs.MiscMain:Section({ text = "Buybot" })

Buybot:Toggle({
    text = "Enable BuyBot",
    state = false,
    callback = function(tbl)

    end
})

Buybot:Dropdown({
    text = "Primary",
    list = {""},
    default = "Off",
    callback = function(tbl)

    end
})

Buybot:Dropdown({
    text = "Secondary",
    list = {""},
    default = "Off",
    callback = function(tbl)

    end
})

Buybot:Dropdown({
    text = "Equipment",
    list = {""},
    default = "Off",
    callback = function(tbl)

    end
})

-- Configuration

local UISetting = Tabs.Config:Section({ text = "Main" })

UISetting:Keybind({
    text = "Bind",
    default = Enum.KeyCode.H,
    callback = function(tbl)
        Library:Toggle(tbl)
    end
})

UISetting:Button({
    text = "Unject",
    callback = function()
        Library:Unload()
    end,
})

local UIVisibility = Tabs.Config:Section({ text = "Interface" })

UIVisibility:Toggle({
    text = "Watermark",
    default = Enum.KeyCode.H,
    callback = function(tbl)
	    Watermark.Enabled = tbl
    end
})

UIVisibility:Toggle({
    text = "Keybind Lists",
    default = Enum.KeyCode.H,
    callback = function(tbl)
        Keybind.Enabled = tbl
    end
})

RunService.RenderStepped:Connect(function()
    if LocalPlayer.Character ~= nil and LocalPlayer.Character.Humanoid.Health > 0 then
        if AntiAim.Spinbot and AntiAim.Enabled then
            LocalPlayer.Character.Humanoid.AutoRotate = false
            LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(AntiAim.SpinSpeed), 0)
        else
            LocalPlayer.Character.Humanoid.AutoRotate = true
        end
    end
    if World.ForceThirdperson then
        if LocalPlayer.CameraMinZoomDistance ~= World.OverrideZoom then
            LocalPlayer.CameraMinZoomDistance = World.OverrideZoom
            LocalPlayer.CameraMaxZoomDistance = World.OverrideZoom
        end
    else
        if LocalPlayer.Character ~= nil then
            LocalPlayer.CameraMinZoomDistance = 0
            LocalPlayer.CameraMaxZoomDistance = 0
        end
    end
    if MiscellaneousMain.BunnyHop then
        if LocalPlayer.Character ~= nil and UserInputService:IsKeyDown(Enum.KeyCode.Space) and LocalPlayer.PlayerGui.GUI.Main.GlobalChat.Visible == false then
            LocalPlayer.Character.Humanoid.Jump = true
            local Speed = MiscellaneousMain.BHopSpeed
            local Dir = Camera.CFrame.LookVector * Vector3.new(1,0,1)
            local Move = Vector3.new()

            Move = UserInputService:IsKeyDown(Enum.KeyCode.W) and Move + Dir or Move
            Move = UserInputService:IsKeyDown(Enum.KeyCode.S) and Move - Dir or Move
            Move = UserInputService:IsKeyDown(Enum.KeyCode.D) and Move + Vector3.new(-Dir.Z,0,Dir.X) or Move
            Move = UserInputService:IsKeyDown(Enum.KeyCode.A) and Move + Vector3.new(Dir.Z,0,-Dir.X) or Move
            if Move.Unit.X == Move.Unit.X then
                Move = Move.Unit
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(Move.X * Speed, LocalPlayer.Character.HumanoidRootPart.Velocity.Y, Move.Z * Speed)
            end
        end
    end
    if MiscellaneousMain.InfiniteDuck then
                Client.crouchcooldown = 0
        end
    if MiscellaneousMain.EdgeJump then
                if LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
                        coroutine.wrap(function()
                                RunService.RenderStepped:Wait()
                                if LocalPlayer.Character ~= nil and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Freefall and LocalPlayer.Character.Humanoid:GetState() ~= Enum.HumanoidStateType.Jumping then
                                        LocalPlayer.Character.Humanoid:ChangeState("Jumping")
                                end
                        end)()
                end
        end
        task.wait()
end)
local mt = getrawmetatable(game)
local oldNamecall = mt.__namecall
local oldIndex = mt.__index
local oldNewIndex = mt.__newindex
setreadonly(mt, false)
mt.__namecall = function(self, ...)
    local method = tostring(getnamecallmethod())
    local args = {...}
    if method == "Kick" then
        return
    end
    if method == "FireServer" then
        if string.len(self.Name) == 38 then
            return
        elseif self.Name == "FallDamage" and MiscellaneousMain.BypassFallDmg then
            return
        elseif self.Name == "BURNME" and MiscellaneousMain.BypassFireDmg then
            return
        elseif self.Name == "ControlTurn" and not checkcaller() then
            return
        end
        if self.Name == "ReplicateCamera" and MiscellaneousMain.AntiSpectate then
            args[1] = CFrame.new()
        end
        if method == "InvokeServer" then
            if self.Name == "Moolah" then
                return
            elseif self.Name == "Hugh" then
                return
            elseif self.Name == "Filter" and MiscellaneousMain.NoFilter then
                return args[1]
            end
        end
    end

    return oldNamecall(self, unpack(args))
end
setreadonly(mt, true)
LocalPlayer.Cash:GetPropertyChangedSignal("Value"):Connect(function()
    if MiscellaneousMain.InfiniteCash and LocalPlayer.Cash.Value ~= 8000 then
        LocalPlayer.Cash.Value = 8000
    end
end)
if UserInputService.TouchEnabled then 
    MobileToggle(Enum.KeyCode.H, "rbxassetid://18190086247") 
end