--create a server script (script) in either ServerScriptService or Workspace
--if you want this to save use the 'DataStore.lua' file.

game.Players.PlayerAdded:Connect(function(player) --activates once a player joins, and gets the player from this function
	local leaderstats = Instance.new("Folder") --creates a new folder 'leaderstats'
	leaderstats.Name = "leaderstats" 
	leaderstats.Parent = player --sets the parent of the folder to the player
	
	local cash = Instance.new("IntValue") --creates a new IntValue 'cash'
	cash.Name = "Cash"
	cash.Value = 0 --Sets the start value to '0', you can change this to any amount you would like.
	cash.Parent = leaderstats --sets the parent of the IntValue to the leaderstats folder
end)