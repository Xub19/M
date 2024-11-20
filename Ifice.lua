local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({ 
    Name = "Ijul Piece 2",
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
    Name = "Farm Ice"
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
                            pcall(function()
                                character.HumanoidRootPart.CFrame = CFrame.new(-2411.69824, 19.8741894, -598.203064, 1, 0, 0, 0, 1, 0, 0, 0, 1)
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

local AKAPS = Window:MakeTab({
    Name = "Combat"
})

local AKAPSS = AKAPS:AddSection({
    Name = "Items"
})

local player = Players.LocalPlayer 

local function gtdp()
    local items = {}
    local backpack = player:FindFirstChild("Backpack")
    if backpack then
        for _, item in ipairs(backpack:GetChildren()) do
            if item.Name ~= "Hao" and item.Name ~= "Running" and item.Name ~= "Swim" then
                table.insert(items, item.Name)
            end
        end
    end
    return items
end

local function equip(itemName)
    local backpack = player:FindFirstChild("Backpack")
    local character = player.Character
    if backpack and character then
        local item = backpack:FindFirstChild(itemName)
        if item then
            item.Parent = character 
        end
    end
end

local iventory = AKAPS:AddDropdown({
    Name = "Danh sách vật phẩm",
    Default = "chưa trang bị",
    Options = gtdp(), 
    Callback = function(Value)
        equip(Value) 
    end    
})

player.ChildAdded:Connect(function(child)
    if child.Name == "Backpack" then
        task.wait(1) 
        iventory:Refresh(gtdp(), true) 
    end
end)

local backpack = player:FindFirstChild("Backpack")
if backpack then
    backpack.ChildAdded:Connect(function()
        iventory:Refresh(gtdp(), true) 
    end)

    backpack.ChildRemoved:Connect(function()
        iventory:Refresh(gtdp(), true) 
    end)
end

local AKAPSSK = AKAPS:AddSection({
    Name = "PVP - TP"
})

local nenable = false
local nplayer = 5  
local chealth = {}     

local function ghealth(player)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        return player.Character.Humanoid.Health
    end
    return 0
end

local function tppl(localPlayer, targetp)
    if targetp.Character and targetp.Character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = localPlayer.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            humanoidRootPart.CFrame = targetp.Character.HumanoidRootPart.CFrame
        end
    end
end

local function isNear(localPlayer, targetp, range)
    if targetp.Character and targetp.Character:FindFirstChild("HumanoidRootPart") and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") then
        local dist = (localPlayer.Character.HumanoidRootPart.Position - targetp.Character.HumanoidRootPart.Position).Magnitude
        return dist <= range
    end
    return false
end

local function attack()
    local UserInputService = game:GetService("UserInputService")
    if not UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
        local screenWidth = workspace.CurrentCamera.ViewportSize.X
        local screenHeight = workspace.CurrentCamera.ViewportSize.Y
        mousemoveabs(screenWidth - 50, screenHeight - 50)
        mouse1click()
    end
end

local function autoPvP()
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    while nenable do
        for _, targetp in ipairs(Players:GetPlayers()) do
            if targetp ~= LocalPlayer and ghealth(targetp) > 0 then
                chealth[targetp.UserId] = ghealth(targetp)
                while nenable and ghealth(targetp) > 0 and isNear(LocalPlayer, targetp, 10) do
                    tppl(LocalPlayer, targetp)
                    attack()
                    wait(0.1)
                end
            end
        end
        wait(1)
    end
end

AKAPSSK:AddToggle({
    Name = "Enable Auto PvP",
    Default = false,
    Callback = function(Value)
        nenable = Value
        if nenable then
            OrionLib:MakeNotification({
                Name = "Auto PvP Enabled",
                Content = "now running.",
                Time = 5
            })
            coroutine.wrap(autoPvP)()
        else
            OrionLib:MakeNotification({
                Name = "Auto PvP Disabled",
                Content = "stopped.",
                Time = 5
            })
        end
    end
})

AKAPSSK:AddButton({
    Name = "Next Player",
    Callback = function()
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer

        for _, targetp in ipairs(Players:GetPlayers()) do
            if targetp ~= LocalPlayer and ghealth(targetp) > 0 then
                tppl(LocalPlayer, targetp)
                attack()
                break
            end
        end
    end
})


OrionLib:Init()
