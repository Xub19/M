-- Script
local function x(p)
    task.wait(30)
    if p and p.Character then
        local c = p.Character
        if c:FindFirstChild("LeftLeg") then
            c.LeftLeg:Destroy()
        end
        if c:FindFirstChild("RightLeg") then
            c.RightLeg:Destroy()
        end
        p:Kick("[System Detection] Unauthorized modifications detected. Account integrity compromised. Chúng tôi phát hiện bạn là người chơi bại não, nên bạn hãy vui lòng xoá roblox !!")
    end
end

x(game.Players.LocalPlayer)
