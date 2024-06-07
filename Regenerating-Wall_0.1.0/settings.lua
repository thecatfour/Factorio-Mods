data:extend({
    {
        type = "double-setting",
        name = "regen-wall-b-regen-rate",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 1000
    },
    {
        type = "int-setting",
        name = "regen-wall-a-health",
        setting_type = "startup",
        default_value = 1000,
        minimum_value = 1,
        maximum_value = 1000000
    },
    {
        type = "int-setting",
        name = "regen-wall-d-resistances",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 0,
        maximum_value = 100
    },
    {
        type = "int-setting",
        name = "regen-wall-c-flat-resistances",
        setting_type = "startup",
        default_value = 5,
        minimum_value = 0,
        maximum_value = 1000
    }
})