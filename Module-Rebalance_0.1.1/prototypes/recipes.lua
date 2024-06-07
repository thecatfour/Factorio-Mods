local amountOfIngredient = 15
local amountOfModule = settings.startup["modules-per-upgrade"].value
local timeToCraft = 15
local debugEnable = false
local showProducts = false
local t0Reduce = 1
local t1Reduce = 1
local t2Reduce = 1

if(settings.startup["cheap-early-tiers"].value) then
    t0Reduce = 3
    t1Reduce = 1.5
    t2Reduce = 1
end

local moduleIngredients = 
{
    t0 =
    {
        {name = "iron-plate", amount = amountOfIngredient/t0Reduce},
        {name = "copper-plate", amount = amountOfIngredient/t0Reduce},
    },
    t1 =
    {
        p = 
        {
            {name = "iron-plate", amount = amountOfIngredient/t1Reduce},
            {name = "electronic-circuit", amount = amountOfIngredient/t1Reduce},
            {name = "productivity-module-base", amount = amountOfModule}
        },
        s =
        {
            {name = "iron-plate", amount = amountOfIngredient/t1Reduce},
            {name = "electronic-circuit", amount = amountOfIngredient/t1Reduce},
            {name = "speed-module-base", amount = amountOfModule}
        },
        e =
        {
            {name = "iron-plate", amount = amountOfIngredient/t1Reduce},
            {name = "electronic-circuit", amount = amountOfIngredient/t1Reduce},
            {name = "effectivity-module-base", amount = amountOfModule}
        }
    },
    t2 =
    {
        p = 
        {
            {name = "iron-plate", amount = amountOfIngredient/t2Reduce},
            {name = "advanced-circuit", amount = amountOfIngredient/t2Reduce},
            {name = "productivity-module", amount = amountOfModule}
        },
        s =
        {
            {name = "iron-plate", amount = amountOfIngredient/t2Reduce},
            {name = "advanced-circuit", amount = amountOfIngredient/t2Reduce},
            {name = "speed-module", amount = amountOfModule}
        },
        e =
        {
            {name = "iron-plate", amount = amountOfIngredient/t2Reduce},
            {name = "advanced-circuit", amount = amountOfIngredient/t2Reduce},
            {name = "effectivity-module", amount = amountOfModule}
        }
    },
    t3 =
    {
        p = 
        {
            {name = "steel-plate", amount = amountOfIngredient},
            {name = "advanced-circuit", amount = amountOfIngredient},
            {name = "productivity-module-2", amount = amountOfModule}
        },
        s =
        {
            {name = "steel-plate", amount = amountOfIngredient},
            {name = "advanced-circuit", amount = amountOfIngredient},
            {name = "speed-module-2", amount = amountOfModule}
        },
        e =
        {
            {name = "steel-plate", amount = amountOfIngredient},
            {name = "advanced-circuit", amount = amountOfIngredient},
            {name = "effectivity-module-2", amount = amountOfModule}
        }
    },
    t4 =
    {
        p = 
        {
            {name = "steel-plate", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "productivity-module-3", amount = amountOfModule}
        },
        s =
        {
            {name = "steel-plate", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "speed-module-3", amount = amountOfModule}
        },
        e =
        {
            {name = "steel-plate", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "effectivity-module-3", amount = amountOfModule}
        }
    },
    t5 =
    {
        p = 
        {
            {name = "engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "productivity-module-4", amount = amountOfModule}
        },
        s =
        {
            {name = "engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "speed-module-4", amount = amountOfModule}
        },
        e =
        {
            {name = "engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "effectivity-module-4", amount = amountOfModule}
        }
    },
    t6 =
    {
        p = 
        {
            {name = "electric-engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "productivity-module-5", amount = amountOfModule}
        },
        s =
        {
            {name = "electric-engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "speed-module-5", amount = amountOfModule}
        },
        e =
        {
            {name = "electric-engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "effectivity-module-5", amount = amountOfModule}
        }
    },
    t7 =
    {
        p = 
        {
            {name = "electric-engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "low-density-structure", amount = amountOfIngredient},
            {name = "productivity-module-6", amount = amountOfModule}
        },
        s =
        {
            {name = "electric-engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "low-density-structure", amount = amountOfIngredient},
            {name = "speed-module-6", amount = amountOfModule}
        },
        e =
        {
            {name = "electric-engine-unit", amount = amountOfIngredient},
            {name = "processing-unit", amount = amountOfIngredient},
            {name = "low-density-structure", amount = amountOfIngredient},
            {name = "effectivity-module-6", amount = amountOfModule}
        }
        
    },
}

data:extend({
    {
        type = "recipe",
        name = "productivity-module-base",
        ingredients = moduleIngredients.t0,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module-base",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "productivity-module",
        ingredients = moduleIngredients.t1.p,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "productivity-module-2",
        ingredients = moduleIngredients.t2.p,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module-2",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "productivity-module-3",
        ingredients = moduleIngredients.t3.p,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module-3",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "productivity-module-4",
        ingredients = moduleIngredients.t4.p,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module-4",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "productivity-module-5",
        ingredients = moduleIngredients.t5.p,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module-5",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "productivity-module-6",
        ingredients = moduleIngredients.t6.p,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module-6",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "productivity-module-7",
        ingredients = moduleIngredients.t7.p,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "productivity-module-7",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module-base",
        ingredients = moduleIngredients.t0,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module-base",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module",
        ingredients = moduleIngredients.t1.s,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module-2",
        ingredients = moduleIngredients.t2.s,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module-2",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module-3",
        ingredients = moduleIngredients.t3.s,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module-3",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module-4",
        ingredients = moduleIngredients.t4.s,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module-4",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module-5",
        ingredients = moduleIngredients.t5.s,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module-5",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module-6",
        ingredients = moduleIngredients.t6.s,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module-6",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "speed-module-7",
        ingredients = moduleIngredients.t7.s,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "speed-module-7",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module-base",
        ingredients = moduleIngredients.t0,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module-base",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module",
        ingredients = moduleIngredients.t1.e,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module-2",
        ingredients = moduleIngredients.t2.e,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module-2",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module-3",
        ingredients = moduleIngredients.t3.e,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module-3",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module-4",
        ingredients = moduleIngredients.t4.e,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module-4",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module-5",
        ingredients = moduleIngredients.t5.e,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module-5",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module-6",
        ingredients = moduleIngredients.t6.e,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module-6",
        always_show_products = showProducts
    },
    {
        type = "recipe",
        name = "effectivity-module-7",
        ingredients = moduleIngredients.t7.e,
        enabled = debugEnable,
        energy_required = timeToCraft,
        result = "effectivity-module-7",
        always_show_products = showProducts
    },
})