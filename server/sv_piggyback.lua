local piggybacking = {}
--piggybacking[source] = targetSource, source is piggybacking targetSource
local beingPiggybacked = {}
--beingPiggybacked[targetSource] = source, targetSource is beingPiggybacked by source

RegisterServerEvent("HulkPiggyback:sync")
AddEventHandler("HulkPiggyback:sync", function(targetSrc)
	local source = source
	local sourcePed = GetPlayerPed(source)
    	local sourceCoords = GetEntityCoords(sourcePed)
	local targetPed = GetPlayerPed(targetSrc)
    	local targetCoords = GetEntityCoords(targetPed)
	if #(sourceCoords - targetCoords) <= 3.0 then 
		TriggerClientEvent("HulkPiggyback:syncTarget", targetSrc, source)
		piggybacking[source] = targetSrc
		beingPiggybacked[targetSrc] = source
	end
end)

RegisterServerEvent("HulkPiggyback:stop")
AddEventHandler("HulkPiggyback:stop", function(targetSrc)
	local source = source

	if piggybacking[source] then
		TriggerClientEvent("HulkPiggyback:cl_stop", targetSrc)
		piggybacking[source] = nil
		beingPiggybacked[targetSrc] = nil
	elseif beingPiggybacked[source] then
		TriggerClientEvent("HulkPiggyback:cl_stop", beingPiggybacked[source])
		beingPiggybacked[source] = nil
		piggybacking[beingPiggybacked[source]] = nil
	end
end)

AddEventHandler('playerDropped', function(reason)
	local source = source
	
	if piggybacking[source] then
		TriggerClientEvent("HulkPiggyback:cl_stop", piggybacking[source])
		beingPiggybacked[piggybacking[source]] = nil
		piggybacking[source] = nil
	end

	if beingPiggybacked[source] then
		TriggerClientEvent("HulkPiggyback:cl_stop", beingPiggybacked[source])
		piggybacking[beingPiggybacked[source]] = nil
		beingPiggybacked[source] = nil
	end
end)
