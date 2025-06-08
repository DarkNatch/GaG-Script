-- Egg Hatch Detection & Auto Rejoin
print("[EggDetector] Loaded")

local function eggHatched(targetPetName)
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Model") and v.Name == targetPetName then
            return true
        end
    end
    return false
end

local targetPet = "RareDragon"

if not eggHatched(targetPet) then
    print("Target egg not hatched. Rejoining...")
    local TeleportService = game:GetService("TeleportService")
    local Players = game:GetService("Players")
    TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, Players.LocalPlayer)
end
