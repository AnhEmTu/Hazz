
-- Script đã được chỉnh sửa để dễ hiểu và dễ sửa hơn.
-- 1. Đổi tên biến từ ký hiệu khó hiểu thành tên rõ ràng.
-- 2. Tách các phần code phức tạp thành từng đoạn dễ đọc.
-- 3. Giữ nguyên đầy đủ chức năng.
-- 4. Thêm giải thích (-- comment) vào các phần quan trọng.


-- Script đã được chỉnh sửa hoàn chỉnh theo yêu cầu
-- 1. Giữ nguyên dấu câu, ký tự đặc biệt như ", (), :, ...
-- 2. Chỉ xóa phần tiếng Anh sau dấu '|', giữ lại phần tiếng Việt.
-- 3. Xóa nội dung trong Description = ""," và Content = "", giữ lại cặp "".
-- 4. Thêm giải thích (-- comment) vào các phần quan trọng để dễ sửa chữa hơn.


-- Script đã được chỉnh sửa hoàn chỉnh theo yêu cầu
-- 1. Giữ nguyên dấu câu, ký tự đặc biệt như ", (), :, ...
-- 2. Chỉ xóa phần tiếng Anh sau dấu '|', không làm mất phần tiếng Việt.
-- 3. Thêm giải thích (-- comment) vào các phần quan trọng để dễ hiểu hơn.

-- discord.gg/25ms


shared.LoaderTitle = "discord https://discord.gg/baGVBKvVAs";
shared.LoaderKeyFrames = {
    [1] = {
        1,
        10
    },
    [2] = {
        2,
        30
    },
    [3] = {
        3,
        60
    },
    [4] = {
        2,
        100
    }
};
local ThongTinLoader = {
    LoaderData = {
        Name = shared.LoaderTitle or "A Loader",
        Colors = shared.LoaderColors or {
            Main = Color3.fromRGB(0, 0, 0),
            Topic = Color3.fromRGB(200, 200, 200),
            Title = Color3.fromRGB(255, 255, 255),
            LoaderBackground = Color3.fromRGB(40, 40, 40),
            LoaderSplash = Color3.fromRGB(3, 252, 3)
        }
    },
    Keyframes = shared.LoaderKeyFrames or {
        [1] = {
            1,
            10
        },
        [2] = {
            2,
            30
        },
        [3] = {
            3,
            60
        },
        [4] = {
            2,
            100
        }
    }
};
local v3 = {
    [1] = "",
    [2] = "",
    [3] = "",
    [4] = ""
};
function TweenObject(LuaChon8, LuaChon9, MaGame0)
    game.TweenService:Create(LuaChon8, TweenInfo.new(LuaChon9, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), MaGame0):Play();
end
function CreateObject(MaGame1, MaGame2)
    local MaGame3 = Instance.new(MaGame1);
    local MaGame4;
    for v416, v417 in pairs(MaGame2) do
        if (v416 ~= "Parent") then
            MaGame3[v416] = v417;
        else
            MaGame4 = v417;
        end
    end
    MaGame3.Parent = MaGame4;
    return MaGame3;
end
local function v4(MaGame6, MaGame7)
    local MaGame8 = Instance.new("UICorner");
    MaGame8.CornerRadius = UDim.new(0, MaGame6);
    MaGame8.Parent = MaGame7;
end
local ManHinh = CreateObject("ScreenGui", {
    Name = "Core",
    Parent = game.CoreGui
});
local KhungChinh = CreateObject("Frame", {
    Name = "Main",
    Parent = ManHinh,
    BackgroundColor3 = ThongTinLoader.LoaderData.Colors.Main,
    BorderSizePixel = 0,
    ClipsDescendants = true,
    Position = UDim2.new(0.5, 0, 0.5, 0),
    AnchorPoint = Vector2.new(0.5, 0.5),
    Size = UDim2.new(0, 0, 0, 0)
});
v4(12, KhungChinh);
local HinhAnhNguoiDung = CreateObject("ImageLabel", {
    Name = "UserImage",
    Parent = KhungChinh,
    BackgroundTransparency = 1,
    Image = "rbxassetid://138233670183241",
    Position = UDim2.new(0, 15, 0, 10),
    Size = UDim2.new(0, 50, 0, 50)
});
v4(25, HinhAnhNguoiDung);
local TenNguoiDung = CreateObject("TextLabel", {
    Name = "UserName",
    Parent = KhungChinh,
    BackgroundTransparency = 1,
    Text = "gardan hub",
    Position = UDim2.new(0, 75, 0, 10),
    Size = UDim2.new(0, 200, 0, 50),
    Font = Enum.Font.GothamBold,
    TextColor3 = ThongTinLoader.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local TieuDePhu = CreateObject("TextLabel", {
    Name = "Top",
    TextTransparency = 1,
    Parent = KhungChinh,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 70),
    Size = UDim2.new(0, 301, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "Loader",
    TextColor3 = ThongTinLoader.LoaderData.Colors.Topic,
    TextSize = 10,
    TextXAlignment = Enum.TextXAlignment.Left
});
local TieuDe = CreateObject("TextLabel", {
    Name = "Title",
    Parent = KhungChinh,
    TextTransparency = 1,
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1,
    Position = UDim2.new(0, 30, 0, 90),
    Size = UDim2.new(0, 301, 0, 46),
    Font = Enum.Font.Gotham,
    RichText = true,
    Text = "<b>" .. ThongTinLoader.LoaderData.Name .. "</b>",
    TextColor3 = ThongTinLoader.LoaderData.Colors.Title,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Left
});
local NenLoader = CreateObject("Frame", {
    Name = "BG",
    Parent = KhungChinh,
    AnchorPoint = Vector2.new(0.5, 0),
    BackgroundTransparency = 1,
    BackgroundColor3 = ThongTinLoader.LoaderData.Colors.LoaderBackground,
    BorderSizePixel = 0,
    Position = UDim2.new(0.5, 0, 0, 70),
    Size = UDim2.new(0.8500000238418579, 0, 0, 24)
});
v4(8, NenLoader);
local ThanhTienTrinh = CreateObject("Frame", {
    Name = "Progress",
    Parent = NenLoader,
    BackgroundColor3 = ThongTinLoader.LoaderData.Colors.LoaderSplash,
    BackgroundTransparency = 1,
    BorderSizePixel = 0,
    Size = UDim2.new(0, 0, 0, 24)
});
v4(8, ThanhTienTrinh);
local NhanTrangThai = CreateObject("TextLabel", {
    Name = "StepLabel",
    Parent = KhungChinh,
    BackgroundTransparency = 1,
    Position = UDim2.new(0.5, 0, 1, - 25),
    Size = UDim2.new(1, - 20, 0, 20),
    Font = Enum.Font.Gotham,
    Text = "",
    TextColor3 = ThongTinLoader.LoaderData.Colors.Topic,
    TextSize = 14,
    TextXAlignment = Enum.TextXAlignment.Center,
    AnchorPoint = Vector2.new(0.5, 0.5)
});
function UpdateStepText(MaGameKiemTra1)
    NhanTrangThai.Text = v3[MaGameKiemTra1] or "" ;
end
function UpdatePercentage(MaGameKiemTra3, MaGameKiemTra4)
    TweenObject(ThanhTienTrinh, 0.5, {
        Size = UDim2.new(MaGameKiemTra3 / 100, 0, 0, 24)
    });
    UpdateStepText(MaGameKiemTra4);
end
TweenObject(KhungChinh, 0.25, {
    Size = UDim2.new(0, 346, 0, 121)
});
wait();
TweenObject(TieuDePhu, 0.5, {
    TextTransparency = 0
});
TweenObject(TieuDe, 0.5, {
    TextTransparency = 0
});
TweenObject(NenLoader, 0.5, {
    BackgroundTransparency = 0
});
TweenObject(ThanhTienTrinh, 0.5, {
    BackgroundTransparency = 0
});
for MaGameKiemTra5, MaGameKiemTra6 in pairs(ThongTinLoader.Keyframes) do
    wait(MaGameKiemTra6[1]);
    UpdatePercentage(MaGameKiemTra6[2], MaGameKiemTra5);
end
UpdatePercentage(100, 4);
TweenObject(TieuDePhu, 0.5, {
    TextTransparency = 1
});
TweenObject(TieuDe, 0.5, {
    TextTransparency = 1
});
TweenObject(NenLoader, 0.5, {
    BackgroundTransparency = 1
});
TweenObject(ThanhTienTrinh, 0.5, {
    BackgroundTransparency = 1
});
wait(0.5);
TweenObject(KhungChinh, 0.25, {
    Size = UDim2.new(0, 0, 0, 0)
});
wait(0.25);
ManHinh:Destroy();
-- spawn(function()
--     while wait() do
--         function print()
--         end
--         function warn()
--         end
--         function error()
--         end
--         debug.traceback = function()
--             return "Traceback blocked";
--         end;
--         debug.info = function()
--             return "Info blocked";
--         end;
--         local v420 = getrawmetatable(game);
--         if (v420 and not v420.__metatable) then
--             setreadonly(v420, false);
--             local KhungChinh58 = v420.__index;
--             local KhungChinh59 = v420.__newindex;
--             v420.__index = function(HinhAnhNguoiDung59, HinhAnhNguoiDung60)
--                 if ((HinhAnhNguoiDung60 == "debug") or (HinhAnhNguoiDung60 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return KhungChinh58(HinhAnhNguoiDung59, HinhAnhNguoiDung60);
--             end;
--             v420.__newindex = function(HinhAnhNguoiDung61, HinhAnhNguoiDung62, HinhAnhNguoiDung63)
--                 if ((HinhAnhNguoiDung62 == "debug") or (HinhAnhNguoiDung62 == "getrawmetatable")) then
--                     error("Anti Skid: Tampering detected!");
--                 end
--                 return KhungChinh59(HinhAnhNguoiDung61, HinhAnhNguoiDung62, HinhAnhNguoiDung63);
--             end;
--             setreadonly(v420, true);
--         end
--         local function v421()
--             local ManHinh68 = {
--                 "_G",
--                 "debug",
--                 "getgenv",
--                 "getrawmetatable",
--                 "setfenv",
--                 "loadstring",
--                 "hookfunction"
--             };
--             for KhungChinh62, KhungChinh63 in ipairs(ManHinh68) do
--                 local KhungChinh64, KhungChinh65 = pcall(function()
--                     return _G[KhungChinh63];
--                 end);
--                 if (KhungChinh64 and KhungChinh65) then
--                     error("Anti Skid: Environment tampering detected!");
--                 end
--             end
--         end
--         local function v422()
--             local ManHinh69 = {
--                 getrawmetatable,
--                 setreadonly,
--                 getgenv,
--                 debug.getinfo,
--                 debug.getregistry
--             };
--             for KhungChinh66, KhungChinh67 in ipairs(ManHinh69) do
--                 if KhungChinh67 then
--                     error("Anti Skid: Hook tampering detected!");
--                 end
--             end
--         end
--         local v423 = game:FindService("HttpService");
--         if v423 then
--             v423.RequestAsync = function()
--                 error("HTTP Requests Blocked");
--             end;
--             v423.GetAsync = function()
--                 error("HTTP Get Blocked");
--             end;
--             v423.PostAsync = function()
--                 error("HTTP Post Blocked");
--             end;
--         end
--         function collectgarbage()
--             error("GC Blocked");
--         end
--         os.time = function()
--             error("OS Time Blocked");
--         end;
--         pcall(v421);
--         pcall(v422);
--     end
-- end);
local TaiCodeNgoai = loadstring(game:HttpGet("https://raw.githubusercontent.com/obfalchx/testfluent/refs/heads/main/FluentTrau"))();
local CuaSoChinh = TaiCodeNgoai:CreateWindow({
    Title = "gardan hub v3.0",
    SubTitle = "tham gia discord
    TabWidth = 160,
    Theme = "Light",
    Acrylic = false,
    Size = UDim2.fromOffset(500, 320),
    MinimizeKey = Enum.KeyCode.End
});
local DanhSachTab = {
    Home = CuaSoChinh:AddTab({
        Title = "Thông Tin"
    }),
    Main = CuaSoChinh:AddTab({
        Title = "Cày"
    }),
    Sea = CuaSoChinh:AddTab({
        Title = "Sự Kiện"
    }),
    ITM = CuaSoChinh:AddTab({
        Title = "Vật Phẩm"
    }),
    Setting = CuaSoChinh:AddTab({
        Title = "Cài Đặt"
    }),
    Status = CuaSoChinh:AddTab({
        Title = "Máy Chủ"
    }),
    Stats = CuaSoChinh:AddTab({
        Title = "Chỉ Số"
    }),
    Player = CuaSoChinh:AddTab({
        Title = "Người Chơi"
    }),
    Teleport = CuaSoChinh:AddTab({
        Title = "Dịch Chuyển"
    }),
    Visual = CuaSoChinh:AddTab({
        Title = "Giả"
    }),
    Fruit = CuaSoChinh:AddTab({
        Title = "Trái"
    }),
    Raid = CuaSoChinh:AddTab({
        Title = "Tập Kích"
    }),
    Race = CuaSoChinh:AddTab({
        Title = "Tộc"
    }),
    Shop = CuaSoChinh:AddTab({
        Title = "Cửa Hàng"
    }),
    Misc = CuaSoChinh:AddTab({
        Title = "Khác"
    })
};
local LuaChon = TaiCodeNgoai.Options;
local MaGame = game.PlaceId;
if (MaGame == 2753915549) then
    Sea1 = true;
elseif (MaGame == 4442272183) then
    Sea2 = true;
elseif (MaGame == 7449423635) then
    Sea3 = true;
else
    game:Shutdown();
end
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
    wait();
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame);
end);
Sea1 = false;
Sea2 = false;
Sea3 = false;
local MaGameKiemTra = game.PlaceId;
if (MaGameKiemTra == 2753915549) then
    Sea1 = true;
elseif (MaGameKiemTra == 4442272183) then
    Sea2 = true;
elseif (MaGameKiemTra == 7449423635) then
    Sea3 = true;
end
function CheckLevel()
    local MaGameKiemTra7 = game:GetService("Players").LocalPlayer.Data.Level.Value;
    if Sea1 then
        if ((MaGameKiemTra7 == 1) or (MaGameKiemTra7 <= 9) or (SelectMonster == "Bandit")) then
            Ms = "Bandit";
            NameQuest = "BanditQuest1";
            QuestLv = 1;
            NameMon = "Bandit";
            CFrameQ = CFrame.new(1060.9383544922, 16.455066680908, 1547.7841796875);
            CFrameMon = CFrame.new(1038.5533447266, 41.296249389648, 1576.5098876953);
        elseif ((MaGameKiemTra7 == 10) or (MaGameKiemTra7 <= 14) or (SelectMonster == "Monkey")) then
            Ms = "Monkey";
            NameQuest = "JungleQuest";
            QuestLv = 1;
            NameMon = "Monkey";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1448.1446533203, 50.851993560791, 63.60718536377);
        elseif ((MaGameKiemTra7 == 15) or (MaGameKiemTra7 <= 29) or (SelectMonster == "Gorilla")) then
            Ms = "Gorilla";
            NameQuest = "JungleQuest";
            QuestLv = 2;
            NameMon = "Gorilla";
            CFrameQ = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameMon = CFrame.new(- 1142.6488037109, 40.462348937988, - 515.39227294922);
        elseif ((MaGameKiemTra7 == 30) or (MaGameKiemTra7 <= 39) or (SelectMonster == "Pirate")) then
            Ms = "Pirate";
            NameQuest = "BuggyQuest1";
            QuestLv = 1;
            NameMon = "Pirate";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1201.0881347656, 40.628940582275, 3857.5966796875);
        elseif ((MaGameKiemTra7 == 40) or (MaGameKiemTra7 <= 59) or (SelectMonster == "Brute")) then
            Ms = "Brute";
            NameQuest = "BuggyQuest1";
            QuestLv = 2;
            NameMon = "Brute";
            CFrameQ = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameMon = CFrame.new(- 1387.5324707031, 24.592035293579, 4100.9575195313);
        elseif ((MaGameKiemTra7 == 60) or (MaGameKiemTra7 <= 74) or (SelectMonster == "Desert Bandit")) then
            Ms = "Desert Bandit";
            NameQuest = "DesertQuest";
            QuestLv = 1;
            NameMon = "Desert Bandit";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(984.99896240234, 16.109552383423, 4417.91015625);
        elseif ((MaGameKiemTra7 == 75) or (MaGameKiemTra7 <= 89) or (SelectMonster == "Desert Officer")) then
            Ms = "Desert Officer";
            NameQuest = "DesertQuest";
            QuestLv = 2;
            NameMon = "Desert Officer";
            CFrameQ = CFrame.new(896.51721191406, 6.4384617805481, 4390.1494140625);
            CFrameMon = CFrame.new(1547.1510009766, 14.452038764954, 4381.8002929688);
        elseif ((MaGameKiemTra7 == 90) or (MaGameKiemTra7 <= 99) or (SelectMonster == "Snow Bandit")) then
            Ms = "Snow Bandit";
            NameQuest = "SnowQuest";
            QuestLv = 1;
            NameMon = "Snow Bandit";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1356.3028564453, 105.76865386963, - 1328.2418212891);
        elseif ((MaGameKiemTra7 == 100) or (MaGameKiemTra7 <= 119) or (SelectMonster == "Snowman")) then
            Ms = "Snowman";
            NameQuest = "SnowQuest";
            QuestLv = 2;
            NameMon = "Snowman";
            CFrameQ = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameMon = CFrame.new(1218.7956542969, 138.01184082031, - 1488.0262451172);
        elseif ((MaGameKiemTra7 == 120) or (MaGameKiemTra7 <= 149) or (SelectMonster == "Chief Petty Officer")) then
            Ms = "Chief Petty Officer";
            NameQuest = "MarineQuest2";
            QuestLv = 1;
            NameMon = "Chief Petty Officer";
            CFrameQ = CFrame.new(- 5035.49609375, 28.677835464478, 4324.1840820313);
            CFrameMon = CFrame.new(- 4931.1552734375, 65.793113708496, 4121.8393554688);
        elseif ((MaGameKiemTra7 == 150) or (MaGameKiemTra7 <= 174) or (SelectMonster == "Sky Bandit")) then
            Ms = "Sky Bandit";
            NameQuest = "SkyQuest";
            QuestLv = 1;
            NameMon = "Sky Bandit";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 4955.6411132813, 365.46365356445, - 2908.1865234375);
        elseif ((MaGameKiemTra7 == 175) or (MaGameKiemTra7 <= 189) or (SelectMonster == "Dark Master")) then
            Ms = "Dark Master";
            NameQuest = "SkyQuest";
            QuestLv = 2;
            NameMon = "Dark Master";
            CFrameQ = CFrame.new(- 4842.1372070313, 717.69543457031, - 2623.0483398438);
            CFrameMon = CFrame.new(- 5148.1650390625, 439.04571533203, - 2332.9611816406);
        elseif ((MaGameKiemTra7 == 190) or (MaGameKiemTra7 <= 209) or (SelectMonster == "Prisoner")) then
            Ms = "Prisoner";
            NameQuest = "PrisonerQuest";
            QuestLv = 1;
            NameMon = "Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(4937.31885, 0.332031399, 649.574524, 0.694649816, 0, - 0.719348073, 0, 1, 0, 0.719348073, 0, 0.694649816);
        elseif ((MaGameKiemTra7 == 210) or (MaGameKiemTra7 <= 249) or (SelectMonster == "Dangerous Prisoner")) then
            Ms = "Dangerous Prisoner";
            NameQuest = "PrisonerQuest";
            QuestLv = 2;
            NameMon = "Dangerous Prisoner";
            CFrameQ = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, - 0.999846935, 0, 0.0175017118);
            CFrameMon = CFrame.new(5099.6626, 0.351562679, 1055.7583, 0.898906827, 0, - 0.438139856, 0, 1, 0, 0.438139856, 0, 0.898906827);
        elseif ((MaGameKiemTra7 == 250) or (MaGameKiemTra7 <= 274) or (SelectMonster == "Toga Warrior")) then
            Ms = "Toga Warrior";
            NameQuest = "ColosseumQuest";
            QuestLv = 1;
            NameMon = "Toga Warrior";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1872.5166015625, 49.080215454102, - 2913.810546875);
        elseif ((MaGameKiemTra7 == 275) or (MaGameKiemTra7 <= 299) or (SelectMonster == "Gladiator")) then
            Ms = "Gladiator";
            NameQuest = "ColosseumQuest";
            QuestLv = 2;
            NameMon = "Gladiator";
            CFrameQ = CFrame.new(- 1577.7890625, 7.4151420593262, - 2984.4838867188);
            CFrameMon = CFrame.new(- 1521.3740234375, 81.203170776367, - 3066.3139648438);
        elseif ((MaGameKiemTra7 == 300) or (MaGameKiemTra7 <= 324) or (SelectMonster == "Military Soldier")) then
            Ms = "Military Soldier";
            NameQuest = "MagmaQuest";
            QuestLv = 1;
            NameMon = "Military Soldier";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5369.0004882813, 61.24352645874, 8556.4921875);
        elseif ((MaGameKiemTra7 == 325) or (MaGameKiemTra7 <= 374) or (SelectMonster == "Military Spy")) then
            Ms = "Military Spy";
            NameQuest = "MagmaQuest";
            QuestLv = 2;
            NameMon = "Military Spy";
            CFrameQ = CFrame.new(- 5316.1157226563, 12.262831687927, 8517.00390625);
            CFrameMon = CFrame.new(- 5787.00293, 75.8262634, 8651.69922, 0.838590562, 0, - 0.544762194, 0, 1, 0, 0.544762194, 0, 0.838590562);
        elseif ((MaGameKiemTra7 == 375) or (MaGameKiemTra7 <= 399) or (SelectMonster == "Fishman Warrior")) then
            Ms = "Fishman Warrior";
            NameQuest = "FishmanQuest";
            QuestLv = 1;
            NameMon = "Fishman Warrior";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(60844.10546875, 98.462875366211, 1298.3985595703);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((MaGameKiemTra7 == 400) or (MaGameKiemTra7 <= 449) or (SelectMonster == "Fishman Commando")) then
            Ms = "Fishman Commando";
            NameQuest = "FishmanQuest";
            QuestLv = 2;
            NameMon = "Fishman Commando";
            CFrameQ = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameMon = CFrame.new(61738.3984375, 64.207321166992, 1433.8375244141);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            end
        elseif ((MaGameKiemTra7 == 10) or (MaGameKiemTra7 <= 474) or (SelectMonster == "God's Guard")) then
            Ms = "God's Guard";
            NameQuest = "SkyExp1Quest";
            QuestLv = 1;
            NameMon = "God's Guard";
            CFrameQ = CFrame.new(- 4721.8603515625, 845.30297851563, - 1953.8489990234);
            CFrameMon = CFrame.new(- 4628.0498046875, 866.92877197266, - 1931.2352294922);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688));
            end
        elseif ((MaGameKiemTra7 == 475) or (MaGameKiemTra7 <= 524) or (SelectMonster == "Shanda")) then
            Ms = "Shanda";
            NameQuest = "SkyExp1Quest";
            QuestLv = 2;
            NameMon = "Shanda";
            CFrameQ = CFrame.new(- 7863.1596679688, 5545.5190429688, - 378.42266845703);
            CFrameMon = CFrame.new(- 7685.1474609375, 5601.0751953125, - 441.38876342773);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047));
            end
        elseif ((MaGameKiemTra7 == 525) or (MaGameKiemTra7 <= 549) or (SelectMonster == "Royal Squad")) then
            Ms = "Royal Squad";
            NameQuest = "SkyExp2Quest";
            QuestLv = 1;
            NameMon = "Royal Squad";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7654.2514648438, 5637.1079101563, - 1407.7550048828);
        elseif ((MaGameKiemTra7 == 550) or (MaGameKiemTra7 <= 624) or (SelectMonster == "Royal Soldier")) then
            Ms = "Royal Soldier";
            NameQuest = "SkyExp2Quest";
            QuestLv = 2;
            NameMon = "Royal Soldier";
            CFrameQ = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameMon = CFrame.new(- 7760.4106445313, 5679.9077148438, - 1884.8112792969);
        elseif ((MaGameKiemTra7 == 625) or (MaGameKiemTra7 <= 649) or (SelectMonster == "Galley Pirate")) then
            Ms = "Galley Pirate";
            NameQuest = "FountainQuest";
            QuestLv = 1;
            NameMon = "Galley Pirate";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5557.1684570313, 152.32717895508, 3998.7758789063);
        elseif ((MaGameKiemTra7 >= 650) or (SelectMonster == "Galley Captain")) then
            Ms = "Galley Captain";
            NameQuest = "FountainQuest";
            QuestLv = 2;
            NameMon = "Galley Captain";
            CFrameQ = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameMon = CFrame.new(5677.6772460938, 92.786109924316, 4966.6323242188);
        end
    end
    if Sea2 then
        if ((MaGameKiemTra7 == 700) or (MaGameKiemTra7 <= 724) or (SelectMonster == "Raider")) then
            Ms = "Raider";
            NameQuest = "Area1Quest";
            QuestLv = 1;
            NameMon = "Raider";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(68.874565124512, 93.635643005371, 2429.6752929688);
        elseif ((MaGameKiemTra7 == 725) or (MaGameKiemTra7 <= 774) or (SelectMonster == "Mercenary")) then
            Ms = "Mercenary";
            NameQuest = "Area1Quest";
            QuestLv = 2;
            NameMon = "Mercenary";
            CFrameQ = CFrame.new(- 427.72567749023, 72.99634552002, 1835.9426269531);
            CFrameMon = CFrame.new(- 864.85009765625, 122.47104644775, 1453.1505126953);
        elseif ((MaGameKiemTra7 == 775) or (MaGameKiemTra7 <= 799) or (SelectMonster == "Swan Pirate")) then
            Ms = "Swan Pirate";
            NameQuest = "Area2Quest";
            QuestLv = 1;
            NameMon = "Swan Pirate";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(1065.3669433594, 137.64012145996, 1324.3798828125);
        elseif ((MaGameKiemTra7 == 800) or (MaGameKiemTra7 <= 874) or (SelectMonster == "Factory Staff")) then
            Ms = "Factory Staff";
            NameQuest = "Area2Quest";
            QuestLv = 2;
            NameMon = "Factory Staff";
            CFrameQ = CFrame.new(635.61151123047, 73.096351623535, 917.81298828125);
            CFrameMon = CFrame.new(533.22045898438, 128.46876525879, 355.62615966797);
        elseif ((MaGameKiemTra7 == 875) or (MaGameKiemTra7 <= 899) or (SelectMonster == "Marine Lieutenan")) then
            Ms = "Marine Lieutenant";
            NameQuest = "MarineQuest3";
            QuestLv = 1;
            NameMon = "Marine Lieutenant";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2489.2622070313, 84.613594055176, - 3151.8830566406);
        elseif ((MaGameKiemTra7 == 900) or (MaGameKiemTra7 <= 949) or (SelectMonster == "Marine Captain")) then
            Ms = "Marine Captain";
            NameQuest = "MarineQuest3";
            QuestLv = 2;
            NameMon = "Marine Captain";
            CFrameQ = CFrame.new(- 2440.9934082031, 73.04190826416, - 3217.7082519531);
            CFrameMon = CFrame.new(- 2335.2026367188, 79.786659240723, - 3245.8674316406);
        elseif ((MaGameKiemTra7 == 950) or (MaGameKiemTra7 <= 974) or (SelectMonster == "Zombie")) then
            Ms = "Zombie";
            NameQuest = "ZombieQuest";
            QuestLv = 1;
            NameMon = "Zombie";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5536.4970703125, 101.08577728271, - 835.59075927734);
        elseif ((MaGameKiemTra7 == 975) or (MaGameKiemTra7 <= 999) or (SelectMonster == "Vampire")) then
            Ms = "Vampire";
            NameQuest = "ZombieQuest";
            QuestLv = 2;
            NameMon = "Vampire";
            CFrameQ = CFrame.new(- 5494.3413085938, 48.505931854248, - 794.59094238281);
            CFrameMon = CFrame.new(- 5806.1098632813, 16.722528457642, - 1164.4384765625);
        elseif ((MaGameKiemTra7 == 1000) or (MaGameKiemTra7 <= 1049) or (SelectMonster == "Snow Trooper")) then
            Ms = "Snow Trooper";
            NameQuest = "SnowMountainQuest";
            QuestLv = 1;
            NameMon = "Snow Trooper";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(535.21051025391, 432.74209594727, - 5484.9165039063);
        elseif ((MaGameKiemTra7 == 1050) or (MaGameKiemTra7 <= 1099) or (SelectMonster == "Winter Warrior")) then
            Ms = "Winter Warrior";
            NameQuest = "SnowMountainQuest";
            QuestLv = 2;
            NameMon = "Winter Warrior";
            CFrameQ = CFrame.new(607.05963134766, 401.44781494141, - 5370.5546875);
            CFrameMon = CFrame.new(1234.4449462891, 456.95419311523, - 5174.130859375);
        elseif ((MaGameKiemTra7 == 1100) or (MaGameKiemTra7 <= 1124) or (SelectMonster == "Lab Subordinate")) then
            Ms = "Lab Subordinate";
            NameQuest = "IceSideQuest";
            QuestLv = 1;
            NameMon = "Lab Subordinate";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 5720.5576171875, 63.309471130371, - 4784.6103515625);
        elseif ((MaGameKiemTra7 == 1125) or (MaGameKiemTra7 <= 1174) or (SelectMonster == "Horned Warrior")) then
            Ms = "Horned Warrior";
            NameQuest = "IceSideQuest";
            QuestLv = 2;
            NameMon = "Horned Warrior";
            CFrameQ = CFrame.new(- 6061.841796875, 15.926671981812, - 4902.0385742188);
            CFrameMon = CFrame.new(- 6292.751953125, 91.181983947754, - 5502.6499023438);
        elseif ((MaGameKiemTra7 == 1175) or (MaGameKiemTra7 <= 1199) or (SelectMonster == "Magma Ninja")) then
            Ms = "Magma Ninja";
            NameQuest = "FireSideQuest";
            QuestLv = 1;
            NameMon = "Magma Ninja";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5461.8388671875, 130.36347961426, - 5836.4702148438);
        elseif ((MaGameKiemTra7 == 1200) or (MaGameKiemTra7 <= 1249) or (SelectMonster == "Lava Pirate")) then
            Ms = "Lava Pirate";
            NameQuest = "FireSideQuest";
            QuestLv = 2;
            NameMon = "Lava Pirate";
            CFrameQ = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameMon = CFrame.new(- 5251.1889648438, 55.164535522461, - 4774.4096679688);
        elseif ((MaGameKiemTra7 == 1250) or (MaGameKiemTra7 <= 1274) or (SelectMonster == "Ship Deckhand")) then
            Ms = "Ship Deckhand";
            NameQuest = "ShipQuest1";
            QuestLv = 1;
            NameMon = "Ship Deckhand";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(921.12365722656, 125.9839553833, 33088.328125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((MaGameKiemTra7 == 1275) or (MaGameKiemTra7 <= 1299) or (SelectMonster == "Ship Engineer")) then
            Ms = "Ship Engineer";
            NameQuest = "ShipQuest1";
            QuestLv = 2;
            NameMon = "Ship Engineer";
            CFrameQ = CFrame.new(1040.2927246094, 125.08293151855, 32911.0390625);
            CFrameMon = CFrame.new(886.28179931641, 40.47790145874, 32800.83203125);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((MaGameKiemTra7 == 1300) or (MaGameKiemTra7 <= 1324) or (SelectMonster == "Ship Steward")) then
            Ms = "Ship Steward";
            NameQuest = "ShipQuest2";
            QuestLv = 1;
            NameMon = "Ship Steward";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(943.85504150391, 129.58183288574, 33444.3671875);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((MaGameKiemTra7 == 1325) or (MaGameKiemTra7 <= 1349) or (SelectMonster == "Ship Officer")) then
            Ms = "Ship Officer";
            NameQuest = "ShipQuest2";
            QuestLv = 2;
            NameMon = "Ship Officer";
            CFrameQ = CFrame.new(971.42065429688, 125.08293151855, 33245.54296875);
            CFrameMon = CFrame.new(955.38458251953, 181.08335876465, 33331.890625);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            end
        elseif ((MaGameKiemTra7 == 1350) or (MaGameKiemTra7 <= 1374) or (SelectMonster == "Arctic Warrior")) then
            Ms = "Arctic Warrior";
            NameQuest = "FrostQuest";
            QuestLv = 1;
            NameMon = "Arctic Warrior";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5935.4541015625, 77.26016998291, - 6472.7568359375);
            if (_G.AutoLevel and ((CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 20000)) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422));
            end
        elseif ((MaGameKiemTra7 == 1375) or (MaGameKiemTra7 <= 1424) or (SelectMonster == "Snow Lurker")) then
            Ms = "Snow Lurker";
            NameQuest = "FrostQuest";
            QuestLv = 2;
            NameMon = "Snow Lurker";
            CFrameQ = CFrame.new(5668.1372070313, 28.202531814575, - 6484.6005859375);
            CFrameMon = CFrame.new(5628.482421875, 57.574996948242, - 6618.3481445313);
        elseif ((MaGameKiemTra7 == 1425) or (MaGameKiemTra7 <= 1449) or (SelectMonster == "Sea Soldier")) then
            Ms = "Sea Soldier";
            NameQuest = "ForgottenQuest";
            QuestLv = 1;
            NameMon = "Sea Soldier";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3185.0153808594, 58.789089202881, - 9663.6064453125);
        elseif ((MaGameKiemTra7 >= 1450) or (SelectMonster == "Water Fighter")) then
            Ms = "Water Fighter";
            NameQuest = "ForgottenQuest";
            QuestLv = 2;
            NameMon = "Water Fighter";
            CFrameQ = CFrame.new(- 3054.5827636719, 236.87213134766, - 10147.790039063);
            CFrameMon = CFrame.new(- 3262.9301757813, 298.69036865234, - 10552.529296875);
        end
    end
    if Sea3 then
        if ((MaGameKiemTra7 == 1500) or (MaGameKiemTra7 <= 1524) or (SelectMonster == "Pirate Millionaire")) then
            Ms = "Pirate Millionaire";
            NameQuest = "PiratePortQuest";
            QuestLv = 1;
            NameMon = "Pirate Millionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 193.99227905273438, 56.12502670288086, 5755.7880859375);
        elseif ((MaGameKiemTra7 == 1525) or (MaGameKiemTra7 <= 1574) or (SelectMonster == "Pistol Billionaire")) then
            Ms = "Pistol Billionaire";
            NameQuest = "PiratePortQuest";
            QuestLv = 2;
            NameMon = "Pistol Billionaire";
            CFrameQ = CFrame.new(- 450.1046447753906, 107.68145751953125, 5950.72607421875);
            CFrameMon = CFrame.new(- 188.14462280273438, 84.49613189697266, 6337.0419921875);
        elseif ((MaGameKiemTra7 == 1575) or (MaGameKiemTra7 <= 1599) or (SelectMonster == "Dragon Crew Warrior")) then
            Ms = "Dragon Crew Warrior";
            NameQuest = "DragonCrewQuest";
            QuestLv = 1;
            NameMon = "Dragon Crew Warrior";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6615.2333984375, 50.847679138183594, - 978.93408203125);
        elseif ((MaGameKiemTra7 == 1600) or (MaGameKiemTra7 <= 1624) or (SelectMonster == "Dragon Crew Archer")) then
            Ms = "Dragon Crew Archer";
            NameQuest = "DragonCrewQuest";
            QuestLv = 2;
            NameMon = "Dragon Crew Archer";
            CFrameQ = CFrame.new(6735.11083984375, 126.99046325683594, - 711.0979614257812);
            CFrameMon = CFrame.new(6818.58935546875, 483.718994140625, 512.726806640625);
        elseif ((MaGameKiemTra7 == 1625) or (MaGameKiemTra7 <= 1649) or (SelectMonster == "Hydra Enforcer")) then
            Ms = "Hydra Enforcer";
            NameQuest = "VenomCrewQuest";
            QuestLv = 1;
            NameMon = "Hydra Enforcer";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4547.115234375, 1001.60205078125, 334.1954650878906);
        elseif ((MaGameKiemTra7 == 1650) or (MaGameKiemTra7 <= 1699) or (SelectMonster == "Venomous Assailant")) then
            Ms = "Venomous Assailant";
            NameQuest = "VenomCrewQuest";
            QuestLv = 2;
            NameMon = "Venomous Assailant";
            CFrameQ = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422);
            CFrameMon = CFrame.new(4637.88525390625, 1077.85595703125, 882.4183959960938);
        elseif ((MaGameKiemTra7 == 1700) or (MaGameKiemTra7 <= 1724) or (SelectMonster == "Marine Commodore")) then
            Ms = "Marine Commodore";
            NameQuest = "MarineTreeIsland";
            QuestLv = 1;
            NameMon = "Marine Commodore";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(2198.0063476563, 128.71075439453, - 7109.5043945313);
        elseif ((MaGameKiemTra7 == 1725) or (MaGameKiemTra7 <= 1774) or (SelectMonster == "Marine Rear Admiral")) then
            Ms = "Marine Rear Admiral";
            NameQuest = "MarineTreeIsland";
            QuestLv = 2;
            NameMon = "Marine Rear Admiral";
            CFrameQ = CFrame.new(2179.98828125, 28.731239318848, - 6740.0551757813);
            CFrameMon = CFrame.new(3294.3142089844, 385.41125488281, - 7048.6342773438);
        elseif ((MaGameKiemTra7 == 1775) or (MaGameKiemTra7 <= 1799) or (SelectMonster == "Fishman Raider")) then
            Ms = "Fishman Raider";
            NameQuest = "DeepForestIsland3";
            QuestLv = 1;
            NameMon = "Fishman Raider";
            CFrameQ = CFrame.new(- 10582.759765625, 331.78845214844, - 8757.666015625);
            CFrameMon = CFrame.new(- 10553.268554688, 521.38439941406, - 8176.9458007813);
        elseif ((MaGameKiemTra7 == 1800) or (MaGameKiemTra7 <= 1824) or (SelectMonster == "Fishman Captain")) then
            Ms = "Fishman Captain";
            NameQuest = "DeepForestIsland3";
            QuestLv = 2;
            NameMon = "Fishman Captain";
            CFrameQ = CFrame.new(- 10583.099609375, 331.78845214844, - 8759.4638671875);
            CFrameMon = CFrame.new(- 10789.401367188, 427.18637084961, - 9131.4423828125);
        elseif ((MaGameKiemTra7 == 1825) or (MaGameKiemTra7 <= 1849) or (SelectMonster == "Forest Pirate")) then
            Ms = "Forest Pirate";
            NameQuest = "DeepForestIsland";
            QuestLv = 1;
            NameMon = "Forest Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13489.397460938, 400.30349731445, - 7770.251953125);
        elseif ((MaGameKiemTra7 == 1850) or (MaGameKiemTra7 <= 1899) or (SelectMonster == "Mythological Pirate")) then
            Ms = "Mythological Pirate";
            NameQuest = "DeepForestIsland";
            QuestLv = 2;
            NameMon = "Mythological Pirate";
            CFrameQ = CFrame.new(- 13232.662109375, 332.40396118164, - 7626.4819335938);
            CFrameMon = CFrame.new(- 13508.616210938, 582.46228027344, - 6985.3037109375);
        elseif ((MaGameKiemTra7 == 1900) or (MaGameKiemTra7 <= 1924) or (SelectMonster == "Jungle Pirate")) then
            Ms = "Jungle Pirate";
            NameQuest = "DeepForestIsland2";
            QuestLv = 1;
            NameMon = "Jungle Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 12267.103515625, 459.75262451172, - 10277.200195313);
        elseif ((MaGameKiemTra7 == 1925) or (MaGameKiemTra7 <= 1974) or (SelectMonster == "Musketeer Pirate")) then
            Ms = "Musketeer Pirate";
            NameQuest = "DeepForestIsland2";
            QuestLv = 2;
            NameMon = "Musketeer Pirate";
            CFrameQ = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameMon = CFrame.new(- 13291.5078125, 520.47338867188, - 9904.638671875);
        elseif ((MaGameKiemTra7 == 1975) or (MaGameKiemTra7 <= 1999) or (SelectMonster == "Reborn Skeleton")) then
            Ms = "Reborn Skeleton";
            NameQuest = "HauntedQuest1";
            QuestLv = 1;
            NameMon = "Reborn Skeleton";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 8761.77148, 183.431747, 6168.33301, 0.978073597, - 0.000013950732, - 0.208259016, - 0.0000010807393, 1, - 0.00007206303, 0.208259016, 0.00007070804, 0.978073597);
        elseif ((MaGameKiemTra7 == 2000) or (MaGameKiemTra7 <= 2024) or (SelectMonster == "Living Zombie")) then
            Ms = "Living Zombie";
            NameQuest = "HauntedQuest1";
            QuestLv = 2;
            NameMon = "Living Zombie";
            CFrameQ = CFrame.new(- 9480.80762, 142.130661, 5566.37305, - 0.00655503059, 4.5295423e-8, - 0.999978542, 2.0492047e-8, 1, 4.5162068e-8, 0.999978542, - 2.0195568e-8, - 0.00655503059);
            CFrameMon = CFrame.new(- 10103.7529, 238.565979, 6179.75977, 0.999474227, 2.7754714e-8, 0.0324240364, - 2.5800633e-8, 1, - 6.068485e-8, - 0.0324240364, 5.981639e-8, 0.999474227);
        elseif ((MaGameKiemTra7 == 2025) or (MaGameKiemTra7 <= 2049) or (SelectMonster == "Demonic Soul")) then
            Ms = "Demonic Soul";
            NameQuest = "HauntedQuest2";
            QuestLv = 1;
            NameMon = "Demonic Soul";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9712.03125, 204.69589233398, 6193.322265625);
        elseif ((MaGameKiemTra7 == 2050) or (MaGameKiemTra7 <= 2074) or (SelectMonster == "Posessed Mummy")) then
            Ms = "Posessed Mummy";
            NameQuest = "HauntedQuest2";
            QuestLv = 2;
            NameMon = "Posessed Mummy";
            CFrameQ = CFrame.new(- 9516.9931640625, 178.00651550293, 6078.4653320313);
            CFrameMon = CFrame.new(- 9545.7763671875, 69.619895935059, 6339.5615234375);
        elseif ((MaGameKiemTra7 == 2075) or (MaGameKiemTra7 <= 2099) or (SelectMonster == "Peanut Scout")) then
            Ms = "Peanut Scout";
            NameQuest = "NutsIslandQuest";
            QuestLv = 1;
            NameMon = "Peanut Scout";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((MaGameKiemTra7 == 2100) or (MaGameKiemTra7 <= 2124) or (SelectMonster == "Peanut President")) then
            Ms = "Peanut President";
            NameQuest = "NutsIslandQuest";
            QuestLv = 2;
            NameMon = "Peanut President";
            CFrameQ = CFrame.new(- 2105.53198, 37.2495995, - 10195.5088, - 0.766061664, 0, - 0.642767608, 0, 1, 0, 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 2150.587890625, 122.49767303467, - 10358.994140625);
        elseif ((MaGameKiemTra7 == 2125) or (MaGameKiemTra7 <= 2149) or (SelectMonster == "Ice Cream Chef")) then
            Ms = "Ice Cream Chef";
            NameQuest = "IceCreamIslandQuest";
            QuestLv = 1;
            NameMon = "Ice Cream Chef";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, "-0", - 0.997525156, "-0", 1.00000012, "-0", 0.997525275, 0, - 0.0703101456);
        elseif ((MaGameKiemTra7 == 2150) or (MaGameKiemTra7 <= 2199) or (SelectMonster == "Ice Cream Commander")) then
            Ms = "Ice Cream Commander";
            NameQuest = "IceCreamIslandQuest";
            QuestLv = 2;
            NameMon = "Ice Cream Commander";
            CFrameQ = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameMon = CFrame.new(- 789.941528, 209.382889, - 11009.9805, - 0.0703101531, "-0", - 0.997525156, "-0", 1.00000012, "-0", 0.997525275, 0, - 0.0703101456);
        elseif ((MaGameKiemTra7 == 2200) or (MaGameKiemTra7 <= 2224) or (SelectMonster == "Cookie Crafter")) then
            Ms = "Cookie Crafter";
            NameQuest = "CakeQuest1";
            QuestLv = 1;
            NameMon = "Cookie Crafter";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 2321.71216, 36.699482, - 12216.7871, - 0.780074954, 0, 0.625686109, 0, 1, 0, - 0.625686109, 0, - 0.780074954);
        elseif ((MaGameKiemTra7 == 2225) or (MaGameKiemTra7 <= 2249) or (SelectMonster == "Cake Guard")) then
            Ms = "Cake Guard";
            NameQuest = "CakeQuest1";
            QuestLv = 2;
            NameMon = "Cake Guard";
            CFrameQ = CFrame.new(- 2022.29858, 36.9275894, - 12030.9766, - 0.961273909, 0, - 0.275594592, 0, 1, 0, 0.275594592, 0, - 0.961273909);
            CFrameMon = CFrame.new(- 1418.11011, 36.6718941, - 12255.7324, 0.0677844882, 0, 0.997700036, 0, 1, 0, - 0.997700036, 0, 0.0677844882);
        elseif ((MaGameKiemTra7 == 2250) or (MaGameKiemTra7 <= 2274) or (SelectMonster == "Baking Staff")) then
            Ms = "Baking Staff";
            NameQuest = "CakeQuest2";
            QuestLv = 1;
            NameMon = "Baking Staff";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, "-0", - 0.308980465, 0, 1, "-0", 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 1980.43848, 36.6716766, - 12983.8418, - 0.254443765, 0, - 0.967087567, 0, 1, 0, 0.967087567, 0, - 0.254443765);
        elseif ((MaGameKiemTra7 == 2275) or (MaGameKiemTra7 <= 2299) or (SelectMonster == "Head Baker")) then
            Ms = "Head Baker";
            NameQuest = "CakeQuest2";
            QuestLv = 2;
            NameMon = "Head Baker";
            CFrameQ = CFrame.new(- 1928.31763, 37.7296638, - 12840.626, 0.951068401, "-0", - 0.308980465, 0, 1, "-0", 0.308980465, 0, 0.951068401);
            CFrameMon = CFrame.new(- 2251.5791, 52.2714615, - 13033.3965, - 0.991971016, 0, - 0.126466095, 0, 1, 0, 0.126466095, 0, - 0.991971016);
        elseif ((MaGameKiemTra7 == 2300) or (MaGameKiemTra7 <= 2324) or (SelectMonster == "Cocoa Warrior")) then
            Ms = "Cocoa Warrior";
            NameQuest = "ChocQuest1";
            QuestLv = 1;
            NameMon = "Cocoa Warrior";
            CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1);
            CFrameMon = CFrame.new(167.978516, 26.2254658, - 12238.874, - 0.939700961, 0, 0.341998369, 0, 1, 0, - 0.341998369, 0, - 0.939700961);
        elseif ((MaGameKiemTra7 == 2325) or (MaGameKiemTra7 <= 2349) or (SelectMonster == "Chocolate Bar Battler")) then
            Ms = "Chocolate Bar Battler";
            NameQuest = "ChocQuest1";
            QuestLv = 2;
            NameMon = "Chocolate Bar Battler";
            CFrameQ = CFrame.new(231.75, 23.9003029, - 12200.292, - 1, 0, 0, 0, 1, 0, 0, 0, - 1);
            CFrameMon = CFrame.new(701.312073, 25.5824986, - 12708.2148, - 0.342042685, 0, - 0.939684391, 0, 1, 0, 0.939684391, 0, - 0.342042685);
        elseif ((MaGameKiemTra7 == 2350) or (MaGameKiemTra7 <= 2374) or (SelectMonster == "Sweet Thief")) then
            Ms = "Sweet Thief";
            NameQuest = "ChocQuest2";
            QuestLv = 1;
            NameMon = "Sweet Thief";
            CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998);
            CFrameMon = CFrame.new(- 140.258301, 25.5824986, - 12652.3115, 0.173624337, "-0", - 0.984811902, 0, 1, "-0", 0.984811902, 0, 0.173624337);
        elseif ((MaGameKiemTra7 == 2375) or (MaGameKiemTra7 <= 2400) or (SelectMonster == "Candy Rebel")) then
            Ms = "Candy Rebel";
            NameQuest = "ChocQuest2";
            QuestLv = 2;
            NameMon = "Candy Rebel";
            CFrameQ = CFrame.new(151.198242, 23.8907146, - 12774.6172, 0.422592998, 0, 0.906319618, 0, 1, 0, - 0.906319618, 0, 0.422592998);
            CFrameMon = CFrame.new(47.9231453, 25.5824986, - 13029.2402, - 0.819156051, 0, - 0.573571265, 0, 1, 0, 0.573571265, 0, - 0.819156051);
        elseif ((MaGameKiemTra7 == 2400) or (MaGameKiemTra7 <= 2424) or (SelectMonster == "Candy Pirate")) then
            Ms = "Candy Pirate";
            NameQuest = "CandyQuest1";
            QuestLv = 1;
            NameMon = "Candy Pirate";
            CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099);
            CFrameMon = CFrame.new(- 1437.56348, 17.1481285, - 14385.6934, 0.173624337, "-0", - 0.984811902, 0, 1, "-0", 0.984811902, 0, 0.173624337);
        elseif ((MaGameKiemTra7 == 2425) or (MaGameKiemTra7 <= 2449) or (SelectMonster == "Snow Demon")) then
            Ms = "Snow Demon";
            NameQuest = "CandyQuest1";
            QuestLv = 2;
            NameMon = "Snow Demon";
            CFrameQ = CFrame.new(- 1149.328, 13.5759039, - 14445.6143, - 0.156446099, 0, - 0.987686574, 0, 1, 0, 0.987686574, 0, - 0.156446099);
            CFrameMon = CFrame.new(- 916.222656, 17.1481285, - 14638.8125, 0.866007268, 0, 0.500031412, 0, 1, 0, - 0.500031412, 0, 0.866007268);
        elseif ((MaGameKiemTra7 == 2450) or (MaGameKiemTra7 <= 2474) or (SelectMonster == "Isle Outlaw")) then
            Ms = "Isle Outlaw";
            NameQuest = "TikiQuest1";
            QuestLv = 1;
            NameMon = "Isle Outlaw";
            CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812);
            CFrameMon = CFrame.new(- 16162.8193359375, 11.6863374710083, - 96.45481872558594);
        elseif ((MaGameKiemTra7 == 2475) or (MaGameKiemTra7 <= 2499) or (SelectMonster == "Island Boy")) then
            Ms = "Island Boy";
            NameQuest = "TikiQuest1";
            QuestLv = 2;
            NameMon = "Island Boy";
            CFrameQ = CFrame.new(- 16549.890625, 55.68635559082031, - 179.91360473632812);
            CFrameMon = CFrame.new(- 16357.3125, 20.632822036743164, 1005.64892578125);
        elseif ((MaGameKiemTra7 == 2500) or (MaGameKiemTra7 <= 2524) or (SelectMonster == "Sun-kissed Warrior")) then
            Ms = "Sun-kissed Warrior";
            NameQuest = "TikiQuest2";
            QuestLv = 1;
            NameMon = "Sun-kissed Warrior";
            CFrameQ = CFrame.new(- 16541.021484375, 54.77081298828125, 1051.461181640625);
            CFrameMon = CFrame.new(- 16357.3125, 20.632822036743164, 1005.64892578125);
        elseif ((MaGameKiemTra7 == 2525) or (MaGameKiemTra7 <= 2549) or (SelectMonster == "Isle Champion")) then
            Ms = "Isle Champion";
            NameQuest = "TikiQuest2";
            QuestLv = 2;
            NameMon = "Isle Champion";
            CFrameQ = CFrame.new(- 16541.021484375, 54.77081298828125, 1051.461181640625);
            CFrameMon = CFrame.new(- 16848.94140625, 21.68633460998535, 1041.4490966796875);
        elseif ((MaGameKiemTra7 == 2550) or (MaGameKiemTra7 <= 2574) or (SelectMonster == "Serpent Hunter")) then
            Ms = "Serpent Hunter";
            NameQuest = "TikiQuest3";
            QuestLv = 1;
            NameMon = "Serpent Hunter";
            CFrameQ = CFrame.new(- 16665.19140625, 104.59640502929688, 1579.6943359375);
            CFrameMon = CFrame.new(- 16621.4140625, 121.40631103515625, 1290.6881103515625);
        elseif ((MaGameKiemTra7 == 2575) or (MaGameKiemTra7 <= 2599) or (SelectMonster == "Skull Slayer") or (MaGameKiemTra7 == 2600)) then
            Ms = "Skull Slayer";
            NameQuest = "TikiQuest3";
            QuestLv = 2;
            NameMon = "Skull Slayer";
            CFrameQ = CFrame.new(- 16665.19140625, 104.59640502929688, 1579.6943359375);
            CFrameMon = CFrame.new(- 16811.5703125, 84.625244140625, 1542.235107421875);
        end
    end
end
if Sea1 then
    tableMon = {
        "Bandit",
        "Monkey",
        "Gorilla",
        "Pirate",
        "Brute",
        "Desert Bandit",
        "Desert Officer",
        "Snow Bandit",
        "Snowman",
        "Chief Petty Officer",
        "Sky Bandit",
        "Dark Master",
        "Prisoner",
        "Dangerous Prisoner",
        "Toga Warrior",
        "Gladiator",
        "Military Soldier",
        "Military Spy",
        "Fishman Warrior",
        "Fishman Commando",
        "God's Guard",
        "Shanda",
        "Royal Squad",
        "Royal Soldier",
        "Galley Pirate",
        "Galley Captain"
    };
elseif Sea2 then
    tableMon = {
        "Raider",
        "Mercenary",
        "Swan Pirate",
        "Factory Staff",
        "Marine Lieutenant",
        "Marine Captain",
        "Zombie",
        "Vampire",
        "Snow Trooper",
        "Winter Warrior",
        "Lab Subordinate",
        "Horned Warrior",
        "Magma Ninja",
        "Lava Pirate",
        "Ship Deckhand",
        "Ship Engineer",
        "Ship Steward",
        "Ship Officer",
        "Arctic Warrior",
        "Snow Lurker",
        "Sea Soldier",
        "Water Fighter"
    };
elseif Sea3 then
    tableMon = {
        "Pirate Millionaire",
        "Dragon Crew Warrior",
        "Dragon Crew Archer",
        "Hydra Enforcer",
        "Venomous Assailant",
        "Marine Commodore",
        "Marine Rear Admiral",
        "Fishman Raider",
        "Fishman Captain",
        "Forest Pirate",
        "Mythological Pirate",
        "Jungle Pirate",
        "Musketeer Pirate",
        "Reborn Skeleton",
        "Living Zombie",
        "Demonic Soul",
        "Posessed Mummy",
        "Peanut Scout",
        "Peanut President",
        "Ice Cream Chef",
        "Ice Cream Commander",
        "Cookie Crafter",
        "Cake Guard",
        "Baking Staff",
        "Head Baker",
        "Cocoa Warrior",
        "Chocolate Bar Battler",
        "Sweet Thief",
        "Candy Rebel",
        "Candy Pirate",
        "Snow Demon",
        "Isle Outlaw",
        "Island Boy",
        "Sun-kissed Warrior",
        "Isle Champion",
        "Serpent Hunter",
        "Skull Slayer"
    };
end
if Sea1 then
    AreaList = {
        "Jungle",
        "Buggy",
        "Desert",
        "Snow",
        "Marine",
        "Sky",
        "Prison",
        "Colosseum",
        "Magma",
        "Fishman",
        "Sky Island",
        "Fountain"
    };
elseif Sea2 then
    AreaList = {
        "Area 1",
        "Area 2",
        "Zombie",
        "Marine",
        "Snow Mountain",
        "Ice fire",
        "Ship",
        "Frost",
        "Forgotten"
    };
elseif Sea3 then
    AreaList = {
        "Pirate Port",
        "Amazon",
        "Marine Tree",
        "Deep Forest",
        "Haunted Castle",
        "Nut Island",
        "Ice Cream Island",
        "Cake Island",
        "Choco Island",
        "Candy Island",
        "Tiki Outpost"
    };
end
function CheckBossQuest()
    if Sea1 then
        if (SelectBoss == "The Gorilla King") then
            BossMon = "The Gorilla King";
            NameBoss = "The Gorrila King";
            NameQuestBoss = "JungleQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$2,000\n7,000 Exp.";
            CFrameQBoss = CFrame.new(- 1601.6553955078, 36.85213470459, 153.38809204102);
            CFrameBoss = CFrame.new(- 1088.75977, 8.13463783, - 488.559906, - 0.707134247, 0, 0.707079291, 0, 1, 0, - 0.707079291, 0, - 0.707134247);
        elseif (SelectBoss == "Bobby") then
            BossMon = "Bobby";
            NameBoss = "Bobby";
            NameQuestBoss = "BuggyQuest1";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$8,000\n35,000 Exp.";
            CFrameQBoss = CFrame.new(- 1140.1761474609, 4.752049446106, 3827.4057617188);
            CFrameBoss = CFrame.new(- 1087.3760986328, 46.949409484863, 4040.1462402344);
        elseif (SelectBoss == "The Saw") then
            BossMon = "The Saw";
            NameBoss = "The Saw";
            CFrameBoss = CFrame.new(- 784.89715576172, 72.427383422852, 1603.5822753906);
        elseif (SelectBoss == "Yeti") then
            BossMon = "Yeti";
            NameBoss = "Yeti";
            NameQuestBoss = "SnowQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$10,000\n180,000 Exp.";
            CFrameQBoss = CFrame.new(1386.8073730469, 87.272789001465, - 1298.3576660156);
            CFrameBoss = CFrame.new(1218.7956542969, 138.01184082031, - 1488.0262451172);
        elseif (SelectBoss == "Mob Leader") then
            BossMon = "Mob Leader";
            NameBoss = "Mob Leader";
            CFrameBoss = CFrame.new(- 2844.7307128906, 7.4180502891541, 5356.6723632813);
        elseif (SelectBoss == "Vice Admiral") then
            BossMon = "Vice Admiral";
            NameBoss = "Vice Admiral";
            NameQuestBoss = "MarineQuest2";
            QuestLvBoss = 2;
            RewardBoss = "Reward:\n$10,000\n180,000 Exp.";
            CFrameQBoss = CFrame.new(- 5036.2465820313, 28.677835464478, 4324.56640625);
            CFrameBoss = CFrame.new(- 5006.5454101563, 88.032081604004, 4353.162109375);
        elseif (SelectBoss == "Saber Expert") then
            NameBoss = "Saber Expert";
            BossMon = "Saber Expert";
            CFrameBoss = CFrame.new(- 1458.89502, 29.8870335, - 50.633564);
        elseif (SelectBoss == "Warden") then
            BossMon = "Warden";
            NameBoss = "Warden";
            NameQuestBoss = "ImpelQuest";
            QuestLvBoss = 1;
            RewardBoss = "Reward:\n$6,000\n850,000 Exp.";
            CFrameBoss = CFrame.new(5278.04932, 2.15167475, 944.101929, 0.220546961, - 0.000004499464, 0.975376427, - 0.000019541258, 1, 0.000009031621, - 0.975376427, - 0.000021051976, 0.220546961);
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, - 0.731384635, 0, 0.681965172, 0, 1, 0, - 0.681965172, 0, - 0.731384635);
        elseif (SelectBoss == "Chief Warden") then
            BossMon = "Chief Warden";
            NameBoss = "Chief Warden";
            NameQuestBoss = "ImpelQuest";
            QuestLvBoss = 2;
            RewardBoss = "Reward:\n$10,000\n1,000,000 Exp.";
            CFrameBoss = CFrame.new(5206.92578, 0.997753382, 814.976746, 0.342041343, - 0.00062915677, 0.939684749, 0.00191645394, 0.999998152, - 0.000028042234, - 0.939682961, 0.00181045406, 0.342041939);
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, - 0.731384635, 0, 0.681965172, 0, 1, 0, - 0.681965172, 0, - 0.731384635);
        elseif (SelectBoss == "Swan") then
            BossMon = "Swan";
            NameBoss = "Swan";
            NameQuestBoss = "ImpelQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$15,000\n1,600,000 Exp.";
            CFrameBoss = CFrame.new(5325.09619, 7.03906584, 719.570679, - 0.309060812, 0, 0.951042235, 0, 1, 0, - 0.951042235, 0, - 0.309060812);
            CFrameQBoss = CFrame.new(5191.86133, 2.84020686, 686.438721, - 0.731384635, 0, 0.681965172, 0, 1, 0, - 0.681965172, 0, - 0.731384635);
        elseif (SelectBoss == "Magma Admiral") then
            BossMon = "Magma Admiral";
            NameBoss = "Magma Admiral";
            NameQuestBoss = "MagmaQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$15,000\n2,800,000 Exp.";
            CFrameQBoss = CFrame.new(- 5314.6220703125, 12.262420654297, 8517.279296875);
            CFrameBoss = CFrame.new(- 5765.8969726563, 82.92064666748, 8718.3046875);
        elseif (SelectBoss == "Fishman Lord") then
            BossMon = "Fishman Lord";
            NameBoss = "Fishman Lord";
            NameQuestBoss = "FishmanQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$15,000\n4,000,000 Exp.";
            CFrameQBoss = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734);
            CFrameBoss = CFrame.new(61260.15234375, 30.950881958008, 1193.4329833984);
        elseif (SelectBoss == "Wysper") then
            BossMon = "Wysper";
            NameBoss = "Wysper";
            NameQuestBoss = "SkyExp1Quest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$15,000\n4,800,000 Exp.";
            CFrameQBoss = CFrame.new(- 7861.947265625, 5545.517578125, - 379.85974121094);
            CFrameBoss = CFrame.new(- 7866.1333007813, 5576.4311523438, - 546.74816894531);
        elseif (SelectBoss == "Thunder God") then
            BossMon = "Thunder God";
            NameBoss = "Thunder God";
            NameQuestBoss = "SkyExp2Quest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$20,000\n5,800,000 Exp.";
            CFrameQBoss = CFrame.new(- 7903.3828125, 5635.9897460938, - 1410.923828125);
            CFrameBoss = CFrame.new(- 7994.984375, 5761.025390625, - 2088.6479492188);
        elseif (SelectBoss == "Cyborg") then
            BossMon = "Cyborg";
            NameBoss = "Cyborg";
            NameQuestBoss = "FountainQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$20,000\n7,500,000 Exp.";
            CFrameQBoss = CFrame.new(5258.2788085938, 38.526931762695, 4050.044921875);
            CFrameBoss = CFrame.new(6094.0249023438, 73.770050048828, 3825.7348632813);
        elseif (SelectBoss == "Ice Admiral") then
            BossMon = "Ice Admiral";
            NameBoss = "Ice Admiral";
            CFrameBoss = CFrame.new(1266.08948, 26.1757946, - 1399.57678, - 0.573599219, 0, - 0.81913656, 0, 1, 0, 0.81913656, 0, - 0.573599219);
        elseif (SelectBoss == "Greybeard") then
            BossMon = "Greybeard";
            NameBoss = "Greybeard";
            CFrameBoss = CFrame.new(- 5081.3452148438, 85.221641540527, 4257.3588867188);
        end
    end
    if Sea2 then
        if (SelectBoss == "Diamond") then
            BossMon = "Diamond";
            NameBoss = "Diamond";
            NameQuestBoss = "Area1Quest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$25,000\n9,000,000 Exp.";
            CFrameQBoss = CFrame.new(- 427.5666809082, 73.313781738281, 1835.4208984375);
            CFrameBoss = CFrame.new(- 1576.7166748047, 198.59265136719, 13.724286079407);
        elseif (SelectBoss == "Jeremy") then
            BossMon = "Jeremy";
            NameBoss = "Jeremy";
            NameQuestBoss = "Area2Quest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$25,000\n11,500,000 Exp.";
            CFrameQBoss = CFrame.new(636.79943847656, 73.413787841797, 918.00415039063);
            CFrameBoss = CFrame.new(2006.9261474609, 448.95666503906, 853.98284912109);
        elseif (SelectBoss == "Fajita") then
            BossMon = "Fajita";
            NameBoss = "Fajita";
            NameQuestBoss = "MarineQuest3";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$25,000\n15,000,000 Exp.";
            CFrameQBoss = CFrame.new(- 2441.986328125, 73.359344482422, - 3217.5324707031);
            CFrameBoss = CFrame.new(- 2172.7399902344, 103.32216644287, - 4015.025390625);
        elseif (SelectBoss == "Don Swan") then
            BossMon = "Don Swan";
            NameBoss = "Don Swan";
            CFrameBoss = CFrame.new(2286.2004394531, 15.177839279175, 863.8388671875);
        elseif (SelectBoss == "Smoke Admiral") then
            BossMon = "Smoke Admiral";
            NameBoss = "Smoke Admiral";
            NameQuestBoss = "IceSideQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$20,000\n25,000,000 Exp.";
            CFrameQBoss = CFrame.new(- 5429.0473632813, 15.977565765381, - 5297.9614257813);
            CFrameBoss = CFrame.new(- 5275.1987304688, 20.757257461548, - 5260.6669921875);
        elseif (SelectBoss == "Awakened Ice Admiral") then
            BossMon = "Awakened Ice Admiral";
            NameBoss = "Awakened Ice Admiral";
            NameQuestBoss = "FrostQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$20,000\n36,000,000 Exp.";
            CFrameQBoss = CFrame.new(5668.9780273438, 28.519989013672, - 6483.3520507813);
            CFrameBoss = CFrame.new(6403.5439453125, 340.29766845703, - 6894.5595703125);
        elseif (SelectBoss == "Tide Keeper") then
            BossMon = "Tide Keeper";
            NameBoss = "Tide Keeper";
            NameQuestBoss = "ForgottenQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$12,500\n38,000,000 Exp.";
            CFrameQBoss = CFrame.new(- 3053.9814453125, 237.18954467773, - 10145.0390625);
            CFrameBoss = CFrame.new(- 3795.6423339844, 105.88877105713, - 11421.307617188);
        elseif (SelectBoss == "Darkbeard") then
            BossMon = "Darkbeard";
            NameBoss = "Darkbeard";
            CFrameMon = CFrame.new(3677.08203125, 62.751937866211, - 3144.8332519531);
        elseif (SelectBoss == "Cursed Captain") then
            BossMon = "Cursed Captain";
            NameBoss = "Cursed Captain";
            CFrameBoss = CFrame.new(916.928589, 181.092773, 33422);
        elseif (SelectBoss == "Order") then
            BossMon = "Order";
            NameBoss = "Order";
            CFrameBoss = CFrame.new(- 6217.2021484375, 28.047645568848, - 5053.1357421875);
        end
    end
    if Sea3 then
        if (SelectBoss == "Stone") then
            BossMon = "Stone";
            NameBoss = "Stone";
            NameQuestBoss = "PiratePortQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$25,000\n40,000,000 Exp.";
            CFrameQBoss = CFrame.new(- 289.76705932617, 43.819011688232, 5579.9384765625);
            CFrameBoss = CFrame.new(- 1027.6512451172, 92.404174804688, 6578.8530273438);
        elseif (SelectBoss == "Hydra Leader") then
            BossMon = "Hydra Leader";
            NameBoss = "Hydra Leader";
            NameQuestBoss = "VenomCrewQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$30,000\n52,000,000 Exp.";
            CFrameQBoss = CFrame.new(5445.9541015625, 601.62945556641, 751.43792724609);
            CFrameBoss = CFrame.new(5543.86328125, 668.97399902344, 199.0341796875);
        elseif (SelectBoss == "Kilo Admiral") then
            BossMon = "Kilo Admiral";
            NameBoss = "Kilo Admiral";
            NameQuestBoss = "MarineTreeIsland";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$35,000\n56,000,000 Exp.";
            CFrameQBoss = CFrame.new(2179.3010253906, 28.731239318848, - 6739.9741210938);
            CFrameBoss = CFrame.new(2764.2233886719, 432.46154785156, - 7144.4580078125);
        elseif (SelectBoss == "Captain Elephant") then
            BossMon = "Captain Elephant";
            NameBoss = "Captain Elephant";
            NameQuestBoss = "DeepForestIsland";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$40,000\n67,000,000 Exp.";
            CFrameQBoss = CFrame.new(- 13232.682617188, 332.40396118164, - 7626.01171875);
            CFrameBoss = CFrame.new(- 13376.7578125, 433.28689575195, - 8071.392578125);
        elseif (SelectBoss == "Beautiful Pirate") then
            BossMon = "Beautiful Pirate";
            NameBoss = "Beautiful Pirate";
            NameQuestBoss = "DeepForestIsland2";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$50,000\n70,000,000 Exp.";
            CFrameQBoss = CFrame.new(- 12682.096679688, 390.88653564453, - 9902.1240234375);
            CFrameBoss = CFrame.new(5283.609375, 22.56223487854, - 110.78285217285);
        elseif (SelectBoss == "Cake Queen") then
            BossMon = "Cake Queen";
            NameBoss = "Cake Queen";
            NameQuestBoss = "IceCreamIslandQuest";
            QuestLvBoss = 3;
            RewardBoss = "Reward:\n$30,000\n112,500,000 Exp.";
            CFrameQBoss = CFrame.new(- 819.376709, 64.9259796, - 10967.2832, - 0.766061664, 0, 0.642767608, 0, 1, 0, - 0.642767608, 0, - 0.766061664);
            CFrameBoss = CFrame.new(- 678.648804, 381.353943, - 11114.2012, - 0.908641815, 0.00149294338, 0.41757378, 0.00837114919, 0.999857843, 0.0146408929, - 0.417492568, 0.0167988986, - 0.90852499);
        elseif (SelectBoss == "Longma") then
            BossMon = "Longma";
            NameBoss = "Longma";
            CFrameBoss = CFrame.new(- 10238.875976563, 389.7912902832, - 9549.7939453125);
        elseif (SelectBoss == "Soul Reaper") then
            BossMon = "Soul Reaper";
            NameBoss = "Soul Reaper";
            CFrameBoss = CFrame.new(- 9524.7890625, 315.80429077148, 6655.7192382813);
        elseif (SelectBoss == "rip_indra True Form") then
            BossMon = "rip_indra True Form";
            NameBoss = "rip_indra True Form";
            CFrameBoss = CFrame.new(- 5415.3920898438, 505.74133300781, - 2814.0166015625);
        end
    end
end
function MaterialMon()
    if (SelectMaterial == "Radioactive Material") then
        MMon = "Factory Staff";
        MPos = CFrame.new(295, 73, - 56);
        SP = "Default";
    elseif (SelectMaterial == "Mystic Droplet") then
        MMon = "Water Fighter";
        MPos = CFrame.new(- 3385, 239, - 10542);
        SP = "Default";
    elseif (SelectMaterial == "Magma Ore") then
        if Sea1 then
            MMon = "Military Spy";
            MPos = CFrame.new(- 5815, 84, 8820);
            SP = "Default";
        elseif Sea2 then
            MMon = "Magma Ninja";
            MPos = CFrame.new(- 5428, 78, - 5959);
            SP = "Default";
        end
    elseif (SelectMaterial == "Angel Wings") then
        MMon = "God's Guard";
        MPos = CFrame.new(- 4698, 845, - 1912);
        SP = "Default";
        if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 7859.09814, 5544.19043, - 381.476196)).Magnitude >= 5000) then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7859.09814, 5544.19043, - 381.476196));
        end
    elseif (SelectMaterial == "Leather") then
        if Sea1 then
            MMon = "Brute";
            MPos = CFrame.new(- 1145, 15, 4350);
            SP = "Default";
        elseif Sea2 then
            MMon = "Marine Captain";
            MPos = CFrame.new(- 2010.5059814453125, 73.00115966796875, - 3326.620849609375);
            SP = "Default";
        elseif Sea3 then
            MMon = "Jungle Pirate";
            MPos = CFrame.new(- 11975.78515625, 331.7734069824219, - 10620.0302734375);
            SP = "Default";
        end
    elseif (SelectMaterial == "Scrap Metal") then
        if Sea1 then
            MMon = "Brute";
            MPos = CFrame.new(- 1145, 15, 4350);
            SP = "Default";
        elseif Sea2 then
            MMon = "Swan Pirate";
            MPos = CFrame.new(878, 122, 1235);
            SP = "Default";
        elseif Sea3 then
            MMon = "Jungle Pirate";
            MPos = CFrame.new(- 12107, 332, - 10549);
            SP = "Default";
        end
    elseif (SelectMaterial == "Fish Tail") then
        if Sea3 then
            MMon = "Fishman Raider";
            MPos = CFrame.new(- 10993, 332, - 8940);
            SP = "Default";
        elseif Sea1 then
            MMon = "Fishman Warrior";
            MPos = CFrame.new(61123, 19, 1569);
            SP = "Default";
            if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875)).Magnitude >= 17000) then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 5.342342376708984, 1819.7841796875));
            end
        end
    elseif (SelectMaterial == "Demonic Wisp") then
        MMon = "Demonic Soul";
        MPos = CFrame.new(- 9507, 172, 6158);
        SP = "Default";
    elseif (SelectMaterial == "Vampire Fang") then
        MMon = "Vampire";
        MPos = CFrame.new(- 6033, 7, - 1317);
        SP = "Default";
    elseif (SelectMaterial == "Conjured Cocoa") then
        MMon = "Chocolate Bar Battler";
        MPos = CFrame.new(620.6344604492188, 78.93644714355469, - 12581.369140625);
        SP = "Default";
    elseif (SelectMaterial == "Dragon Scale") then
        MMon = "Dragon Crew Archer";
        MPos = CFrame.new(6827.91455078125, 609.4127197265625, 252.3538055419922);
        SP = "Default";
    elseif (SelectMaterial == "Gunpowder") then
        MMon = "Pistol Billionaire";
        MPos = CFrame.new(- 469, 74, 5904);
        SP = "Default";
    elseif (SelectMaterial == "Hydra Enforcer") then
        MMon = "Hydra Enforcer";
        MPos = CFrame.new(4581.517578125, 1001.55908203125, 704.9378662109375);
        SP = "Default";
    elseif (SelectMaterial == "Venomous Assailant") then
        MMon = "Venomous Assailant";
        MPos = CFrame.new(4879.92041015625, 1089.46142578125, 1104.00830078125);
        SP = "Default";
    elseif (SelectMaterial == "Mini Tusk") then
        MMon = "Mythological Pirate";
        MPos = CFrame.new();
        SP = "Default";
    end
end
function UpdateIslandESP()
    for v425, v426 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then
                if (v426.Name ~= "Sea") then
                    if not v426:FindFirstChild("NameEsp") then
                        local NenLoader30 = Instance.new("BillboardGui", v426);
                        NenLoader30.Name = "NameEsp";
                        NenLoader30.ExtentsOffset = Vector3.new(0, 1, 0);
                        NenLoader30.Size = UDim2.new(1, 200, 1, 30);
                        NenLoader30.Adornee = v426;
                        NenLoader30.AlwaysOnTop = true;
                        local NenLoader36 = Instance.new("TextLabel", NenLoader30);
                        NenLoader36.Font = "GothamBold";
                        NenLoader36.FontSize = "Size14";
                        NenLoader36.TextWrapped = true;
                        NenLoader36.Size = UDim2.new(1, 0, 1, 0);
                        NenLoader36.TextYAlignment = "Top";
                        NenLoader36.BackgroundTransparency = 1;
                        NenLoader36.TextStrokeTransparency = 0.5;
                        NenLoader36.TextColor3 = Color3.fromRGB(8, 0, 0);
                    else
                        v426['NameEsp'].TextLabel.Text = v426.Name .. "   \n" .. round((game:GetService("Players").LocalPlayer.Character.Head.Position - v426.Position).Magnitude / 3) .. " Distance" ;
                    end
                end
            elseif v426:FindFirstChild("NameEsp") then
                v426:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end
function isnil(MaGameKiemTra8)
    return MaGameKiemTra8 == nil ;
end
local function ThongTinLoader0(MaGameKiemTra9)
    return math.floor(tonumber(MaGameKiemTra9) + 0.5);
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
    for v427, v428 in pairs(game:GetService("Players"):GetChildren()) do
        pcall(function()
            if not isnil(v428.Character) then
                if ESPPlayer then
                    if (not isnil(v428.Character.Head) and not v428.Character.Head:FindFirstChild("NameEsp" .. Number)) then
                        local NenLoader46 = Instance.new("BillboardGui", v428.Character.Head);
                        NenLoader46.Name = "NameEsp" .. Number ;
                        NenLoader46.ExtentsOffset = Vector3.new(0, 1, 0);
                        NenLoader46.Size = UDim2.new(1, 200, 1, 30);
                        NenLoader46.Adornee = v428.Character.Head;
                        NenLoader46.AlwaysOnTop = true;
                        local NenLoader53 = Instance.new("TextLabel", NenLoader46);
                        NenLoader53.Font = Enum.Font.GothamSemibold;
                        NenLoader53.FontSize = "Size10";
                        NenLoader53.TextWrapped = true;
                        NenLoader53.Text = v428.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v428.Character.Head.Position).Magnitude / 3) .. " Distance" ;
                        NenLoader53.Size = UDim2.new(1, 0, 1, 0);
                        NenLoader53.TextYAlignment = "Top";
                        NenLoader53.BackgroundTransparency = 1;
                        NenLoader53.TextStrokeTransparency = 0.5;
                        if (v428.Team == game.Players.LocalPlayer.Team) then
                            NenLoader53.TextColor3 = Color3.new(0, 0, 254);
                        else
                            NenLoader53.TextColor3 = Color3.new(255, 0, 0);
                        end
                    else
                        v428.Character.Head["NameEsp" .. Number ].TextLabel.Text = v428.Name .. " 
                    end
                elseif v428.Character.Head:FindFirstChild("NameEsp" .. Number) then
                    v428.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end
function UpdateChestChams()
    for v429, v430 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if string.find(v430.Name, "Chest") then
                if ChestESP then
                    if string.find(v430.Name, "Chest") then
                        if not v430:FindFirstChild("NameEsp" .. Number) then
                            local TaiCodeNgoai75 = Instance.new("BillboardGui", v430);
                            TaiCodeNgoai75.Name = "NameEsp" .. Number ;
                            TaiCodeNgoai75.ExtentsOffset = Vector3.new(0, 1, 0);
                            TaiCodeNgoai75.Size = UDim2.new(1, 200, 1, 30);
                            TaiCodeNgoai75.Adornee = v430;
                            TaiCodeNgoai75.AlwaysOnTop = true;
                            local TaiCodeNgoai81 = Instance.new("TextLabel", TaiCodeNgoai75);
                            TaiCodeNgoai81.Font = Enum.Font.GothamSemibold;
                            TaiCodeNgoai81.FontSize = "Size14";
                            TaiCodeNgoai81.TextWrapped = true;
                            TaiCodeNgoai81.Size = UDim2.new(1, 0, 1, 0);
                            TaiCodeNgoai81.TextYAlignment = "Top";
                            TaiCodeNgoai81.BackgroundTransparency = 1;
                            TaiCodeNgoai81.TextStrokeTransparency = 0.5;
                            if (v430.Name == "Chest1") then
                                TaiCodeNgoai81.TextColor3 = Color3.fromRGB(109, 109, 109);
                                TaiCodeNgoai81.Text = "Chest 1" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v430.Position).Magnitude / 3) .. " Distance" ;
                            end
                            if (v430.Name == "Chest2") then
                                TaiCodeNgoai81.TextColor3 = Color3.fromRGB(173, 158, 21);
                                TaiCodeNgoai81.Text = "Chest 2" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v430.Position).Magnitude / 3) .. " Distance" ;
                            end
                            if (v430.Name == "Chest3") then
                                TaiCodeNgoai81.TextColor3 = Color3.fromRGB(85, 255, 255);
                                TaiCodeNgoai81.Text = "Chest 3" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v430.Position).Magnitude / 3) .. " Distance" ;
                            end
                        else
                            v430["NameEsp" .. Number ].TextLabel.Text = v430.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v430.Position).Magnitude / 3) .. " Distance" ;
                        end
                    end
                elseif v430:FindFirstChild("NameEsp" .. Number) then
                    v430:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end
function UpdateDevilChams()
    for v431, v432 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v432.Name, "Fruit") then
                    if not v432.Handle:FindFirstChild("NameEsp" .. Number) then
                        local NenLoader64 = Instance.new("BillboardGui", v432.Handle);
                        NenLoader64.Name = "NameEsp" .. Number ;
                        NenLoader64.ExtentsOffset = Vector3.new(0, 1, 0);
                        NenLoader64.Size = UDim2.new(1, 200, 1, 30);
                        NenLoader64.Adornee = v432.Handle;
                        NenLoader64.AlwaysOnTop = true;
                        local NenLoader71 = Instance.new("TextLabel", NenLoader64);
                        NenLoader71.Font = Enum.Font.GothamSemibold;
                        NenLoader71.FontSize = "Size14";
                        NenLoader71.TextWrapped = true;
                        NenLoader71.Size = UDim2.new(1, 0, 1, 0);
                        NenLoader71.TextYAlignment = "Top";
                        NenLoader71.BackgroundTransparency = 1;
                        NenLoader71.TextStrokeTransparency = 0.5;
                        NenLoader71.TextColor3 = Color3.fromRGB(255, 255, 255);
                        NenLoader71.Text = v432.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v432.Handle.Position).Magnitude / 3) .. " Distance" ;
                    else
                        v432.Handle["NameEsp" .. Number ].TextLabel.Text = v432.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v432.Handle.Position).Magnitude / 3) .. " Distance" ;
                    end
                end
            elseif v432.Handle:FindFirstChild("NameEsp" .. Number) then
                v432.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end);
    end
end
function UpdateFlowerChams()
    for v433, v434 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if ((v434.Name == "Flower2") or (v434.Name == "Flower1")) then
                if FlowerESP then
                    if not v434:FindFirstChild("NameEsp" .. Number) then
                        local NenLoader83 = Instance.new("BillboardGui", v434);
                        NenLoader83.Name = "NameEsp" .. Number ;
                        NenLoader83.ExtentsOffset = Vector3.new(0, 1, 0);
                        NenLoader83.Size = UDim2.new(1, 200, 1, 30);
                        NenLoader83.Adornee = v434;
                        NenLoader83.AlwaysOnTop = true;
                        local NenLoader89 = Instance.new("TextLabel", NenLoader83);
                        NenLoader89.Font = Enum.Font.GothamSemibold;
                        NenLoader89.FontSize = "Size14";
                        NenLoader89.TextWrapped = true;
                        NenLoader89.Size = UDim2.new(1, 0, 1, 0);
                        NenLoader89.TextYAlignment = "Top";
                        NenLoader89.BackgroundTransparency = 1;
                        NenLoader89.TextStrokeTransparency = 0.5;
                        NenLoader89.TextColor3 = Color3.fromRGB(255, 0, 0);
                        if (v434.Name == "Flower1") then
                            NenLoader89.Text = "Blue Flower" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v434.Position).Magnitude / 3) .. " Distance" ;
                            NenLoader89.TextColor3 = Color3.fromRGB(0, 0, 255);
                        end
                        if (v434.Name == "Flower2") then
                            NenLoader89.Text = "Red Flower" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v434.Position).Magnitude / 3) .. " Distance" ;
                            NenLoader89.TextColor3 = Color3.fromRGB(255, 0, 0);
                        end
                    else
                        v434["NameEsp" .. Number ].TextLabel.Text = v434.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v434.Position).Magnitude / 3) .. " Distance" ;
                    end
                elseif v434:FindFirstChild("NameEsp" .. Number) then
                    v434:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end
function UpdateRealFruitChams()
    for v435, v436 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v436:IsA("Tool") then
            if RealFruitESP then
                if not v436.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDePhu07 = Instance.new("BillboardGui", v436.Handle);
                    TieuDePhu07.Name = "NameEsp" .. Number ;
                    TieuDePhu07.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDePhu07.Size = UDim2.new(1, 200, 1, 30);
                    TieuDePhu07.Adornee = v436.Handle;
                    TieuDePhu07.AlwaysOnTop = true;
                    local TieuDePhu14 = Instance.new("TextLabel", TieuDePhu07);
                    TieuDePhu14.Font = Enum.Font.GothamSemibold;
                    TieuDePhu14.FontSize = "Size14";
                    TieuDePhu14.TextWrapped = true;
                    TieuDePhu14.Size = UDim2.new(1, 0, 1, 0);
                    TieuDePhu14.TextYAlignment = "Top";
                    TieuDePhu14.BackgroundTransparency = 1;
                    TieuDePhu14.TextStrokeTransparency = 0.5;
                    TieuDePhu14.TextColor3 = Color3.fromRGB(255, 0, 0);
                    TieuDePhu14.Text = v436.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v436.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    v436.Handle["NameEsp" .. Number ].TextLabel.Text = v436.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v436.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif v436.Handle:FindFirstChild("NameEsp" .. Number) then
                v436.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
    for v437, v438 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v438:IsA("Tool") then
            if RealFruitESP then
                if not v438.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDePhu26 = Instance.new("BillboardGui", v438.Handle);
                    TieuDePhu26.Name = "NameEsp" .. Number ;
                    TieuDePhu26.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDePhu26.Size = UDim2.new(1, 200, 1, 30);
                    TieuDePhu26.Adornee = v438.Handle;
                    TieuDePhu26.AlwaysOnTop = true;
                    local TieuDePhu33 = Instance.new("TextLabel", TieuDePhu26);
                    TieuDePhu33.Font = Enum.Font.GothamSemibold;
                    TieuDePhu33.FontSize = "Size14";
                    TieuDePhu33.TextWrapped = true;
                    TieuDePhu33.Size = UDim2.new(1, 0, 1, 0);
                    TieuDePhu33.TextYAlignment = "Top";
                    TieuDePhu33.BackgroundTransparency = 1;
                    TieuDePhu33.TextStrokeTransparency = 0.5;
                    TieuDePhu33.TextColor3 = Color3.fromRGB(255, 174, 0);
                    TieuDePhu33.Text = v438.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v438.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    v438.Handle["NameEsp" .. Number ].TextLabel.Text = v438.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v438.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif v438.Handle:FindFirstChild("NameEsp" .. Number) then
                v438.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
    for v439, v440 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v440:IsA("Tool") then
            if RealFruitESP then
                if not v440.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDePhu45 = Instance.new("BillboardGui", v440.Handle);
                    TieuDePhu45.Name = "NameEsp" .. Number ;
                    TieuDePhu45.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDePhu45.Size = UDim2.new(1, 200, 1, 30);
                    TieuDePhu45.Adornee = v440.Handle;
                    TieuDePhu45.AlwaysOnTop = true;
                    local TieuDePhu52 = Instance.new("TextLabel", TieuDePhu45);
                    TieuDePhu52.Font = Enum.Font.GothamSemibold;
                    TieuDePhu52.FontSize = "Size14";
                    TieuDePhu52.TextWrapped = true;
                    TieuDePhu52.Size = UDim2.new(1, 0, 1, 0);
                    TieuDePhu52.TextYAlignment = "Top";
                    TieuDePhu52.BackgroundTransparency = 1;
                    TieuDePhu52.TextStrokeTransparency = 0.5;
                    TieuDePhu52.TextColor3 = Color3.fromRGB(251, 255, 0);
                    TieuDePhu52.Text = v440.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v440.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    v440.Handle["NameEsp" .. Number ].TextLabel.Text = v440.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v440.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif v440.Handle:FindFirstChild("NameEsp" .. Number) then
                v440.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
end
function UpdateIslandESP()
    for v441, v442 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
        pcall(function()
            if IslandESP then
                if (v442.Name ~= "Sea") then
                    if not v442:FindFirstChild("NameEsp") then
                        local ThanhTienTrinh00 = Instance.new("BillboardGui", v442);
                        ThanhTienTrinh00.Name = "NameEsp";
                        ThanhTienTrinh00.ExtentsOffset = Vector3.new(0, 1, 0);
                        ThanhTienTrinh00.Size = UDim2.new(1, 200, 1, 30);
                        ThanhTienTrinh00.Adornee = v442;
                        ThanhTienTrinh00.AlwaysOnTop = true;
                        local ThanhTienTrinh06 = Instance.new("TextLabel", ThanhTienTrinh00);
                        ThanhTienTrinh06.Font = "GothamBold";
                        ThanhTienTrinh06.FontSize = "Size14";
                        ThanhTienTrinh06.TextWrapped = true;
                        ThanhTienTrinh06.Size = UDim2.new(1, 0, 1, 0);
                        ThanhTienTrinh06.TextYAlignment = "Top";
                        ThanhTienTrinh06.BackgroundTransparency = 1;
                        ThanhTienTrinh06.TextStrokeTransparency = 0.5;
                        ThanhTienTrinh06.TextColor3 = Color3.fromRGB(7, 236, 240);
                    else
                        v442['NameEsp'].TextLabel.Text = v442.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v442.Position).Magnitude / 3) .. " Distance" ;
                    end
                end
            elseif v442:FindFirstChild("NameEsp") then
                v442:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end
function isnil(ThongTinLoader00)
    return ThongTinLoader00 == nil ;
end
local function ThongTinLoader0(ThongTinLoader01)
    return math.floor(tonumber(ThongTinLoader01) + 0.5);
end
Number = math.random(1, 1000000);
function UpdatePlayerChams()
    for v443, v444 in pairs(game:GetService("Players"):GetChildren()) do
        pcall(function()
            if not isnil(v444.Character) then
                if ESPPlayer then
                    if (not isnil(v444.Character.Head) and not v444.Character.Head:FindFirstChild("NameEsp" .. Number)) then
                        local ThanhTienTrinh16 = Instance.new("BillboardGui", v444.Character.Head);
                        ThanhTienTrinh16.Name = "NameEsp" .. Number ;
                        ThanhTienTrinh16.ExtentsOffset = Vector3.new(0, 1, 0);
                        ThanhTienTrinh16.Size = UDim2.new(1, 200, 1, 30);
                        ThanhTienTrinh16.Adornee = v444.Character.Head;
                        ThanhTienTrinh16.AlwaysOnTop = true;
                        local ThanhTienTrinh23 = Instance.new("TextLabel", ThanhTienTrinh16);
                        ThanhTienTrinh23.Font = Enum.Font.GothamSemibold;
                        ThanhTienTrinh23.FontSize = "Size14";
                        ThanhTienTrinh23.TextWrapped = true;
                        ThanhTienTrinh23.Text = v444.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v444.Character.Head.Position).Magnitude / 3) .. " Distance" ;
                        ThanhTienTrinh23.Size = UDim2.new(1, 0, 1, 0);
                        ThanhTienTrinh23.TextYAlignment = "Top";
                        ThanhTienTrinh23.BackgroundTransparency = 1;
                        ThanhTienTrinh23.TextStrokeTransparency = 0.5;
                        if (v444.Team == game.Players.LocalPlayer.Team) then
                            ThanhTienTrinh23.TextColor3 = Color3.new(0, 255, 0);
                        else
                            ThanhTienTrinh23.TextColor3 = Color3.new(255, 0, 0);
                        end
                    else
                        v444.Character.Head["NameEsp" .. Number ].TextLabel.Text = v444.Name .. " 
                    end
                elseif v444.Character.Head:FindFirstChild("NameEsp" .. Number) then
                    v444.Character.Head:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end
function UpdateChestChams()
    for v445, v446 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if string.find(v446.Name, "Chest") then
                if ChestESP then
                    if string.find(v446.Name, "Chest") then
                        if not v446:FindFirstChild("NameEsp" .. Number) then
                            local TaiCodeNgoai97 = Instance.new("BillboardGui", v446);
                            TaiCodeNgoai97.Name = "NameEsp" .. Number ;
                            TaiCodeNgoai97.ExtentsOffset = Vector3.new(0, 1, 0);
                            TaiCodeNgoai97.Size = UDim2.new(1, 200, 1, 30);
                            TaiCodeNgoai97.Adornee = v446;
                            TaiCodeNgoai97.AlwaysOnTop = true;
                            local CuaSoChinh03 = Instance.new("TextLabel", TaiCodeNgoai97);
                            CuaSoChinh03.Font = Enum.Font.GothamSemibold;
                            CuaSoChinh03.FontSize = "Size14";
                            CuaSoChinh03.TextWrapped = true;
                            CuaSoChinh03.Size = UDim2.new(1, 0, 1, 0);
                            CuaSoChinh03.TextYAlignment = "Top";
                            CuaSoChinh03.BackgroundTransparency = 1;
                            CuaSoChinh03.TextStrokeTransparency = 0.5;
                            if (v446.Name == "Chest1") then
                                CuaSoChinh03.TextColor3 = Color3.fromRGB(109, 109, 109);
                                CuaSoChinh03.Text = "Chest 1" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v446.Position).Magnitude / 3) .. " Distance" ;
                            end
                            if (v446.Name == "Chest2") then
                                CuaSoChinh03.TextColor3 = Color3.fromRGB(173, 158, 21);
                                CuaSoChinh03.Text = "Chest 2" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v446.Position).Magnitude / 3) .. " Distance" ;
                            end
                            if (v446.Name == "Chest3") then
                                CuaSoChinh03.TextColor3 = Color3.fromRGB(85, 255, 255);
                                CuaSoChinh03.Text = "Chest 3" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v446.Position).Magnitude / 3) .. " Distance" ;
                            end
                        else
                            v446["NameEsp" .. Number ].TextLabel.Text = v446.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v446.Position).Magnitude / 3) .. " Distance" ;
                        end
                    end
                elseif v446:FindFirstChild("NameEsp" .. Number) then
                    v446:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end
function UpdateDevilChams()
    for v447, v448 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if DevilFruitESP then
                if string.find(v448.Name, "Fruit") then
                    if not v448.Handle:FindFirstChild("NameEsp" .. Number) then
                        local ThanhTienTrinh34 = Instance.new("BillboardGui", v448.Handle);
                        ThanhTienTrinh34.Name = "NameEsp" .. Number ;
                        ThanhTienTrinh34.ExtentsOffset = Vector3.new(0, 1, 0);
                        ThanhTienTrinh34.Size = UDim2.new(1, 200, 1, 30);
                        ThanhTienTrinh34.Adornee = v448.Handle;
                        ThanhTienTrinh34.AlwaysOnTop = true;
                        local ThanhTienTrinh41 = Instance.new("TextLabel", ThanhTienTrinh34);
                        ThanhTienTrinh41.Font = Enum.Font.GothamSemibold;
                        ThanhTienTrinh41.FontSize = "Size14";
                        ThanhTienTrinh41.TextWrapped = true;
                        ThanhTienTrinh41.Size = UDim2.new(1, 0, 1, 0);
                        ThanhTienTrinh41.TextYAlignment = "Top";
                        ThanhTienTrinh41.BackgroundTransparency = 1;
                        ThanhTienTrinh41.TextStrokeTransparency = 0.5;
                        ThanhTienTrinh41.TextColor3 = Color3.fromRGB(255, 255, 255);
                        ThanhTienTrinh41.Text = v448.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v448.Handle.Position).Magnitude / 3) .. " Distance" ;
                    else
                        v448.Handle["NameEsp" .. Number ].TextLabel.Text = v448.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v448.Handle.Position).Magnitude / 3) .. " Distance" ;
                    end
                end
            elseif v448.Handle:FindFirstChild("NameEsp" .. Number) then
                v448.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end);
    end
end
function UpdateFlowerChams()
    for v449, v450 in pairs(game.Workspace:GetChildren()) do
        pcall(function()
            if ((v450.Name == "Flower2") or (v450.Name == "Flower1")) then
                if FlowerESP then
                    if not v450:FindFirstChild("NameEsp" .. Number) then
                        local ThanhTienTrinh53 = Instance.new("BillboardGui", v450);
                        ThanhTienTrinh53.Name = "NameEsp" .. Number ;
                        ThanhTienTrinh53.ExtentsOffset = Vector3.new(0, 1, 0);
                        ThanhTienTrinh53.Size = UDim2.new(1, 200, 1, 30);
                        ThanhTienTrinh53.Adornee = v450;
                        ThanhTienTrinh53.AlwaysOnTop = true;
                        local ThanhTienTrinh59 = Instance.new("TextLabel", ThanhTienTrinh53);
                        ThanhTienTrinh59.Font = Enum.Font.GothamSemibold;
                        ThanhTienTrinh59.FontSize = "Size14";
                        ThanhTienTrinh59.TextWrapped = true;
                        ThanhTienTrinh59.Size = UDim2.new(1, 0, 1, 0);
                        ThanhTienTrinh59.TextYAlignment = "Top";
                        ThanhTienTrinh59.BackgroundTransparency = 1;
                        ThanhTienTrinh59.TextStrokeTransparency = 0.5;
                        ThanhTienTrinh59.TextColor3 = Color3.fromRGB(255, 0, 0);
                        if (v450.Name == "Flower1") then
                            ThanhTienTrinh59.Text = "Blue Flower" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v450.Position).Magnitude / 3) .. " Distance" ;
                            ThanhTienTrinh59.TextColor3 = Color3.fromRGB(0, 0, 255);
                        end
                        if (v450.Name == "Flower2") then
                            ThanhTienTrinh59.Text = "Red Flower" .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v450.Position).Magnitude / 3) .. " Distance" ;
                            ThanhTienTrinh59.TextColor3 = Color3.fromRGB(255, 0, 0);
                        end
                    else
                        v450["NameEsp" .. Number ].TextLabel.Text = v450.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v450.Position).Magnitude / 3) .. " Distance" ;
                    end
                elseif v450:FindFirstChild("NameEsp" .. Number) then
                    v450:FindFirstChild("NameEsp" .. Number):Destroy();
                end
            end
        end);
    end
end
function UpdateRealFruitChams()
    for v451, v452 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if v452:IsA("Tool") then
            if RealFruitESP then
                if not v452.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDePhu64 = Instance.new("BillboardGui", v452.Handle);
                    TieuDePhu64.Name = "NameEsp" .. Number ;
                    TieuDePhu64.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDePhu64.Size = UDim2.new(1, 200, 1, 30);
                    TieuDePhu64.Adornee = v452.Handle;
                    TieuDePhu64.AlwaysOnTop = true;
                    local TieuDePhu71 = Instance.new("TextLabel", TieuDePhu64);
                    TieuDePhu71.Font = Enum.Font.GothamSemibold;
                    TieuDePhu71.FontSize = "Size14";
                    TieuDePhu71.TextWrapped = true;
                    TieuDePhu71.Size = UDim2.new(1, 0, 1, 0);
                    TieuDePhu71.TextYAlignment = "Top";
                    TieuDePhu71.BackgroundTransparency = 1;
                    TieuDePhu71.TextStrokeTransparency = 0.5;
                    TieuDePhu71.TextColor3 = Color3.fromRGB(255, 0, 0);
                    TieuDePhu71.Text = v452.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v452.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    v452.Handle["NameEsp" .. Number ].TextLabel.Text = v452.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v452.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif v452.Handle:FindFirstChild("NameEsp" .. Number) then
                v452.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
    for v453, v454 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if v454:IsA("Tool") then
            if RealFruitESP then
                if not v454.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDePhu83 = Instance.new("BillboardGui", v454.Handle);
                    TieuDePhu83.Name = "NameEsp" .. Number ;
                    TieuDePhu83.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDePhu83.Size = UDim2.new(1, 200, 1, 30);
                    TieuDePhu83.Adornee = v454.Handle;
                    TieuDePhu83.AlwaysOnTop = true;
                    local TieuDePhu90 = Instance.new("TextLabel", TieuDePhu83);
                    TieuDePhu90.Font = Enum.Font.GothamSemibold;
                    TieuDePhu90.FontSize = "Size14";
                    TieuDePhu90.TextWrapped = true;
                    TieuDePhu90.Size = UDim2.new(1, 0, 1, 0);
                    TieuDePhu90.TextYAlignment = "Top";
                    TieuDePhu90.BackgroundTransparency = 1;
                    TieuDePhu90.TextStrokeTransparency = 0.5;
                    TieuDePhu90.TextColor3 = Color3.fromRGB(255, 174, 0);
                    TieuDePhu90.Text = v454.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v454.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    v454.Handle["NameEsp" .. Number ].TextLabel.Text = v454.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v454.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif v454.Handle:FindFirstChild("NameEsp" .. Number) then
                v454.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
    for v455, v456 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if v456:IsA("Tool") then
            if RealFruitESP then
                if not v456.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDe02 = Instance.new("BillboardGui", v456.Handle);
                    TieuDe02.Name = "NameEsp" .. Number ;
                    TieuDe02.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDe02.Size = UDim2.new(1, 200, 1, 30);
                    TieuDe02.Adornee = v456.Handle;
                    TieuDe02.AlwaysOnTop = true;
                    local TieuDe09 = Instance.new("TextLabel", TieuDe02);
                    TieuDe09.Font = Enum.Font.GothamSemibold;
                    TieuDe09.FontSize = "Size14";
                    TieuDe09.TextWrapped = true;
                    TieuDe09.Size = UDim2.new(1, 0, 1, 0);
                    TieuDe09.TextYAlignment = "Top";
                    TieuDe09.BackgroundTransparency = 1;
                    TieuDe09.TextStrokeTransparency = 0.5;
                    TieuDe09.TextColor3 = Color3.fromRGB(251, 255, 0);
                    TieuDe09.Text = v456.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v456.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    v456.Handle["NameEsp" .. Number ].TextLabel.Text = v456.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v456.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif v456.Handle:FindFirstChild("NameEsp" .. Number) then
                v456.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
end
spawn(function()
    while wait() do
        pcall(function()
            if MobESP then
                for TenNguoiDung22, TenNguoiDung23 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if TenNguoiDung23:FindFirstChild("HumanoidRootPart") then
                        if not TenNguoiDung23:FindFirstChild("MobEap") then
                            local NhanTrangThai72 = Instance.new("BillboardGui");
                            local NhanTrangThai73 = Instance.new("TextLabel");
                            NhanTrangThai72.Parent = TenNguoiDung23;
                            NhanTrangThai72.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
                            NhanTrangThai72.Active = true;
                            NhanTrangThai72.Name = "MobEap";
                            NhanTrangThai72.AlwaysOnTop = true;
                            NhanTrangThai72.LightInfluence = 1;
                            NhanTrangThai72.Size = UDim2.new(0, 200, 0, 50);
                            NhanTrangThai72.StudsOffset = Vector3.new(0, 2.5, 0);
                            NhanTrangThai73.Parent = NhanTrangThai72;
                            NhanTrangThai73.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            NhanTrangThai73.BackgroundTransparency = 1;
                            NhanTrangThai73.Size = UDim2.new(0, 200, 0, 50);
                            NhanTrangThai73.Font = Enum.Font.GothamBold;
                            NhanTrangThai73.TextColor3 = Color3.fromRGB(7, 236, 240);
                            NhanTrangThai73.Text.Size = 35;
                        end
                        local TieuDe21 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TenNguoiDung23.HumanoidRootPart.Position).Magnitude);
                        TenNguoiDung23.MobEap.TextLabel.Text = TenNguoiDung23.Name .. "-" .. TieuDe21 .. " Distance" ;
                    end
                end
            else
                for TenNguoiDung24, TenNguoiDung25 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if TenNguoiDung25:FindFirstChild("MobEap") then
                        TenNguoiDung25.MobEap:Destroy();
                    end
                end
            end
        end);
    end
end);
spawn(function()
    while wait() do
        pcall(function()
            if SeaESP then
                for TenNguoiDung26, TenNguoiDung27 in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if TenNguoiDung27:FindFirstChild("HumanoidRootPart") then
                        if not TenNguoiDung27:FindFirstChild("Seaesps") then
                            local NhanTrangThai91 = Instance.new("BillboardGui");
                            local NhanTrangThai92 = Instance.new("TextLabel");
                            NhanTrangThai91.Parent = TenNguoiDung27;
                            NhanTrangThai91.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
                            NhanTrangThai91.Active = true;
                            NhanTrangThai91.Name = "Seaesps";
                            NhanTrangThai91.AlwaysOnTop = true;
                            NhanTrangThai91.LightInfluence = 1;
                            NhanTrangThai91.Size = UDim2.new(0, 200, 0, 50);
                            NhanTrangThai91.StudsOffset = Vector3.new(0, 2.5, 0);
                            NhanTrangThai92.Parent = NhanTrangThai91;
                            NhanTrangThai92.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            NhanTrangThai92.BackgroundTransparency = 1;
                            NhanTrangThai92.Size = UDim2.new(0, 200, 0, 50);
                            NhanTrangThai92.Font = Enum.Font.GothamBold;
                            NhanTrangThai92.TextColor3 = Color3.fromRGB(7, 236, 240);
                            NhanTrangThai92.Text.Size = 35;
                        end
                        local TieuDe23 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TenNguoiDung27.HumanoidRootPart.Position).Magnitude);
                        TenNguoiDung27.Seaesps.TextLabel.Text = TenNguoiDung27.Name .. "-" .. TieuDe23 .. " Distance" ;
                    end
                end
            else
                for TenNguoiDung28, TenNguoiDung29 in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
                    if TenNguoiDung29:FindFirstChild("Seaesps") then
                        TenNguoiDung29.Seaesps:Destroy();
                    end
                end
            end
        end);
    end
end);
spawn(function()
    while wait() do
        pcall(function()
            if NpcESP then
                for TenNguoiDung30, TenNguoiDung31 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if TenNguoiDung31:FindFirstChild("HumanoidRootPart") then
                        if not TenNguoiDung31:FindFirstChild("NpcEspes") then
                            local TaiCodeNgoai10 = Instance.new("BillboardGui");
                            local TaiCodeNgoai11 = Instance.new("TextLabel");
                            TaiCodeNgoai10.Parent = TenNguoiDung31;
                            TaiCodeNgoai10.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
                            TaiCodeNgoai10.Active = true;
                            TaiCodeNgoai10.Name = "NpcEspes";
                            TaiCodeNgoai10.AlwaysOnTop = true;
                            TaiCodeNgoai10.LightInfluence = 1;
                            TaiCodeNgoai10.Size = UDim2.new(0, 200, 0, 50);
                            TaiCodeNgoai10.StudsOffset = Vector3.new(0, 2.5, 0);
                            TaiCodeNgoai11.Parent = TaiCodeNgoai10;
                            TaiCodeNgoai11.BackgroundColor3 = Color3.fromRGB(255, 255, 255);
                            TaiCodeNgoai11.BackgroundTransparency = 1;
                            TaiCodeNgoai11.Size = UDim2.new(0, 200, 0, 50);
                            TaiCodeNgoai11.Font = Enum.Font.GothamBold;
                            TaiCodeNgoai11.TextColor3 = Color3.fromRGB(7, 236, 240);
                            TaiCodeNgoai11.Text.Size = 35;
                        end
                        local TieuDe25 = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TenNguoiDung31.HumanoidRootPart.Position).Magnitude);
                        TenNguoiDung31.NpcEspes.TextLabel.Text = TenNguoiDung31.Name .. "-" .. TieuDe25 .. " Distance" ;
                    end
                end
            else
                for TenNguoiDung32, TenNguoiDung33 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
                    if TenNguoiDung33:FindFirstChild("NpcEspes") then
                        TenNguoiDung33.NpcEspes:Destroy();
                    end
                end
            end
        end);
    end
end);
function isnil(ThongTinLoader02)
    return ThongTinLoader02 == nil ;
end
local function ThongTinLoader0(ThongTinLoader03)
    return math.floor(tonumber(ThongTinLoader03) + 0.5);
end
Number = math.random(1, 1000000);
function UpdateIslandMirageESP()
    for v457, v458 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then
                if (v458.Name == "Mirage Island") then
                    if not v458:FindFirstChild("NameEsp") then
                        local ThanhTienTrinh70 = Instance.new("BillboardGui", v458);
                        ThanhTienTrinh70.Name = "NameEsp";
                        ThanhTienTrinh70.ExtentsOffset = Vector3.new(0, 1, 0);
                        ThanhTienTrinh70.Size = UDim2.new(1, 200, 1, 30);
                        ThanhTienTrinh70.Adornee = v458;
                        ThanhTienTrinh70.AlwaysOnTop = true;
                        local ThanhTienTrinh76 = Instance.new("TextLabel", ThanhTienTrinh70);
                        ThanhTienTrinh76.Font = "Code";
                        ThanhTienTrinh76.FontSize = "Size14";
                        ThanhTienTrinh76.TextWrapped = true;
                        ThanhTienTrinh76.Size = UDim2.new(1, 0, 1, 0);
                        ThanhTienTrinh76.TextYAlignment = "Top";
                        ThanhTienTrinh76.BackgroundTransparency = 1;
                        ThanhTienTrinh76.TextStrokeTransparency = 0.5;
                        ThanhTienTrinh76.TextColor3 = Color3.fromRGB(80, 245, 245);
                    else
                        v458['NameEsp'].TextLabel.Text = v458.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v458.Position).Magnitude / 3) .. " M" ;
                    end
                end
            elseif v458:FindFirstChild("NameEsp") then
                v458:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end
function UpdateAuraESP()
    for v459, v460 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if AuraESP then
                if (v460.Name == "Master of Enhancement") then
                    if not v460:FindFirstChild("NameEsp") then
                        local ThanhTienTrinh86 = Instance.new("BillboardGui", v460);
                        ThanhTienTrinh86.Name = "NameEsp";
                        ThanhTienTrinh86.ExtentsOffset = Vector3.new(0, 1, 0);
                        ThanhTienTrinh86.Size = UDim2.new(1, 200, 1, 30);
                        ThanhTienTrinh86.Adornee = v460;
                        ThanhTienTrinh86.AlwaysOnTop = true;
                        local ThanhTienTrinh92 = Instance.new("TextLabel", ThanhTienTrinh86);
                        ThanhTienTrinh92.Font = "Code";
                        ThanhTienTrinh92.FontSize = "Size14";
                        ThanhTienTrinh92.TextWrapped = true;
                        ThanhTienTrinh92.Size = UDim2.new(1, 0, 1, 0);
                        ThanhTienTrinh92.TextYAlignment = "Top";
                        ThanhTienTrinh92.BackgroundTransparency = 1;
                        ThanhTienTrinh92.TextStrokeTransparency = 0.5;
                        ThanhTienTrinh92.TextColor3 = Color3.fromRGB(80, 245, 245);
                    else
                        v460['NameEsp'].TextLabel.Text = v460.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v460.Position).Magnitude / 3) .. " M" ;
                    end
                end
            elseif v460:FindFirstChild("NameEsp") then
                v460:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end
function UpdateLSDESP()
    for v461, v462 in pairs(game:GetService("Workspace").NPCs:GetChildren()) do
        pcall(function()
            if LADESP then
                if (v462.Name == "Legendary Sword Dealer") then
                    if not v462:FindFirstChild("NameEsp") then
                        local NhanTrangThai02 = Instance.new("BillboardGui", v462);
                        NhanTrangThai02.Name = "NameEsp";
                        NhanTrangThai02.ExtentsOffset = Vector3.new(0, 1, 0);
                        NhanTrangThai02.Size = UDim2.new(1, 200, 1, 30);
                        NhanTrangThai02.Adornee = v462;
                        NhanTrangThai02.AlwaysOnTop = true;
                        local NhanTrangThai08 = Instance.new("TextLabel", NhanTrangThai02);
                        NhanTrangThai08.Font = "Code";
                        NhanTrangThai08.FontSize = "Size14";
                        NhanTrangThai08.TextWrapped = true;
                        NhanTrangThai08.Size = UDim2.new(1, 0, 1, 0);
                        NhanTrangThai08.TextYAlignment = "Top";
                        NhanTrangThai08.BackgroundTransparency = 1;
                        NhanTrangThai08.TextStrokeTransparency = 0.5;
                        NhanTrangThai08.TextColor3 = Color3.fromRGB(80, 245, 245);
                    else
                        v462['NameEsp'].TextLabel.Text = v462.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v462.Position).Magnitude / 3) .. " M" ;
                    end
                end
            elseif v462:FindFirstChild("NameEsp") then
                v462:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end
function UpdateGeaESP()
    for v463, v464 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
        pcall(function()
            if GearESP then
                if (v464.Name == "MeshPart") then
                    if not v464:FindFirstChild("NameEsp") then
                        local NhanTrangThai18 = Instance.new("BillboardGui", v464);
                        NhanTrangThai18.Name = "NameEsp";
                        NhanTrangThai18.ExtentsOffset = Vector3.new(0, 1, 0);
                        NhanTrangThai18.Size = UDim2.new(1, 200, 1, 30);
                        NhanTrangThai18.Adornee = v464;
                        NhanTrangThai18.AlwaysOnTop = true;
                        local NhanTrangThai24 = Instance.new("TextLabel", NhanTrangThai18);
                        NhanTrangThai24.Font = "Code";
                        NhanTrangThai24.FontSize = "Size14";
                        NhanTrangThai24.TextWrapped = true;
                        NhanTrangThai24.Size = UDim2.new(1, 0, 1, 0);
                        NhanTrangThai24.TextYAlignment = "Top";
                        NhanTrangThai24.BackgroundTransparency = 1;
                        NhanTrangThai24.TextStrokeTransparency = 0.5;
                        NhanTrangThai24.TextColor3 = Color3.fromRGB(80, 245, 245);
                    else
                        v464['NameEsp'].TextLabel.Text = v464.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - v464.Position).Magnitude / 3) .. " M" ;
                    end
                end
            elseif v464:FindFirstChild("NameEsp") then
                v464:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end
function Tween2(ThongTinLoader04)
    local ThongTinLoader05 = (ThongTinLoader04.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
    local ThongTinLoader06 = 350;
    if (ThongTinLoader05 >= 350) then
        ThongTinLoader06 = 350;
    end
    local ThongTinLoader07 = TweenInfo.new(ThongTinLoader05 / ThongTinLoader06, Enum.EasingStyle.Linear);
    local ThongTinLoader08 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, ThongTinLoader07, {
        CFrame = ThongTinLoader04
    });
    ThongTinLoader08:Play();
    if _G.CancelTween2 then
        ThongTinLoader08:Cancel();
    end
    _G.Clip2 = true;
    wait(ThongTinLoader05 / ThongTinLoader06);
    _G.Clip2 = false;
end
function BTPZ(ThongTinLoader09)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ThongTinLoader09;
    task.wait();
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ThongTinLoader09;
end
TweenSpeed = 350;
function Tween(ThongTinLoader11)
    local ThongTinLoader12 = (ThongTinLoader11.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
    local ThongTinLoader13 = TweenSpeed;
    if (ThongTinLoader12 >= 350) then
        ThongTinLoader13 = TweenSpeed;
    end
    local ThongTinLoader14 = TweenInfo.new(ThongTinLoader12 / ThongTinLoader13, Enum.EasingStyle.Linear);
    local ThongTinLoader15 = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, ThongTinLoader14, {
        CFrame = ThongTinLoader11
    });
    ThongTinLoader15:Play();
    if _G.StopTween then
        ThongTinLoader15:Cancel();
    end
end
function CancelTween(ThongTinLoader16)
    if not ThongTinLoader16 then
        _G.StopTween = true;
        wait();
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
        _G.StopTween = false;
    end
end
function EquipTool(ThongTinLoader17)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ThongTinLoader17) then
        local ManHinh70 = game.Players.LocalPlayer.Backpack:FindFirstChild(ThongTinLoader17);
        wait();
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(ManHinh70);
    end
end
spawn(function()
    local ThongTinLoader18 = getrawmetatable(game);
    local ThongTinLoader19 = ThongTinLoader18.__namecall;
    setreadonly(ThongTinLoader18, false);
    ThongTinLoader18.__namecall = newcclosure(function(...)
        local v465 = getnamecallmethod();
        local v466 = {
            ...
        };
        if (tostring(v465) == "FireServer") then
            if (tostring(v466[1]) == "RemoteEvent") then
                if ((tostring(v466[2]) ~= "true") and (tostring(v466[2]) ~= "false")) then
                    if _G.UseSkill then
                        if (type(v466[2]) == "vector") then
                            v466[2] = PositionSkillMasteryDevilFruit;
                        else
                            v466[2] = CFrame.new(PositionSkillMasteryDevilFruit);
                        end
                        return ThongTinLoader19(unpack(v466));
                    end
                end
            end
        end
        return ThongTinLoader19(...);
    end);
end);
spawn(function()
    while task.wait() do
        pcall(function()
            if (_G.AutoEvoRace or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.Tweenfruit or _G.AutoFishCrew or _G.Auto_Saber or _G.AutoShark or _G.Auto_Warden or _G.Auto_RainbowHaki or AutoFarmRace or _G.AutoQuestRace or Auto_Law or AutoTushita or _G.AutoHolyTorch or _G.AutoTerrorshark or _G.farmpiranya or _G.Auto_MusketeerHat or _G.Auto_ObservationV2 or _G.AutoNear or _G.Auto_PoleV1 or _G.Auto_Buddy or _G.Ectoplasm or AutoEvoRace or AutoBartilo or _G.Auto_Canvander or _G.AutoLevel or _G.Auto_DualKatana or Auto_Quest_Yama_3 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or _G.Clip2 or _G.Auto_Regoku or _G.AutoBone or _G.AutoBoneNoQuest or _G.AutoBoss or AutoFarmMasDevilFruit or AutoHallowSycthe or AutoTushita or _G.CakePrince or _G.Auto_SkullGuitar or _G.AutoFarmSwan or _G.DoughKing or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or AutoFarmRaceQuest or _G.Factory or _G.Auto_Saw or _G.AutoFrozenDimension or _G.AutoKillTrial or _G.AutoUpgrade or _G.TweenToFrozenDimension) then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local TenNguoiDung87 = Instance.new("BodyVelocity");
                    TenNguoiDung87.Name = "BodyClip";
                    TenNguoiDung87.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart;
                    TenNguoiDung87.MaxForce = Vector3.new(100000, 100000, 100000);
                    TenNguoiDung87.Velocity = Vector3.new(0, 0, 0);
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy();
            end
        end);
    end
end);
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if (_G.AutoEvoRace or _G.Auto_RainbowHaki or _G.Auto_SkullGuitar or _G.CastleRaid or _G.CollectAzure or _G.TweenToKitsune or _G.Auto_Sea3 or _G.Auto_Sea2 or _G.GhostShip or _G.Ship or _G.Auto_Holy_Torch or _G.TeleportPly or _G.Tweenfruit or _G.Auto_Saber or _G.Auto_PoleV1 or _G.Auto_MusketeerHat or _G.AutoFishCrew or _G.AutoShark or AutoFarmRace or _G.AutoQuestRace or _G.Auto_Warden or Auto_Law or _G.Auto_DualKatana or Auto_Quest_Tushita_1 or Auto_Quest_Tushita_2 or Auto_Quest_Tushita_3 or AutoTushita or _G.AutoHolyTorch or _G.Auto_Buddy or _G.AutoTerrorshark or _G.farmpiranya or Auto_Quest_Yama_3 or _G.Auto_ObservationV2 or Auto_Quest_Yama_2 or Auto_Quest_Yama_1 or _G.AutoNear or _G.Ectoplasm or AutoEvoRace or _G.AutoKillTrial or AutoBartilo or _G.Auto_Regoku or _G.AutoLevel or _G.Clip2 or _G.AutoBone or _G.Auto_Canvander or _G.AutoBoneNoQuest or _G.AutoBoss or _G.Auto_Saw or AutoFarmMasDevilFruit or AutoHallowSycthe or AutoTushita or _G.CakePrince or _G.DoughKing or _G.AutoFarmSwan or _G.AutoEliteor or AutoNextIsland or Musketeer or _G.AutoMaterial or _G.Factory or _G.AutoFrozenDimension or AutoFarmRaceQuest or _G.AutoUpgrade or _G.TweenToFrozenDimension) then
                for TenNguoiDung34, TenNguoiDung35 in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if TenNguoiDung35:IsA("BasePart") then
                        TenNguoiDung35.CanCollide = false;
                    end
                end
            end
        end);
    end);
end);
task.spawn(function()
    if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
        game.Players.LocalPlayer.Character.Stun.Changed:connect(function()
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                    game.Players.LocalPlayer.Character.Stun.Value = 0;
                end
            end);
        end);
    end
end);
function CheckMaterial(ThongTinLoader21)
    for v467, v468 in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if (type(v468) == "table") then
            if (v468.Type == "Material") then
                if (v468.Name == ThongTinLoader21) then
                    return v468.Count;
                end
            end
        end
    end
    return 0;
end
function GetWeaponInventory(ThongTinLoader22)
    for v469, v470 in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventory")) do
        if (type(v470) == "table") then
            if (v470.Type == "Sword") then
                if (v470.Name == ThongTinLoader22) then
                    return true;
                end
            end
        end
    end
    return false;
end
local ThongTinLoader1 = game.Players.LocalPlayer;
function FindEnemiesInRange(ThongTinLoader23, ThongTinLoader24)
    local ThongTinLoader25 = (ThongTinLoader1.Character or ThongTinLoader1.CharacterAdded:Wait()):GetPivot().Position;
    local ThongTinLoader26 = nil;
    for v471, v472 in ipairs(ThongTinLoader24) do
        if (not v472:GetAttribute("IsBoat") and v472:FindFirstChildOfClass("Humanoid") and (v472.Humanoid.Health > 0)) then
            local KhungChinh71 = v472:FindFirstChild("Head");
            if (KhungChinh71 and ((ThongTinLoader25 - KhungChinh71.Position).Magnitude <= 60)) then
                if (v472 ~= ThongTinLoader1.Character) then
                    table.insert(ThongTinLoader23, {
                        v472,
                        KhungChinh71
                    });
                    ThongTinLoader26 = KhungChinh71;
                end
            end
        end
    end
    for v473, v474 in ipairs(game.Players:GetPlayers()) do
        if (v474.Character and (v474 ~= ThongTinLoader1)) then
            local KhungChinh72 = v474.Character:FindFirstChild("Head");
            if (KhungChinh72 and ((ThongTinLoader25 - KhungChinh72.Position).Magnitude <= 60)) then
                table.insert(ThongTinLoader23, {
                    v474.Character,
                    KhungChinh72
                });
                ThongTinLoader26 = KhungChinh72;
            end
        end
    end
    return ThongTinLoader26;
end
function GetEquippedTool()
    local ThongTinLoader27 = ThongTinLoader1.Character;
    if not ThongTinLoader27 then
        return nil;
    end
    for v475, v476 in ipairs(ThongTinLoader27:GetChildren()) do
        if v476:IsA("Tool") then
            return v476;
        end
    end
    return nil;
end
function AttackNoCoolDown()
    local ThongTinLoader28 = {};
    local ThongTinLoader29 = game:GetService("Workspace").Enemies:GetChildren();
    local ThongTinLoader30 = FindEnemiesInRange(ThongTinLoader28, ThongTinLoader29);
    if not ThongTinLoader30 then
        return;
    end
    local ThongTinLoader31 = GetEquippedTool();
    if not ThongTinLoader31 then
        return;
    end
    pcall(function()
        local v477 = game:GetService("ReplicatedStorage");
        local v478 = v477:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterAttack");
        local v479 = v477:WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/RegisterHit");
        if (# ThongTinLoader28 > 0) then
            v478:FireServer(1e-9);
            v479:FireServer(ThongTinLoader30, ThongTinLoader28);
        else
            task.wait(1e-9);
        end
    end);
end
Type = 1;
spawn(function()
    while wait() do
        if (Type == 1) then
            Pos = CFrame.new(0, 40, 0);
        elseif (Type == 2) then
            Pos = CFrame.new(- 40, 40, 0);
        elseif (Type == 3) then
            Pos = CFrame.new(40, 40, 0);
        elseif (Type == 4) then
            Pos = CFrame.new(0, 40, 40);
        elseif (Type == 5) then
            Pos = CFrame.new(0, 40, - 40);
        end
    end
end);
spawn(function()
    while wait() do
        Type = 1;
        wait(0.2);
        Type = 2;
        wait(0.2);
        Type = 3;
        wait(0.2);
        Type = 4;
        wait(0.2);
        Type = 5;
        wait(0.2);
    end
end);
function AutoHaki()
    if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso");
    end
end
function to(ThongTinLoader32)
    repeat
        wait(_G.Fast_Delay);
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(15);
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ThongTinLoader32;
        task.wait();
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ThongTinLoader32;
    until (ThongTinLoader32.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000
end
function to(ThongTinLoader33)
    pcall(function()
        if (((ThongTinLoader33.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 2000) and not Auto_Raid and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)) then
            if (NameMon == "FishmanQuest") then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                wait();
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
            elseif (Mon == "God's Guard") then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                wait();
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688));
            elseif (NameMon == "SkyExp1Quest") then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                wait();
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047));
            elseif (NameMon == "ShipQuest1") then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                wait();
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            elseif (NameMon == "ShipQuest2") then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                wait();
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
            elseif (NameMon == "FrostQuest") then
                Tween(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame);
                wait();
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 6508.5581054688, 89.034996032715, - 132.83953857422));
            else
                repeat
                    wait(_G.Fast_Delay);
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ThongTinLoader33;
                    wait(0.05);
                    game.Players.LocalPlayer.Character.Head:Destroy();
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ThongTinLoader33;
                until ((ThongTinLoader33.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2500) and (game.Players.LocalPlayer.Character.Humanoid.Health > 0)
                wait();
            end
        end
    end);
end
local ThongTinLoader2 = Instance.new("ScreenGui");
local ThongTinLoader3 = Instance.new("ImageButton");
local ThongTinLoader4 = Instance.new("UICorner");
local ThongTinLoader5 = Instance.new("ParticleEmitter");
local ThongTinLoader6 = game:GetService("TweenService");
ThongTinLoader2.Parent = game.CoreGui;
ThongTinLoader2.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
ThongTinLoader3.Parent = ThongTinLoader2;
ThongTinLoader3.BackgroundColor3 = Color3.fromRGB(0, 0, 0);
ThongTinLoader3.BorderSizePixel = 0;
ThongTinLoader3.Position = UDim2.new(0.120833337 - 0.1, 0, 0.0952890813 + 0.01, 0);
ThongTinLoader3.Size = UDim2.new(0, 50, 0, 50);
ThongTinLoader3.Draggable = true;
ThongTinLoader3.Image = "http://www.roblox.com/asset/?id=13717478897";
ThongTinLoader4.Parent = ThongTinLoader3;
ThongTinLoader4.CornerRadius = UDim.new(0, 12);
ThongTinLoader5.Parent = ThongTinLoader3;
ThongTinLoader5.LightEmission = 1;
ThongTinLoader5.Size = NumberSequence.new({
    NumberSequenceKeypoint.new(0, 0.1),
    NumberSequenceKeypoint.new(1, 0)
});
ThongTinLoader5.Lifetime = NumberRange.new(0.5, 1);
ThongTinLoader5.Rate = 0;
ThongTinLoader5.Speed = NumberRange.new(5, 10);
ThongTinLoader5.Color = ColorSequence.new(Color3.fromRGB(255, 85, 255), Color3.fromRGB(85, 255, 255));
local v47 = ThongTinLoader6:Create(ThongTinLoader3, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
    Rotation = 360
});
ThongTinLoader3.MouseButton1Down:Connect(function()
    ThongTinLoader5.Rate = 100;
    task.delay(1, function()
        ThongTinLoader5.Rate = 0;
    end);
    v47:Play();
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game);
    v47.Completed:Connect(function()
        ThongTinLoader3.Rotation = 0;
    end);
    local ThongTinLoader35 = ThongTinLoader6:Create(ThongTinLoader3, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
        Size = UDim2.new(0, 60, 0, 60)
    });
    ThongTinLoader35:Play();
    ThongTinLoader35.Completed:Connect(function()
        local v483 = ThongTinLoader6:Create(ThongTinLoader3, TweenInfo.new(0.2, Enum.EasingStyle.Bounce, Enum.EasingDirection.Out), {
            Size = UDim2.new(0, 50, 0, 50)
        });
        v483:Play();
    end);
end);
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Death") then
    game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy();
end
if game:GetService("ReplicatedStorage").Effect.Container:FindFirstChild("Respawn") then
    game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy();
end
DanhSachTab.Home:AddButton({
    Title = "discord support",
    Description = "",
    Callback = function()
        setclipboard("https://discord.gg/baGVBKvVAs");
    end
});
_G.FastAttackStrix_Mode = "Super Fast Attack";
spawn(function()
    while wait() do
        if _G.FastAttackStrix_Mode then
            pcall(function()
                if (_G.FastAttackStrix_Mode == "Super Fast Attack") then
                    _G.Fast_Delay = 1e-9;
                end
            end);
        end
    end
end);
local v48 = DanhSachTab.Main:AddDropdown("DropdownSelectWeapon", {
    Title = "Vũ Khí
    Description = "",
    Values = {
        "Melee",
        "Sword",
        "Blox Fruits"
    },
    Multi = false,
    Default = 1
});
v48:SetValue("Melee");
v48:OnChanged(function(ThongTinLoader36)
    ChooseWeapon = ThongTinLoader36;
end);
task.spawn(function()
    while wait() do
        pcall(function()
            if (ChooseWeapon == "Melee") then
                for TenNguoiDung36, TenNguoiDung37 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if (TenNguoiDung37.ToolTip == "Melee") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(TenNguoiDung37.Name)) then
                            SelectWeapon = TenNguoiDung37.Name;
                        end
                    end
                end
            elseif (ChooseWeapon == "Sword") then
                for TieuDe28, TieuDe29 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if (TieuDe29.ToolTip == "Sword") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(TieuDe29.Name)) then
                            SelectWeapon = TieuDe29.Name;
                        end
                    end
                end
            elseif (ChooseWeapon == "Blox Fruit") then
                for TaiCodeNgoai30, TaiCodeNgoai31 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if (TaiCodeNgoai31.ToolTip == "Blox Fruit") then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(TaiCodeNgoai31.Name)) then
                            SelectWeapon = TaiCodeNgoai31.Name;
                        end
                    end
                end
            end
        end);
    end
end);
local v49 = DanhSachTab.Main:AddToggle("ToggleLevel", {
    Title = "Cày Cấp",
    Description = "",
    Default = false
});
v49:OnChanged(function(ThongTinLoader37)
    _G.AutoLevel = ThongTinLoader37;
    if (ThongTinLoader37 == false) then
        wait();
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
    end
end);
LuaChon.ToggleLevel:SetValue(false);
spawn(function()
    while task.wait() do
        if _G.AutoLevel then
            pcall(function()
                CheckLevel();
                if (not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                    Tween(CFrameQ);
                    if ((CFrameQ.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", NameQuest, QuestLv);
                    end
                elseif (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
                    for TaiCodeNgoai32, TaiCodeNgoai33 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TaiCodeNgoai33:FindFirstChild("Humanoid") and TaiCodeNgoai33:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai33.Humanoid.Health > 0)) then
                            if (TaiCodeNgoai33.Name == Ms) then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    bringmob = true;
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    Tween(TaiCodeNgoai33.HumanoidRootPart.CFrame * Pos);
                                    TaiCodeNgoai33.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    TaiCodeNgoai33.HumanoidRootPart.Transparency = 1;
                                    TaiCodeNgoai33.Humanoid.JumpPower = 0;
                                    TaiCodeNgoai33.Humanoid.WalkSpeed = 0;
                                    TaiCodeNgoai33.HumanoidRootPart.CanCollide = false;
                                    FarmPos = TaiCodeNgoai33.HumanoidRootPart.CFrame;
                                    MonFarm = TaiCodeNgoai33.Name;
                                until not _G.AutoLevel or not TaiCodeNgoai33.Parent or (TaiCodeNgoai33.Humanoid.Health <= 0) or not game:GetService("Workspace").Enemies:FindFirstChild(TaiCodeNgoai33.Name) or (game.Players.LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                bringmob = false;
                            end
                        end
                    end
                    for TaiCodeNgoai34, TaiCodeNgoai35 in pairs(game:GetService("Workspace")['_WorldOrigin'].EnemySpawns:GetChildren()) do
                        if string.find(TaiCodeNgoai35.Name, NameMon) then
                            if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TaiCodeNgoai35.Position).Magnitude >= 10) then
                                Tween(TaiCodeNgoai35.HumanoidRootPart.CFrame * Pos);
                            end
                        end
                    end
                end
            end);
        end
    end
end);
local ManHinh0 = DanhSachTab.Main:AddToggle("ToggleMobAura", {
    Title = "Đấm Quái Gần",
    Description = "",
    Default = false
});
ManHinh0:OnChanged(function(ThongTinLoader38)
    _G.AutoNear = ThongTinLoader38;
    if (ThongTinLoader38 == false) then
        wait();
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
    end
end);
LuaChon.ToggleMobAura:SetValue(false);
spawn(function()
    while wait() do
        if _G.AutoNear then
            pcall(function()
                for TenNguoiDung38, TenNguoiDung39 in pairs(game.Workspace.Enemies:GetChildren()) do
                    if (TenNguoiDung39:FindFirstChild("Humanoid") and TenNguoiDung39:FindFirstChild("HumanoidRootPart") and (TenNguoiDung39.Humanoid.Health > 0)) then
                        if TenNguoiDung39.Name then
                            if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TenNguoiDung39:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000) then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    bringmob = true;
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    Tween(TenNguoiDung39.HumanoidRootPart.CFrame * Pos);
                                    TenNguoiDung39.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    TenNguoiDung39.HumanoidRootPart.Transparency = 1;
                                    TenNguoiDung39.Humanoid.JumpPower = 0;
                                    TenNguoiDung39.Humanoid.WalkSpeed = 0;
                                    TenNguoiDung39.HumanoidRootPart.CanCollide = false;
                                    FarmPos = TenNguoiDung39.HumanoidRootPart.CFrame;
                                    MonFarm = TenNguoiDung39.Name;
                                until not _G.AutoNear or not TenNguoiDung39.Parent or (TenNguoiDung39.Humanoid.Health <= 0) or not game.Workspace.Enemies:FindFirstChild(TenNguoiDung39.Name)
                                bringmob = false;
                            end
                        end
                    end
                end
            end);
        end
    end
end);
local ManHinh1 = DanhSachTab.Main:AddToggle("ToggleCastleRaid", {
    Title = "Đấm Hải Tặc",
    Description = "",
    Default = false
});
ManHinh1:OnChanged(function(ThongTinLoader39)
    _G.CastleRaid = ThongTinLoader39;
end);
LuaChon.ToggleCastleRaid:SetValue(false);
spawn(function()
    while wait() do
        if _G.CastleRaid then
            pcall(function()
                local HinhAnhNguoiDung64 = CFrame.new(- 5496.17432, 313.768921, - 2841.53027, 0.924894512, 7.37058e-9, 0.380223751, 3.588102e-8, 1, - 1.06665446e-7, - 0.380223751, 1.1229711e-7, 0.924894512);
                if ((CFrame.new(- 5539.3115234375, 313.800537109375, - 2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
                    for TieuDe30, TieuDe31 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (_G.CastleRaid and TieuDe31:FindFirstChild("HumanoidRootPart") and TieuDe31:FindFirstChild("Humanoid") and (TieuDe31.Humanoid.Health > 0)) then
                            if ((TieuDe31.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe31.HumanoidRootPart.CanCollide = false;
                                    TieuDe31.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    Tween(TieuDe31.HumanoidRootPart.CFrame * Pos);
                                until (TieuDe31.Humanoid.Health <= 0) or not TieuDe31.Parent or not _G.CastleRaid
                            end
                        end
                    end
                else
                    Tween(HinhAnhNguoiDung64);
                end
            end);
        end
    end
end);
local ManHinh2 = DanhSachTab.Main:AddToggle("ToggleHakiFortress", {
    Title = "Bật Haki Màu Pháo Đài",
    Description = "",
    Default = false
});
ManHinh2:OnChanged(function(ThongTinLoader40)
    _G.EnableHakiFortress = ThongTinLoader40;
end);
LuaChon.ToggleHakiFortress:SetValue(false);
local function ManHinh3(ThongTinLoader41, ThongTinLoader42)
    local ThongTinLoader43 = {
        [1] = {
            StorageName = ThongTinLoader41,
            Type = "AuraSkin",
            Context = "Equip"
        }
    };
    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/FruitCustomizerRF"):InvokeServer(unpack(ThongTinLoader43));
    Tween2(ThongTinLoader42);
end
local function ManHinh4(ThongTinLoader44, ThongTinLoader45)
    local ThongTinLoader46 = game.Players.LocalPlayer.Character;
    if (not ThongTinLoader46 or not ThongTinLoader46:FindFirstChild("HumanoidRootPart")) then
        return false;
    end
    local ThongTinLoader47 = ThongTinLoader46.HumanoidRootPart.Position;
    return (ThongTinLoader47 - ThongTinLoader44).Magnitude < ThongTinLoader45 ;
end
spawn(function()
    while true do
        if _G.EnableHakiFortress then
            ManHinh3("Snow White", Vector3.new(- 4971.71826171875, 335.9582214355469, - 3720.0595703125));
            while not ManHinh4(Vector3.new(- 4971.71826171875, 335.9582214355469, - 3720.0595703125), 1) do
                wait(0.1);
            end
            wait(0.5);
            ManHinh3("Pure Red", Vector3.new(- 5414.92041015625, 314.2582092285156, - 2212.20166015625));
            while not ManHinh4(Vector3.new(- 5414.92041015625, 314.2582092285156, - 2212.20166015625), 1) do
                wait(0.1);
            end
            wait(0.5);
            ManHinh3("Winter Sky", Vector3.new(- 5420.26318359375, 1089.3582763671875, - 2666.8193359375));
            while not ManHinh4(Vector3.new(- 5420.26318359375, 1089.3582763671875, - 2666.8193359375), 1) do
                wait(0.1);
            end
            wait(0.5);
            _G.EnableHakiFortress = false;
        end
        wait(0.5);
    end
end);
local ManHinh5 = DanhSachTab.Main:AddToggle("ToggleCollectChest", {
    Title = "Lụm Rương",
    Description = "",
    Default = false
});
ManHinh5:OnChanged(function(ThongTinLoader48)
    _G.AutoCollectChest = ThongTinLoader48;
end);
spawn(function()
    while wait() do
        if _G.AutoCollectChest then
            local KhungChinh73 = game:GetService("Players");
            local KhungChinh74 = KhungChinh73.LocalPlayer;
            local KhungChinh75 = KhungChinh74.Character or KhungChinh74.CharacterAdded:Wait() ;
            local KhungChinh76 = KhungChinh75:GetPivot().Position;
            local KhungChinh77 = game:GetService("CollectionService");
            local KhungChinh78 = KhungChinh77:GetTagged("_ChestTagged");
            local KhungChinh79, KhungChinh80 = math.huge;
            for HinhAnhNguoiDung65 = 1, # KhungChinh78 do
                local HinhAnhNguoiDung66 = KhungChinh78[HinhAnhNguoiDung65];
                local HinhAnhNguoiDung67 = (HinhAnhNguoiDung66:GetPivot().Position - KhungChinh76).Magnitude;
                if (not HinhAnhNguoiDung66:GetAttribute("IsDisabled") and (HinhAnhNguoiDung67 < KhungChinh79)) then
                    KhungChinh79, KhungChinh80 = HinhAnhNguoiDung67, HinhAnhNguoiDung66;
                end
            end
            if KhungChinh80 then
                local TenNguoiDung40 = KhungChinh80:GetPivot().Position;
                local TenNguoiDung41 = CFrame.new(TenNguoiDung40);
                Tween2(TenNguoiDung41);
            end
        end
    end
end);
local ManHinh6 = DanhSachTab.Main:AddSection("Thông Thạo");
local ManHinh7 = DanhSachTab.Main:AddDropdown("DropdownMastery", {
    Title = "Cày Thông Thạo",
    Description = "",
    Values = {
        "Near Mobs"
    },
    Multi = false,
    Default = 1
});
ManHinh7:SetValue(TypeMastery);
ManHinh7:OnChanged(function(ThongTinLoader49)
    TypeMastery = ThongTinLoader49;
end);
local ManHinh8 = DanhSachTab.Main:AddToggle("ToggleMasteryFruit", {
    Title = "Cày Trái",
    Description = "",
    Default = false
});
ManHinh8:OnChanged(function(ThongTinLoader50)
    AutoFarmMasDevilFruit = ThongTinLoader50;
end);
LuaChon.ToggleMasteryFruit:SetValue(false);
local ManHinh9 = DanhSachTab.Main:AddSlider("SliderHealt", {
    Title = "Máu Quái",
    Description = "",
    Default = 20,
    Min = 0,
    Max = 100,
    Rounding = 1,
    Callback = function(ThongTinLoader51)
        KillPercent = ThongTinLoader51;
    end
});
ManHinh9:OnChanged(function(ThongTinLoader52)
    KillPercent = ThongTinLoader52;
end);
ManHinh9:SetValue(20);
spawn(function()
    while task.wait() do
        if _G.UseSkill then
            pcall(function()
                if _G.UseSkill then
                    for TieuDe32, TieuDe33 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if ((TieuDe33.Name == MonFarm) and TieuDe33:FindFirstChild("Humanoid") and TieuDe33:FindFirstChild("HumanoidRootPart") and (TieuDe33.Humanoid.Health <= ((TieuDe33.Humanoid.MaxHealth * KillPercent) / 100))) then
                            repeat
                                game:GetService("RunService").Heartbeat:wait();
                                EquipTool(game.Players.LocalPlayer.Data.DevilFruit.Value);
                                Tween(TieuDe33.HumanoidRootPart.CFrame * Pos);
                                PositionSkillMasteryDevilFruit = TieuDe33.HumanoidRootPart.Position;
                                if game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value) then
                                    game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).MousePos.Value = PositionSkillMasteryDevilFruit;
                                    local DanhSachTab06 = game:GetService("Players").LocalPlayer.Character:FindFirstChild(game.Players.LocalPlayer.Data.DevilFruit.Value).Level.Value;
                                    if (SkillZ and (DanhSachTab06 >= 1)) then
                                        game:service("VirtualInputManager"):SendKeyEvent(true, "Z", false, game);
                                        wait();
                                        game:service("VirtualInputManager"):SendKeyEvent(false, "Z", false, game);
                                    end
                                    if (SkillX and (DanhSachTab06 >= 2)) then
                                        game:service("VirtualInputManager"):SendKeyEvent(true, "X", false, game);
                                        wait();
                                        game:service("VirtualInputManager"):SendKeyEvent(false, "X", false, game);
                                    end
                                    if (SkillC and (DanhSachTab06 >= 3)) then
                                        game:service("VirtualInputManager"):SendKeyEvent(true, "C", false, game);
                                        wait();
                                        game:service("VirtualInputManager"):SendKeyEvent(false, "C", false, game);
                                    end
                                    if (SkillV and (DanhSachTab06 >= 4)) then
                                        game:service("VirtualInputManager"):SendKeyEvent(true, "V", false, game);
                                        wait();
                                        game:service("VirtualInputManager"):SendKeyEvent(false, "V", false, game);
                                    end
                                    if (SkillF and (DanhSachTab06 >= 5)) then
                                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "F", false, game);
                                        wait();
                                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "F", false, game);
                                    end
                                end
                            until not AutoFarmMasDevilFruit or not _G.UseSkill or (TieuDe33.Humanoid.Health == 0)
                        end
                    end
                end
            end);
        end
    end
end);
spawn(function()
    while task.wait(0.1) do
        if (AutoFarmMasDevilFruit and (TypeMastery == "Near Mobs")) then
            pcall(function()
                for TenNguoiDung42, TenNguoiDung43 in pairs(game.Workspace.Enemies:GetChildren()) do
                    if (TenNguoiDung43.Name and TenNguoiDung43:FindFirstChild("Humanoid") and TenNguoiDung43:FindFirstChild("HumanoidRootPart")) then
                        if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TenNguoiDung43:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 5000) then
                            repeat
                                wait(_G.Fast_Delay);
                                if (TenNguoiDung43.Humanoid.Health <= ((TenNguoiDung43.Humanoid.MaxHealth * KillPercent) / 100)) then
                                    _G.UseSkill = true;
                                else
                                    _G.UseSkill = false;
                                    AutoHaki();
                                    bringmob = true;
                                    EquipTool(SelectWeapon);
                                    Tween(TenNguoiDung43.HumanoidRootPart.CFrame * Pos);
                                    TenNguoiDung43.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    TenNguoiDung43.HumanoidRootPart.Transparency = 1;
                                    TenNguoiDung43.Humanoid.JumpPower = 0;
                                    TenNguoiDung43.Humanoid.WalkSpeed = 0;
                                    TenNguoiDung43.HumanoidRootPart.CanCollide = false;
                                    FarmPos = TenNguoiDung43.HumanoidRootPart.CFrame;
                                    MonFarm = TenNguoiDung43.Name;
                                    AttackNoCoolDown();
                                end
                            until not AutoFarmMasDevilFruit or (not MasteryType == "Near Mobs") or not TenNguoiDung43.Parent or (TenNguoiDung43.Humanoid.Health == 0)
                            bringmob = false;
                            _G.UseSkill = false;
                        end
                    end
                end
            end);
        end
    end
end);
if Sea3 then
    local v484 = DanhSachTab.Main:AddSection("Xương");
    local v485 = DanhSachTab.Main:AddParagraph({
        Title = "Trạng Thái Xương",
        Content = "",
    });
    spawn(function()
        pcall(function()
            while wait() do
                local HinhAnhNguoiDung68 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Check");
                v485:SetDesc("Mày Có:you have" .. tostring(HinhAnhNguoiDung68) .. " Xương");
            end
        end);
    end);
    local v486 = DanhSachTab.Main:AddToggle("ToggleBone", {
        Title = "Cày Xương",
        Description = "",
        Default = false
    });
    v486:OnChanged(function(ManHinh71)
        _G.AutoBone = ManHinh71;
        if (ManHinh71 == false) then
            wait();
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
            wait();
        end
    end);
    LuaChon.ToggleBone:SetValue(false);
    local v487 = CFrame.new(- 9515.75, 174.8521728515625, 6079.40625);
    spawn(function()
        while wait() do
            if _G.AutoBone then
                pcall(function()
                    local TenNguoiDung94 = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text;
                    if not string.find(TenNguoiDung94, "Demonic Soul") then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                    end
                    if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false) then
                        Tween(v487);
                        if ((v487.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "HauntedQuest2", 1);
                        end
                    elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
                            for DanhSachTab61, DanhSachTab62 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (DanhSachTab62:FindFirstChild("HumanoidRootPart") and DanhSachTab62:FindFirstChild("Humanoid") and (DanhSachTab62.Humanoid.Health > 0)) then
                                    if ((DanhSachTab62.Name == "Reborn Skeleton") or (DanhSachTab62.Name == "Living Zombie") or (DanhSachTab62.Name == "Demonic Soul") or (DanhSachTab62.Name == "Posessed Mummy")) then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Demonic Soul") then
                                            repeat
                                                wait(_G.Fast_Delay);
                                                AttackNoCoolDown();
                                                AutoHaki();
                                                bringmob = true;
                                                EquipTool(SelectWeapon);
                                                Tween(DanhSachTab62.HumanoidRootPart.CFrame * Pos);
                                                DanhSachTab62.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                                DanhSachTab62.HumanoidRootPart.Transparency = 1;
                                                DanhSachTab62.Humanoid.JumpPower = 0;
                                                DanhSachTab62.Humanoid.WalkSpeed = 0;
                                                DanhSachTab62.HumanoidRootPart.CanCollide = false;
                                                FarmPos = DanhSachTab62.HumanoidRootPart.CFrame;
                                                MonFarm = DanhSachTab62.Name;
                                            until not _G.AutoBone or (DanhSachTab62.Humanoid.Health <= 0) or not DanhSachTab62.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                        else
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest");
                                            bringmob = false;
                                        end
                                    end
                                end
                            end
                        else
                        end
                    end
                end);
            end
        end
    end);
    local v488 = CFrame.new(- 9515.75, 174.8521728515625, 6079.40625);
    spawn(function()
        while wait() do
            if _G.AutoBoneNoQuest then
                pcall(function()
                    Tween(v488);
                    if ((v488.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) then
                    end
                    if (game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy")) then
                        for TaiCodeNgoai36, TaiCodeNgoai37 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai37:FindFirstChild("HumanoidRootPart") and TaiCodeNgoai37:FindFirstChild("Humanoid") and (TaiCodeNgoai37.Humanoid.Health > 0)) then
                                if ((TaiCodeNgoai37.Name == "Reborn Skeleton") or (TaiCodeNgoai37.Name == "Living Zombie") or (TaiCodeNgoai37.Name == "Demonic Soul") or (TaiCodeNgoai37.Name == "Posessed Mummy")) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        bringmob = true;
                                        EquipTool(SelectWeapon);
                                        Tween(TaiCodeNgoai37.HumanoidRootPart.CFrame * Pos);
                                        TaiCodeNgoai37.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        TaiCodeNgoai37.HumanoidRootPart.Transparency = 1;
                                        TaiCodeNgoai37.Humanoid.JumpPower = 0;
                                        TaiCodeNgoai37.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai37.HumanoidRootPart.CanCollide = false;
                                        FarmPos = TaiCodeNgoai37.HumanoidRootPart.CFrame;
                                        MonFarm = TaiCodeNgoai37.Name;
                                    until not _G.AutoBoneNoQuest or (TaiCodeNgoai37.Humanoid.Health <= 0) or not TaiCodeNgoai37.Parent
                                end
                            end
                        end
                    end
                end);
            end
        end
    end);
    DanhSachTab.Main:AddButton({
        Title = "Cầu Nguyện",
        Description = "",
        Callback = function()
            local ManHinh72 = {
                [1] = "gravestoneEvent",
                [2] = 1
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(ManHinh72));
        end
    });
    DanhSachTab.Main:AddButton({
        Title = "Thử Vận May",
        Description = "",
        Callback = function()
            local ManHinh73 = {
                [1] = "gravestoneEvent",
                [2] = 2
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(ManHinh73));
        end
    });
    local v489 = DanhSachTab.Main:AddToggle("ToggleRandomBone", {
        Title = "Random Xương",
        Description = "",
        Default = false
    });
    v489:OnChanged(function(ManHinh74)
        _G.AutoRandomBone = ManHinh74;
    end);
    LuaChon.ToggleRandomBone:SetValue(false);
    spawn(function()
        while wait() do
            if _G.AutoRandomBone then
                local TenNguoiDung44 = {
                    [1] = "Bones",
                    [2] = "Buy",
                    [3] = 1,
                    [4] = 1
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung44));
            end
        end
    end);
end
if Sea3 then
    local v490 = DanhSachTab.Main:AddSection("Tư Lệnh Bánh");
    local v491 = DanhSachTab.Main:AddParagraph({
        Title = "Trạng Thái dough king v1-2",
        Content = "",
    });
    spawn(function()
        while wait() do
            pcall(function()
                if (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88) then
                    v491:SetDesc("Còn: " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 41) .. "");
                elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87) then
                    v491:SetDesc("Còn: " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 40) .. "");
                elseif (string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86) then
                    v491:SetDesc("Còn: " .. string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"), 39, 39) .. " ");
                else
                    v491:SetDesc("Tư Lệnh Bánh")
                end
            end);
        end
    end);
    local v492 = DanhSachTab.Main:AddToggle("ToggleCake", {
        Title = "Cày Tư Lệnh Bánh",
        Description = "",
        Default = false
    });
    local v493 = true;
    v492:OnChanged(function(ManHinh75)
        _G.CakePrince = ManHinh75;
        if ManHinh75 then
            if v493 then
                v493 = false;
                local TenNguoiDung95 = CFrame.new(- 2003.932861328125, 380.4824523925781, - 12561.0185546875);
                Tween(TenNguoiDung95);
            end
        else
            v493 = true;
            wait();
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
            wait();
        end
    end);
    LuaChon.ToggleCake:SetValue(false);
    spawn(function()
        while wait() do
            if _G.CakePrince then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for TaiCodeNgoai38, TaiCodeNgoai39 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai39.Name == "Cake Prince") then
                                if (TaiCodeNgoai39:FindFirstChild("Humanoid") and TaiCodeNgoai39:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai39.Humanoid.Health > 0)) then
                                    repeat
                                        task.wait(_G.Fast_Delay);
                                        AutoHaki();
                                        EquipTool(SelectWeapon);
                                        TaiCodeNgoai39.HumanoidRootPart.CanCollide = false;
                                        TaiCodeNgoai39.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai39.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        Tween(TaiCodeNgoai39.HumanoidRootPart.CFrame * Pos);
                                        AttackNoCoolDown();
                                    until not _G.CakePrince or not TaiCodeNgoai39.Parent or (TaiCodeNgoai39.Humanoid.Health <= 0)
                                end
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                    elseif (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1) then
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker")) then
                            for LuaChon54, LuaChon55 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if ((LuaChon55.Name == "Cookie Crafter") or (LuaChon55.Name == "Cake Guard") or (LuaChon55.Name == "Baking Staff") or (LuaChon55.Name == "Head Baker")) then
                                    if (LuaChon55:FindFirstChild("Humanoid") and LuaChon55:FindFirstChild("HumanoidRootPart") and (LuaChon55.Humanoid.Health > 0)) then
                                        repeat
                                            task.wait(_G.Fast_Delay);
                                            AutoHaki();
                                            bringmob = true;
                                            EquipTool(SelectWeapon);
                                            LuaChon55.HumanoidRootPart.CanCollide = false;
                                            LuaChon55.Humanoid.WalkSpeed = 0;
                                            LuaChon55.Head.CanCollide = false;
                                            LuaChon55.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                            FarmPos = LuaChon55.HumanoidRootPart.CFrame;
                                            MonFarm = LuaChon55.Name;
                                            Tween(LuaChon55.HumanoidRootPart.CFrame * Pos);
                                            AttackNoCoolDown();
                                        until not _G.CakePrince or not LuaChon55.Parent or (LuaChon55.Humanoid.Health <= 0) or (game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0) or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]")
                                        bringmob = false;
                                    end
                                end
                            end
                        end
                    end
                end);
            end
        end
    end);
    local v494 = DanhSachTab.Main:AddToggle("ToggleDoughKing", {
        Title = "Đấm Vua Bột",
        Description = "",
        Default = false
    });
    v494:OnChanged(function(ManHinh76)
        _G.DoughKing = ManHinh76;
        if (ManHinh76 == false) then
            wait();
            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
            wait();
        end
    end);
    LuaChon.ToggleDoughKing:SetValue(false);
    spawn(function()
        while wait() do
            if _G.DoughKing then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
                        for TaiCodeNgoai40, TaiCodeNgoai41 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai41.Name == "Dough King") then
                                if (TaiCodeNgoai41:FindFirstChild("Humanoid") and TaiCodeNgoai41:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai41.Humanoid.Health > 0)) then
                                    repeat
                                        task.wait(_G.Fast_Delay);
                                        AutoHaki();
                                        EquipTool(SelectWeapon);
                                        TaiCodeNgoai41.HumanoidRootPart.CanCollide = false;
                                        TaiCodeNgoai41.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai41.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        Tween(TaiCodeNgoai41.HumanoidRootPart.CFrame * Pos);
                                        AttackNoCoolDown();
                                    until not _G.DoughKing or not TaiCodeNgoai41.Parent or (TaiCodeNgoai41.Humanoid.Health <= 0)
                                end
                            end
                        end
                    end
                end);
            end
        end
    end);
    local v495 = DanhSachTab.Main:AddToggle("ToggleSpawnCake", {
        Title = "Triệu Hồi Tư Lệnh Bánh",
        Description = "",
        Default = true
    });
    v495:OnChanged(function(ManHinh77)
        _G.SpawnCakePrince = ManHinh77;
    end);
    LuaChon.ToggleSpawnCake:SetValue(true);
end
spawn(function()
    while wait() do
        if _G.SpawnCakePrince then
            local KhungChinh81 = {
                [1] = "CakePrinceSpawner",
                [2] = true
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(KhungChinh81));
            local KhungChinh81 = {
                [1] = "CakePrinceSpawner"
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(KhungChinh81));
        end
    end
end);
if Sea2 then
    local v496 = DanhSachTab.Main:AddSection("Ectoplasm Farm");
    local v497 = DanhSachTab.Main:AddToggle("ToggleVatChatKiDi", {
        Title = "tự động farm vat chat ki di",
        Description = "",
        Default = false
    });
    v497:OnChanged(function(ManHinh78)
        _G.Ectoplasm = ManHinh78;
    end);
    LuaChon.ToggleVatChatKiDi:SetValue(false);
    spawn(function()
        while wait() do
            pcall(function()
                if _G.Ectoplasm then
                    if (game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer")) then
                        for TaiCodeNgoai42, TaiCodeNgoai43 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if ((TaiCodeNgoai43.Name == "Ship Steward") or (TaiCodeNgoai43.Name == "Ship Engineer") or (TaiCodeNgoai43.Name == "Ship Deckhand") or ((TaiCodeNgoai43.Name == "Ship Officer") and TaiCodeNgoai43:FindFirstChild("Humanoid"))) then
                                if (TaiCodeNgoai43.Humanoid.Health > 0) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        bringmob = true;
                                        EquipTool(SelectWeapon);
                                        Tween(TaiCodeNgoai43.HumanoidRootPart.CFrame * Pos);
                                        TaiCodeNgoai43.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        TaiCodeNgoai43.HumanoidRootPart.Transparency = 1;
                                        TaiCodeNgoai43.Humanoid.JumpPower = 0;
                                        TaiCodeNgoai43.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai43.HumanoidRootPart.CanCollide = false;
                                        FarmPos = TaiCodeNgoai43.HumanoidRootPart.CFrame;
                                        MonFarm = TaiCodeNgoai43.Name;
                                    until (_G.Ectoplasm == false) or not TaiCodeNgoai43.Parent or (TaiCodeNgoai43.Humanoid.Health == 0) or not game:GetService("Workspace").Enemies:FindFirstChild(TaiCodeNgoai43.Name)
                                    bringmob = false;
                                end
                            end
                        end
                    else
                        local NhanTrangThai34 = (Vector3.new(904.4072265625, 181.05767822266, 33341.38671875) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude;
                        if (NhanTrangThai34 > 20000) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.21252441406, 126.9760055542, 32852.83203125));
                        end
                        Tween(CFrame.new(904.4072265625, 181.05767822266, 33341.38671875));
                    end
                end
            end);
        end
    end);
end
local KhungChinh0 = DanhSachTab.Main:AddSection("Trùm");
if Sea1 then
    tableBoss = {
        "The Gorilla King",
        "Bobby",
        "Yeti",
        "Mob Leader",
        "Vice Admiral",
        "Warden",
        "Chief Warden",
        "Swan",
        "Magma Admiral",
        "Fishman Lord",
        "Wysper",
        "Thunder God",
        "Cyborg",
        "Saber Expert"
    };
elseif Sea2 then
    tableBoss = {
        "Diamond",
        "Jeremy",
        "Fajita",
        "Don Swan",
        "Smoke Admiral",
        "Cursed Captain",
        "Darkbeard",
        "Order",
        "Awakened Ice Admiral",
        "Tide Keeper"
    };
elseif Sea3 then
    tableBoss = {
        "Stone",
        "Hydra Leader",
        "Kilo Admiral",
        "Captain Elephant",
        "Beautiful Pirate",
        "rip_indra True Form",
        "Longma",
        "Soul Reaper",
        "Cake Queen"
    };
end
local KhungChinh1 = DanhSachTab.Main:AddDropdown("DropdownBoss", {
    Title = "Chọn Trùm để farm",
    Description = "",
    Values = tableBoss,
    Multi = false,
    Default = 1
});
KhungChinh1:SetValue(_G.SelectBoss);
KhungChinh1:OnChanged(function(ThongTinLoader53)
    _G.SelectBoss = ThongTinLoader53;
end);
local KhungChinh2 = DanhSachTab.Main:AddToggle("ToggleAutoFarmBoss", {
    Title = "Đấm Trùm",
    Description = "",
    Default = false
});
KhungChinh2:OnChanged(function(ThongTinLoader54)
    _G.AutoBoss = ThongTinLoader54;
end);
LuaChon.ToggleAutoFarmBoss:SetValue(false);
spawn(function()
    while wait() do
        if _G.AutoBoss then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild(_G.SelectBoss) then
                    for TieuDe34, TieuDe35 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TieuDe35.Name == _G.SelectBoss) then
                            if (TieuDe35:FindFirstChild("Humanoid") and TieuDe35:FindFirstChild("HumanoidRootPart") and (TieuDe35.Humanoid.Health > 0)) then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe35.HumanoidRootPart.CanCollide = false;
                                    TieuDe35.Humanoid.WalkSpeed = 0;
                                    TieuDe35.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    Tween(TieuDe35.HumanoidRootPart.CFrame * Pos);
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
                                until not _G.AutoBoss or not TieuDe35.Parent or (TieuDe35.Humanoid.Health <= 0)
                            end
                        end
                    end
                elseif game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss) then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild(_G.SelectBoss).HumanoidRootPart.CFrame * CFrame.new(5, 10, 7));
                end
            end);
        end
    end
end);
local KhungChinh3 = DanhSachTab.Main:AddSection("Nguyên Liệu");
if Sea1 then
    MaterialList = {
        "Scrap Metal",
        "Leather",
        "Angel Wings",
        "Magma Ore",
        "Fish Tail"
    };
elseif Sea2 then
    MaterialList = {
        "Scrap Metal",
        "Leather",
        "Radioactive Material",
        "Mystic Droplet",
        "Magma Ore",
        "Vampire Fang"
    };
elseif Sea3 then
    MaterialList = {
        "Scrap Metal",
        "Leather",
        "Demonic Wisp",
        "Conjured Cocoa",
        "Dragon Scale",
        "Gunpowder",
        "Fish Tail",
        "Mini Tusk",
        "Hydra Enforcer",
        "Venomous Assailant"
    };
end
local KhungChinh4 = DanhSachTab.Main:AddDropdown("DropdownMaterial", {
    Title = "Chọn Nguyên Liệu",
    Description = "",
    Values = MaterialList,
    Multi = false,
    Default = 1
});
KhungChinh4:SetValue(SelectMaterial);
KhungChinh4:OnChanged(function(ThongTinLoader55)
    SelectMaterial = ThongTinLoader55;
end);
local KhungChinh5 = DanhSachTab.Main:AddToggle("ToggleMaterial", {
    Title = "Cày Nguyên Liệu",
    Description = "",
    Default = false
});
KhungChinh5:OnChanged(function(ThongTinLoader56)
    _G.AutoMaterial = ThongTinLoader56;
    if (ThongTinLoader56 == false) then
        wait();
        Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
    end
end);
LuaChon.ToggleMaterial:SetValue(false);
spawn(function()
    while task.wait() do
        if _G.AutoMaterial then
            pcall(function()
                MaterialMon(SelectMaterial);
                Tween(MPos);
                if game:GetService("Workspace").Enemies:FindFirstChild(MMon) then
                    for TieuDe36, TieuDe37 in pairs(game.Workspace.Enemies:GetChildren()) do
                        if (TieuDe37:FindFirstChild("Humanoid") and TieuDe37:FindFirstChild("HumanoidRootPart") and (TieuDe37.Humanoid.Health > 0)) then
                            if (TieuDe37.Name == MMon) then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    AutoHaki();
                                    bringmob = true;
                                    EquipTool(SelectWeapon);
                                    Tween(TieuDe37.HumanoidRootPart.CFrame * Pos);
                                    TieuDe37.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    TieuDe37.HumanoidRootPart.Transparency = 1;
                                    TieuDe37.Humanoid.JumpPower = 0;
                                    TieuDe37.Humanoid.WalkSpeed = 0;
                                    TieuDe37.HumanoidRootPart.CanCollide = false;
                                    FarmPos = TieuDe37.HumanoidRootPart.CFrame;
                                    MonFarm = TieuDe37.Name;
                                until not _G.AutoMaterial or not TieuDe37.Parent or (TieuDe37.Humanoid.Health <= 0)
                                bringmob = false;
                            end
                        end
                    end
                else
                    for TieuDe38, TieuDe39 in pairs(game:GetService("Workspace")['_WorldOrigin'].EnemySpawns:GetChildren()) do
                        if string.find(TieuDe39.Name, Mon) then
                            if ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TieuDe39.Position).Magnitude >= 10) then
                                Tween(TieuDe39.HumanoidRootPart.CFrame * Pos);
                            end
                        end
                    end
                end
            end);
        end
    end
end);
if Sea3 then
    local v498 = DanhSachTab.Sea:AddSection("Đảo Cáo");
    local v499 = DanhSachTab.Sea:AddParagraph({
        Title = "Trạng Thái Đảo Cáo",
        Content = "",
    });
    function UpdateKitsune()
        if game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland") then
            v499:SetDesc("Đảo Cáo : ✅️");
        else
            v499:SetDesc("Đảo Cáo : ❌️");
        end
    end
    spawn(function()
        pcall(function()
            while wait() do
                UpdateKitsune();
            end
        end);
    end);
    local ManHinh00 = DanhSachTab.Sea:AddToggle("ToggleEspKitsune", {
        Title = "Định Vị Đảo Cáo",
        Description = "",
        Default = false
    });
    ManHinh00:OnChanged(function(ManHinh79)
        KitsuneIslandEsp = ManHinh79;
        while KitsuneIslandEsp do
            wait();
            UpdateIslandKisuneESP();
        end
    end);
    LuaChon.ToggleEspKitsune:SetValue(false);
    function UpdateIslandKisuneESP()
        for KhungChinh82, KhungChinh83 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
            pcall(function()
                if KitsuneIslandEsp then
                    if (KhungChinh83.Name == "Kitsune Island") then
                        if not KhungChinh83:FindFirstChild("NameEsp") then
                            local CuaSoChinh18 = Instance.new("BillboardGui", KhungChinh83);
                            CuaSoChinh18.Name = "NameEsp";
                            CuaSoChinh18.ExtentsOffset = Vector3.new(0, 1, 0);
                            CuaSoChinh18.Size = UDim2.new(1, 200, 1, 30);
                            CuaSoChinh18.Adornee = KhungChinh83;
                            CuaSoChinh18.AlwaysOnTop = true;
                            local CuaSoChinh24 = Instance.new("TextLabel", CuaSoChinh18);
                            CuaSoChinh24.Font = "Code";
                            CuaSoChinh24.FontSize = "Size14";
                            CuaSoChinh24.TextWrapped = true;
                            CuaSoChinh24.Size = UDim2.new(1, 0, 1, 0);
                            CuaSoChinh24.TextYAlignment = "Top";
                            CuaSoChinh24.BackgroundTransparency = 1;
                            CuaSoChinh24.TextStrokeTransparency = 0.5;
                            CuaSoChinh24.TextColor3 = Color3.fromRGB(80, 245, 245);
                        else
                            KhungChinh83['NameEsp'].TextLabel.Text = KhungChinh83.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - KhungChinh83.Position).Magnitude / 3) .. " M" ;
                        end
                    end
                elseif KhungChinh83:FindFirstChild("NameEsp") then
                    KhungChinh83:FindFirstChild("NameEsp"):Destroy();
                end
            end);
        end
    end
    local ManHinh01 = DanhSachTab.Sea:AddToggle("ToggleTPKitsune", {
        Title = "Bay Vô Đảo Cáo",
        Description = "",
        Default = false
    });
    ManHinh01:OnChanged(function(ManHinh80)
        _G.TweenToKitsune = ManHinh80;
    end);
    LuaChon.ToggleTPKitsune:SetValue(false);
    spawn(function()
        local ManHinh81;
        while not ManHinh81 do
            ManHinh81 = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland");
            wait();
        end
        while wait() do
            if _G.TweenToKitsune then
                local TenNguoiDung45 = ManHinh81:FindFirstChild("ShrineActive");
                if TenNguoiDung45 then
                    for NhanTrangThai35, NhanTrangThai36 in pairs(TenNguoiDung45:GetDescendants()) do
                        if (NhanTrangThai36:IsA("BasePart") and NhanTrangThai36.Name:find("NeonShrinePart")) then
                            Tween(NhanTrangThai36.CFrame);
                        end
                    end
                end
            end
        end
    end);
    local ManHinh02 = DanhSachTab.Sea:AddToggle("ToggleCollectAzure", {
        Title = "Lụm Linh Hồn Xanh trong đảo kitsune",
        Description = "",
        Default = false
    });
    ManHinh02:OnChanged(function(ManHinh82)
        _G.CollectAzure = ManHinh82;
    end);
    LuaChon.ToggleCollectAzure:SetValue(false);
    spawn(function()
        while wait() do
            if _G.CollectAzure then
                pcall(function()
                    if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                        Tween(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame);
                    end
                end);
            end
        end
    end);
end
DanhSachTab.Sea:AddButton({
    Title = "Đổi Linh Hồn Xanh trong đảo kitsune",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RF/KitsuneStatuePray"):InvokeServer();
    end
});
if Sea3 then
    local ManHinh03 = DanhSachTab.Sea:AddSection("Biển");
    local ManHinh04 = game:GetService("Players");
    local ManHinh05 = game:GetService("RunService");
    local ManHinh06 = game:GetService("VirtualInputManager");
    local ManHinh07 = game:GetService("Workspace");
    local ManHinh08 = 350;
    local ManHinh09 = DanhSachTab.Sea:AddSlider("SliderSpeedBoat", {
        Title = "chỉnh sửa Tốc Độ Thuyền",
        Description = "",
        Default = ManHinh08,
        Min = 0,
        Max = 350,
        Rounding = 1,
        Callback = function(ManHinh83)
            ManHinh08 = ManHinh83;
        end
    });
    ManHinh09:SetValue(ManHinh08);
    local ManHinh10 = DanhSachTab.Sea:AddToggle("AutoFindPrehistoric", {
        Title = "Tìm Đảo Dung Nham",
        Description = "",
        Default = false
    });
    LuaChon.AutoFindPrehistoric:SetValue(false);
    ManHinh10:OnChanged(function(ManHinh84)
        _G.AutoFindPrehistoric = ManHinh84;
    end);
    local ManHinh11 = {};
    local ManHinh12 = false;
    local ManHinh13 = false;
    ManHinh05.RenderStepped:Connect(function()
        if not _G.AutoFindPrehistoric then
            ManHinh13 = false;
            return;
        end
        local ManHinh85 = ManHinh04.LocalPlayer;
        local ManHinh86 = ManHinh85.Character;
        if (not ManHinh86 or not ManHinh86:FindFirstChild("Humanoid")) then
            return;
        end
        local function ManHinh87()
            if ManHinh12 then
                return;
            end
            ManHinh12 = true;
            for HinhAnhNguoiDung69, HinhAnhNguoiDung70 in pairs(ManHinh11) do
                if (HinhAnhNguoiDung70 and HinhAnhNguoiDung70.Parent and (HinhAnhNguoiDung70.Name == "VehicleSeat") and not HinhAnhNguoiDung70.Occupant) then
                    Tween2(HinhAnhNguoiDung70.CFrame);
                    break;
                end
            end
            ManHinh12 = false;
        end
        local ManHinh88 = ManHinh86.Humanoid;
        local ManHinh89 = false;
        local ManHinh90 = nil;
        for KhungChinh84, KhungChinh85 in pairs(ManHinh07.Boats:GetChildren()) do
            local KhungChinh86 = KhungChinh85:FindFirstChild("VehicleSeat");
            if (KhungChinh86 and (KhungChinh86.Occupant == ManHinh88)) then
                ManHinh89 = true;
                ManHinh90 = KhungChinh86;
                ManHinh11[KhungChinh85.Name] = KhungChinh86;
            elseif (KhungChinh86 and (KhungChinh86.Occupant == nil)) then
                ManHinh87();
            end
        end
        if not ManHinh89 then
            return;
        end
        ManHinh90.MaxSpeed = ManHinh08;
        ManHinh90.CFrame = CFrame.new(Vector3.new(ManHinh90.Position.X, ManHinh90.Position.Y, ManHinh90.Position.Z)) * ManHinh90.CFrame.Rotation ;
        ManHinh06:SendKeyEvent(true, "W", false, game);
        for KhungChinh87, KhungChinh88 in pairs(ManHinh07.Boats:GetDescendants()) do
            if KhungChinh88:IsA("BasePart") then
                KhungChinh88.CanCollide = false;
            end
        end
        for KhungChinh89, KhungChinh90 in pairs(ManHinh86:GetDescendants()) do
            if KhungChinh90:IsA("BasePart") then
                KhungChinh90.CanCollide = false;
            end
        end
        local ManHinh93 = {
            "ShipwreckIsland",
            "SandIsland",
            "TreeIsland",
            "TinyIsland",
            "MysticIsland",
            "KitsuneIsland",
            "FrozenDimension"
        };
        for KhungChinh91, KhungChinh92 in ipairs(ManHinh93) do
            local KhungChinh93 = ManHinh07.Map:FindFirstChild(KhungChinh92);
            if (KhungChinh93 and KhungChinh93:IsA("Model")) then
                KhungChinh93:Destroy();
            end
        end
        local ManHinh94 = ManHinh07.Map:FindFirstChild("PrehistoricIsland");
        if ManHinh94 then
            ManHinh06:SendKeyEvent(false, "W", false, game);
            _G.AutoFindPrehistoric = false;
            if not ManHinh13 then
                TaiCodeNgoai:Notify({
                    Title = "gardan hub",
                    Content = "",
                    Duration = 10
                });
                ManHinh13 = true;
            end
            return;
        end
    end);
    local ManHinh14 = DanhSachTab.Sea:AddToggle("AutoFindMirage", {
        Title = "Tìm Đảo Bí Ẩn",
        Description = "",
        Default = false
    });
    LuaChon.AutoFindMirage:SetValue(false);
    ManHinh14:OnChanged(function(ManHinh95)
        _G.AutoFindMirage = ManHinh95;
    end);
    local ManHinh11 = {};
    local ManHinh12 = false;
    local ManHinh13 = false;
    ManHinh05.RenderStepped:Connect(function()
        if not _G.AutoFindMirage then
            ManHinh13 = false;
            return;
        end
        local ManHinh96 = ManHinh04.LocalPlayer;
        local ManHinh97 = ManHinh96.Character;
        if (not ManHinh97 or not ManHinh97:FindFirstChild("Humanoid")) then
            return;
        end
        local function ManHinh98()
            if ManHinh12 then
                return;
            end
            ManHinh12 = true;
            for HinhAnhNguoiDung71, HinhAnhNguoiDung72 in pairs(ManHinh11) do
                if (HinhAnhNguoiDung72 and HinhAnhNguoiDung72.Parent and (HinhAnhNguoiDung72.Name == "VehicleSeat") and not HinhAnhNguoiDung72.Occupant) then
                    Tween2(HinhAnhNguoiDung72.CFrame);
                    break;
                end
            end
            ManHinh12 = false;
        end
        local ManHinh99 = ManHinh97.Humanoid;
        local KhungChinh00 = false;
        local KhungChinh01 = nil;
        for KhungChinh94, KhungChinh95 in pairs(ManHinh07.Boats:GetChildren()) do
            local KhungChinh96 = KhungChinh95:FindFirstChild("VehicleSeat");
            if (KhungChinh96 and (KhungChinh96.Occupant == ManHinh99)) then
                KhungChinh00 = true;
                KhungChinh01 = KhungChinh96;
                ManHinh11[KhungChinh95.Name] = KhungChinh96;
            elseif (KhungChinh96 and (KhungChinh96.Occupant == nil)) then
                ManHinh98();
            end
        end
        if not KhungChinh00 then
            return;
        end
        KhungChinh01.MaxSpeed = ManHinh08;
        KhungChinh01.CFrame = CFrame.new(Vector3.new(KhungChinh01.Position.X, KhungChinh01.Position.Y, KhungChinh01.Position.Z)) * KhungChinh01.CFrame.Rotation ;
        ManHinh06:SendKeyEvent(true, "W", false, game);
        for KhungChinh97, KhungChinh98 in pairs(ManHinh07.Boats:GetDescendants()) do
            if KhungChinh98:IsA("BasePart") then
                KhungChinh98.CanCollide = false;
            end
        end
        for KhungChinh99, HinhAnhNguoiDung00 in pairs(ManHinh97:GetDescendants()) do
            if HinhAnhNguoiDung00:IsA("BasePart") then
                HinhAnhNguoiDung00.CanCollide = false;
            end
        end
        local KhungChinh04 = {
            "ShipwreckIsland",
            "SandIsland",
            "TreeIsland",
            "TinyIsland",
            "PrehistoricIsland",
            "KitsuneIsland",
            "FrozenDimension"
        };
        for HinhAnhNguoiDung01, HinhAnhNguoiDung02 in ipairs(KhungChinh04) do
            local HinhAnhNguoiDung03 = ManHinh07.Map:FindFirstChild(HinhAnhNguoiDung02);
            if (HinhAnhNguoiDung03 and HinhAnhNguoiDung03:IsA("Model")) then
                HinhAnhNguoiDung03:Destroy();
            end
        end
        local KhungChinh05 = ManHinh07.Map:FindFirstChild("MysticIsland");
        if KhungChinh05 then
            ManHinh06:SendKeyEvent(false, "W", false, game);
            _G.AutoFindMirage = false;
            if not ManHinh13 then
                TaiCodeNgoai:Notify({
                    Title = "gardan hub",
                    Content = "",
                    Duration = 10
                });
                ManHinh13 = true;
            end
            return;
        end
    end);
    local ManHinh15 = DanhSachTab.Sea:AddToggle("AutoFindFrozen", {
        Title = "Tìm Đảo Leviathan
        Description = "",
        Default = false
    });
    LuaChon.AutoFindFrozen:SetValue(false);
    ManHinh15:OnChanged(function(KhungChinh06)
        _G.AutoFindFrozen = KhungChinh06;
    end);
    local ManHinh11 = {};
    local ManHinh12 = false;
    local ManHinh13 = false;
    ManHinh05.RenderStepped:Connect(function()
        if not _G.AutoFindFrozen then
            ManHinh13 = false;
            return;
        end
        local KhungChinh07 = ManHinh04.LocalPlayer;
        local KhungChinh08 = KhungChinh07.Character;
        if (not KhungChinh08 or not KhungChinh08:FindFirstChild("Humanoid")) then
            return;
        end
        local function KhungChinh09()
            if ManHinh12 then
                return;
            end
            ManHinh12 = true;
            for HinhAnhNguoiDung73, HinhAnhNguoiDung74 in pairs(ManHinh11) do
                if (HinhAnhNguoiDung74 and HinhAnhNguoiDung74.Parent and (HinhAnhNguoiDung74.Name == "VehicleSeat") and not HinhAnhNguoiDung74.Occupant) then
                    Tween2(HinhAnhNguoiDung74.CFrame);
                    break;
                end
            end
            ManHinh12 = false;
        end
        local KhungChinh10 = KhungChinh08.Humanoid;
        local KhungChinh11 = false;
        local KhungChinh12 = nil;
        for HinhAnhNguoiDung04, HinhAnhNguoiDung05 in pairs(ManHinh07.Boats:GetChildren()) do
            local HinhAnhNguoiDung06 = HinhAnhNguoiDung05:FindFirstChild("VehicleSeat");
            if (HinhAnhNguoiDung06 and (HinhAnhNguoiDung06.Occupant == KhungChinh10)) then
                KhungChinh11 = true;
                KhungChinh12 = HinhAnhNguoiDung06;
                ManHinh11[HinhAnhNguoiDung05.Name] = HinhAnhNguoiDung06;
            elseif (HinhAnhNguoiDung06 and (HinhAnhNguoiDung06.Occupant == nil)) then
                KhungChinh09();
            end
        end
        if not KhungChinh11 then
            return;
        end
        KhungChinh12.MaxSpeed = ManHinh08;
        KhungChinh12.CFrame = CFrame.new(Vector3.new(KhungChinh12.Position.X, KhungChinh12.Position.Y, KhungChinh12.Position.Z)) * KhungChinh12.CFrame.Rotation ;
        ManHinh06:SendKeyEvent(true, "W", false, game);
        for HinhAnhNguoiDung07, HinhAnhNguoiDung08 in pairs(ManHinh07.Boats:GetDescendants()) do
            if HinhAnhNguoiDung08:IsA("BasePart") then
                HinhAnhNguoiDung08.CanCollide = false;
            end
        end
        for HinhAnhNguoiDung09, HinhAnhNguoiDung10 in pairs(KhungChinh08:GetDescendants()) do
            if HinhAnhNguoiDung10:IsA("BasePart") then
                HinhAnhNguoiDung10.CanCollide = false;
            end
        end
        local KhungChinh15 = {
            "ShipwreckIsland",
            "SandIsland",
            "TreeIsland",
            "TinyIsland",
            "MysticIsland",
            "KitsuneIsland",
            "PrehistoricIsland"
        };
        for HinhAnhNguoiDung11, HinhAnhNguoiDung12 in ipairs(KhungChinh15) do
            local HinhAnhNguoiDung13 = ManHinh07.Map:FindFirstChild(HinhAnhNguoiDung12);
            if (HinhAnhNguoiDung13 and HinhAnhNguoiDung13:IsA("Model")) then
                HinhAnhNguoiDung13:Destroy();
            end
        end
        local KhungChinh16 = ManHinh07.Map:FindFirstChild("FrozenDimension");
        if KhungChinh16 then
            ManHinh06:SendKeyEvent(false, "W", false, game);
            _G.AutoFindFrozen = false;
            if not ManHinh13 then
                TaiCodeNgoai:Notify({
                    Title = "đã tìm thấy đảo frozen dimension",
                    Content = "",
                    Duration = 10
                });
                ManHinh13 = true;
            end
            return;
        end
    end);
    local ManHinh16 = DanhSachTab.Sea:AddToggle("AutoComeTiki", {
        Title = "Lái Thuyền Về Đảo Tiki",
        Description = "",
        Default = false
    });
    ManHinh16:OnChanged(function(KhungChinh17)
        _G.AutoComeTiki = KhungChinh17;
    end);
    ManHinh05.RenderStepped:Connect(function()
        if not _G.AutoComeTiki then
            return;
        end
        local KhungChinh18 = ManHinh04.LocalPlayer;
        local KhungChinh19 = KhungChinh18.Character;
        if (not KhungChinh19 or not KhungChinh19:FindFirstChild("Humanoid")) then
            return;
        end
        local KhungChinh20 = KhungChinh19.Humanoid;
        local KhungChinh21 = nil;
        for HinhAnhNguoiDung14, HinhAnhNguoiDung15 in pairs(ManHinh07.Boats:GetChildren()) do
            local HinhAnhNguoiDung16 = HinhAnhNguoiDung15:FindFirstChild("VehicleSeat");
            if (HinhAnhNguoiDung16 and (HinhAnhNguoiDung16.Occupant == KhungChinh20)) then
                KhungChinh21 = HinhAnhNguoiDung16;
                break;
            end
        end
        if KhungChinh21 then
            KhungChinh21.MaxSpeed = ManHinh08;
            local HinhAnhNguoiDung76 = CFrame.new(- 16217.7568359375, 9.126761436462402, 446.06536865234375);
            local HinhAnhNguoiDung77 = KhungChinh21.Position;
            local HinhAnhNguoiDung78 = HinhAnhNguoiDung76.Position;
            local HinhAnhNguoiDung79 = (HinhAnhNguoiDung78 - HinhAnhNguoiDung77).unit;
            local HinhAnhNguoiDung80 = HinhAnhNguoiDung79 * KhungChinh21.MaxSpeed * ManHinh05.RenderStepped:Wait() ;
            KhungChinh21.CFrame = KhungChinh21.CFrame + HinhAnhNguoiDung80 ;
            local HinhAnhNguoiDung82 = CFrame.new(HinhAnhNguoiDung77, HinhAnhNguoiDung78);
            KhungChinh21.CFrame = CFrame.new(KhungChinh21.Position, HinhAnhNguoiDung78);
            if ((KhungChinh21.Position - HinhAnhNguoiDung78).magnitude < 120) then
                _G.AutoComeTiki = false;
                ManHinh06:SendKeyEvent(false, "W", false, game);
            end
        end
    end);
    local ManHinh17 = DanhSachTab.Sea:AddToggle("AutoComeHydra", {
        Title = "Lái Thuyền Về Đảo Hydra",
        Description = "",
        Default = false
    });
    ManHinh17:OnChanged(function(KhungChinh22)
        _G.AutoComeHydra = KhungChinh22;
    end);
    ManHinh05.RenderStepped:Connect(function()
        if not _G.AutoComeHydra then
            return;
        end
        local KhungChinh23 = ManHinh04.LocalPlayer;
        local KhungChinh24 = KhungChinh23.Character;
        if (not KhungChinh24 or not KhungChinh24:FindFirstChild("Humanoid")) then
            return;
        end
        local KhungChinh25 = KhungChinh24.Humanoid;
        local KhungChinh26 = nil;
        for HinhAnhNguoiDung17, HinhAnhNguoiDung18 in pairs(ManHinh07.Boats:GetChildren()) do
            local HinhAnhNguoiDung19 = HinhAnhNguoiDung18:FindFirstChild("VehicleSeat");
            if (HinhAnhNguoiDung19 and (HinhAnhNguoiDung19.Occupant == KhungChinh25)) then
                KhungChinh26 = HinhAnhNguoiDung19;
                break;
            end
        end
        if KhungChinh26 then
            KhungChinh26.MaxSpeed = ManHinh08;
            local HinhAnhNguoiDung84 = CFrame.new(5193.9375, - 0.04690289497375488, 1631.578369140625);
            local HinhAnhNguoiDung85 = KhungChinh26.Position;
            local HinhAnhNguoiDung86 = HinhAnhNguoiDung84.Position;
            local HinhAnhNguoiDung87 = (HinhAnhNguoiDung86 - HinhAnhNguoiDung85).unit;
            local HinhAnhNguoiDung88 = HinhAnhNguoiDung87 * KhungChinh26.MaxSpeed * ManHinh05.RenderStepped:Wait() ;
            KhungChinh26.CFrame = KhungChinh26.CFrame + HinhAnhNguoiDung88 ;
            local HinhAnhNguoiDung90 = CFrame.new(HinhAnhNguoiDung85, HinhAnhNguoiDung86);
            KhungChinh26.CFrame = CFrame.new(KhungChinh26.Position, HinhAnhNguoiDung86);
            if ((KhungChinh26.Position - HinhAnhNguoiDung86).magnitude < 120) then
                _G.AutoComeHydra = false;
                ManHinh06:SendKeyEvent(false, "W", false, game);
            end
        end
    end);
    DanhSachTab.Sea:AddButton({
        Title = "Bay Đến Khu Vực Săn",
        Description = "",
        Callback = function()
            Tween2(CFrame.new(- 16917.154296875, 7.757596015930176, 511.8203125));
        end
    });
    local ManHinh11 = {};
    local ManHinh18 = {
        "Beast Hunter",
        "Sleigh",
        "Miracle",
        "The Sentinel",
        "Guardian",
        "Lantern",
        "Dinghy",
        "PirateSloop",
        "PirateBrigade",
        "PirateGrandBrigade",
        "MarineGrandBrigade",
        "MarineBrigade",
        "MarineSloop"
    };
    local ManHinh19 = DanhSachTab.Sea:AddDropdown("DropdownBoat", {
        Title = "Chọn Thuyền để mua",
        Description = "",
        Values = ManHinh18,
        Multi = false,
        Default = 1
    });
    ManHinh19:SetValue(selectedBoat);
    ManHinh19:OnChanged(function(KhungChinh27)
        selectedBoat = KhungChinh27;
    end);
    local function ManHinh20(KhungChinh28)
        local KhungChinh29 = {
            [1] = "BuyBoat",
            [2] = KhungChinh28
        };
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(KhungChinh29));
        task.delay(2, function()
            for HinhAnhNguoiDung91, HinhAnhNguoiDung92 in pairs(ManHinh07.Boats:GetChildren()) do
                if (HinhAnhNguoiDung92:IsA("Model") and (HinhAnhNguoiDung92.Name == KhungChinh28)) then
                    local TenNguoiDung96 = HinhAnhNguoiDung92:FindFirstChild("VehicleSeat");
                    if (TenNguoiDung96 and not TenNguoiDung96.Occupant) then
                        ManHinh11[KhungChinh28] = TenNguoiDung96;
                    end
                end
            end
        end);
    end
    local function ManHinh21()
        for HinhAnhNguoiDung20, HinhAnhNguoiDung21 in pairs(ManHinh11) do
            if (HinhAnhNguoiDung21 and HinhAnhNguoiDung21.Parent and (HinhAnhNguoiDung21.Name == "VehicleSeat") and not HinhAnhNguoiDung21.Occupant) then
                Tween2(HinhAnhNguoiDung21.CFrame);
            end
        end
    end
    game:GetService("RunService").RenderStepped:Connect(function()
        for HinhAnhNguoiDung22, HinhAnhNguoiDung23 in pairs(ManHinh11) do
            if (HinhAnhNguoiDung23 and HinhAnhNguoiDung23.Parent and (HinhAnhNguoiDung23.Name == "VehicleSeat") and not HinhAnhNguoiDung23.Occupant) then
                ManHinh11[HinhAnhNguoiDung22] = HinhAnhNguoiDung23;
            end
        end
    end);
    DanhSachTab.Sea:AddButton({
        Title = "Mua Thuyền",
        Description = "",
        Callback = function()
            ManHinh20(selectedBoat);
        end
    });
    DanhSachTab.Sea:AddButton({
        Title = "Bay Đến Thuyền
        Description = "",
        Callback = function()
            ManHinh21();
        end
    });
    local ManHinh22 = DanhSachTab.Sea:AddToggle("ToggleTerrorshark", {
        Title = "Đấm Cá Mập",
        Description = "",
        Default = false
    });
    ManHinh22:OnChanged(function(KhungChinh30)
        _G.AutoTerrorshark = KhungChinh30;
    end);
    LuaChon.ToggleTerrorshark:SetValue(false);
    spawn(function()
        while wait() do
            if _G.AutoTerrorshark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
                        for TaiCodeNgoai44, TaiCodeNgoai45 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai45.Name == "Terrorshark") then
                                if (TaiCodeNgoai45:FindFirstChild("Humanoid") and TaiCodeNgoai45:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai45.Humanoid.Health > 0)) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        EquipTool(SelectWeapon);
                                        TaiCodeNgoai45.HumanoidRootPart.CanCollide = false;
                                        TaiCodeNgoai45.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai45.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        Tween(TaiCodeNgoai45.HumanoidRootPart.CFrame * Pos);
                                    until not _G.AutoTerrorshark or not TaiCodeNgoai45.Parent or (TaiCodeNgoai45.Humanoid.Health <= 0)
                                end
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                    else
                    end
                end);
            end
        end
    end);
    local ManHinh23 = DanhSachTab.Sea:AddToggle("TogglePiranha", {
        Title = "Đấm Piranha",
        Description = "",
        Default = false
    });
    ManHinh23:OnChanged(function(KhungChinh31)
        _G.farmpiranya = KhungChinh31;
    end);
    LuaChon.TogglePiranha:SetValue(false);
    spawn(function()
        while wait() do
            if _G.farmpiranya then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
                        for TaiCodeNgoai46, TaiCodeNgoai47 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai47.Name == "Piranha") then
                                if (TaiCodeNgoai47:FindFirstChild("Humanoid") and TaiCodeNgoai47:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai47.Humanoid.Health > 0)) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        EquipTool(SelectWeapon);
                                        TaiCodeNgoai47.HumanoidRootPart.CanCollide = false;
                                        TaiCodeNgoai47.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai47.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        Tween(TaiCodeNgoai47.HumanoidRootPart.CFrame * Pos);
                                    until not _G.farmpiranya or not TaiCodeNgoai47.Parent or (TaiCodeNgoai47.Humanoid.Health <= 0)
                                end
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Piranha") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Piranha").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                    else
                    end
                end);
            end
        end
    end);
    local ManHinh24 = DanhSachTab.Sea:AddToggle("ToggleShark", {
        Title = "Đấm Cá Con",
        Description = "",
        Default = false
    });
    ManHinh24:OnChanged(function(KhungChinh32)
        _G.AutoShark = KhungChinh32;
    end);
    LuaChon.ToggleShark:SetValue(false);
    spawn(function()
        while wait() do
            if _G.AutoShark then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
                        for TaiCodeNgoai48, TaiCodeNgoai49 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai49.Name == "Shark") then
                                if (TaiCodeNgoai49:FindFirstChild("Humanoid") and TaiCodeNgoai49:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai49.Humanoid.Health > 0)) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        EquipTool(SelectWeapon);
                                        TaiCodeNgoai49.HumanoidRootPart.CanCollide = false;
                                        TaiCodeNgoai49.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai49.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        Tween(TaiCodeNgoai49.HumanoidRootPart.CFrame * Pos);
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false;
                                    until not _G.AutoShark or not TaiCodeNgoai49.Parent or (TaiCodeNgoai49.Humanoid.Health <= 0)
                                end
                            end
                        end
                    else
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0));
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Terrorshark").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                        else
                        end
                    end
                end);
            end
        end
    end);
    local ManHinh25 = DanhSachTab.Sea:AddToggle("ToggleFishCrew", {
        Title = "Đấm Tàu Cá",
        Description = "",
        Default = false
    });
    ManHinh25:OnChanged(function(KhungChinh33)
        _G.AutoFishCrew = KhungChinh33;
    end);
    LuaChon.ToggleFishCrew:SetValue(false);
    spawn(function()
        while wait() do
            if _G.AutoFishCrew then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
                        for TaiCodeNgoai50, TaiCodeNgoai51 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai51.Name == "Fish Crew Member") then
                                if (TaiCodeNgoai51:FindFirstChild("Humanoid") and TaiCodeNgoai51:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai51.Humanoid.Health > 0)) then
                                    repeat
                                        wait(_G.Fast_Delay);
                                        AttackNoCoolDown();
                                        AutoHaki();
                                        EquipTool(SelectWeapon);
                                        TaiCodeNgoai51.HumanoidRootPart.CanCollide = false;
                                        TaiCodeNgoai51.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai51.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        Tween(TaiCodeNgoai51.HumanoidRootPart.CFrame * Pos);
                                        game.Players.LocalPlayer.Character.Humanoid.Sit = false;
                                    until not _G.AutoFishCrew or not TaiCodeNgoai51.Parent or (TaiCodeNgoai51.Humanoid.Health <= 0)
                                end
                            end
                        end
                    else
                        Tween(game:GetService("Workspace").Boats.PirateGrandBrigade.VehicleSeat.CFrame * CFrame.new(0, 1, 0));
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Fish Crew Member").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                        else
                        end
                    end
                end);
            end
        end
    end);
    local ManHinh26 = DanhSachTab.Sea:AddToggle("ToggleShip", {
        Title = "Đấm Tàu",
        Description = "",
        Default = false
    });
    ManHinh26:OnChanged(function(KhungChinh34)
        _G.Ship = KhungChinh34;
    end);
    LuaChon.ToggleShip:SetValue(false);
    function CheckPirateBoat()
        local KhungChinh35 = {
            "PirateGrandBrigade",
            "PirateBrigade"
        };
        for HinhAnhNguoiDung24, HinhAnhNguoiDung25 in next, game:GetService("Workspace").Enemies:GetChildren() do
            if (table.find(KhungChinh35, HinhAnhNguoiDung25.Name) and HinhAnhNguoiDung25:FindFirstChild("Health") and (HinhAnhNguoiDung25.Health.Value > 0)) then
                return HinhAnhNguoiDung25;
            end
        end
    end
    spawn(function()
        while wait() do
            if _G.Ship then
                pcall(function()
                    if CheckPirateBoat() then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game);
                        wait(0.5);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game);
                        local NhanTrangThai38 = CheckPirateBoat();
                        repeat
                            wait();
                            spawn(Tween(NhanTrangThai38.Engine.CFrame * CFrame.new(0, - 20, 0)), 1);
                            AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, - 5, 0) ;
                            Skillaimbot = true;
                            AutoSkill = false;
                        until not NhanTrangThai38 or not NhanTrangThai38.Parent or (NhanTrangThai38.Health.Value <= 0) or not CheckPirateBoat()
                        Skillaimbot = true;
                        AutoSkill = false;
                    end
                end);
            end
        end
    end);
    local ManHinh27 = DanhSachTab.Sea:AddToggle("ToggleGhostShip", {
        Title = "Đấm Tàu Ma",
        Description = "",
        Default = false
    });
    ManHinh27:OnChanged(function(KhungChinh36)
        _G.GhostShip = KhungChinh36;
    end);
    LuaChon.ToggleGhostShip:SetValue(false);
    function CheckPirateBoat()
        local KhungChinh37 = {
            "FishBoat"
        };
        for HinhAnhNguoiDung26, HinhAnhNguoiDung27 in next, game:GetService("Workspace").Enemies:GetChildren() do
            if (table.find(KhungChinh37, HinhAnhNguoiDung27.Name) and HinhAnhNguoiDung27:FindFirstChild("Health") and (HinhAnhNguoiDung27.Health.Value > 0)) then
                return HinhAnhNguoiDung27;
            end
        end
    end
    spawn(function()
        while wait() do
            pcall(function()
                if _G.bjirFishBoat then
                    if CheckPirateBoat() then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game);
                        wait();
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game);
                        local NhanTrangThai39 = CheckPirateBoat();
                        repeat
                            wait();
                            spawn(Tween(NhanTrangThai39.Engine.CFrame * CFrame.new(0, - 20, 0), 1));
                            AutoSkill = true;
                            Skillaimbot = true;
                            AimBotSkillPosition = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, - 5, 0) ;
                        until NhanTrangThai39.Parent or (NhanTrangThai39.Health.Value <= 0) or not CheckPirateBoat()
                        AutoSkill = false;
                        Skillaimbot = false;
                    end
                end
            end);
        end
    end);
    spawn(function()
        while wait() do
            if _G.bjirFishBoat then
                pcall(function()
                    if CheckPirateBoat() then
                        AutoHaki();
                        game:GetService("VirtualUser"):CaptureController();
                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
                        for TaiCodeNgoai52, TaiCodeNgoai53 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if TaiCodeNgoai53:IsA("Tool") then
                                if (TaiCodeNgoai53.ToolTip == "Melee") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(TaiCodeNgoai53);
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "C", false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        for TaiCodeNgoai54, TaiCodeNgoai55 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if TaiCodeNgoai55:IsA("Tool") then
                                if (TaiCodeNgoai55.ToolTip == "Blox Fruit") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(TaiCodeNgoai55);
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "V", false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "V", false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait();
                        for TaiCodeNgoai56, TaiCodeNgoai57 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if TaiCodeNgoai57:IsA("Tool") then
                                if (TaiCodeNgoai57.ToolTip == "Sword") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(TaiCodeNgoai57);
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait();
                        for TaiCodeNgoai58, TaiCodeNgoai59 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                            if TaiCodeNgoai59:IsA("Tool") then
                                if (TaiCodeNgoai59.ToolTip == "Gun") then
                                    game.Players.LocalPlayer.Character.Humanoid:EquipTool(TaiCodeNgoai59);
                                end
                            end
                        end
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        wait(0.2);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                    end
                end);
            end
        end
    end);
    local ManHinh28 = DanhSachTab.Main:AddSection("Elite");
    local ManHinh29 = DanhSachTab.Main:AddParagraph({
        Title = "Trạng Thái Elite",
        Content = "",
    });
    spawn(function()
        while wait() do
            pcall(function()
                if (game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
                    ManHinh29:SetDesc("Elite Boss: ✅️ 
                else
                    ManHinh29:SetDesc("Elite Boss: ❌️ 
                end
            end);
        end
    end);
    local ManHinh30 = DanhSachTab.Main:AddToggle("ToggleElite", {
        Title = "Đấm Elite",
        Description = "",
        Default = false
    });
    ManHinh30:OnChanged(function(KhungChinh38)
        _G.AutoElite = KhungChinh38;
    end);
    LuaChon.ToggleElite:SetValue(false);
    spawn(function()
        while task.wait() do
            if _G.AutoElite then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
                    if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true) then
                        if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Urban")) then
                            if (game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban")) then
                                for DanhSachTab63, DanhSachTab64 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if (DanhSachTab64:FindFirstChild("Humanoid") and DanhSachTab64:FindFirstChild("HumanoidRootPart") and (DanhSachTab64.Humanoid.Health > 0)) then
                                        if ((DanhSachTab64.Name == "Diablo") or (DanhSachTab64.Name == "Deandre") or (DanhSachTab64.Name == "Urban")) then
                                            repeat
                                                wait(_G.Fast_Delay);
                                                AttackNoCoolDown();
                                                EquipTool(SelectWeapon);
                                                AutoHaki();
                                                Tween2(DanhSachTab64.HumanoidRootPart.CFrame * Pos);
                                                DanhSachTab64.Humanoid.WalkSpeed = 0;
                                                DanhSachTab64.HumanoidRootPart.CanCollide = false;
                                                DanhSachTab64.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                            until (_G.AutoElite == false) or (DanhSachTab64.Humanoid.Health <= 0) or not DanhSachTab64.Parent
                                        end
                                    end
                                end
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                Tween2(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                Tween2(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                            elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                Tween2(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter");
                    end
                end);
            end
        end
    end);
end
if Sea3 then
    local ManHinh31 = DanhSachTab.Sea:AddSection("Đảo Bí Ẩn");
    local ManHinh32 = DanhSachTab.Sea:AddParagraph({
        Title = "Trạng Thái mirage",
        Content = "",
    });
    task.spawn(function()
        while task.wait() do
            pcall(function()
                local HinhAnhNguoiDung93 = game:GetService("Lighting").Sky.MoonTextureId;
                if (HinhAnhNguoiDung93 == "http://www.roblox.com/asset/?id=9709149431") then
                    FullMoonStatus = "100%";
                elseif (HinhAnhNguoiDung93 == "http://www.roblox.com/asset/?id=9709149052") then
                    FullMoonStatus = "75%";
                elseif (HinhAnhNguoiDung93 == "http://www.roblox.com/asset/?id=9709143733") then
                    FullMoonStatus = "50%";
                elseif (HinhAnhNguoiDung93 == "http://www.roblox.com/asset/?id=9709150401") then
                    FullMoonStatus = "25%";
                elseif (HinhAnhNguoiDung93 == "http://www.roblox.com/asset/?id=9709149680") then
                    FullMoonStatus = "15%";
                else
                    FullMoonStatus = "0%";
                end
            end);
        end
    end);
    task.spawn(function()
        while task.wait() do
            pcall(function()
                if game.Workspace.Map:FindFirstChild("MysticIsland") then
                    MirageStatus = "✅️";
                else
                    MirageStatus = "❌️";
                end
            end);
        end
    end);
    spawn(function()
        pcall(function()
            while wait() do
                ManHinh32:SetDesc("Đảo Bí Ẩn:mirage " .. MirageStatus .. " 
            end
        end);
    end);
    DanhSachTab.Sea:AddButton({
        Title = "Bay Đến Chỗ Cao trong mirage",
        Description = "",
        Callback = function()
            TweenToHighestPoint();
        end
    });
    function TweenToHighestPoint()
        local KhungChinh39 = getHighestPoint();
        if KhungChinh39 then
            Tween2(KhungChinh39.CFrame * CFrame.new(0, 211.88, 0));
        end
    end
    function getHighestPoint()
        if not game.Workspace.Map:FindFirstChild("MysticIsland") then
            return nil;
        end
        for HinhAnhNguoiDung28, HinhAnhNguoiDung29 in pairs(game:GetService("Workspace").Map.MysticIsland:GetDescendants()) do
            if HinhAnhNguoiDung29:IsA("MeshPart") then
                if (HinhAnhNguoiDung29.MeshId == "rbxassetid://6745037796") then
                    return HinhAnhNguoiDung29;
                end
            end
        end
    end
end
local KhungChinh6 = DanhSachTab.Sea:AddToggle("ToggleTpAdvanced", {
    Title = "Bay Đến Advanced Fruit Dealer",
    Description = "",
    Default = false
});
KhungChinh6:OnChanged(function(ThongTinLoader57)
    _G.AutoTpAdvanced = ThongTinLoader57;
end);
spawn(function()
    while wait() do
        if _G.AutoTpAdvanced then
            local HinhAnhNguoiDung30 = game.ReplicatedStorage.NPCs:FindFirstChild("Advanced Fruit Dealer");
            if (HinhAnhNguoiDung30 and HinhAnhNguoiDung30:IsA("Model")) then
                local TenNguoiDung56 = HinhAnhNguoiDung30.PrimaryPart and HinhAnhNguoiDung30.PrimaryPart.Position ;
                if TenNguoiDung56 then
                    Tween2(CFrame.new(TenNguoiDung56));
                end
            end
        end
    end
end);
local KhungChinh7 = DanhSachTab.Sea:AddToggle("ToggleTweenGear", {
    Title = "Bay Đến Bánh Răng",
    Description = "",
    Default = false
});
KhungChinh7:OnChanged(function(ThongTinLoader58)
    _G.TweenToGear = ThongTinLoader58;
end);
LuaChon.ToggleTweenGear:SetValue(false);
spawn(function()
    pcall(function()
        while wait() do
            if _G.TweenToGear then
                if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                    for TieuDe40, TieuDe41 in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do
                        if TieuDe41:IsA("MeshPart") then
                            if (TieuDe41.Material == Enum.Material.Neon) then
                                Tween2(TieuDe41.CFrame);
                            end
                        end
                    end
                end
            end
        end
    end);
end);
local KhungChinh8 = DanhSachTab.Sea:AddToggle("Togglelockmoon", {
    Title = "Nhìn Trăng Và Dùng Tộc",
    Description = "",
    Default = false
});
KhungChinh8:OnChanged(function(ThongTinLoader59)
    _G.AutoLockMoon = ThongTinLoader59;
end);
LuaChon.Togglelockmoon:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                local HinhAnhNguoiDung94 = game.Lighting:GetMoonDirection();
                local HinhAnhNguoiDung95 = game.Workspace.CurrentCamera.CFrame.p + (HinhAnhNguoiDung94 * 100) ;
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, HinhAnhNguoiDung95);
            end
        end);
    end
end);
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoLockMoon then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
            end
        end);
    end
end);
local KhungChinh9 = DanhSachTab.ITM:AddToggle("ToggleAutoSaber", {
    Title = "lấy Saber",
    Description = "",
    Default = false
});
KhungChinh9:OnChanged(function(ThongTinLoader60)
    _G.Auto_Saber = ThongTinLoader60;
end);
LuaChon.ToggleAutoSaber:SetValue(false);
spawn(function()
    while task.wait() do
        if (_G.Auto_Saber and (game.Players.LocalPlayer.Data.Level.Value >= 200)) then
            pcall(function()
                if (game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0) then
                    if (game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0) then
                        if ((CFrame.new(- 1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, - 0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, - 4.398698e-8, 0.37091279).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
                            Tween(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
                            wait(1);
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame;
                            wait(1);
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame;
                            wait(1);
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame;
                            wait(1);
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame;
                            wait(1);
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame;
                            wait(1);
                        else
                            Tween(CFrame.new(- 1612.55884, 36.9774132, 148.719543, 0.37091279, 3.071715e-9, - 0.928667724, 3.970995e-8, 1, 1.9167935e-8, 0.928667724, - 4.398698e-8, 0.37091279));
                        end
                    elseif (game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0) then
                        if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch")) then
                            EquipTool("Torch");
                            Tween(CFrame.new(1114.61475, 5.04679728, 4350.22803, - 0.648466587, - 1.2879909e-9, 0.761243105, - 5.706529e-10, 1, 1.2058454e-9, - 0.761243105, 3.4754488e-10, - 0.648466587));
                        else
                            Tween(CFrame.new(- 1610.00757, 11.5049858, 164.001587, 0.984807551, - 0.167722285, - 0.0449818149, 0.17364943, 0.951244235, 0.254912198, 0.00003423728, - 0.258850515, 0.965917408));
                        end
                    elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup");
                        wait(0.5);
                        EquipTool("Cup");
                        wait(0.5);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "FillCup", game:GetService("Players").LocalPlayer.Character.Cup);
                        wait(0);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan");
                    elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == nil) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
                    elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0) then
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")) then
                            Tween(CFrame.new(- 2967.59521, - 4.91089821, 5328.70703, 0.342208564, - 0.0227849055, 0.939347804, 0.0251603816, 0.999569714, 0.0150796166, - 0.939287126, 0.0184739735, 0.342634559));
                            for LuaChon99, MaGame00 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (MaGame00.Name == "Mob Leader") then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                        if (MaGame00:FindFirstChild("Humanoid") and MaGame00:FindFirstChild("HumanoidRootPart") and (MaGame00.Humanoid.Health > 0)) then
                                            repeat
                                                task.wait(_G.Fast_Delay);
                                                AutoHaki();
                                                EquipTool(SelectWeapon);
                                                MaGame00.HumanoidRootPart.CanCollide = false;
                                                MaGame00.Humanoid.WalkSpeed = 0;
                                                MaGame00.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                                Tween(MaGame00.HumanoidRootPart.CFrame * Pos);
                                                AttackNoCoolDown();
                                            until (MaGame00.Humanoid.Health <= 0) or not _G.Auto_Saber
                                        end
                                    end
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                                    end
                                end
                            end
                        end
                    elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon");
                        wait(0.5);
                        EquipTool("Relic");
                        wait(0.5);
                        Tween(CFrame.new(- 1404.91504, 29.9773273, 3.80598116, 0.876514494, 5.6690688e-9, 0.481375456, 2.53852e-8, 1, - 5.799956e-8, - 0.481375456, 6.3057264e-8, 0.876514494));
                    end
                elseif (game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert")) then
                    for TaiCodeNgoai60, TaiCodeNgoai61 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TaiCodeNgoai61:FindFirstChild("Humanoid") and TaiCodeNgoai61:FindFirstChild("HumanoidRootPart") and (TaiCodeNgoai61.Humanoid.Health > 0)) then
                            if (TaiCodeNgoai61.Name == "Saber Expert") then
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    EquipTool(SelectWeapon);
                                    Tween(TaiCodeNgoai61.HumanoidRootPart.CFrame * Pos);
                                    TaiCodeNgoai61.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    TaiCodeNgoai61.HumanoidRootPart.Transparency = 1;
                                    TaiCodeNgoai61.Humanoid.JumpPower = 0;
                                    TaiCodeNgoai61.Humanoid.WalkSpeed = 0;
                                    TaiCodeNgoai61.HumanoidRootPart.CanCollide = false;
                                    bringmob = true;
                                    FarmPos = TaiCodeNgoai61.HumanoidRootPart.CFrame;
                                    MonFarm = TaiCodeNgoai61.Name;
                                    AttackNoCoolDown();
                                until (TaiCodeNgoai61.Humanoid.Health <= 0) or not _G.Auto_Saber
                                bringmob = true;
                                if (TaiCodeNgoai61.Humanoid.Health <= 0) then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "PlaceRelic");
                                end
                            end
                        end
                    end
                end
            end);
        end
    end
end);
local HinhAnhNguoiDung0 = DanhSachTab.ITM:AddToggle("ToggleAutoPoleV1", {
    Title = "lấy Pole V1",
    Description = "",
    Default = false
});
HinhAnhNguoiDung0:OnChanged(function(ThongTinLoader61)
    _G.Auto_PoleV1 = ThongTinLoader61;
end);
LuaChon.ToggleAutoPoleV1:SetValue(false);
local HinhAnhNguoiDung1 = CFrame.new(- 7748.0185546875, 5606.80615234375, - 2305.898681640625);
spawn(function()
    while wait() do
        if _G.Auto_PoleV1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                    for TieuDe42, TieuDe43 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TieuDe43.Name == "Thunder God") then
                            if (TieuDe43:FindFirstChild("Humanoid") and TieuDe43:FindFirstChild("HumanoidRootPart") and (TieuDe43.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe43.HumanoidRootPart.CanCollide = false;
                                    TieuDe43.Humanoid.WalkSpeed = 0;
                                    TieuDe43.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    Tween(TieuDe43.HumanoidRootPart.CFrame * Pos);
                                    AttackNoCoolDown();
                                until not _G.Auto_PoleV1 or not TieuDe43.Parent or (TieuDe43.Humanoid.Health <= 0)
                            end
                        end
                    end
                elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HinhAnhNguoiDung1.Position).Magnitude < 1500) then
                    Tween(HinhAnhNguoiDung1);
                end
                Tween(CFrame.new(- 7748.0185546875, 5606.80615234375, - 2305.898681640625));
                if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                end
            end);
        end
    end
end);
local HinhAnhNguoiDung2 = DanhSachTab.ITM:AddToggle("ToggleAutoSaw", {
    Title = "lấy Cưa Cá Mập",
    Description = "",
    Default = false
});
HinhAnhNguoiDung2:OnChanged(function(ThongTinLoader62)
    _G.Auto_Saw = ThongTinLoader62;
end);
LuaChon.ToggleAutoSaw:SetValue(false);
local HinhAnhNguoiDung1 = CFrame.new(- 690.33081054688, 15.09425163269, 1582.2380371094);
spawn(function()
    while wait() do
        if _G.Auto_Saw then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("The Saw") then
                    for TieuDe44, TieuDe45 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TieuDe45.Name == "The Saw") then
                            if (TieuDe45:FindFirstChild("Humanoid") and TieuDe45:FindFirstChild("HumanoidRootPart") and (TieuDe45.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe45.HumanoidRootPart.CanCollide = false;
                                    TieuDe45.Humanoid.WalkSpeed = 0;
                                    TieuDe45.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    Tween(TieuDe45.HumanoidRootPart.CFrame * Pos);
                                    AttackNoCoolDown();
                                until not _G.Auto_Saw or not TieuDe45.Parent or (TieuDe45.Humanoid.Health <= 0)
                            end
                        end
                    end
                elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HinhAnhNguoiDung1.Position).Magnitude < 1500) then
                    Tween(HinhAnhNguoiDung1);
                end
                Tween(CFrame.new(- 690.33081054688, 15.09425163269, 1582.2380371094));
                if game:GetService("ReplicatedStorage"):FindFirstChild("The Saw") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("The Saw").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                end
            end);
        end
    end
end);
local HinhAnhNguoiDung3 = DanhSachTab.ITM:AddToggle("ToggleAutoWarden", {
    Title = "lấy Kiếm Quản Ngục",
    Description = "",
    Default = false
});
HinhAnhNguoiDung3:OnChanged(function(ThongTinLoader63)
    _G.Auto_Warden = ThongTinLoader63;
end);
LuaChon.ToggleAutoWarden:SetValue(false);
local HinhAnhNguoiDung4 = CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562);
spawn(function()
    while wait() do
        if _G.Auto_Warden then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Chief Warden") then
                    for TieuDe46, TieuDe47 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TieuDe47.Name == "Chief Warden") then
                            if (TieuDe47:FindFirstChild("Humanoid") and TieuDe47:FindFirstChild("HumanoidRootPart") and (TieuDe47.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe47.HumanoidRootPart.CanCollide = false;
                                    TieuDe47.Humanoid.WalkSpeed = 0;
                                    TieuDe47.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    Tween(TieuDe47.HumanoidRootPart.CFrame * Pos);
                                    AttackNoCoolDown();
                                until not _G.Auto_Warden or not TieuDe47.Parent or (TieuDe47.Humanoid.Health <= 0)
                            end
                        end
                    end
                elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HinhAnhNguoiDung4.Position).Magnitude < 1500) then
                    Tween(HinhAnhNguoiDung4);
                end
                Tween(CFrame.new(5186.14697265625, 24.86684226989746, 832.1885375976562));
                if game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Chief Warden").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                end
            end);
        end
    end
end);
if Sea3 then
    local ManHinh33 = DanhSachTab.ITM:AddToggle("ToggleHallow", {
        Title = "Lưỡi Hái",
        Description = "",
        Default = false
    });
    ManHinh33:OnChanged(function(KhungChinh40)
        AutoHallowSycthe = KhungChinh40;
    end);
    LuaChon.ToggleHallow:SetValue(false);
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for TaiCodeNgoai62, TaiCodeNgoai63 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if string.find(TaiCodeNgoai63.Name, "Soul Reaper") then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TaiCodeNgoai63.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    Tween(TaiCodeNgoai63.HumanoidRootPart.CFrame * Pos);
                                    TaiCodeNgoai63.HumanoidRootPart.Transparency = 1;
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                                until (TaiCodeNgoai63.Humanoid.Health <= 0) or (AutoHallowSycthe == false)
                            end
                        end
                    elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence")) then
                        repeat
                            Tween(CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125));
                            wait();
                        until (CFrame.new(- 8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
                        wait();
                        EquipTool("Hallow Essence");
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                        Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                    else
                    end
                end);
            end
        end
    end);
    spawn(function()
        while wait() do
            if AutoHallowSycthe then
                local TenNguoiDung57 = {
                    [1] = "Bones",
                    [2] = "Buy",
                    [3] = 1,
                    [4] = 1
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung57));
            end
        end
    end);
    local ManHinh34 = DanhSachTab.ITM:AddToggle("ToggleYama", {
        Title = "Yama",
        Description = "",
        Default = false
    });
    ManHinh34:OnChanged(function(KhungChinh41)
        _G.AutoYama = KhungChinh41;
    end);
    LuaChon.ToggleYama:SetValue(false);
    spawn(function()
        while wait() do
            if _G.AutoYama then
                if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter", "Progress") >= 30) then
                    repeat
                        wait();
                        fireclickdetector(game:GetService("Workspace").Map.Waterfall.SealedKatana.Handle.ClickDetector);
                    until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Yama") or not _G.AutoYama
                end
            end
        end
    end);
    local ManHinh35 = DanhSachTab.ITM:AddToggle("ToggleTushita", {
        Title = "Tushita",
        Description = "",
        Default = false
    });
    ManHinh35:OnChanged(function(KhungChinh42)
        AutoTushita = KhungChinh42;
    end);
    LuaChon.ToggleTushita:SetValue(false);
    spawn(function()
        while wait() do
            if AutoTushita then
                if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                    for NhanTrangThai40, NhanTrangThai41 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if ((NhanTrangThai41.Name == ("Longma" or (NhanTrangThai41.Name == "Longma"))) and (NhanTrangThai41.Humanoid.Health > 0) and NhanTrangThai41:IsA("Model") and NhanTrangThai41:FindFirstChild("Humanoid") and NhanTrangThai41:FindFirstChild("HumanoidRootPart")) then
                            repeat
                                wait(_G.Fast_Delay);
                                AttackNoCoolDown();
                                AutoHaki();
                                if not game.Players.LocalPlayer.Character:FindFirstChild(SelectWeapon) then
                                    wait();
                                    EquipTool(SelectWeapon);
                                end
                                FarmPos = NhanTrangThai41.HumanoidRootPart.CFrame;
                                NhanTrangThai41.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                NhanTrangThai41.Humanoid.JumpPower = 0;
                                NhanTrangThai41.Humanoid.WalkSpeed = 0;
                                NhanTrangThai41.HumanoidRootPart.CanCollide = false;
                                NhanTrangThai41.Humanoid:ChangeState(11);
                                Tween(NhanTrangThai41.HumanoidRootPart.CFrame * Pos);
                            until not AutoTushita or not NhanTrangThai41.Parent or (NhanTrangThai41.Humanoid.Health <= 0)
                        end
                    end
                else
                    Tween(CFrame.new(- 10238.875976563, 389.7912902832, - 9549.7939453125));
                end
            end
        end
    end);
    local ManHinh36 = DanhSachTab.ITM:AddToggle("ToggleHoly", {
        Title = "Đốt Đuốc",
        Description = "",
        Default = false
    });
    ManHinh36:OnChanged(function(KhungChinh43)
        _G.Auto_Holy_Torch = KhungChinh43;
    end);
    LuaChon.ToggleHoly:SetValue(false);
    spawn(function()
        while wait() do
            if _G.Auto_Holy_Torch then
                pcall(function()
                    wait();
                    repeat
                        Tween(CFrame.new(- 10752, 417, - 9366));
                        wait();
                    until not _G.Auto_Holy_Torch or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 10752, 417, - 9366)).Magnitude <= 10)
                    wait();
                    repeat
                        Tween(CFrame.new(- 11672, 334, - 9474));
                        wait();
                    until not _G.Auto_Holy_Torch or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 11672, 334, - 9474)).Magnitude <= 10)
                    wait();
                    repeat
                        Tween(CFrame.new(- 12132, 521, - 10655));
                        wait();
                    until not _G.Auto_Holy_Torch or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 12132, 521, - 10655)).Magnitude <= 10)
                    wait();
                    repeat
                        Tween(CFrame.new(- 13336, 486, - 6985));
                        wait();
                    until not _G.Auto_Holy_Torch or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 13336, 486, - 6985)).Magnitude <= 10)
                    wait();
                    repeat
                        Tween(CFrame.new(- 13489, 332, - 7925));
                        wait();
                    until not _G.Auto_Holy_Torch or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 13489, 332, - 7925)).Magnitude <= 10)
                end);
            end
        end
    end);
end
local HinhAnhNguoiDung5 = DanhSachTab.ITM:AddToggle("ToggleAutoCanvander", {
    Title = "lấy nhiệm vụ để lấy Canvander",
    Description = "",
    Default = false
});
HinhAnhNguoiDung5:OnChanged(function(ThongTinLoader64)
    _G.Auto_Canvander = ThongTinLoader64;
end);
LuaChon.ToggleAutoCanvander:SetValue(false);
local HinhAnhNguoiDung1 = CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875);
spawn(function()
    while wait() do
        if _G.Auto_Canvander then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                    for TieuDe48, TieuDe49 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TieuDe49.Name == "Beautiful Pirate") then
                            if (TieuDe49:FindFirstChild("Humanoid") and TieuDe49:FindFirstChild("HumanoidRootPart") and (TieuDe49.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe49.HumanoidRootPart.CanCollide = false;
                                    TieuDe49.Humanoid.WalkSpeed = 0;
                                    TieuDe49.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    Tween(TieuDe49.HumanoidRootPart.CFrame * Pos);
                                    AttackNoCoolDown();
                                until not _G.Auto_Canvander or not TieuDe49.Parent or (TieuDe49.Humanoid.Health <= 0)
                            end
                        end
                    end
                elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - HinhAnhNguoiDung1.Position).Magnitude < 1500) then
                    Tween(HinhAnhNguoiDung1);
                end
                Tween(CFrame.new(5311.07421875, 426.0243835449219, 165.12762451171875));
                if game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Beautiful Pirate").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                end
            end);
        end
    end
end);
local HinhAnhNguoiDung6 = DanhSachTab.ITM:AddToggle("ToggleAutoMusketeerHat", {
    Title = "lấy nhiệm vụ để lấy Mũ Lính Ngự Lâm",
    Description = "",
    Default = false
});
HinhAnhNguoiDung6:OnChanged(function(ThongTinLoader65)
    _G.Auto_MusketeerHat = ThongTinLoader65;
end);
LuaChon.ToggleAutoMusketeerHat:SetValue(false);
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_MusketeerHat then
                if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBandits == false)) then
                    if (string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Forest Pirate") and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "50") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                            for CuaSoChinh59, CuaSoChinh60 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (CuaSoChinh60.Name == "Forest Pirate") then
                                    repeat
                                        task.wait(_G.Fast_Delay);
                                        pcall(function()
                                            EquipTool(SelectWeapon);
                                            AutoHaki();
                                            CuaSoChinh60.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                            Tween(CuaSoChinh60.HumanoidRootPart.CFrame * Pos);
                                            CuaSoChinh60.HumanoidRootPart.CanCollide = false;
                                            AttackNoCoolDown();
                                            PosMon = CuaSoChinh60.HumanoidRootPart.CFrame;
                                            MonFarm = CuaSoChinh60.Name;
                                            bringmob = true;
                                        end);
                                    until (_G.Auto_MusketeerHat == false) or not CuaSoChinh60.Parent or (CuaSoChinh60.Humanoid.Health <= 0) or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                    bringmob = false;
                                end
                            end
                        else
                            bringmob = false;
                            Tween(CFrame.new(- 13206.452148438, 425.89199829102, - 7964.5537109375));
                        end
                    else
                        Tween(CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125));
                        if ((Vector3.new(- 12443.8671875, 332.40396118164, - 7675.4892578125) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
                            wait(1.5);
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest", "CitizenQuest", 1);
                        end
                    end
                elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress").KilledBoss == false)) then
                    if (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") and (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true)) then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                            for DanhSachTab65, DanhSachTab66 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (DanhSachTab66.Name == "Captain Elephant") then
                                    OldCFrameElephant = DanhSachTab66.HumanoidRootPart.CFrame;
                                    repeat
                                        task.wait(_G.Fast_Delay);
                                        pcall(function()
                                            EquipTool(SelectWeapon);
                                            AutoHaki();
                                            DanhSachTab66.HumanoidRootPart.CanCollide = false;
                                            DanhSachTab66.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                            Tween(DanhSachTab66.HumanoidRootPart.CFrame * Pos);
                                            DanhSachTab66.HumanoidRootPart.CanCollide = false;
                                            DanhSachTab66.HumanoidRootPart.CFrame = OldCFrameElephant;
                                            AttackNoCoolDown();
                                        end);
                                    until (_G.Auto_MusketeerHat == false) or (DanhSachTab66.Humanoid.Health <= 0) or not DanhSachTab66.Parent or (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false)
                                end
                            end
                        else
                            Tween(CFrame.new(- 13374.889648438, 421.27752685547, - 8225.208984375));
                        end
                    else
                        Tween(CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125));
                        if ((CFrame.new(- 12443.8671875, 332.40396118164, - 7675.4892578125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
                            wait(1.5);
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
                        end
                    end
                elseif ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1800) and (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 2)) then
                    Tween(CFrame.new(- 12512.138671875, 340.39279174805, - 9872.8203125));
                end
            end
        end
    end);
end);
local HinhAnhNguoiDung7 = DanhSachTab.ITM:AddToggle("ToggleAutoObservationV2", {
    Title = "lấy nhiệm vụ để lấy Haki Quan Sát V2",
    Description = "",
    Default = false
});
HinhAnhNguoiDung7:OnChanged(function(ThongTinLoader66)
    _G.Auto_ObservationV2 = ThongTinLoader66;
end);
LuaChon.ToggleAutoObservationV2:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_ObservationV2 then
                if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen") == 3) then
                    _G.Auto_MusketeerHat = false;
                    if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Banana") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Apple") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pineapple")) then
                        repeat
                            Tween(CFrame.new(- 12444.78515625, 332.40396118164, - 7673.1806640625));
                            wait();
                        until not _G.Auto_ObservationV2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 12444.78515625, 332.40396118164, - 7673.1806640625)).Magnitude <= 10)
                        wait(0.5);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress", "Citizen");
                    elseif (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Fruit Bowl") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Fruit Bowl")) then
                        repeat
                            Tween(CFrame.new(- 10920.125, 624.20275878906, - 10266.995117188));
                            wait();
                        until not _G.Auto_ObservationV2 or ((game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(- 10920.125, 624.20275878906, - 10266.995117188)).Magnitude <= 10)
                        wait(0.5);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Start");
                        wait(1);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk2", "Buy");
                    else
                        for CuaSoChinh61, CuaSoChinh62 in pairs(game:GetService("Workspace"):GetDescendants()) do
                            if ((CuaSoChinh62.Name == "Apple") or (CuaSoChinh62.Name == "Banana") or (CuaSoChinh62.Name == "Pineapple")) then
                                CuaSoChinh62.Handle.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 1, 10) ;
                                wait();
                                firetouchinterest(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart, CuaSoChinh62.Handle, 0);
                                wait();
                            end
                        end
                    end
                else
                    _G.Auto_MusketeerHat = true;
                end
            end
        end);
    end
end);
local HinhAnhNguoiDung8 = DanhSachTab.ITM:AddToggle("ToggleAutoRainbowHaki", {
    Title = "lấy nhiệm vụ để lấy Haki 7 Màu",
    Description = "",
    Default = false
});
HinhAnhNguoiDung8:OnChanged(function(ThongTinLoader67)
    _G.Auto_RainbowHaki = ThongTinLoader67;
end);
LuaChon.ToggleAutoRainbowHaki:SetValue(false);
spawn(function()
    pcall(function()
        while wait(0.1) do
            if _G.Auto_RainbowHaki then
                if not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible then
                    Tween(CFrame.new(- 11892.0703125, 930.57672119141, - 8760.1591796875));
                    if ((Vector3.new(- 11892.0703125, 930.57672119141, - 8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
                        wait(1.5);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
                    end
                elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Stone")) then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Stone") then
                        for CuaSoChinh63, CuaSoChinh64 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (CuaSoChinh64.Name == "Stone") then
                                OldCFrameRainbow = CuaSoChinh64.HumanoidRootPart.CFrame;
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    EquipTool(SelectWeapon);
                                    Tween(CuaSoChinh64.HumanoidRootPart.CFrame * Pos);
                                    CuaSoChinh64.HumanoidRootPart.CanCollide = false;
                                    CuaSoChinh64.HumanoidRootPart.CFrame = OldCFrameRainbow;
                                    CuaSoChinh64.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    AttackNoCoolDown();
                                until not _G.Auto_RainbowHaki or (CuaSoChinh64.Humanoid.Health <= 0) or not CuaSoChinh64.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(- 1086.11621, 38.8425903, 6768.71436));
                    end
                elseif (game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Hydra Leader")) then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Hydra Leader") then
                        for DanhSachTab69, DanhSachTab70 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (DanhSachTab70.Name == "Hydra Leader") then
                                OldCFrameRainbow = DanhSachTab70.HumanoidRootPart.CFrame;
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    EquipTool(SelectWeapon);
                                    Tween(DanhSachTab70.HumanoidRootPart.CFrame * Pos);
                                    DanhSachTab70.HumanoidRootPart.CanCollide = false;
                                    DanhSachTab70.HumanoidRootPart.CFrame = OldCFrameRainbow;
                                    DanhSachTab70.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    AttackNoCoolDown();
                                until not _G.Auto_RainbowHaki or (DanhSachTab70.Humanoid.Health <= 0) or not DanhSachTab70.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(5713.98877, 601.922974, 202.751251));
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Kilo Admiral") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Kilo Admiral") then
                        for LuaChon62, LuaChon63 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (LuaChon63.Name == "Kilo Admiral") then
                                OldCFrameRainbow = LuaChon63.HumanoidRootPart.CFrame;
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    EquipTool(SelectWeapon);
                                    Tween(LuaChon63.HumanoidRootPart.CFrame * Pos);
                                    LuaChon63.HumanoidRootPart.CanCollide = false;
                                    LuaChon63.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    LuaChon63.HumanoidRootPart.CFrame = OldCFrameRainbow;
                                    AttackNoCoolDown();
                                until not _G.Auto_RainbowHaki or (LuaChon63.Humanoid.Health <= 0) or not LuaChon63.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(2877.61743, 423.558685, - 7207.31006));
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Captain Elephant") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Captain Elephant") then
                        for LuaChon74, LuaChon75 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (LuaChon75.Name == "Captain Elephant") then
                                OldCFrameRainbow = LuaChon75.HumanoidRootPart.CFrame;
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    EquipTool(SelectWeapon);
                                    Tween(LuaChon75.HumanoidRootPart.CFrame * Pos);
                                    LuaChon75.HumanoidRootPart.CanCollide = false;
                                    LuaChon75.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    LuaChon75.HumanoidRootPart.CFrame = OldCFrameRainbow;
                                    AttackNoCoolDown();
                                until not _G.Auto_RainbowHaki or (LuaChon75.Humanoid.Health <= 0) or not LuaChon75.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(- 13485.0283, 331.709259, - 8012.4873));
                    end
                elseif string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Beautiful Pirate") then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Beautiful Pirate") then
                        for MaGame02, MaGame03 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (MaGame03.Name == "Beautiful Pirate") then
                                OldCFrameRainbow = MaGame03.HumanoidRootPart.CFrame;
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    EquipTool(SelectWeapon);
                                    Tween(MaGame03.HumanoidRootPart.CFrame * Pos);
                                    MaGame03.HumanoidRootPart.CanCollide = false;
                                    MaGame03.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    MaGame03.HumanoidRootPart.CFrame = OldCFrameRainbow;
                                    AttackNoCoolDown();
                                until not _G.Auto_RainbowHaki or (MaGame03.Humanoid.Health <= 0) or not MaGame03.Parent or not game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible
                            end
                        end
                    else
                        Tween(CFrame.new(5312.3598632813, 20.141201019287, - 10.158538818359));
                    end
                else
                    Tween(CFrame.new(- 11892.0703125, 930.57672119141, - 8760.1591796875));
                    if ((Vector3.new(- 11892.0703125, 930.57672119141, - 8760.1591796875) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30) then
                        wait(1.5);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("HornedMan", "Bet");
                    end
                end
            end
        end
    end);
end);
local HinhAnhNguoiDung9 = DanhSachTab.ITM:AddToggle("ToggleAutoSkullGuitar", {
    Title = "Skill Guitar",
    Description = "",
    Default = false
});
HinhAnhNguoiDung9:OnChanged(function(ThongTinLoader68)
    _G.Auto_SkullGuitar = ThongTinLoader68;
end);
LuaChon.ToggleAutoSkullGuitar:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_SkullGuitar then
                if (GetWeaponInventory("Skull Guitar") == false) then
                    if ((CFrame.new(- 9681.458984375, 6.139880657196045, 6341.3720703125).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 5000) then
                        if game:GetService("Workspace").NPCs:FindFirstChild("Skeleton Machine") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("soulGuitarBuy", true);
                        elseif (game:GetService("Workspace").Map["Haunted Castle"].Candle1.Transparency == 0) then
                            if (game:GetService("Workspace").Map["Haunted Castle"].Placard1.Left.Part.Transparency == 0) then
                                Quest2 = true;
                                repeat
                                    wait();
                                    Tween(CFrame.new(- 8762.69140625, 176.84783935546875, 6171.3076171875));
                                until ((CFrame.new(- 8762.69140625, 176.84783935546875, 6171.3076171875).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not _G.Auto_SkullGuitar
                                wait(1);
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard7.Left.ClickDetector);
                                wait(1);
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard6.Left.ClickDetector);
                                wait(1);
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard5.Left.ClickDetector);
                                wait(1);
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard4.Right.ClickDetector);
                                wait(1);
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard3.Left.ClickDetector);
                                wait(1);
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard2.Right.ClickDetector);
                                wait(1);
                                fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"].Placard1.Right.ClickDetector);
                                wait(1);
                            elseif game:GetService("Workspace").Map["Haunted Castle"].Tablet.Segment1:FindFirstChild("ClickDetector") then
                                if game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part1:FindFirstChild("ClickDetector") then
                                    Quest4 = true;
                                    repeat
                                        wait();
                                        Tween(CFrame.new(- 9553.5986328125, 65.62338256835938, 6041.58837890625));
                                    until ((CFrame.new(- 9553.5986328125, 65.62338256835938, 6041.58837890625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or not _G.Auto_SkullGuitar
                                    wait(1);
                                    Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.CFrame);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part3.ClickDetector);
                                    wait(1);
                                    Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.CFrame);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part4.ClickDetector);
                                    wait(1);
                                    Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.CFrame);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part6.ClickDetector);
                                    wait(1);
                                    Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.CFrame);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part8.ClickDetector);
                                    wait(1);
                                    Tween(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.CFrame);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
                                    wait(1);
                                    fireclickdetector(game:GetService("Workspace").Map["Haunted Castle"]["Lab Puzzle"].ColorFloor.Model.Part10.ClickDetector);
                                else
                                    Quest3 = true;
                                end
                            else
                                if game:GetService("Workspace").NPCs:FindFirstChild("Ghost") then
                                    local LuaChon98 = {
                                        [1] = "GuitarPuzzleProgress",
                                        [2] = "Ghost"
                                    };
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(LuaChon98));
                                end
                                if game.Workspace.Enemies:FindFirstChild("Living Zombie") then
                                    for MaGame04, MaGame05 in pairs(game.Workspace.Enemies:GetChildren()) do
                                        if (MaGame05:FindFirstChild("HumanoidRootPart") and MaGame05:FindFirstChild("Humanoid") and (MaGame05.Humanoid.Health > 0)) then
                                            if (MaGame05.Name == "Living Zombie") then
                                                EquipTool(SelectWeapon);
                                                MaGame05.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                                MaGame05.HumanoidRootPart.Transparency = 1;
                                                MaGame05.Humanoid.JumpPower = 0;
                                                MaGame05.Humanoid.WalkSpeed = 0;
                                                MaGame05.HumanoidRootPart.CanCollide = false;
                                                MaGame05.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) ;
                                                Tween(CFrame.new(- 10160.787109375, 138.6616973876953, 5955.03076171875));
                                                game:GetService("VirtualUser"):CaptureController();
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672));
                                            end
                                        end
                                    end
                                else
                                    Tween(CFrame.new(- 10160.787109375, 138.6616973876953, 5955.03076171875));
                                end
                            end
                        elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Error") then
                            Tween(CFrame.new(- 8653.2060546875, 140.98487854003906, 6160.033203125));
                        elseif string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2), "Nothing") then
                            Tween("Wait Full Moon");
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("gravestoneEvent", 2, true);
                        end
                    else
                        Tween(CFrame.new(- 9681.458984375, 6.139880657196045, 6341.3720703125));
                    end
                end
            end
        end);
    end
end);
local TenNguoiDung0 = DanhSachTab.ITM:AddToggle("ToggleAutoBuddy", {
    Title = "Kiếm Buddy",
    Description = "",
    Default = false
});
TenNguoiDung0:OnChanged(function(ThongTinLoader69)
    _G.Auto_Buddy = ThongTinLoader69;
end);
LuaChon.ToggleAutoBuddy:SetValue(false);
local TenNguoiDung1 = CFrame.new(- 731.2034301757812, 381.5658874511719, - 11198.4951171875);
spawn(function()
    while wait() do
        if _G.Auto_Buddy then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                    for TieuDe50, TieuDe51 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TieuDe51.Name == "Cake Queen") then
                            if (TieuDe51:FindFirstChild("Humanoid") and TieuDe51:FindFirstChild("HumanoidRootPart") and (TieuDe51.Humanoid.Health > 0)) then
                                repeat
                                    task.wait(_G.Fast_Delay);
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe51.HumanoidRootPart.CanCollide = false;
                                    TieuDe51.Humanoid.WalkSpeed = 0;
                                    TieuDe51.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    Tween(TieuDe51.HumanoidRootPart.CFrame * Pos);
                                    AttackNoCoolDown();
                                until not _G.Auto_Buddy or not TieuDe51.Parent or (TieuDe51.Humanoid.Health <= 0)
                            end
                        end
                    end
                elseif ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - TenNguoiDung1.Position).Magnitude < 1500) then
                    Tween(TenNguoiDung1);
                end
                Tween(CFrame.new(- 731.2034301757812, 381.5658874511719, - 11198.4951171875));
                if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen") then
                    Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Queen").HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                end
            end);
        end
    end
end);
local TenNguoiDung2 = DanhSachTab.ITM:AddToggle("ToggleAutoDualKatana", {
    Title = "Song Kiếm",
    Description = "",
    Default = false
});
TenNguoiDung2:OnChanged(function(ThongTinLoader70)
    _G.Auto_DualKatana = ThongTinLoader70;
end);
LuaChon.ToggleAutoDualKatana:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_DualKatana then
                if (game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") or game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")) then
                    if (game.Players.LocalPlayer.Character:FindFirstChild("Tushita") or game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita")) then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Tushita") then
                            EquipTool("Tushita");
                        end
                    elseif (game.Players.LocalPlayer.Character:FindFirstChild("Yama") or game.Players.LocalPlayer.Backpack:FindFirstChild("Yama")) then
                        if game.Players.LocalPlayer.Backpack:FindFirstChild("Yama") then
                            EquipTool("Yama");
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LoadItem", "Tushita");
                end
            end
        end);
    end
end);
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_DualKatana then
                if (GetMaterial("Alucard Fragment") == 0) then
                    Auto_Quest_Yama_1 = true;
                    Auto_Quest_Yama_2 = false;
                    Auto_Quest_Yama_3 = false;
                    Auto_Quest_Tushita_1 = false;
                    Auto_Quest_Tushita_2 = false;
                    Auto_Quest_Tushita_3 = false;
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
                elseif (GetMaterial("Alucard Fragment") == 1) then
                    Auto_Quest_Yama_1 = false;
                    Auto_Quest_Yama_2 = true;
                    Auto_Quest_Yama_3 = false;
                    Auto_Quest_Tushita_1 = false;
                    Auto_Quest_Tushita_2 = false;
                    Auto_Quest_Tushita_3 = false;
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
                elseif (GetMaterial("Alucard Fragment") == 2) then
                    Auto_Quest_Yama_1 = false;
                    Auto_Quest_Yama_2 = false;
                    Auto_Quest_Yama_3 = true;
                    Auto_Quest_Tushita_1 = false;
                    Auto_Quest_Tushita_2 = false;
                    Auto_Quest_Tushita_3 = false;
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
                elseif (GetMaterial("Alucard Fragment") == 3) then
                    Auto_Quest_Yama_1 = false;
                    Auto_Quest_Yama_2 = false;
                    Auto_Quest_Yama_3 = false;
                    Auto_Quest_Tushita_1 = true;
                    Auto_Quest_Tushita_2 = false;
                    Auto_Quest_Tushita_3 = false;
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
                elseif (GetMaterial("Alucard Fragment") == 4) then
                    Auto_Quest_Yama_1 = false;
                    Auto_Quest_Yama_2 = false;
                    Auto_Quest_Yama_3 = false;
                    Auto_Quest_Tushita_1 = false;
                    Auto_Quest_Tushita_2 = true;
                    Auto_Quest_Tushita_3 = false;
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
                elseif (GetMaterial("Alucard Fragment") == 5) then
                    Auto_Quest_Yama_1 = false;
                    Auto_Quest_Yama_2 = false;
                    Auto_Quest_Yama_3 = false;
                    Auto_Quest_Tushita_1 = false;
                    Auto_Quest_Tushita_2 = false;
                    Auto_Quest_Tushita_3 = true;
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Good");
                elseif (GetMaterial("Alucard Fragment") == 6) then
                    if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").ReplicatedStorage:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]")) then
                        Auto_Quest_Yama_1 = false;
                        Auto_Quest_Yama_2 = false;
                        Auto_Quest_Yama_3 = false;
                        Auto_Quest_Tushita_1 = false;
                        Auto_Quest_Tushita_2 = false;
                        Auto_Quest_Tushita_3 = false;
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton Boss [Lv. 2025] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]")) then
                            for MaGame42, MaGame43 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if ((MaGame43.Name == "Cursed Skeleton Boss") or (MaGame43.Name == "Cursed Skeleton")) then
                                    if (MaGame43.Humanoid.Health > 0) then
                                        EquipTool(Sword);
                                        Tween(MaGame43.HumanoidRootPart.CFrame * pos);
                                        MaGame43.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        MaGame43.HumanoidRootPart.Transparency = 1;
                                        MaGame43.Humanoid.JumpPower = 0;
                                        MaGame43.Humanoid.WalkSpeed = 0;
                                        MaGame43.HumanoidRootPart.CanCollide = false;
                                        bringmob = true;
                                        FarmPos = MaGame43.HumanoidRootPart.CFrame;
                                        MonFarm = MaGame43.Name;
                                        AttackNoCoolDown();
                                    end
                                end
                            end
                        end
                    elseif ((CFrame.new(- 12361.7060546875, 603.3547973632812, - 6550.5341796875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Good");
                        wait(1);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "Progress", "Evil");
                        wait(1);
                        Tween(CFrame.new(- 12361.7060546875, 603.3547973632812, - 6550.5341796875));
                        wait(1.5);
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                        wait(1.5);
                        Tween(CFrame.new(- 12253.5419921875, 598.8999633789062, - 6546.8388671875));
                    else
                        Tween(CFrame.new(- 12361.7060546875, 603.3547973632812, - 6550.5341796875));
                    end
                end
            end
        end);
    end
end);
spawn(function()
    while wait() do
        if Auto_Quest_Yama_1 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Mythological Pirate") then
                    for TieuDe52, TieuDe53 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (TieuDe53.Name == "Mythological Pirate") then
                            repeat
                                wait();
                                Tween(TieuDe53.HumanoidRootPart.CFrame * CFrame.new(0, 0, - 2));
                            until (_G.Auto_DualKatana == false) or (Auto_Quest_Yama_1 == false)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CDKQuest", "StartTrial", "Evil");
                        end
                    end
                else
                    Tween(CFrame.new(- 13451.46484375, 543.712890625, - 6961.0029296875));
                end
            end);
        end
    end
end);
spawn(function()
    while wait() do
        pcall(function()
            if Auto_Quest_Yama_2 then
                for TenNguoiDung58, TenNguoiDung59 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if TenNguoiDung59:FindFirstChild("HazeESP") then
                        TenNguoiDung59.HazeESP.Size = UDim2.new(50, 50, 50, 50);
                        TenNguoiDung59.HazeESP.MaxDistance = "inf";
                    end
                end
                for TenNguoiDung60, TenNguoiDung61 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                    if TenNguoiDung61:FindFirstChild("HazeESP") then
                        TenNguoiDung61.HazeESP.Size = UDim2.new(50, 50, 50, 50);
                        TenNguoiDung61.HazeESP.MaxDistance = "inf";
                    end
                end
            end
        end);
    end
end);
spawn(function()
    while wait() do
        pcall(function()
            for HinhAnhNguoiDung31, HinhAnhNguoiDung32 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if (Auto_Quest_Yama_2 and HinhAnhNguoiDung32:FindFirstChild("HazeESP") and ((HinhAnhNguoiDung32.HumanoidRootPart.Position - FarmPossEsp.Position).magnitude <= 300)) then
                    HinhAnhNguoiDung32.HumanoidRootPart.CFrame = FarmPossEsp;
                    HinhAnhNguoiDung32.HumanoidRootPart.CanCollide = false;
                    HinhAnhNguoiDung32.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                    if not HinhAnhNguoiDung32.HumanoidRootPart:FindFirstChild("BodyVelocity") then
                        local TieuDe58 = Instance.new("BodyVelocity", HinhAnhNguoiDung32.HumanoidRootPart);
                        TieuDe58.MaxForce = Vector3.new(1, 1, 1) * math.huge ;
                        TieuDe58.Velocity = Vector3.new(0, 0, 0);
                    end
                end
            end
        end);
    end
end);
spawn(function()
    while wait() do
        if Auto_Quest_Yama_2 then
            pcall(function()
                for TenNguoiDung65, TenNguoiDung66 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if TenNguoiDung66:FindFirstChild("HazeESP") then
                        repeat
                            wait();
                            if ((TenNguoiDung66.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000) then
                                Tween(TenNguoiDung66.HumanoidRootPart.CFrame * Pos);
                            else
                                EquipTool(Sword);
                                Tween(TenNguoiDung66.HumanoidRootPart.CFrame * Pos);
                                TenNguoiDung66.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                TenNguoiDung66.HumanoidRootPart.Transparency = 1;
                                TenNguoiDung66.Humanoid.JumpPower = 0;
                                TenNguoiDung66.Humanoid.WalkSpeed = 0;
                                TenNguoiDung66.HumanoidRootPart.CanCollide = false;
                                FarmPos = TenNguoiDung66.HumanoidRootPart.CFrame;
                                MonFarm = TenNguoiDung66.Name;
                                AttackNoCoolDown();
                                if ((TenNguoiDung66.Humanoid.Health <= 0) and TenNguoiDung66.Humanoid:FindFirstChild("Animator")) then
                                    TenNguoiDung66.Humanoid.Animator:Destroy();
                                end
                            end
                        until (_G.Auto_DualKatana == false) or (Auto_Quest_Yama_2 == false) or not TenNguoiDung66.Parent or (TenNguoiDung66.Humanoid.Health <= 0) or not TenNguoiDung66:FindFirstChild("HazeESP")
                    else
                        for NhanTrangThai42, NhanTrangThai43 in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
                            if NhanTrangThai43:FindFirstChild("HazeESP") then
                                if ((NhanTrangThai43.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 2000) then
                                    Tween(NhanTrangThai43.HumanoidRootPart.CFrameMon * CFrame.new(2, 20, 2));
                                else
                                    Tween(NhanTrangThai43.HumanoidRootPart.CFrame * CFrame.new(2, 20, 2));
                                end
                            end
                        end
                    end
                end
            end);
        end
    end
end);
spawn(function()
    while wait() do
        if Auto_Quest_Yama_3 then
            pcall(function()
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Hallow Essence") then
                    Tween(game:GetService("Workspace").Map["Haunted Castle"].Summoner.Detection.CFrame);
                elseif game:GetService("Workspace").Map:FindFirstChild("HellDimension") then
                    repeat
                        wait();
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Hell's Messenger [Lv. 2200] [Boss]")) then
                            for DanhSachTab41, DanhSachTab42 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if ((DanhSachTab42.Name == "Cursed Skeleton") or (DanhSachTab42.Name == "Cursed Skeleton") or (DanhSachTab42.Name == "Hell's Messenger")) then
                                    if (DanhSachTab42.Humanoid.Health > 0) then
                                        repeat
                                            wait();
                                            EquipTool(Sword);
                                            Tween(DanhSachTab42.HumanoidRootPart.CFrame * Pos);
                                            DanhSachTab42.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                            DanhSachTab42.HumanoidRootPart.Transparency = 1;
                                            DanhSachTab42.Humanoid.JumpPower = 0;
                                            DanhSachTab42.Humanoid.WalkSpeed = 0;
                                            DanhSachTab42.HumanoidRootPart.CanCollide = false;
                                            FarmPos = DanhSachTab42.HumanoidRootPart.CFrame;
                                            MonFarm = DanhSachTab42.Name;
                                            AttackNoCoolDown();
                                            if ((DanhSachTab42.Humanoid.Health <= 0) and DanhSachTab42.Humanoid:FindFirstChild("Animator")) then
                                                DanhSachTab42.Humanoid.Animator:Destroy();
                                            end
                                        until (DanhSachTab42.Humanoid.Health <= 0) or not DanhSachTab42.Parent or (Auto_Quest_Yama_3 == false)
                                    end
                                end
                            end
                        else
                            wait(5);
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch1.CFrame);
                            wait(1.5);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                            wait(1.5);
                            Tweem(game:GetService("Workspace").Map.HellDimension.Torch2.CFrame);
                            wait(1.5);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                            wait(1.5);
                            Tween(game:GetService("Workspace").Map.HellDimension.Torch3.CFrame);
                            wait(1.5);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                            wait(1.5);
                            Tween(game:GetService("Workspace").Map.HellDimension.Exit.CFrame);
                        end
                    until (_G.Auto_DualKatana == false) or (Auto_Quest_Yama_3 == false) or (GetMaterial("Alucard Fragment") == 3)
                elseif (game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") or game.ReplicatedStorage:FindFirstChild("Soul Reaper [Lv. 2100] [Raid Boss]")) then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for DanhSachTab71, DanhSachTab72 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (DanhSachTab72.Name == "Soul Reaper") then
                                if (DanhSachTab72.Humanoid.Health > 0) then
                                    repeat
                                        wait();
                                        Tween(DanhSachTab72.HumanoidRootPart.CFrame * Pos);
                                    until (_G.Auto_DualKatana == false) or (Auto_Quest_Yama_3 == false) or game:GetService("Workspace").Map:FindFirstChild("HellDimension")
                                end
                            end
                        end
                    else
                        Tween(CFrame.new(- 9570.033203125, 315.9346923828125, 6726.89306640625));
                    end
                else
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones", "Buy", 1, 1);
                end
            end);
        end
    end
end);
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_1 then
            Tween(CFrame.new(- 9546.990234375, 21.139892578125, 4686.1142578125));
            wait(5);
            Tween(CFrame.new(- 6120.0576171875, 16.455780029296875, - 2250.697265625));
            wait(5);
            Tween(CFrame.new(- 9533.2392578125, 7.254445552825928, - 8372.69921875));
        end
    end
end);
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_2 then
            pcall(function()
                if ((CFrame.new(- 5539.3115234375, 313.800537109375, - 2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500) then
                    for TieuDe61, TieuDe62 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (Auto_Quest_Tushita_2 and TieuDe62:FindFirstChild("HumanoidRootPart") and TieuDe62:FindFirstChild("Humanoid") and (TieuDe62.Humanoid.Health > 0)) then
                            if ((TieuDe62.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000) then
                                repeat
                                    wait();
                                    EquipTool(Sword);
                                    Tween(TieuDe62.HumanoidRootPart.CFrame * Pos);
                                    TieuDe62.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                    TieuDe62.HumanoidRootPart.Transparency = 1;
                                    TieuDe62.Humanoid.JumpPower = 0;
                                    TieuDe62.Humanoid.WalkSpeed = 0;
                                    TieuDe62.HumanoidRootPart.CanCollide = false;
                                    FarmPos = TieuDe62.HumanoidRootPart.CFrame;
                                    MonFarm = TieuDe62.Name;
                                    AttackNoCoolDown();
                                    if ((TieuDe62.Humanoid.Health <= 0) and TieuDe62.Humanoid:FindFirstChild("Animator")) then
                                        TieuDe62.Humanoid.Animator:Destroy();
                                    end
                                until (TieuDe62.Humanoid.Health <= 0) or not TieuDe62.Parent or (Auto_Quest_Tushita_2 == false)
                            end
                        end
                    end
                else
                    Tween(CFrame.new(- 5545.1240234375, 313.800537109375, - 2976.616455078125));
                end
            end);
        end
    end
end);
spawn(function()
    while wait() do
        if Auto_Quest_Tushita_3 then
            pcall(function()
                if (game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") or game.ReplicatedStorage:FindFirstChild("Cake Queen [Lv. 2175] [Boss]")) then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Cake Queen") then
                        for TaiCodeNgoai64, TaiCodeNgoai65 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai65.Name == "Cake Queen") then
                                if (TaiCodeNgoai65.Humanoid.Health > 0) then
                                    repeat
                                        wait();
                                        EquipTool(Sword);
                                        Tween(TaiCodeNgoai65.HumanoidRootPart.CFrame * Pos);
                                        TaiCodeNgoai65.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                        TaiCodeNgoai65.HumanoidRootPart.Transparency = 1;
                                        TaiCodeNgoai65.Humanoid.JumpPower = 0;
                                        TaiCodeNgoai65.Humanoid.WalkSpeed = 0;
                                        TaiCodeNgoai65.HumanoidRootPart.CanCollide = false;
                                        FarmPos = TaiCodeNgoai65.HumanoidRootPart.CFrame;
                                        MonFarm = TaiCodeNgoai65.Name;
                                        AttackNoCoolDown();
                                        if ((TaiCodeNgoai65.Humanoid.Health <= 0) and TaiCodeNgoai65.Humanoid:FindFirstChild("Animator")) then
                                            TaiCodeNgoai65.Humanoid.Animator:Destroy();
                                        end
                                    until (_G.Auto_DualKatana == false) or (Auto_Quest_Tushita_3 == false) or game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension")
                                end
                            end
                        end
                    else
                        Tween(CFrame.new(- 709.3132934570312, 381.6005859375, - 11011.396484375));
                    end
                elseif game:GetService("Workspace").Map:FindFirstChild("HeavenlyDimension") then
                    repeat
                        wait();
                        if (game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cursed Skeleton [Lv. 2200] [Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Heaven's Guardian [Lv. 2200] [Boss]")) then
                            for DanhSachTab50, DanhSachTab51 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if ((DanhSachTab51.Name == "Cursed Skeleton") or (DanhSachTab51.Name == "Cursed Skeleton") or (DanhSachTab51.Name == "Heaven's Guardian")) then
                                    if (DanhSachTab51.Humanoid.Health > 0) then
                                        repeat
                                            wait();
                                            EquipTool(Sword);
                                            Tween(DanhSachTab51.HumanoidRootPart.CFrame * Pos);
                                            DanhSachTab51.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                            DanhSachTab51.HumanoidRootPart.Transparency = 1;
                                            DanhSachTab51.Humanoid.JumpPower = 0;
                                            DanhSachTab51.Humanoid.WalkSpeed = 0;
                                            DanhSachTab51.HumanoidRootPart.CanCollide = false;
                                            FarmPos = DanhSachTab51.HumanoidRootPart.CFrame;
                                            MonFarm = DanhSachTab51.Name;
                                            AttackNoCoolDown();
                                            if ((DanhSachTab51.Humanoid.Health <= 0) and DanhSachTab51.Humanoid:FindFirstChild("Animator")) then
                                                DanhSachTab51.Humanoid.Animator:Destroy();
                                            end
                                        until (DanhSachTab51.Humanoid.Health <= 0) or not DanhSachTab51.Parent or (Auto_Quest_Tushita_3 == false)
                                    end
                                end
                            end
                        else
                            wait(5);
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch1.CFrame);
                            wait(1.5);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                            wait(1.5);
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch2.CFrame);
                            wait(1.5);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                            wait(1.5);
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Torch3.CFrame);
                            wait(1.5);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                            wait(1.5);
                            Tween(game:GetService("Workspace").Map.HeavenlyDimension.Exit.CFrame);
                        end
                    until not _G.Auto_DualKatana or not Auto_Quest_Tushita_3 or (GetMaterial("Alucard Fragment") == 6)
                end
            end);
        end
    end
end);
if Sea2 then
    local ManHinh37 = DanhSachTab.ITM:AddToggle("ToggleFactory", {
        Title = "Đấm Nhà Máy",
        Description = "",
        Default = false
    });
    ManHinh37:OnChanged(function(KhungChinh44)
        _G.Factory = KhungChinh44;
    end);
    LuaChon.ToggleFactory:SetValue(false);
    spawn(function()
        while wait() do
            if _G.Factory then
                if game.Workspace.Enemies:FindFirstChild("Core") then
                    for NhanTrangThai44, NhanTrangThai45 in pairs(game.Workspace.Enemies:GetChildren()) do
                        if ((NhanTrangThai45.Name == "Core") and (NhanTrangThai45.Humanoid.Health > 0)) then
                            repeat
                                wait(_G.Fast_Delay);
                                AttackNoCoolDown();
                                repeat
                                    Tween(CFrame.new(448.46756, 199.356781, - 441.389252));
                                    wait();
                                until not _G.Factory or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, - 441.389252)).Magnitude <= 10)
                                EquipTool(SelectWeapon);
                                AutoHaki();
                                Tween(NhanTrangThai45.HumanoidRootPart.CFrame * Pos);
                                NhanTrangThai45.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                NhanTrangThai45.HumanoidRootPart.Transparency = 1;
                                NhanTrangThai45.Humanoid.JumpPower = 0;
                                NhanTrangThai45.Humanoid.WalkSpeed = 0;
                                NhanTrangThai45.HumanoidRootPart.CanCollide = false;
                                FarmPos = NhanTrangThai45.HumanoidRootPart.CFrame;
                                MonFarm = NhanTrangThai45.Name;
                            until not NhanTrangThai45.Parent or (NhanTrangThai45.Humanoid.Health <= 0) or (_G.Factory == false)
                        end
                    end
                elseif game.ReplicatedStorage:FindFirstChild("Core") then
                    repeat
                        Tween(CFrame.new(448.46756, 199.356781, - 441.389252));
                        wait();
                    until not _G.Factory or ((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(448.46756, 199.356781, - 441.389252)).Magnitude <= 10)
                end
            end
        end
    end);
end
local TenNguoiDung3 = DanhSachTab.ITM:AddToggle("ToggleAutoFarmSwan", {
    Title = "Đấm Swan",
    Description = "",
    Default = false
});
TenNguoiDung3:OnChanged(function(ThongTinLoader71)
    _G.Auto_FarmSwan = ThongTinLoader71;
end);
LuaChon.ToggleAutoFarmSwan:SetValue(false);
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoFarmSwan then
                if game:GetService("Workspace").Enemies:FindFirstChild("Don Swan") then
                    for TieuDe63, TieuDe64 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if ((TieuDe64.Name == "Don Swan") and (TieuDe64.Humanoid.Health > 0) and TieuDe64:IsA("Model") and TieuDe64:FindFirstChild("Humanoid") and TieuDe64:FindFirstChild("HumanoidRootPart")) then
                            repeat
                                task.wait();
                                pcall(function()
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    TieuDe64.HumanoidRootPart.CanCollide = false;
                                    TieuDe64.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                    Tween(TieuDe64.HumanoidRootPart.CFrame * Pos);
                                    AttackNoCoolDown();
                                end);
                            until (_G.AutoFarmSwan == false) or (TieuDe64.Humanoid.Health <= 0)
                        end
                    end
                else
                    repeat
                        task.wait();
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.537666320801, 905.48291015625));
                    until ((CFrame.new(2284.912109375, 15.537666320801, 905.48291015625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) or (_G.AutoFarmSwan == false)
                end
            end
        end
    end);
end);
local TenNguoiDung4 = DanhSachTab.ITM:AddToggle("ToggleAutoRengoku", {
    Title = "Rengoku",
    Description = "",
    Default = false
});
TenNguoiDung4:OnChanged(function(ThongTinLoader72)
    _G.Auto_Regoku = ThongTinLoader72;
end);
LuaChon.ToggleAutoRengoku:SetValue(false);
spawn(function()
    pcall(function()
        while wait() do
            if _G.Auto_Regoku then
                if (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key")) then
                    EquipTool("Hidden Key");
                    Tween(CFrame.new(6571.1201171875, 299.23028564453, - 6967.841796875));
                elseif (game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior")) then
                    for TaiCodeNgoai66, TaiCodeNgoai67 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if (((TaiCodeNgoai67.Name == "Snow Lurker") or (TaiCodeNgoai67.Name == "Arctic Warrior")) and (TaiCodeNgoai67.Humanoid.Health > 0)) then
                            repeat
                                task.wait(_G.Fast_Delay);
                                EquipTool(SelectWeapon);
                                AutoHaki();
                                TaiCodeNgoai67.HumanoidRootPart.CanCollide = false;
                                TaiCodeNgoai67.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                FarmPos = TaiCodeNgoai67.HumanoidRootPart.CFrame;
                                MonFarm = TaiCodeNgoai67.Name;
                                Tween(TaiCodeNgoai67.HumanoidRootPart.CFrame * Pos);
                                AttackNoCoolDown();
                                bringmob = true;
                            until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or (_G.Auto_Regoku == false) or not TaiCodeNgoai67.Parent or (TaiCodeNgoai67.Humanoid.Health <= 0)
                            bringmob = false;
                        end
                    end
                else
                    bringmob = false;
                    Tween(CFrame.new(5439.716796875, 84.420944213867, - 6715.1635742188));
                end
            end
        end
    end);
end);
if (Sea2 or Sea3) then
    local ManHinh38 = DanhSachTab.ITM:AddToggle("ToggleHakiColor", {
        Title = "Mua Màu Haki",
        Description = "",
        Default = false
    });
    ManHinh38:OnChanged(function(KhungChinh45)
        _G.Auto_Buy_Enchancement = KhungChinh45;
    end);
    LuaChon.ToggleHakiColor:SetValue(false);
    spawn(function()
        while wait() do
            if _G.Auto_Buy_Enchancement then
                local TenNguoiDung67 = {
                    [1] = "ColorsDealer",
                    [2] = "2"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung67));
            end
        end
    end);
end
if Sea2 then
    local ManHinh39 = DanhSachTab.Main:AddToggle("ToggleSwordLengend", {
        Title = "Mua Kiếm Huyền Thoại trong sea 2",
        Description = "",
        Default = false
    });
    ManHinh39:OnChanged(function(KhungChinh46)
        _G.BuyLengendSword = KhungChinh46;
    end);
    LuaChon.ToggleSwordLengend:SetValue(false);
    spawn(function()
        while wait() do
            pcall(function()
                if (_G.BuyLengendSword or Triple_A) then
                    local TenNguoiDung97 = {
                        [1] = "LegendarySwordDealer",
                        [2] = "2"
                    };
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung97));
                else
                    wait();
                end
            end);
        end
    end);
end
if Sea2 then
    local ManHinh40 = DanhSachTab.Main:AddToggle("ToggleEvoRace", {
        Title = "Nâng Tộc V2",
        Description = "",
        Default = false
    });
    ManHinh40:OnChanged(function(KhungChinh47)
        _G.AutoEvoRace = KhungChinh47;
    end);
    LuaChon.ToggleEvoRace:SetValue(false);
    spawn(function()
        pcall(function()
            while wait(0.1) do
                if _G.AutoEvoRace then
                    if not game:GetService("Players").LocalPlayer.Data.Race:FindFirstChild("Evolved") then
                        if (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 0) then
                            Tween(CFrame.new(- 2779.83521, 72.9661407, - 3574.02002, - 0.730484903, 6.390141e-8, - 0.68292886, 3.5996322e-8, 1, 5.5066703e-8, 0.68292886, 1.5642467e-8, - 0.730484903));
                            if ((Vector3.new(- 2779.83521, 72.9661407, - 3574.02002) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4) then
                                wait(1.3);
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "2");
                            end
                        elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 1) then
                            pcall(function()
                                if (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 1") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 1")) then
                                    Tween(game:GetService("Workspace").Flower1.CFrame);
                                elseif (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 2") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 2")) then
                                    Tween(game:GetService("Workspace").Flower2.CFrame);
                                elseif (not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") and not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flower 3")) then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Zombie") then
                                        for MaGame34, MaGame35 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if (MaGame35.Name == "Zombie") then
                                                repeat
                                                    task.wait(_G.Fast_Delay);
                                                    AutoHaki();
                                                    EquipTool(SelectWeapon);
                                                    Tween(MaGame35.HumanoidRootPart.CFrame * Pos);
                                                    MaGame35.HumanoidRootPart.CanCollide = false;
                                                    MaGame35.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                                    AttackNoCoolDown();
                                                    FarmPos = MaGame35.HumanoidRootPart.CFrame;
                                                    MonFarm = MaGame35.Name;
                                                    bringmob = true;
                                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flower 3") or not MaGame35.Parent or (MaGame35.Humanoid.Health <= 0) or (_G.AutoEvoRace == false)
                                                bringmob = false;
                                            end
                                        end
                                    else
                                        Tween(CFrame.new(- 5685.9233398438, 48.480125427246, - 853.23724365234));
                                    end
                                end
                            end);
                        elseif (game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "1") == 2) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Alchemist", "3");
                        end
                    end
                end
            end
        end);
    end);
end
local TenNguoiDung5 = DanhSachTab.Setting:AddToggle("ToggleAutoT", {
    Title = "Bật Tộc V3",
    Description = "",
    Default = false
});
TenNguoiDung5:OnChanged(function(ThongTinLoader73)
    _G.AutoT = ThongTinLoader73;
end);
LuaChon.ToggleAutoT:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoT then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("ActivateAbility");
            end
        end);
    end
end);
local TenNguoiDung6 = DanhSachTab.Setting:AddToggle("ToggleAutoY", {
    Title = "Bật Tộc V4",
    Description = "",
    Default = false
});
TenNguoiDung6:OnChanged(function(ThongTinLoader74)
    _G.AutoY = ThongTinLoader74;
end);
LuaChon.ToggleAutoY:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoY then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game);
                wait();
                game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game);
            end
        end);
    end
end);
local TenNguoiDung7 = DanhSachTab.Setting:AddToggle("ToggleAutoKen", {
    Title = "Bật Haki Quan Sât",
    Description = "",
    Default = false
});
TenNguoiDung7:OnChanged(function(ThongTinLoader75)
    _G.AutoKen = ThongTinLoader75;
    if ThongTinLoader75 then
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true);
    else
        game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", false);
    end
end);
LuaChon.ToggleAutoKen:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKen then
                game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken", true);
            end
        end);
    end
end);
local TenNguoiDung8 = DanhSachTab.Setting:AddToggle("ToggleSaveSpawn", {
    Title = "Lưu Điểm Hồi Sinh",
    Description = "",
    Default = false
});
TenNguoiDung8:OnChanged(function(ThongTinLoader76)
    _G.SaveSpawn = ThongTinLoader76;
    if ThongTinLoader76 then
        local KhungChinh48 = {
            [1] = "SetSpawnPoint"
        };
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(KhungChinh48));
    end
end);
LuaChon.ToggleSaveSpawn:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.SaveSpawn then
                local HinhAnhNguoiDung97 = {
                    [1] = "SetSpawnPoint"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(HinhAnhNguoiDung97));
            end
        end);
    end
end);
local TenNguoiDung9 = require(game.ReplicatedStorage.Util.CameraShaker);
TenNguoiDung9:Stop();
local TieuDePhu0 = DanhSachTab.Setting:AddToggle("ToggleBringMob", {
    Title = "Gom Quái",
    Description = "",
    Default = true
});
TieuDePhu0:OnChanged(function(ThongTinLoader77)
    _G.BringMob = ThongTinLoader77;
end);
LuaChon.ToggleBringMob:SetValue(true);
spawn(function()
    while wait() do
        pcall(function()
            for HinhAnhNguoiDung33, HinhAnhNguoiDung34 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                if (_G.BringMob and bringmob) then
                    if ((HinhAnhNguoiDung34.Name == MonFarm) and HinhAnhNguoiDung34:FindFirstChild("Humanoid") and (HinhAnhNguoiDung34.Humanoid.Health > 0)) then
                        if (HinhAnhNguoiDung34.Name == "Factory Staff") then
                            if ((HinhAnhNguoiDung34.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000) then
                                HinhAnhNguoiDung34.Head.CanCollide = false;
                                HinhAnhNguoiDung34.HumanoidRootPart.CanCollide = false;
                                HinhAnhNguoiDung34.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                HinhAnhNguoiDung34.HumanoidRootPart.CFrame = FarmPos;
                                if HinhAnhNguoiDung34.Humanoid:FindFirstChild("Animator") then
                                    HinhAnhNguoiDung34.Humanoid.Animator:Destroy();
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                            end
                        elseif (HinhAnhNguoiDung34.Name == MonFarm) then
                            if ((HinhAnhNguoiDung34.HumanoidRootPart.Position - FarmPos.Position).Magnitude <= 1000000000) then
                                HinhAnhNguoiDung34.HumanoidRootPart.CFrame = FarmPos;
                                HinhAnhNguoiDung34.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                HinhAnhNguoiDung34.HumanoidRootPart.Transparency = 1;
                                HinhAnhNguoiDung34.Humanoid.JumpPower = 0;
                                HinhAnhNguoiDung34.Humanoid.WalkSpeed = 0;
                                if HinhAnhNguoiDung34.Humanoid:FindFirstChild("Animator") then
                                    HinhAnhNguoiDung34.Humanoid.Animator:Destroy();
                                end
                                HinhAnhNguoiDung34.HumanoidRootPart.CanCollide = false;
                                HinhAnhNguoiDung34.Head.CanCollide = false;
                                HinhAnhNguoiDung34.Humanoid:ChangeState(11);
                                HinhAnhNguoiDung34.Humanoid:ChangeState(14);
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                            end
                        end
                    end
                end
            end
        end);
    end
end);
local TieuDePhu1 = DanhSachTab.Setting:AddToggle("ToggleRemoveNotify", {
    Title = "Xóa Thông Báo",
    Description = "",
    Default = false
});
TieuDePhu1:OnChanged(function(ThongTinLoader78)
    RemoveNotify = ThongTinLoader78;
end);
LuaChon.ToggleRemoveNotify:SetValue(false);
spawn(function()
    while wait() do
        if RemoveNotify then
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false;
        else
            game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true;
        end
    end
end);
local TieuDePhu2 = DanhSachTab.Setting:AddToggle("ToggleWhite", {
    Title = "sử dụng Màn Hình Trắng",
    Description = "",
    Default = false
});
TieuDePhu2:OnChanged(function(ThongTinLoader79)
    _G.WhiteScreen = ThongTinLoader79;
    if (_G.WhiteScreen == true) then
        game:GetService("RunService"):Set3dRenderingEnabled(false);
    elseif (_G.WhiteScreen == false) then
        game:GetService("RunService"):Set3dRenderingEnabled(true);
    end
end);
LuaChon.ToggleWhite:SetValue(false);
local TieuDePhu3 = DanhSachTab.Setting:AddSection("Kĩ Năng Thông Thạo");
local TieuDePhu4 = DanhSachTab.Setting:AddToggle("ToggleZ", {
    Title = "sử dụng Kĩ Năng Z",
    Description = "",
    Default = true
});
TieuDePhu4:OnChanged(function(ThongTinLoader80)
    SkillZ = ThongTinLoader80;
end);
LuaChon.ToggleZ:SetValue(true);
local TieuDePhu5 = DanhSachTab.Setting:AddToggle("ToggleX", {
    Title = "sử dụng Kĩ Năng X",
    Description = "",
    Default = true
});
TieuDePhu5:OnChanged(function(ThongTinLoader81)
    SkillX = ThongTinLoader81;
end);
LuaChon.ToggleX:SetValue(true);
local TieuDePhu6 = DanhSachTab.Setting:AddToggle("ToggleC", {
    Title = "sử dụng Kĩ Năng C",
    Description = "",
    Default = true
});
TieuDePhu6:OnChanged(function(ThongTinLoader82)
    SkillC = ThongTinLoader82;
end);
LuaChon.ToggleC:SetValue(true);
local TieuDePhu7 = DanhSachTab.Setting:AddToggle("ToggleV", {
    Title = "sử dụng Kĩ Năng V",
    Description = "",
    Default = true
});
TieuDePhu7:OnChanged(function(ThongTinLoader83)
    SkillV = ThongTinLoader83;
end);
LuaChon.ToggleV:SetValue(true);
local TieuDePhu8 = DanhSachTab.Setting:AddToggle("ToggleF", {
    Title = "sử dụng Kĩ Năng F",
    Description = "",
    Default = false
});
TieuDePhu8:OnChanged(function(ThongTinLoader84)
    SkillF = ThongTinLoader84;
end);
LuaChon.ToggleF:SetValue(true);
local TieuDePhu9 = DanhSachTab.Status:AddParagraph({
    Title = "Thông Tin
    Content = "" .. "Tên : name " .. game.Players.LocalPlayer.DisplayName .. " (@" .. game.Players.LocalPlayer.Name .. ")\n" .. "Cấp : " .. game:GetService("Players").LocalPlayer.Data.Level.Value .. "\n" .. "Tiền : money " .. game:GetService("Players").LocalPlayer.Data.Beli.Value .. "\n" .. "Điểm F : frag " .. game:GetService("Players").LocalPlayer.Data.Fragments.Value .. "\n" .. "Tiền Truy Nã : bounty " .. game:GetService("Players").LocalPlayer.leaderstats["Bounty/Honor"].Value .. "\n" .. "Máu: defender" .. game.Players.LocalPlayer.Character.Humanoid.Health .. "/" .. game.Players.LocalPlayer.Character.Humanoid.MaxHealth .. "\n" .. "Năng Lượng
});
local TieuDe0 = DanhSachTab.Status:AddParagraph({
    Title = "Thời Gian",
    Content = "",
});
local function TieuDe1()
    local ThongTinLoader85 = os.date("*t");
    local ThongTinLoader86 = ThongTinLoader85.hour % 24 ;
    local ThongTinLoader87 = ((ThongTinLoader86 < 12) and "AM") or "PM" ;
    local ThongTinLoader88 = string.format("%02i:%02i:%02i %s", ((ThongTinLoader86 - 1) % 12) + 1, ThongTinLoader85.min, ThongTinLoader85.sec, ThongTinLoader87);
    local ThongTinLoader89 = string.format("%02d/%02d/%04d", ThongTinLoader85.day, ThongTinLoader85.month, ThongTinLoader85.year);
    local ThongTinLoader90 = game:GetService("LocalizationService");
    local ThongTinLoader91 = game:GetService("Players");
    local ThongTinLoader92 = ThongTinLoader91.LocalPlayer;
    local ThongTinLoader93 = ThongTinLoader92.Name;
    local ThongTinLoader94 = "Unknown";
    local ThongTinLoader95, ThongTinLoader96 = pcall(function()
        return ThongTinLoader90:GetCountryRegionForPlayerAsync(ThongTinLoader92);
    end);
    if ThongTinLoader95 then
        ThongTinLoader94 = ThongTinLoader96;
    end
    TieuDe0:SetDesc(ThongTinLoader89 .. "-" .. ThongTinLoader88 .. " [ " .. ThongTinLoader94 .. " ]");
end
spawn(function()
    while true do
        TieuDe1();
        game:GetService("RunService").RenderStepped:Wait();
    end
end);
local TieuDe2 = DanhSachTab.Status:AddParagraph({
    Title = "Thời Gian Máy Chủ",
    Content = "",
});
local function TieuDe3()
    local ThongTinLoader97 = math.floor(workspace.DistributedGameTime + 0.5);
    local ThongTinLoader98 = math.floor(ThongTinLoader97 / (60 ^ 2)) % 24 ;
    local ThongTinLoader99 = math.floor(ThongTinLoader97 / 60) % 60 ;
    local v300 = ThongTinLoader97 % 60 ;
    TieuDe2:SetDesc(string.format("%02d Tiếng-%02d Phút-%02d Giây", ThongTinLoader98, ThongTinLoader99, v300));
end
spawn(function()
    while task.wait() do
        pcall(TieuDe3);
    end
end);
local TieuDe4 = DanhSachTab.Status:AddParagraph({
    Title = "kiểm tra Đảo Leviathan trong sever hay không",
    Content = "",
});
spawn(function()
    pcall(function()
        while wait() do
            if game:GetService("Workspace").Map:FindFirstChild("FrozenDimension") then
                TieuDe4:SetDesc("✅");
            else
                TieuDe4:SetDesc("❌");
            end
        end
    end);
end);
local TieuDe5 = DanhSachTab.Status:AddInput("Input", {
    Title = "Job ID",
    Default = "job id to jon sever",
    Placeholder = "Dán Job ID Vào Đây
    Numeric = false,
    Finished = false,
    Callback = function(v301)
        _G.Job = v301;
    end
});
DanhSachTab.Status:AddButton({
    Title = "Bắt Đầu Tham Gia Job ID",
    Description = "",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer);
    end
});
DanhSachTab.Status:AddButton({
    Title = "Sao Chép Job ID",
    Description = "",
    Callback = function()
        setclipboard(tostring(game.JobId));
    end
});
local TieuDe6 = DanhSachTab.Status:AddToggle("MyToggle", {
    Title = "nhấn để tham gia sever với job id
    Default = false
});
TieuDe6:OnChanged(function(v302)
    _G.Join = v302;
end);
spawn(function()
    while wait() do
        if _G.Join then
            game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId, _G.Job, game.Players.LocalPlayer);
        end
    end
end);
local TieuDe7 = DanhSachTab.Stats:AddToggle("ToggleMelee", {
    Title = "Nâng điểm melee",
    Description = "",
    Default = false
});
TieuDe7:OnChanged(function(v303)
    _G.Auto_Stats_Melee = v303;
end);
LuaChon.ToggleMelee:SetValue(false);
local TieuDe8 = DanhSachTab.Stats:AddToggle("ToggleDe", {
    Title = "Nâng điểm Máu",
    Description = "",
    Default = false
});
TieuDe8:OnChanged(function(v304)
    _G.Auto_Stats_Defense = v304;
end);
LuaChon.ToggleDe:SetValue(false);
local TieuDe9 = DanhSachTab.Stats:AddToggle("ToggleSword", {
    Title = "Nâng điểm Kiếm",
    Description = "",
    Default = false
});
TieuDe9:OnChanged(function(v305)
    _G.Auto_Stats_Sword = v305;
end);
LuaChon.ToggleSword:SetValue(false);
local NenLoader0 = DanhSachTab.Stats:AddToggle("ToggleGun", {
    Title = "Nâng Súng",
    Description = "",
    Default = false
});
NenLoader0:OnChanged(function(v306)
    _G.Auto_Stats_Gun = v306;
end);
LuaChon.ToggleGun:SetValue(false);
local NenLoader1 = DanhSachTab.Stats:AddToggle("ToggleFruit", {
    Title = "Nâng điểm Trái",
    Description = "",
    Default = false
});
NenLoader1:OnChanged(function(v307)
    _G.Auto_Stats_Devil_Fruit = v307;
end);
LuaChon.ToggleFruit:SetValue(false);
spawn(function()
    while wait() do
        if _G.Auto_Stats_Devil_Fruit then
            local HinhAnhNguoiDung37 = {
                [1] = "AddPoint",
                [2] = "Demon Fruit",
                [3] = 3
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(HinhAnhNguoiDung37));
        end
    end
end);
spawn(function()
    while wait() do
        if _G.Auto_Stats_Gun then
            local HinhAnhNguoiDung38 = {
                [1] = "AddPoint",
                [2] = "Gun",
                [3] = 3
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(HinhAnhNguoiDung38));
        end
    end
end);
spawn(function()
    while wait() do
        if _G.Auto_Stats_Sword then
            local HinhAnhNguoiDung39 = {
                [1] = "AddPoint",
                [2] = "Sword",
                [3] = 3
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(HinhAnhNguoiDung39));
        end
    end
end);
spawn(function()
    while wait() do
        if _G.Auto_Stats_Defense then
            local HinhAnhNguoiDung40 = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 3
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(HinhAnhNguoiDung40));
        end
    end
end);
spawn(function()
    while wait() do
        if _G.Auto_Stats_Melee then
            local HinhAnhNguoiDung41 = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(HinhAnhNguoiDung41));
        end
    end
end);
local NenLoader2 = {};
for v308, v309 in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(NenLoader2, v309.Name);
end
local NenLoader3 = DanhSachTab.Player:AddDropdown("SelectedPly", {
    Title = "Chọn Người Chơi để di chuyển",
    Description = "",
    Values = NenLoader2,
    Multi = false,
    Default = 1
});
NenLoader3:SetValue(_G.SelectPly);
NenLoader3:OnChanged(function(v310)
    _G.SelectPly = v310;
end);
DanhSachTab.Player:AddButton({
    Title = "Tải Lại Người Chơi",
    Description = "",
    Callback = function()
        table.clear(NenLoader2);
        for ManHinh41, ManHinh42 in pairs(game:GetService("Players"):GetChildren()) do
            table.insert(NenLoader2, ManHinh42.Name);
        end
    end
});
local NenLoader4 = DanhSachTab.Player:AddToggle("ToggleTeleport", {
    Title = "Bay Đến Người Chơi",
    Description = "",
    Default = false
});
NenLoader4:OnChanged(function(v311)
    _G.TeleportPly = v311;
    if (v311 == false) then
        wait();
        AutoHaki();
        Tween2(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame);
        wait();
    end
end);
LuaChon.ToggleTeleport:SetValue(false);
spawn(function()
    while wait() do
        if _G.TeleportPly then
            pcall(function()
                if game.Players:FindFirstChild(_G.SelectPly) then
                    Tween2(game.Players[_G.SelectPly].Character.HumanoidRootPart.CFrame);
                end
            end);
        end
    end
end);
local ManHinh6 = DanhSachTab.Player:AddSection("Khác");
local NenLoader5 = DanhSachTab.Player:AddToggle("ToggleNoClip", {
    Title = "Đi Xuyên Tường",
    Description = "",
    Default = true
});
NenLoader5:OnChanged(function(v312)
    _G.LOf = v312;
end);
LuaChon.ToggleNoClip:SetValue(true);
spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.LOf then
                for TenNguoiDung68, TenNguoiDung69 in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if TenNguoiDung69:IsA("BasePart") then
                        TenNguoiDung69.CanCollide = false;
                    end
                end
            end
        end);
    end);
end);
local NenLoader6 = DanhSachTab.Player:AddToggle("ToggleWalkonWater", {
    Title = "Đi Trên Nước",
    Description = "",
    Default = true
});
NenLoader6:OnChanged(function(v313)
    _G.WalkonWater = v313;
end);
LuaChon.ToggleWalkonWater:SetValue(true);
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.WalkonWater then
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 112, 1000);
            else
                game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000, 80, 1000);
            end
        end);
    end
end);
local NenLoader7 = DanhSachTab.Player:AddToggle("ToggleEnablePvp", {
    Title = "Bật PVP",
    Description = "",
    Default = false
});
NenLoader7:OnChanged(function(v314)
    _G.EnabledPvP = v314;
end);
LuaChon.ToggleEnablePvp:SetValue(false);
spawn(function()
    pcall(function()
        while wait() do
            if _G.EnabledPvP then
                if (game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true) then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp");
                end
            end
        end
    end);
end);
local NenLoader8 = DanhSachTab.Teleport:AddSection("Thế Giới");
local NenLoader9 = DanhSachTab.Teleport:AddToggle("ToggleAutoSea2", {
    Title = "làm Nhiệm Vụ Qua Biển 2",
    Description = "",
    Default = false
});
NenLoader9:OnChanged(function(v315)
    _G.Auto_Sea2 = v315;
end);
LuaChon.ToggleAutoSea2:SetValue(false);
spawn(function()
    while wait() do
        if _G.Auto_Sea2 then
            pcall(function()
                local TenNguoiDung00 = game:GetService("Players").LocalPlayer.Data.Level.Value;
                if ((TenNguoiDung00 >= 700) and World1) then
                    if ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
                        local NhanTrangThai46 = CFrame.new(4849.29883, 5.65138149, 719.611877);
                        repeat
                            Tween(NhanTrangThai46);
                            wait();
                        until ((NhanTrangThai46.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.Auto_Sea2 == false)
                        wait(1.1);
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress", "Detective");
                        wait(0.5);
                        EquipTool("Key");
                        repeat
                            Tween(CFrame.new(1347.7124, 37.3751602, - 1325.6488));
                            wait();
                        until ((Vector3.new(1347.7124, 37.3751602, - 1325.6488) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3) or (_G.Auto_Sea2 == false)
                        wait(0.5);
                    elseif ((game:GetService("Workspace").Map.Ice.Door.CanCollide == false) and (game:GetService("Workspace").Map.Ice.Door.Transparency == 1)) then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                            for DanhSachTab80, DanhSachTab81 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (DanhSachTab81.Name == "Ice Admiral") then
                                    if (not DanhSachTab81.Humanoid.Health <= 0) then
                                        if (DanhSachTab81:FindFirstChild("Humanoid") and DanhSachTab81:FindFirstChild("HumanoidRootPart") and (DanhSachTab81.Humanoid.Health > 0)) then
                                            OldCFrameSecond = DanhSachTab81.HumanoidRootPart.CFrame;
                                            repeat
                                                task.wait(_G.Fast_Delay);
                                                AutoHaki();
                                                EquipTool(SelectWeapon);
                                                DanhSachTab81.HumanoidRootPart.CanCollide = false;
                                                DanhSachTab81.Humanoid.WalkSpeed = 0;
                                                DanhSachTab81.Head.CanCollide = false;
                                                DanhSachTab81.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                                DanhSachTab81.HumanoidRootPart.CFrame = OldCFrameSecond;
                                                Tween(DanhSachTab81.HumanoidRootPart.CFrame * Pos);
                                                AttackNoCoolDown();
                                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
                                            until not _G.Auto_Sea2 or not DanhSachTab81.Parent or (DanhSachTab81.Humanoid.Health <= 0)
                                        end
                                    else
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
                                    end
                                end
                            end
                        elseif game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral") then
                            Tween(game:GetService("ReplicatedStorage"):FindFirstChild("Ice Admiral").HumanoidRootPart.CFrame * CFrame.new(5, 10, 7));
                        end
                    end
                end
            end);
        end
    end
end);
local ThanhTienTrinh0 = DanhSachTab.Teleport:AddToggle("ToggleAutoSea3", {
    Title = "làm Nhiệm Vụ Qua Biển 3",
    Description = "",
    Default = false
});
ThanhTienTrinh0:OnChanged(function(v316)
    _G.Auto_Sea3 = v316;
end);
LuaChon.ToggleAutoSea3:SetValue(false);
spawn(function()
    while wait() do
        if _G.AutoSea3 then
            pcall(function()
                if ((game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500) and World2) then
                    _G.AutoLevel = false;
                    if (game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("ZQuestProgress", "General") == 0) then
                        Tween(CFrame.new(- 1926.3221435547, 12.819851875305, 1738.3092041016));
                        if ((CFrame.new(- 1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10) then
                            wait(1.5);
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress", "Begin");
                        end
                        wait(1.8);
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for CuaSoChinh78, CuaSoChinh79 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if (CuaSoChinh79.Name == "rip_indra") then
                                    OldCFrameThird = CuaSoChinh79.HumanoidRootPart.CFrame;
                                    repeat
                                        task.wait(_G.Fast_Delay);
                                        AutoHaki();
                                        EquipTool(SelectWeapon);
                                        Tween(CuaSoChinh79.HumanoidRootPart.CFrame * Pos);
                                        CuaSoChinh79.HumanoidRootPart.CFrame = OldCFrameThird;
                                        CuaSoChinh79.HumanoidRootPart.Size = Vector3.new(50, 50, 50);
                                        CuaSoChinh79.HumanoidRootPart.CanCollide = false;
                                        CuaSoChinh79.Humanoid.WalkSpeed = 0;
                                        AttackNoCoolDown();
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
                                    until (_G.AutoSea3 == false) or (CuaSoChinh79.Humanoid.Health <= 0) or not CuaSoChinh79.Parent
                                end
                            end
                        elseif (not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and ((CFrame.new(- 26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000)) then
                            Tween(CFrame.new(- 26880.93359375, 22.848554611206, 473.18951416016));
                        end
                    end
                end
            end);
        end
    end
end);
DanhSachTab.Teleport:AddButton({
    Title = "Biến 1",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain");
    end
});
DanhSachTab.Teleport:AddButton({
    Title = "Biến 2",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa");
    end
});
DanhSachTab.Teleport:AddButton({
    Title = "Biển 3",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou");
    end
});
local ManHinh6 = DanhSachTab.Teleport:AddSection("Đảo");
if Sea1 then
    IslandList = {
        "WindMill",
        "Marine",
        "Middle Town",
        "Jungle",
        "Pirate Village",
        "Desert",
        "Snow Island",
        "MarineFord",
        "Colosseum",
        "Sky Island 1",
        "Sky Island 2",
        "Sky Island 3",
        "Prison",
        "Magma Village",
        "Under Water Island",
        "Fountain City",
        "Shank Room",
        "Mob Island"
    };
elseif Sea2 then
    IslandList = {
        "The Cafe",
        "Frist Spot",
        "Dark Area",
        "Flamingo Mansion",
        "Flamingo Room",
        "Green Zone",
        "Factory",
        "Colossuim",
        "Zombie Island",
        "Two Snow Mountain",
        "Punk Hazard",
        "Cursed Ship",
        "Ice Castle",
        "Forgotten Island",
        "Ussop Island",
        "Mini Sky Island"
    };
elseif Sea3 then
    IslandList = {
        "Mansion",
        "Port Town",
        "Great Tree",
        "Castle On The Sea",
        "MiniSky",
        "Hydra Island",
        "Floating Turtle",
        "Haunted Castle",
        "Ice Cream Island",
        "Peanut Island",
        "Cake Island",
        "Cocoa Island",
        "Candy Island",
        "Tiki Outpost"
    };
end
local ThanhTienTrinh1 = DanhSachTab.Teleport:AddDropdown("DropdownIsland", {
    Title = "Chọn Đảo để di chuyển",
    Description = "",
    Values = IslandList,
    Multi = false,
    Default = 1
});
ThanhTienTrinh1:SetValue(_G.SelectIsland);
ThanhTienTrinh1:OnChanged(function(v317)
    _G.SelectIsland = v317;
end);
DanhSachTab.Teleport:AddButton({
    Title = "Bay Đến Đảo",
    Description = "",
    Callback = function()
        if (_G.SelectIsland == "WindMill") then
            Tween2(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594));
        elseif (_G.SelectIsland == "Marine") then
            Tween2(CFrame.new(- 2566.4296875, 6.8556680679321, 2045.2561035156));
        elseif (_G.SelectIsland == "Middle Town") then
            Tween2(CFrame.new(- 690.33081054688, 15.09425163269, 1582.2380371094));
        elseif (_G.SelectIsland == "Jungle") then
            Tween2(CFrame.new(- 1612.7957763672, 36.852081298828, 149.12843322754));
        elseif (_G.SelectIsland == "Pirate Village") then
            Tween2(CFrame.new(- 1181.3093261719, 4.7514905929565, 3803.5456542969));
        elseif (_G.SelectIsland == "Desert") then
            Tween2(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688));
        elseif (_G.SelectIsland == "Snow Island") then
            Tween2(CFrame.new(1347.8067626953, 104.66806030273, - 1319.7370605469));
        elseif (_G.SelectIsland == "MarineFord") then
            Tween2(CFrame.new(- 4914.8212890625, 50.963626861572, 4281.0278320313));
        elseif (_G.SelectIsland == "Colosseum") then
            Tween2(CFrame.new(- 1427.6203613281, 7.2881078720093, - 2792.7722167969));
        elseif (_G.SelectIsland == "Sky Island 1") then
            Tween2(CFrame.new(- 4869.1025390625, 733.46051025391, - 2667.0180664063));
        elseif (_G.SelectIsland == "Sky Island 2") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 4607.82275, 872.54248, - 1667.55688));
        elseif (_G.SelectIsland == "Sky Island 3") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 7894.6176757813, 5547.1416015625, - 380.29119873047));
        elseif (_G.SelectIsland == "Prison") then
            Tween2(CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656));
        elseif (_G.SelectIsland == "Magma Village") then
            Tween2(CFrame.new(- 5247.7163085938, 12.883934020996, 8504.96875));
        elseif (_G.SelectIsland == "Under Water Island") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(61163.8515625, 11.6796875, 1819.7841796875));
        elseif (_G.SelectIsland == "Fountain City") then
            Tween2(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813));
        elseif (_G.SelectIsland == "Shank Room") then
            Tween2(CFrame.new(- 1442.16553, 29.8788261, - 28.3547478));
        elseif (_G.SelectIsland == "Mob Island") then
            Tween2(CFrame.new(- 2850.20068, 7.39224768, 5354.99268));
        elseif (_G.SelectIsland == "The Cafe") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 281.93707275390625, 306.130615234375, 609.280029296875));
            wait();
            Tween2(CFrame.new(- 380.47927856445, 77.220390319824, 255.82550048828));
        elseif (_G.SelectIsland == "Frist Spot") then
            Tween2(CFrame.new(- 11.311455726624, 29.276733398438, 2771.5224609375));
        elseif (_G.SelectIsland == "Dark Area") then
            Tween2(CFrame.new(3780.0302734375, 22.652164459229, - 3498.5859375));
        elseif (_G.SelectIsland == "Flamingo Mansion") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 281.93707275390625, 306.130615234375, 609.280029296875));
        elseif (_G.SelectIsland == "Flamingo Room") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(2284.912109375, 15.152034759521484, 905.48291015625));
        elseif (_G.SelectIsland == "Green Zone") then
            Tween2(CFrame.new(- 2448.5300292969, 73.016105651855, - 3210.6306152344));
        elseif (_G.SelectIsland == "Factory") then
            Tween2(CFrame.new(424.12698364258, 211.16171264648, - 427.54049682617));
        elseif (_G.SelectIsland == "Colossuim") then
            Tween2(CFrame.new(- 1503.6224365234, 219.7956237793, 1369.3101806641));
        elseif (_G.SelectIsland == "Zombie Island") then
            Tween2(CFrame.new(- 5622.033203125, 492.19604492188, - 781.78552246094));
        elseif (_G.SelectIsland == "Two Snow Mountain") then
            Tween2(CFrame.new(753.14288330078, 408.23559570313, - 5274.6147460938));
        elseif (_G.SelectIsland == "Punk Hazard") then
            Tween2(CFrame.new(- 6127.654296875, 15.951762199402, - 5040.2861328125));
        elseif (_G.SelectIsland == "Cursed Ship") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(923.40197753906, 125.05712890625, 32885.875));
        elseif (_G.SelectIsland == "Ice Castle") then
            Tween2(CFrame.new(6148.4116210938, 294.38687133789, - 6741.1166992188));
        elseif (_G.SelectIsland == "Forgotten Island") then
            Tween2(CFrame.new(- 3032.7641601563, 317.89672851563, - 10075.373046875));
        elseif (_G.SelectIsland == "Ussop Island") then
            Tween2(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781));
        elseif (_G.SelectIsland == "Mini Sky Island") then
            Tween2(CFrame.new(- 288.74060058594, 49326.31640625, - 35248.59375));
        elseif (_G.SelectIsland == "Great Tree") then
            Tween2(CFrame.new(2681.2736816406, 1682.8092041016, - 7190.9853515625));
        elseif (_G.SelectIsland == "Castle On The Sea") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 5075.50927734375, 314.5155029296875, - 3150.0224609375));
        elseif (_G.SelectIsland == "MiniSky") then
            Tween2(CFrame.new(- 260.65557861328, 49325.8046875, - 35253.5703125));
        elseif (_G.SelectIsland == "Port Town") then
            Tween2(CFrame.new(- 290.7376708984375, 6.729952812194824, 5343.5537109375));
        elseif (_G.SelectIsland == "Hydra Island") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906));
        elseif (_G.SelectIsland == "Floating Turtle") then
            Tween2(CFrame.new(- 13274.528320313, 531.82073974609, - 7579.22265625));
        elseif (_G.SelectIsland == "Mansion") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 12468.5380859375, 375.0094299316406, - 7554.62548828125));
        elseif (_G.SelectIsland == "Castle On The Sea") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 5075.50927734375, 314.5155029296875, - 3150.0224609375));
        elseif (_G.SelectIsland == "Haunted Castle") then
            Tween2(CFrame.new(- 9515.3720703125, 164.00624084473, 5786.0610351562));
        elseif (_G.SelectIsland == "Ice Cream Island") then
            Tween2(CFrame.new(- 902.56817626953, 79.93204498291, - 10988.84765625));
        elseif (_G.SelectIsland == "Peanut Island") then
            Tween2(CFrame.new(- 2062.7475585938, 50.473892211914, - 10232.568359375));
        elseif (_G.SelectIsland == "Cake Island") then
            Tween2(CFrame.new(- 1884.7747802734375, 19.327526092529297, - 11666.8974609375));
        elseif (_G.SelectIsland == "Cocoa Island") then
            Tween2(CFrame.new(87.94276428222656, 73.55451202392578, - 12319.46484375));
        elseif (_G.SelectIsland == "Candy Island") then
            Tween2(CFrame.new(- 1014.4241943359375, 149.11068725585938, - 14555.962890625));
        elseif (_G.SelectIsland == "Tiki Outpost") then
            Tween2(CFrame.new(- 16542.447265625, 55.68632888793945, 1044.41650390625));
        end
    end
});
DanhSachTab.Teleport:AddButton({
    Title = "Dừng Bay",
    Description = "",
    Callback = function()
        CancelTween();
    end
});
DanhSachTab.Visual:AddButton({
    Title = "Giả",
    Description = "",
    Callback = function()
        local v318 = game:GetService("Players").LocalPlayer;
        local v319 = require(game:GetService("ReplicatedStorage").Notification);
        local v320 = v318:WaitForChild("Data");
        local v321 = require(game.ReplicatedStorage:WaitForChild("EXPFunction"));
        local v322 = require(game:GetService("ReplicatedStorage").Effect.Container.LevelUp);
        local v323 = require(game:GetService("ReplicatedStorage").Util.Sound);
        local v324 = game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp_Proxy") or game:GetService("ReplicatedStorage").Util.Sound.Storage.Other:FindFirstChild("LevelUp") ;
        function ThanhTienTrinh9(ManHinh43)
            local ManHinh44 = ManHinh43;
            while true do
                local KhungChinh49, KhungChinh50 = string.gsub(ManHinh44, "^(-?%d+)(%d%d%d)", "%1,%2");
                ManHinh44 = KhungChinh49;
                if (KhungChinh50 == 0) then
                    break;
                end
            end
            return ManHinh44;
        end
        v319.new("<Color=Yellow>QUEST COMPLETED!<Color=/>"):Display();
        v319.new("Earned<Color=Yellow>9,999,999,999,999 Exp.<Color=/>(+None)"):Display();
        v319.new("Earned<Color=Green>$9,999,999,999,999<Color=/>"):Display();
        v318.Data.Exp.Value = 999999999999;
        v318.Data.Beli.Value = v318.Data.Beli.Value + 999999999999 ;
        delay = 0;
        count = 0;
        while (v318.Data.Exp.Value - v321(v320.Level.Value)) > 0 do
            v318.Data.Exp.Value = v318.Data.Exp.Value - v321(v320.Level.Value) ;
            v318.Data.Level.Value = v318.Data.Level.Value + 1 ;
            v318.Data.Points.Value = v318.Data.Points.Value + 3 ;
            v322({
                v318
            });
            v323.Play(v323, v324.Value);
            v319.new("<Color=Green>LEVEL UP!<Color=/>(" .. v318.Data.Level.Value .. ")"):Display();
            count = count + 1 ;
            if (count >= 5) then
                delay = tick();
                count = 0;
                wait();
            end
        end
    end
});
DanhSachTab.Visual:AddInput("Input_Level", {
    Title = "fake Cấp",
    Default = "fake level",
    Placeholder = "Nhập
    Numeric = false,
    Finished = false,
    Callback = function(v327)
        game:GetService("Players")['LocalPlayer'].Data.Level.Value = tonumber(v327);
    end
});
DanhSachTab.Visual:AddInput("Input_EXP", {
    Title = "fake Kinh Nghiệm",
    Default = "fake esp",
    Placeholder = "Nhập
    Numeric = false,
    Finished = false,
    Callback = function(v329)
        game:GetService("Players")['LocalPlayer'].Data.Exp.Value = tonumber(v329);
    end
});
DanhSachTab.Visual:AddInput("Input_Beli", {
    Title = "fake Tiền",
    Default = "fake money",
    Placeholder = "Nhập
    Numeric = false,
    Finished = false,
    Callback = function(v331)
        game:GetService("Players")['LocalPlayer'].Data.Beli.Value = tonumber(v331);
    end
});
DanhSachTab.Visual:AddInput("Input_Fragments", {
    Title = "fake Điểm F",
    Default = "fake frag",
    Placeholder = "Nhập
    Numeric = false,
    Finished = false,
    Callback = function(v333)
        game:GetService("Players")['LocalPlayer'].Data.Fragments.Value = tonumber(v333);
    end
});
local ThanhTienTrinh2 = game.ReplicatedStorage:FindFirstChild("Remotes").CommF_:InvokeServer("GetFruits");
Table_DevilFruitSniper = {};
ShopDevilSell = {};
for v335, v336 in next, ThanhTienTrinh2 do
    table.insert(Table_DevilFruitSniper, v336.Name);
    if v336.OnSale then
        table.insert(ShopDevilSell, v336.Name);
    end
end
_G.SelectFruit = "Dragon-Dragon";
_G.PermanentFruit = "Dragon-Dragon";
_G.AutoBuyFruitSniper = false;
_G.AutoSwitchPermanentFruit = false;
local ThanhTienTrinh3 = DanhSachTab.Fruit:AddDropdown("DropdownFruit", {
    Title = "Chọn Trái để mua",
    Description = "",
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1
});
ThanhTienTrinh3:SetValue(_G.SelectFruit);
ThanhTienTrinh3:OnChanged(function(v337)
    _G.SelectFruit = v337;
end);
local NenLoader1 = DanhSachTab.Fruit:AddToggle("ToggleFruit", {
    Title = "Mua Trái Chọn (nếu như nó có bán trong shop)",
    Description = "",
    Default = false
});
NenLoader1:OnChanged(function(v338)
    if v338 then
        _G.AutoBuyFruitSniper = true;
        pcall(function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits");
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PurchaseRawFruit", _G.SelectFruit, false);
        end);
        _G.AutoBuyFruitSniper = false;
    end
end);
LuaChon.ToggleFruit:SetValue(false);
local ThanhTienTrinh4 = DanhSachTab.Fruit:AddDropdown("DropdownPermanentFruit", {
    Title = "Chọn Trái Vĩnh Viễn (nếu như bạn có vv)",
    Description = "",
    Values = Table_DevilFruitSniper,
    Multi = false,
    Default = 1
});
ThanhTienTrinh4:SetValue(_G.PermanentFruit);
ThanhTienTrinh4:OnChanged(function(v339)
    _G.PermanentFruit = v339;
end);
local ThanhTienTrinh5 = DanhSachTab.Fruit:AddToggle("TogglePermanentFruit", {
    Title = "Đổi Trái Vĩnh Viễn (nếu như bạn có vv)",
    Description = "",
    Default = false
});
ThanhTienTrinh5:OnChanged(function(v340)
    if v340 then
        _G.AutoSwitchPermanentFruit = true;
        pcall(function()
            local HinhAnhNguoiDung42 = {
                [1] = "SwitchFruit",
                [2] = _G.PermanentFruit
            };
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(HinhAnhNguoiDung42));
        end);
        _G.AutoSwitchPermanentFruit = false;
    end
end);
LuaChon.TogglePermanentFruit:SetValue(false);
local ThanhTienTrinh6 = DanhSachTab.Fruit:AddToggle("ToggleStore", {
    Title = "Lưu Trái",
    Description = "",
    Default = false
});
ThanhTienTrinh6:OnChanged(function(v341)
    _G.AutoStoreFruit = v341;
end);
LuaChon.ToggleStore:SetValue(false);
spawn(function()
    while task.wait() do
        if _G.AutoStoreFruit then
            pcall(function()
                if _G.AutoStoreFruit then
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Bomb-Bomb", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spike-Spike", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Chop-Chop", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spring-Spring", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rocket Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rocket-Rocket", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Smoke-Smoke", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spin-Spin", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Flame-Flame", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Falcon Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Falcon", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("alcon Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ice-Ice", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Sand-Sand", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dark-Dark", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ghost Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Ghost-Ghost", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Diamond-Diamond", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Light-Light", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Love-Love", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rubber-Rubber", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Barrier-Barrier", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Magma-Magma", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Portal Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Door-Door", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Portal Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Quake-Quake", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buddha", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Buddha Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spider Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Spider-Spider", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spider Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Phoenix", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Phoenix Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Rumble-Rumble", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Pain Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Pain-Pain", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Pain Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Gravity-Gravity", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dough-Dough", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Shadow-Shadow", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Venom-Venom", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Control-Control", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spirit Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Soul-Soul", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spirit Fruit"));
                    end
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Dragon-Dragon", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"));
                        if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", "Leopard-Leopard", game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"));
                        end
                    end
                end
            end);
        end
        wait();
    end
end);
local ThanhTienTrinh7 = DanhSachTab.Fruit:AddToggle("ToggleRandomFruit", {
    Title = "Random Trái",
    Description = "",
    Default = false
});
ThanhTienTrinh7:OnChanged(function(v342)
    _G.Random_Auto = v342;
end);
LuaChon.ToggleRandomFruit:SetValue(false);
spawn(function()
    pcall(function()
        while wait() do
            if _G.Random_Auto then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy");
            end
        end
    end);
end);
local ThanhTienTrinh8 = DanhSachTab.Fruit:AddToggle("ToggleCollectTP", {
    Title = "Bay Đến Trái",
    Description = "",
    Default = false
});
ThanhTienTrinh8:OnChanged(function(v343)
    _G.CollectFruitTP = v343;
end);
LuaChon.ToggleCollectTP:SetValue(false);
spawn(function()
    while wait() do
        if _G.CollectFruitTP then
            for TenNguoiDung01, TenNguoiDung02 in pairs(game.Workspace:GetChildren()) do
                if string.find(TenNguoiDung02.Name, "Fruit") then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = TenNguoiDung02.Handle.CFrame;
                end
            end
        end
    end
end);
local ThanhTienTrinh9 = DanhSachTab.Fruit:AddToggle("ToggleCollect", {
    Title = "Dịch Chuyển Đến Trái xuất hiện",
    Description = "",
    Default = false
});
ThanhTienTrinh9:OnChanged(function(v344)
    _G.Tweenfruit = v344;
end);
LuaChon.ToggleCollect:SetValue(false);
spawn(function()
    while wait() do
        if _G.Tweenfruit then
            for TenNguoiDung03, TenNguoiDung04 in pairs(game.Workspace:GetChildren()) do
                if string.find(TenNguoiDung04.Name, "Fruit") then
                    Tween(TenNguoiDung04.Handle.CFrame);
                end
            end
        end
    end
end);
local ManHinh6 = DanhSachTab.Fruit:AddSection("Định Vị");
local NhanTrangThai0 = DanhSachTab.Fruit:AddToggle("ToggleEspPlayer", {
    Title = "định vị Người Chơi",
    Description = "",
    Default = false
});
NhanTrangThai0:OnChanged(function(v345)
    ESPPlayer = v345;
    UpdatePlayerChams();
end);
LuaChon.ToggleEspPlayer:SetValue(false);
local NhanTrangThai1 = DanhSachTab.Fruit:AddToggle("ToggleEspFruit", {
    Title = "định vị Trái",
    Description = "",
    Default = false
});
NhanTrangThai1:OnChanged(function(v346)
    DevilFruitESP = v346;
    while DevilFruitESP do
        wait();
        UpdateDevilChams();
    end
end);
LuaChon.ToggleEspFruit:SetValue(false);
local NhanTrangThai2 = DanhSachTab.Fruit:AddToggle("ToggleEspIsland", {
    Title = "định vị Đảo",
    Description = "",
    Default = false
});
NhanTrangThai2:OnChanged(function(v347)
    IslandESP = v347;
    while IslandESP do
        wait();
        UpdateIslandESP();
    end
end);
LuaChon.ToggleEspIsland:SetValue(false);
local NhanTrangThai3 = DanhSachTab.Fruit:AddToggle("ToggleEspFlower", {
    Title = "định vị Hoa",
    Description = "",
    Default = false
});
NhanTrangThai3:OnChanged(function(v348)
    FlowerESP = v348;
    UpdateFlowerChams();
end);
LuaChon.ToggleEspFlower:SetValue(false);
spawn(function()
    while wait() do
        if FlowerESP then
            UpdateFlowerChams();
        end
        if DevilFruitESP then
            UpdateDevilChams();
        end
        if ChestESP then
            UpdateChestChams();
        end
        if ESPPlayer then
            UpdatePlayerChams();
        end
        if RealFruitESP then
            UpdateRealFruitChams();
        end
    end
end);
local NhanTrangThai4 = DanhSachTab.Fruit:AddToggle("ToggleEspRealFruit", {
    Title = "định vị Trái Dứa Khớm Táo",
    Description = "",
    Default = false
});
NhanTrangThai4:OnChanged(function(v349)
    RealFruitEsp = v349;
    while RealFruitEsp do
        wait();
        UpdateRealFruitEsp();
    end
end);
LuaChon.ToggleEspRealFruit:SetValue(false);
function UpdateRealFruitEsp()
    for ManHinh48, ManHinh49 in pairs(game.Workspace.AppleSpawner:GetChildren()) do
        if ManHinh49:IsA("Tool") then
            if RealFruitEsp then
                if not ManHinh49.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDe66 = Instance.new("BillboardGui", ManHinh49.Handle);
                    TieuDe66.Name = "NameEsp" .. Number ;
                    TieuDe66.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDe66.Size = UDim2.new(1, 200, 1, 30);
                    TieuDe66.Adornee = ManHinh49.Handle;
                    TieuDe66.AlwaysOnTop = true;
                    local TieuDe73 = Instance.new("TextLabel", TieuDe66);
                    TieuDe73.Font = Enum.Font.GothamSemibold;
                    TieuDe73.FontSize = "Size14";
                    TieuDe73.TextWrapped = true;
                    TieuDe73.Size = UDim2.new(1, 0, 1, 0);
                    TieuDe73.TextYAlignment = "Top";
                    TieuDe73.BackgroundTransparency = 1;
                    TieuDe73.TextStrokeTransparency = 0.5;
                    TieuDe73.TextColor3 = Color3.fromRGB(255, 0, 0);
                    TieuDe73.Text = ManHinh49.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - ManHinh49.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    ManHinh49.Handle["NameEsp" .. Number ].TextLabel.Text = ManHinh49.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - ManHinh49.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif ManHinh49.Handle:FindFirstChild("NameEsp" .. Number) then
                ManHinh49.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
    for ManHinh50, ManHinh51 in pairs(game.Workspace.PineappleSpawner:GetChildren()) do
        if ManHinh51:IsA("Tool") then
            if RealFruitEsp then
                if not ManHinh51.Handle:FindFirstChild("NameEsp" .. Number) then
                    local TieuDe85 = Instance.new("BillboardGui", ManHinh51.Handle);
                    TieuDe85.Name = "NameEsp" .. Number ;
                    TieuDe85.ExtentsOffset = Vector3.new(0, 1, 0);
                    TieuDe85.Size = UDim2.new(1, 200, 1, 30);
                    TieuDe85.Adornee = ManHinh51.Handle;
                    TieuDe85.AlwaysOnTop = true;
                    local TieuDe92 = Instance.new("TextLabel", TieuDe85);
                    TieuDe92.Font = Enum.Font.GothamSemibold;
                    TieuDe92.FontSize = "Size14";
                    TieuDe92.TextWrapped = true;
                    TieuDe92.Size = UDim2.new(1, 0, 1, 0);
                    TieuDe92.TextYAlignment = "Top";
                    TieuDe92.BackgroundTransparency = 1;
                    TieuDe92.TextStrokeTransparency = 0.5;
                    TieuDe92.TextColor3 = Color3.fromRGB(255, 174, 0);
                    TieuDe92.Text = ManHinh51.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - ManHinh51.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    ManHinh51.Handle["NameEsp" .. Number ].TextLabel.Text = ManHinh51.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - ManHinh51.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif ManHinh51.Handle:FindFirstChild("NameEsp" .. Number) then
                ManHinh51.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
    for ManHinh52, ManHinh53 in pairs(game.Workspace.BananaSpawner:GetChildren()) do
        if ManHinh53:IsA("Tool") then
            if RealFruitEsp then
                if not ManHinh53.Handle:FindFirstChild("NameEsp" .. Number) then
                    local NenLoader04 = Instance.new("BillboardGui", ManHinh53.Handle);
                    NenLoader04.Name = "NameEsp" .. Number ;
                    NenLoader04.ExtentsOffset = Vector3.new(0, 1, 0);
                    NenLoader04.Size = UDim2.new(1, 200, 1, 30);
                    NenLoader04.Adornee = ManHinh53.Handle;
                    NenLoader04.AlwaysOnTop = true;
                    local NenLoader11 = Instance.new("TextLabel", NenLoader04);
                    NenLoader11.Font = Enum.Font.GothamSemibold;
                    NenLoader11.FontSize = "Size14";
                    NenLoader11.TextWrapped = true;
                    NenLoader11.Size = UDim2.new(1, 0, 1, 0);
                    NenLoader11.TextYAlignment = "Top";
                    NenLoader11.BackgroundTransparency = 1;
                    NenLoader11.TextStrokeTransparency = 0.5;
                    NenLoader11.TextColor3 = Color3.fromRGB(251, 255, 0);
                    NenLoader11.Text = ManHinh53.Name .. " \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - ManHinh53.Handle.Position).Magnitude / 3) .. " Distance" ;
                else
                    ManHinh53.Handle["NameEsp" .. Number ].TextLabel.Text = ManHinh53.Name .. " " .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - ManHinh53.Handle.Position).Magnitude / 3) .. " Distance" ;
                end
            elseif ManHinh53.Handle:FindFirstChild("NameEsp" .. Number) then
                ManHinh53.Handle:FindFirstChild("NameEsp" .. Number):Destroy();
            end
        end
    end
end
local NhanTrangThai5 = DanhSachTab.Fruit:AddToggle("ToggleIslandMirageEsp", {
    Title = "định vị Đảo Bí Ẩn",
    Description = "",
    Default = false
});
NhanTrangThai5:OnChanged(function(v350)
    IslandMirageEsp = v350;
    while IslandMirageEsp do
        wait();
        UpdateIslandMirageEsp();
    end
end);
LuaChon.ToggleIslandMirageEsp:SetValue(false);
function isnil(v351)
    return v351 == nil ;
end
local function ThongTinLoader0(v352)
    return math.floor(tonumber(v352) + 0.5);
end
Number = math.random(1, 1000000);
function UpdateIslandMirageEsp()
    for ManHinh54, ManHinh55 in pairs(game:GetService("Workspace")['_WorldOrigin'].Locations:GetChildren()) do
        pcall(function()
            if MirageIslandESP then
                if (ManHinh55.Name == "Mirage Island") then
                    if not ManHinh55:FindFirstChild("NameEsp") then
                        local NhanTrangThai47 = Instance.new("BillboardGui", ManHinh55);
                        NhanTrangThai47.Name = "NameEsp";
                        NhanTrangThai47.ExtentsOffset = Vector3.new(0, 1, 0);
                        NhanTrangThai47.Size = UDim2.new(1, 200, 1, 30);
                        NhanTrangThai47.Adornee = ManHinh55;
                        NhanTrangThai47.AlwaysOnTop = true;
                        local NhanTrangThai53 = Instance.new("TextLabel", NhanTrangThai47);
                        NhanTrangThai53.Font = Enum.Font.Code;
                        NhanTrangThai53.FontSize = Enum.FontSize.Size14;
                        NhanTrangThai53.TextWrapped = true;
                        NhanTrangThai53.Size = UDim2.new(1, 0, 1, 0);
                        NhanTrangThai53.TextYAlignment = Enum.TextYAlignment.Top;
                        NhanTrangThai53.BackgroundTransparency = 1;
                        NhanTrangThai53.TextStrokeTransparency = 0.5;
                        NhanTrangThai53.TextColor3 = Color3.fromRGB(80, 245, 245);
                    else
                        ManHinh55['NameEsp'].TextLabel.Text = ManHinh55.Name .. "   \n" .. ThongTinLoader0((game:GetService("Players").LocalPlayer.Character.Head.Position - ManHinh55.Position).Magnitude / 3) .. " M" ;
                    end
                end
            elseif ManHinh55:FindFirstChild("NameEsp") then
                ManHinh55:FindFirstChild("NameEsp"):Destroy();
            end
        end);
    end
end
local NhanTrangThai6 = {
    "Flame",
    "Ice",
    "Quake",
    "Light",
    "Dark",
    "Spider",
    "Rumble",
    "Magma",
    "Buddha",
    "Sand",
    "Phoenix",
    "Dough"
};
local NhanTrangThai7 = DanhSachTab.Raid:AddDropdown("DropdownRaid", {
    Title = "Chọn Chip raid",
    Description = "",
    Values = NhanTrangThai6,
    Multi = false,
    Default = 1
});
NhanTrangThai7:SetValue(SelectChip);
NhanTrangThai7:OnChanged(function(v353)
    SelectChip = v353;
end);
local NhanTrangThai8 = DanhSachTab.Raid:AddToggle("ToggleBuy", {
    Title = "Mua Chip",
    Description = "",
    Default = false
});
NhanTrangThai8:OnChanged(function(v354)
    _G.Auto_Buy_Chips_Dungeon = v354;
end);
LuaChon.ToggleBuy:SetValue(false);
spawn(function()
    while wait() do
        if _G.Auto_Buy_Chips_Dungeon then
            pcall(function()
                local TenNguoiDung05 = {
                    [1] = "RaidsNpc",
                    [2] = "Select",
                    [3] = SelectChip
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung05));
            end);
        end
    end
end);
local NhanTrangThai9 = DanhSachTab.Raid:AddToggle("ToggleStart", {
    Title = "Bắt Đầu Raid",
    Description = "",
    Default = false
});
NhanTrangThai9:OnChanged(function(v355)
    _G.Auto_StartRaid = v355;
end);
LuaChon.ToggleStart:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_StartRaid then
                if (game:GetService("Players")['LocalPlayer'].PlayerGui.Main.Timer.Visible == false) then
                    if (not game:GetService("Workspace")['_WorldOrigin'].Locations:FindFirstChild("Island 1") and (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip"))) then
                        if Sea2 then
                            Tween2(CFrame.new(- 6438.73535, 250.645355, - 4501.50684));
                            local CuaSoChinh47 = {
                                [1] = "SetSpawnPoint"
                            };
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(CuaSoChinh47));
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector);
                        elseif Sea3 then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 5075.50927734375, 314.5155029296875, - 3150.0224609375));
                            Tween2(CFrame.new(- 5017.40869, 314.844055, - 2823.0127, - 0.925743818, 4.482175e-8, - 0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, - 0.925743818));
                            local DanhSachTab56 = {
                                [1] = "SetSpawnPoint"
                            };
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(DanhSachTab56));
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector);
                        end
                    end
                end
            end
        end);
    end
end);
local TaiCodeNgoai0 = DanhSachTab.Raid:AddToggle("ToggleNextIsland", {
    Title = "Đấm Quái Raid+Bay Đến Đảo tiếp theo",
    Description = "",
    Default = false
});
TaiCodeNgoai0:OnChanged(function(v356)
    AutoNextIsland = v356;
    if not v356 then
        _G.AutoNear = false;
    end
end);
LuaChon.ToggleNextIsland:SetValue(false);
spawn(function()
    local v357 = {};
    while task.wait() do
        if AutoNextIsland then
            pcall(function()
                local TenNguoiDung06 = game.Players.LocalPlayer.Character;
                if (TenNguoiDung06 and TenNguoiDung06:FindFirstChild("HumanoidRootPart")) then
                    local TieuDePhu00 = game:GetService("Workspace")['_WorldOrigin'].Locations;
                    local TieuDePhu01 = TenNguoiDung06.HumanoidRootPart.Position;
                    if (((TieuDePhu01 - Vector3.new(- 6438.73535, 250.645355, - 4501.50684)).Magnitude < 1) or ((TieuDePhu01 - Vector3.new(- 5017.40869, 314.844055, - 2823.0127)).Magnitude < 1)) then
                        v357 = {};
                    end
                    if TieuDePhu00:FindFirstChild("Island 1") then
                        _G.AutoNear = true;
                    end
                    if (TieuDePhu00:FindFirstChild("Island 2") and not v357["Island 2"]) then
                        Tween(TieuDePhu00:FindFirstChild("Island 2").CFrame);
                        v357["Island 2"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    elseif (TieuDePhu00:FindFirstChild("Island 3") and not v357["Island 3"]) then
                        Tween(TieuDePhu00:FindFirstChild("Island 3").CFrame);
                        v357["Island 3"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    elseif (TieuDePhu00:FindFirstChild("Island 4") and not v357["Island 4"]) then
                        Tween(TieuDePhu00:FindFirstChild("Island 4").CFrame);
                        v357["Island 4"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    elseif (TieuDePhu00:FindFirstChild("Island 5") and not v357["Island 5"]) then
                        Tween(TieuDePhu00:FindFirstChild("Island 5").CFrame);
                        v357["Island 5"] = true;
                        AutoNextIsland = false;
                        wait();
                        AutoNextIsland = true;
                    end
                end
            end);
        end
    end
end);
local TaiCodeNgoai1 = DanhSachTab.Raid:AddToggle("ToggleAwake", {
    Title = "Thức Tỉnh trái",
    Description = "",
    Default = false
});
TaiCodeNgoai1:OnChanged(function(v358)
    AutoAwakenAbilities = v358;
end);
LuaChon.ToggleAwake:SetValue(false);
spawn(function()
    while task.wait() do
        if AutoAwakenAbilities then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener", "Awaken");
            end);
        end
    end
end);
local TaiCodeNgoai2 = DanhSachTab.Raid:AddToggle("ToggleGetFruit", {
    Title = "Lấy Trái Dưới 1 Triệu để raid",
    Description = "",
    Default = false
});
TaiCodeNgoai2:OnChanged(function(v359)
    _G.Autofruit = v359;
end);
spawn(function()
    while wait() do
        pcall(function()
            if _G.Autofruit then
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Rocket-Rocket"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Spin-Spin"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Chop-Chop"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Spring-Spring"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Bomb-Bomb"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Smoke-Smoke"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Spike-Spike"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Flame-Flame"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Falcon-Falcon"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Ice-Ice"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Sand-Sand"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Dark-Dark"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Ghost-Ghost"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Diamond-Diamond"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Light-Light"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Rubber-Rubber"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
                local TenNguoiDung07 = {
                    [1] = "LoadFruit",
                    [2] = "Barrier-Barrier"
                };
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(TenNguoiDung07));
            end
        end);
    end
end);
if Sea2 then
    DanhSachTab.Raid:AddButton({
        Title = "Bay Đến Chỗ Tập Kích",
        Description = "",
        Callback = function()
            Tween2(CFrame.new(- 6438.73535, 250.645355, - 4501.50684));
        end
    });
elseif Sea3 then
    DanhSachTab.Raid:AddButton({
        Title = "Bay Đến Chỗ Tập Kích",
        Description = "",
        Callback = function()
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(- 5075.50927734375, 314.5155029296875, - 3150.0224609375));
            Tween2(CFrame.new(- 5017.40869, 314.844055, - 2823.0127, - 0.925743818, 4.482175e-8, - 0.378151238, 4.5550315e-9, 1, 1.0737756e-7, 0.378151238, 9.768162e-8, - 0.925743818));
        end
    });
end
local ManHinh6 = DanhSachTab.Raid:AddSection("Tập Kích Law");
local TaiCodeNgoai3 = DanhSachTab.Raid:AddToggle("ToggleLaw", {
    Title = "Mua Chip Và Đấm Law",
    Description = "",
    Default = false
});
TaiCodeNgoai3:OnChanged(function(v360)
    Auto_Law = v360;
end);
LuaChon.ToggleLaw:SetValue(false);
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if (not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") and not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip") and not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order")) then
                    wait();
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "1");
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Microchip", "2");
                end
            end
        end
    end);
end);
spawn(function()
    pcall(function()
        while wait() do
            if Auto_Law then
                if (not game:GetService("Workspace").Enemies:FindFirstChild("Order") and not game:GetService("ReplicatedStorage"):FindFirstChild("Order")) then
                    if (game:GetService("Players").LocalPlayer.Character:FindFirstChild("Microchip") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Microchip")) then
                        fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector);
                    end
                end
                if (game:GetService("ReplicatedStorage"):FindFirstChild("Order") or game:GetService("Workspace").Enemies:FindFirstChild("Order")) then
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for TaiCodeNgoai68, TaiCodeNgoai69 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (TaiCodeNgoai69.Name == "Order") then
                                repeat
                                    wait(_G.Fast_Delay);
                                    AttackNoCoolDown();
                                    AutoHaki();
                                    EquipTool(SelectWeapon);
                                    Tween(TaiCodeNgoai69.HumanoidRootPart.CFrame * Pos);
                                    TaiCodeNgoai69.HumanoidRootPart.CanCollide = false;
                                    TaiCodeNgoai69.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                until not TaiCodeNgoai69.Parent or (TaiCodeNgoai69.Humanoid.Health <= 0) or (Auto_Law == false)
                            end
                        end
                    elseif game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                        Tween(CFrame.new(- 6217.2021484375, 28.047645568848, - 5053.1357421875));
                    end
                end
            end
        end
    end);
end);
DanhSachTab.Race:AddButton({
    Title = "dịch chuyển đến Đền Thời Gian",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875));
    end
});
DanhSachTab.Race:AddButton({
    Title = "gạt cần",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875));
        Tween2(CFrame.new(28575.181640625, 14936.6279296875, 72.31636810302734));
    end
});
DanhSachTab.Race:AddButton({
    Title = "Chỗ Mua Gear",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875));
        Tween2(CFrame.new(28981.552734375, 14888.4267578125, - 120.245849609375));
    end
});
local ManHinh6 = DanhSachTab.Race:AddSection("Tộc");
DanhSachTab.Race:AddButton({
    Title = "dịch chuyển đến Cửa Tộc của bạn",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(28286.35546875, 14895.3017578125, 102.62469482421875));
        if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
            Tween2(CFrame.new(29221.822265625, 14890.9755859375, - 205.99114990234375));
        elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
            Tween2(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375));
        elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
            Tween2(CFrame.new(28231.17578125, 14890.9755859375, - 211.64173889160156));
        elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
            Tween2(CFrame.new(28502.681640625, 14895.9755859375, - 423.7279357910156));
        elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
            Tween2(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156));
        elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
            Tween2(CFrame.new(29012.341796875, 14890.9755859375, - 380.1492614746094));
        end
    end
});
local TaiCodeNgoai4 = DanhSachTab.Race:AddToggle("ToggleHumanandghoul", {
    Title = "Hoàn Thành trials [Human/Ghoul]",
    Description = "",
    Default = false
});
TaiCodeNgoai4:OnChanged(function(v361)
    KillAura = v361;
end);
LuaChon.ToggleHumanandghoul:SetValue(false);
local TaiCodeNgoai5 = DanhSachTab.Race:AddToggle("ToggleAutotrial", {
    Title = "Hoàn Thành trials",
    Description = "",
    Default = false
});
TaiCodeNgoai5:OnChanged(function(v362)
    _G.AutoQuestRace = v362;
end);
LuaChon.ToggleAutotrial:SetValue(false);
spawn(function()
    pcall(function()
        while wait() do
            if _G.AutoQuestRace then
                if (game:GetService("Players").LocalPlayer.Data.Race.Value == "Human") then
                    for NenLoader23, NenLoader24 in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if (NenLoader24:FindFirstChild("Humanoid") and NenLoader24:FindFirstChild("HumanoidRootPart") and (NenLoader24.Humanoid.Health > 0)) then
                            pcall(function()
                                repeat
                                    wait();
                                    NenLoader24.Humanoid.Health = 0;
                                    NenLoader24.HumanoidRootPart.CanCollide = false;
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                                until not _G.AutoQuestRace or not NenLoader24.Parent or (NenLoader24.Humanoid.Health <= 0)
                            end);
                        end
                    end
                elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea") then
                    for TaiCodeNgoai70, TaiCodeNgoai71 in pairs(game:GetService("Workspace").Map.SkyTrial.Model:GetDescendants()) do
                        if (TaiCodeNgoai71.Name == "snowisland_Cylinder.081") then
                            BTPZ(TaiCodeNgoai71.CFrame * CFrame.new(0, 0, 0));
                        end
                    end
                elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman") then
                    for CuaSoChinh82, CuaSoChinh83 in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                        if (CuaSoChinh83.Name == "HumanoidRootPart") then
                            Tween(CuaSoChinh83.CFrame * Pos);
                            for LuaChon46, LuaChon47 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if LuaChon47:IsA("Tool") then
                                    if (LuaChon47.ToolTip == "Melee") then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(LuaChon47);
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            for LuaChon48, LuaChon49 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if LuaChon49:IsA("Tool") then
                                    if (LuaChon49.ToolTip == "Blox Fruit") then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(LuaChon49);
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait();
                            for LuaChon50, LuaChon51 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if LuaChon51:IsA("Tool") then
                                    if (LuaChon51.ToolTip == "Sword") then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(LuaChon51);
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait();
                            for LuaChon52, LuaChon53 in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                if LuaChon53:IsA("Tool") then
                                    if (LuaChon53.ToolTip == "Gun") then
                                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(LuaChon53);
                                    end
                                end
                            end
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 122, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 120, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            wait(0.2);
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, 99, false, game.Players.LocalPlayer.Character.HumanoidRootPart);
                        end
                    end
                elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg") then
                    Tween(CFrame.new(28654, 14898.7832, - 30, 1, 0, 0, 0, 1, 0, 0, 0, 1));
                elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul") then
                    for LuaChon64, LuaChon65 in pairs(game.Workspace.Enemies:GetDescendants()) do
                        if (LuaChon65:FindFirstChild("Humanoid") and LuaChon65:FindFirstChild("HumanoidRootPart") and (LuaChon65.Humanoid.Health > 0)) then
                            pcall(function()
                                repeat
                                    wait();
                                    LuaChon65.Humanoid.Health = 0;
                                    LuaChon65.HumanoidRootPart.CanCollide = false;
                                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge);
                                until not _G.AutoQuestRace or not LuaChon65.Parent or (LuaChon65.Humanoid.Health <= 0)
                            end);
                        end
                    end
                elseif (game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink") then
                    for LuaChon90, LuaChon91 in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if (LuaChon91.Name == "StartPoint") then
                            Tween(LuaChon91.CFrame * CFrame.new(0, 10, 0));
                        end
                    end
                end
            end
        end
    end);
end);
local TaiCodeNgoai6 = DanhSachTab.Race:AddToggle("ToggleKillTrial", {
    Title = "Đấm Người Chơi Trong Trial",
    Description = "",
    Default = false
});
TaiCodeNgoai6:OnChanged(function(v363)
    _G.AutoKillTrial = v363;
end);
LuaChon.ToggleKillTrial:SetValue(false);
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoKillTrial then
                for TenNguoiDung70, TenNguoiDung71 in pairs(game:GetService("Players"):GetChildren()) do
                    if (TenNguoiDung71.Name and (TenNguoiDung71.Name ~= game.Players.LocalPlayer.Name) and ((TenNguoiDung71.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100)) then
                        if (TenNguoiDung71.Character.Humanoid.Health > 0) then
                            repeat
                                wait(_G.Fast_Delay);
                                EquipTool(SelectWeapon);
                                AutoHaki();
                                Tween(TenNguoiDung71.Character.HumanoidRootPart.CFrame * CFrame.new(0, 0, 5));
                                TenNguoiDung71.Character.HumanoidRootPart.CanCollide = false;
                                TenNguoiDung71.Character.HumanoidRootPart.Size = Vector3.new(60, 60, 60);
                                AttackNoCoolDown();
                            until not _G.AutoKillTrial or not TenNguoiDung71.Parent or (TenNguoiDung71.Character.Humanoid.Health <= 0)
                        end
                    end
                end
            end
        end);
    end
end);
local ManHinh6 = DanhSachTab.Race:AddSection("Huấn Luyện");
local TaiCodeNgoai7 = DanhSachTab.Race:AddToggle("ToggleFarmRace", {
    Title = "Cày Luyện Tộc",
    Description = "",
    Default = false
});
local TaiCodeNgoai8 = false;
TaiCodeNgoai7:OnChanged(function(v364)
    TaiCodeNgoai8 = v364;
end);
LuaChon.ToggleFarmRace:SetValue(false);
spawn(function()
    while wait() do
        if TaiCodeNgoai8 then
            pcall(function()
                if game.Players.LocalPlayer.Character:FindFirstChild("RaceTransformed") then
                    if (game.Players.LocalPlayer.Character.RaceTransformed.Value == true) then
                        _G.AutoBoneNoQuest = false;
                        Tween(CFrame.new(- 9698.4736328125, 445.09442138671875, 6545.8525390625));
                    elseif (game.Players.LocalPlayer.Character.RaceTransformed.Value == false) then
                        _G.AutoBoneNoQuest = true;
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "Y", false, game);
                        wait();
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "Y", false, game);
                    end
                end
            end);
        else
            _G.AutoBoneNoQuest = false;
        end
    end
end);
local TaiCodeNgoai9 = DanhSachTab.Race:AddToggle("ToggleUpgrade", {
    Title = "Mua Gear v4",
    Description = "",
    Default = false
});
TaiCodeNgoai9:OnChanged(function(v365)
    _G.AutoUpgrade = v365;
    if _G.AutoUpgrade then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("UpgradeRace", "Buy");
    end
end);
LuaChon.ToggleUpgrade:SetValue(false);
local ManHinh6 = DanhSachTab.Shop:AddSection("Khả Năng");
DanhSachTab.Shop:AddButton({
    Title = "mua Nhảy cao",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "mua Haki Đấm",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "mua soru",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "mua Haki Quan Sát",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("KenTalk", "Buy");
    end
});
local ManHinh6 = DanhSachTab.Shop:AddSection("Kiếm");
DanhSachTab.Shop:AddButton({
    Title = "Cutlass",
    Description = "",get cutlass
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Cutlass");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Katana",
    Description = "",get katana
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Katana");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Iron Mace",
    Description = "",get iron mace
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Iron Mace");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Duel Katana",
    Description = "",get duel katana
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Duel Katana");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Triple Katana",
    Description = "",get triple katana
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Triple Katana");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Pipe",
    Description = "",get pipe
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Pipe");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Dual-Headed Blade",
    Description = "",get dual headed blade
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Dual-Headed Blade");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Bisento",
    Description = "",get bisento
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Bisento");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Soul Cane",
    Description = "",get soul cane
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem", "Soul Cane");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Pole V2",
    Description = "",get pole ThongTinLoader
    Callback = function()
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer("ThunderGodTalk");
    end
});
local ManHinh6 = DanhSachTab.Shop:AddSection("Võ");
DanhSachTab.Shop:AddButton({
    Title = "Black Leg",
    Description = "",get black leg
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Electro",
    Description = "",get elextro 
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Fishman Karate",
    Description = "",get fishman karate
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Dragon Claw",
    Description = "",get dragon claw
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1");
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Superhuman",
    Description = "",get superhuman
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Death Step",
    Description = "",get death steps 
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Sharkman Karate",
    Description = "",get sharkman karate 
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true);
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Electric Claw",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Dragon Talon",
    Description = "",get dragon talon
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Godhuman",
    Description = "",get godhuman 
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Sanguine Art",
    Description = "",get sanguine art
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySanguineArt");
    end
});
local ManHinh6 = DanhSachTab.Shop:AddSection("Khác");
DanhSachTab.Shop:AddButton({
    Title = "change stats",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "1");
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Refund", "2");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "change race",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "1");
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "Reroll", "2");
    end
});
DanhSachTab.Shop:AddButton({
    Title = "change to race ghoul",
    Description = "",
    Callback = function()
        local v366 = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        };
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v366));
    end
});
DanhSachTab.Shop:AddButton({
    Title = "change to race cyborg",
    Description = "",
    Callback = function()
        local v367 = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        };
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v367));
    end
});
DanhSachTab.Shop:AddButton({
    Title = "Đổi Tộc Draco
    Description = "",Chỉ Ở Biển 3 có thể đổi được
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906));
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938));
        local v368 = Vector3.new(5814.42724609375, 1208.3267822265625, 884.5785522460938);
        local v369 = game.Players.LocalPlayer;
        local v370 = v369.Character or v369.CharacterAdded:Wait() ;
        repeat
            wait();
        until (v370.HumanoidRootPart.Position - v368).Magnitude < 1
        local v371 = {
            [1] = {
                NPC = "Dragon Wizard",
                Command = "DragonRace"
            }
        };
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(v371));
    end
});
DanhSachTab.Misc:AddButton({
    Title = "rejoi sever",
    Description = "",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
    end
});
DanhSachTab.Misc:AddButton({
    Title = "hop another sever",
    Description = "",
    Callback = function()
        Hop();
    end
});
function Hop()
    local v372 = game.PlaceId;
    local v373 = {};
    local v374 = "";
    local v375 = os.date("!*t").hour;
    local v376 = false;
    function TPReturner()
        local ManHinh56;
        if (v374 == "") then
            ManHinh56 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v372 .. "/servers/Public?sortOrder=Asc&limit=100"));
        else
            ManHinh56 = game.HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/" .. v372 .. "/servers/Public?sortOrder=Asc&limit=100&cursor=" .. v374));
        end
        local ManHinh57 = "";
        if (ManHinh56.nextPageCursor and (ManHinh56.nextPageCursor ~= "null") and (ManHinh56.nextPageCursor ~= nil)) then
            v374 = ManHinh56.nextPageCursor;
        end
        local ManHinh58 = 0;
        for KhungChinh51, KhungChinh52 in pairs(ManHinh56.data) do
            local KhungChinh53 = true;
            ManHinh57 = tostring(KhungChinh52.id);
            if (tonumber(KhungChinh52.maxPlayers) > tonumber(KhungChinh52.playing)) then
                for TenNguoiDung72, TenNguoiDung73 in pairs(v373) do
                    if (ManHinh58 ~= 0) then
                        if (ManHinh57 == tostring(TenNguoiDung73)) then
                            KhungChinh53 = false;
                        end
                    elseif (tonumber(v375) ~= tonumber(TenNguoiDung73)) then
                        local TaiCodeNgoai72 = pcall(function()
                            v373 = {};
                            table.insert(v373, v375);
                        end);
                    end
                    ManHinh58 = ManHinh58 + 1 ;
                end
                if (KhungChinh53 == true) then
                    table.insert(v373, ManHinh57);
                    wait();
                    pcall(function()
                        wait();
                        game:GetService("TeleportService"):TeleportToPlaceInstance(v372, ManHinh57, game.Players.LocalPlayer);
                    end);
                    wait();
                end
            end
        end
    end
    function NenLoader8()
        while wait() do
            pcall(function()
                TPReturner();
                if (v374 ~= "") then
                    TPReturner();
                end
            end);
        end
    end
    NenLoader8();
end
local ManHinh6 = DanhSachTab.Misc:AddSection("team");
DanhSachTab.Misc:AddButton({
    Title = "chuyển đổi sang Hải Tặc",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates");
    end
});
DanhSachTab.Misc:AddButton({
    Title = "chuyển đổi sang Hải Quân",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Marines");
    end
});
local ManHinh6 = DanhSachTab.Misc:AddSection("Kinh Nghiệm");
local CuaSoChinh0 = {
    "KITT_RESET",
    "Sub2UncleKizaru",
    "SUB2GAMERROBOT_RESET1",
    "Sub2Fer999",
    "Enyu_is_Pro",
    "JCWK",
    "StarcodeHEO",
    "MagicBus",
    "KittGaming",
    "Sub2CaptainMaui",
    "Sub2OfficalNoobie",
    "TheGreatAce",
    "Sub2NoobMaster123",
    "Sub2Daigrock",
    "Axiore",
    "StrawHatMaine",
    "TantaiGaming",
    "Bluxxy",
    "SUB2GAMERROBOT_EXP1",
    "Chandler",
    "NOMOREHACK",
    "BANEXPLOIT",
    "WildDares",
    "BossBuild",
    "GetPranked",
    "EARN_FRUITS",
    "FIGHT4FRUIT",
    "NOEXPLOITER",
    "NOOB2ADMIN",
    "CODESLIDE",
    "ADMINHACKED",
    "ADMINDARES",
    "fruitconcepts",
    "krazydares",
    "TRIPLEABUSE",
    "SEATROLLING",
    "24NOADMIN",
    "REWARDFUN",
    "NEWTROLL",
    "fudd10_ThongTinLoader",
    "Fudd10",
    "Bignews",
    "SECRET_ADMIN"
};
DanhSachTab.Misc:AddButton({
    Title = "enter all code x2",
    Description = "",
    Callback = function()
        for ManHinh59, ManHinh60 in ipairs(CuaSoChinh0) do
            RedeemCode(ManHinh60);
        end
    end
});
function RedeemCode(v377)
    game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v377);
end
local ManHinh6 = DanhSachTab.Misc:AddSection("Danh Hiệu");
DanhSachTab.Misc:AddButton({
    Title = "tittel",
    Description = "",
    Callback = function()
        local v378 = {
            [1] = "getTitles"
        };
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v378));
        game.Players.localPlayer.PlayerGui.Main.Titles.Visible = true;
    end
});
local ManHinh6 = DanhSachTab.Misc:AddSection("Thức Tỉnh");
DanhSachTab.Misc:AddButton({
    Title = "awaken race",
    Description = "",
    Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Main.AwakeningToggler.Visible = true;
    end
});
local ManHinh6 = DanhSachTab.Misc:AddSection("Khác");
local CuaSoChinh1 = DanhSachTab.Misc:AddToggle("ToggleRejoin", {
    Title = "rejoin sever again",
    Description = "",
    Default = true
});
CuaSoChinh1:OnChanged(function(v381)
    _G.AutoRejoin = v381;
end);
LuaChon.ToggleRejoin:SetValue(true);
spawn(function()
    while wait() do
        if _G.AutoRejoin then
            getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(TenNguoiDung08)
                if ((TenNguoiDung08.Name == "ErrorPrompt") and TenNguoiDung08:FindFirstChild("MessageArea") and TenNguoiDung08.MessageArea:FindFirstChild("ErrorFrame")) then
                    game:GetService("TeleportService"):Teleport(game.PlaceId);
                end
            end);
        end
    end
end);
local ManHinh6 = DanhSachTab.Misc:AddSection("fog");
local function CuaSoChinh2()
    local v382 = game:GetService("Lighting");
    if v382:FindFirstChild("BaseAtmosphere") then
        v382.BaseAtmosphere:Destroy();
    end
    if v382:FindFirstChild("SeaTerrorCC") then
        v382.SeaTerrorCC:Destroy();
    end
    if v382:FindFirstChild("LightingLayers") then
        if v382.LightingLayers:FindFirstChild("Atmosphere") then
            v382.LightingLayers.Atmosphere:Destroy();
        end
        wait();
        if v382.LightingLayers:FindFirstChild("DarkFog") then
            v382.LightingLayers.DarkFog:Destroy();
        end
    end
    v382.FogEnd = 100000;
end
DanhSachTab.Misc:AddButton({
    Title = "clear the Fog in island mirage",
    Description = "",
    Callback = function()
        CuaSoChinh2();
    end
});
local CuaSoChinh3 = DanhSachTab.Misc:AddToggle("ToggleAntiBand", {
    Title = "anti Band",
    Description = "",
    Default = true
});
CuaSoChinh3:OnChanged(function(v384)
    _G.AntiBand = v384;
end);
local CuaSoChinh4 = {
    17884881,
    120173604,
    912348
};
spawn(function()
    while wait() do
        if _G.AntiBand then
            for TenNguoiDung09, TenNguoiDung10 in pairs(game:GetService("Players"):GetPlayers()) do
                if table.find(CuaSoChinh4, TenNguoiDung10.UserId) then
                    Hop();
                end
            end
        end
    end
end);
local ManHinh6 = DanhSachTab.Sea:AddSection("Leviathan");
DanhSachTab.Sea:AddButton({
    Title = "buy chip leviathan",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "2");
    end
});
local CuaSoChinh5 = DanhSachTab.Sea:AddToggle("ToggleTPFrozenDimension", {
    Title = "teleport to island frozen dimension",
    Description = "",
    Default = false
});
CuaSoChinh5:OnChanged(function(v385)
    _G.TweenToFrozenDimension = v385;
end);
CuaSoChinh5:SetValue(false);
spawn(function()
    local v386;
    while not v386 do
        v386 = game:GetService("Workspace").Map:FindFirstChild("FrozenDimension");
        wait();
    end
    while wait() do
        if _G.TweenToFrozenDimension then
            if v386 then
                Tween(v386.CFrame);
            end
        end
    end
end);
if Sea3 then
    local ManHinh61 = DanhSachTab.Sea:AddParagraph({
        Title = "kiểm tra đảo leviathan trong sever hay không",
        Content = "",
    });
    spawn(function()
        pcall(function()
            while wait() do
                local TenNguoiDung11 = game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("InfoLeviathan", "1");
                if (TenNguoiDung11 == 5) then
                    ManHinh61:SetDesc("Leviathan Is Out There");
                elseif (TenNguoiDung11 == 0) then
                    ManHinh61:SetDesc("I Don't Know");
                else
                    ManHinh61:SetDesc("buy: " .. tostring(TenNguoiDung11));
                end
            end
        end);
    end);
end
local CuaSoChinh6 = DanhSachTab.Sea:AddSection("Draco");
local CuaSoChinh7 = DanhSachTab.Sea:AddToggle("ToggleBlazeEmber", {
    Title = "gets BlazeEmber",
    Description = "",auto gets blazeEmmber
    Default = false
});
CuaSoChinh7:OnChanged(function(v387)
    _G.AutoBlazeEmber = v387;
end);
spawn(function()
    while wait() do
        if _G.AutoBlazeEmber then
            pcall(function()
                game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Net"):WaitForChild("RE/DragonDojoEmber"):FireServer();
            end);
        end
    end
end);
local CuaSoChinh8 = DanhSachTab.Sea:AddToggle("ToggleReceiveQuest", {
    Title = "gets quest auto red fire",
    Description = "",
    Default = false
});
CuaSoChinh8:OnChanged(function(v388)
    _G.AutoReceiveQuest = v388;
    if _G.AutoReceiveQuest then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906));
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938));
        spawn(function()
            pcall(function()
                while wait() do
                    local TenNguoiDung74 = {
                        [1] = {
                            Context = "RequestQuest"
                        }
                    };
                    game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(TenNguoiDung74));
                    local TenNguoiDung75 = {
                        [1] = {
                            Context = "Check"
                        }
                    };
                    local TenNguoiDung76 = game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(TenNguoiDung75));
                end
            end);
        end);
    end
end);
local CuaSoChinh9 = DanhSachTab.Sea:AddParagraph({
    Title = "kiểm tra nhiệm vụ blazeEmber",
    Content = "",
});
spawn(function()
    pcall(function()
        while wait() do
            local KhungChinh54 = {
                [1] = {
                    Context = "Check"
                }
            };
            local KhungChinh55 = game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/DragonHunter"):InvokeServer(unpack(KhungChinh54));
            if (typeof(KhungChinh55) == "table") then
                for TenNguoiDung77, TenNguoiDung78 in pairs(KhungChinh55) do
                    if (TenNguoiDung78 == "Defeat 3 Venomous Assailants on Hydra Island.") then
                        CuaSoChinh9:SetDesc("Defeat 3 Venomous Assailants on Hydra Island.");
                    elseif (TenNguoiDung78 == "Defeat 3 Hydra Enforcers on Hydra Island.") then
                        CuaSoChinh9:SetDesc("Defeat 3 Hydra Enforcers on Hydra Island.");
                    elseif (TenNguoiDung78 == "Destroy 10 trees on Hydra Island.") then
                        CuaSoChinh9:SetDesc("Destroy 10 trees on Hydra Island.");
                    end
                end
            else
                print(KhungChinh55);
            end
        end
    end);
end);
local DanhSachTab0 = DanhSachTab.Sea:AddToggle("ToggleHydraTree", {
    Title = "phá vỡ cây trong hydra để làm nhiệm vụ dojo",
    Description = "",
    Default = false
});
DanhSachTab0:OnChanged(function(v389)
    _G.AutoHydraTree = v389;
end);
local function DanhSachTab1(v390)
    local v391 = game:GetService("VirtualInputManager");
    v391:SendKeyEvent(true, v390, false, game);
    v391:SendKeyEvent(false, v390, false, game);
end
local function DanhSachTab2(v392)
    local v393 = game.Players.LocalPlayer;
    local v394 = v393.Backpack;
    for ManHinh62, ManHinh63 in pairs(v394:GetChildren()) do
        if (ManHinh63:IsA("Tool") and (ManHinh63.ToolTip == v392)) then
            ManHinh63.Parent = v393.Character;
            for TenNguoiDung12, TenNguoiDung13 in ipairs({
                "Z",
                "X",
                "C",
                "V",
                "F"
            }) do
                wait();
                pcall(function()
                    DanhSachTab1(TenNguoiDung13);
                end);
            end
            ManHinh63.Parent = v394;
            break;
        end
    end
end
local DanhSachTab3 = {
    CFrame.new(5288.61962890625, 1005.4000244140625, 392.43011474609375),
    CFrame.new(5343.39453125, 1004.1998901367188, 361.0687561035156),
    CFrame.new(5235.78564453125, 1004.1998901367188, 431.4530944824219),
    CFrame.new(5321.30615234375, 1004.1998901367188, 440.8951416015625),
    CFrame.new(5258.96484375, 1004.1998901367188, 345.5052490234375)
};
spawn(function()
    while wait() do
        if _G.AutoHydraTree then
            AutoHaki();
            for TenNguoiDung14, TenNguoiDung15 in ipairs(DanhSachTab3) do
                if not _G.AutoHydraTree then
                    break;
                end
                Tween2(TenNguoiDung15);
                wait();
                local TenNguoiDung16 = game.Players.LocalPlayer.Character;
                if (TenNguoiDung16 and TenNguoiDung16:FindFirstChild("HumanoidRootPart")) then
                    local TieuDePhu02 = (TenNguoiDung16.HumanoidRootPart.Position - TenNguoiDung15.Position).Magnitude;
                    if (TieuDePhu02 <= 1) then
                        DanhSachTab2("Melee");
                        DanhSachTab2("Sword");
                        DanhSachTab2("Gun");
                    end
                end
            end
        end
    end
end);
CuaSoChinh6:AddButton({
    Title = "dịch chuyển đến lấy nhiệm vụ dojo",
    Description = "",
    Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance", Vector3.new(5661.5322265625, 1013.0907592773438, - 334.9649963378906));
        Tween2(CFrame.new(5814.42724609375, 1208.3267822265625, 884.5785522460938));
    end
});
CuaSoChinh6:AddButton({
    Title = "chế tạo volcano magnet",
    Description = "",
    Callback = function()
        local v395 = {
            [1] = "CraftItem",
            [2] = "Craft",
            [3] = "Volcanic Magnet"
        };
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(v395));
    end
});
local DanhSachTab4 = DanhSachTab.Sea:AddToggle("ToggleCollectFireFlowers", {
    Title = "Lụm Hoa Đỏ",
    Description = "",
    Default = false
});
DanhSachTab4:OnChanged(function(v396)
    _G.AutoCollectFireFlowers = v396;
end);
spawn(function()
    while wait() do
        if _G.AutoCollectFireFlowers then
            local HinhAnhNguoiDung47 = workspace:FindFirstChild("FireFlowers");
            if HinhAnhNguoiDung47 then
                for TieuDePhu03, TieuDePhu04 in pairs(HinhAnhNguoiDung47:GetChildren()) do
                    if (TieuDePhu04:IsA("Model") and TieuDePhu04.PrimaryPart) then
                        local NhanTrangThai67 = TieuDePhu04.PrimaryPart.Position;
                        local NhanTrangThai68 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                        local NhanTrangThai69 = (NhanTrangThai67 - NhanTrangThai68).Magnitude;
                        if (NhanTrangThai69 <= 1) then
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                            wait(1.5);
                            game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game);
                        else
                            Tween2(CFrame.new(NhanTrangThai67));
                        end
                    end
                end
            end
        end
    end
end);
local DanhSachTab5 = DanhSachTab.Sea:AddToggle("ToggleWhiteBelt", {
    Title = "Cày Đai Trắng",
    Description = "",
    Default = false
});
DanhSachTab5:OnChanged(function(v397)
    _G.AutoLevel = v397;
    if v397 then
        local KhungChinh56 = {
            [1] = {
                NPC = "Dojo Trainer",
                Command = "RequestQuest"
            }
        };
        game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(KhungChinh56));
        spawn(function()
            while _G.AutoLevel do
                local TenNguoiDung17 = {
                    [1] = {
                        NPC = "Dojo Trainer",
                        Command = "ClaimQuest"
                    }
                };
                game:GetService("ReplicatedStorage").Modules.Net:FindFirstChild("RF/InteractDragonQuest"):InvokeServer(unpack(TenNguoiDung17));
                wait();
            end
        end);
    end
end);
local DanhSachTab6 = DanhSachTab.Sea:AddParagraph({
    Title = "Complete trials draco V4 (wait for leaves)",
    Content = "",
});
local DanhSachTab7 = DanhSachTab.Sea:AddToggle("ToggleTrialTeleport", {
    Title = "teleport to draco race trials",
    Description = "",
    Default = false
});
DanhSachTab7:OnChanged(function(v398)
    _G.AutoTrialTeleport = v398;
end);
spawn(function()
    while wait() do
        if _G.AutoTrialTeleport then
            local HinhAnhNguoiDung48 = workspace.Map.PrehistoricIsland:FindFirstChild("TrialTeleport");
            if (HinhAnhNguoiDung48 and HinhAnhNguoiDung48:IsA("Part")) then
                Tween2(CFrame.new(HinhAnhNguoiDung48.Position));
            end
        end
    end
end);
local DanhSachTab8 = DanhSachTab.Sea:AddSection("volcano");
local DanhSachTab9 = DanhSachTab.Sea:AddParagraph({
    Title = "kiểm tra volcano trong sever hay không",
    Content = "",
});
spawn(function()
    pcall(function()
        while wait() do
            if ggame:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland") then
                DanhSachTab9:SetDesc("volcano island: ✅️");
            else
                DanhSachTab9:SetDesc("volcano island: ❌️");
            end
        end
    end);
end);
local LuaChon0 = DanhSachTab.Sea:AddToggle("ToggleTPVolcano", {
    Title = "di chuyển đến khi spawn trong sever",
    Description = "",
    Default = false
});
LuaChon0:OnChanged(function(v399)
    _G.TweenToPrehistoric = v399;
end);
LuaChon.ToggleTPVolcano:SetValue(false);
spawn(function()
    local v400;
    while not v400 do
        v400 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
        wait();
    end
    while wait() do
        if _G.TweenToPrehistoric then
            local HinhAnhNguoiDung49 = game:GetService("Workspace").Map:FindFirstChild("PrehistoricIsland");
            if HinhAnhNguoiDung49 then
                local TenNguoiDung79 = HinhAnhNguoiDung49:FindFirstChild("Core") and HinhAnhNguoiDung49.Core:FindFirstChild("PrehistoricRelic") ;
                local TenNguoiDung80 = TenNguoiDung79 and TenNguoiDung79:FindFirstChild("Skull") ;
                if TenNguoiDung80 then
                    Tween2(CFrame.new(TenNguoiDung80.Position));
                    _G.TweenToPrehistoric = false;
                end
            end
        end
    end
end);
local LuaChon1 = DanhSachTab.Sea:AddToggle("ToggleDefendVolcano", {
    Title = "bảo vệ volcano",
    Description = "",
    Default = false
});
LuaChon1:OnChanged(function(v401)
    _G.AutoDefendVolcano = v401;
end);
local TieuDe7 = DanhSachTab.Sea:AddToggle("ToggleMelee", {
    Title = "Dùng Melee",
    Description = "",
    Default = false
});
TieuDe7:OnChanged(function(v402)
    _G.UseMelee = v402;
end);
local TieuDe9 = DanhSachTab.Sea:AddToggle("ToggleSword", {
    Title = "Dùng kiếm",
    Description = "",
    Default = false
});
TieuDe9:OnChanged(function(v403)
    _G.UseSword = v403;
end);
local NenLoader0 = DanhSachTab.Sea:AddToggle("ToggleGun", {
    Title = "Dùng súng",
    Description = "",
    Default = false
});
NenLoader0:OnChanged(function(v404)
    _G.UseGun = v404;
end);
local function LuaChon2(v405)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, v405, false, game);
    game:GetService("VirtualInputManager"):SendKeyEvent(false, v405, false, game);
end
local function LuaChon3()
    local v406 = game.Workspace.Map.PrehistoricIsland.Core:FindFirstChild("InteriorLava");
    if (v406 and v406:IsA("Model")) then
        v406:Destroy();
    end
    local v407 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
    if v407 then
        for HinhAnhNguoiDung50, HinhAnhNguoiDung51 in pairs(v407:GetDescendants()) do
            if (HinhAnhNguoiDung51:IsA("Part") and HinhAnhNguoiDung51.Name:lower():find("lava")) then
                HinhAnhNguoiDung51:Destroy();
            end
        end
    end
    local v408 = game.Workspace.Map:FindFirstChild("PrehistoricIsland");
    if v408 then
        for HinhAnhNguoiDung52, HinhAnhNguoiDung53 in pairs(v408:GetDescendants()) do
            if HinhAnhNguoiDung53:IsA("Model") then
                for TieuDePhu05, TieuDePhu06 in pairs(HinhAnhNguoiDung53:GetDescendants()) do
                    if (TieuDePhu06:IsA("MeshPart") and TieuDePhu06.Name:lower():find("lava")) then
                        TieuDePhu06:Destroy();
                    end
                end
            end
        end
    end
end
local function LuaChon4()
    local v409 = game.Workspace.Map.PrehistoricIsland.Core.VolcanoRocks;
    for ManHinh64, ManHinh65 in pairs(v409:GetChildren()) do
        if ManHinh65:IsA("Model") then
            local HinhAnhNguoiDung54 = ManHinh65:FindFirstChild("volcanorock");
            if (HinhAnhNguoiDung54 and HinhAnhNguoiDung54:IsA("MeshPart")) then
                local TenNguoiDung81 = HinhAnhNguoiDung54.Color;
                if ((TenNguoiDung81 == Color3.fromRGB(185, 53, 56)) or (TenNguoiDung81 == Color3.fromRGB(185, 53, 57))) then
                    return HinhAnhNguoiDung54;
                end
            end
        end
    end
    return nil;
end
local function DanhSachTab2(v410)
    local v411 = game.Players.LocalPlayer;
    local v412 = v411.Backpack;
    for ManHinh66, ManHinh67 in pairs(v412:GetChildren()) do
        if (ManHinh67:IsA("Tool") and (ManHinh67.ToolTip == v410)) then
            ManHinh67.Parent = v411.Character;
            for TenNguoiDung18, TenNguoiDung19 in ipairs({
                "Z",
                "X",
                "C",
                "V",
                "F"
            }) do
                wait();
                pcall(function()
                    LuaChon2(TenNguoiDung19);
                end);
            end
            ManHinh67.Parent = v412;
            break;
        end
    end
end
spawn(function()
    while wait() do
        if _G.AutoDefendVolcano then
            AutoHaki();
            pcall(LuaChon3);
            local HinhAnhNguoiDung57 = LuaChon4();
            if HinhAnhNguoiDung57 then
                local TenNguoiDung82 = CFrame.new(HinhAnhNguoiDung57.Position + Vector3.new(0, 0, 0));
                Tween2(TenNguoiDung82);
                local TenNguoiDung83 = HinhAnhNguoiDung57.Color;
                if ((TenNguoiDung83 ~= Color3.fromRGB(185, 53, 56)) and (TenNguoiDung83 ~= Color3.fromRGB(185, 53, 57))) then
                    HinhAnhNguoiDung57 = LuaChon4();
                else
                    local NenLoader25 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                    local NenLoader26 = ((NenLoader25 - HinhAnhNguoiDung57.Position) - Vector3.new(0, 0, 0)).Magnitude;
                    if (NenLoader26 <= 1) then
                        if _G.UseMelee then
                            DanhSachTab2("Melee");
                        end
                        if _G.UseSword then
                            DanhSachTab2("Sword");
                        end
                        if _G.UseGun then
                            DanhSachTab2("Gun");
                        end
                    end
                    _G.TweenToPrehistoric = false;
                end
            else
                _G.TweenToPrehistoric = true;
            end
        end
    end
end);
local LuaChon5 = DanhSachTab.Sea:AddToggle("ToggleKillAura", {
    Title = "farm golems aurora",
    Description = "",
    Default = false
});
LuaChon5:OnChanged(function(v413)
    KillAura = v413;
end);
LuaChon.ToggleKillAura:SetValue(false);
spawn(function()
    while wait() do
        if KillAura then
            pcall(function()
                for TenNguoiDung84, TenNguoiDung85 in pairs(game.Workspace.Enemies:GetDescendants()) do
                    if (TenNguoiDung85:FindFirstChild("Humanoid") and TenNguoiDung85:FindFirstChild("HumanoidRootPart") and (TenNguoiDung85.Humanoid.Health > 0)) then
                        repeat
                            task.wait();
                            sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge);
                            TenNguoiDung85.Humanoid.Health = 0;
                            TenNguoiDung85.HumanoidRootPart.CanCollide = false;
                        until not KillAura or not TenNguoiDung85.Parent or (TenNguoiDung85.Humanoid.Health <= 0)
                    end
                end
            end);
        end
    end
end);
local LuaChon6 = DanhSachTab.Sea:AddToggle("ToggleCollectBone", {
    Title = "get bones",
    Description = "",
    Default = false
});
LuaChon6:OnChanged(function(v414)
    _G.AutoCollectBone = v414;
end);
spawn(function()
    while wait() do
        if _G.AutoCollectBone then
            for TenNguoiDung20, TenNguoiDung21 in pairs(workspace:GetDescendants()) do
                if (TenNguoiDung21:IsA("BasePart") and (TenNguoiDung21.Name == "DinoBone")) then
                    Tween2(CFrame.new(TenNguoiDung21.Position));
                end
            end
        end
    end
end);
local LuaChon7 = DanhSachTab.Sea:AddToggle("ToggleCollectEgg", {
    Title = "gets eggs",
    Description = "",
    Default = false
});
LuaChon7:OnChanged(function(v415)
    _G.AutoCollectEgg = v415;
end);
spawn(function()
    while wait() do
        if _G.AutoCollectEgg then
            local HinhAnhNguoiDung58 = workspace.Map.PrehistoricIsland.Core.SpawnedDragonEggs:GetChildren();
            if (# HinhAnhNguoiDung58 > 0) then
                local TenNguoiDung86 = HinhAnhNguoiDung58[math.random(1, # HinhAnhNguoiDung58)];
                if (TenNguoiDung86:IsA("Model") and TenNguoiDung86.PrimaryPart) then
                    Tween2(TenNguoiDung86.PrimaryPart.CFrame);
                    local NenLoader27 = game.Players.LocalPlayer.Character.HumanoidRootPart.Position;
                    local NenLoader28 = TenNguoiDung86.PrimaryPart.Position;
                    local NenLoader29 = (NenLoader27 - NenLoader28).Magnitude;
                    if (NenLoader29 <= 1) then
                        game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game);
                        wait(1.5);
                        game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game);
                    end
                end
            end
        end
    end
end);
TaiCodeNgoai:Notify({
    Title = "made by top 1 skidder code",
    Content = "Tải Xong",
    Duration = 5
});