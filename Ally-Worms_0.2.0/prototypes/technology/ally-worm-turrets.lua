data:extend(

    {
        {
            --Unlocks ally small worm
            type = "technology",
            name = "ally-small-worm",
            icon_size = 128,
            icon = "__Ally-Worms__/graphics/technology/ally-small-worm.png",
            effects = 
            {
                {
                    type = "unlock-recipe",
                    recipe = "ally-small-worm"
                },
            },
            prerequisites = {"military-2","worm-crafting-machine"},
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
        {
            --Unlocks ally medium worm
            type = "technology",
            name = "ally-medium-worm",
            icon_size = 128,
            icon = "__Ally-Worms__/graphics/technology/ally-medium-worm.png",
            effects = 
            {
                {
                    type = "unlock-recipe",
                    recipe = "ally-medium-worm"
                }
            },
            prerequisites = {"military-3","ally-small-worm"},
            unit =
            {
                count = 100,
                ingredients =
                {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                    {"chemical-science-pack",1},
                    {"military-science-pack",1}
                },
                time = 60

            },

        },

        {
            --Unlocks ally big worm
            type = "technology",
            name = "ally-big-worm",
            icon_size = 128,
            icon = "__Ally-Worms__/graphics/technology/ally-big-worm.png",
            effects = 
            {
                {
                    type = "unlock-recipe",
                    recipe = "ally-big-worm"
                }
            },
            prerequisites = {"military-4","ally-medium-worm"},
            unit =
            {
                count = 150,
                ingredients =
                {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                    {"chemical-science-pack",1},
                    {"military-science-pack",1},
                    {"utility-science-pack",1}
                },
                time = 60

            },

        },
        {
            --Unlocks ally behemoth worm
            type = "technology",
            name = "ally-behemoth-worm",
            icon_size = 128,
            icon = "__Ally-Worms__/graphics/technology/ally-behemoth-worm.png",
            effects = 
            {
                {
                    type = "unlock-recipe",
                    recipe = "ally-behemoth-worm"
                }
            },
            prerequisites = {"production-science-pack","ally-big-worm"},
            unit =
            {
                count = 300,
                ingredients =
                {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                    {"chemical-science-pack",1},
                    {"military-science-pack",1},
                    {"production-science-pack",1},
                    {"utility-science-pack",1}
                },
                time = 60

            },

        },
        {
            type = "technology",
            name = "ally-worm-damage-1",
            upgrade = true,
            icon_size = 256,
            icon = "__Ally-Worms__/graphics/technology/ally-worm-damage.png",
            effects =
            {
                {
                    type = "turret-attack",
                    turret_id = "ally-small-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-medium-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-big-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-behemoth-worm",
                    modifier = 0.2
                }
            },
            prerequisites = {"ally-small-worm"},
            unit =
            {
                count = 100,
                ingredients =
                {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack",1 }
                },
                time = 60
            }

        },
        {
            type = "technology",
            name = "ally-worm-damage-2",
            upgrade = true,
            icon_size = 256,
            icon = "__Ally-Worms__/graphics/technology/ally-worm-damage.png",
            effects =
            {
                {
                    type = "turret-attack",
                    turret_id = "ally-small-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-medium-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-big-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-behemoth-worm",
                    modifier = 0.2
                },
            },
            prerequisites = {"ally-medium-worm","ally-worm-damage-1"},
            unit =
            {
                count = 150,
                ingredients =
                {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                    {"chemical-science-pack",1},
                    {"military-science-pack",1}
                },
                time = 60
            }

        },
        {
            type = "technology",
            name = "ally-worm-damage-3",
            upgrade = true,
            icon_size = 256,
            icon = "__Ally-Worms__/graphics/technology/ally-worm-damage.png",
            effects =
            {
                {
                    type = "turret-attack",
                    turret_id = "ally-small-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-medium-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-big-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-behemoth-worm",
                    modifier = 0.2
                },
            },
            prerequisites = {"ally-big-worm","ally-worm-damage-2"},
            unit =
            {
                count = 200,
                ingredients =
                {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                    {"chemical-science-pack",1},
                    {"military-science-pack",1},
                    {"utility-science-pack",1}
                },
                time = 60
            }

        },
        {
            type = "technology",
            name = "ally-worm-damage-4",
            upgrade = true,
            icon_size = 256,
            icon = "__Ally-Worms__/graphics/technology/ally-worm-damage.png",
            effects =
            {
                {
                    type = "turret-attack",
                    turret_id = "ally-small-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-medium-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-big-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-behemoth-worm",
                    modifier = 0.2
                },
            },
            prerequisites = {"ally-behemoth-worm","ally-worm-damage-3"},
            unit =
            {
                count = 250,
                ingredients =
                {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                    {"chemical-science-pack",1},
                    {"military-science-pack",1},
                    {"production-science-pack",1},
                    {"utility-science-pack",1}
                },
                time = 60
            }

        },
        {
            type = "technology",
            name = "ally-worm-damage-5",
            upgrade = true,
            icon_size = 256,
            icon = "__Ally-Worms__/graphics/technology/ally-worm-damage.png",
            effects =
            {
                {
                    type = "turret-attack",
                    turret_id = "ally-small-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-medium-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-big-worm",
                    modifier = 0.2
                },
                {
                    type = "turret-attack",
                    turret_id = "ally-behemoth-worm",
                    modifier = 0.2
                },
            },
            prerequisites = {"space-science-pack","ally-worm-damage-4"},
            unit =
            {
                count_formula = "300*(L-4)",
                ingredients =
                {
                    {"automation-science-pack",1},
                    {"logistic-science-pack",1},
                    {"chemical-science-pack",1},
                    {"military-science-pack",1},
                    {"production-science-pack",1},
                    {"utility-science-pack",1},
                    {"space-science-pack",1}
                },
                time = 60
            },
            max_level = "infinite"

        },
    }

)