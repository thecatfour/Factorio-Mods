data:extend({
    {
        type = "bool-setting",
        name = "upgraded-robots-fusion",
        setting_type = "startup",
        default_value = false,
        order = "a",
    },
    {
        type = "int-setting",
        name = "upgraded-logistic-robot-cargo-capacity",
        setting_type = "startup",
        default_value = 4,
        minimum_value = 1,
        maximum_value = 100,
        order = "b",
    },
    {
        type = "double-setting",
        name = "upgraded-logistic-robot-movement-speed",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 10.8,
        maximum_value = 1000,
        order = "c",
    },
    {
        type = "int-setting",
        name = "upgraded-construction-robot-cargo-capacity",
        setting_type = "startup",
        default_value = 4,
        minimum_value = 1,
        maximum_value = 100,
        order = "d",
    },
    {
        type = "double-setting",
        name = "upgraded-construction-robot-movement-speed",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 13,
        maximum_value = 1000,
        order = "e",
    },
})