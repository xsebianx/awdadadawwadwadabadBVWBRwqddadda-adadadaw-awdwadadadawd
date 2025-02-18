-- Configuración del Crosshair
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local localPlayer = Players.LocalPlayer
local mouse = localPlayer:GetMouse()

-- Crear Crosshair
local crosshair = Drawing.new("Line")
crosshair.Thickness = 2
crosshair.Color = Color3.fromRGB(255, 255, 255)

local crosshairVertical = Drawing.new("Line")
crosshairVertical.Thickness = 2
crosshairVertical.Color = Color3.fromRGB(255, 255, 255)

-- Actualizar la posición del Crosshair
RunService.RenderStepped:Connect(function()
    local centerX = workspace.CurrentCamera.ViewportSize.X / 2
    local centerY = workspace.CurrentCamera.ViewportSize.Y / 2
    
    crosshair.From = Vector2.new(centerX - 10, centerY)
    crosshair.To = Vector2.new(centerX + 10, centerY)
    
    crosshairVertical.From = Vector2.new(centerX, centerY - 10)
    crosshairVertical.To = Vector2.new(centerX, centerY + 10)
    
    crosshair.Visible = true
    crosshairVertical.Visible = true
end)

-- Función para desactivar el crosshair
function _G.disableCrosshair()
    crosshair.Visible = false
    crosshairVertical.Visible = false
end