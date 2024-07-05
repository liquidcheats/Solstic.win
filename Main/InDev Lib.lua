local Tipware = Instance.new("ScreenGui")
local Body = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local Title2 = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local Outline2 = Instance.new("Frame")
local Outline3 = Instance.new("Frame")
local TabBody = Instance.new("Frame")
local RageTab = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local UIListLayout = Instance.new("UIListLayout")
local LegitTab = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UIPadding_4 = Instance.new("UIPadding")
local ESPTab = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local UIPadding_5 = Instance.new("UIPadding")
local LayoutItems = Instance.new("ScrollingFrame")
local ExampleSection = Instance.new("Frame")
local SectionTitle = Instance.new("TextLabel")
local SectionScroll = Instance.new("ScrollingFrame")
local SectionItems = Instance.new("Frame")
local UIListLayout_2 = Instance.new("UIListLayout")
local Toggle = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local UIPadding_6 = Instance.new("UIPadding")
local State = Instance.new("TextLabel")
local Textbox = Instance.new("Frame")
local Name_2 = Instance.new("TextLabel")
local UIPadding_7 = Instance.new("UIPadding")
local Value = Instance.new("TextBox")
local UIPadding_8 = Instance.new("UIPadding")
local Keybind = Instance.new("Frame")
local Name_3 = Instance.new("TextLabel")
local UIPadding_9 = Instance.new("UIPadding")
local State_2 = Instance.new("TextLabel")
local UIPadding_10 = Instance.new("UIPadding")
local Silder = Instance.new("Frame")
local Name_4 = Instance.new("TextLabel")
local UIPadding_11 = Instance.new("UIPadding")
local AmntBackground = Instance.new("Frame")
local AmntProgress = Instance.new("Frame")
local Default = Instance.new("TextLabel")
local HItPartSection = Instance.new("Frame")
local SectionTitle_2 = Instance.new("TextLabel")
local SectionItems_2 = Instance.new("Frame")
local UIPadding_12 = Instance.new("UIPadding")
local Head = Instance.new("Frame")
local Torso = Instance.new("Frame")
local LeftArm = Instance.new("Frame")
local LeftLeg = Instance.new("Frame")
local RightArm = Instance.new("Frame")
local RightLeg = Instance.new("Frame")
local Pelvis = Instance.new("Frame")
local UIPadding_13 = Instance.new("UIPadding")
local UIListLayout_3 = Instance.new("UIListLayout")
local Outline = Instance.new("Frame")
local Status = Instance.new("TextLabel")
local UIPadding_14 = Instance.new("UIPadding")

Tipware.Name = "Tipware"
Tipware.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Tipware.DisplayOrder = 9999
Tipware.ResetOnSpawn = false

Body.Name = "Body"
Body.Parent = Tipware
Body.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Body.BorderColor3 = Color3.fromRGB(30, 30, 30)
Body.BorderSizePixel = 2
Body.Position = UDim2.new(0.356747925, 0, 0.255193233, 0)
Body.Size = UDim2.new(0, 547, 0, 404)

Title.Name = "Title"
Title.Parent = Body
Title.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(-0.00365630724, 0, -0.00247524749, 0)
Title.Size = UDim2.new(0, 548, 0, 23)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Tipware"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextWrapped = true
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Title
UIPadding.PaddingBottom = UDim.new(0, 3)
UIPadding.PaddingLeft = UDim.new(0, 7)
UIPadding.PaddingRight = UDim.new(0, 3)
UIPadding.PaddingTop = UDim.new(0, 3)

Title2.Name = "Title2"
Title2.Parent = Title
Title2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Title2.BackgroundTransparency = 1.000
Title2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title2.BorderSizePixel = 0
Title2.Position = UDim2.new(0.0684238151, 0, -0.180470183, 0)
Title2.Size = UDim2.new(0, 34, 0, 23)
Title2.Font = Enum.Font.SourceSansBold
Title2.Text = ".lua"
Title2.TextColor3 = Color3.fromRGB(116, 130, 255)
Title2.TextSize = 14.000
Title2.TextWrapped = true
Title2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_2.Parent = Title2
UIPadding_2.PaddingBottom = UDim.new(0, 3)
UIPadding_2.PaddingLeft = UDim.new(0, 7)
UIPadding_2.PaddingRight = UDim.new(0, 3)
UIPadding_2.PaddingTop = UDim.new(0, 3)

Outline2.Name = "Outline2"
Outline2.Parent = Body
Outline2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Outline2.BorderColor3 = Color3.fromRGB(46, 46, 46)
Outline2.Position = UDim2.new(0.0124636693, 0, 0.180693075, 0)
Outline2.Size = UDim2.new(0, 533, 0, 319)

Outline3.Name = "Outline3"
Outline3.Parent = Body
Outline3.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Outline3.BorderColor3 = Color3.fromRGB(46, 46, 46)
Outline3.Position = UDim2.new(0.0261241626, 0, 0.198142931, 0)
Outline3.Size = UDim2.new(0, 519, 0, 303)

TabBody.Name = "TabBody"
TabBody.Parent = Body
TabBody.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
TabBody.BorderColor3 = Color3.fromRGB(50, 50, 50)
TabBody.Position = UDim2.new(0.0109689217, 0, 0.0767326728, 0)
TabBody.Size = UDim2.new(0, 533, 0, 33)

RageTab.Name = "RageTab"
RageTab.Parent = TabBody
RageTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RageTab.BackgroundTransparency = 1.000
RageTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
RageTab.BorderSizePixel = 0
RageTab.Position = UDim2.new(0, 0, 0.181818187, 0)
RageTab.Size = UDim2.new(0, 110, 0, 27)

TextLabel.Parent = RageTab
TextLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel.BorderColor3 = Color3.fromRGB(48, 48, 48)
TextLabel.Position = UDim2.new(0.0480769239, 0, -0.303571433, 0)
TextLabel.Size = UDim2.new(0, 103, 0, 27)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Rage"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

UIPadding_3.Parent = RageTab
UIPadding_3.PaddingBottom = UDim.new(0, 3)
UIPadding_3.PaddingLeft = UDim.new(0, 3)
UIPadding_3.PaddingRight = UDim.new(0, 3)
UIPadding_3.PaddingTop = UDim.new(0, 3)

UIListLayout.Parent = TabBody
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIListLayout.Padding = UDim.new(0, 1)

LegitTab.Name = "LegitTab"
LegitTab.Parent = TabBody
LegitTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LegitTab.BackgroundTransparency = 1.000
LegitTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
LegitTab.BorderSizePixel = 0
LegitTab.Position = UDim2.new(0, 0, 0.181818187, 0)
LegitTab.Size = UDim2.new(0, 110, 0, 27)

TextLabel_2.Parent = LegitTab
TextLabel_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel_2.BorderColor3 = Color3.fromRGB(48, 48, 48)
TextLabel_2.Position = UDim2.new(0.0480769239, 0, -0.303571433, 0)
TextLabel_2.Size = UDim2.new(0, 103, 0, 27)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Legit"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 17.000

UIPadding_4.Parent = LegitTab
UIPadding_4.PaddingBottom = UDim.new(0, 3)
UIPadding_4.PaddingLeft = UDim.new(0, 3)
UIPadding_4.PaddingRight = UDim.new(0, 3)
UIPadding_4.PaddingTop = UDim.new(0, 3)

ESPTab.Name = "ESPTab"
ESPTab.Parent = TabBody
ESPTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ESPTab.BackgroundTransparency = 1.000
ESPTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
ESPTab.BorderSizePixel = 0
ESPTab.Position = UDim2.new(0, 0, 0.181818187, 0)
ESPTab.Size = UDim2.new(0, 110, 0, 27)

TextLabel_3.Parent = ESPTab
TextLabel_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel_3.BorderColor3 = Color3.fromRGB(48, 48, 48)
TextLabel_3.Position = UDim2.new(0.0480769239, 0, -0.303571433, 0)
TextLabel_3.Size = UDim2.new(0, 103, 0, 27)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "ESP"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 17.000

UIPadding_5.Parent = ESPTab
UIPadding_5.PaddingBottom = UDim.new(0, 3)
UIPadding_5.PaddingLeft = UDim.new(0, 3)
UIPadding_5.PaddingRight = UDim.new(0, 3)
UIPadding_5.PaddingTop = UDim.new(0, 3)

LayoutItems.Name = "LayoutItems"
LayoutItems.Parent = Body
LayoutItems.Active = true
LayoutItems.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LayoutItems.BackgroundTransparency = 1.000
LayoutItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
LayoutItems.BorderSizePixel = 0
LayoutItems.Position = UDim2.new(0.0255941506, 0, 0.198142931, 0)
LayoutItems.Size = UDim2.new(0, 519, 0, 302)
LayoutItems.SizeConstraint = Enum.SizeConstraint.RelativeXX
LayoutItems.ScrollBarThickness = 0
LayoutItems.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left

ExampleSection.Name = "ExampleSection"
ExampleSection.Parent = LayoutItems
ExampleSection.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
ExampleSection.BorderColor3 = Color3.fromRGB(36, 36, 36)
ExampleSection.Position = UDim2.new(0.0346820801, 0, -0.0354609936, 0)
ExampleSection.Size = UDim2.new(0, 238, 0, 279)

SectionTitle.Name = "SectionTitle"
SectionTitle.Parent = ExampleSection
SectionTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionTitle.BackgroundTransparency = 1.000
SectionTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionTitle.BorderSizePixel = 0
SectionTitle.Position = UDim2.new(-0.0580912866, 0, -0.0342437848, 0)
SectionTitle.Size = UDim2.new(0, 77, 0, 18)
SectionTitle.Font = Enum.Font.SourceSans
SectionTitle.Text = "Rage"
SectionTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
SectionTitle.TextSize = 19.000
SectionTitle.TextWrapped = true

SectionScroll.Name = "SectionScroll"
SectionScroll.Parent = ExampleSection
SectionScroll.Active = true
SectionScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionScroll.BackgroundTransparency = 1.000
SectionScroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionScroll.BorderSizePixel = 0
SectionScroll.Size = UDim2.new(0, 231, 0, 279)
SectionScroll.ScrollBarThickness = 0

SectionItems.Name = "SectionItems"
SectionItems.Parent = SectionScroll
SectionItems.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionItems.BackgroundTransparency = 1.000
SectionItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionItems.BorderSizePixel = 0
SectionItems.Position = UDim2.new(0, 0, 0.0302723441, 0)
SectionItems.Size = UDim2.new(0, 241, 0, 319)

UIListLayout_2.Parent = SectionItems
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

Toggle.Name = "Toggle"
Toggle.Parent = SectionItems
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Size = UDim2.new(0, 246, 0, 16)

Name.Name = "Name"
Name.Parent = Toggle
Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name.BackgroundTransparency = 1.000
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Size = UDim2.new(0, 200, 0, 16)
Name.Font = Enum.Font.SourceSans
Name.Text = "Toggle"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextSize = 14.000
Name.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_6.Parent = Toggle
UIPadding_6.PaddingBottom = UDim.new(0, 5)
UIPadding_6.PaddingLeft = UDim.new(0, 5)
UIPadding_6.PaddingRight = UDim.new(0, 5)
UIPadding_6.PaddingTop = UDim.new(0, 5)

State.Name = "State"
State.Parent = Toggle
State.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
State.BackgroundTransparency = 1.000
State.BorderColor3 = Color3.fromRGB(0, 0, 0)
State.BorderSizePixel = 0
State.Position = UDim2.new(0.800847173, 0, 0, 0)
State.Size = UDim2.new(0, 42, 0, 16)
State.Font = Enum.Font.SourceSans
State.Text = "OFF"
State.TextColor3 = Color3.fromRGB(255, 255, 255)
State.TextSize = 14.000

Textbox.Name = "Textbox"
Textbox.Parent = SectionItems
Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textbox.BackgroundTransparency = 1.000
Textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textbox.BorderSizePixel = 0
Textbox.Size = UDim2.new(0, 246, 0, 16)

Name_2.Name = "Name"
Name_2.Parent = Textbox
Name_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_2.BackgroundTransparency = 1.000
Name_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_2.BorderSizePixel = 0
Name_2.Position = UDim2.new(0, 0, 1.16666663, 0)
Name_2.Size = UDim2.new(0, 200, 0, 16)
Name_2.Font = Enum.Font.SourceSans
Name_2.Text = "Textbox"
Name_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_2.TextSize = 14.000
Name_2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_7.Parent = Textbox
UIPadding_7.PaddingBottom = UDim.new(0, 5)
UIPadding_7.PaddingLeft = UDim.new(0, 5)
UIPadding_7.PaddingRight = UDim.new(0, 5)
UIPadding_7.PaddingTop = UDim.new(0, 5)

Value.Name = "Value"
Value.Parent = Textbox
Value.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Value.BorderColor3 = Color3.fromRGB(21, 21, 21)
Value.Position = UDim2.new(0.618644059, 0, 1.16666663, 0)
Value.Size = UDim2.new(0, 76, 0, 16)
Value.Font = Enum.Font.SourceSans
Value.PlaceholderText = "Amount"
Value.Text = ""
Value.TextColor3 = Color3.fromRGB(255, 255, 255)
Value.TextSize = 14.000
Value.TextWrapped = true
Value.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_8.Parent = Value
UIPadding_8.PaddingBottom = UDim.new(0, 3)
UIPadding_8.PaddingLeft = UDim.new(0, 3)
UIPadding_8.PaddingRight = UDim.new(0, 3)
UIPadding_8.PaddingTop = UDim.new(0, 3)

Keybind.Name = "Keybind"
Keybind.Parent = SectionItems
Keybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Keybind.BackgroundTransparency = 1.000
Keybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
Keybind.BorderSizePixel = 0
Keybind.Size = UDim2.new(0, 246, 0, 16)

Name_3.Name = "Name"
Name_3.Parent = Keybind
Name_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_3.BackgroundTransparency = 1.000
Name_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_3.BorderSizePixel = 0
Name_3.Position = UDim2.new(0, 0, 9.5, 0)
Name_3.Size = UDim2.new(0, 200, 0, 16)
Name_3.Font = Enum.Font.SourceSans
Name_3.Text = "Keybind"
Name_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_3.TextSize = 14.000
Name_3.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_9.Parent = Keybind
UIPadding_9.PaddingBottom = UDim.new(0, 5)
UIPadding_9.PaddingLeft = UDim.new(0, 5)
UIPadding_9.PaddingRight = UDim.new(0, 5)
UIPadding_9.PaddingTop = UDim.new(0, 5)

State_2.Name = "State"
State_2.Parent = Keybind
State_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
State_2.BackgroundTransparency = 1.000
State_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
State_2.BorderSizePixel = 0
State_2.Position = UDim2.new(0.805084467, 0, 9.5, 0)
State_2.Size = UDim2.new(0, 42, 0, 16)
State_2.Font = Enum.Font.SourceSans
State_2.Text = "Q"
State_2.TextColor3 = Color3.fromRGB(255, 255, 255)
State_2.TextSize = 14.000

UIPadding_10.Parent = SectionItems
UIPadding_10.PaddingBottom = UDim.new(0, 5)
UIPadding_10.PaddingLeft = UDim.new(0, 5)
UIPadding_10.PaddingRight = UDim.new(0, 5)
UIPadding_10.PaddingTop = UDim.new(0, 5)

Silder.Name = "Silder"
Silder.Parent = SectionItems
Silder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Silder.BackgroundTransparency = 1.000
Silder.BorderColor3 = Color3.fromRGB(0, 0, 0)
Silder.BorderSizePixel = 0
Silder.Size = UDim2.new(0, 246, 0, 16)

Name_4.Name = "Name"
Name_4.Parent = Silder
Name_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Name_4.BackgroundTransparency = 1.000
Name_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name_4.BorderSizePixel = 0
Name_4.Position = UDim2.new(0, 0, -0.333333343, 0)
Name_4.Size = UDim2.new(0, 200, 0, 16)
Name_4.Font = Enum.Font.SourceSans
Name_4.Text = "Silder"
Name_4.TextColor3 = Color3.fromRGB(255, 255, 255)
Name_4.TextSize = 14.000
Name_4.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_11.Parent = Silder
UIPadding_11.PaddingBottom = UDim.new(0, 5)
UIPadding_11.PaddingLeft = UDim.new(0, 5)
UIPadding_11.PaddingRight = UDim.new(0, 5)
UIPadding_11.PaddingTop = UDim.new(0, 5)

AmntBackground.Name = "AmntBackground"
AmntBackground.Parent = Silder
AmntBackground.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
AmntBackground.BorderColor3 = Color3.fromRGB(0, 0, 0)
AmntBackground.BorderSizePixel = 0
AmntBackground.Position = UDim2.new(0, 0, 4, 0)
AmntBackground.Size = UDim2.new(0, 222, 0, 8)

AmntProgress.Name = "AmntProgress"
AmntProgress.Parent = AmntBackground
AmntProgress.BackgroundColor3 = Color3.fromRGB(116, 130, 255)
AmntProgress.BorderColor3 = Color3.fromRGB(0, 0, 0)
AmntProgress.BorderSizePixel = 0
AmntProgress.Size = UDim2.new(0, 7, 0, 8)

Default.Name = "Default"
Default.Parent = Silder
Default.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Default.BackgroundTransparency = 1.000
Default.BorderColor3 = Color3.fromRGB(0, 0, 0)
Default.BorderSizePixel = 0
Default.Position = UDim2.new(0.826271176, 0, -0.333333343, 0)
Default.Size = UDim2.new(0, 31, 0, 16)
Default.Font = Enum.Font.SourceSans
Default.Text = "0"
Default.TextColor3 = Color3.fromRGB(255, 255, 255)
Default.TextSize = 14.000

HItPartSection.Name = "HItPartSection"
HItPartSection.Parent = LayoutItems
HItPartSection.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
HItPartSection.BorderColor3 = Color3.fromRGB(36, 36, 36)
HItPartSection.Position = UDim2.new(0.524084806, 0, 0, 0)
HItPartSection.Size = UDim2.new(0, 238, 0, 279)

SectionTitle_2.Name = "SectionTitle"
SectionTitle_2.Parent = HItPartSection
SectionTitle_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionTitle_2.BackgroundTransparency = 1.000
SectionTitle_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionTitle_2.BorderSizePixel = 0
SectionTitle_2.Position = UDim2.new(-0.00346951536, 0, -0.0342437848, 0)
SectionTitle_2.Size = UDim2.new(0, 77, 0, 18)
SectionTitle_2.Font = Enum.Font.SourceSans
SectionTitle_2.Text = "Rage Bone"
SectionTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
SectionTitle_2.TextSize = 19.000
SectionTitle_2.TextWrapped = true

SectionItems_2.Name = "SectionItems"
SectionItems_2.Parent = HItPartSection
SectionItems_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionItems_2.BackgroundTransparency = 1.000
SectionItems_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionItems_2.BorderSizePixel = 0
SectionItems_2.Position = UDim2.new(-0.0207468886, 0, 0.0286738351, 0)
SectionItems_2.Size = UDim2.new(0, 246, 0, 279)

UIPadding_12.Parent = SectionItems_2
UIPadding_12.PaddingBottom = UDim.new(0, 5)
UIPadding_12.PaddingLeft = UDim.new(0, 5)
UIPadding_12.PaddingRight = UDim.new(0, 5)
UIPadding_12.PaddingTop = UDim.new(0, 5)

Head.Name = "Head"
Head.Parent = SectionItems_2
Head.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Head.BorderColor3 = Color3.fromRGB(0, 0, 0)
Head.Position = UDim2.new(0.398305088, 0, 0.0780669153, 0)
Head.Size = UDim2.new(0, 48, 0, 46)

Torso.Name = "Torso"
Torso.Parent = SectionItems_2
Torso.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Torso.BorderColor3 = Color3.fromRGB(0, 0, 0)
Torso.Position = UDim2.new(0.356407046, 0, 0.249070629, 0)
Torso.Size = UDim2.new(0, 68, 0, 81)

LeftArm.Name = "LeftArm"
LeftArm.Parent = SectionItems_2
LeftArm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftArm.BorderColor3 = Color3.fromRGB(0, 0, 0)
LeftArm.Position = UDim2.new(0.246237546, 0, 0.249070629, 0)
LeftArm.Size = UDim2.new(0, 26, 0, 90)

LeftLeg.Name = "LeftLeg"
LeftLeg.Parent = SectionItems_2
LeftLeg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LeftLeg.BorderColor3 = Color3.fromRGB(0, 0, 0)
LeftLeg.Position = UDim2.new(0.356407046, 0, 0.631970286, 0)
LeftLeg.Size = UDim2.new(0, 33, 0, 80)

RightArm.Name = "RightArm"
RightArm.Parent = SectionItems_2
RightArm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightArm.BorderColor3 = Color3.fromRGB(0, 0, 0)
RightArm.Position = UDim2.new(0.644542634, 0, 0.249070629, 0)
RightArm.Size = UDim2.new(0, 26, 0, 90)

RightLeg.Name = "RightLeg"
RightLeg.Parent = SectionItems_2
RightLeg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
RightLeg.BorderColor3 = Color3.fromRGB(0, 0, 0)
RightLeg.Position = UDim2.new(0.504712105, 0, 0.631970286, 0)
RightLeg.Size = UDim2.new(0, 33, 0, 80)

Pelvis.Name = "Pelvis"
Pelvis.Parent = SectionItems_2
Pelvis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Pelvis.BorderColor3 = Color3.fromRGB(0, 0, 0)
Pelvis.Position = UDim2.new(0.356407046, 0, 0.550185859, 0)
Pelvis.Size = UDim2.new(0, 68, 0, 22)

UIPadding_13.Parent = LayoutItems
UIPadding_13.PaddingBottom = UDim.new(0, 10)
UIPadding_13.PaddingTop = UDim.new(0, 10)

UIListLayout_3.Parent = LayoutItems
UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 7)

Outline.Name = "Outline"
Outline.Parent = Body
Outline.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Outline.BorderColor3 = Color3.fromRGB(30, 30, 30)
Outline.Position = UDim2.new(0, 0, 0.0544554442, 0)
Outline.Size = UDim2.new(0, 547, 0, 1)

Status.Name = "Status"
Status.Parent = Body
Status.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.912248611, 0, -0.00495049497, 0)
Status.Size = UDim2.new(0, 47, 0, 23)
Status.Font = Enum.Font.SourceSansBold
Status.Text = "Private"
Status.TextColor3 = Color3.fromRGB(255, 255, 255)
Status.TextSize = 14.000
Status.TextWrapped = true

UIPadding_14.Parent = Status
UIPadding_14.PaddingBottom = UDim.new(0, 3)
UIPadding_14.PaddingLeft = UDim.new(0, 7)
UIPadding_14.PaddingRight = UDim.new(0, 3)
UIPadding_14.PaddingTop = UDim.new(0, 3)
