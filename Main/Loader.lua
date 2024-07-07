function Dragify(frame, parent)

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

local Loader = Instance.new("ScreenGui")
local LoaderBody = Instance.new("Frame")
Dragify(LoaderBody, LoaderBody)
MobileDragify(LoaderBody, 0.6)
local info = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local infotitle = Instance.new("TextLabel")
local Title = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local options = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local optionstitle = Instance.new("TextLabel")
local exit = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local load = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local StattusFrame = Instance.new("Frame")
local Status = Instance.new("TextLabel")
local Status_2 = Instance.new("TextLabel")
local Status_3 = Instance.new("TextLabel")
local GameImageLabel = Instance.new("ImageLabel")

Loader.Name = "Loader"
Loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loader.DisplayOrder = 9999
Loader.ResetOnSpawn = false

LoaderBody.Name = "LoaderBody"
LoaderBody.Parent = Loader
LoaderBody.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
LoaderBody.BorderColor3 = Color3.fromRGB(61, 61, 61)
LoaderBody.Position = UDim2.new(0.357889235, 0, 0.449275374, 0)
LoaderBody.Size = UDim2.new(0, 340, 0, 182)

info.Name = "info"
info.Parent = LoaderBody
info.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
info.BorderColor3 = Color3.fromRGB(0, 0, 0)
info.BorderSizePixel = 0
info.Position = UDim2.new(0.0294117648, 0, 0.137362301, 0)
info.Size = UDim2.new(0, 314, 0, 99)

UICorner.Parent = info

infotitle.Name = "infotitle"
infotitle.Parent = info
infotitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infotitle.BackgroundTransparency = 1.000
infotitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
infotitle.BorderSizePixel = 0
infotitle.Position = UDim2.new(0.0198576134, 0, 0, 0)
infotitle.Size = UDim2.new(0, 53, 0, 13)
infotitle.Font = Enum.Font.SourceSans
infotitle.Text = "information"
infotitle.TextColor3 = Color3.fromRGB(255, 255, 255)
infotitle.TextSize = 15.000
infotitle.TextXAlignment = Enum.TextXAlignment.Left

Title.Name = "Title"
Title.Parent = LoaderBody
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0294117648, 0, 0, 0)
Title.Size = UDim2.new(0, 314, 0, 25)
Title.Font = Enum.Font.SourceSans
Title.Text = "tipware.lua"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UICorner_2.Parent = LoaderBody

options.Name = "options"
options.Parent = LoaderBody
options.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
options.BorderColor3 = Color3.fromRGB(0, 0, 0)
options.BorderSizePixel = 0
options.Position = UDim2.new(0.0294117648, 0, 0.722165942, 0)
options.Size = UDim2.new(0, 314, 0, 41)

UICorner_3.Parent = options

optionstitle.Name = "optionstitle"
optionstitle.Parent = options
optionstitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
optionstitle.BackgroundTransparency = 1.000
optionstitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
optionstitle.BorderSizePixel = 0
optionstitle.Position = UDim2.new(0.0198576134, 0, 0, 0)
optionstitle.Size = UDim2.new(0, 53, 0, 13)
optionstitle.Font = Enum.Font.SourceSans
optionstitle.Text = "Options"
optionstitle.TextColor3 = Color3.fromRGB(255, 255, 255)
optionstitle.TextSize = 15.000
optionstitle.TextXAlignment = Enum.TextXAlignment.Left

exit.Name = "exit"
exit.Parent = options
exit.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
exit.BorderColor3 = Color3.fromRGB(0, 0, 0)
exit.BorderSizePixel = 0
exit.Position = UDim2.new(0.529411972, 0, 0.463414639, 0)
exit.Size = UDim2.new(0, 139, 0, 15)
exit.AutoButtonColor = false
exit.Font = Enum.Font.SourceSans
exit.Text = "exit"
exit.TextColor3 = Color3.fromRGB(255, 255, 255)
exit.TextSize = 14.000

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = exit

load.Name = "load"
load.Parent = options
load.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
load.BorderColor3 = Color3.fromRGB(0, 0, 0)
load.BorderSizePixel = 0
load.Position = UDim2.new(0.0166730937, 0, 0.463414639, 0)
load.Size = UDim2.new(0, 139, 0, 15)
load.AutoButtonColor = false
load.Font = Enum.Font.SourceSans
load.Text = "load"
load.TextColor3 = Color3.fromRGB(255, 255, 255)
load.TextSize = 14.000

UICorner_5.CornerRadius = UDim.new(0, 4)
UICorner_5.Parent = load

StattusFrame.Name = "StattusFrame"
StattusFrame.Parent = LoaderBody
StattusFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
StattusFrame.BackgroundTransparency = 1.000
StattusFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
StattusFrame.BorderSizePixel = 0
StattusFrame.Size = UDim2.new(0, 100, 0, 100)

Status.Name = "Status"
Status.Parent = StattusFrame
Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status.BackgroundTransparency = 1.000
Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.909992576, 0, 0.351313174, 0)
Status.Size = UDim2.new(0, 53, 0, 13)
Status.Font = Enum.Font.SourceSans
Status.Text = "Welcome User"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 15.000
Status.TextXAlignment = Enum.TextXAlignment.Left

Status_2.Name = "Status"
Status_2.Parent = Status
Status_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_2.BackgroundTransparency = 1.000
Status_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status_2.BorderSizePixel = 0
Status_2.Position = UDim2.new(-0.00102901459, 0, 0.977466285, 0)
Status_2.Size = UDim2.new(0, 53, 0, 13)
Status_2.Font = Enum.Font.SourceSans
Status_2.Text = "Loaded Aimbot Verison"
Status_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_2.TextSize = 15.000
Status_2.TextXAlignment = Enum.TextXAlignment.Left

Status_3.Name = "Status"
Status_3.Parent = Status
Status_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Status_3.BackgroundTransparency = 1.000
Status_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status_3.BorderSizePixel = 0
Status_3.Position = UDim2.new(0, 0, 1.97746634, 0)
Status_3.Size = UDim2.new(0, 63, 0, 13)
Status_3.Font = Enum.Font.SourceSans
Status_3.Text = "Verison 1.0"
Status_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Status_3.TextSize = 15.000
Status_3.TextXAlignment = Enum.TextXAlignment.Left

GameImageLabel.Name = "GameImageLabel"
GameImageLabel.Parent = StattusFrame
GameImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
GameImageLabel.BorderSizePixel = 0
GameImageLabel.Position = UDim2.new(0.180514678, 0, 0.397613227, 0)
GameImageLabel.Size = UDim2.new(0, 83, 0, 80)
GameImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

load.MouseButton1Click:Connect(function()
    -- load something
end)

exit.MouseButton1Click:Connect(function()
    local CoreGui = game:GetService("CoreGui")
    local LoaderUI = CoreGui:FindFirstChild("Tipware")
    if LoaderUI then
        TipwareGui:Destroy()
    end
end)
