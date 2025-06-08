-- Old Server Detection (Anti-old server reuse)
print("[ServerManager] Loaded")

local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local visited = {}

local function isOldServer()
    local jobId = game.JobId
    if visited[jobId] then return true end
    visited[jobId] = true
    return false
end

if isOldServer() then
    warn("Old server detected, hopping...")
    TeleportService:Teleport(game.PlaceId)
end
