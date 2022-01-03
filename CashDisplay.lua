--Put this in a LocalScript under a TextLabel
--You will need a leaderstats script for this, you can find that in the 'Leaderstats.lua' file

local player = game.Players.LocalPlayer or game.Players.PlayerAdded:Wait() --makes a variable for the player
local leaderstats = player:WaitForChild("leaderstats") --makes a variable for the leaderstats folder in the player 
local cash = leaderstats.Cash --makes a variable for the 'Cash' intValue
local textLabel = script.Parent --makes a variable for the textLabel

textLabel.Text = cash.Value --quite self explanatory

cash:GetPropertyChangedSignal("Value"):Connect(function() --a function that activates once the cash value is changed
	value.Text = cash.Value --sets the text in the textlabel to the cash value
end)