local logIngredients = {}
local conIngredients = {}

if(settings.startup["upgraded-robots-fusion"].value) then
    logIngredients =
    {
        {"logistic-robot", 2},
        {"processing-unit", 4},
        {"uranium-fuel-cell", 2}
    }
    conIngredients =
    {
        {"construction-robot", 2},
        {"processing-unit", 4},
        {"uranium-fuel-cell", 2}
    }
else
    logIngredients =
    {
        {"logistic-robot", 2},
        {"processing-unit", 4},
    }
    conIngredients =
    {
        {"construction-robot", 2},
        {"processing-unit", 4},
    }
end

data:extend({
    {
        type = "recipe",
        name = "upgraded-logistic-robot",
        enabled = false,
        ingredients = logIngredients,
        result = "upgraded-logistic-robot"
    },
    {
        type = "recipe",
        name = "upgraded-construction-robot",
        enabled = false,
        ingredients = conIngredients,
        result = "upgraded-construction-robot"
    },
})