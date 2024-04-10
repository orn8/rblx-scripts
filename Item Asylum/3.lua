wait(2)

game:FindService("StarterGui"):SetCore("SendNotification", {
	Title = "not fair hub / item asylum",
	Text = "go wreck everyone in this server",
	Icon = "rbxassetid://2005276185",
	Duration = 3
})
wait(3)

-- made by dontaskwhyyz
-- dont steal this script,rebrand it and post it or else
-- i should had used a plugin to convert the gui

_G.aimbot = false
local aimbotbool = false
local camera = game.Workspace.CurrentCamera
local noclip = false
local UIS = game:GetService("UserInputService")

local plr = game.Players.LocalPlayer
local hub = Instance.new("ScreenGui")
hub.Parent = plr.PlayerGui
hub.Name = "not fair hub / Item Asylum"

local frame = Instance.new("Frame")
frame.Parent = hub
frame.Size = UDim2.new(0, 488,0, 347)
frame.Position = UDim2.new(0.049, 0,0.232, 0)
frame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
frame.Draggable = true
frame.Active = true
frame.Selectable = true
frame.Name = "main"

local text = Instance.new("Frame")
text.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
text.Size = UDim2.new(0, 371,0, 51)
text.Position = UDim2.new(0.119, 0,0, 0)
text.Parent = frame
text.Name = "textbar"

local hubtext = Instance.new("TextLabel")
hubtext.Text = "not fair hub / Item Asylum"
hubtext.TextColor3 = Color3.fromRGB(158, 3, 3)
hubtext.Parent = text
hubtext.TextScaled = true
hubtext.Size = UDim2.new(0, 271,0, 50)
hubtext.Position = UDim2.new(0.111, 0,0, 0)
hubtext.BackgroundTransparency = 1

local localplayer = Instance.new("TextButton")
localplayer.Text = "LocalPlayer"
localplayer.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
localplayer.TextColor3 = Color3.fromRGB(0, 0, 0)
localplayer.Parent = frame
localplayer.Position = UDim2.new(0.043, 0,0.228, 0)
localplayer.Size = UDim2.new(0, 104,0, 38)
localplayer.TextScaled = true
localplayer.Name = "LocalPlayer"

local combat = Instance.new("TextButton")
combat.Text = "Combat"
combat.BackgroundColor3 = Color3.fromRGB(74, 74, 74)
combat.TextColor3 = Color3.fromRGB(0, 0, 0)
combat.Parent = frame
combat.Position = UDim2.new(0.043, 0,0.415, 0)
combat.Size = UDim2.new(0, 104,0, 38)
combat.TextScaled = true
combat.Name = "Combat"

local playerlocalgui = Instance.new("ScrollingFrame")
playerlocalgui.Name = "LocalPlayerGui"
playerlocalgui.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
playerlocalgui.Parent = frame
playerlocalgui.Size = UDim2.new(0, 286,0, 225)
playerlocalgui.Position = UDim2.new(0.32, 0,0.228, 0)
playerlocalgui.ScrollBarThickness = 3
playerlocalgui.Visible = false

local combatgui = Instance.new("ScrollingFrame")
combatgui.Name = "CombatGui"
combatgui.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
combatgui.Parent = frame
combatgui.Size = UDim2.new(0, 286,0, 225)
combatgui.Position = UDim2.new(0.32, 0,0.228, 0)
combatgui.ScrollBarThickness = 3
combatgui.Visible = false

local setspeed = Instance.new("TextBox")
setspeed.Parent = playerlocalgui
setspeed.Size = UDim2.new(0, 80,0, 28)
setspeed.Position = UDim2.new(0.301, 0,0.022, 0)
setspeed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
setspeed.TextScaled = true
setspeed.TextColor3 = Color3.fromRGB(0,0,0)
setspeed.PlaceholderText = "Set Speed"
setspeed.PlaceholderColor3 = Color3.fromRGB(0,0,0)

local setjump = Instance.new("TextBox")
setjump.Parent = playerlocalgui
setjump.Size = UDim2.new(0, 80,0, 28)
setjump.Position = UDim2.new(0.301, 0,0.101, 0)
setjump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
setjump.TextScaled = true
setjump.TextColor3 = Color3.fromRGB(0,0,0)
setjump.PlaceholderText = "Set Jump Power"
setjump.PlaceholderColor3 = Color3.fromRGB(0,0,0)

local executespeed = Instance.new("TextButton")
executespeed.Parent = playerlocalgui
executespeed.Size = UDim2.new(0, 35,0, 28)
executespeed.Position = UDim2.new(0.674, 0,0.022, 0)
executespeed.Text = "Execute"
executespeed.TextScaled = true
executespeed.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
executespeed.TextColor3 = Color3.fromRGB(0,0,0)

local executejump = Instance.new("TextButton")
executejump.Parent = playerlocalgui
executejump.Size = UDim2.new(0, 35,0, 28)
executejump.Position = UDim2.new(0.674, 0,0.1, 0)
executejump.Text = "Execute"
executejump.TextScaled = true
executejump.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
executejump.TextColor3 = Color3.fromRGB(0,0,0)

local jumptext = Instance.new("TextLabel")
jumptext.Text = "JumpPower"
jumptext.BackgroundTransparency = 1
jumptext.Parent = playerlocalgui
jumptext.TextColor3 = Color3.fromRGB(0, 0, 0)
jumptext.TextScaled = true
jumptext.Position = UDim2.new(0, 0,0.079, 0)
jumptext.Size = UDim2.new(0, 80,0, 57)

local speedtext = Instance.new("TextLabel")
speedtext.Text = "WalkSpeed"
speedtext.BackgroundTransparency = 1
speedtext.Parent = playerlocalgui
speedtext.TextColor3 = Color3.fromRGB(0, 0, 0)
speedtext.TextScaled = true
speedtext.Position = UDim2.new(0, 0,-0.001, 0)
speedtext.Size = UDim2.new(0, 80,0, 57)

local nocliptext = Instance.new("TextLabel")
nocliptext.Text = "NoClip"
nocliptext.BackgroundTransparency = 1
nocliptext.Parent = playerlocalgui
nocliptext.TextColor3 = Color3.fromRGB(0, 0, 0)
nocliptext.TextScaled = true
nocliptext.Position = UDim2.new(0, 0,0.156, 0)
nocliptext.Size = UDim2.new(0, 80,0, 57)

local aimbottext = Instance.new("TextLabel")
aimbottext.Text = "Aimbot"
aimbottext.BackgroundTransparency = 1
aimbottext.Parent = combatgui
aimbottext.TextColor3 = Color3.fromRGB(0, 0, 0)
aimbottext.TextScaled = true
aimbottext.Position = UDim2.new(0, 0,-0.001, 0)
aimbottext.Size = UDim2.new(0, 80,0, 57)

local noclipbutton = Instance.new("TextButton")
noclipbutton.Parent = playerlocalgui
noclipbutton.Size = UDim2.new(0, 35,0, 28)
noclipbutton.Position = UDim2.new(0.377, 0,0.177, 0)
noclipbutton.Text = "False"
noclipbutton.TextScaled = true
noclipbutton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
noclipbutton.TextColor3 = Color3.fromRGB(255, 255, 255)

local aimbotbutton = Instance.new("TextButton")
aimbotbutton.Parent = combatgui
aimbotbutton.Size = UDim2.new(0, 35,0, 28)
aimbotbutton.Position = UDim2.new(0.436, 0,0.018, 0)
aimbotbutton.Text = "False"
aimbotbutton.TextScaled = true
aimbotbutton.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
aimbotbutton.TextColor3 = Color3.fromRGB(255, 255, 255)

localplayer.MouseButton1Click:Connect(function()
	if combatgui.Visible == true then
		combatgui.Visible = false
		playerlocalgui.Visible = true
	else
		playerlocalgui.Visible = true
	end
end)

combat.MouseButton1Click:Connect(function()
	if playerlocalgui.Visible == true then
		playerlocalgui.Visible = false
		combatgui.Visible = true
	else
		combatgui.Visible = true
	end
end)

hub.ResetOnSpawn = false
hub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
noclipbutton.MouseButton1Click:Connect(function()
		noclip = true
		noclipbutton.Text = "True"
		Steppeds = game:GetService("RunService").Stepped:Connect(function()
			if not noclip == false then
				for a, b in pairs(Workspace:GetChildren()) do
					if b.Name == plr.Name then
						for i, v in pairs(Workspace[plr.Name]:GetChildren()) do
							if v:IsA("BasePart") then
								v.CanCollide = false
							end
						end 
					end	
				end 
			elseif noclipbutton.Text == "True" then
				noclipbutton.Text = "False"
			Steppeds:Disconnect()
				game.Players.LocalPlayer.Character.CanCollide = true
				noclip = false
			end
		end)
end)
aimbotbutton.MouseButton1Click:Connect(function()
	if _G.aimbot == false then
		aimbotbutton.Text = "True"
		_G.aimbot = true
		function getClosest()
			local closestdistance = math.huge
			local target = nil

			for i,v in pairs(game.Players:GetChildren()) do
				if v ~= game.Players.LocalPlayer  then
					if v.Character and v.Character:FindFirstChild("Head") and v.Character.Humanoid.Health > 0 and _G.aimbot then
						local distance = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).magnitude
						if distance < closestdistance then
							closestdistance = distance
							target = v
						end
					end
				end
			end
			return target
		end
	else
		_G.aimbot = false
		aimbotbutton.Text = "False"
	end
end)

local aiming = false

UIS.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		_G.aim = true
		while wait() do
			camera.CFrame = CFrame.new(camera.CFrame.Position, getClosest().Character.Head.Position)
			if _G.aim == false then return end
		end
	end
end)
UIS.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton2 then
		_G.aim = false
	end
end)

local function setspeedd(input)
	print("yass hazem")
	plr.Character.Humanoid.WalkSpeed = setspeed.Text
end
local function setjumpp(input)
	print("yass hazem2")
	plr.Character.Humanoid.JumpPower = setjump.Text
end

repeat wait() 
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.HumanoidRootPart 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0

function Fly() 
	local bg = Instance.new("BodyGyro", torso) 
	bg.P = 9e4 
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
	bg.cframe = torso.CFrame 
	local bv = Instance.new("BodyVelocity", torso) 
	bv.velocity = Vector3.new(0,0.1,0) 
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
	repeat wait() 
		plr.Character.Humanoid.PlatformStand = true 
		if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
			speed = speed+.5+(speed/maxspeed) 
			if speed > maxspeed then 
				speed = maxspeed 
			end 
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
			speed = speed-1 
			if speed < 0 then 
				speed = 0 
			end 
		end 
		if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
			lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
		elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
			bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
		else 
			bv.velocity = Vector3.new(0,0.1,0) 
		end 
		bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
	until not flying 
	ctrl = {f = 0, b = 0, l = 0, r = 0} 
	lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	speed = 0 
	bg:Destroy() 
	bv:Destroy() 
	plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
	if key:lower() == "e" then 
		if flying then flying = false 
		else 
			flying = true 
			Fly() 
		end 
	elseif key:lower() == "w" then 
		ctrl.f = 1 
	elseif key:lower() == "s" then 
		ctrl.b = -1 
	elseif key:lower() == "a" then 
		ctrl.l = -1 
	elseif key:lower() == "d" then 
		ctrl.r = 1 
	end 
end) 
mouse.KeyUp:connect(function(key) 
	if key:lower() == "w" then 
		ctrl.f = 0 
	elseif key:lower() == "s" then 
		ctrl.b = 0 
	elseif key:lower() == "a" then 
		ctrl.l = 0 
	elseif key:lower() == "d" then 
		ctrl.r = 0 
	end 
end)

executespeed.MouseButton1Click:Connect(setspeedd)
executejump.MouseButton1Click:Connect(setjumpp)