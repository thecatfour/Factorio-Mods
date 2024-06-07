data:extend({
    {
        type = "bool-setting",
        name = "cheap-early-tiers",
        setting_type = "startup",
        default_value = false,
        order = "a",
    },
    {
        type = "int-setting",
        name = "modules-per-upgrade",
        setting_type = "startup",
        default_value = 3,
        allowed_values = {3,4,5},
        order = "b",
    },
})