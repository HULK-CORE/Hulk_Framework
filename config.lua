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


