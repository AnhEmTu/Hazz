-- Khởi tạo GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Tạo khung chính của GUI
local MainFrame = Instance.new("Frame")
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 300, 0, 400)
MainFrame.Position = UDim2.new(0, 10, 0, 10)
MainFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
MainFrame.BorderSizePixel = 2
MainFrame.Visible = false  -- Mặc định là ẩn

-- Tạo tiêu đề
local TitleLabel = Instance.new("TextLabel")
TitleLabel.Parent = MainFrame
TitleLabel.Size = UDim2.new(1, 0, 0, 30)
TitleLabel.Text = "Script Manager"
TitleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TitleLabel.TextSize = 20
TitleLabel.TextCentered = true

-- Tạo một nút "Đóng/Mở" để bật/tắt GUI
local ToggleButton = Instance.new("TextButton")
ToggleButton.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("ScreenGui")
ToggleButton.Size = UDim2.new(0, 100, 0, 50)
ToggleButton.Position = UDim2.new(0, 10, 0, 10)
ToggleButton.Text = "Open GUI"
ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
ToggleButton.TextSize = 18

-- Tạo nút trong GUI để thực thi một số chức năng (ví dụ như FPS Booster)
local FPSButton = Instance.new("TextButton")
FPSButton.Parent = MainFrame
FPSButton.Size = UDim2.new(0, 280, 0, 40)
FPSButton.Position = UDim2.new(0, 10, 0, 50)
FPSButton.Text = "Toggle FPS Booster"
FPSButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
FPSButton.TextSize = 18
FPSButton.MouseButton1Click:Connect(function()
    getgenv().FixCrash2 = not getgenv().FixCrash2
    FPSBooster() -- Hàm FPSBooster phải được định nghĩa trong script của bạn
    print("FPS Booster is now " .. (getgenv().FixCrash2 and "Enabled" or "Disabled"))
end)

-- Tạo nút đóng GUI trong chính GUI
local CloseButton = Instance.new("TextButton")
CloseButton.Parent = MainFrame
CloseButton.Size = UDim2.new(0, 280, 0, 40)
CloseButton.Position = UDim2.new(0, 10, 0, 100)
CloseButton.Text = "Close GUI"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseButton.TextSize = 18
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    print("GUI Closed")
end)

-- Hành động khi nhấn nút ToggleButton để mở/đóng GUI
ToggleButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    ToggleButton.Text = MainFrame.Visible and "Close GUI" or "Open GUI"  -- Thay đổi chữ của nút khi mở/đóng
end)