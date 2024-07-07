local Library = {}

local TipwareVersion = "v1.1A."

local TweenService = game:GetService("TweenService")
local input = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui
local Mouse = LocalPlayer:GetMouse()

local function Dragify(frame, parent)

    parent = parent or frame

    local dragging = false
    local dragInput, mousePos, framePos

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = true
            mousePos = input.Position
            framePos = parent.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    frame.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    input.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
        end
    end)
end

local function easeOutCubic(t, b, c, d)
    t = t / d - 1
    return c * (t * t * t + 1) + b
end

local function MobileDragify(frame, time)
    local dragStart = nil
    local startPos = nil
    local startTime = nil

    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.Touch then
            dragStart = input.Position
            startPos = frame.Position
            startTime = tick()
        end
    end)

    frame.InputChanged:Connect(function(input)
        if dragStart then
            local delta = input.Position - dragStart
            local elapsedTime = tick() - startTime
            local easingFactor = easeOutCubic(math.min(elapsedTime / time, 1), 0, 1, 1)

            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X * easingFactor,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y * easingFactor
            )
        end
    end)

    frame.InputEnded:Connect(function(input)
        dragStart = nil
    end)
end

function Library:Toggle()
    local CoreGui = game:GetService("CoreGui")
    local TipwareGui = CoreGui:FindFirstChild("Tipware")
    if TipwareGui == nil then return end
    
    TipwareGui.Enabled = not TipwareGui.Enabled
end

function Library:Unload()
    local CoreGui = game:GetService("CoreGui")
    local TipwareGui = CoreGui:FindFirstChild("Tipware")
    if TipwareGui then
        TipwareGui:Destroy()
    end
end

local Tipware = Instance.new("ScreenGui")
local Body = Instance.new("Frame")
Dragify(Body, Body)
MobileDragify(Body, 0.6)
local UIScale = Instance.new("UIScale")

local Elements = Instance.new("Frame")

local ElementUICorner = Instance.new("UICorner")
local UICorner_3 = Instance.new("UICorner")
local UICorner_2 = Instance.new("UICorner")
local UICorner = Instance.new("UICorner")
local HandleUICorner = Instance.new("UICorner")
local SmoothingUICorner = Instance.new("UICorner")
local BodyUICorner = Instance.new("UICorner")

local ElementBox = Instance.new("Frame")
local ElementBox_2 = Instance.new("Frame")
local ElementBox_3 = Instance.new("Frame")

local ElementPadding = Instance.new("UIPadding")
local ElementsPadding = Instance.new("UIPadding")
local ElementsPadding_2 = Instance.new("UIPadding")
local ElementsPadding_3 = Instance.new("UIPadding")
local HitboxPadding = Instance.new("UIPadding")
local HitboxPadding_2 = Instance.new("UIPadding")
local BodyPadding = Instance.new("UIPadding")

local BoxName = Instance.new("TextLabel")
local BoxName_2 = Instance.new("TextLabel")
local BoxName_3 = Instance.new("TextLabel")

local HitboxDropDown = Instance.new("TextButton")
local Handle = Instance.new("TextButton")
local HitboxName = Instance.new("TextLabel")
local Plus = Instance.new("TextLabel")
local HitboxName_2 = Instance.new("TextLabel")

local Amnt = Instance.new("TextLabel")

local ScrollingFrame = Instance.new("ScrollingFrame")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local ScrollingFrame_3 = Instance.new("ScrollingFrame")

local UIGridLayout = Instance.new("UIGridLayout")

local UIListLayout = Instance.new("UIListLayout")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIListLayout_4 = Instance.new("UIListLayout")

local ToggleName = Instance.new("TextLabel")
local ToggleName_2 = Instance.new("TextLabel")
local ToggleName_3 = Instance.new("TextLabel")
local ToggleName_4 = Instance.new("TextLabel")
local ToggleName_5 = Instance.new("TextLabel")
local ToggleName_6 = Instance.new("TextLabel")
local ToggleName_7 = Instance.new("TextLabel")

local SmoothingSilder = Instance.new("TextButton")

local TitleLine = Instance.new("Frame")

-- Window

local Tabs = Instance.new("Frame")

local aimbot = Instance.new("TextButton")
local silentaim = Instance.new("TextButton")
local render = Instance.new("TextButton")
local misc = Instance.new("TextButton")
local antiaim = Instance.new("TextButton")

local Title = Instance.new("TextLabel")
local SubTitle = Instance.new("TextLabel")
local SubNote = Instance.new("TextLabel")

-- Aimbot

local AimbotBox = Instance.new("Frame")

local enabled = Instance.new("TextButton")
local pred = Instance.new("TextBox")
local bind = Instance.new("TextBox")
local tracer = Instance.new("TextButton")
local fov = Instance.new("TextButton")
local autopred = Instance.new("TextButton")
local usemousesenv = Instance.new("TextButton")

-- General

local GeneralBox = Instance.new("Frame")

-- OnHit

local OnHitBox = Instance.new("Frame")

local skeleton = Instance.new("TextButton")
local chams = Instance.new("TextButton")
local hitsound = Instance.new("TextBox")

-- Prop

Tipware.Name = "Tipware"
Tipware.Parent = game.CoreGui
Tipware.DisplayOrder = 9999
Tipware.ResetOnSpawn = false

Body.Name = "Body"
Body.Parent = Tipware
Body.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
Body.BorderColor3 = Color3.fromRGB(61, 61, 61)
Body.Position = UDim2.new(0.367293626, 0, 0.275362313, 0)
Body.Size = UDim2.new(0, 568, 0, 372)

Elements.Name = "Elements"
Elements.Parent = Body
Elements.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Elements.BorderColor3 = Color3.fromRGB(57, 57, 57)
Elements.Position = UDim2.new(0.0171049386, 0, 0.162345931, 0)
Elements.Size = UDim2.new(0, 543, 0, 292)

ElementUICorner.Name = "ElementUICorner"
ElementUICorner.Parent = Elements

ScrollingFrame.Parent = Elements
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0, 0, -0.021428572, 0)
ScrollingFrame.Size = UDim2.new(0, 537, 0, 292)
ScrollingFrame.ScrollBarThickness = 0

GeneralBox.Name = "GeneralBox"
GeneralBox.Parent = ScrollingFrame
GeneralBox.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
GeneralBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
GeneralBox.BorderSizePixel = 0
GeneralBox.Position = UDim2.new(0.0988593176, 0, 0.408088237, 0)
GeneralBox.Size = UDim2.new(0, 260, 0, 110)

UICorner.Parent = GeneralBox

BoxName.Name = "BoxName"
BoxName.Parent = GeneralBox
BoxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxName.BackgroundTransparency = 1.000
BoxName.BorderColor3 = Color3.fromRGB(0, 0, 0)
BoxName.BorderSizePixel = 0
BoxName.Position = UDim2.new(0.0349344984, 0, -0.00881622359, 0)
BoxName.Size = UDim2.new(0, 54, 0, 22)
BoxName.Font = Enum.Font.SourceSans
BoxName.Text = "general"
BoxName.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxName.TextSize = 17.000
BoxName.TextXAlignment = Enum.TextXAlignment.Left

ElementBox.Name = "ElementBox"
ElementBox.Parent = GeneralBox
ElementBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElementBox.BackgroundTransparency = 1.000
ElementBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElementBox.BorderSizePixel = 0
ElementBox.Position = UDim2.new(0, 0, 0.292134821, 0)
ElementBox.Size = UDim2.new(0, 229, 0, 59)

ElementsPadding.Name = "ElementsPadding"
ElementsPadding.Parent = ElementBox
ElementsPadding.PaddingLeft = UDim.new(0, 8)

HitboxDropDown.Name = "HitboxDropDown"
HitboxDropDown.Parent = ElementBox
HitboxDropDown.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
HitboxDropDown.BorderColor3 = Color3.fromRGB(22, 22, 22)
HitboxDropDown.Size = UDim2.new(0, 139, 0, 17)
HitboxDropDown.AutoButtonColor = false
HitboxDropDown.Font = Enum.Font.SourceSans
HitboxDropDown.Text = "head"
HitboxDropDown.TextColor3 = Color3.fromRGB(145, 145, 145)
HitboxDropDown.TextSize = 14.000
HitboxDropDown.TextXAlignment = Enum.TextXAlignment.Left

HitboxPadding.Name = "HitboxPadding"
HitboxPadding.Parent = HitboxDropDown
HitboxPadding.PaddingLeft = UDim.new(0, 5)

HitboxName.Name = "HitboxName"
HitboxName.Parent = HitboxDropDown
HitboxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HitboxName.BackgroundTransparency = 1.000
HitboxName.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitboxName.BorderSizePixel = 0
HitboxName.Position = UDim2.new(-0.0292335618, 0, -0.829683185, 0)
HitboxName.Size = UDim2.new(0, 104, 0, 14)
HitboxName.Font = Enum.Font.SourceSans
HitboxName.Text = "hitpart"
HitboxName.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxName.TextSize = 14.000
HitboxName.TextXAlignment = Enum.TextXAlignment.Left

Plus.Name = "Plus"
Plus.Parent = HitboxDropDown
Plus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Plus.BackgroundTransparency = 1.000
Plus.BorderColor3 = Color3.fromRGB(0, 0, 0)
Plus.BorderSizePixel = 0
Plus.Position = UDim2.new(0.917910457, 0, 0, 0)
Plus.Size = UDim2.new(0, 5, 0, 17)
Plus.Font = Enum.Font.SourceSans
Plus.Text = "+"
Plus.TextColor3 = Color3.fromRGB(255, 255, 255)
Plus.TextSize = 14.000
Plus.TextXAlignment = Enum.TextXAlignment.Right

SmoothingSilder.Name = "SmoothingSilder"
SmoothingSilder.Parent = ElementBox
SmoothingSilder.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
SmoothingSilder.BorderColor3 = Color3.fromRGB(22, 22, 22)
SmoothingSilder.Position = UDim2.new(0, 0, 0.542372882, 0)
SmoothingSilder.Size = UDim2.new(0, 238, 0, 14)
SmoothingSilder.AutoButtonColor = false
SmoothingSilder.Font = Enum.Font.SourceSans
SmoothingSilder.Text = ""
SmoothingSilder.TextColor3 = Color3.fromRGB(145, 145, 145)
SmoothingSilder.TextSize = 14.000
SmoothingSilder.TextXAlignment = Enum.TextXAlignment.Left

HitboxPadding_2.Name = "HitboxPadding"
HitboxPadding_2.Parent = SmoothingSilder
HitboxPadding_2.PaddingLeft = UDim.new(0, 5)

HitboxName_2.Name = "HitboxName"
HitboxName_2.Parent = SmoothingSilder
HitboxName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HitboxName_2.BackgroundTransparency = 1.000
HitboxName_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
HitboxName_2.BorderSizePixel = 0
HitboxName_2.Position = UDim2.new(-0.0168116484, 0, -1.0899179, 0)
HitboxName_2.Size = UDim2.new(0, 104, 0, 14)
HitboxName_2.Font = Enum.Font.SourceSans
HitboxName_2.Text = "smoothing"
HitboxName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
HitboxName_2.TextSize = 14.000
HitboxName_2.TextXAlignment = Enum.TextXAlignment.Left

Handle.Name = "Handle"
Handle.Parent = SmoothingSilder
Handle.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
Handle.BorderColor3 = Color3.fromRGB(22, 22, 22)
Handle.Position = UDim2.new(-0.0171673819, 0, 0, 0)
Handle.Size = UDim2.new(0, 9, 0, 14)
Handle.AutoButtonColor = false
Handle.Font = Enum.Font.SourceSans
Handle.Text = ""
Handle.TextColor3 = Color3.fromRGB(145, 145, 145)
Handle.TextSize = 14.000
Handle.TextXAlignment = Enum.TextXAlignment.Left

HandleUICorner.Name = "HandleUICorner"
HandleUICorner.Parent = Handle

SmoothingUICorner.Name = "SmoothingUICorner"
SmoothingUICorner.Parent = SmoothingSilder

Amnt.Name = "Amnt"
Amnt.Parent = SmoothingSilder
Amnt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Amnt.BackgroundTransparency = 1.000
Amnt.BorderColor3 = Color3.fromRGB(0, 0, 0)
Amnt.BorderSizePixel = 0
Amnt.Position = UDim2.new(0.25, 0, -1.09000003, 0)
Amnt.Size = UDim2.new(0, 25, 0, 14)
Amnt.Font = Enum.Font.SourceSans
Amnt.Text = "32"
Amnt.TextColor3 = Color3.fromRGB(145, 145, 145)
Amnt.TextSize = 14.000
Amnt.TextWrapped = true
Amnt.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout.Parent = ElementBox
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 15)

ElementPadding.Name = "ElementPadding"
ElementPadding.Parent = ScrollingFrame
ElementPadding.PaddingBottom = UDim.new(0, 6)
ElementPadding.PaddingLeft = UDim.new(0, 6)
ElementPadding.PaddingRight = UDim.new(0, 6)
ElementPadding.PaddingTop = UDim.new(0, 14)

AimbotBox.Name = "AimbotBox"
AimbotBox.Parent = ScrollingFrame
AimbotBox.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
AimbotBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
AimbotBox.BorderSizePixel = 0
AimbotBox.Position = UDim2.new(0, 0, -0.00208596629, 0)
AimbotBox.Size = UDim2.new(0, 260, 0, 117)

UICorner_2.Parent = AimbotBox

BoxName_2.Name = "BoxName"
BoxName_2.Parent = AimbotBox
BoxName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxName_2.BackgroundTransparency = 1.000
BoxName_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
BoxName_2.BorderSizePixel = 0
BoxName_2.Position = UDim2.new(0.0349344984, 0, -0.00881622359, 0)
BoxName_2.Size = UDim2.new(0, 54, 0, 22)
BoxName_2.Font = Enum.Font.SourceSans
BoxName_2.Text = "main"
BoxName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxName_2.TextSize = 17.000
BoxName_2.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame_2.Parent = AimbotBox
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Position = UDim2.new(0, 0, 0.197281688, 0)
ScrollingFrame_2.Size = UDim2.new(0, 266, 0, 89)
ScrollingFrame_2.ScrollBarThickness = 0

ElementBox_2.Name = "ElementBox"
ElementBox_2.Parent = ScrollingFrame_2
ElementBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElementBox_2.BackgroundTransparency = 1.000
ElementBox_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElementBox_2.BorderSizePixel = 0
ElementBox_2.Position = UDim2.new(0, 0, -0.0188820586, 0)
ElementBox_2.Size = UDim2.new(0, 229, 0, 144)

enabled.Name = "enabled"
enabled.Parent = ElementBox_2
enabled.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
enabled.BorderColor3 = Color3.fromRGB(29, 29, 29)
enabled.Position = UDim2.new(0.0180995483, 0, -0.220338985, 0)
enabled.Size = UDim2.new(0, 15, 0, 16)
enabled.AutoButtonColor = false
enabled.Font = Enum.Font.SourceSans
enabled.Text = ""
enabled.TextColor3 = Color3.fromRGB(0, 0, 0)
enabled.TextSize = 14.000

ToggleName.Name = "ToggleName"
ToggleName.Parent = enabled
ToggleName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName.BackgroundTransparency = 1.000
ToggleName.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName.BorderSizePixel = 0
ToggleName.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName.Size = UDim2.new(0, 200, 0, 16)
ToggleName.Font = Enum.Font.SourceSans
ToggleName.Text = "enabled"
ToggleName.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName.TextSize = 14.000
ToggleName.TextXAlignment = Enum.TextXAlignment.Left

pred.Name = "pred"
pred.Parent = enabled
pred.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
pred.BorderColor3 = Color3.fromRGB(29, 29, 29)
pred.Position = UDim2.new(11.1999998, 0, 0.100917816, 0)
pred.Size = UDim2.new(0, 62, 0, 16)
pred.Font = Enum.Font.SourceSans
pred.PlaceholderText = "prediction"
pred.Text = ""
pred.TextColor3 = Color3.fromRGB(255, 255, 255)
pred.TextSize = 14.000
pred.TextWrapped = true

bind.Name = "bind"
bind.Parent = enabled
bind.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
bind.BorderColor3 = Color3.fromRGB(29, 29, 29)
bind.Position = UDim2.new(9.73333359, 0, 0.100917816, 0)
bind.Size = UDim2.new(0, 22, 0, 16)
bind.Font = Enum.Font.SourceSans
bind.PlaceholderText = "key"
bind.Text = ""
bind.TextColor3 = Color3.fromRGB(255, 255, 255)
bind.TextSize = 14.000
bind.TextWrapped = true

tracer.Name = "tracer"
tracer.Parent = ElementBox_2
tracer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
tracer.BorderColor3 = Color3.fromRGB(29, 29, 29)
tracer.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
tracer.Size = UDim2.new(0, 15, 0, 16)
tracer.AutoButtonColor = false
tracer.Font = Enum.Font.SourceSans
tracer.Text = ""
tracer.TextColor3 = Color3.fromRGB(0, 0, 0)
tracer.TextSize = 14.000

ToggleName_2.Name = "ToggleName"
ToggleName_2.Parent = tracer
ToggleName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_2.BackgroundTransparency = 1.000
ToggleName_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_2.BorderSizePixel = 0
ToggleName_2.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_2.Size = UDim2.new(0, 200, 0, 16)
ToggleName_2.Font = Enum.Font.SourceSans
ToggleName_2.Text = "show tracers"
ToggleName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_2.TextSize = 14.000
ToggleName_2.TextXAlignment = Enum.TextXAlignment.Left

ElementsPadding_2.Name = "ElementsPadding"
ElementsPadding_2.Parent = ElementBox_2
ElementsPadding_2.PaddingLeft = UDim.new(0, 8)

UIListLayout_2.Parent = ElementBox_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 5)

fov.Name = "fov"
fov.Parent = ElementBox_2
fov.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
fov.BorderColor3 = Color3.fromRGB(29, 29, 29)
fov.Position = UDim2.new(0.0180995483, 0, 0.118644066, 0)
fov.Size = UDim2.new(0, 15, 0, 16)
fov.AutoButtonColor = false
fov.Font = Enum.Font.SourceSans
fov.Text = ""
fov.TextColor3 = Color3.fromRGB(0, 0, 0)
fov.TextSize = 14.000

ToggleName_3.Name = "ToggleName"
ToggleName_3.Parent = fov
ToggleName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_3.BackgroundTransparency = 1.000
ToggleName_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_3.BorderSizePixel = 0
ToggleName_3.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_3.Size = UDim2.new(0, 200, 0, 16)
ToggleName_3.Font = Enum.Font.SourceSans
ToggleName_3.Text = "fov outline"
ToggleName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_3.TextSize = 14.000
ToggleName_3.TextXAlignment = Enum.TextXAlignment.Left

autopred.Name = "autopred"
autopred.Parent = ElementBox_2
autopred.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
autopred.BorderColor3 = Color3.fromRGB(29, 29, 29)
autopred.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
autopred.Size = UDim2.new(0, 15, 0, 16)
autopred.AutoButtonColor = false
autopred.Font = Enum.Font.SourceSans
autopred.Text = ""
autopred.TextColor3 = Color3.fromRGB(0, 0, 0)
autopred.TextSize = 14.000

ToggleName_4.Name = "ToggleName"
ToggleName_4.Parent = autopred
ToggleName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_4.BackgroundTransparency = 1.000
ToggleName_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_4.BorderSizePixel = 0
ToggleName_4.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_4.Size = UDim2.new(0, 200, 0, 16)
ToggleName_4.Font = Enum.Font.SourceSans
ToggleName_4.Text = "auto prediction"
ToggleName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_4.TextSize = 14.000
ToggleName_4.TextXAlignment = Enum.TextXAlignment.Left

usemousesenv.Name = "usemousesenv"
usemousesenv.Parent = ElementBox_2
usemousesenv.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
usemousesenv.BorderColor3 = Color3.fromRGB(29, 29, 29)
usemousesenv.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
usemousesenv.Size = UDim2.new(0, 15, 0, 16)
usemousesenv.AutoButtonColor = false
usemousesenv.Font = Enum.Font.SourceSans
usemousesenv.Text = ""
usemousesenv.TextColor3 = Color3.fromRGB(0, 0, 0)
usemousesenv.TextSize = 14.000

ToggleName_5.Name = "ToggleName"
ToggleName_5.Parent = usemousesenv
ToggleName_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_5.BackgroundTransparency = 1.000
ToggleName_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_5.BorderSizePixel = 0
ToggleName_5.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_5.Size = UDim2.new(0, 200, 0, 16)
ToggleName_5.Font = Enum.Font.SourceSans
ToggleName_5.Text = "use mouse senv"
ToggleName_5.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_5.TextSize = 14.000
ToggleName_5.TextXAlignment = Enum.TextXAlignment.Left

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 6, 0, 7)
UIGridLayout.CellSize = UDim2.new(0, 260, 0, 110)
UIGridLayout.FillDirectionMaxCells = 2

OnHitBox.Name = "OnHitBox"
OnHitBox.Parent = ScrollingFrame
OnHitBox.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
OnHitBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
OnHitBox.BorderSizePixel = 0
OnHitBox.Position = UDim2.new(0.281904757, 0, -0.0294117648, 0)
OnHitBox.Size = UDim2.new(0, 265, 0, 38)

UICorner_3.Parent = OnHitBox

BoxName_3.Name = "BoxName"
BoxName_3.Parent = OnHitBox
BoxName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxName_3.BackgroundTransparency = 1.000
BoxName_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
BoxName_3.BorderSizePixel = 0
BoxName_3.Position = UDim2.new(0.0349344984, 0, -0.00881622359, 0)
BoxName_3.Size = UDim2.new(0, 54, 0, 22)
BoxName_3.Font = Enum.Font.SourceSans
BoxName_3.Text = "onhit"
BoxName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxName_3.TextSize = 17.000
BoxName_3.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame_3.Parent = OnHitBox
ScrollingFrame_3.Active = true
ScrollingFrame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_3.BackgroundTransparency = 1.000
ScrollingFrame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_3.BorderSizePixel = 0
ScrollingFrame_3.Position = UDim2.new(0, 0, 0.197281688, 0)
ScrollingFrame_3.Size = UDim2.new(0, 266, 0, 89)
ScrollingFrame_3.ScrollBarThickness = 0

ElementBox_3.Name = "ElementBox"
ElementBox_3.Parent = ScrollingFrame_3
ElementBox_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElementBox_3.BackgroundTransparency = 1.000
ElementBox_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElementBox_3.BorderSizePixel = 0
ElementBox_3.Position = UDim2.new(0, 0, -0.0188820586, 0)
ElementBox_3.Size = UDim2.new(0, 229, 0, 144)

ElementsPadding_3.Name = "ElementsPadding"
ElementsPadding_3.Parent = ElementBox_3
ElementsPadding_3.PaddingLeft = UDim.new(0, 8)

UIListLayout_3.Parent = ElementBox_3
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 5)

skeleton.Name = "skeleton"
skeleton.Parent = ElementBox_3
skeleton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
skeleton.BorderColor3 = Color3.fromRGB(29, 29, 29)
skeleton.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
skeleton.Size = UDim2.new(0, 15, 0, 16)
skeleton.AutoButtonColor = false
skeleton.Font = Enum.Font.SourceSans
skeleton.Text = ""
skeleton.TextColor3 = Color3.fromRGB(0, 0, 0)
skeleton.TextSize = 14.000

ToggleName_6.Name = "ToggleName"
ToggleName_6.Parent = skeleton
ToggleName_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_6.BackgroundTransparency = 1.000
ToggleName_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_6.BorderSizePixel = 0
ToggleName_6.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_6.Size = UDim2.new(0, 200, 0, 16)
ToggleName_6.Font = Enum.Font.SourceSans
ToggleName_6.Text = "skeleton on hit"
ToggleName_6.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_6.TextSize = 14.000
ToggleName_6.TextXAlignment = Enum.TextXAlignment.Left

chams.Name = "chams"
chams.Parent = ElementBox_3
chams.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
chams.BorderColor3 = Color3.fromRGB(29, 29, 29)
chams.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
chams.Size = UDim2.new(0, 15, 0, 16)
chams.AutoButtonColor = false
chams.Font = Enum.Font.SourceSans
chams.Text = ""
chams.TextColor3 = Color3.fromRGB(0, 0, 0)
chams.TextSize = 14.000

ToggleName_7.Name = "ToggleName"
ToggleName_7.Parent = chams
ToggleName_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_7.BackgroundTransparency = 1.000
ToggleName_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_7.BorderSizePixel = 0
ToggleName_7.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_7.Size = UDim2.new(0, 200, 0, 16)
ToggleName_7.Font = Enum.Font.SourceSans
ToggleName_7.Text = "chams on hit"
ToggleName_7.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_7.TextSize = 14.000
ToggleName_7.TextXAlignment = Enum.TextXAlignment.Left

hitsound.Name = "hitsound"
hitsound.Parent = ElementBox_3
hitsound.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
hitsound.BorderColor3 = Color3.fromRGB(29, 29, 29)
hitsound.Position = UDim2.new(0, 0, 0.291666657, 0)
hitsound.Size = UDim2.new(0, 235, 0, 16)
hitsound.Font = Enum.Font.SourceSans
hitsound.PlaceholderText = "hitsound"
hitsound.Text = ""
hitsound.TextColor3 = Color3.fromRGB(255, 255, 255)
hitsound.TextSize = 14.000
hitsound.TextWrapped = true

TitleLine.Name = "TitleLine"
TitleLine.Parent = Body
TitleLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLine.BorderColor3 = Color3.fromRGB(57, 57, 57)
TitleLine.BorderSizePixel = 0
TitleLine.Position = UDim2.new(0.0171048883, 0, 0.0732648671, 0)
TitleLine.Size = UDim2.new(0, 543, 0, 1)

BodyUICorner.Name = "BodyUICorner"
BodyUICorner.Parent = Body

BodyPadding.Name = "BodyPadding"
BodyPadding.Parent = Body
BodyPadding.PaddingBottom = UDim.new(0, 5)
BodyPadding.PaddingLeft = UDim.new(0, 5)
BodyPadding.PaddingRight = UDim.new(0, 5)
BodyPadding.PaddingTop = UDim.new(0, 5)

Tabs.Name = "Tabs"
Tabs.Parent = Body
Tabs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tabs.BackgroundTransparency = 1.000
Tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tabs.BorderSizePixel = 0
Tabs.Position = UDim2.new(0.0171048883, 0, 0.0940860212, 0)
Tabs.Size = UDim2.new(0, 542, 0, 16)

UIListLayout_4.Parent = Tabs
UIListLayout_4.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_4.Padding = UDim.new(0, 6)

aimbot.Name = "aimbot"
aimbot.Parent = Tabs
aimbot.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
aimbot.BackgroundTransparency = 1.000
aimbot.BorderColor3 = Color3.fromRGB(0, 0, 0)
aimbot.BorderSizePixel = 0
aimbot.Position = UDim2.new(0.0221402217, 0, 0, 0)
aimbot.Size = UDim2.new(0, 47, 0, 13)
aimbot.AutoButtonColor = false
aimbot.Font = Enum.Font.SourceSans
aimbot.Text = "aim aissist"
aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
aimbot.TextSize = 14.000

silentaim.Name = "silentaim"
silentaim.Parent = Tabs
silentaim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
silentaim.BackgroundTransparency = 1.000
silentaim.BorderColor3 = Color3.fromRGB(0, 0, 0)
silentaim.BorderSizePixel = 0
silentaim.Size = UDim2.new(0, 47, 0, 13)
silentaim.AutoButtonColor = false
silentaim.Font = Enum.Font.SourceSans
silentaim.Text = "silent aim"
silentaim.TextColor3 = Color3.fromRGB(144, 144, 144)
silentaim.TextSize = 14.000

render.Name = "render"
render.Parent = Tabs
render.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
render.BackgroundTransparency = 1.000
render.BorderColor3 = Color3.fromRGB(0, 0, 0)
render.BorderSizePixel = 0
render.Position = UDim2.new(0.208487079, 0, 0, 0)
render.Size = UDim2.new(0, 35, 0, 14)
render.AutoButtonColor = false
render.Font = Enum.Font.SourceSans
render.Text = "render"
render.TextColor3 = Color3.fromRGB(144, 144, 144)
render.TextSize = 14.000

misc.Name = "misc"
misc.Parent = Tabs
misc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
misc.BackgroundTransparency = 1.000
misc.BorderColor3 = Color3.fromRGB(0, 0, 0)
misc.BorderSizePixel = 0
misc.Position = UDim2.new(0.284132838, 0, 0, 0)
misc.Size = UDim2.new(0, 28, 0, 14)
misc.AutoButtonColor = false
misc.Font = Enum.Font.SourceSans
misc.Text = "misc"
misc.TextColor3 = Color3.fromRGB(144, 144, 144)
misc.TextSize = 14.000

antiaim.Name = "antiaim"
antiaim.Parent = Tabs
antiaim.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
antiaim.BackgroundTransparency = 1.000
antiaim.BorderColor3 = Color3.fromRGB(0, 0, 0)
antiaim.BorderSizePixel = 0
antiaim.Position = UDim2.new(0.346863478, 0, 0, 0)
antiaim.Size = UDim2.new(0, 21, 0, 14)
antiaim.AutoButtonColor = false
antiaim.Font = Enum.Font.SourceSans
antiaim.Text = "antiaim"
antiaim.TextColor3 = Color3.fromRGB(144, 144, 144)
antiaim.TextSize = 14.000

Title.Name = "Title"
Title.Parent = Body
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0171048883, 0, 0, 0)
Title.Size = UDim2.new(0, 105, 0, 27)
Title.Font = Enum.Font.SourceSans
Title.Text = "tipware"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Title.TextXAlignment = Enum.TextXAlignment.Left

SubTitle.Name = "SubTitle"
SubTitle.Parent = Title
SubTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubTitle.BackgroundTransparency = 1.000
SubTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubTitle.BorderSizePixel = 0
SubTitle.Position = UDim2.new(0.374987781, 0, 0, 0)
SubTitle.Size = UDim2.new(0, 25, 0, 27)
SubTitle.Font = Enum.Font.SourceSans
SubTitle.Text = ".lua"
SubTitle.TextColor3 = Color3.fromRGB(144, 144, 144)
SubTitle.TextSize = 14.000
SubTitle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SubTitle.TextXAlignment = Enum.TextXAlignment.Left

SubNote.Name = "SubNote"
SubNote.Parent = Body
SubNote.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SubNote.BackgroundTransparency = 1.000
SubNote.BorderColor3 = Color3.fromRGB(0, 0, 0)
SubNote.BorderSizePixel = 0
SubNote.Position = UDim2.new(0.121047594, 0, -0.000102301332, 0)
SubNote.Size = UDim2.new(0, 485, 0, 28)
SubNote.Font = Enum.Font.SourceSans
SubNote.Text = "Private"
SubNote.TextColor3 = Color3.fromRGB(255, 255, 255)
SubNote.TextSize = 15.000
SubNote.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SubNote.TextWrapped = true
SubNote.TextXAlignment = Enum.TextXAlignment.Right

UIScale.Parent = Body

local AimAissist = {
	Enabled = false,
	Prediction = 0,
	Tracer = false,
	FovOutline = false,
	AutoPredictions = false,
	UseMouseSenv = false,
	
	HitPart = "Head",
	Smoothing = 0,
	
	SkeletonOnHit = false,
	ChamsOnHit = false,
}

-- Functions

-- Window

local SubNoteText = {"aint gon fix mobile problem", "idk what to add", "eric", "Draxxco", "atzlazyblue", "Private"}

while wait(0.5) do
	local randomIndex = math.random(1, #SubNoteText)
	SubNote.Text = SubNoteText[randomIndex]
end

Input.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.V then
        Library:Toggle()
    end
end)

-- Toggle Functions

chams.MouseButton1Click:Connect(function()
    if usemousesenv.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        usemousesenv.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        usemousesenv.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

skeleton.MouseButton1Click:Connect(function()
    if usemousesenv.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        usemousesenv.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        usemousesenv.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

enabled.MouseButton1Click:Connect(function()
    if enabled.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        enabled.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        enabled.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

pred.MouseButton1Click:Connect(function()
    if pred.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        pred.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        pred.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

bind.MouseButton1Click:Connect(function()
    if bind.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        bind.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        bind.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

tracer.MouseButton1Click:Connect(function()
    if tracer.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        tracer.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        tracer.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

fov.MouseButton1Click:Connect(function()
    if fov.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        fov.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        fov.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

autopred.MouseButton1Click:Connect(function()
    if autopred.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        autopred.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        autopred.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

usemousesenv.MouseButton1Click:Connect(function()
    if usemousesenv.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        usemousesenv.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    else
        usemousesenv.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    end
end)

-- Tabs Functions

aimbot.MouseButton1Click:Connect(function()
    if aimbot.TextColor3 == Color3.fromRGB(255, 255, 255) then
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
	    render.TextColor3 = Color3.fromRGB(145, 145, 145)
	    misc.TextColor3 = Color3.fromRGB(145, 145, 145)
	    antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
    else
        aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

silentaim.MouseButton1Click:Connect(function()
    if silentaim.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
	    render.TextColor3 = Color3.fromRGB(145, 145, 145)
	    misc.TextColor3 = Color3.fromRGB(145, 145, 145)
	    antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
    else
        silentaim.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

render.MouseButton1Click:Connect(function()
    if render.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
	    misc.TextColor3 = Color3.fromRGB(145, 145, 145)
	    antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
    else
        render.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

misc.MouseButton1Click:Connect(function()
    if misc.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
	    render.TextColor3 = Color3.fromRGB(145, 145, 145)
	    antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
    else
        misc.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

antiaim.MouseButton1Click:Connect(function()
    if antiaim.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
	    render.TextColor3 = Color3.fromRGB(145, 145, 145)
	    misc.TextColor3 = Color3.fromRGB(145, 145, 145)
    else
        antiaim.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

-- RunService Functions
