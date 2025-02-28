local VirtualInputManager = game:GetService("VirtualInputManager")
local UserInputService = game:GetService("UserInputService")

-- Функция для симуляции клика в левый верхний угол экрана
local function clickTopLeftCorner()
    -- Получаем размеры экрана
    local screenSize = workspace.CurrentCamera.ViewportSize

    -- Координаты левого верхнего угла (430, 153)
    local x = 430
    local y = 153

    -- Симулируем движение мыши в левый верхний угол
    VirtualInputManager:SendMouseMoveEvent(x, y, game)

    -- Симулируем нажатие левой кнопки мыши
    VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, 1) -- 0 = левая кнопка мыши
    task.wait(0.1) -- Короткая задержка
    VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, 1) -- Отпускаем кнопку

    print("Клик в левый верхний угол выполнен.")
end

-- Выполняем 3 повторения клика
for i = 1, 3 do
    clickTopLeftCorner()
    task.wait(0.5) -- Задержка между кликами (0.5 секунды)
end
