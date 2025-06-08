local Features = {
    EggHatchingDetect = "https://raw.githubusercontent.com/DarkNatch/GaG-Script/refs/heads/main/EggHatchingDetect.lua",
    PetSpawner = "https://raw.githubusercontent.com/DarkNatch/GaG-Script/refs/heads/main/PetSpawner.lua",
    SeedSpawner = "https://raw.githubusercontent.com/DarkNatch/GaG-Script/refs/heads/main/SeedSpawner.lua",
    ServerManager = "https://raw.githubusercontent.com/DarkNatch/GaG-Script/refs/heads/main/ServerManager.lua",
    LoadingScreen = "https://raw.githubusercontent.com/YourUsername/Grow-a-Garden-Scripts/main/LoadingScreen.lua"
}

for name, url in pairs(Features) do
    local success, result = pcall(function()
        return loadstring(game:HttpGet(url))()
    end)

    if success then
        print(name .. " loaded.")
    else
        warn(name .. " failed: " .. tostring(result))
    end
end
