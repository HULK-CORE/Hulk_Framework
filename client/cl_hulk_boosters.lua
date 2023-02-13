local SuperKick = false
local SuperJump = false
local FastRun = false
local FastSwim = false
local InfStamina = false



lib.registerContext({
    id = 'hulk_abilities',
    group = 'admin',
    title = 'HULK ABILITIES',
    onExit = function()
        print('HULK BOOSTERS')
    end,
    options = {
        {title = 'Powered by HULK'},
        {
            title = 'SuperMelee',
            event = 'hulk:boosted',
            description = 'Enables Super human Ability',
            options = {
                ['Nothing here'] = {}
            }
        },
        {
            title = 'SuperJump',
            event = 'hulk:SuperJump',
            description = 'Enables SuperJump Ability',
            options = {
                ['Nothing here'] = {}
            }
        },
        {
            title = 'FastRun',
            event = 'hulk:FastRun',
            description = 'Enables FastRun Ability',
            options = {
                ['Nothing here'] = {}
            }
        },
        {
            title = 'FastSwim',
            event = 'hulk:FastSwim',
            description = 'Enables FastSwim Ability',
            options = {
                ['Nothing here'] = {}
            }
        },
        {
            title = 'Infinity Stamina',
            event = 'hulk:InfStamina',
            description = 'Enables InfinityStamina Ability',
            options = {
                ['Nothing here'] = {}
            }
        },
    }
})

RegisterCommand('hadmin', function()
    lib.showContext('hulk_abilities')
end)



RegisterNetEvent("hulk:boosted")
AddEventHandler("hulk:boosted", function()
   SuperKick = not SuperKick
   if SuperKick then 
      N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"),950.9) 
      N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"),1200.9) 
      lib.notify({
        title = 'HULK ABILITIES',
        position = 'top',
        description = 'Superhuman Ability Enabled',
        type = 'success'
    })
 else
      N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 1.49) 
      N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 1.49) 
      lib.notify({
        title = 'HULK ABILITIES',
        position = 'top',
        description = 'Superhuman Ability disabled',
        type = 'error'
    })
    end
end)


RegisterNetEvent("hulk:SuperJump")
AddEventHandler("hulk:SuperJump", function()
 SuperJump = not SuperJump
 if SuperJump then 
    lib.notify({
        title = 'HULK ABILITIES',
        position = 'top',
        description = 'SuperJump Enabled',
        type = 'success'
    })
 else
    lib.notify({
        title = 'HULK ABILITIES',
        position = 'top',
        description = 'SuperJump Disabled',
        type = 'error'
    })
    end
end)

RegisterNetEvent("hulk:FastRun")
AddEventHandler("hulk:FastRun", function()
FastRun = not FastRun
if FastRun then 
  SetPedMoveRateOverride(PlayerId(),30.0)
  SetRunSprintMultiplierForPlayer(PlayerId(),30.49)
  lib.notify({
    title = 'HULK ABILITIES',
    position = 'top',
    description = 'FastRun Enabled',
    type = 'success'
   })
else
  SetPedMoveRateOverride(PlayerId(),10.0)
  SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
  lib.notify({
    title = 'HULK ABILITIES',
    position = 'top',
    description = 'FastRun Disabled',
    type = 'error'
   })
   end
end)

RegisterNetEvent("hulk:FastSwim")
AddEventHandler("hulk:FastSwim", function()
FastSwim = not FastSwim
if FastSwim then 
  SetSwimMultiplierForPlayer(PlayerId(), 10.49)
  lib.notify({
    title = 'HULK ABILITIES',
    position = 'top',
    description = 'FastSwim Enabled',
    type = 'success'
   })
 else
  SetSwimMultiplierForPlayer(PlayerId(), 1.0)
  lib.notify({
    title = 'HULK ABILITIES',
    position = 'top',
    description = 'FastSwim Disabled',
    type = 'error'
   })
   end
end)

RegisterNetEvent("hulk:InfStamina")
AddEventHandler("hulk:InfStamina", function()
InfStamina = not InfStamina
if InfStamina then 
    lib.notify({
        title = 'HULK ABILITIES',
        position = 'top',
        description = 'Infinity Stamina Enabled',
        type = 'success'
    })
 else
    lib.notify({
        title = 'HULK ABILITIES',
        position = 'top',
        description = 'Infinity Stamina Disabled',
        type = 'error'
    })
   end
end)

Citizen.CreateThread(function()
    while true do
       Citizen.Wait(0)
       if SuperJump then
        SetSuperJumpThisFrame(PlayerId(), 1000)
       end

       if InfStamina then
        RestorePlayerStamina(source, 1.0)
       end
    end
end)