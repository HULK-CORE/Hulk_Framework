local spawned = {}
local printer_props = {}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        local pos = GetEntityCoords(PlayerPedId())
        for k, v in ipairs(Config.Ped) do
            if #(pos - vector3(v.coords.x, v.coords.y, v.coords.z)) <= 50.0 then
                if printer_props[k] == nil or not DoesEntityExist(printer_props[k]) then
                    printer_props[k] = SpawnPrinter(k)
                end
            else
                if printer_props[k] ~= nil and DoesEntityExist(printer_props[k]) then
                    DeleteEntity(printer_props[k])
                end
            end
        end
    end
end)

function SpawnPrinter(i)
    local hash = Config.Ped[i].hash or `mp_m_freemode_01`
    RequestModel(hash)
    while not HasModelLoaded(hash) do
        Wait(1)
    end
    spawned[i] = CreatePed(3, hash, Config.Ped[i].coords, false, true)
    local model = spawned[i]
    TaskStartScenarioInPlace(model, "WORLD_HUMAN_COP_IDLES", 0, true) ----- ANIMATION OF THE PED
    FreezeEntityPosition(model, true)
    SetEntityInvincible(model, true)
    SetBlockingOfNonTemporaryEvents(model, true)
    local data = json.decode(Config.Ped[i].data)
    TriggerEvent("ps-hugs:loadSkin2", model, data)
    return spawned[i]
end

function LoadAnim(ad)
    while not HasAnimDictLoaded(ad) do
        RequestAnimDict(ad)
        Wait(1)
    end
end

function GetClosestHug(coords)
    local coords = coords
    for i=1,#spawned do 
        local ecoords = GetEntityCoords(spawned[i])
        local dist = #(coords-ecoords)
        if dist < 2 then
            return spawned[i]
        end
    end
end

RegisterNetEvent('ps-hugs:client:hug', function(coords)
    local model = GetClosestHug(coords)
    TaskPlayAnim(model, "mp_ped_interaction", "kisses_guy_a", 8.00, -8.00, 5000, 51, 0.00, 0, 0, 0)
end)

RegisterNetEvent('ps-hugs:client:idle', function(coords)
    local model = GetClosestHug(coords)
    TaskPlayAnim(model, "amb@world_human_aa_smoke@male@idle_a", "idle_c", 8.00, -8.00, -1, 51, 0.00, 0, 0, 0)
end)

CreateThread(function()
    local alreadyEnteredZone = false
    local text = ' <b>[E] </b> Hug'
    while true do
        Wait(3)
        local ped = PlayerPedId()
        local inZone = false
        local coords = GetEntityCoords(ped)
        local model = GetClosestHug(coords)
        local spawn = GetEntityCoords(model)
        local ehead = GetEntityHeading(model)
        local dist = #(coords-vector3(spawn.x,spawn.y,spawn.z))
        if dist <= 1.5 then
            inZone = true
            if IsControlJustReleased(0, 38) then
                LoadAnim("mp_ped_interaction")
                local newcoords = GetEntityForwardVector(model) * 0.4 + vector3(spawn.x,spawn.y,spawn.z-1)
                SetEntityCoords(ped, newcoords)
                SetEntityHeading(ped, ehead-180)
                FreezeEntityPosition(ped, true)
                TaskPlayAnim(ped, "mp_ped_interaction", "handshake_guy_a", 8.00, -8.00, 5000, 51, 0.00, 0, 0, 0)
                TaskPlayAnim(model, "mp_ped_interaction", "handshake_guy_a", 8.00, -8.00, 5000, 51, 0.00, 0, 0, 0)
                TriggerServerEvent('hud:server:RelieveStress', 100) -- stress from hud
                TriggerServerEvent("ps-hugs:server:hug",spawn)
                Wait(5000)
                FreezeEntityPosition(ped, false)
                TriggerServerEvent("ps-hugs:server:idle",spawn)
            end
        else
            Wait(5000)
        end

        if inZone and not alreadyEnteredZone then
            alreadyEnteredZone = true
            TriggerEvent('cd_drawtextui:ShowUI', 'show', text)
        end

        if not inZone and alreadyEnteredZone then
            alreadyEnteredZone = false
            TriggerEvent('cd_drawtextui:HideUI')
        end
    end
end)

RegisterNetEvent('ps-hugs:loadSkin2')
AddEventHandler('ps-hugs:loadSkin2', function(multipedID, skin)
    local MultiPed = {}

    for k,v in pairs(skin) do
        MultiPed[k] = v
    end

    SetPedHeadBlendData            (multipedID, MultiPed['face'], MultiPed['face'], MultiPed['face'], MultiPed['skin'], MultiPed['skin'], MultiPed['skin'], 1.0, 1.0, 1.0, true)

    SetPedHairColor                (multipedID,            MultiPed['hair_color_1'],        MultiPed['hair_color_2'])                    -- Hair Color
    SetPedHeadOverlay            (multipedID, 3,        MultiPed['age_1'],                (MultiPed['age_2'] / 10) + 0.0)            -- Age + opacity
    SetPedHeadOverlay            (multipedID, 1,        MultiPed['beard_1'],            (MultiPed['beard_2'] / 10) + 0.0)            -- Beard + opacity
    SetPedEyeColor                (multipedID,            MultiPed['eye_color'], 0, 1)                                                -- Eyes color
    SetPedHeadOverlay            (multipedID, 2,        MultiPed['eyebrows_1'],        (MultiPed['eyebrows_2'] / 10) + 0.0)        -- Eyebrows + opacity
    SetPedHeadOverlay            (multipedID, 4,        MultiPed['makeup_1'],            (MultiPed['makeup_2'] / 10) + 0.0)            -- Makeup + opacity
    SetPedHeadOverlay            (multipedID, 8,        MultiPed['lipstick_1'],        (MultiPed['lipstick_2'] / 10) + 0.0)        -- Lipstick + opacity
    SetPedComponentVariation    (multipedID, 2,        MultiPed['hair_1'],            MultiPed['hair_2'], 2)                        -- Hair
    SetPedHeadOverlayColor        (multipedID, 1, 1,    MultiPed['beard_3'],            MultiPed['beard_4'])                        -- Beard Color
    SetPedHeadOverlayColor        (multipedID, 2, 1,    MultiPed['eyebrows_3'],        MultiPed['eyebrows_4'])                    -- Eyebrows Color
    SetPedHeadOverlayColor        (multipedID, 4, 1,    MultiPed['makeup_3'],            MultiPed['makeup_4'])                        -- Makeup Color
    SetPedHeadOverlayColor        (multipedID, 8, 1,    MultiPed['lipstick_3'],        MultiPed['lipstick_4'])                    -- Lipstick Color
    SetPedHeadOverlay            (multipedID, 5,        MultiPed['blush_1'],            (MultiPed['blush_2'] / 10) + 0.0)            -- Blush + opacity
    SetPedHeadOverlayColor        (multipedID, 5, 2,    MultiPed['blush_3'])                                                        -- Blush Color
    SetPedHeadOverlay            (multipedID, 9,        MultiPed['moles_1'],            (MultiPed['moles_2'] / 10) + 0.0)            -- Moles/Freckles + opacity
    SetPedHeadOverlay            (multipedID, 10,        MultiPed['chest_1'],            (MultiPed['chest_2'] / 10) + 0.0)            -- Chest Hair + opacity
    SetPedHeadOverlayColor        (multipedID, 10, 1,    MultiPed['chest_3'])                                                        -- Torso Color

    if MultiPed['ears_1'] == -1 then
        ClearPedProp(multipedID, 2)
    else
        SetPedPropIndex            (multipedID, 2,        MultiPed['ears_1'],            MultiPed['ears_2'], 2)                        -- Ears Accessories
    end

    SetPedComponentVariation    (multipedID, 8,        MultiPed['tshirt_1'],            MultiPed['tshirt_2'], 2)                    -- Tshirt
    SetPedComponentVariation    (multipedID, 11,        MultiPed['torso_1'],            MultiPed['torso_2'], 2)                    -- torso parts
    SetPedComponentVariation    (multipedID, 3,        MultiPed['arms'],                MultiPed['arms_2'], 2)                        -- Amrs
    SetPedComponentVariation    (multipedID, 10,        MultiPed['decals_1'],            MultiPed['decals_2'], 2)                    -- decals
    SetPedComponentVariation    (multipedID, 4,        MultiPed['pants_1'],            MultiPed['pants_2'], 2)                    -- pants
    SetPedComponentVariation    (multipedID, 6,        MultiPed['shoes_1'],            MultiPed['shoes_2'], 2)                    -- shoes
    SetPedComponentVariation    (multipedID, 1,        MultiPed['mask_1'],            MultiPed['mask_2'], 2)                        -- mask
    SetPedComponentVariation    (multipedID, 9,        MultiPed['bproof_1'],            MultiPed['bproof_2'], 2)                    -- bulletproof
    SetPedComponentVariation    (multipedID, 7,        MultiPed['chain_1'],            MultiPed['chain_2'], 2)                    -- chain
    SetPedComponentVariation    (multipedID, 5,        MultiPed['bags_1'],            MultiPed['bags_2'], 2)                        -- Bag

    if MultiPed['helmet_1'] == -1 then
        ClearPedProp(multipedID, 0)
    else
        SetPedPropIndex            (multipedID, 0,        MultiPed['helmet_1'],            MultiPed['helmet_2'], 2)                    -- Helmet
    end

    if MultiPed['glasses_1'] == -1 then
        ClearPedProp(multipedID, 1)
    else
        SetPedPropIndex            (multipedID, 1,        MultiPed['glasses_1'],            MultiPed['glasses_2'], 2)                    -- Glasses
    end

    if MultiPed['watches_1'] == -1 then
        ClearPedProp(multipedID, 6)
    else
        SetPedPropIndex            (multipedID, 6,        MultiPed['watches_1'],            MultiPed['watches_2'], 2)                    -- Watches
    end

    if MultiPed['bracelets_1'] == -1 then
        ClearPedProp(multipedID,    7)
    else
        SetPedPropIndex            (multipedID, 7,        MultiPed['bracelets_1'],        MultiPed['bracelets_2'], 2)                -- Bracelets
    end

    SetPedFaceFeature(multipedID, 0, MultiPed['nose_width'])
    SetPedFaceFeature(multipedID, 1, MultiPed['nose_peak_hight']) 
    SetPedFaceFeature(multipedID, 2, MultiPed['nose_peak_lenght'])
    SetPedFaceFeature(multipedID, 3, MultiPed['nose_bone_high']) 
    SetPedFaceFeature(multipedID, 4, MultiPed['nose_peak_lowering'])
    SetPedFaceFeature(multipedID, 5, MultiPed['nose_bone_twist'])  
    SetPedFaceFeature(multipedID, 6, MultiPed['eyebrown_high']) 
    SetPedFaceFeature(multipedID, 7, MultiPed['eyebrown_forward'])
    SetPedFaceFeature(multipedID, 8, MultiPed['cheeks_bone_high']) 
    SetPedFaceFeature(multipedID, 9, MultiPed['cheeks_bone_width'])
    SetPedFaceFeature(multipedID, 10, MultiPed['cheeks_width'])
    SetPedFaceFeature(multipedID, 11, MultiPed['eyes_openning'])  
    SetPedFaceFeature(multipedID, 12, MultiPed['lips_thickness'])
    SetPedFaceFeature(multipedID, 13, MultiPed['jaw_bone_width'])
    SetPedFaceFeature(multipedID, 14, MultiPed['jaw_bone_back_lenght']) 

    SetPedFaceFeature(multipedID, 15, MultiPed['chimp_bone_lowering']) 
    SetPedFaceFeature(multipedID, 16, MultiPed['chimp_bone_lenght']) 
    SetPedFaceFeature(multipedID, 17, MultiPed['chimp_bone_width']) 
    SetPedFaceFeature(multipedID, 18, MultiPed['chimp_hole']) 
    SetPedFaceFeature(multipedID, 19, MultiPed['neck_thikness'])
    MultiPed = nil
end)