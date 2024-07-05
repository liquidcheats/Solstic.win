-- Gui to Lua
-- Version: 3.2

-- Instances:

local Tipware = Instance.new("ScreenGui")
local Body = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local Outline = Instance.new("Frame")
local Outline2 = Instance.new("Frame")
local TabBody = Instance.new("Frame")
local Tab = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local UIListLayout = Instance.new("UIListLayout")
local Tab_2 = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local UIPadding_3 = Instance.new("UIPadding")
local Tab_3 = Instance.new("Frame")
local TextLabel_3 = Instance.new("TextLabel")
local UIPadding_4 = Instance.new("UIPadding")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_5 = Instance.new("UIPadding")
local Section = Instance.new("Frame")
local SectionTitle = Instance.new("TextLabel")
local SectionItems = Instance.new("Frame")
local UIListLayout_3 = Instance.new("UIListLayout")
local UIPadding_6 = Instance.new("UIPadding")
local Toggle = Instance.new("Frame")
local Value = Instance.new("TextLabel")
local UIPadding_7 = Instance.new("UIPadding")
local State = Instance.new("TextLabel")
local Textbox = Instance.new("Frame")
local TextboxTItle = Instance.new("TextLabel")
local UIPadding_8 = Instance.new("UIPadding")
local Value_2 = Instance.new("TextBox")
local Button = Instance.new("Frame")
local ButtonTitle = Instance.new("TextLabel")
local UIPadding_9 = Instance.new("UIPadding")
local Title2 = Instance.new("TextLabel")
local UIPadding_10 = Instance.new("UIPadding")

--Properties:

Tipware.Name = "Tipware"
Tipware.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Tipware.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Body.Name = "Body"
Body.Parent = Tipware
Body.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
Body.BorderColor3 = Color3.fromRGB(30, 30, 30)
Body.BorderSizePixel = 2
Body.Position = UDim2.new(0.356747925, 0, 0.255193233, 0)
Body.Size = UDim2.new(0, 547, 0, 404)

Title.Name = "Title"
Title.Parent = Body
Title.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
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

Outline.Name = "Outline"
Outline.Parent = Body
Outline.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Outline.BorderColor3 = Color3.fromRGB(46, 46, 46)
Outline.Position = UDim2.new(0.0124636693, 0, 0.180693075, 0)
Outline.Size = UDim2.new(0, 533, 0, 319)

Outline2.Name = "Outline2"
Outline2.Parent = Body
Outline2.BackgroundColor3 = Color3.fromRGB(13, 13, 13)
Outline2.BorderColor3 = Color3.fromRGB(46, 46, 46)
Outline2.Position = UDim2.new(0.0261241626, 0, 0.198142931, 0)
Outline2.Size = UDim2.new(0, 519, 0, 303)

TabBody.Name = "TabBody"
TabBody.Parent = Body
TabBody.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
TabBody.BorderColor3 = Color3.fromRGB(50, 50, 50)
TabBody.Position = UDim2.new(0.0109689217, 0, 0.0767326728, 0)
TabBody.Size = UDim2.new(0, 533, 0, 33)

Tab.Name = "Tab"
Tab.Parent = TabBody
Tab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab.BackgroundTransparency = 1.000
Tab.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab.BorderSizePixel = 0
Tab.Position = UDim2.new(0, 0, 0.181818187, 0)
Tab.Size = UDim2.new(0, 110, 0, 27)

TextLabel.Parent = Tab
TextLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel.BorderColor3 = Color3.fromRGB(48, 48, 48)
TextLabel.Position = UDim2.new(0.0480769239, 0, -0.303571433, 0)
TextLabel.Size = UDim2.new(0, 103, 0, 27)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Rage"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 17.000

UIPadding_2.Parent = Tab
UIPadding_2.PaddingBottom = UDim.new(0, 3)
UIPadding_2.PaddingLeft = UDim.new(0, 3)
UIPadding_2.PaddingRight = UDim.new(0, 3)
UIPadding_2.PaddingTop = UDim.new(0, 3)

UIListLayout.Parent = TabBody
UIListLayout.FillDirection = Enum.FillDirection.Horizontal
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

Tab_2.Name = "Tab"
Tab_2.Parent = TabBody
Tab_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab_2.BackgroundTransparency = 1.000
Tab_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab_2.BorderSizePixel = 0
Tab_2.Position = UDim2.new(0, 0, 0.181818187, 0)
Tab_2.Size = UDim2.new(0, 110, 0, 27)

TextLabel_2.Parent = Tab_2
TextLabel_2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel_2.BorderColor3 = Color3.fromRGB(48, 48, 48)
TextLabel_2.Position = UDim2.new(0.0480769239, 0, -0.303571433, 0)
TextLabel_2.Size = UDim2.new(0, 103, 0, 27)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Legit"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 17.000

UIPadding_3.Parent = Tab_2
UIPadding_3.PaddingBottom = UDim.new(0, 3)
UIPadding_3.PaddingLeft = UDim.new(0, 3)
UIPadding_3.PaddingRight = UDim.new(0, 3)
UIPadding_3.PaddingTop = UDim.new(0, 3)

Tab_3.Name = "Tab"
Tab_3.Parent = TabBody
Tab_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Tab_3.BackgroundTransparency = 1.000
Tab_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab_3.BorderSizePixel = 0
Tab_3.Position = UDim2.new(0, 0, 0.181818187, 0)
Tab_3.Size = UDim2.new(0, 110, 0, 27)

TextLabel_3.Parent = Tab_3
TextLabel_3.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextLabel_3.BorderColor3 = Color3.fromRGB(48, 48, 48)
TextLabel_3.Position = UDim2.new(0.0480769239, 0, -0.303571433, 0)
TextLabel_3.Size = UDim2.new(0, 103, 0, 27)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "ESP"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 17.000

UIPadding_4.Parent = Tab_3
UIPadding_4.PaddingBottom = UDim.new(0, 3)
UIPadding_4.PaddingLeft = UDim.new(0, 3)
UIPadding_4.PaddingRight = UDim.new(0, 3)
UIPadding_4.PaddingTop = UDim.new(0, 3)

ScrollingFrame.Parent = Body
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 1.000
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.0255941506, 0, 0.198019803, 0)
ScrollingFrame.Size = UDim2.new(0, 519, 0, 303)

UIListLayout_2.Parent = ScrollingFrame
UIListLayout_2.FillDirection = Enum.FillDirection.Horizontal
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_5.Parent = ScrollingFrame
UIPadding_5.PaddingBottom = UDim.new(0, 6)
UIPadding_5.PaddingLeft = UDim.new(0, 6)
UIPadding_5.PaddingRight = UDim.new(0, 6)
UIPadding_5.PaddingTop = UDim.new(0, 16)

Section.Name = "Section"
Section.Parent = ScrollingFrame
Section.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Section.BorderColor3 = Color3.fromRGB(36, 36, 36)
Section.Size = UDim2.new(0, 246, 0, 279)

SectionTitle.Name = "SectionTitle"
SectionTitle.Parent = Section
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

SectionItems.Name = "SectionItems"
SectionItems.Parent = Section
SectionItems.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SectionItems.BackgroundTransparency = 1.000
SectionItems.BorderColor3 = Color3.fromRGB(0, 0, 0)
SectionItems.BorderSizePixel = 0
SectionItems.Position = UDim2.new(-0.0207468886, 0, 0.0286738351, 0)
SectionItems.Size = UDim2.new(0, 246, 0, 279)

UIListLayout_3.Parent = SectionItems
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

UIPadding_6.Parent = SectionItems
UIPadding_6.PaddingBottom = UDim.new(0, 5)
UIPadding_6.PaddingLeft = UDim.new(0, 5)
UIPadding_6.PaddingRight = UDim.new(0, 5)
UIPadding_6.PaddingTop = UDim.new(0, 5)

Toggle.Name = "Toggle"
Toggle.Parent = SectionItems
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BackgroundTransparency = 1.000
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Size = UDim2.new(0, 246, 0, 16)

Value.Name = "Value"
Value.Parent = Toggle
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Value.BackgroundTransparency = 1.000
Value.BorderColor3 = Color3.fromRGB(0, 0, 0)
Value.BorderSizePixel = 0
Value.Size = UDim2.new(0, 200, 0, 16)
Value.Font = Enum.Font.SourceSans
Value.Text = "Toggle"
Value.TextColor3 = Color3.fromRGB(255, 255, 255)
Value.TextSize = 14.000
Value.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_7.Parent = Toggle
UIPadding_7.PaddingBottom = UDim.new(0, 5)
UIPadding_7.PaddingLeft = UDim.new(0, 5)
UIPadding_7.PaddingRight = UDim.new(0, 5)
UIPadding_7.PaddingTop = UDim.new(0, 5)

State.Name = "State"
State.Parent = Toggle
State.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
State.BackgroundTransparency = 1.000
State.BorderColor3 = Color3.fromRGB(0, 0, 0)
State.BorderSizePixel = 0
State.Position = UDim2.new(0.817796469, 0, 0, 0)
State.Size = UDim2.new(0, 42, 0, 16)
State.Font = Enum.Font.SourceSans
State.Text = "[OFF]"
State.TextColor3 = Color3.fromRGB(255, 255, 255)
State.TextSize = 14.000

Textbox.Name = "Textbox"
Textbox.Parent = SectionItems
Textbox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Textbox.BackgroundTransparency = 1.000
Textbox.BorderColor3 = Color3.fromRGB(0, 0, 0)
Textbox.BorderSizePixel = 0
Textbox.Size = UDim2.new(0, 246, 0, 16)

TextboxTItle.Name = "TextboxTItle"
TextboxTItle.Parent = Textbox
TextboxTItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextboxTItle.BackgroundTransparency = 1.000
TextboxTItle.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextboxTItle.BorderSizePixel = 0
TextboxTItle.Size = UDim2.new(0, 200, 0, 16)
TextboxTItle.Font = Enum.Font.SourceSans
TextboxTItle.Text = "Textbox"
TextboxTItle.TextColor3 = Color3.fromRGB(255, 255, 255)
TextboxTItle.TextSize = 14.000
TextboxTItle.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_8.Parent = Textbox
UIPadding_8.PaddingBottom = UDim.new(0, 5)
UIPadding_8.PaddingLeft = UDim.new(0, 5)
UIPadding_8.PaddingRight = UDim.new(0, 5)
UIPadding_8.PaddingTop = UDim.new(0, 5)

Value_2.Name = "Value"
Value_2.Parent = Textbox
Value_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Value_2.BorderColor3 = Color3.fromRGB(36, 36, 36)
Value_2.Position = UDim2.new(0.644067824, 0, 0, 0)
Value_2.Size = UDim2.new(0, 76, 0, 16)
Value_2.Font = Enum.Font.SourceSans
Value_2.PlaceholderText = "Amount"
Value_2.Text = ""
Value_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Value_2.TextSize = 14.000
Value_2.TextWrapped = true
Value_2.TextXAlignment = Enum.TextXAlignment.Left

Button.Name = "Button"
Button.Parent = SectionItems
Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Button.BackgroundTransparency = 1.000
Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0, 246, 0, 16)

ButtonTitle.Name = "ButtonTitle"
ButtonTitle.Parent = Button
ButtonTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonTitle.BackgroundTransparency = 1.000
ButtonTitle.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonTitle.BorderSizePixel = 0
ButtonTitle.Size = UDim2.new(0, 200, 0, 16)
ButtonTitle.Font = Enum.Font.SourceSans
ButtonTitle.Text = "Button"
ButtonTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ButtonTitle.TextSize = 14.000

UIPadding_9.Parent = Button
UIPadding_9.PaddingBottom = UDim.new(0, 5)
UIPadding_9.PaddingLeft = UDim.new(0, 5)
UIPadding_9.PaddingRight = UDim.new(0, 5)
UIPadding_9.PaddingTop = UDim.new(0, 5)

Title2.Name = "Title2"
Title2.Parent = Body
Title2.BackgroundColor3 = Color3.fromRGB(34, 34, 34)
Title2.BackgroundTransparency = 1.000
Title2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title2.BorderSizePixel = 0
Title2.Position = UDim2.new(0.0820000023, 0, -0.00100000005, 0)
Title2.Size = UDim2.new(0, 34, 0, 23)
Title2.Font = Enum.Font.SourceSansBold
Title2.Text = ".lua"
Title2.TextColor3 = Color3.fromRGB(116, 130, 255)
Title2.TextSize = 14.000
Title2.TextWrapped = true
Title2.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_10.Parent = Title2
UIPadding_10.PaddingBottom = UDim.new(0, 3)
UIPadding_10.PaddingLeft = UDim.new(0, 7)
UIPadding_10.PaddingRight = UDim.new(0, 3)
UIPadding_10.PaddingTop = UDim.new(0, 3)
