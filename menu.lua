local DrakHub = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Separator = Instance.new("Frame")

DrakHub.Name = "DrakHub"
DrakHub.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
DrakHub.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = DrakHub
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.Size = UDim2.new(0, 600, 0, 400)
MainFrame.Position = UDim2.new(0.5, -300, 0.5, -200)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(255, 0, 0) -- Red border
UIStroke.Thickness = 2

Title.Name = "Title"
Title.Parent = MainFrame
Title.Text = "DrakHub"
Title.Font = Enum.Font.GothamBold
Title.TextSize = 24
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1
Title.Size = UDim2.new(1, 0, 0, 50)
Title.Position = UDim2.new(0, 0, 0, 0)

Separator.Name = "Separator"
Separator.Parent = MainFrame
Separator.BackgroundColor3 = Color3.fromRGB(255, 0, 0) -- Red separator
Separator.Size = UDim2.new(1, 0, 0, 2)
Separator.Position = UDim2.new(0, 0, 0, 50)

-- Function to create category buttons
local function createCategoryButton(name, text, position, color, hoverColor)
    local button = Instance.new("TextButton")
    button.Name = name
    button.Parent = MainFrame
    button.Text = text
    button.Font = Enum.Font.Gotham
    button.TextSize = 18
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.BackgroundColor3 = color
    button.Size = UDim2.new(0, 120, 0, 40)
    button.Position = position
    button.BorderSizePixel = 0
    button.AutoButtonColor = false
    local buttonUICorner = Instance.new("UICorner")
    buttonUICorner.CornerRadius = UDim.new(0, 8)
    buttonUICorner.Parent = button
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = hoverColor
    end)
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = color
    end)
    return button
end

local HomeButton = createCategoryButton("HomeButton", "Inicio", UDim2.new(0, 10, 0, 60), Color3.fromRGB(255, 215, 0), Color3.fromRGB(255, 215, 0))
local CombatButton = createCategoryButton("CombatButton", "Combat", UDim2.new(0, 10, 0, 110), Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0)) -- Red
local VisualButton = createCategoryButton("VisualButton", "Visual", UDim2.new(0, 10, 0, 160), Color3.fromRGB(100, 100, 255), Color3.fromRGB(100, 100, 255)) -- Blue
local ExtraButton = createCategoryButton("ExtraButton", "Extra", UDim2.new(0, 10, 0, 210), Color3.fromRGB(144, 238, 144), Color3.fromRGB(144, 238, 144)) -- Green

-- Function to create submenus
local function createSubMenu(name, position, color)
    local frame = Instance.new("ScrollingFrame")
    frame.Name = name
    frame.Parent = MainFrame
    frame.BackgroundColor3 = color
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(0, 450, 0, 300)
    frame.Position = position
    frame.Visible = false
    frame.CanvasSize = UDim2.new(0, 0, 2, 0)
    frame.ScrollBarThickness = 6
    local frameUICorner = Instance.new("UICorner")
    frameUICorner.CornerRadius = UDim.new(0, 8)
    frameUICorner.Parent = frame
    return frame
end

local CombatFrame = createSubMenu("CombatFrame", UDim2.new(0, 140, 0, 60), Color3.fromRGB(70, 50, 50)) -- Light Red
local VisualFrame = createSubMenu("VisualFrame", UDim2.new(0, 140, 0, 60), Color3.fromRGB(50, 50, 70)) -- Light Blue
local ExtraFrame = createSubMenu("ExtraFrame", UDim2.new(0, 140, 0, 60), Color3.fromRGB(50, 70, 50)) -- Light Green


-- Welcome screen and copy message
local WelcomeFrame = Instance.new("Frame")
local WelcomeText = Instance.new("TextLabel")
local DiscordIcon = Instance.new("ImageButton")
local YouTubeIcon = Instance.new("ImageButton")
local WelcomeBackground = Instance.new("Frame")
local DiscordLabel = Instance.new("TextLabel")
local YouTubeLabel = Instance.new("TextLabel")
local CopyMessage = Instance.new("TextLabel")
local Instructions = Instance.new("TextLabel")

WelcomeFrame.Name = "WelcomeFrame"
WelcomeFrame.Parent = MainFrame
WelcomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WelcomeFrame.BorderColor3 = Color3.fromRGB(255, 0, 0) -- Red border
WelcomeFrame.BorderSizePixel = 2
WelcomeFrame.Size = UDim2.new(0, 450, 0, 300)
WelcomeFrame.Position = UDim2.new(0, 140, 0, 60)
local WelcomeFrameUICorner = Instance.new("UICorner")
WelcomeFrameUICorner.CornerRadius = UDim.new(0, 8)
WelcomeFrameUICorner.Parent = WelcomeFrame

WelcomeBackground.Name = "WelcomeBackground"
WelcomeBackground.Parent = WelcomeFrame
WelcomeBackground.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
WelcomeBackground.Size = UDim2.new(1, 0, 1, 0)
local WelcomeBackgroundUICorner = Instance.new("UICorner")
WelcomeBackgroundUICorner.CornerRadius = UDim.new(0, 8)
WelcomeBackgroundUICorner.Parent = WelcomeBackground

WelcomeText.Name = "WelcomeText"
WelcomeText.Parent = WelcomeFrame
WelcomeText.Text = "¡Bienvenido a DrakHub!"
WelcomeText.Font = Enum.Font.GothamBold
WelcomeText.TextSize = 24
WelcomeText.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeText.BackgroundTransparency = 1
WelcomeText.Size = UDim2.new(1, 0, 0, 40)
WelcomeText.Position = UDim2.new(0, 0, 0, 10)

local SubText = Instance.new("TextLabel")
SubText.Name = "SubText"
SubText.Parent = WelcomeFrame
SubText.Text = "Selecciona una categoría"
SubText.Font = Enum.Font.Gotham
SubText.TextSize = 18
SubText.TextColor3 = Color3.fromRGB(200, 200, 200)
SubText.BackgroundTransparency = 1
SubText.Size = UDim2.new(1, 0, 0, 30)
SubText.Position = UDim2.new(0, 0, 0, 50)

Instructions.Name = "Instructions"
Instructions.Parent = WelcomeFrame
Instructions.Text = "Press 'P' to minimize/maximize Menu"
Instructions.Font = Enum.Font.Gotham
Instructions.TextSize = 14
Instructions.TextColor3 = Color3.fromRGB(200, 200, 200)
Instructions.BackgroundTransparency = 1
Instructions.Size = UDim2.new(1, 0, 0, 20)
Instructions.Position = UDim2.new(0, 0, 1, -30)

DiscordIcon.Name = "DiscordIcon"
DiscordIcon.Parent = WelcomeFrame
DiscordIcon.Image = "rbxassetid://6031075939" -- Icono de Discord
DiscordIcon.Size = UDim2.new(0, 50, 0, 50)
DiscordIcon.Position = UDim2.new(0.5, -60, 0.5, -25)
DiscordIcon.BackgroundTransparency = 1

YouTubeIcon.Name = "YouTubeIcon"
YouTubeIcon.Parent = WelcomeFrame
YouTubeIcon.Image = "rbxassetid://6031075938" -- Icono de YouTube
YouTubeIcon.Size = UDim2.new(0, 50, 0, 50)
YouTubeIcon.Position = UDim2.new(0.5, 10, 0.5, -25)
YouTubeIcon.BackgroundTransparency = 1

DiscordLabel.Name = "DiscordLabel"
DiscordLabel.Parent = WelcomeFrame
DiscordLabel.Text = "Discord"
DiscordLabel.Font = Enum.Font.Gotham
DiscordLabel.TextSize = 14
DiscordLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
DiscordLabel.BackgroundTransparency = 1
DiscordLabel.Size = UDim2.new(0, 50, 0, 20)
DiscordLabel.Position = UDim2.new(0.5, -60, 0.5, 30)

YouTubeLabel.Name = "YouTubeLabel"
YouTubeLabel.Parent = WelcomeFrame
YouTubeLabel.Text = "YouTube"
YouTubeLabel.Font = Enum.Font.Gotham
YouTubeLabel.TextSize = 14
YouTubeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
YouTubeLabel.BackgroundTransparency = 1
YouTubeLabel.Size = UDim2.new(0, 50, 0, 20)
YouTubeLabel.Position = UDim2.new(0.5, 10, 0.5, 30)

CopyMessage.Name = "CopyMessage"
CopyMessage.Parent = MainFrame
CopyMessage.Text = ""
CopyMessage.Font = Enum.Font.GothamBold
CopyMessage.TextSize = 18
CopyMessage.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyMessage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyMessage.BackgroundTransparency = 0.5
CopyMessage.Size = UDim2.new(0, 300, 0, 50)
CopyMessage.Position = UDim2.new(0.5, -150, 1, -60)
CopyMessage.Visible = false
local CopyMessageUICorner = Instance.new("UICorner")
CopyMessageUICorner.CornerRadius = UDim.new(0, 8)
CopyMessageUICorner.Parent = CopyMessage

local function showCopyMessage(text)
    CopyMessage.Text = text
    CopyMessage.Visible = true
    wait(2)
    CopyMessage.Visible = false
end

DiscordIcon.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/V9mJgYhTaJ") -- Reemplaza con tu enlace de Discord
    showCopyMessage("El enlace de Discord ha sido copiado")
end)

YouTubeIcon.MouseButton1Click:Connect(function()
    setclipboard("https://www.youtube.com/@drakath7559") -- Reemplaza con tu enlace de YouTube
    showCopyMessage("El enlace de YouTube ha sido copiado")
end)

-- Crear el botón Aimbot
local AimbotButton = Instance.new("TextButton")
AimbotButton.Name = "AimbotButton"
AimbotButton.Parent = CombatFrame
AimbotButton.Text = "Anarchy aimb: Off"
AimbotButton.Font = Enum.Font.GothamBold
AimbotButton.TextSize = 20
AimbotButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Color blanco para el texto
AimbotButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Color gris oscuro (igual que ESP)
AimbotButton.Size = UDim2.new(0, 240, 0, 40)  -- Tamaño igual al botón ESP
AimbotButton.Position = UDim2.new(0, 10, 0, 10)
AimbotButton.BorderSizePixel = 0  -- Sin borde
AimbotButton.BackgroundTransparency = 0.1  -- Ligera transparencia

-- Redondear esquinas
AimbotButton.AutoButtonColor = false
AimbotButton.ClipsDescendants = true
local cornerAimbot = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerAimbot.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas (igual que ESP)
cornerAimbot.Parent = AimbotButton

-- Efecto de hover (opcional)
AimbotButton.MouseEnter:Connect(function()
    AimbotButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Azul claro al pasar el mouse
end)

AimbotButton.MouseLeave:Connect(function()
    AimbotButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al gris oscuro original
end)

-- Botón Aimbot NPC
AimbotNPCButton = Instance.new("TextButton")  -- Crea el botón
AimbotNPCButton.Name = "AimbotNPCButton"
AimbotNPCButton.Parent = CombatFrame
AimbotNPCButton.Text = "Delta aim: Off"
AimbotNPCButton.Font = Enum.Font.GothamBold
AimbotNPCButton.TextSize = 20  -- Tamaño del texto ajustado
AimbotNPCButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AimbotNPCButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Color inicial (igual al ESP y Aimbot)
AimbotNPCButton.Size = UDim2.new(0, 240, 0, 40)  -- Tamaño igual que el botón ESP
AimbotNPCButton.Position = UDim2.new(0, 10, 0, 60)  -- Posición bajo el botón Aimbot
AimbotNPCButton.BorderSizePixel = 0  -- Sin borde
AimbotNPCButton.BackgroundTransparency = 0.1  -- Ligera transparencia para suavidad

-- Redondear esquinas
AimbotNPCButton.AutoButtonColor = false
AimbotNPCButton.ClipsDescendants = true
local cornerAimbotNPC = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerAimbotNPC.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas (igual que ESP)
cornerAimbotNPC.Parent = AimbotNPCButton

-- Efecto de hover (opcional)
AimbotNPCButton.MouseEnter:Connect(function()
    AimbotNPCButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Color al pasar el mouse (azul claro)
end)

AimbotNPCButton.MouseLeave:Connect(function()
    AimbotNPCButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original (gris oscuro)
end)

local SilenAimButton = Instance.new("TextButton")
SilenAimButton.Name = "SilenAimButton"
SilenAimButton.Parent = CombatFrame
SilenAimButton.Text = "Silent Aim: Off"
SilenAimButton.Font = Enum.Font.GothamBold
SilenAimButton.TextSize = 20
SilenAimButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Color blanco para el texto
SilenAimButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Color gris oscuro (igual que ESP)
SilenAimButton.Size = UDim2.new(0, 240, 0, 40)  -- Tamaño igual al botón ESP
SilenAimButton.Position = UDim2.new(0, 10, 0, 110)
SilenAimButton.BorderSizePixel = 0  -- Sin borde
SilenAimButton.BackgroundTransparency = 0.1  -- Ligera transparencia

-- Redondear esquinas
SilenAimButton.AutoButtonColor = false
SilenAimButton.ClipsDescendants = true
local cornerAimbot = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerAimbot.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas (igual que ESP)
cornerAimbot.Parent = SilenAimButton

-- Efecto de hover (opcional)
SilenAimButton.MouseEnter:Connect(function()
    SilenAimButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Azul claro al pasar el mouse
end)

SilenAimButton.MouseLeave:Connect(function()
    SilenAimButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al gris oscuro original
end)

-- Crear el botón MegaAim
local MegaAimButton = Instance.new("TextButton")
MegaAimButton.Name = "MegaAimButton"
MegaAimButton.Parent = CombatFrame -- Asegúrate de que CombatFrame esté definido previamente
MegaAimButton.Text = "Mega Aim: Off"
MegaAimButton.Font = Enum.Font.GothamBold
MegaAimButton.TextSize = 20
MegaAimButton.TextColor3 = Color3.fromRGB(255, 255, 255)  -- Color blanco para el texto
MegaAimButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Color gris oscuro
MegaAimButton.Size = UDim2.new(0, 240, 0, 40)  -- Tamaño igual al botón ESP
MegaAimButton.Position = UDim2.new(0, 10, 0, 160)
MegaAimButton.BorderSizePixel = 0  -- Sin borde
MegaAimButton.BackgroundTransparency = 0.1  -- Ligera transparencia

-- Redondear esquinas
MegaAimButton.AutoButtonColor = false
MegaAimButton.ClipsDescendants = true
local cornerAimbot = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerAimbot.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerAimbot.Parent = MegaAimButton

-- Efecto de hover
MegaAimButton.MouseEnter:Connect(function()
    MegaAimButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)  -- Cambia a azul claro al pasar el mouse
end)

MegaAimButton.MouseLeave:Connect(function()
    MegaAimButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al gris oscuro original
end)



-- Funcionalidades de Visual
local VisorButton = Instance.new("TextButton")
VisorButton.Name = "VisorButton"
VisorButton.Parent = VisualFrame
VisorButton.Text = "Visor: Off"
VisorButton.Font = Enum.Font.GothamBold
VisorButton.TextSize = 18
VisorButton.TextColor3 = Color3.fromRGB(255, 255, 255)
VisorButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
VisorButton.Size = UDim2.new(0, 240, 0, 40)
VisorButton.Position = UDim2.new(0, 10, 0, 60)
VisorButton.BorderSizePixel = 0
VisorButton.BackgroundTransparency = 0.1

-- Redondear esquinas
VisorButton.AutoButtonColor = false
VisorButton.ClipsDescendants = true
local cornerVisor = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerVisor.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerVisor.Parent = VisorButton

-- Efecto de hover (opcional)
VisorButton.MouseEnter:Connect(function()
    VisorButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)  -- Color verde clarito al pasar el mouse
end)

VisorButton.MouseLeave:Connect(function()
    VisorButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original
end)

-- Funcionalidades de Crosshair
local CrosshairButton = Instance.new("TextButton")
CrosshairButton.Name = "CrosshairButton"
CrosshairButton.Parent = VisualFrame
CrosshairButton.Text = "Crosshair: Off"
CrosshairButton.Font = Enum.Font.GothamBold
CrosshairButton.TextSize = 18
CrosshairButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CrosshairButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
CrosshairButton.Size = UDim2.new(0, 240, 0, 40)
CrosshairButton.Position = UDim2.new(0, 10, 0, 110) -- Ajustar posición para que esté más abajo
CrosshairButton.BorderSizePixel = 0
CrosshairButton.BackgroundTransparency = 0.1

-- Redondear esquinas
CrosshairButton.AutoButtonColor = false
CrosshairButton.ClipsDescendants = true
local cornerCrosshair = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerCrosshair.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerCrosshair.Parent = CrosshairButton

-- Efecto de hover (opcional)
CrosshairButton.MouseEnter:Connect(function()
    CrosshairButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)  -- Color verde clarito al pasar el mouse
end)

CrosshairButton.MouseLeave:Connect(function()
    CrosshairButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original
end)

-- Funcionalidades de DetectButton
local DetectButton = Instance.new("TextButton")
DetectButton.Name = "DetectButton"
DetectButton.Parent = VisualFrame
DetectButton.Text = "Detect: Off"  -- Cambiado el texto inicial
DetectButton.Font = Enum.Font.GothamBold
DetectButton.TextSize = 18
DetectButton.TextColor3 = Color3.fromRGB(255, 255, 255)
DetectButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
DetectButton.Size = UDim2.new(0, 240, 0, 40)
DetectButton.Position = UDim2.new(0, 10, 0, 160) -- Ajustar posición para que esté más abajo
DetectButton.BorderSizePixel = 0
DetectButton.BackgroundTransparency = 0.1

-- Funcionalidades de DetectButton (continuación)
DetectButton.Position = UDim2.new(0, 10, 0, 160) -- Ajustar posición para que esté más abajo
DetectButton.BorderSizePixel = 0
DetectButton.BackgroundTransparency = 0.1

-- Redondear esquinas
DetectButton.AutoButtonColor = false
DetectButton.ClipsDescendants = true
local cornerDetect = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerDetect.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerDetect.Parent = DetectButton

-- Efecto de hover (opcional)
DetectButton.MouseEnter:Connect(function()
    DetectButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)  -- Color verde clarito al pasar el mouse
end)

DetectButton.MouseLeave:Connect(function()
    DetectButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original
end)


-- Crear el botón de vuelo
local FlyButton = Instance.new("TextButton")
FlyButton.Name = "FlyButton"
FlyButton.Parent = ExtraFrame
FlyButton.Text = "Fly: Off"  -- Estado inicial
FlyButton.Font = Enum.Font.GothamBold
FlyButton.TextSize = 18
FlyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FlyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
FlyButton.Size = UDim2.new(0, 240, 0, 40)
FlyButton.Position = UDim2.new(0, 10, 0, 10) -- Ajustar posición
FlyButton.BorderSizePixel = 0
FlyButton.BackgroundTransparency = 0.1

-- Redondear esquinas
FlyButton.AutoButtonColor = false
FlyButton.ClipsDescendants = true
local cornerFly = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerFly.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerFly.Parent = FlyButton

-- Efecto de hover (opcional)
FlyButton.MouseEnter:Connect(function()
    FlyButton.BackgroundColor3 = Color3.fromRGB(144, 238, 144)  -- Color verde clarito al pasar el mouse
end)

FlyButton.MouseLeave:Connect(function()
    FlyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original
end)

-- Crear el botón de caminar sobre agua
local JesusButton = Instance.new("TextButton")
JesusButton.Name = "JesusButton"
JesusButton.Parent = ExtraFrame
JesusButton.Text = "Jesus: Off"  -- Estado inicial
JesusButton.Font = Enum.Font.GothamBold
JesusButton.TextSize = 18
JesusButton.TextColor3 = Color3.fromRGB(255, 255, 255)
JesusButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
JesusButton.Size = UDim2.new(0, 240, 0, 40)
JesusButton.Position = UDim2.new(0, 10, 0, 60) -- Ajustar posición
JesusButton.BorderSizePixel = 0
JesusButton.BackgroundTransparency = 0.1

-- Redondear esquinas
JesusButton.AutoButtonColor = false
JesusButton.ClipsDescendants = true
local cornerJesus = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerJesus.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerJesus.Parent = JesusButton

-- Efecto de hover (opcional)
JesusButton.MouseEnter:Connect(function()
    JesusButton.BackgroundColor3 = Color3.fromRGB(144, 238, 144)  -- Color naranja al pasar el mouse
end)

JesusButton.MouseLeave:Connect(function()
    JesusButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original
end)

local InstantHitButton = Instance.new("TextButton")
InstantHitButton.Name = "InstantHitButton"
InstantHitButton.Parent = ExtraFrame
InstantHitButton.Text = "Instant Hit: Off"  -- Estado inicial
InstantHitButton.Font = Enum.Font.GothamBold
InstantHitButton.TextSize = 18
InstantHitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
InstantHitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
InstantHitButton.Size = UDim2.new(0, 240, 0, 40)
InstantHitButton.Position = UDim2.new(0, 10, 0, 110) -- Ajustar posición debajo del botón Jesus
InstantHitButton.BorderSizePixel = 0
InstantHitButton.BackgroundTransparency = 0.1

-- Redondear esquinas para el botón de "Instant Hit"
InstantHitButton.AutoButtonColor = false
InstantHitButton.ClipsDescendants = true
local cornerInstantHit = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerInstantHit.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerInstantHit.Parent = InstantHitButton

-- Efecto de hover (opcional) para "Instant Hit"
InstantHitButton.MouseEnter:Connect(function()
    InstantHitButton.BackgroundColor3 = Color3.fromRGB(144, 238, 144)  -- Color naranja al pasar el mouse
end)

InstantHitButton.MouseLeave:Connect(function()
    InstantHitButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original
end)

-- Crear el botón de "No Recoil"
local NoRecoilButton = Instance.new("TextButton")
NoRecoilButton.Name = "NoRecoilButton"
NoRecoilButton.Parent = ExtraFrame
NoRecoilButton.Text = "No Recoil: Off"  -- Estado inicial
NoRecoilButton.Font = Enum.Font.GothamBold
NoRecoilButton.TextSize = 18
NoRecoilButton.TextColor3 = Color3.fromRGB(255, 255, 255)
NoRecoilButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
NoRecoilButton.Size = UDim2.new(0, 240, 0, 40)
NoRecoilButton.Position = UDim2.new(0, 10, 0, 160)
NoRecoilButton.BorderSizePixel = 0
NoRecoilButton.BackgroundTransparency = 0.1

-- Redondear esquinas para el botón de "No Recoil"
NoRecoilButton.AutoButtonColor = false
NoRecoilButton.ClipsDescendants = true
local cornerNoRecoil = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerNoRecoil.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerNoRecoil.Parent = NoRecoilButton

-- Efecto de hover (opcional) para "No Recoil"
NoRecoilButton.MouseEnter:Connect(function()
    NoRecoilButton.BackgroundColor3 = Color3.fromRGB(144, 238, 144)  -- Color naranja al pasar el mouse
end)

NoRecoilButton.MouseLeave:Connect(function()
    NoRecoilButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)  -- Volver al color original
end)

-- Crear el botón de "Head Spand"
local HeadSpandButton = Instance.new("TextButton")
HeadSpandButton.Name = "HeadSpandButton"
HeadSpandButton.Parent = ExtraFrame
HeadSpandButton.Text = "Head: Off"  -- Estado inicial
HeadSpandButton.Font = Enum.Font.GothamBold
HeadSpandButton.TextSize = 18
HeadSpandButton.TextColor3 = Color3.fromRGB(255, 255, 255)
HeadSpandButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
HeadSpandButton.Size = UDim2.new(0, 240, 0, 40)
HeadSpandButton.Position = UDim2.new(0, 10, 0, 210)
HeadSpandButton.BorderSizePixel = 0
HeadSpandButton.BackgroundTransparency = 0.1

-- Redondear esquinas para el botón de "Head Spand"
HeadSpandButton.AutoButtonColor = false
HeadSpandButton.ClipsDescendants = true
local cornerHeadSpand = Instance.new("UICorner")  -- Añadir esquinas redondeadas
cornerHeadSpand.CornerRadius = UDim.new(0, 12)  -- Radio de las esquinas
cornerHeadSpand.Parent = HeadSpandButton

-- Estado inicial para Head Spand
local headSpandEnabled = false

-- Funciones para activar y desactivar Head Spand
local function activateHeadSpand()
    headSpandEnabled = true
    -- Aquí deberías añadir la lógica específica para activar Head Spand
end

local function disableHeadSpand()
    headSpandEnabled = false
    -- Aquí deberías añadir la lógica específica para desactivar Head Spand
end

-- Button functionalities
HomeButton.MouseButton1Click:Connect(function()
    CombatFrame.Visible = false
    VisualFrame.Visible = false
    ExtraFrame.Visible = false
    WelcomeFrame.Visible = true
end)

CombatButton.MouseButton1Click:Connect(function()
    CombatFrame.Visible = true
    VisualFrame.Visible = false
    ExtraFrame.Visible = false
    WelcomeFrame.Visible = false
end)

VisualButton.MouseButton1Click:Connect(function()
    CombatFrame.Visible = false
    VisualFrame.Visible = true
    ExtraFrame.Visible = false
    WelcomeFrame.Visible = false
end)

ExtraButton.MouseButton1Click:Connect(function()
    CombatFrame.Visible = false
    VisualFrame.Visible = false
    ExtraFrame.Visible = true
    WelcomeFrame.Visible = false
end)

AimbotButton.MouseButton1Click:Connect(function()
    aimEnabled = not aimEnabled -- Cambiar el estado del aimbot
    if aimEnabled then
        AimbotButton.Text = "Anarchy aimb: On"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/combat/aimbot.lua"))()
        _G.enableAimbot() -- Activar el Aimbot
    else
        AimbotButton.Text = "Anarchy aimb: Off"
        _G.disableAimbot() -- Desactivar el Aimbot
    end
end)

AimbotNPCButton.MouseButton1Click:Connect(function()
    aimbotEnabled = not aimbotEnabled -- Alterna el estado del aimbot
    if aimbotEnabled then
        AimbotNPCButton.Text = "Delta Aimb: On"        
        -- Aquí puedes cargar el script del aimbot para NPCs
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/combat/deltaaimb.lua"))() -- Cambia esta URL por la de tu script de aimbot
        
        -- Activa el aimbot usando la función global
        if _G.enableAimbot then
            _G.enableAimbot() -- Activa la funcionalidad del aimbot
        end
    else
        AimbotNPCButton.Text = "Delta Aimb: Off"
        
        -- Desactiva el aimbot usando la función global
        if _G.disableAimbot then
            _G.disableAimbot() -- Desactiva la funcionalidad del aimbot
        end
    end
end)

SilenAimButton.MouseButton1Click:Connect(function()
    isSilentAimEnabled = not isSilentAimEnabled -- Cambiar el estado de Silent Aim
    if isSilentAimEnabled then        
        SilenAimButton.Text = "Silent Aim: On"
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/combat/silentaimb.lua"))() -- Cargar el script de Silent Aim
        activateSilentAim() -- Activar Silent Aim
    else
        SilenAimButton.Text = "Silent Aim: Off"
        if _G.disableSilentAim then
            _G.disableSilentAim() -- Desactivar Silent Aim
        end
    end
end)

-- Variable para verificar si el script de Mega Aim ha sido cargado
local megaAimScriptLoaded = false 

MegaAimButton.MouseButton1Click:Connect(function()
    megAimbEnabled = not megAimbEnabled -- Alterna el estado de Mega Aim

    if megAimbEnabled then
        MegaAimButton.Text = "MegaAim: On"

        -- Cargar el script de Mega Aim si no se ha cargado previamente
        if not megaAimScriptLoaded then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/combat/megaaimb.lua"))()
            megaAimScriptLoaded = true -- Marca el script como cargado
        end

        if _G.activateMegaaimb then
            _G.activateMegaaimb() -- Activa la funcionalidad de Mega Aim
            print("MegaAim activado") -- Mensaje de depuración
        else
            print("Función activateMegaaimb no está disponible.") -- Mensaje de error
        end
    else
        MegaAimButton.Text = "MegaAim: Off"
        if _G.disableMegaaimb then
            _G.disableMegaaimb() -- Desactiva la funcionalidad de Mega Aim
            print("MegaAim desactivado") -- Mensaje de depuración
        else
            print("Función disableMegaaimb no está disponible.") -- Mensaje de error
        end
    end
end)

-- Conectar el evento del botón
VisorButton.MouseButton1Click:Connect(function()
    visorEnabled = not visorEnabled
    _G.toggleVisor = visorEnabled -- Actualiza el estado en _G.toggleVisor
    if visorEnabled then
        VisorButton.Text = "Visor: On"
        -- Cargar el visor
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/visual/visor.lua"))()
    else
        VisorButton.Text = "Visor: Off"
        -- Desactivar el visor
        if _G.disableVisor then
            _G.disableVisor() -- Asegúrate de que esta función esté definida en tu script de visor
        end
    end
end)

FlyButton.MouseButton1Click:Connect(function()
    flyEnabled = not flyEnabled -- Alterna el estado de vuelo

    if flyEnabled then
        FlyButton.Text = "Fly: On"

        -- Cargar el script de vuelo si no se ha cargado previamente
        if not _G.activateFly then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/extra/fly.lua"))()
        end

        _G.activateFly() -- Activa la funcionalidad de vuelo
    else
        FlyButton.Text = "Fly: Off"
        if _G.disableFly then
            _G.disableFly() -- Desactiva el vuelo
        end
    end
end)

DetectButton.MouseButton1Click:Connect(function()
    detectEnabled = not detectEnabled -- Alterna el estado de detección

    if detectEnabled then
        DetectButton.Text = "Detect: On"

        -- Cargar el script de detección si no se ha cargado previamente
        if not _G.activateDetect then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/visual/detect.lua"))()
        end

        _G.activateDetect() -- Activa la funcionalidad de detección
    else
        DetectButton.Text = "Detect: Off"
        if _G.disableDetect then
            _G.disableDetect() -- Desactiva la detección
        end
    end
end)

JesusButton.MouseButton1Click:Connect(function()
    jesusEnabled = not jesusEnabled
    if jesusEnabled then
        JesusButton.Text = "Jesus: On"
        
        -- Cargar el script de caminar sobre el agua
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/extra/jesus.lua"))() -- Cambia esta URL por la de tu script de caminar sobre el agua
        _G.activateJesus() -- Activa la funcionalidad de caminar sobre el agua
    else
        JesusButton.Text = "Jesus: Off"
        if _G.disableJesus then
            _G.disableJesus() -- Desactivar la capacidad de caminar sobre el agua
        end
    end
end)

InstantHitButton.MouseButton1Click:Connect(function()
    instantHitEnabled = not instantHitEnabled
    if instantHitEnabled then
        InstantHitButton.Text = "Instant Hit: On"
        
        -- Cargar el script de Instant Hit desde GitHub
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/extra/instanthit.lua"))() 
        _G.activateInstantHit() -- Activa la funcionalidad de Instant Hit
    else
        InstantHitButton.Text = "Instant Hit: Off"
        if _G.disableInstantHit then
            _G.disableInstantHit() -- Desactiva la funcionalidad de Instant Hit
        end
    end
end)

NoRecoilButton.MouseButton1Click:Connect(function()
    recoilEnabled = not recoilEnabled
    if recoilEnabled then
        NoRecoilButton.Text = "No Recoil: On"

        -- Cargar el script de No Recoil desde GitHub
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/extra/instanthit.lua"))()  -- Reemplaza con la URL correcta del script de No Recoil
        _G.activateNoRecoil() -- Activa la funcionalidad de No Recoil
    else
        NoRecoilButton.Text = "No Recoil: Off"
        if _G.disableNoRecoil then
            _G.disableNoRecoil() -- Desactiva la funcionalidad de No Recoil
        end
    end
end)

-- Botón para activar/desactivar Head Spand
HeadSpandButton.MouseButton1Click:Connect(function()
    headSpandEnabled = not headSpandEnabled -- Alternar el estado de la expansión de la cabeza
    if headSpandEnabled then
        HeadSpandButton.Text = "Head: On"

        -- Cargar el script de Head Spand desde GitHub
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/extra/head.lua"))()  -- Reemplaza con la URL correcta del script de Head Spand
        _G.activateHeadExpand() -- Activa la funcionalidad de Head Spand
    else
        HeadSpandButton.Text = "Head: Off"
        if _G.disableHeadExpand then
            _G.disableHeadExpand() -- Desactiva la funcionalidad de Head Spand
        end
    end
end)

-- Funcionalidad para minimizar el menú con la tecla "P"
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.P then
        isMinimized = not isMinimized
        MainFrame.Visible = not isMinimized
    end
end)

-- Variables para el estado del Crosshair ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
local crosshairEnabled = false

-- Función para alternar el Crosshair
CrosshairButton.MouseButton1Click:Connect(function()
    crosshairEnabled = not crosshairEnabled
    CrosshairButton.Text = crosshairEnabled and "Crosshair: On" or "Crosshair: Off"
    
    if crosshairEnabled then
        -- Mostrar el crosshair
        crosshair.Visible = true
        crosshairVertical.Visible = true
    else
        -- Ocultar el crosshair
        crosshair.Visible = false
        crosshairVertical.Visible = false
    end
end)

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
    
    -- Mantener la visibilidad del crosshair según el estado
    crosshair.Visible = crosshairEnabled
    crosshairVertical.Visible = crosshairEnabled
end)

-- Configuraciones del ESP ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Configuraciones
local settings = {
    defaultcolor = Color3.fromRGB(255, 0, 0),
    teamcheck = false,
    teamcolor = true
}

-- Servicios
local runService = game:GetService("RunService")
local players = game:GetService("Players")

-- Variables
local localPlayer = players.LocalPlayer
local camera = workspace.CurrentCamera
local maxDistance = 2000
local espEnabled = false -- Cambiado a false por defecto
local espCache = {}
local connections = {} -- Tabla para almacenar las conexiones

-- Funciones
local newVector2, newColor3, newDrawing = Vector2.new, Color3.new, Drawing.new
local tan, rad = math.tan, math.rad
local round = function(...)
    local a = {}
    for i, v in next, table.pack(...) do
        a[i] = math.round(v)
    end
    return unpack(a)
end

local wtvp = function(...)
    local a, b = camera.WorldToViewportPoint(camera, ...)
    return newVector2(a.X, a.Y), b, a.Z
end

local function createEsp(player)
    local drawings = {}
    drawings.box = newDrawing("Square")
    drawings.box.Thickness = 1
    drawings.box.Filled = false
    drawings.box.Color = settings.defaultcolor
    drawings.box.Visible = false
    drawings.box.ZIndex = 2

    drawings.boxoutline = newDrawing("Square")
    drawings.boxoutline.Thickness = 3
    drawings.boxoutline.Filled = false
    drawings.boxoutline.Color = newColor3()
    drawings.boxoutline.Visible = false
    drawings.boxoutline.ZIndex = 1

    drawings.name = newDrawing("Text")
    drawings.name.Color = newColor3(255, 255, 255)
    drawings.name.Size = 20
    drawings.name.Center = true
    drawings.name.Outline = true
    drawings.name.Visible = false

    drawings.health = newDrawing("Text")
    drawings.health.Color = newColor3(0, 255, 0)
    drawings.health.Size = 20
    drawings.health.Center = true
    drawings.health.Outline = true
    drawings.health.Visible = false

    drawings.distance = newDrawing("Text")
    drawings.distance.Color = newColor3(255, 0, 0)
    drawings.distance.Size = 20
    drawings.distance.Center = true
    drawings.distance.Outline = true
    drawings.distance.Visible = false

    espCache[player] = drawings
end

local function updateEsp(player, esp)
    local character = player and player.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local position, visible, depth = wtvp(humanoidRootPart.Position)
            esp.box.Visible = visible and depth <= maxDistance
            esp.boxoutline.Visible = visible and depth <= maxDistance
            esp.name.Visible = visible and depth <= maxDistance
            esp.health.Visible = visible and depth <= maxDistance
            esp.distance.Visible = visible and depth <= maxDistance

            if visible then
                local scaleFactor = 1 / (depth * tan(rad(camera.FieldOfView / 2)) * 2) * 1000
                local width, height = round(2 * scaleFactor, 2.5 * scaleFactor)
                local x, y = round(position.X, position.Y)

                local distance = (localPlayer.Character.HumanoidRootPart.Position - humanoidRootPart.Position).magnitude

                if distance > 800 then
                    esp.box.Color = Color3.fromRGB(0, 0, 255)
                else
                    esp.box.Color = settings.teamcolor and player.TeamColor.Color or settings.defaultcolor
                end

                esp.box.Size = newVector2(width, height)
                esp.box.Position = newVector2(round(x - width / 2, y - height / 2))

                esp.boxoutline.Size = esp.box.Size
                esp.boxoutline.Position = esp.box.Position

                local textScale = distance <= 800 and 0.8 or 0.75
                local nameAndDistanceScale = distance <= 800 and 1.2 or 0.75

                esp.name.Text = player.Name
                esp.name.Position = newVector2(x, y - height / 2 - 20)
                esp.name.Size = 16 * nameAndDistanceScale

                local humanoid = character:FindFirstChild("Humanoid")
                if humanoid then
                    esp.health.Text = string.format("Vida: %.0f%%", humanoid.Health / humanoid.MaxHealth * 100)
                    esp.health.Position = newVector2(x, y - height / 2 - 40)
                    esp.health.Size = 16 * textScale
                end

                esp.distance.Text = string.format("Distancia: %.2f", distance)
                esp.distance.Position = newVector2(x, y + height / 2 + 20)
                esp.distance.Size = 16 * nameAndDistanceScale
            end
        end
    else
        esp.box.Visible = false
        esp.boxoutline.Visible = false
        esp.name.Visible = false
        esp.health.Visible = false
        esp.distance.Visible = false
    end
end

local function removeEsp(player)
    if espCache[player] then
        for _, drawing in pairs(espCache[player]) do
            drawing:Remove()
        end
        espCache[player] = nil
    end
end

-- Botón para activar/desactivar ESP
local ESPButton = Instance.new("TextButton")
ESPButton.Name = "ESPButton"
ESPButton.Parent = VisualFrame
ESPButton.Text = "ESP: Off"
ESPButton.Font = Enum.Font.GothamBold
ESPButton.TextSize = 18
ESPButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ESPButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ESPButton.Size = UDim2.new(0, 240, 0, 40)
ESPButton.Position = UDim2.new(0, 10, 0, 10)

-- Añadir esquinas redondeadas
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = ESPButton

-- Efecto de hover
ESPButton.MouseEnter:Connect(function()
    ESPButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
end)

ESPButton.MouseLeave:Connect(function()
    ESPButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
end)

-- Función para alternar el estado del ESP
ESPButton.MouseButton1Click:Connect(function()
    espEnabled = not espEnabled
    ESPButton.Text = espEnabled and "ESP: On" or "ESP: Off"
end)

-- Principal
for _, player in next, players:GetPlayers() do
    if player ~= localPlayer then
        createEsp(player)
    end
end

-- Conexiones con PlayerAdded y PlayerRemoving
connections[#connections+1] = players.PlayerAdded:Connect(function(player)
    createEsp(player)
end)

connections[#connections+1] = players.PlayerRemoving:Connect(function(player)
    removeEsp(player)
end)

connections[#connections+1] = runService:BindToRenderStep("esp", Enum.RenderPriority.Camera.Value, function()
    if espEnabled then
        for player, drawings in next, espCache do
            if settings.teamcheck and player.Team == localPlayer.Team then
                continue
            end
            if drawings and player ~= localPlayer then
                updateEsp(player, drawings)
            end
        end
    else
        for _, drawings in pairs(espCache) do
            for _, drawing in pairs(drawings) do
                drawing.Visible = false
            end
        end
    end
end)

-- full bright +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

-- Configuraciones de iluminación
local LightingConfigs = {
    {
        name = "Config 1",
        apply = function()
            -- Configuración 1: Más oscura, luz tenue.
            local Lighting = game:GetService("Lighting")
            Lighting.Technology = Enum.Technology.Voxel
            Lighting.ExposureCompensation = 0.5
            Lighting.Brightness = 1
            Lighting.Ambient = Color3.fromRGB(70, 70, 70) -- Más tenue
            Lighting.OutdoorAmbient = Color3.fromRGB(80, 80, 80) -- Menos contraste
            local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere") or Instance.new("Atmosphere", Lighting)
            atmosphere.Color = Color3.fromRGB(110, 110, 110)
            atmosphere.Decay = Color3.fromRGB(70, 70, 70)
            atmosphere.Density = 0.3 -- Un poco más denso
            atmosphere.Glare = 0.1
            atmosphere.Haze = 0.2

            -- Configurar FlirScopeOverlay
            local flir = Lighting:FindFirstChild("FlirScopeOverlay") or Instance.new("ColorCorrectionEffect", Lighting)
            flir.Name = "FlirScopeOverlay"
            flir.Brightness = 6
            flir.Contrast = 10
            flir.Saturation = 4
            flir.TintColor = Color3.fromRGB(26, 26, 26)
            flir.Enabled = true
        end
    },
    {
        name = "Config 2",
        apply = function()
            -- Configuración 2: Más clara, ideal para la noche.
            local Lighting = game:GetService("Lighting")
            Lighting.Technology = Enum.Technology.Voxel
            Lighting.ExposureCompensation = 2.5 -- Más exposición
            Lighting.Brightness = 3.5 -- Luz brillante
            Lighting.Ambient = Color3.fromRGB(200, 200, 200) -- Muy claro
            Lighting.OutdoorAmbient = Color3.fromRGB(220, 220, 220) -- Ambiente iluminado
            local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere") or Instance.new("Atmosphere", Lighting)
            atmosphere.Color = Color3.fromRGB(190, 190, 190) -- Ambiente claro
            atmosphere.Decay = Color3.fromRGB(120, 120, 120)
            atmosphere.Density = 0.15 -- Menos densidad para mayor claridad
            atmosphere.Glare = 0.2 -- Reflejo suave
            atmosphere.Haze = 0.1 -- Menor neblina

            -- Configurar FlirScopeOverlay
            local flir = Lighting:FindFirstChild("FlirScopeOverlay") or Instance.new("ColorCorrectionEffect", Lighting)
            flir.Name = "FlirScopeOverlay"
            flir.Brightness = 6
            flir.Contrast = 10
            flir.Saturation = 4
            flir.TintColor = Color3.fromRGB(26, 26, 26)
            flir.Enabled = true
        end
    }
}

-- Monitoreo constante para asegurar que los efectos se mantengan
local function ensureEffects()
    local Lighting = game:GetService("Lighting")
    local flir = Lighting:FindFirstChild("FlirScopeOverlay")
    if not flir then
        flir = Instance.new("ColorCorrectionEffect", Lighting)
        flir.Name = "FlirScopeOverlay"
        flir.Brightness = 6
        flir.Contrast = 10
        flir.Saturation = 4
        flir.TintColor = Color3.fromRGB(26, 26, 26)
        flir.Enabled = true
    end
end

-- Asegurar que *Full Bright* siempre esté activo, independientemente de cambios en el clima, hora o acciones del jugador
local function forceFullBright()
    local Lighting = game:GetService("Lighting")
    Lighting.Technology = Enum.Technology.Voxel
    Lighting.ExposureCompensation = 2.5
    Lighting.Brightness = 3.5
    Lighting.Ambient = Color3.fromRGB(200, 200, 200)
    Lighting.OutdoorAmbient = Color3.fromRGB(220, 220, 220)
    
    local atmosphere = Lighting:FindFirstChildOfClass("Atmosphere") or Instance.new("Atmosphere", Lighting)
    atmosphere.Color = Color3.fromRGB(190, 190, 190)
    atmosphere.Decay = Color3.fromRGB(120, 120, 120)
    atmosphere.Density = 0.15
    atmosphere.Glare = 0.2
    atmosphere.Haze = 0.1

    local flir = Lighting:FindFirstChild("FlirScopeOverlay") or Instance.new("ColorCorrectionEffect", Lighting)
    flir.Name = "FlirScopeOverlay"
    flir.Brightness = 6
    flir.Contrast = 10
    flir.Saturation = 4
    flir.TintColor = Color3.fromRGB(26, 26, 26)
    flir.Enabled = true
end

-- Llamar a forceFullBright constantemente para evitar que la configuración cambie
game:GetService("RunService").Heartbeat:Connect(function()
    forceFullBright()
end)

-- Crear botón principal
local ConfigButton = Instance.new("TextButton")
ConfigButton.Name = "ConfigButton"
ConfigButton.Parent = VisualFrame
ConfigButton.Text = "Full Bright Config"
ConfigButton.Font = Enum.Font.GothamBold
ConfigButton.TextSize = 18
ConfigButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ConfigButton.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
ConfigButton.Size = UDim2.new(0, 240, 0, 40)
ConfigButton.Position = UDim2.new(0, 10, 0, 210) -- Posición ajustada
ConfigButton.BorderSizePixel = 0

local cornerConfig = Instance.new("UICorner")
cornerConfig.CornerRadius = UDim.new(0, 12)
cornerConfig.Parent = ConfigButton

-- Efecto hover para el botón principal
ConfigButton.MouseEnter:Connect(function()
    ConfigButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
end)

ConfigButton.MouseLeave:Connect(function()
    ConfigButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
end)

-- Crear lista desplegable
local DropDownFrame = Instance.new("Frame")
DropDownFrame.Name = "DropDownFrame"
DropDownFrame.Parent = VisualFrame
DropDownFrame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
DropDownFrame.BorderSizePixel = 0
DropDownFrame.Size = UDim2.new(0, 240, 0, 0) -- Comienza contraído
DropDownFrame.Position = UDim2.new(0, 10, 0, 260) -- Justo debajo del botón principal
DropDownFrame.ClipsDescendants = true

local cornerDropDown = Instance.new("UICorner")
cornerDropDown.CornerRadius = UDim.new(0, 12)
cornerDropDown.Parent = DropDownFrame

-- Animación para abrir/cerrar el menú
local function ToggleDropDown()
    if DropDownFrame.Size == UDim2.new(0, 240, 0, 0) then
        DropDownFrame:TweenSize(UDim2.new(0, 240, 0, 40 * #LightingConfigs), "Out", "Quad", 0.2, true)
    else
        DropDownFrame:TweenSize(UDim2.new(0, 240, 0, 0), "Out", "Quad", 0.2, true)
    end
end

-- Opciones dentro del menú desplegable
for i, config in ipairs(LightingConfigs) do
    local OptionButton = Instance.new("TextButton")
    OptionButton.Name = "Option" .. i
    OptionButton.Parent = DropDownFrame
    OptionButton.Text = config.name
    OptionButton.Font = Enum.Font.Gotham
    OptionButton.TextSize = 16
    OptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    OptionButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    OptionButton.Size = UDim2.new(1, 0, 0, 40)
    OptionButton.Position = UDim2.new(0, 0, 0, (i - 1) * 40)
    OptionButton.BorderSizePixel = 0

    local cornerOption = Instance.new("UICorner")
    cornerOption.CornerRadius = UDim.new(0, 12)
    cornerOption.Parent = OptionButton

    -- Efecto hover para las opciones
    OptionButton.MouseEnter:Connect(function()
        OptionButton.BackgroundColor3 = Color3.fromRGB(100, 100, 255)
    end)

    OptionButton.MouseLeave:Connect(function()
        OptionButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    end)

    -- Aplicar configuración al hacer clic
    OptionButton.MouseButton1Click:Connect(function()
        config.apply()
        ConfigButton.Text = "Selected: " .. config.name
        ToggleDropDown()
    end)
end

-- Abrir/cerrar el menú desplegable al hacer clic en el botón principal
ConfigButton.MouseButton1Click:Connect(ToggleDropDown)