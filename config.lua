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

-------------FREE CAR  ESX------------


Config.Locations = {
    ClaimCoords = vector3(-38.770076751709,-1115.8049316406,26.436542510986),
    SpawnCoords = vector4(-79.366523742676,-1104.2241210938,26.072908401489, 74.13)
}

Config.Vehicle = {
    type = "car",
    model = "t20"
}

Config.DiscordWebhook = ""

------------FREE CAR  ESX ENDS HERE------------


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

---------- Carlock----------ENDS HERE