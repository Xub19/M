local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/FIce/source')))()
local Window = OrionLib:MakeWindow({ 
    Name = "Ijul Piece 2", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "XIE",
    IntroText = "Đang trong quá trình phát triển.",
    IntroIcon = "rbxthumb://type=Asset&id=80001275478305&w=150&h=150"
})

OrionLib:MakeNotification({
    Name = "Ijul Piece 2",
    Content = "BY XIE CODER",
    Image = "rbxthumb://type=Asset&id=80001275478305&w=150&h=150",
    Time = 5
})

local FIce = Window:MakeTab({
    Name = "Farm Ice",
    PremiumOnly = false
})

local Players = game:GetService("Players")

local function rspl(player)
    if player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0 
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        rspl(player)
    end)
end)

local waitt = 33
local atrs = false
local atkh = false 

local FIceSection1 = FIce:AddSection({
    Name = "Thời gian chờ"
})

FIceSection1:AddSlider({
    Name = "Điều chỉnh",
    Min = 0,
    Max = 100,
    Default = 33,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "giây",
    Callback = function(Value)
        waitt = Value 
    end    
})

local FIceSection2 = FIce:AddSection({
    Name = "Auto Reset"
})

FIceSection2:AddToggle({
    Name = "Kích hoạt",
    Default = false,
    Callback = function(Value)
        atrs = Value
    end 
})

local FIceSection3 = FIce:AddSection({
    Name = "Sukuna V1 - C"
})

FIceSection3:AddToggle({
    Name = "Kích hoạt",
    Default = false,
    Callback = function(state)
        atkh = state 
        if atkh then
            spawn(function()
                while atkh do
                    local localPlayer = Players.LocalPlayer
                    if localPlayer and localPlayer.Character then
                        local character = localPlayer.Character
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        local skill = localPlayer.Backpack:FindFirstChild("Sukuna")
                        local event = game:GetService("ReplicatedStorage"):FindFirstChild("Events")
                            and game:GetService("ReplicatedStorage").Events:FindFirstChild("MalevolentShrine")

                        if humanoid and skill and event then
                            character.HumanoidRootPart.CFrame = CFrame.new(-2411.69824, 19.8741894, -598.203064, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            humanoid:EquipTool(skill)
                            event:FireServer()
                            task.wait(waitt)
                            if atrs then
                                rspl(localPlayer)
                            end
                        end
                    end
                    task.wait(1) 
                end
            end)
        end
    end
})

OrionLib:Init()
