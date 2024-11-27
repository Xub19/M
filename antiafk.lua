game:GetService("Players").LocalPlayer.Idled:Connect(function()
	game:GetService("VirtualUser"):CaptureController()
	game:GetService("VirtualUser"):ClickButton2(Vector2.new())
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "";
		Text = "by Xub19";
		Icon = "rbxthumb://type=Asset&id=77349212873128&w=150&h=150";
		Duration = 5
	})
end)
