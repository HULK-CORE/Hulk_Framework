 ---NFC Transfer

Config = {}

Config.PhoneItem = 'phone' -- Item required to have to NFC transfer(Phone by default. Can be set to 'false' if phone requirement not desired.)

Config.TransferLimit = false -- Transfer limit? If not set to false. Other wise set to amount (i.e. 500000).

Strings = {
    ['nfc_transfer'] = "NFC Transfer",

    ['received_funds'] = "Money Received!",
    ['received_funds_desc'] = "You\'ve successfully received $%s from %s.",

    ['money_sent'] = "Money Sent!",
    ['money_sent_desc'] = "You\'ve successfully sent $%s to %s.",

    ['no_phone'] = "No Phone",
    ['no_phone_desc'] = "You must have a phone to do this!",
    ['error'] = "Error",
    ['amount'] = "Amount"
}

--NFC ------------------------- ENDS HERE


------------KILL CAM ---------- 

Config.NoEnemiesNearby = true;
Config.NearbyRange = 25;


Config.CamPedCooldown = -1;


Config.CamPedDuration = 2500;
Config.CamKillerDuration = 2250;
Config.TimeScale = 200;
Config.EffectEnable = true;
Config.SoundEnable = true;
Config.Effect = 'BulletTimeDark'
Config.LodTarget = true;
Config.CameraFov = 50;
Config.ChanceCamSwitch = 50;

------------KILL CAM  ENDS HERE---------- 

------------ ROLL DICE -------------

RollDice = {}

RollDice.UseCommand = true --Use command or not.
RollDice.ChatCommand = "roll" --Command name.
RollDice.ChatPrefix = "SYSTEM" --This is the chat prefix. If they type a wrong number or invalid one then it will say that SYSTEM has messaged them, just try it.
RollDice.ChatTemplate = "error" --YOU SHOULD CHANGE THIS HERE. I don't really know what chat themes you got so change it. We made our own ones, like error, warning, etc. You can find out what themes you got by checking inside the chat resource in index.css

RollDice.MaxDices = 2 -- Max amount of dices you can roll at one instance. Default is 2.
RollDice.MaxSides = 6 -- Max amount of sides on a dice. Default is 6.
RollDice.MaxDistance = 7.0 -- Distance players can see the rolldice in 3d text.
RollDice.ShowTime = 7 -- Time in seconds on how long the players can see the RollDice.
RollDice.Offset = 1.2 --Changes the z axis of the 3d text displayed.

------------ ROLL DICE  ENDS HERE-------------

---------- Carlock----------
Config.Locale = 'en'
Config.Price = 5000 -- amount of car locks replace at locksmith

---------- Carlock-----------ENDS HERE


-----------------BLIPS FOR FIVE M --------------

Config = {}
Config.Blips = {
    {
        name = "Test",
        blip = 36,
        color = 5,
        type = 4,
        shortRange = false,
        scale = 1.5,
        pos = {
            x = -760.0,
            y = 5590.59,
            z = 36.71
        }
    }
}


-------------- CUSTOM PEDS SPAWNER -----------------

Config = Config or {}
Config.Ped = {
    {
    coords = vector4(240.6330, -871.9554, 29.2924, 338.7031),
    hash = GetHashKey('mp_m_freemode_01'),
    data = '{"nose_3":0,"chest_3":0,"sex":0,"makeup_4":0,"eye_color":0,"bracelets_1":-1,"jaw_1":0,"blush_1":0,"eyebrows_6":0,"beard_2":10,"sun_2":0,"nose_4":0,"bags_1":0,"complexion_2":0,"chin_3":0,"nose_2":0,"bodyb_2":0,"shoes_2":0,"blemishes_2":0,"chest_1":0,"lipstick_3":0,"tshirt_2":1,"bags_2":0,"blush_3":0,"dad":0,"eyebrows_1":0,"mask_1":0,"arms_2":0,"chain_1":17,"nose_1":0,"eye_squint":0,"mask_2":0,"skin":0,"torso_1":446,"eyebrows_4":0,"bproof_2":0,"lip_thickness":0,"nose_6":0,"watches_1":-1,"lipstick_1":0,"bodyb_1":-1,"shoes_1":10,"bodyb_4":0,"hair_1":11,"moles_2":0,"hair_color_1":0,"makeup_1":0,"chain_2":2,"chest_2":0,"beard_3":0,"complexion_1":0,"skin_md_weight":50,"moles_1":0,"lipstick_4":0,"decals_1":0,"ears_2":0,"lipstick_2":0,"helmet_2":0,"blush_2":0,"age_2":0,"chin_1":0,"cheeks_1":0,"eyebrows_5":0,"hair_2":0,"mom":21,"beard_1":7,"ears_1":-1,"bodyb_3":-1,"jaw_2":0,"cheeks_3":0,"chin_13":0,"blemishes_1":0,"beard_4":1,"makeup_2":0,"glasses_1":5,"age_1":0,"bracelets_2":0,"face":0,"neck_thickness":0,"chin_4":0,"pants_1":147,"torso_2":0,"watches_2":0,"makeup_3":0,"glasses_2":2,"arms":4,"eyebrows_2":0,"tshirt_1":16,"nose_5":0,"bproof_1":0,"helmet_1":-1,"face_md_weight":50,"pants_2":4,"decals_2":0,"chin_2":0,"eyebrows_3":0,"hair_color_2":0,"cheeks_2":0,"sun_1":0}'
    }, 
    {
        coords = vector4(242.5126, -872.6793, 29.2922, 333.7398),
        hash = GetHashKey('mp_m_freemode_01'),
        data = '{"helmet_2":0,"moles_2":0,"makeup_2":0,"complexion_2":0,"helmet_1":-1,"chest_2":0,"torso_2":0,"age_2":0,"mask_1":9,"bags_1":0,"sex":0,"face":0,"chin_3":0,"eyebrows_1":0,"hair_color_1":27,"beard_1":7,"cheeks_2":0,"lipstick_4":0,"lip_thickness":0,"eyebrows_5":0,"hair_1":44,"chin_2":0,"skin_md_weight":50,"hair_color_2":0,"ears_1":-1,"tshirt_2":0,"makeup_4":0,"pants_2":4,"shoes_2":2,"watches_1":-1,"ears_2":0,"complexion_1":0,"chain_2":1,"eyebrows_4":0,"beard_3":26,"arms_2":0,"blush_1":0,"eyebrows_2":0,"nose_2":0,"eyebrows_3":0,"decals_2":0,"glasses_1":5,"shoes_1":3,"watches_2":0,"tshirt_1":15,"sun_2":0,"bodyb_4":0,"nose_4":0,"bracelets_2":0,"glasses_2":2,"chain_1":25,"lipstick_3":0,"neck_thickness":0,"chin_13":0,"jaw_1":0,"lipstick_1":0,"chin_4":0,"bproof_2":0,"makeup_1":0,"bodyb_3":-1,"blush_2":0,"bodyb_2":0,"nose_5":0,"beard_4":1,"skin":0,"jaw_2":0,"sun_1":0,"mask_2":0,"lipstick_2":0,"cheeks_3":0,"nose_1":0,"bodyb_1":-1,"eye_color":0,"bags_2":0,"hair_2":0,"eyebrows_6":0,"makeup_3":0,"nose_3":0,"moles_1":0,"chin_1":0,"chest_3":0,"dad":0,"blemishes_2":0,"blemishes_1":0,"bracelets_1":-1,"torso_1":426,"decals_1":0,"chest_1":0,"nose_6":0,"face_md_weight":50,"arms":1,"mom":21,"beard_2":10,"bproof_1":0,"blush_3":0,"cheeks_1":0,"age_1":0,"pants_1":113,"eye_squint":0}'
    },
    {
        coords = vector4(244.4662, -873.4156, 29.2922, 344.0554),
        hash = GetHashKey('mp_m_freemode_01'),
        data = '{"helmet_2":0,"moles_2":0,"makeup_2":0,"complexion_2":0,"helmet_1":-1,"chest_2":0,"torso_2":3,"age_2":0,"mask_1":0,"bags_1":0,"sex":0,"face":0,"chin_3":0,"eyebrows_1":0,"hair_color_1":0,"beard_1":16,"cheeks_2":0,"lipstick_4":0,"lip_thickness":0,"eyebrows_5":0,"hair_1":11,"chin_2":0,"skin_md_weight":50,"hair_color_2":0,"ears_1":-1,"tshirt_2":0,"makeup_4":0,"pants_2":8,"shoes_2":3,"watches_1":-1,"ears_2":0,"complexion_1":0,"chain_2":0,"eyebrows_4":0,"beard_3":0,"arms_2":0,"blush_1":0,"eyebrows_2":0,"nose_2":0,"eyebrows_3":0,"decals_2":0,"glasses_1":5,"shoes_1":31,"watches_2":0,"tshirt_1":70,"sun_2":0,"bodyb_4":0,"nose_4":0,"bracelets_2":0,"glasses_2":2,"chain_1":21,"lipstick_3":0,"neck_thickness":0,"chin_13":0,"jaw_1":0,"lipstick_1":0,"chin_4":0,"bproof_2":0,"makeup_1":0,"bodyb_3":-1,"blush_2":0,"bodyb_2":0,"nose_5":0,"beard_4":1,"skin":0,"jaw_2":0,"sun_1":0,"mask_2":0,"lipstick_2":0,"cheeks_3":0,"nose_1":0,"bodyb_1":-1,"eye_color":0,"bags_2":0,"hair_2":0,"eyebrows_6":0,"makeup_3":0,"nose_3":0,"moles_1":0,"chin_1":0,"chest_3":0,"dad":0,"blemishes_2":0,"blemishes_1":0,"bracelets_1":-1,"torso_1":121,"decals_1":0,"chest_1":0,"nose_6":0,"face_md_weight":50,"arms":4,"mom":21,"beard_2":10,"bproof_1":0,"blush_3":0,"cheeks_1":0,"age_1":0,"pants_1":59,"eye_squint":0}'
    },
}



-------------------------------------------------------
-- IMPORTANT: Some of these values MUST be defined as a floating point number. ie. 10.0 instead of 10
----REALISTIC VEHICLE FAILURE ------------
cfg = {
	deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch. Visual damage does not sync well to other players.
	deformationExponent = 1.0,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	collisionDamageExponent = 1.0,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.

	damageFactorEngine = 1.0,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorBody = 1.0,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
	damageFactorPetrolTank = 30.0,				-- Sane values are 1 to 200. Higher values means more damage to vehicle. A good starting point is 64
	engineDamageExponent = 1.0,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
	weaponsDamageMultiplier = 10.0,				-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
	degradingHealthSpeedFactor = 0.5,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
	cascadingFailureSpeedFactor = 1.5,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8

	degradingFailureThreshold = 650.0,			-- Below this value, slow health degradation will set in
	cascadingFailureThreshold = 400.0,			-- Below this value, health cascading failure will set in
	engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.

	torqueMultiplierEnabled = true,				-- Decrease engine torque as engine gets more and more damaged

	limpMode = true,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
	limpModeMultiplier = 0.05,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25

	preventVehicleFlip = false,					-- If true, you can't turn over an upside down vehicle

	sundayDriver = false,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
	sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
	sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers

	displayBlips = false,						-- Show blips for mechanics locations

	compatibilityMode = false,					-- prevents other scripts from modifying the fuel tank health to avoid random engine failure with BVA 2.01 (Downside is it disabled explosion prevention)

	randomTireBurstInterval = 0,				-- Number of minutes (statistically, not precisely) to drive above 22 mph before you get a tire puncture. 0=feature is disabled


	-- Class Damagefactor Multiplier
	-- The damageFactor for engine, body and Petroltank will be multiplied by this value, depending on vehicle class
	-- Use it to increase or decrease damage for each class

	classDamageMultiplier = {
		[0] = 	1.0,		--	0: Compacts
				1.0,		--	1: Sedans
				1.0,		--	2: SUVs
				1.0,		--	3: Coupes
				1.0,		--	4: Muscle
				1.0,		--	5: Sports Classics
				1.0,		--	6: Sports
				1.0,		--	7: Super
				0.25,		--	8: Motorcycles
				0.7,		--	9: Off-road
				0.25,		--	10: Industrial
				1.0,		--	11: Utility
				1.0,		--	12: Vans
				1.0,		--	13: Cycles
				0.5,		--	14: Boats
				1.0,		--	15: Helicopters
				1.0,		--	16: Planes
				1.0,		--	17: Service
				0.75,		--	18: Emergency
				0.75,		--	19: Military
				1.0,		--	20: Commercial
				1.0			--	21: Trains
	}
}


	-- Alternate configuration values provided by ImDylan93 - Vehicles can take more damage before failure, and the balance between vehicles has been tweaked.
	-- To use: comment out the settings above, and uncomment this section.

-- cfg = {
--
-- 	deformationMultiplier = -1,					-- How much should the vehicle visually deform from a collision. Range 0.0 to 10.0 Where 0.0 is no deformation and 10.0 is 10x deformation. -1 = Don't touch
-- 	deformationExponent = 1.0,					-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
-- 	collisionDamageExponent = 1.0,				-- How much should the handling file deformation setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
--
-- 	damageFactorEngine = 5.1,					-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
-- 	damageFactorBody = 5.1,						-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 10
-- 	damageFactorPetrolTank = 61.0,				-- Sane values are 1 to 100. Higher values means more damage to vehicle. A good starting point is 64
-- 	engineDamageExponent = 1.0,					-- How much should the handling file engine damage setting be compressed toward 1.0. (Make cars more similar). A value of 1=no change. Lower values will compress more, values above 1 it will expand. Dont set to zero or negative.
-- 	weaponsDamageMultiplier = 0.124,			-- How much damage should the vehicle get from weapons fire. Range 0.0 to 10.0, where 0.0 is no damage and 10.0 is 10x damage. -1 = don't touch
-- 	degradingHealthSpeedFactor = 7.4,			-- Speed of slowly degrading health, but not failure. Value of 10 means that it will take about 0.25 second per health point, so degradation from 800 to 305 will take about 2 minutes of clean driving. Higher values means faster degradation
-- 	cascadingFailureSpeedFactor = 1.5,			-- Sane values are 1 to 100. When vehicle health drops below a certain point, cascading failure sets in, and the health drops rapidly until the vehicle dies. Higher values means faster failure. A good starting point is 8
--
-- 	degradingFailureThreshold = 677.0,			-- Below this value, slow health degradation will set in
-- 	cascadingFailureThreshold = 310.0,			-- Below this value, health cascading failure will set in
-- 	engineSafeGuard = 100.0,					-- Final failure value. Set it too high, and the vehicle won't smoke when disabled. Set too low, and the car will catch fire from a single bullet to the engine. At health 100 a typical car can take 3-4 bullets to the engine before catching fire.
--
-- 	torqueMultiplierEnabled = true,				-- Decrease engine torge as engine gets more and more damaged
--
-- 	limpMode = false,							-- If true, the engine never fails completely, so you will always be able to get to a mechanic unless you flip your vehicle and preventVehicleFlip is set to true
-- 	limpModeMultiplier = 0.15,					-- The torque multiplier to use when vehicle is limping. Sane values are 0.05 to 0.25
--
-- 	preventVehicleFlip = true,					-- If true, you can't turn over an upside down vehicle
--
-- 	sundayDriver = true,						-- If true, the accelerator response is scaled to enable easy slow driving. Will not prevent full throttle. Does not work with binary accelerators like a keyboard. Set to false to disable. The included stop-without-reversing and brake-light-hold feature does also work for keyboards.
-- 	sundayDriverAcceleratorCurve = 7.5,			-- The response curve to apply to the accelerator. Range 0.0 to 10.0. Higher values enables easier slow driving, meaning more pressure on the throttle is required to accelerate forward. Does nothing for keyboard drivers
-- 	sundayDriverBrakeCurve = 5.0,				-- The response curve to apply to the Brake. Range 0.0 to 10.0. Higher values enables easier braking, meaning more pressure on the throttle is required to brake hard. Does nothing for keyboard drivers
--
-- 	displayBlips = true,						-- Show blips for mechanics locations
--
-- 	classDamageMultiplier = {
-- 		[0] = 	1.0,		--	0: Compacts
-- 				1.0,		--	1: Sedans
-- 				1.0,		--	2: SUVs
-- 				0.95,		--	3: Coupes
-- 				1.0,		--	4: Muscle
-- 				0.95,		--	5: Sports Classics
-- 				0.95,		--	6: Sports
-- 				0.95,		--	7: Super
-- 				0.27,		--	8: Motorcycles
-- 				0.7,		--	9: Off-road
-- 				0.25,		--	10: Industrial
-- 				0.35,		--	11: Utility
-- 				0.85,		--	12: Vans
-- 				1.0,		--	13: Cycles
-- 				0.4,		--	14: Boats
-- 				0.7,		--	15: Helicopters
-- 				0.7,		--	16: Planes
-- 				0.75,		--	17: Service
-- 				0.85,		--	18: Emergency
-- 				0.67,		--	19: Military
-- 				0.43,		--	20: Commercial
-- 				1.0			--	21: Trains
-- 	}
-- }







-- End of Main Configuration

-- Configure Repair system

-- id=446 for wrench icon, id=72 for spraycan icon

repairCfg = {
	mechanics = {
		""
	},

	fixMessages = {
		"You put the oil plug back in",
		"You stopped the oil leak using chewing gum",
		"You repaired the oil tube with gaffer tape",
		"You tightened the oil pan screw and stopped the dripping",
		"You kicked the engine and it magically came back to life",
		"You removed some rust from the spark tube",
		"You yelled at your vehicle, and it somehow had an effect"
	},
	fixMessageCount = 7,

	noFixMessages = {
		"You checked the oil plug. It's still there",
		"You looked at your engine, it seemed fine",
		"You made sure that the gaffer tape was still holding the engine together",
		"You turned up the radio volume. It just drowned out the weird engine noises",
		"You added rust-preventer to the spark tube. It made no difference",
		"Never fix something that ain't broken they said. You didn't listen. At least it didn't get worse"
	},
	noFixMessageCount = 6
}


RepairEveryoneWhitelisted = true
RepairWhitelist =
{
	"steam:123456789012345",
	"steam:000000000000000",
	"ip:192.168.0.1"			-- not sure if ip whitelist works?
}


---------REALISTIC VEHICLE FAILURE ENDS HERE



---------------NATIVE PEDS SPAWNER--------------------

Config = {}

Config.displayText = false -- Whether you want the heading text to show or not
Config.displayDistance = 20.0 -- From how far to start displaying text
Config.displayColor = "~g~"

Config.Peds = {
    -- { x, y, z, ped heading, model hash, ped model, heading text, animation info }
    {-56.800365447998, -785.83428955078, 43.227298736572, 500.77, 0xC99F21C4,"mp_m_freemode_01", "Business Man", "mini@strip_club@idles@bouncer@base"}
}

-------------------------------