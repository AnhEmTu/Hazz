local Player = game.Players.LocalPlayer
local VirtualInputManager = game:GetService("VirtualInputManager")
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/VanThanhLuxucu/refs/heads/main/main.txt"))()
 
local Hub = Material.Load({
	Title = "Nhớ Đăng Ký Kênh Nha !",
	Style = 3,
	SizeX = 300,
	SizeY = 300,
	Theme = "Rose",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(235,235,235)
	}
})
 
local Home = Hub.New({
	Title = "Home"
})

local Hitbox = Hub.New({
    Title = "Hitbox 120"
})

local Eps = Hub.New({
    Title = "Hitbox 120"
})

_G.Tween = nil
_G.Play = false
_G.CloseAllScript = false
 
local ToggleAutoChest = Home.Toggle({
	Text = "Chăm Chỉ Bạn Sẽ Có 1 Tị Beli",
	Callback = function(Value)
		_G.Play = Value
	end,
	Enabled = _G.Play
})
 
game:GetService('RunService').Stepped:connect(function()
	if _G.Play then
		local HumanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")
		local Humanoid = Player.Character:WaitForChild("Humanoid")
		HumanoidRootPart.Velocity = Vector3.new(0,0,0)
		for i,v in pairs(Player.Character:GetDescendants()) do
			if v:IsA("BasePart") then
				v.CanCollide = false
			end
		end
		Humanoid.Sit = false
	end
end)
 
function Tween(Part)
	if _G.Tween then
		_G.Tween:Cancel()
	end
	local HumanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")
	_G.Tween = game:GetService("TweenService"):Create(HumanoidRootPart,TweenInfo.new((Part.Position-HumanoidRootPart.Position).magnitude/300,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut),{CFrame = Part.CFrame})
	_G.Tween:Play()
	local flying = true
	while game:GetService("RunService").Stepped:Wait() and flying and _G.Play do
		if _G.Play == false then
			_G.Tween:Cancel()
		end
		if (Part.Position-HumanoidRootPart.Position).magnitude < 250 then
			_G.Tween:Cancel()
			for i = 1,5 do
				HumanoidRootPart.CFrame = Part.CFrame
				wait()
			end
			flying = false
		end
	end
end
 
function TableNearToFarChests()
	local HumanoidRootPart = Player.Character:WaitForChild("HumanoidRootPart")
	local chests = {}
	local checkedchests = {}
	local function Check(v)
		for i,e in pairs(checkedchests) do
			if v == e then
				return false
			end
		end
		return true
	end
	local function A(tablec)
		local nearest
		local sus
		for i,v in pairs(tablec) do
			local real = Check(v)
			if real then
				if nearest then
					if (v.Position-HumanoidRootPart.Position).magnitude < nearest then
                        nearest = (v.Position-HumanoidRootPart.Position).magnitude
						sus = v
					end
				else
					nearest = (v.Position-HumanoidRootPart.Position).magnitude
                    sus = v
				end
			end
		end
		return sus
	end
	local function B(tablec)
		local C = A(tablec)
		if C then
			table.insert(checkedchests,C)
			B(tablec)
		end
		return checkedchests
	end
	for i,v in pairs(workspace:GetDescendants()) do
		if v.Name == "Chest1" or v.Name == "Chest2" or v.Name == "Chest3" then
			table.insert(chests,v)
		end
	end
	B(chests)
	return chests,checkedchests
end
 
repeat wait() until game:IsLoaded()
 
while wait(1) do
	if _G.Play then
		local chests,checkedchests = TableNearToFarChests()
		for i,v in pairs(checkedchests) do
			Tween(v)
			if _G.Play == false then
				break
			end
		end
	else
		if _G.Tween then
			_G.Tween:Cancel()
		end
	end
end

local ToggleHitbox = Hitbox.Toggle({
    Text = "Hitbox 120",
	Callback = function(Value)
            
local InfiniteJumpEnabled = false
game:GetService("UserInputService").JumpRequest:connect(function()
    if InfiniteJumpEnabled then
        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
    end
end)
 
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
    vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
 
game.StarterGui:SetCore("SendNotification", {
    Title = "Văn Thành IOS";
    Text = "Đã Bật hitbox"; -- what the text says (ofc)
    Duration = 1;
})
wait(1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Văn Thành IOS";
    Text = "YTB: @thanhdzso1"; -- what the text says (ofc)
    Duration = 1;
})
_G.HeadSize = 120
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 1.0
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really black")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
            
  end
  })