-- Chức năng tự động chọn team trong Block Fruit
local function AutoSelectBlockFruitTeam()
    if not getgenv().Team then return end  -- Kiểm tra xem có chọn team hay không

    local player = game.Players.LocalPlayer
    local teamName = getgenv().Team  -- Lấy giá trị team từ getgenv()

    -- Kiểm tra xem team có tồn tại không trong game
    local team = game:GetService("Teams"):FindFirstChild(teamName)

    -- Nếu tìm thấy team, thay đổi team của người chơi
    if team then
        player.Team = team
        print("Đã chọn team: " .. team.Name)
    else
        print("Không tìm thấy team với tên: " .. teamName)
    end
end

-- Kích hoạt chức năng chọn team trong Block Fruit
AutoSelectBlockFruitTeam()