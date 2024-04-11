local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "rblx-scripts", HidePremium = false, SaveConfig = false})

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

Universal:AddButton({
    Name = "Silent Aim",
	Callback = function()
      	loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Universal/SilentAim.lua')))()
  	end
})

-- Item Asylum Scripts
if game.placeId == 5670218884 then

    local ItemAsylum = Window:MakeTab({
        Name = "Item Asylum"
    })

    ItemAsylum:AddButton({
        Name = "Script 1",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/1.lua')))()
        end
    })

    ItemAsylum:AddButton({
        Name = "Script 2",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/2.lua')))()
        end
    })

    ItemAsylum:AddButton({
        Name = "Script 3",
        Callback = function()
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/orn8/rblx-scripts/main/Item%20Asylum/3.lua')))()
        end
    })

end

OrionLib:Init()
