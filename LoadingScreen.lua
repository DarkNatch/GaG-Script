local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0.4, 0, 0.1, 0)
Frame.Position = UDim2.new(0.3, 0, 0.45, 0)
Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Frame.BorderSizePixel = 0

local TextLabel = Instance.new("TextLabel", Frame)
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.TextScaled = true
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.Text = "DarkNatch Loading... 0%"

local percent = 0
repeat
    percent += 1
    TextLabel.Text = "DarkNatch Loading... " .. percent .. "%"
    wait(0.02)
until percent >= 100

wait(0.5)
ScreenGui:Destroy()

print("Join our Discord: discord.gg/yourinvite")
