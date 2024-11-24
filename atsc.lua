-- HaoGay
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

char.Humanoid.WalkSpeed = 150

spawn(function()
    while true do
        game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer("Tôi có conchimbé", "All")
        wait(5)
    end
end)

function swapBody()
    local h, t, l, r = char.Head, char.Torso, char["Left Arm"], char["Right Arm"]
    h.CFrame, t.CFrame, l.CFrame, r.CFrame = t.CFrame, l.CFrame, r.CFrame, h.CFrame
    t.Position = t.Position + Vector3.new(0, 5, 0)
end

spawn(function()
    while true do
        swapBody()
        wait(0.1)
    end
end)
