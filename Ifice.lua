-- anti afk
local ATFK = game:service('VirtualUser')
game:service('Players').LocalPlayer.Idled:connect(function()
    ATFK:CaptureController()
    ATFK:ClickButton2(Vector2.new())
end)

-- lib
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ 
    Name = "Ijul Piece 2",
    HidePremium = false,
    SaveConfig = true, 
    ConfigFolder = "XIE",
    IntroText = "script farm",
    IntroIcon = "rbxthumb://type=Asset&id=80001275478305&w=150&h=150"
})

OrionLib:MakeNotification({
    Name = "Ijul Piece 2",
    Content = "BY XIE",
    Image = "rbxthumb://type=Asset&id=80001275478305&w=150&h=150",
    Time = 5
})

local FIce = Window:MakeTab({
    Name = "Snow Island",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local npcl = game:GetService("Players")

-- auto rs
local function rspl(player)
    if player and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end
end

npcl.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        rspl(player)
    end)
end)

local atkh = false 

local FIceSection3 = FIce:AddSection({
    Name = "pl equip sukuna v1"
})

FIceSection3:AddToggle({
    Name = "activate",
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
                                humanoid:EquipTool(skill)
                                event:FireServer()
                                task.wait(33)
                                rspl(localPlayer)
                            end)
                        end
                    end
                    task.wait(1) 
                end
            end)
        end
    end
})

local FSND = Window:MakeTab({
    Name = "Abonded Snow Island",
    Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local adsd = FSND:AddSection({
    Name = "pl equip ice v2"
})

local aicv2 = false

adsd:AddToggle({
    Name = "activate",
    Default = false,
    Callback = function(value)
        aicv2 = value
        if aicv2 then 
            spawn(function()
                while atkh do
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
                                humanoid:EquipTool(skill)
                                event:FireServer()
                                task.wait(33)
                                rspl(localPlayer)
                            end)
                        end
                    end
                    task.wait(1) 
                end
            end) 
        end
    end
})

OrionLib:Init()
