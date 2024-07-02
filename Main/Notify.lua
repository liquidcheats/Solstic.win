-- Gui to Lua
-- Version: 3.2

-- Instances:

local Notify = Instance.new("ScreenGui")
local List = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local UISizeConstraint = Instance.new("UISizeConstraint")
local notifygui = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local description = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local time = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

Notify.Name = "Notify"
Notify.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notify.ResetOnSpawn = false

List.Name = "List"
List.Parent = Notify
List.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
List.BackgroundTransparency = 0.900
List.BorderColor3 = Color3.fromRGB(0, 0, 0)
List.BorderSizePixel = 0
List.Position = UDim2.new(0.112330198, 0, 0.239130422, 0)
List.Size = UDim2.new(0.124346912, 0, 0.544686019, 0)

UIListLayout.Parent = List
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom

UISizeConstraint.Parent = List

notifygui.Name = "notifygui"
notifygui.Parent = List
notifygui.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
notifygui.BorderColor3 = Color3.fromRGB(0, 0, 0)
notifygui.BorderSizePixel = 0
notifygui.Position = UDim2.new(0, 0, 0.860310376, 0)
notifygui.Size = UDim2.new(0, 237, 0, 63)

UICorner.CornerRadius = UDim.new(0, 5)
UICorner.Parent = notifygui

title.Name = "title"
title.Parent = notifygui
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.BorderSizePixel = 0
title.Position = UDim2.new(0.209841445, 0, 0, 0)
title.Size = UDim2.new(0, 187, 0, 21)
title.Font = Enum.Font.SourceSans
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextSize = 17.000
title.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = title
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)

description.Name = "description"
description.Parent = notifygui
description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
description.BackgroundTransparency = 1.000
description.BorderColor3 = Color3.fromRGB(0, 0, 0)
description.BorderSizePixel = 0
description.Position = UDim2.new(0.209841445, 0, 0.333333343, 0)
description.Size = UDim2.new(0, 187, 0, 42)
description.Font = Enum.Font.SourceSans
description.Text = "Hello World"
description.TextColor3 = Color3.fromRGB(207, 207, 207)
description.TextSize = 15.000
description.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
description.TextWrapped = true
description.TextXAlignment = Enum.TextXAlignment.Left
description.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_2.Parent = description
UIPadding_2.PaddingBottom = UDim.new(0, 5)
UIPadding_2.PaddingLeft = UDim.new(0, 5)
UIPadding_2.PaddingRight = UDim.new(0, 5)
UIPadding_2.PaddingTop = UDim.new(0, 5)

time.Name = "time"
time.Parent = notifygui
time.BackgroundColor3 = Color3.fromRGB(43, 154, 198)
time.BorderColor3 = Color3.fromRGB(0, 0, 0)
time.BorderSizePixel = 0
time.Position = UDim2.new(0, 0, 0.96825397, 0)
time.Size = UDim2.new(0, 35, 0, 2)

ImageLabel.Parent = notifygui
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0421940945, 0, 0.253968269, 0)
ImageLabel.Size = UDim2.new(0, 33, 0, 30)
ImageLabel.Image = "rbxassetid://10709775704"
ImageLabel.ImageColor3 = Color3.fromRGB(43, 154, 198)
ImageLabel.ScaleType = Enum.ScaleType.Fit
