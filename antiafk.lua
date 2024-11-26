local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local CloseButton = Instance.new("TextButton")
local UIS = game:GetService("UserInputService")
local VirtualUser = game:service('VirtualUser')

ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)

CloseButton.Parent = Frame
CloseButton.Size = UDim2.new(0, 50, 0, 30)
CloseButton.Position = UDim2.new(1, -55, 0, 5)
CloseButton.Text = "x"
CloseButton.BackgroundColor3 = Color3.new(1, 0, 0)

CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

local dragging, dragStart, startPos

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement and dragging then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

UIS.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

game:service('Players').LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)
