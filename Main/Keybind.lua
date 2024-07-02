-- Gui to Lua
-- Version: 3.2

-- Instances:

local Keybind = Instance.new("ScreenGui")
local KeybindBody = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Icon = Instance.new("ImageLabel")
local Line = Instance.new("Frame")
local KeySector = Instance.new("Frame")
local UIListLayout = Instance.new("UIListLayout")
local ExampleKeybind = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")

--Properties:

Keybind.Name = "Keybind"
Keybind.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Keybind.ResetOnSpawn = false

KeybindBody.Name = "KeybindBody"
KeybindBody.Parent = Keybind
KeybindBody.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
KeybindBody.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeybindBody.BorderSizePixel = 0
KeybindBody.Position = UDim2.new(0.0107481005, 0, 0.236231908, 0)
KeybindBody.Size = UDim2.new(0, 179, 0, 188)

Title.Name = "Title"
Title.Parent = KeybindBody
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.173324883, 0, 0, 0)
Title.Size = UDim2.new(0, 60, 0, 28)
Title.Font = Enum.Font.SourceSans
Title.Text = "Keybind"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 17.000
Title.TextWrapped = true

Icon.Name = "Icon"
Icon.Parent = KeybindBody
Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Icon.BackgroundTransparency = 1.000
Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
Icon.BorderSizePixel = 0
Icon.Size = UDim2.new(0, 32, 0, 28)
Icon.Image = "rbxassetid://10709759610"
Icon.ImageColor3 = Color3.fromRGB(43, 154, 198)
Icon.ScaleType = Enum.ScaleType.Fit

Line.Name = "Line"
Line.Parent = KeybindBody
Line.BackgroundColor3 = Color3.fromRGB(43, 154, 198)
Line.BorderColor3 = Color3.fromRGB(0, 0, 0)
Line.BorderSizePixel = 0
Line.Size = UDim2.new(0, 179, 0, -2)

KeySector.Name = "KeySector"
KeySector.Parent = KeybindBody
KeySector.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeySector.BackgroundTransparency = 1.000
KeySector.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeySector.BorderSizePixel = 0
KeySector.Position = UDim2.new(0, 0, 0.144185811, 0)
KeySector.Size = UDim2.new(0, 179, 0, 160)

UIListLayout.Parent = KeySector
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

ExampleKeybind.Name = "ExampleKeybind"
ExampleKeybind.Parent = KeySector
ExampleKeybind.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ExampleKeybind.BackgroundTransparency = 1.000
ExampleKeybind.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExampleKeybind.BorderSizePixel = 0
ExampleKeybind.Size = UDim2.new(0, 128, 0, 27)
ExampleKeybind.Font = Enum.Font.SourceSans
ExampleKeybind.Text = "Auto Lock pick (off)"
ExampleKeybind.TextColor3 = Color3.fromRGB(255, 255, 255)
ExampleKeybind.TextSize = 14.000
ExampleKeybind.TextWrapped = true
ExampleKeybind.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = ExampleKeybind
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.PaddingLeft = UDim.new(0, 5)
UIPadding.PaddingRight = UDim.new(0, 5)
UIPadding.PaddingTop = UDim.new(0, 5)
