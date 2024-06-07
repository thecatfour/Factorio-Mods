data:extend({
    {
        --Unlocks worm crafting machine
        type = "technology",
        name = "worm-crafting-machine",
        icon_size = 128,
        icon = "__Ally-Worms__/graphics/technology/worm-crafting-machine.png",
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "worm-crafting-machine"
            },
            {
                type = "unlock-recipe",
                recipe = "fish-breeding"
            }
        },
        prerequisites = {"fluid-handling"},
        unit = 
        {
            count = 50,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1}
            },
            time = 60
        },
    },
})