local graphicsPath = "__Module-Rebalance__/graphics/icons/"

--Note: Modules tier 6 and 7 gain increased scaling

--Productivity changes
local prodIncrease = 0.02
local prodSpeedDecrease = -0.05
local prodEnergyIncrease = 0.1
local prodPollutionIncrease = 0.02

local prodBaseIncrease = 0.02
local prodBaseSpeedDecrease = -0.05
local prodBaseEnergyIncrease = 0.1
local prodBasePollutionIncrease = 0.02

--Speed changes
local spdSpeedIncrease = 0.1
local spdEnergyIncrease = 0.25
local spdPollutionIncrease = 0.01

local spdBaseSpeedIncrease = 0.1
local spdBaseEnergyIncrease = 0.5
local spdBasePollutionIncrease = 0.01


--Efficiency changes
local effEnergyDecrease = -0.4
local effPollutionDecrease = -0.05

local effBaseEnergyDecrease = -0.2
local effBasePollutionDecrease = -0.05


--Change the modules in vanilla


--Productivity
data.raw.module["productivity-module"].icon = graphicsPath .. "productivity-module.png"
data.raw.module["productivity-module"].icon_size = 64
data.raw.module["productivity-module"].icon_mipmaps = 1
data.raw.module["productivity-module"].subgroup = "productivity-module"
data.raw.module["productivity-module"].order = "c[productivity]-b[productivity-module]"
data.raw.module["productivity-module"].effect =
{
    productivity = {bonus = prodBaseIncrease + prodIncrease * 1},
    consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 1},
    pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 1},
    speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 1}
}
data.raw.module["productivity-module-2"].icon = graphicsPath .. "productivity-module-2.png"
data.raw.module["productivity-module-2"].icon_size = 64
data.raw.module["productivity-module-2"].icon_mipmaps = 1
data.raw.module["productivity-module-2"].subgroup = "productivity-module"
data.raw.module["productivity-module-2"].order = "c[productivity]-c[productivity-module-2]"
data.raw.module["productivity-module-2"].effect =
{
    productivity = {bonus = prodBaseIncrease + prodIncrease * 2},
    consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 2},
    pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 2},
    speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 2}
}
data.raw.module["productivity-module-3"].icon = graphicsPath .. "productivity-module-3.png"
data.raw.module["productivity-module-3"].icon_size = 64
data.raw.module["productivity-module-3"].icon_mipmaps = 1
data.raw.module["productivity-module-3"].subgroup = "productivity-module"
data.raw.module["productivity-module-2"].order = "c[productivity]-c[productivity-module-3]"
data.raw.module["productivity-module-3"].effect =
{
    productivity = {bonus = prodBaseIncrease + prodIncrease * 3},
    consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 3},
    pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 3},
    speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 3}
}


--Speed
data.raw.module["speed-module"].icon = graphicsPath .. "speed-module.png"
data.raw.module["speed-module"].icon_size = 64
data.raw.module["speed-module"].icon_mipmaps = 1
data.raw.module["speed-module"].subgroup = "speed-module"
data.raw.module["speed-module"].order = "a[speed]-b[speed-module]"
data.raw.module["speed-module"].effect =
{
    speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 1},
    consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 1},
    pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 1}
}
data.raw.module["speed-module-2"].icon = graphicsPath .. "speed-module-2.png"
data.raw.module["speed-module-2"].icon_size = 64
data.raw.module["speed-module-2"].icon_mipmaps = 1
data.raw.module["speed-module-2"].subgroup = "speed-module"
data.raw.module["speed-module-2"].order = "a[speed]-c[speed-module-2]"
data.raw.module["speed-module-2"].effect =
{
    speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 2},
    consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 2},
    pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 2}
}
data.raw.module["speed-module-3"].icon = graphicsPath .. "speed-module-3.png"
data.raw.module["speed-module-3"].icon_size = 64
data.raw.module["speed-module-3"].icon_mipmaps = 1
data.raw.module["speed-module-3"].subgroup = "speed-module"
data.raw.module["speed-module-2"].order = "a[speed]-c[speed-module-3]"
data.raw.module["speed-module-3"].effect =
{
    speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 3},
    consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 3},
    pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 3}
}


--effectivity
data.raw.module["effectivity-module"].icon = graphicsPath .. "effectivity-module.png"
data.raw.module["effectivity-module"].icon_size = 64
data.raw.module["effectivity-module"].icon_mipmaps = 1
data.raw.module["effectivity-module"].subgroup = "effectivity-module"
data.raw.module["effectivity-module"].order = "b[effectivity]-b[effectivity-module]"
data.raw.module["effectivity-module"].effect =
{
    consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 1},
    pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 1}
}
data.raw.module["effectivity-module-2"].icon = graphicsPath .. "effectivity-module-2.png"
data.raw.module["effectivity-module-2"].icon_size = 64
data.raw.module["effectivity-module-2"].icon_mipmaps = 1
data.raw.module["effectivity-module-2"].subgroup = "effectivity-module"
data.raw.module["effectivity-module-2"].order = "b[effectivity]-c[effectivity-module-2]"
data.raw.module["effectivity-module-2"].effect =
{
    consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 2},
    pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 2}
}
data.raw.module["effectivity-module-3"].icon = graphicsPath .. "effectivity-module-3.png"
data.raw.module["effectivity-module-3"].icon_size = 64
data.raw.module["effectivity-module-3"].icon_mipmaps = 1
data.raw.module["effectivity-module-3"].subgroup = "effectivity-module"
data.raw.module["effectivity-module-2"].order = "b[effectivity]-c[effectivity-module-3]"
data.raw.module["effectivity-module-3"].effect =
{
    consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 4},
    pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 3}
}


data:extend({
    {
        type = "module",
        name = "productivity-module-base",
        icon = graphicsPath .. "productivity-module-base.png",
        icon_size = 64,
        localised_description = {"item-description.productivity-module"},
        subgroup = "productivity-module",
        category = "productivity",
        order = "c[productivity]-a[productivity-module-base]",
        tier = 0,
        stack_size = 50,
        effect =
        {
            productivity = {bonus = prodBaseIncrease + prodIncrease * 0},
            consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 0},
            pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 0},
            speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 0}
        },
        limitation = productivity_module_limitation(),
        limitation_message_key = "production-module-usable-only-on-intermediates"
    },
    {
        type = "module",
        name = "productivity-module-4",
        icon = graphicsPath .. "productivity-module-4.png",
        icon_size = 64,
        localised_description = {"item-description.productivity-module"},
        subgroup = "productivity-module",
        category = "productivity",
        order = "c[productivity]-d[productivity-module-base]",
        tier = 4,
        stack_size = 50,
        effect =
        {
            productivity = {bonus = prodBaseIncrease + prodIncrease * 4},
            consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 4},
            pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 4},
            speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 4}
        },
        limitation = productivity_module_limitation(),
        limitation_message_key = "production-module-usable-only-on-intermediates"
    },
    {
        type = "module",
        name = "productivity-module-5",
        icon = graphicsPath .. "productivity-module-5.png",
        icon_size = 64,
        localised_description = {"item-description.productivity-module"},
        subgroup = "productivity-module",
        category = "productivity",
        order = "c[productivity]-e[productivity-module-base]",
        tier = 5,
        stack_size = 50,
        effect =
        {
            productivity = {bonus = prodBaseIncrease + prodIncrease * 5},
            consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 5},
            pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 5},
            speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 5}
        },
        limitation = productivity_module_limitation(),
        limitation_message_key = "production-module-usable-only-on-intermediates"
    },
    {
        type = "module",
        name = "productivity-module-6",
        icon = graphicsPath .. "productivity-module-6.png",
        icon_size = 64,
        localised_description = {"item-description.productivity-module"},
        subgroup = "productivity-module",
        category = "productivity",
        order = "c[productivity]-f[productivity-module-base]",
        tier = 6,
        stack_size = 50,
        effect =
        {
            productivity = {bonus = prodBaseIncrease + prodIncrease * 7},
            consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 7},
            pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 7},
            speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 7}
        },
        limitation = productivity_module_limitation(),
        limitation_message_key = "production-module-usable-only-on-intermediates"
    },
    {
        type = "module",
        name = "productivity-module-7",
        icon = graphicsPath .. "productivity-module-7.png",
        icon_size = 64,
        localised_description = {"item-description.productivity-module"},
        subgroup = "productivity-module",
        category = "productivity",
        order = "c[productivity]-g[productivity-module-base]",
        tier = 7,
        stack_size = 50,
        effect =
        {
            productivity = {bonus = prodBaseIncrease + prodIncrease * 9},
            consumption = {bonus = prodBaseEnergyIncrease + prodEnergyIncrease * 9},
            pollution = {bonus = prodBasePollutionIncrease + prodPollutionIncrease * 9},
            speed = {bonus = prodBaseSpeedDecrease + prodSpeedDecrease * 9}
        },
        limitation = productivity_module_limitation(),
        limitation_message_key = "production-module-usable-only-on-intermediates"
    },
    {
        type = "module",
        name = "effectivity-module-base",
        icon = graphicsPath .. "effectivity-module-base.png",
        icon_size = 64,
        localised_description = {"item-description.effectivity-module"},
        subgroup = "effectivity-module",
        category = "effectivity",
        order = "b[effectivity]-a[effectivity-module-base]",
        tier = 0,
        stack_size = 50,
        effect =
        {
            consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 0},
            pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 0}
        }
    },
    {
        type = "module",
        name = "effectivity-module-4",
        icon = graphicsPath .. "effectivity-module-4.png",
        icon_size = 64,
        localised_description = {"item-description.effectivity-module"},
        subgroup = "effectivity-module",
        category = "effectivity",
        order = "c[effectivity]-d[effectivity-module-base]",
        tier = 4,
        stack_size = 50,
        effect =
        {
            consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 7},
            pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 4}
        }
    },
    {
        type = "module",
        name = "effectivity-module-5",
        icon = graphicsPath .. "effectivity-module-5.png",
        icon_size = 64,
        localised_description = {"item-description.effectivity-module"},
        subgroup = "effectivity-module",
        category = "effectivity",
        order = "c[effectivity]-e[effectivity-module-base]",
        tier = 5,
        stack_size = 50,
        effect =
        {
            consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 11},
            pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 5}
        }
    },
    {
        type = "module",
        name = "effectivity-module-6",
        icon = graphicsPath .. "effectivity-module-6.png",
        icon_size = 64,
        localised_description = {"item-description.effectivity-module"},
        subgroup = "effectivity-module",
        category = "effectivity",
        order = "c[effectivity]-f[effectivity-module-base]",
        tier = 6,
        stack_size = 50,
        effect =
        {
            consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 16},
            pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 6}
        }
    },
    {
        type = "module",
        name = "effectivity-module-7",
        icon = graphicsPath .. "effectivity-module-7.png",
        icon_size = 64,
        localised_description = {"item-description.effectivity-module"},
        subgroup = "effectivity-module",
        category = "effectivity",
        order = "c[effectivity]-g[effectivity-module-base]",
        tier = 7,
        stack_size = 50,
        effect =
        {
            consumption = {bonus = effBaseEnergyDecrease + effEnergyDecrease * 24},
            pollution = {bonus = effBasePollutionDecrease + effPollutionDecrease * 7}
        }
    },
    {
        type = "module",
        name = "speed-module-base",
        icon = graphicsPath .. "speed-module-base.png",
        icon_size = 64,
        localised_description = {"item-description.speed-module"},
        subgroup = "speed-module",
        category = "speed",
        order = "a[speed]-a[speed-module-base]",
        tier = 0,
        stack_size = 50,
        effect =
        {
            speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 0},
            consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 0},
            pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 0}
        }
    },
    {
        type = "module",
        name = "speed-module-4",
        icon = graphicsPath .. "speed-module-4.png",
        icon_size = 64,
        localised_description = {"item-description.speed-module"},
        subgroup = "speed-module",
        category = "speed",
        order = "c[speed]-d[speed-module-base]",
        tier = 4,
        stack_size = 50,
        effect =
        {
            speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 4},
            consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 5},
            pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 4}
        }
    },
    {
        type = "module",
        name = "speed-module-5",
        icon = graphicsPath .. "speed-module-5.png",
        icon_size = 64,
        localised_description = {"item-description.speed-module"},
        subgroup = "speed-module",
        category = "speed",
        order = "c[speed]-e[speed-module-base]",
        tier = 5,
        stack_size = 50,
        effect =
        {
            speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 5},
            consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 7},
            pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 5}
        }
    },
    {
        type = "module",
        name = "speed-module-6",
        icon = graphicsPath .. "speed-module-6.png",
        icon_size = 64,
        localised_description = {"item-description.speed-module"},
        subgroup = "speed-module",
        category = "speed",
        order = "c[speed]-f[speed-module-base]",
        tier = 6,
        stack_size = 50,
        effect =
        {
            speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 7},
            consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 10},
            pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 7}
        }
    },
    {
        type = "module",
        name = "speed-module-7",
        icon = graphicsPath .. "speed-module-7.png",
        icon_size = 64,
        localised_description = {"item-description.speed-module"},
        subgroup = "speed-module",
        category = "speed",
        order = "c[speed]-g[speed-module-base]",
        tier = 7,
        stack_size = 50,
        effect =
        {
            speed = {bonus = spdBaseSpeedIncrease + spdSpeedIncrease * 9},
            consumption = {bonus = spdBaseEnergyIncrease + spdEnergyIncrease * 13},
            pollution = {bonus = spdBasePollutionIncrease + spdPollutionIncrease * 9}
        }
    },
})