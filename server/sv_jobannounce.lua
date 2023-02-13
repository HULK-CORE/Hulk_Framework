ESX = exports["es_extended"]:getSharedObject()

RegisterServerEvent('ajob:verifjob')
AddEventHandler('ajob:verifjob', function(text)
    local xPlayer = ESX.GetPlayerFromId(source)
    local jobP = xPlayer.job.name

    local jobC = {
        {nameJ = 'police', labelJ = 'Thamizhan Police Department (TPD)', positionJ = 'top', durationJ = 6000, bgcolor = '#4B26D3', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        {nameJ = 'ambulance', labelJ = 'Thamizhan Medicos', positionJ = 'top', durationJ = 6000, bgcolor = '#0193F8', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        {nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top', durationJ = 6000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        --{nameJ = 'mechanic', labelJ = 'LS CUSTOM', positionJ = 'top-right', durationJ = 5000, bgcolor = '#FF8300', txtcolor = '#FFFFFF', iconJ = 'circle-info', iconcolorJ = '#FFFFFF'},
        
    }
   


    for s = 1,#jobC,1 do
        if jobP == jobC[s].nameJ then
            local title = jobC[s].labelJ
            local pos = jobC[s].positionJ
            local timer = jobC[s].durationJ
            local bgc = jobC[s].bgcolor
            local ctxt = jobC[s].txtcolor
            local icont = jobC[s].iconJ
            local iconc = jobC[s].iconcolorJ
            TriggerClientEvent('ajob:allannonce', -1, text, title, pos, timer, bgc, ctxt, icont, iconc)
        end
    end
end)