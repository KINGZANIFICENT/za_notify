RegisterNetEvent('za_notify:displaySubtitle')
AddEventHandler('za_notify:displaySubtitle', function(text, duration)
    SendNUIMessage({
        action = "displaySubtitle",
        text = text,
        duration = duration or 8000 
    })
end)

function onNPCInteract(npcId)
    local dialogue = "Hello, traveler! Welcome to our town."
    TriggerEvent('za_notify:displaySubtitle', dialogue, 8000)
end


RegisterCommand('testdialogue', function()
    TriggerEvent('za_notify:displaySubtitle', 'This is a test dialogue with sound!', 8000)
end, false)


function ShowSubtitle(text, duration)
    TriggerEvent('za_notify:displaySubtitle', text, duration)
end

-- Expose the function
exports('ShowSubtitle', ShowSubtitle)


