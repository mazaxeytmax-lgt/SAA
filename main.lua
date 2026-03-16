local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player.PlayerGui)

-- BOTON CIRCULAR
local toggle = Instance.new("TextButton", gui)
toggle.Size = UDim2.new(0,60,0,60)
toggle.Position = UDim2.new(0.05,0,0.5,0)
toggle.Text = "MENU"
toggle.BackgroundColor3 = Color3.fromRGB(30,30,30)
toggle.TextColor3 = Color3.new(1,1,1)
toggle.Draggable = true

local corner = Instance.new("UICorner", toggle)
corner.CornerRadius = UDim.new(1,0)

-- PANEL
local panel = Instance.new("Frame", gui)
panel.Size = UDim2.new(0,300,0,350)
panel.Position = UDim2.new(0.2,0,0.3,0)
panel.BackgroundColor3 = Color3.fromRGB(20,20,20)
panel.Visible = false
panel.Active = true
panel.Draggable = true

-- BOTON ABRIR/CERRAR
toggle.MouseButton1Click:Connect(function()
	panel.Visible = not panel.Visible
end)

-- PESTAÑA AIMBOT (ejemplo de tab)
local aimbotTab = Instance.new("TextLabel", panel)
aimbotTab.Size = UDim2.new(1,0,0,30)
aimbotTab.Text = "AIMBOT"
aimbotTab.BackgroundColor3 = Color3.fromRGB(40,40,40)
aimbotTab.TextColor3 = Color3.new(1,1,1)

-- PESTAÑA ESP
local espTab = Instance.new("TextLabel", panel)
espTab.Size = UDim2.new(1,0,0,30)
espTab.Position = UDim2.new(0,0,0,150)
espTab.Text = "ESP"
espTab.BackgroundColor3 = Color3.fromRGB(40,40,40)
espTab.TextColor3 = Color3.new(1,1,1)
