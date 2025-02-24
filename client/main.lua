-- Register an event to display subtitles
RegisterNetEvent('za_notify:displaySubtitle')
AddEventHandler('za_notify:displaySubtitle', function(text, duration)
    SendNUIMessage({
        action = "displaySubtitle",
        text = text,
        duration = duration or 8000  -- default duration is 8000ms
    })
end)

-- Example function to trigger dialogue after an NPC interaction
function onNPCInteract(npcId)
    local dialogue = "Hello, traveler! Welcome to our town."
    TriggerEvent('za_notify:displaySubtitle', dialogue, 8000)
end

-- This is just an example trigger. Integrate this into your actual NPC interaction logic.

RegisterCommand('testdialogue', function()
    TriggerEvent('za_notify:displaySubtitle', 'This is a test dialogue with sound!', 8000)
end, false)


function ShowSubtitle(text, duration)
    TriggerEvent('za_notify:displaySubtitle', text, duration)
end

-- Expose the function
exports('ShowSubtitle', ShowSubtitle)


