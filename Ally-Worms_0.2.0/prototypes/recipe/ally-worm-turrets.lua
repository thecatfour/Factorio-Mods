data:extend(
    {
        {
            --Small Worms
            type = "recipe",
            name = "ally-small-worm",
            category = "worm-crafting",
            enabled = false,
            energy_required = 2.5,
            ingredients = 
            {
                {"raw-fish",15}
            },
            result = "ally-small-worm"
        },
        {
            --Medium Worms
            type = "recipe",
            name = "ally-medium-worm",
            category = "worm-crafting",
            enabled = false,
            energy_required = 5,
            ingredients = 
            {
                {"raw-fish",20},
                {"firearm-magazine",10},
                {"grenade",2},
                {"ally-small-worm",1}
            },
            result = "ally-medium-worm"
        },
        {
            --Big Worms
            type = "recipe",
            name = "ally-big-worm",
            category = "worm-crafting",
            enabled = false,
            energy_required = 10,
            ingredients = 
            {
                {"raw-fish",30},
                {"piercing-rounds-magazine",10},
                {"grenade",3},
                {"ally-medium-worm",1}
            },
            result = "ally-big-worm"
        },
        {
            --Behemoth Worms
            type = "recipe",
            name = "ally-behemoth-worm",
            category = "worm-crafting",
            enabled = false,
            energy_required = 30,
            ingredients = 
            {
                {"raw-fish",40},
                {"piercing-rounds-magazine",10},
                {"grenade",4},
                {"ally-big-worm",1}
            },
            result = "ally-behemoth-worm"
        },
    }
)