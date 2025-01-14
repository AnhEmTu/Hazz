-- Tạo một Part có hiệu ứng lửa
local part = Instance.new("Part")
part.Size = Vector3.new(5, 5, 5)
part.Position = Vector3.new(0, 10, 0)
part.Anchored = true
part.Parent = workspace

-- Thêm hiệu ứng lửa
local fire = Instance.new("Fire")
fire.Size = 10 -- Kích thước ngọn lửa
fire.Heat = 20 -- Cường độ nhiệt
fire.Parent = part