local plr = game.Players.LocalPlayer
local vu = game.VirtualUser
plr.Idled:Connect(function() vu:CaptureController() vu:ClickButton2(Vector2.new()) end)

local gui = Instance.new("ScreenGui", plr.PlayerGui)
local frame = Instance.new("Frame", gui)
frame.Size, frame.Position, frame.BackgroundColor3 = UDim2.new(0, 150, 0, 50), UDim2.new(0.5, -75, 0.5, -25), Color3.fromRGB(50, 50, 50)

local close = Instance.new("TextButton", frame)
close.Size, close.Position, close.Text = UDim2.new(0, 30, 0, 30), UDim2.new(1, -35, 0, 5), "X"
close.MouseButton1Click:Connect(function() gui:Destroy() end)

frame.Active, frame.Draggable = true, true
