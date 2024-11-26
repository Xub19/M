local Players = game:GetService("Players")
local VirtualUser = game:GetService("VirtualUser")
local player = Players.LocalPlayer

player.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

local ScreenGui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
local Frame = Instance.new("Frame", ScreenGui)
local CloseButton = Instance.new("TextButton", Frame)
local Label = Instance.new("TextLabel", Frame)

ScreenGui.ResetOnSpawn = false
ScreenGui.IgnoreGuiInset = true

Frame.AnchorPoint = Vector2.new(1, 1)
Frame.Position = UDim2.new(1, -10, 1, -10)
Frame.Size = UDim2.new(0, 200, 0, 50)
Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
Frame.BorderSizePixel = 0
Frame.Draggable = true
Frame.Active = true

Label.Text = "Đã bật Anti AFK"
Label.Size = UDim2.new(1, -40, 1, 0)
Label.Position = UDim2.new(0, 10, 0, 0)
Label.TextColor3 = Color3.new(1, 1, 1)
Label.BackgroundTransparency = 1
Label.TextScaled = true
Label.Font = Enum.Font.SourceSans

CloseButton.Text = "x"
CloseButton.Size = UDim2.new(0, 30, 1, 0)
CloseButton.Position = UDim2.new(1, -30, 0, 0)
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.BackgroundColor3 = Color3.new(0.8, 0, 0)
CloseButton.BorderSizePixel = 0
CloseButton.Font = Enum.Font.SourceSans
CloseButton.TextScaled = true

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
