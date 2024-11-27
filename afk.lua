print("Anti AFK")
wait(1)
local g=Instance.new("ScreenGui",game.CoreGui)
local h=Instance.new("Frame",g)
h.BackgroundColor3=Color3.fromRGB(30,30,30)
h.Size=UDim2.new(0,350,0,40)
h.Position=UDim2.new(0.35,0,0.15,0)
h.Active=true
h.Draggable=true
local t=Instance.new("TextLabel",h)
t.Size=UDim2.new(0.85,0,1,0)
t.Position=UDim2.new(0.05,0,0,0)
t.Font=Enum.Font.SourceSansBold
t.Text="Anti AFK | By Xub19"
t.TextSize=16
t.TextColor3=Color3.fromRGB(255,0,0)
t.BackgroundTransparency=1
local c=Instance.new("TextButton",h)
c.Size=UDim2.new(0.1,0,1,0)
c.Position=UDim2.new(0.9,0,0,0)
c.Font=Enum.Font.SourceSansBold
c.Text="x"
c.TextSize=16
c.TextColor3=Color3.fromRGB(255,255,255)
c.BackgroundColor3=Color3.fromRGB(200,50,50)
c.MouseButton1Click:Connect(function()g:Destroy()end)
local f=Instance.new("Frame",h)
f.BackgroundColor3=Color3.fromRGB(40,40,40)
f.Size=UDim2.new(1,0,1.3,0)
f.Position=UDim2.new(0,0,1,0)
local s=Instance.new("TextLabel",f)
s.Size=UDim2.new(1,0,0.5,0)
s.Position=UDim2.new(0,0,0.1,0)
s.Font=Enum.Font.SourceSans
s.Text="Status: Active"
s.TextSize=14
s.TextColor3=Color3.fromRGB(255,0,0)
s.BackgroundTransparency=1
local v=game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
v:CaptureController()
v:ClickButton2(Vector2.new())
s.Text="Status: Active"
end)
