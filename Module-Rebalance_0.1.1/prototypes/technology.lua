local graphicsPath = "__Module-Rebalance__/graphics/technology/"

data.raw.technology["modules"].icon = graphicsPath .. "module-base-technology.png"
data.raw.technology["modules"].icon_size = 256
data.raw.technology["modules"].effects =
{
    {type = "unlock-recipe", recipe = "productivity-module-base"},
    {type = "unlock-recipe", recipe = "effectivity-module-base"},
    {type = "unlock-recipe", recipe = "speed-module-base"}
}

data.raw.technology["productivity-module"].icon = graphicsPath .. "productivity-module.png"
data.raw.technology["productivity-module"].icon_size = 128
data.raw.technology["productivity-module-2"].icon = graphicsPath .. "productivity-module-2.png"
data.raw.technology["productivity-module-2"].icon_size = 128
data.raw.technology["productivity-module-3"].icon = graphicsPath .. "productivity-module-3.png"
data.raw.technology["productivity-module-3"].icon_size = 128

data.raw.technology["speed-module"].icon = graphicsPath .. "speed-module.png"
data.raw.technology["speed-module"].icon_size = 128
data.raw.technology["speed-module-2"].icon = graphicsPath .. "speed-module-2.png"
data.raw.technology["speed-module-2"].icon_size = 128
data.raw.technology["speed-module-3"].icon = graphicsPath .. "speed-module-3.png"
data.raw.technology["speed-module-3"].icon_size = 128

data.raw.technology["effectivity-module"].icon = graphicsPath .. "effectivity-module.png"
data.raw.technology["effectivity-module"].icon_size = 128
data.raw.technology["effectivity-module-2"].icon = graphicsPath .. "effectivity-module-2.png"
data.raw.technology["effectivity-module-2"].icon_size = 128
data.raw.technology["effectivity-module-3"].icon = graphicsPath .. "effectivity-module-3.png"
data.raw.technology["effectivity-module-3"].icon_size = 128

data:extend({
    {
        type = "technology",
        name = "productivity-module-4",
        icon = graphicsPath .. "productivity-module-4.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-4"
            }
        },
        prerequisites = {"productivity-module-3"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "productivity-module-5",
        icon = graphicsPath .. "productivity-module-5.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-5"
            }
        },
        prerequisites = {"productivity-module-4"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "productivity-module-6",
        icon = graphicsPath .. "productivity-module-6.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-6"
            }
        },
        prerequisites = {"productivity-module-5","utility-science-pack"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
                {"utility-science-pack",1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "productivity-module-7",
        icon = graphicsPath .. "productivity-module-7.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "productivity-module-7"
            }
        },
        prerequisites = {"productivity-module-6"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
                {"utility-science-pack",1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "effectivity-module-4",
        icon = graphicsPath .. "effectivity-module-4.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "effectivity-module-4"
            }
        },
        prerequisites = {"effectivity-module-3"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "effectivity-module-5",
        icon = graphicsPath .. "effectivity-module-5.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "effectivity-module-5"
            }
        },
        prerequisites = {"effectivity-module-4"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "effectivity-module-6",
        icon = graphicsPath .. "effectivity-module-6.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "effectivity-module-6"
            }
        },
        prerequisites = {"effectivity-module-5","utility-science-pack"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
                {"utility-science-pack",1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "effectivity-module-7",
        icon = graphicsPath .. "effectivity-module-7.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "effectivity-module-7"
            }
        },
        prerequisites = {"effectivity-module-6"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
                {"utility-science-pack",1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "speed-module-4",
        icon = graphicsPath .. "speed-module-4.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-4"
            }
        },
        prerequisites = {"speed-module-3"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "speed-module-5",
        icon = graphicsPath .. "speed-module-5.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-5"
            }
        },
        prerequisites = {"speed-module-4"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "speed-module-6",
        icon = graphicsPath .. "speed-module-6.png",
        icon_size = 128,
        upgrade = true,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-6"
            }
        },
        prerequisites = {"speed-module-5","utility-science-pack"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
                {"utility-science-pack",1}
            },
            time = 60
        }
    },
    {
        type = "technology",
        name = "speed-module-7",
        icon = graphicsPath .. "speed-module-7.png",
        icon_size = 128,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "speed-module-7"
            }
        },
        prerequisites = {"speed-module-6"},
        unit =
        {
            count = 200,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1},
                {"production-science-pack",1},
                {"utility-science-pack",1}
            },
            time = 60
        }
    },
})