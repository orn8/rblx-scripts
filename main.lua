local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "rblx-scripts", IntroText = "rblx-scripts", HidePremium = false, SaveConfig = false})

-- Universal Scripts
local Universal = Window:MakeTab({
	Name = "Universal"
})

Universal:AddButton({
	Name = "ESP",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Universal/ESP.lua'))()
	end
})

Universal:AddButton({
	Name = "Fullbright",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Universal/Fullbright.lua'))()
	end
})

Universal:AddButton({
	Name = "Infinite Yield",
	Callback = function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Universal/InfiniteYield.lua'))()
	end
})

-- Evade Scripts
if game.placeId == 9872472334 then

	local Evade = Window:MakeTab({
		Name = "Evade"
	})

	Evade:AddButton({
		Name = "Tbao Hub",
		Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/orn8/rblx-scripts/main/Evade/TbaoHub.lua"))()
		end
	})

end

-- Item Asylum Scripts
if game.placeId == 5670218884 then

	local ItemAsylum = Window:MakeTab({
		Name = "Item Asylum"
	})

	ItemAsylum:AddButton({
		Name = "JasonA#7368's Script",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/JasonA7368.lua'))()
		end
	})

	ItemAsylum:AddButton({
		Name = "Item Asylum Haxx",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/ItemAsylumHaxx.lua'))()
		end
	})

	ItemAsylum:AddButton({
		Name = "not fair hub",
		Callback = function()
			loadstring(game:HttpGet('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/notfairhub.lua'))()
		end
	})

end

OrionLib:Init()
