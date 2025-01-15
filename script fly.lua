repeat wait() until game:IsLoaded() and game.Players.LocalPlayer

--- Team
-- Discord link
setclipboard("https://discord.gg/heSHddPs")

--- FPS1: Optimize Performance Function
function OptimizePerformance()
    if not getgenv().FixCrash then return end

    -- Disable unnecessary effects in workspace
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("ParticleEmitter") or obj:IsA("Trail") or obj:IsA("Smoke") or obj:IsA("Fire") or obj:IsA("Sparkles") then
            obj.Enabled = false
        elseif obj:IsA("Explosion") or obj:IsA("ForceField") then
            obj:Destroy()
        end
    end

    -- Optimize Lighting settings
    local lighting = game.Lighting
    lighting.GlobalShadows = false
    lighting.FogEnd = 9e9
    lighting.Brightness = 1

    -- Lower graphic quality
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

    -- Optimize player character
    local player = game.Players.LocalPlayer
    if player and player.Character then
        for _, obj in pairs(player.Character:GetDescendants()) do
            if obj:IsA("Decal") or obj:IsA("Texture") or obj:IsA("MeshPart") then
                obj.Transparency = 0.9
            elseif obj:IsA("Accessory") then
                obj:Destroy()
            end
        end
    end

    -- Increase SimulationRadius
    game:GetService("RunService").Stepped:Connect(function()
        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
    end)
end

-- Activate FPS optimization function
OptimizePerformance()

--- FPS2: Further Optimizations for FPS
local function FPSBooster()
    if not getgenv().FixCrash2 then return end

    local g = game
    local w = g.Workspace
    local l = g.Lighting
    local t = w.Terrain
    local decalsHidden = true

    -- Lighting and Terrain optimizations
    sethiddenproperty(l, "Technology", Enum.Technology.Compatibility)
    sethiddenproperty(t, "Decoration", false)
    t.WaterWaveSize = 0
    t.WaterWaveSpeed = 0
    t.WaterReflectance = 0
    t.WaterTransparency = 0
    l.GlobalShadows = false
    l.FogEnd = 9e9
    l.Brightness = 0
    settings().Rendering.QualityLevel = Enum.QualityLevel.Level01

    -- Optimize objects in the game
    for _, obj in pairs(g:GetDescendants()) do
        if obj:IsA("Part") or obj:IsA("Union") or obj:IsA("CornerWedgePart") or obj:IsA("TrussPart") then
            obj.Material = Enum.Material.Plastic
            obj.Reflectance = 0
        elseif obj:IsA("Decal") or obj:IsA("Texture") and decalsHidden then
            obj.Transparency = 1
        elseif obj:IsA("ParticleEmitter") or obj:IsA("Trail") then
            obj.Lifetime = NumberRange.new(0)
        elseif obj:IsA("Explosion") then
            obj.BlastPressure = 1
            obj.BlastRadius = 1
        elseif obj:IsA("Fire") or obj:IsA("SpotLight") or obj:IsA("Smoke") or obj:IsA("Sparkles") then
            obj.Enabled = false
        elseif obj:IsA("MeshPart") then
            obj.Material = Enum.Material.Plastic
            obj.Reflectance = 0
        end
    end

    -- Disable lighting effects
    for _, effect in pairs(l:GetChildren()) do
        if effect:IsA("BlurEffect") or effect:IsA("SunRaysEffect") or 
           effect:IsA("ColorCorrectionEffect") or effect:IsA("BloomEffect") or 
           effect:IsA("DepthOfFieldEffect") then
            effect.Enabled = false
        end
    end

    print("FPS Booster activated!")
end

-- Activate FPS booster function
FPSBooster()

--- GUI Setup
local main = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local up = Instance.new("TextButton")
local down = Instance.new("TextButton")
local onof = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local plus = Instance.new("TextButton")
local speed = Instance.new("TextLabel")
local mine = Instance.new("TextButton")

-- GUI properties
main.Name = "TBoyRoblox"
main.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = main
Frame.BackgroundColor3 = Color3.fromRGB(163, 255, 137)
Frame.BorderColor3 = Color3.fromRGB(103, 221, 213)
Frame.Position = UDim2.new(0.100320168, 0, 0.379746825, 0)
Frame.Size = UDim2.new(0, 190, 0, 57)

-- Button configuration
up.Name = "lên"
up.Parent = Frame
up.BackgroundColor3 = Color3.fromRGB(79, 255, 152)
up.Size = UDim2.new(0, 44, 0, 28)
up.Font = Enum.Font.SourceSans
up.Text = "LÊN"
up.TextColor3 = Color3.fromRGB(0, 0, 0)
up.TextSize = 14

down.Name = "xuống"
down.Parent = Frame
down.BackgroundColor3 = Color3.fromRGB(215, 255, 121)
down.Position = UDim2.new(0, 0, 0.491228074, 0)
down.Size = UDim2.new(0, 44, 0, 28)
down.Font = Enum.Font.SourceSans
down.Text = "XUỐNG"
down.TextColor3 = Color3.fromRGB(0, 0, 0)
down.TextSize = 14

onof.Name = "onof"
onof.Parent = Frame
onof.BackgroundColor3 = Color3.fromRGB(255, 249, 74)
onof.Position = UDim2.new(0.702823281, 0, 0.491228074, 0)
onof.Size = UDim2.new(0, 56, 0, 28)
onof.Font = Enum.Font.SourceSans
onof.Text = "BAY"
onof.TextColor3 = Color3.fromRGB(0, 0, 0)
onof.TextSize = 14

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(242, 60, 255)
TextLabel.Position = UDim2.new(0.469327301, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 100, 0, 28)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "2 in 1"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

plus.Name = "Kun"
plus.Parent = Frame
plus.BackgroundColor3 = Color3.fromRGB(133, 145, 255)
plus.Position = UDim2.new(0.231578946, 0, 0, 0)
plus.Size = UDim2.new(0, 45, 0, 28)
plus.Font = Enum.Font.SourceSans
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(0, 0, 0)
plus.TextScaled = true
plus.TextSize = 14
plus.TextWrapped = true

speed.Name = "speed"
speed.Parent = Frame
speed.BackgroundColor3 = Color3.fromRGB(255, 85, 0)
speed.Position = UDim2.new(0.468421042, 0, 0.491228074, 0)
speed.Size = UDim2.new(0, 44, 0, 28)
speed.Font = Enum.Font.SourceSans
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(0, 0, 0)
speed.TextScaled = true
speed.TextSize = 14
speed.TextWrapped = true

mine.Name = "mine"
mine.Parent = Frame
mine.BackgroundColor3 = Color3.fromRGB(123, 255, 247)
mine.Position = UDim2.new(0.231578946, 0, 0.491228074, 0)
mine.Size = UDim2.new(0, 45, 0, 29)
mine.Font = Enum.Font.SourceSans
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(0, 0, 0)
mine.TextScaled = true
mine.TextSize = 14



local speeds = 1
local speaker = game:GetService("Players").LocalPlayer
local chr = speaker.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
local nowe = false

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Đang Tải",
    Text = "Hãy Đợi Chút Nha",
    Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"
})

Duration = 16

Frame.Active = true -- main = gui
Frame.Draggable = true

onof.MouseButton1Down:connect(function()
    if nowe then
        nowe = false

        -- Re-enable humanoid states
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, true)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, true)
        speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
    else
        nowe = true

        -- Run the teleport walking logic
        for i = 1, speeds do
            spawn(function()
                local hb = game:GetService("RunService").Heartbeat
                local tpwalking = true
                local chr = game.Players.LocalPlayer.Character
                local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
                while tpwalking and hb:Wait() and chr and hum and hum.Parent do
                    if hum.MoveDirection.Magnitude > 0 then
                        chr:TranslateBy(hum.MoveDirection)
                    end
                end
            end)
        end

        -- Disable animations and humanoid states
        game.Players.LocalPlayer.Character.Animate.Disabled = true
        local Char = game.Players.LocalPlayer.Character
        local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

        for _, v in next, Hum:GetPlayingAnimationTracks() do
            v:AdjustSpeed(0)
        end

        -- Disable all humanoid states that interfere with movement
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics, false)
        speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
        speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
    end
end)




local speeds = 1
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")
local tpwalking = false
local nowe = false

-- Functions to enable/disable flying and teleport walking
function startFlying()
    if humanoid.RigType == Enum.HumanoidRigType.R6 then
        -- R6 setup
        local torso = character:WaitForChild("Torso")
        local bg = Instance.new("BodyGyro", torso)
        bg.P = 9e4
        bg.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
        bg.CFrame = torso.CFrame

        local bv = Instance.new("BodyVelocity", torso)
        bv.Velocity = Vector3.new(0, 0.1, 0)
        bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)

        if nowe then
            humanoid.PlatformStand = true
        end

        while nowe and humanoid.Health > 0 do
            game:GetService("RunService").RenderStepped:Wait()

            local speed = 0
            if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
                speed = speed + 0.5 + (speed / maxspeed)
                if speed > maxspeed then
                    speed = maxspeed
                end
            elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                speed = speed - 1
                if speed < 0 then
                    speed = 0
                end
            end

            -- Update velocity based on movement controls
            if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
                bv.Velocity = ((game.Workspace.CurrentCamera.CFrame.LookVector * (ctrl.f + ctrl.b)) + 
                    ((game.Workspace.CurrentCamera.CFrame * CFrame.new(ctrl.l + ctrl.r, (ctrl.f + ctrl.b) * 0.2, 0).Position) - game.Workspace.CurrentCamera.CFrame.Position)) * speed
                lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
            elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
                bv.Velocity = ((game.Workspace.CurrentCamera.CFrame.LookVector * (lastctrl.f + lastctrl.b)) + 
                    ((game.Workspace.CurrentCamera.CFrame * CFrame.new(lastctrl.l + lastctrl.r, (lastctrl.f + lastctrl.b) * 0.2, 0).Position) - game.Workspace.CurrentCamera.CFrame.Position)) * speed
            else
                bv.Velocity = Vector3.new(0, 0, 0)
            end

            bg.CFrame = game.Workspace.CurrentCamera.CFrame * CFrame.Angles(-math.rad((ctrl.f + ctrl.b) * 50 * speed / maxspeed), 0, 0)
        end

        bg:Destroy()
        bv:Destroy()
        humanoid.PlatformStand = false
    end
end

function startTeleportWalking()
    tpwalking = true
    for i = 1, speeds do
        spawn(function()
            local hb = game:GetService("RunService").Heartbeat
            while tpwalking and hb:Wait() do
                if humanoid.MoveDirection.Magnitude > 0 then
                    character:TranslateBy(humanoid.MoveDirection)
                end
            end
        end)
    end
end

-- Increase speed
plus.MouseButton1Down:connect(function()
    speeds = speeds + 1
    speed.Text = tostring(speeds)
    if nowe then
        tpwalking = false
        startTeleportWalking()
    end
end)

-- Decrease speed
mine.MouseButton1Down:connect(function()
    if speeds > 1 then
        speeds = speeds - 1
        speed.Text = tostring(speeds)
        if nowe then
            tpwalking = false
            startTeleportWalking()
        end
    else
        speed.Text = "Cannot be less than 1"
        wait(1)
        speed.Text = tostring(speeds)
    end
end)

-- Character added
game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
    wait(0.7)
    player.Character.Humanoid.PlatformStand = false
    player.Character.Animate.Disabled = false
end)

-- Toggle flying state
up.MouseButton1Down:connect(function()
    player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, 2, 0)
end)

down.MouseButton1Down:connect(function()
    player.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame * CFrame.new(0, -2, 0)
end)

-- Toggle teleport walking
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.Space then
            nowe = not nowe
            if nowe then
                startTeleportWalking()
            else
                tpwalking = false
            end
        end
    end
end)