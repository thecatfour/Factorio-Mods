function on_init(event)
    global.repairingWalls = {}
    global.healAmount = settings.startup["regen-wall-b-regen-rate"].value
    global.maxHealth = settings.startup["regen-wall-a-health"].value
end

script.on_init(on_init)

function addToRepairingWalls(entity)
    if(entity.health<global.maxHealth) then
        if(global.repairingWalls[entity.unit_number] == nil) then
            global.repairingWalls[entity.unit_number] = entity
        end
    end
end

function repairWalls(event)

    if(game.tick % 60 == 0) then

        if(global.repairingWalls) then

            local healingWall

            for index,repairingWallsEntry in pairs(global.repairingWalls) do
                
                healingWall = repairingWallsEntry
                
                if((healingWall.valid) and (healingWall.health<global.maxHealth)) then                   
                    healingWall.health = healingWall.health + global.healAmount
                else
                    global.repairingWalls[index] = nil
                end
            end

            healingWall = nil

        end
    end
end


script.on_event(defines.events.on_entity_damaged, function(event) addToRepairingWalls(event.entity) end, {{filter = "name", name = "regen-wall"}})
script.on_event(defines.events.on_built_entity, function(event) addToRepairingWalls(event.created_entity) end, {{filter = "name", name = "regen-wall"}})
script.on_event(defines.events.on_robot_built_entity, function(event) addToRepairingWalls(event.created_entity) end, {{filter = "name", name = "regen-wall"}})
script.on_event(defines.events.on_entity_cloned, function(event) addToRepairingWalls(event.destination) end, {{filter = "name", name = "regen-wall"}})

script.on_event(defines.events.on_tick, repairWalls)