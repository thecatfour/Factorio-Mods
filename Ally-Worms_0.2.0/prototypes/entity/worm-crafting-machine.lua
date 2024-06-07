data:extend({
    {
        type = "recipe-category",
        name = "worm-crafting"
    }
})

data:extend({
    {
        type = "assembling-machine",
        name = "worm-crafting-machine",
        icon = "__Ally-Worms__/graphics/icons/worm-crafting-machine.png",
        icon_size = 64, icon_mipmaps = 2,
        flags = {"placeable-neutral","placeable-player","player-creation"},
        minable = {mining_time = 1, result = "worm-crafting-machine"},
        max_health = 500,
        dying_explosion = "medium-explosion",
        collision_box = {{-2.25,-2.25},{2.25,2.25}},
        selection_box = {{-2.5,-2.5},{2.5,2.5}},
        fast_replaceable_group = "assembling-machine",
        crafting_categories = {"worm-crafting"},
        animation =
        {
            filename = "__Ally-Worms__/graphics/entity/buildings/worm-crafting-machine.png",
            width = 130,
            height = 130,
            scale = 1.5,
            frame_count = 24,
            line_length = 1
        },
        working_sound = { filename = "__base__/sound/creatures/spawner.ogg", volume = 0.5},
        crafting_speed=0.5,
        energy_usage = "500kW",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = -1,
            drain = "0kW"
        },


    }
})