--made by JasonA#7368 



local character = game.Players.LocalPlayer.Character
local victims = game.Players:GetPlayers()
local newVictim = victims[math.random(#victims)]
local plr = game.Players.LocalPlayer
local char = plr.Character
local ScreenGui = Instance.new("ScreenGui")
local Ksploit = Instance.new("Frame")
local TpAura = Instance.new("TextButton")
local ClickEtoTeleport = Instance.new("TextButton")
local HipSpeed = Instance.new("TextButton")
local infiniteyield = Instance.new("TextButton")
local CreatedByPm = Instance.new("TextLabel")
local V = Instance.new("TextLabel")
local IAbreaker = Instance.new("TextLabel")

--Properties:
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Ksploit.Name = "Ksploit"
Ksploit.Parent = ScreenGui
game.Players.LocalPlayer.PlayerGui.ScreenGui.ResetOnSpawn = false
Ksploit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ksploit.BorderColor3 = Color3.fromRGB(27, 211, 202)
Ksploit.BorderSizePixel = 5
Ksploit.Position = UDim2.new(0.0150316469, 0, 0.538461566, 0)
Ksploit.Selectable = true
Ksploit.Size = UDim2.new(0, 236, 0, 244)

TpAura.Name = "TpAura"
TpAura.Parent = Ksploit
TpAura.BackgroundColor3 = Color3.fromRGB(32, 255, 248)
TpAura.BorderColor3 = Color3.fromRGB(124, 194, 243)
TpAura.BorderSizePixel = 2
TpAura.Position = UDim2.new(0.0399999954, 0, 0.25, 0)
TpAura.Size = UDim2.new(0, 81, 0, 46)
TpAura.Font = Enum.Font.SourceSansSemibold
TpAura.Text = "KillLoop "
TpAura.TextColor3 = Color3.fromRGB(0, 0, 0)
TpAura.TextSize = 14.000
TpAura.TextWrapped = true  
game.Players.LocalPlayer.PlayerGui.ScreenGui.Ksploit.TpAura.MouseButton1Click:Connect(function()
game.Players.LocalPlayer.PlayerGui.ScreenGui.Ksploit.TpAura.Text = "Now MouseClick To Damage Users"

-- Variable  --code by egg salad 
local player = game.Players.LocalPlayer
local plat = Instance.new("Part",workspace)

-- KillAura 
while true do
    -- Check
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChildOfClass("Tool") and player.Character:FindFirstChildOfClass("Tool"):FindFirstChild("Handle") then
        -- Tool
        local tool = player.Character:FindFirstChildOfClass("Tool")
        local traps = {}
        -- Grab
        local plrs = game.Players:GetPlayers()
        for i = 2, #plrs do local v = plrs[i].Character
            if v and not v:FindFirstChild("ForceField") and v:FindFirstChild("Head") and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                table.insert(traps,v)
            end
        end
        -- Sort
        table.sort(traps,function(a,b)
            return a.Humanoid.Health < b.Humanoid.Health
        end)
        -- Attack
        pcall(function()
            tool:Activate()
            firetouchinterest(tool.Handle,traps[1].Head,0)
            firetouchinterest(tool.Handle,traps[1].Head,1)
            
plat.Anchored = true
plat.CFrame = CFrame.new(10000,10000,10000)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = plat.CFrame + Vector3.new(0,5,0)
        end)
    end
    wait()
end
end)



ClickEtoTeleport.Name = "Click E to Teleport"
ClickEtoTeleport.Parent = Ksploit
ClickEtoTeleport.BackgroundColor3 = Color3.fromRGB(32, 255, 248)
ClickEtoTeleport.BorderColor3 = Color3.fromRGB(124, 194, 243)
ClickEtoTeleport.BorderSizePixel = 2
ClickEtoTeleport.Position = UDim2.new(0.613050818, 0, 0.25, 0)
ClickEtoTeleport.Size = UDim2.new(0, 81, 0, 46)
ClickEtoTeleport.Font = Enum.Font.SourceSansSemibold
ClickEtoTeleport.Text = "Click E to Teleport"
ClickEtoTeleport.TextColor3 = Color3.fromRGB(0, 0, 0)
ClickEtoTeleport.TextSize = 14.000
ClickEtoTeleport.TextWrapped = true

game.Players.LocalPlayer.PlayerGui.ScreenGui.Ksploit["Click E to Teleport"].MouseButton1Click:Connect(function()
plr = game.Players.LocalPlayer hum = plr.Character.HumanoidRootPart mouse = plr:GetMouse() mouse.KeyDown:connect(function(key) if key == "e" then if mouse.Target then hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z) end end end)

plr = game.Players.LocalPlayer 
hum = plr.Character.HumanoidRootPart
mouse = plr:GetMouse()
mouse.KeyDown:connect(function(key)
if key == "e" then
if mouse.Target then
hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
end
end
end)
end)

HipSpeed.Name = "HipSpeed"
HipSpeed.Parent = Ksploit
HipSpeed.BackgroundColor3 = Color3.fromRGB(32, 255, 248)
HipSpeed.BorderColor3 = Color3.fromRGB(124, 194, 243)
HipSpeed.BorderSizePixel = 2
HipSpeed.Position = UDim2.new(0.613050818, 0, 0.69262296, 0)
HipSpeed.Size = UDim2.new(0, 81, 0, 46)
HipSpeed.Font = Enum.Font.SourceSansSemibold
HipSpeed.Text = "HipSpeed"
HipSpeed.TextColor3 = Color3.fromRGB(0, 0, 0)
HipSpeed.TextSize = 14.000
HipSpeed.TextWrapped = true
game.Players.LocalPlayer.PlayerGui.ScreenGui.Ksploit.HipSpeed.MouseButton1Click:Connect(function()

	game.Players.LocalPlayer.Character.Humanoid.HipHeight = 8
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30
end)


infiniteyield.Name = "infiniteyield"
infiniteyield.Parent = Ksploit
infiniteyield.BackgroundColor3 = Color3.fromRGB(32, 255, 248)
infiniteyield.BorderColor3 = Color3.fromRGB(124, 194, 243)
infiniteyield.BorderSizePixel = 2
infiniteyield.Position = UDim2.new(0.0399999954, 0, 0.69262296, 0)
infiniteyield.Size = UDim2.new(0, 81, 0, 46)
infiniteyield.Font = Enum.Font.SourceSansSemibold
infiniteyield.Text = "infinite yield"
infiniteyield.TextColor3 = Color3.fromRGB(0, 0, 0)
infiniteyield.TextSize = 14.000
infiniteyield.TextWrapped = true

game.Players.LocalPlayer.PlayerGui.ScreenGui.Ksploit.infiniteyield.MouseButton1Click:Connect(function()
wait(0.1)
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
	
CreatedByPm.Name = "CreatedByPm"
CreatedByPm.Parent = Ksploit
CreatedByPm.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
CreatedByPm.BackgroundTransparency = 0.200
CreatedByPm.BorderColor3 = Color3.fromRGB(2, 247, 239)
CreatedByPm.BorderSizePixel = 3
CreatedByPm.Position = UDim2.new(0.608813584, 0, -0.0942622349, 0)
CreatedByPm.Size = UDim2.new(0, 92, 0, 16)
CreatedByPm.Font = Enum.Font.SourceSansBold
CreatedByPm.Text = "Created By JasonA#7368"
CreatedByPm.TextColor3 = Color3.fromRGB(0, 0, 0)
CreatedByPm.TextScaled = true
CreatedByPm.TextSize = 9.000
CreatedByPm.TextWrapped = true

V.Name = "V"
V.Parent = Ksploit
V.BackgroundColor3 = Color3.fromRGB(238, 238, 238)
V.BackgroundTransparency = 0.200
V.BorderColor3 = Color3.fromRGB(2, 247, 239)
V.BorderSizePixel = 3
V.Position = UDim2.new(0.804399848, 0, -0.184426293, 0)
V.Size = UDim2.new(0, 46, 0, 16)
V.Font = Enum.Font.SourceSansBold
V.Text = "V0.7"
V.TextColor3 = Color3.fromRGB(0, 0, 0)
V.TextScaled = true
V.TextSize = 9.000
V.TextWrapped = true

IAbreaker.Name = "IA"
IAbreaker.Parent = Ksploit
IAbreaker.BackgroundColor3 = Color3.fromRGB(4, 156, 238)
IAbreaker.BackgroundTransparency = 0.200
IAbreaker.BorderColor3 = Color3.fromRGB(2, 247, 239)
IAbreaker.BorderSizePixel = 3
IAbreaker.Position = UDim2.new(-0.00423728814, 0, 0, 0)
IAbreaker.Size = UDim2.new(0, 236, 0, 50)
IAbreaker.Font = Enum.Font.SourceSansBold
IAbreaker.Text = "Item AsslyumFocker"
IAbreaker.TextColor3 = Color3.fromRGB(0, 0, 0)
IAbreaker.TextSize = 20.000
IAbreaker.TextWrapped = true

while true do
    wait(0.1)
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
    game.Players.LocalPlayer.PlayerGui.ScreenGui.Ksploit.TpAura.Text = "KillLoop"

end
end