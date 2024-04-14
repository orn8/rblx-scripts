local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "rblx-scripts", IntroText = "rblx-scripts", HidePremium = false, SaveConfig = false})

-- Universal Scripts
local Universal = Window:MakeTab({
	Name = "Universal"
})

Universal:AddButton({
    Name = "ESP",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Universal/ESP.lua')))()
  	end
})

Universal:AddButton({
    Name = "Fullbright",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Universal/Fullbright.lua')))()
  	end
})

Universal:AddButton({
    Name = "Infinite Yield",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Universal/InfiniteYield.lua')))()
  	end
})

-- Evade Scripts
if game.placeId == 9872472334 then

    local ItemAsylum = Window:MakeTab({
        Name = "Evade"
    })

    ItemAsylum:AddButton({
        Name = "GUI 1",
        Callback = function()
            loadstring(game:HttpGet(("https://raw.githubusercontent.com/orn8/rblx-scripts/main/Evade/GUI1.lua")))()
        end
    })

end

-- Item Asylum Scripts
if game.placeId == 5670218884 then

    local ItemAsylum = Window:MakeTab({
        Name = "Item Asylum"
    })

    ItemAsylum:AddButton({
        Name = "GUI 1",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/GUI1.lua')))()
        end
    })

    ItemAsylum:AddButton({
        Name = "GUI 2",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/GUI2.lua')))()
        end
    })

    ItemAsylum:AddButton({
        Name = "GUI 3",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/GUI3.lua')))()
        end
    })

end

OrionLib:Init()
