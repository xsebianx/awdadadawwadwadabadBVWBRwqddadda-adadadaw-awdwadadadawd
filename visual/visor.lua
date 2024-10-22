-- Asegúrate de que 'plr' se refiera al jugador correcto
local plr = game.Players.LocalPlayer -- Debe estar en un contexto donde LocalPlayer es accesible

-- Variable para el estado del visor
local visorVisible = false

-- Función para actualizar el estado del visor
local function updateVisorVisibility()
    if plr and plr:FindFirstChild("PlayerGui") then
        local playerGui = plr.PlayerGui
        if playerGui:FindFirstChild("MainGui") then
            local visor = playerGui.MainGui.MainFrame.ScreenEffects:FindFirstChild("Visor")
            if visor then
                visor.Visible = visorVisible
            else
                warn("Visor no encontrado.")
            end
        else
            warn("MainGui no encontrado.")
        end
    else
        warn("PlayerGui no encontrado.")
    end
end

-- Llama a la función al inicio para asegurarte de que el visor esté visible
updateVisorVisibility()

-- Función para activar o desactivar el visor
local function toggleVisor(state)
    visorVisible = state -- Cambia el estado del visor
    updateVisorVisibility() -- Actualiza la visibilidad del visor
end

-- Registra la función en el contexto global para que sea accesible desde el menú
_G.toggleVisor = toggleVisor

-- Sincroniza el visor con el estado desde el menú
_G.disableVisor = function()
    toggleVisor(true) -- Desactiva el visor
end

-- Asegúrate de que el visor se inicie con el estado correcto
toggleVisor(_G.toggleVisor)
