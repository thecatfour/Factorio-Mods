data:extend({
    {
        type = "recipe",
        name = "worm-crafting-machine",
        enabled = false,
        energy_required = 10,
        ingredients =
        {
            {"water-barrel",10},
            {"iron-plate",20},
            {"steel-plate",5}
        },
        result = "worm-crafting-machine"
    },
    {
        type = "recipe",
        name = "fish-breeding",
        main_product = "raw-fish",
        category = "worm-crafting",
        enabled = false,
        energy_required = 30,
        always_show_products = true,
        ingredients =
        {
            {"raw-fish",20}
        },
        results =
        {
            {
                type = "item",
                name = "raw-fish",
                amount_min = 10,
                amount_max = 40
            }
        }

    }
})