data:extend({
    {
        type = "int-setting",
        name = "inventory-size-increase",
        setting_type = "startup",
        default_value = 0,
        allowed_values = {0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100},
        order = "a",
    },
    {
        type = "int-setting",
        name = "starter-reactor-energy-generation",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value = 100000,
        order = "aa",
    },
    {
        type = "double-setting",
        name = "starter-exoskeleton-movement-bonus",
        setting_type = "startup",
        default_value = 1.0,
        minimum_value = 0.1,
        maximum_value = 100.0,
        order = "b",
    },
    {
        type = "int-setting",
        name = "starter-roboport-robot-limit",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 0,
        maximum_value = 500,
        order = "d",
    },
    {
        type = "int-setting",
        name = "starter-roboport-construction-radius",
        setting_type = "startup",
        default_value = 35,
        minimum_value = 10,
        maximum_value = 100,
        order = "c",
    },
    {
        type = "int-setting",
        name = "starter-robot-amount",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 0,
        maximum_value = 500,
        order = "e",
    },
    {
        type = "double-setting",
        name = "starter-robot-speed",
        setting_type = "startup",
        default_value = 13,
        minimum_value = 10,
        maximum_value = 10000,
        order = "f",
    },
    {
        type = "string-setting",
        name = "starter-night-vision-strength",
        setting_type = "startup",
        default_value = "Normal",
        allowed_values = {"None","Normal","Strong"},
        order = "g",
    },
    {
        type = "string-setting",
        name = "starter-laser-strength",
        setting_type = "startup",
        default_value = "Normal",
        allowed_values = {"None","Weak","Normal","Strong"},
        order = "h",
    },
    {
        type = "string-setting",
        name = "starter-shield-strength",
        setting_type = "startup",
        default_value = "Normal",
        allowed_values = {"None","Weak","Normal","Strong"},
        order = "i",
    },

})