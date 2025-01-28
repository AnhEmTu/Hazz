local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "YourMomFat Key System",IntroTest = "YourMomFat Library", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

OrionLib:MakeNotification({
	Name = "R2LX HUB KEY",
	Content = "Get Key Đi "..Player.Name..".",
	Image = "rbxassetid://4483345998",
	Time = 5
})

_G.Key = "abf7a94acc2525d43e2fc7224622e35968dbfa50"
_G.KeyImput = "string"

function MakeScriptHub()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/AnhEmTu/Hazz/refs/heads/main/luxucuthanh.lua"))()



	
end

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

function GetKey()
	setclipboard("https://link-hub.net/923150/yourmomfat-hub1")
end

Tab:AddButton({
	Name = "Get Key",
	Callback = function()
		GetKey()
  	end    
})

Tab:AddTextbox({
	Name = "Enter Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyImput = Value
	end	  
})

Tab:AddButton({
	Name = "Check Key",
	Callback = function()
      	if _G.KeyImput == _G.Key then
      		MakeScriptHub()
      	end
  	end    
})