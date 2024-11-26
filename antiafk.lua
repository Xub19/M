print("Anti AFK")
wait(1)
local gui = Instance.new("ScreenGui")
local header = Instance.new("Frame")
local title = Instance.new("TextLabel")
local content = Instance.new("Frame")
local status = Instance.new("TextLabel")
local footer = Instance.new("TextLabel")
local clgui = Instance.new("TextButton")
gui.Parent = game.CoreGui
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
header.Parent = gui
header.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
header.Size = UDim2.new(0, 400, 0, 50)
header.Position = UDim2.new(0.35, 0, 0.15, 0)
header.Active = true
header.Draggable = true
title.Parent = header
title.Size = UDim2.new(0.85, 0, 1, 0)
title.Position = UDim2.new(0.05, 0, 0, 0)
title.Font = Enum.Font.SourceSansBold
title.Text = "Anti AFK Script"
title.TextSize = 22
title.TextColor3 = Color3.fromRGB(0, 255, 255)
title.BackgroundTransparency = 1
clgui.Parent = header
clgui.Size = UDim2.new(0.1, 0, 1, 0)
clgui.Position = UDim2.new(0.9, 0, 0, 0)
clgui.Font = Enum.Font.SourceSansBold
clgui.Text = "X"
clgui.TextSize = 22
clgui.TextColor3 = Color3.fromRGB(255, 255, 255)
clgui.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
clgui.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
content.Parent = header
content.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
content.Size = UDim2.new(1, 0, 1.2, 0)
content.Position = UDim2.new(0, 0, 1, 0)
status.Parent = content
status.Size = UDim2.new(1, 0, 0.5, 0)
status.Position = UDim2.new(0, 0, 0.1, 0)
status.Font = Enum.Font.SourceSans
status.Text = "Status: Active"
status.TextSize = 20
status.TextColor3 = Color3.fromRGB(0, 255, 255)
status.BackgroundTransparency = 1
footer.Parent = content
footer.Size = UDim2.new(1, 0, 0.3, 0)
footer.Position = UDim2.new(0, 0, 0.8, 0)
footer.Font = Enum.Font.SourceSans
footer.Text = "Made by your mom"
footer.TextSize = 18
footer.TextColor3 = Color3.fromRGB(0, 255, 255)
footer.BackgroundTransparency = 1
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    vu:CaptureController()
    vu:ClickButton2(Vector2.new())
    status.Text = "Roblox tried to kick you, but I stopped it!"
    wait(2)
    status.Text = "Status: Active"
end)
