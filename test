print("Anti AFK")
wait(1)
local g=Instance.new("ScreenGui")
local h=Instance.new("Frame")
local t=Instance.new("TextLabel")
local c=Instance.new("Frame")
local s=Instance.new("TextLabel")
local f=Instance.new("TextLabel")
local x=Instance.new("TextButton")
g.Parent=game.CoreGui
g.ZIndexBehavior=Enum.ZIndexBehavior.Sibling
h.Parent=g
h.BackgroundColor3=Color3.fromRGB(30,30,30)
h.Size=UDim2.new(0,350,0,45)
h.Position=UDim2.new(0.325,0,0.1,0)
h.Active=true
h.Draggable=true
t.Parent=h
t.Size=UDim2.new(0.85,0,1,0)
t.Position=UDim2.new(0.05,0,0,0)
t.Font=Enum.Font.SourceSansBold
t.Text="Anti AFK"
t.TextSize=9
t.TextColor3=Color3.fromRGB(0,255,255)
t.BackgroundTransparency=1
x.Parent=h
x.Size=UDim2.new(0.1,0,1,0)
x.Position=UDim2.new(0.9,0,0,0)
x.Font=Enum.Font.SourceSansBold
x.Text="x"
x.TextSize=8
x.TextColor3=Color3.fromRGB(255,255,255)
x.BackgroundColor3=Color3.fromRGB(200,50,50)
x.MouseButton1Click:Connect(function() g:Destroy() end)
c.Parent=h
c.BackgroundColor3=Color3.fromRGB(40,40,40)
c.Size=UDim2.new(1,0,1.1,0)
c.Position=UDim2.new(0,0,1,0)
s.Parent=c
s.Size=UDim2.new(1,0,0.5,0)
s.Position=UDim2.new(0,0,0.1,0)
s.Font=Enum.Font.SourceSans
s.Text="Status: Active"
s.TextSize=10
s.TextColor3=Color3.fromRGB(0,255,255)
s.BackgroundTransparency=1
f.Parent=c
f.Size=UDim2.new(1,0,0.3,0)
f.Position=UDim2.new(0,0,0.8,0)
f.Font=Enum.Font.SourceSans
f.Text="by Xub19"
f.TextSize=11
f.TextColor3=Color3.fromRGB(0,255,255)
f.BackgroundTransparency=1
local v=game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
    v:CaptureController()
    v:ClickButton2(Vector2.new())
    s.Text="Roblox tried to kick you, but I stopped it!"
    wait(2)
    s.Text="Status: Active"
end)
