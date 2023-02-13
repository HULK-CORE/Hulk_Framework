
Citizen.CreateThread(function()
	while true do
		Wait(0)

		local ped = GetPlayerPed(-1)
		local SeparateDamage = true

		SetPedMinGroundTimeForStungun(ped, 4000)
		SetPlayerVehicleDamageModifier(ped, 0.05)

		SetAiMeleeWeaponDamageModifier(0.2)
		SetPlayerMeleeWeaponDamageModifier(ped, 0.2)
		SetPlayerWeaponDamageModifier(ped, 0.3)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.2) 
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PISTOL"), 0.3)
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPISTOL"), 0.3)	
		N_0x4757f00bc6323cfe(GetHashKey("weapon_assaultrifle_mk2"), 0.3)  
        N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SPECIALCARBINE_MK2"), 0.3)   		
        
		
		if SeperateDamage == true then
			SetPlayerMeleeWeaponDamageModifier(ped, 0.0002)
			SetPlayerWeaponDamageModifier(ped, 0.3)
		end
	end
end)