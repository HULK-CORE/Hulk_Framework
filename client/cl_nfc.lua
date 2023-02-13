-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

ESX = exports['es_extended']:getSharedObject()
local phoneObj = nil
local phoneModel = -1038739674

CreateThread(function()
    exports.qtarget:Player({
        options = {
            {
                event = "wasabi_nfc:startTransfer",
                icon = "fas fa-comments-dollar",
                label = Strings['nfc_transfer']
            }
        },
        distance = 2
    })
end)

loadModel = function(model)
    while not HasModelLoaded(model) do Wait(0) RequestModel(model) end
    return model
end

loadDict = function(dict)
    while not HasAnimDictLoaded(dict) do Wait(0) RequestAnimDict(dict) end
    return dict
end

phoneAnim = function()
    local ped = PlayerPedId()
    loadDict('cellphone@')
    loadModel(phoneModel)
    if not IsPedInAnyVehicle(ped, false) then
        local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(ped,0.0,3.0,0.5))
        SetCurrentPedWeapon(ped, `WEAPON_UNARMED`, true)
        ClearPedTasks(ped)
        phoneObj = CreateObject(phoneModel, 1.0, 1.0, 1.0, true, false, false)
        local bone = GetPedBoneIndex(ped, 28422)
        AttachEntityToEntity(phoneObj, ped, bone, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 1, 0, 0, 2, 1)
        TaskPlayAnim(ped, 'cellphone@', 'cellphone_text_read_base', 8.0, 8.0, -1, 1, 1.0, false, false, false)
    end
end

RegisterNetEvent('wasabi_nfc:notifyReceiver')
AddEventHandler('wasabi_nfc:notifyReceiver', function(name, amount)
    lib.alertDialog({
        header = Strings['received_funds'],
        content = (Strings['received_funds_desc']):format(addCommas(amount), name),
        centered = true,
        cancel = false
    })
end)

deletePhoneObj = function()
	if phoneObj then
        if DoesEntityExist(phoneObj) then
            DetachEntity(phoneObj)
            local model = GetEntityModel(phoneObj)
            SetModelAsNoLongerNeeded(model)
            DeleteObject(phoneObj)
        end
		phoneObj = nil
	end
end

AddEventHandler('wasabi_nfc:startTransfer', function()
    ESX.TriggerServerCallback('wasabi_nfc:checkPhone', function(cb)
        if cb then
            openTransferDialog()
        else
            lib.notify({
                title = 'HULK FRAMEWORK',
                description = 'You must have a phone to do this!',
                position = 'top',
                style = {
                    backgroundColor = '#141517',
                    color = '#909296'
                },
                icon = 'ban',
                iconColor = '#C53030'
            })
        end
    end)
end)

addCommas = function(n)
	return tostring(math.floor(n)):reverse():gsub("(%d%d%d)","%1,")
								  :gsub(",(%-?)$","%1"):reverse()
end

transferFunds = function(amount)
    local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
    if closestPlayer ~= -1 and closestDistance <= 2 then
        local targetId = GetPlayerServerId(closestPlayer)
        ESX.TriggerServerCallback('wasabi_nfc:confirmPayment', function(cb) 
            if cb then
                lib.notify({
                    title = 'HULK FRAMEWORK',
                    description = 'You\'ve successfully sent $%s to %s.',
                    position = 'top',
                    style = {
                        backgroundColor = '#F5FCF6',
                        color = '#051207'
                    },
                    icon = 'info',
                    iconColor = '#C53030'
                })
            else
                lib.notify({
                    title = 'HULK FRAMEWORK',
                    description = 'You don\'t have the funds for this transaction!',
                    position = 'top',
                    style = {
                        backgroundColor = '#141517',
                        color = '#909296'
                    },
                    icon = 'ban',
                    iconColor = '#C53030'
                })
            end
        end, targetId, amount)
    else
        lib.notify({
            title = 'HULK FRAMEWORK',
            description = 'No nearby players',
            position = 'top',
            style = {
                backgroundColor = '#141517',
                color = '#909296'
            },
            icon = 'ban',
            iconColor = '#C53030'
        })
    end
end

openTransferDialog = function()
    phoneAnim()
    local keyboard = lib.inputDialog(Strings['nfc_transfer'], {Strings['amount']})
    ClearPedTasks(PlayerPedId())
    if keyboard then
        if tonumber(keyboard[1]) then
            local amount = math.floor(keyboard[1])
            if not Config.TransferLimit then
                transferFunds(amount)
            else
                if amount > Config.TransferLimit then
                    lib.notify({
                        title = 'HULK FRAMEWORK',
                        description = 'The amount entered was above the transfer limit!',
                        position = 'top',
                        style = {
                            backgroundColor = '#141517',
                            color = '#909296'
                        },
                        icon = 'ban',
                        iconColor = '#C53030'
                    })
                else
                    transferFunds(amount)
                end
            end
        else
            lib.notify({
				title = 'HULK FRAMEWORK',
				description = 'Invalid Amount!',
				position = 'top',
				style = {
					backgroundColor = '#141517',
					color = '#909296'
				},
				icon = 'ban',
				iconColor = '#C53030'
			})
        end
    end
    deletePhoneObj()
end