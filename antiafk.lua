pcall(function()
	local vu=game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:Connect(function()
		vu:CaptureController()
		vu:ClickButton2(Vector2.new())
	end)
	game:GetService("StarterGui"):SetCore("SendNotification",{
		Title="Anti AFK by Xub19";
		Text="Status: Active";
		Icon="rbxthumb://type=Asset&id=77349212873128&w=150&h=150";
		Duration=10
	})
end)
