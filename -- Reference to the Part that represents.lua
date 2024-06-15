-- Reference to the Part that represents the yellow line
local yellowLine = script.Parent -- Assuming the script is inside the Part

-- Function to find all players and attach yellow line above their heads
local function attachYellowLine()
    for _, player in ipairs(game.Players:GetPlayers()) do
        -- Clone the yellow line Part and position it above player's head
        local lineClone = yellowLine:Clone()
        lineClone.Parent = player.Character.Head
        lineClone.Position = Vector3.new(0, 2, 0) -- Adjust height above head as needed
        lineClone.BrickColor = BrickColor.new("Bright yellow") -- Change color as needed
        lineClone.CanCollide = false
        lineClone.Anchored = true
    end
end

-- Call the function when the game starts and when a player joins
attachYellowLine()
game.Players.PlayerAdded:Connect(attachYellowLine)
