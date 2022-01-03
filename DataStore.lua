--create a server script in either ServerScriptService or Workspace
--You will need a leaderstats script for this, you can find that in the 'Leaderstats.lua' file

local ds = game:GetService("DataStoreService"):GetDataStore("SaveData") --gets the DataStoreService, ds means DataStore
game.Players.PlayerAdded:Connect(function(plr) --activates once a player joins
	wait()
	local plrkey = "id_"..plr.userId
	local save = plr.leaderstats.Cash --makes a variable for the cash intValue
	
	local GetSaved = ds:GetAsync(plrkey)
	if GetSaved then
		save.Value = GetSaved[1]
	else
		local NumberForSaving = {save.Value}
		ds:GetAsync(plrkey, NumberForSaving)
	end
end)

game.Players.PlayerRemoving:Connect(function(plr) --once the player leaves this function activates
	ds:SetAsync("id_"..plr.userId, {plr.leaderstats.Cash.Value})
end)