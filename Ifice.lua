if tostring(game.PlaceId) == "18688206652" then
-- lib
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

local FIce = Window:MakeTab({
    Name = "SnowIsland",
	PremiumOnly = false
})

-- anti afk
local ATFK = game:GetService('VirtualUser')
game:GetService('Players').LocalPlayer.Idled:Connect(function()
    ATFK:CaptureController()
    ATFK:ClickButton2(Vector2.new())
end)

local waitt = 33
local Players = game:GetService("Players")

-- auto rs
local function rspl(player)
    if player and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(Character)
        Character:WaitForChild("Humanoid")
        rspl(player)
    end)
end)

local atkh = false 

local FIceSection3 = FIce:AddSection({
    Name = "Require: Sukuna v1"
})

FIceSection3:AddToggle({
    Name = "Activate",
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
                                task.wait(waitt)
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
    Name = "AbondedSnowIsland",
	PremiumOnly = false
})

local changet = FSND:AddSection({
    Name = "Time"
})

local wice = 20

changet:AddSlider({
	Name = "Change time",
	Min = 1,
	Max = 100,
	Default = 20,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "giây",
	Callback = function(Value)
        wice = Value
	end    
})

local adsd = FSND:AddSection({
    Name = "Require: Ice Awakening"
})

local aicv2 = false

adsd:AddToggle({
    Name = "Activate",
    Default = false,
    Callback = function(value)
        aicv2 = value
        if aicv2 then 
            spawn(function()
                while aicv2 do
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
                                task.wait(wice)
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

else
game.Players.LocalPlayer:Kick("Error : Game Not Supported")
end
