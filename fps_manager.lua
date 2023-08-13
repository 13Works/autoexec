local MAX_FPS, MIN_FPS = 10, 2
local RENDER_ON_RELEASE = false

local LOAD_TIMER = 10
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

local function render(Enabled)
    RunService:Set3dRenderingEnabled(Enabled)
end

UserInputService.WindowFocused:Connect(function()
    render(true)
    setfpscap(MAX_FPS)
end)

UserInputService.WindowFocusReleased:Connect(function()
    render(not RENDER_ON_RELEASE and 0 or RENDER_ON_RELEASE)
    setfpscap(MIN_FPS)
end)

wait(LOAD_TIMER)
if not iswindowactive() then
    setfpscap(MIN_FPS)
    render(not RENDER_ON_RELEASE and 0 or RENDER_ON_RELEASE)
end
