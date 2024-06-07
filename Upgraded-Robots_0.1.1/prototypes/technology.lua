local techRequirements = {}

if(settings.startup["upgraded-robots-fusion"].value) then
    techRequirements = {"logistic-robotics","construction-robotics","advanced-electronics-2","uranium-processing"}
else
    techRequirements = {"logistic-robotics","construction-robotics","advanced-electronics-2"}
end

data:extend({
    {
        type = "technology",
        name = "upgraded-robots",
        icon = "__Upgraded-Robots__/graphics/technology/upgraded-robots.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "upgraded-logistic-robot",
            },
            {
                type = "unlock-recipe",
                recipe = "upgraded-construction-robot",
            },
        },
        prerequisites = techRequirements,
        unit = 
        {
            count = 350,
            ingredients =
            {
                {"automation-science-pack",1},
                {"logistic-science-pack",1},
                {"chemical-science-pack",1}
            },
            time = 30
        }
    }
})