local UserInputService = game:GetService("UserInputService")

-- Function to run the initial script
local function runInitialScript()
    -- Load and execute the initial script
    local success, script = pcall(function()
        return loadstring(game:HttpGet('https://pastebin.com/raw/9jrRc9L8'))
    end)

    if success and script then
        script() -- Execute the loaded script
    else
        warn("Failed to load or execute InfiniteYield.")
    end
end

-- Run the initial script when the game starts
runInitialScript()

-- Function to handle key press
local function onKeyPress(input)
    if input.KeyCode == Enum.KeyCode.D and UserInputService:IsKeyDown(Enum.KeyCode.X) then
        -- Run the main script when "D+X" is pressed
        local success, script = pcall(function()
            return loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))
        end)

        if success and script then
            script() -- Execute the loaded script
        else
            warn("Failed to load or execute the DEX.")
        end
    end
end

-- Connect the key press event
UserInputService.InputBegan:Connect(onKeyPress)