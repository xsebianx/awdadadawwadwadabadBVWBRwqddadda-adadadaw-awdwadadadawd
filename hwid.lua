local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

-- Cargar HWIDs desde el archivo JSON en GitHub
local function loadHWIDs(url)
    local response = HttpService:GetAsync(url)
    local data = HttpService:JSONDecode(response)
    return data.permanentHWIDs, data.temporaryHWIDs
end

-- URL del archivo JSON en GitHub
local hwidURL = "https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/hwids.json" -- Reemplaza con tu URL

local permanentHWIDs, temporaryHWIDs

-- Llamar a loadHWIDs en un contexto permitido
pcall(function()
    permanentHWIDs, temporaryHWIDs = loadHWIDs(hwidURL)
end)

-- Verificar si se cargaron correctamente los HWIDs
if not permanentHWIDs or not temporaryHWIDs then
    print("Error al cargar HWIDs. Asegúrate de que la URL sea correcta.")
    return
end

-- Variables de tiempo
local passwordSetTime = nil -- Para almacenar el tiempo cuando se ingresó la contraseña temporal
local hwidExpirationTime = 604800 -- 604800 segundos = 1 semana

-- Función para obtener el HWID del cliente
local function getClientHWID()
    local clientId = RbxAnalyticsService:GetClientId()
    return clientId
end

local function checkHWID()
    local playerHWID = getClientHWID() -- Obtener el HWID del jugador
    local currentTime = os.time() -- Obtener el tiempo actual en segundos

    -- Verificar si el HWID está autorizado para acceso permanente
    if table.find(permanentHWIDs, playerHWID) then
        print("¡HWID autorizado para acceso permanente!")
        -- Aquí puedes añadir la funcionalidad adicional para acceso permanente
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/menu.lua"))() -- Cambia la URL por el script permanente

    -- Verificar si el HWID está autorizado para acceso temporal
    elseif table.find(temporaryHWIDs, playerHWID) then
        print("¡HWID autorizado para acceso temporal!")

        -- Comprobar el tiempo de acceso
        if passwordSetTime == nil then
            passwordSetTime = currentTime -- Guardar el tiempo cuando se autorizó el HWID
            print("Acceso temporal concedido por una semana.")
            -- Aquí puedes añadir la funcionalidad adicional para acceso temporal
            loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/menu.lua"))() -- Cambia la URL por el script temporal

        else
            local elapsedTime = currentTime - passwordSetTime -- Calcular el tiempo transcurrido
            if elapsedTime < hwidExpirationTime then
                print("¡Acceso temporal todavía válido!")
                -- Aquí puedes añadir la funcionalidad adicional para acceso temporal
                loadstring(game:HttpGet("https://raw.githubusercontent.com/xsebianx/awdadadawwadwadabadBVWBRwqddadda-adadadaw-awdwadadadawd/refs/heads/main/menu.lua"))() -- Cambia la URL por el script temporal
            else
                print("El acceso temporal ha expirado.")
                passwordSetTime = nil -- Reiniciar el tiempo
            end
        end

    else
        -- Notificar al jugador que su HWID no está autorizado
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Acceso denegado";
            Text = "Tu HWID no está autorizado para jugar.";
            Duration = 5;
        })

        -- Esperar un momento para que el jugador vea el mensaje antes de expulsarlo
        wait(3)
        print("HWID no autorizado. Expulsando al jugador...")
        Players.LocalPlayer:Kick("Acceso denegado. Tu HWID no está autorizado.")
    end
end

-- Ejecutar la verificación de HWID
checkHWID()
