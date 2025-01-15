-- Chức năng tự động chọn team trong Block Fruit
local function AutoSelectBlockFruitTeam()
    if not getgenv().Team then 
        warn("Chưa chọn team!") 
        return 
    end  -- Kiểm tra xem có chọn team hay không

    -- Kiểm tra và chọn team nếu có giá trị cho Team
    local teamName = getgenv().Team  -- Lấy tên team từ getgenv().Team
    local validTeams = {"Marines", "Pirates"}  -- Các team hợp lệ

    if table.find(validTeams, teamName) then
        -- Chọn team hợp lệ
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", teamName)
        print("Đã chọn team: " .. teamName)
    else
        warn("Team không hợp lệ: " .. teamName)
    end
end

AutoSelectBlockFruitTeam()  -- Gọi hàm để thực hiện chọn team