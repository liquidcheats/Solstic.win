-- Gui to Lua
-- Version: 3.2

-- Instances:

local Watermark = Instance.new("ScreenGui")
local WatermarkBody = Instance.new("Frame")
local Line = Instance.new("Frame")
local Items = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local Icon = Instance.new("ImageLabel")

--Properties:

Watermark.Name = "Watermark"
Watermark.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Watermark.ResetOnSpawn = false

WatermarkBody.Name = "WatermarkBody"
WatermarkBody.Parent = Watermark
WatermarkBody.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
WatermarkBody.BorderColor3 = Color3.fromRGB(0, 0, 0)
WatermarkBody.BorderSizePixel = 0
WatermarkBody.Position = UDim2.new(0.010449321, 0, 0.192028984, 0)
WatermarkBody.Size = UDim2.new(0, 230, 0, 25)

Line.Name = "Line"
Line.Parent = WatermarkBody
Line.BackgroundColor3 = Color3.fromRGB(43, 154, 198)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 230, 0, -2)

Items.Name = "Items"
Items.Parent = WatermarkBody
Items.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Items.BackgroundTransparency = 1.000
Items.BorderColor3 = Color3.fromRGB(0, 0, 0)
Items.BorderSizePixel = 0
Items.Position = UDim2.new(0.12608695, 0, 0, 0)
Items.Size = UDim2.new(0, 166, 0, 25)
Items.Font = Enum.Font.SourceSans
Items.Text = "solstic.win"
Items.TextColor3 = Color3.fromRGB(255, 255, 255)
Items.TextSize = 15.000
Items.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Items
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)

Icon.Name = "Icon"
Icon.Parent = WatermarkBody
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BorderSizePixel = 0
Icon.Position = UDim2.new(-0.0521739125, 0, -0.600000024, 0)
Icon.Size = UDim2.new(0, 60, 0, 54)
Icon.Image = "http://www.roblox.com/asset/?id=18190092646"
Icon.ScaleType = Enum.ScaleType.Fit
