if tostring(game.PlaceId) == "18688206652" then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ 
    Name = "Ijul Piece 2 | Hao Modder",
    HidePremium = false,
    SaveConfig = true, 
    ConfigFolder = "XIE",
    IntroText = "script farm",
    IntroIcon = "rbxthumb://type=Asset&id=80001275478305&w=150&h=150"
})

OrionLib:MakeNotification({
    Name = "Ijul Piece 2",
    Content = "BY XIE and Modder Hao",
    Image = "rbxthumb://type=Asset&id=80001275478305&w=150&h=150",
    Time = 5
})

-- tab 1
local FIce = Window:MakeTab({
    Name = "SnowIsland",
	PremiumOnly = false
})

local Players = game:GetService("Players")

local function rspl(player)
    if player and player.Character then
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
    Min = 1, 
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
    Name = "Require: Sukuna v1"
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
                            pcall(function()
                                character.HumanoidRootPart.CFrame = CFrame.new(-2411.69824, 19.8741894, -598.203064, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                                -- task.wait(5)
                                humanoid:EquipTool(skill)
                                event:FireServer()
                                task.wait(waitt)
                                if atrs then
                                    rspl(localPlayer)
                                end
                            end)
                        end
                    end
                    task.wait(1) 
                end
            end)
        end
    end
})

-- tab 2
local FINC = Window:MakeTab({
    Name = "AbondedSnowIsland",
	PremiumOnly = false
})

local icett = 13
local akfice = false 

local FINCSection1 = FINC:AddSection({
    Name = "Thời gian chờ"
})

FINCSection1:AddSlider({
    Name = "Điều chỉnh",
    Min = 1, 
    Max = 100,
    Default = 13,
    Color = Color3.fromRGB(255, 255, 255),
    Increment = 1,
    ValueName = "giây",
    Callback = function(Value)
        icett = Value 
    end    
})

local FINCSection2 = FINC:AddSection({
    Name = "Auto Reset"
})

FINCSection2:AddToggle({
    Name = "Kích hoạt",
    Default = false,
    Callback = function(Value)
        atrs = Value
    end 
})

local FINCSection3 = FINC:AddSection({
    Name = "Require: Ice Awakening"
})

FINCSection3:AddToggle({
    Name = "Kích hoạt",
    Default = false,
    Callback = function(state)
        akfice = state 
        if akfice then
            spawn(function()
                while akfice do
                    local localPlayer = Players.LocalPlayer
                    if localPlayer and localPlayer.Character then
                        local character = localPlayer.Character
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        local skill = localPlayer.Backpack:FindFirstChild("IceAwakening")
                        local event = game:GetService("ReplicatedStorage"):FindFirstChild("Events")
                            and game:GetService("ReplicatedStorage").Events:FindFirstChild("IceAge")

                        if humanoid and skill and event then
                            pcall(function()
                                character.HumanoidRootPart.CFrame = CFrame.new(2600.07031, 23.3707905, 1980.55969, 0.848060429, 0, 0.529899538, 0, 1, 0, -0.529899538, 0, 0.848060429)
                                task.wait(5)
                                humanoid:EquipTool(skill)
                                event:FireServer()
                                task.wait(icett)
                                if atrs then
                                    rspl(localPlayer)
                                end
                            end)
                        end
                    end
                    task.wait(1) 
                end
            end)
        end
    end
})



-- finish
OrionLib:Init()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/Xub19/xtl/refs/heads/main/antiafk.lua')))()
else
game.Players.LocalPlayer:Kick("Error : Game Not Supported")
end
