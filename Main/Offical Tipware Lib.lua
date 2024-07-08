local Library = {}

local TipwareVersion = "v1.1A."

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
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

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - mousePos
            parent.Position = UDim2.new(
                framePos.X.Scale,
                framePos.X.Offset + delta.X,
                framePos.Y.Scale,
                framePos.Y.Offset + delta.Y
            )
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
        if input.UserInputType == Enum.UserInputType.Touch then
            dragStart = nil
        end
    end)
end

function Library:Toggle()
    local CoreGui = game:GetService("CoreGui")
    local TipwareGui = CoreGui:FindFirstChild("Tipware")
    if not TipwareGui then return end
    
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
MobileDragify(Body, 0.6)
Dragify(Body, Body)
local Title = Instance.new("TextLabel")
local SubTitle = Instance.new("TextLabel")
local SubNote = Instance.new("TextLabel")

local Elements = Instance.new("Frame")
local ElementUICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local ElementPadding = Instance.new("UIPadding")

local LeftBox = Instance.new("Frame")
local LftBUIListLayout = Instance.new("UIListLayout")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local BoxName = Instance.new("TextLabel")
local ScrollingFrame_2 = Instance.new("ScrollingFrame")
local ElementBox = Instance.new("Frame")

local ElementsPadding = Instance.new("UIPadding")
local UIListLayout = Instance.new("UIListLayout")

local UIPadding = Instance.new("UIPadding")
local RightBox = Instance.new("Frame")
local TitleLine = Instance.new("Frame")
local BodyUICorner = Instance.new("UICorner")
local BodyPadding = Instance.new("UIPadding")
local Tabs = Instance.new("Frame")
local TabUIListLayout = Instance.new("UIListLayout")
local aimbot = Instance.new("TextButton")
local silentaim = Instance.new("TextButton")
local render = Instance.new("TextButton")
local misc = Instance.new("TextButton")
local antiaim = Instance.new("TextButton")

local enabledtoggle = Instance.new("TextButton")
local ToggleName = Instance.new("TextLabel")

local predictiontextbox = Instance.new("TextBox")

local enableonmove = Instance.new("TextButton")
local ToggleName_2 = Instance.new("TextLabel")

local usemousesensitivity = Instance.new("TextButton")
local ToggleName_3 = Instance.new("TextLabel")

local customcalculation = Instance.new("TextButton")
local ToggleName_4 = Instance.new("TextLabel")

local autoprediction = Instance.new("TextButton")
local ToggleName_5 = Instance.new("TextLabel")

local smoothing = Instance.new("TextLabel")
local SliderBackground = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local AmountNumber = Instance.new("TextLabel")

Tipware.Name = "Tipware"
Tipware.Parent = game.CoreGui
Tipware.DisplayOrder = 9999
Tipware.ResetOnSpawn = false

Body.Name = "Body"
Body.Parent = Tipware
Body.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
Body.BorderColor3 = Color3.fromRGB(61, 61, 61)
Body.Position = UDim2.new(0.539707422, 0, 0.219806761, 0)
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
SubNote.Position = UDim2.new(0.121047594, 0, -0.00286473217, 0)
SubNote.Size = UDim2.new(0, 485, 0, 28)
SubNote.Font = Enum.Font.SourceSans
SubNote.Text = "Private"
SubNote.TextColor3 = Color3.fromRGB(255, 255, 255)
SubNote.TextSize = 15.000
SubNote.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
SubNote.TextWrapped = true
SubNote.TextXAlignment = Enum.TextXAlignment.Right

ElementPadding.Name = "ElementPadding"
ElementPadding.Parent = ScrollingFrame
ElementPadding.PaddingBottom = UDim.new(0, 6)
ElementPadding.PaddingLeft = UDim.new(0, 6)
ElementPadding.PaddingRight = UDim.new(0, 6)
ElementPadding.PaddingTop = UDim.new(0, 14)

LeftBox.Name = "LeftBox"
LeftBox.Parent = ScrollingFrame
LeftBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftBox.BackgroundTransparency = 1.000
LeftBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
LeftBox.BorderSizePixel = 0
LeftBox.Position = UDim2.new(0.0142682754, 0, 0.00485461438, 0)
LeftBox.Size = UDim2.new(0, 236, 0, 273)

LftBUIListLayout.Name = "LftBUIListLayout"
LftBUIListLayout.Parent = LeftBox
LftBUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
LftBUIListLayout.Padding = UDim.new(0, 4)

main.Name = "main"
main.Parent = LeftBox
main.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(-0.0593220331, 0, -0.0402930416, 0)
main.Size = UDim2.new(0, 260, 0, 273)

UICorner.Parent = main

BoxName.Name = "BoxName"
BoxName.Parent = main
BoxName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BoxName.BackgroundTransparency = 1.000
BoxName.BorderColor3 = Color3.fromRGB(0, 0, 0)
BoxName.BorderSizePixel = 0
BoxName.Position = UDim2.new(0.0349344984, 0, -0.00881622359, 0)
BoxName.Size = UDim2.new(0, 54, 0, 22)
BoxName.Font = Enum.Font.SourceSans
BoxName.Text = "main"
BoxName.TextColor3 = Color3.fromRGB(255, 255, 255)
BoxName.TextSize = 17.000
BoxName.TextXAlignment = Enum.TextXAlignment.Left

ScrollingFrame_2.Parent = main
ScrollingFrame_2.Active = true
ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_2.BackgroundTransparency = 1.000
ScrollingFrame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_2.BorderSizePixel = 0
ScrollingFrame_2.Position = UDim2.new(0, 0, 0.0742026269, 0)
ScrollingFrame_2.Size = UDim2.new(0, 266, 0, 245)
ScrollingFrame_2.ScrollBarThickness = 0

ElementBox.Name = "ElementBox"
ElementBox.Parent = ScrollingFrame_2
ElementBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ElementBox.BackgroundTransparency = 1.000
ElementBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
ElementBox.BorderSizePixel = 0
ElementBox.Position = UDim2.new(0, 0, -0.0188820586, 0)
ElementBox.Size = UDim2.new(0, 229, 0, 144)

ElementsPadding.Name = "ElementsPadding"
ElementsPadding.Parent = ElementBox
ElementsPadding.PaddingLeft = UDim.new(0, 8)

UIListLayout.Parent = ElementBox
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 5)

enabledtoggle.Name = "enabledtoggle"
enabledtoggle.Parent = ElementBox
enabledtoggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
enabledtoggle.BorderColor3 = Color3.fromRGB(29, 29, 29)
enabledtoggle.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
enabledtoggle.Size = UDim2.new(0, 15, 0, 16)
enabledtoggle.AutoButtonColor = false
enabledtoggle.Font = Enum.Font.SourceSans
enabledtoggle.Text = ""
enabledtoggle.TextColor3 = Color3.fromRGB(0, 0, 0)
enabledtoggle.TextSize = 14.000

ToggleName.Name = "ToggleName"
ToggleName.Parent = enabledtoggle
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

predictiontextbox.Name = "predictiontextbox"
predictiontextbox.Parent = ElementBox
predictiontextbox.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
predictiontextbox.BorderColor3 = Color3.fromRGB(29, 29, 29)
predictiontextbox.Position = UDim2.new(0, 0, 0.145833328, 0)
predictiontextbox.Size = UDim2.new(0, 243, 0, 15)
predictiontextbox.Font = Enum.Font.SourceSans
predictiontextbox.PlaceholderText = "prediction"
predictiontextbox.Text = ""
predictiontextbox.TextColor3 = Color3.fromRGB(255, 255, 255)
predictiontextbox.TextSize = 14.000
predictiontextbox.TextWrapped = true

enableonmove.Name = "enableonmove"
enableonmove.Parent = ElementBox
enableonmove.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
enableonmove.BorderColor3 = Color3.fromRGB(29, 29, 29)
enableonmove.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
enableonmove.Size = UDim2.new(0, 15, 0, 16)
enableonmove.AutoButtonColor = false
enableonmove.Font = Enum.Font.SourceSans
enableonmove.Text = ""
enableonmove.TextColor3 = Color3.fromRGB(0, 0, 0)
enableonmove.TextSize = 14.000

ToggleName_2.Name = "ToggleName"
ToggleName_2.Parent = enableonmove
ToggleName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_2.BackgroundTransparency = 1.000
ToggleName_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_2.BorderSizePixel = 0
ToggleName_2.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_2.Size = UDim2.new(0, 200, 0, 16)
ToggleName_2.Font = Enum.Font.SourceSans
ToggleName_2.Text = "enable on move"
ToggleName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_2.TextSize = 14.000
ToggleName_2.TextXAlignment = Enum.TextXAlignment.Left

usemousesensitivity.Name = "usemousesensitivity"
usemousesensitivity.Parent = ElementBox
usemousesensitivity.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
usemousesensitivity.BorderColor3 = Color3.fromRGB(29, 29, 29)
usemousesensitivity.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
usemousesensitivity.Size = UDim2.new(0, 15, 0, 16)
usemousesensitivity.AutoButtonColor = false
usemousesensitivity.Font = Enum.Font.SourceSans
usemousesensitivity.Text = ""
usemousesensitivity.TextColor3 = Color3.fromRGB(0, 0, 0)
usemousesensitivity.TextSize = 14.000

ToggleName_3.Name = "ToggleName"
ToggleName_3.Parent = usemousesensitivity
ToggleName_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_3.BackgroundTransparency = 1.000
ToggleName_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_3.BorderSizePixel = 0
ToggleName_3.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_3.Size = UDim2.new(0, 200, 0, 16)
ToggleName_3.Font = Enum.Font.SourceSans
ToggleName_3.Text = "use mouse sensitivity"
ToggleName_3.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_3.TextSize = 14.000
ToggleName_3.TextXAlignment = Enum.TextXAlignment.Left

customcalculation.Name = "customcalculation"
customcalculation.Parent = ElementBox
customcalculation.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
customcalculation.BorderColor3 = Color3.fromRGB(29, 29, 29)
customcalculation.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
customcalculation.Size = UDim2.new(0, 15, 0, 16)
customcalculation.AutoButtonColor = false
customcalculation.Font = Enum.Font.SourceSans
customcalculation.Text = ""
customcalculation.TextColor3 = Color3.fromRGB(0, 0, 0)
customcalculation.TextSize = 14.000

ToggleName_4.Name = "ToggleName"
ToggleName_4.Parent = customcalculation
ToggleName_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_4.BackgroundTransparency = 1.000
ToggleName_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_4.BorderSizePixel = 0
ToggleName_4.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_4.Size = UDim2.new(0, 200, 0, 16)
ToggleName_4.Font = Enum.Font.SourceSans
ToggleName_4.Text = "custom calculation"
ToggleName_4.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_4.TextSize = 14.000
ToggleName_4.TextXAlignment = Enum.TextXAlignment.Left

autoprediction.Name = "autoprediction"
autoprediction.Parent = ElementBox
autoprediction.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
autoprediction.BorderColor3 = Color3.fromRGB(29, 29, 29)
autoprediction.Position = UDim2.new(0.0180995483, 0, 0.457627118, 0)
autoprediction.Size = UDim2.new(0, 15, 0, 16)
autoprediction.AutoButtonColor = false
autoprediction.Font = Enum.Font.SourceSans
autoprediction.Text = ""
autoprediction.TextColor3 = Color3.fromRGB(0, 0, 0)
autoprediction.TextSize = 14.000

ToggleName_5.Name = "ToggleName"
ToggleName_5.Parent = autoprediction
ToggleName_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_5.BackgroundTransparency = 1.000
ToggleName_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
ToggleName_5.BorderSizePixel = 0
ToggleName_5.Position = UDim2.new(1.39999998, 0, 0, 0)
ToggleName_5.Size = UDim2.new(0, 200, 0, 16)
ToggleName_5.Font = Enum.Font.SourceSans
ToggleName_5.Text = "auto prediction"
ToggleName_5.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleName_5.TextSize = 14.000
ToggleName_5.TextXAlignment = Enum.TextXAlignment.Left

smoothing.Name = "smoothing"
smoothing.Parent = ElementBox
smoothing.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
smoothing.BackgroundTransparency = 1.000
smoothing.BorderColor3 = Color3.fromRGB(0, 0, 0)
smoothing.BorderSizePixel = 0
smoothing.Position = UDim2.new(0.00452488707, 0, 0.833333313, 0)
smoothing.Size = UDim2.new(0, 76, 0, 19)
smoothing.Font = Enum.Font.SourceSans
smoothing.Text = "smoothing"
smoothing.TextColor3 = Color3.fromRGB(255, 255, 255)
smoothing.TextSize = 15.000
smoothing.TextXAlignment = Enum.TextXAlignment.Left

SliderBackground.Name = "SliderBackground"
SliderBackground.Parent = smoothing
SliderBackground.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
SliderBackground.BorderColor3 = Color3.fromRGB(29, 29, 29)
SliderBackground.Position = UDim2.new(0.00463847164, 0, 0.979575694, 0)
SliderBackground.Size = UDim2.new(0, 232, 0, 14)

TextButton.Parent = SliderBackground
TextButton.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(-0.00175377843, 0, -0.0624411441, 0)
TextButton.Size = UDim2.new(0, 6, 0, 14)
TextButton.AutoButtonColor = false
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextSize = 14.000

UICorner_2.Parent = TextButton

AmountNumber.Name = "AmountNumber"
AmountNumber.Parent = smoothing
AmountNumber.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AmountNumber.BackgroundTransparency = 1.000
AmountNumber.BorderColor3 = Color3.fromRGB(0, 0, 0)
AmountNumber.BorderSizePixel = 0
AmountNumber.Position = UDim2.new(0.252028435, 0, 0.315789461, 0)
AmountNumber.Size = UDim2.new(0, 175, 0, 12)
AmountNumber.Font = Enum.Font.SourceSans
AmountNumber.Text = "0"
AmountNumber.TextColor3 = Color3.fromRGB(125, 125, 125)
AmountNumber.TextSize = 18.000
AmountNumber.TextWrapped = true
AmountNumber.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = ScrollingFrame_2
UIPadding.PaddingTop = UDim.new(0, 14)

RightBox.Name = "RightBox"
RightBox.Parent = ScrollingFrame
RightBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightBox.BackgroundTransparency = 1.000
RightBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
RightBox.BorderSizePixel = 0
RightBox.Position = UDim2.new(0.528919518, 0, 0.00548201939, 0)
RightBox.Size = UDim2.new(0, 244, 0, 273)

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

TabUIListLayout.Name = "TabUIListLayout"
TabUIListLayout.Parent = Tabs
TabUIListLayout.FillDirection = Enum.FillDirection.Horizontal
TabUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
TabUIListLayout.Padding = UDim.new(0, 6)

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

-- Functions

-- Toggle Functions

enabledtoggle.MouseButton1Click:Connect(function()
    if enabledtoggle.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        enabledtoggle.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    else
        enabledtoggle.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    end
end)

enableonmove.MouseButton1Click:Connect(function()
    if enableonmove.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        enableonmove.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    else
        enableonmove.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    end
end)

usemousesensitivity.MouseButton1Click:Connect(function()
    if usemousesensitivity.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        usemousesensitivity.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    else
        usemousesensitivity.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    end
end)

customcalculation.MouseButton1Click:Connect(function()
    if customcalculation.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        customcalculation.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    else
        customcalculation.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    end
end)

autoprediction.MouseButton1Click:Connect(function()
    if autoprediction.BackgroundColor3 == Color3.fromRGB(20, 20, 20) then
        autoprediction.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    else
        autoprediction.BackgroundColor3 = Color3.fromRGB(193, 154, 164)
    end
end)

-- Tabs Functions

aimbot.MouseButton1Click:Connect(function()
    if aimbot.TextColor3 == Color3.fromRGB(255, 255, 255) then
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        render.TextColor3 = Color3.fromRGB(145, 145, 145)
        misc.TextColor3 = Color3.fromRGB(145, 145, 145)
        antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        
        aimbot.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

silentaim.MouseButton1Click:Connect(function()
    if silentaim.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
        render.TextColor3 = Color3.fromRGB(145, 145, 145)
        misc.TextColor3 = Color3.fromRGB(145, 145, 145)
        antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        
        silentaim.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

render.MouseButton1Click:Connect(function()
    if render.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        misc.TextColor3 = Color3.fromRGB(145, 145, 145)
        antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        
        render.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

misc.MouseButton1Click:Connect(function()
    if misc.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        render.TextColor3 = Color3.fromRGB(145, 145, 145)
        antiaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        
        misc.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

antiaim.MouseButton1Click:Connect(function()
    if antiaim.TextColor3 == Color3.fromRGB(255, 255, 255) then
        aimbot.TextColor3 = Color3.fromRGB(145, 145, 145)
        silentaim.TextColor3 = Color3.fromRGB(145, 145, 145)
        render.TextColor3 = Color3.fromRGB(145, 145, 145)
        misc.TextColor3 = Color3.fromRGB(145, 145, 145)
        
        antiaim.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

-- Window

UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.V then
        Library:Toggle()
    end
end)