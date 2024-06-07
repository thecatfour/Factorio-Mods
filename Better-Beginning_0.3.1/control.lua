function initializeStartingEquipment(event)

    global.PlayerWithEquipment = {}

    for index,player in pairs(game.players) do
        if player and player.connected then
            giveStartingEquipment(player)
        end
    end
end

function playerCheck(event)
    giveStartingEquipment(game.get_player(event.player_index))
end

function giveStartingEquipment(player)

    if(global.PlayerWithEquipment[player.index]) then
        --attempted to give player extra starting equipment
        return
    elseif(player.controller_type ~= defines.controllers.character) then
        --attempted to give non character starting equipment
        return
    end

    playerInventory = player.character.get_inventory(defines.inventory.character_main)
    
    playerInventory.insert({name = "starter-armor"})

    local starterArmor = playerInventory.find_item_stack("starter-armor")

    starterArmor.grid.put({name = "starter-reactor-equipment"})
    starterArmor.grid.put({name = "starter-exoskeleton-equipment"})
    starterArmor.grid.put({name = "starter-roboport-equipment"})

    if(settings.startup["starter-night-vision-strength"].value ~= "None") then
        starterArmor.grid.put({name = "starter-night-vision-equipment"})
    end

    if(settings.startup["starter-laser-strength"].value ~= "None") then
        starterArmor.grid.put({name = "starter-laser-defense-equipment"})
    end

    if(settings.startup["starter-shield-strength"].value ~= "None") then
        starterArmor.grid.put({name = "starter-energy-shield-equipment"})
    end

    starterArmor.grid.put({name = "belt-immunity-equipment"})

    playerInventory.insert{name = "starter-construction-robot", count = settings.startup["starter-robot-amount"].value}

    global.PlayerWithEquipment[player.index] = true
    
end

script.on_init(initializeStartingEquipment)

script.on_event(defines.events.on_player_joined_game, playerCheck)
script.on_event(defines.events.on_player_created, playerCheck)
script.on_event(defines.events.on_cutscene_cancelled, playerCheck)
