--Create worm prototypes
local allySmallWorm = table.deepcopy(data.raw["turret"]["small-worm-turret"])
local allyMediumWorm = table.deepcopy(data.raw["turret"]["medium-worm-turret"])
local allyBigWorm = table.deepcopy(data.raw["turret"]["big-worm-turret"])
local allyBehemothWorm = table.deepcopy(data.raw["turret"]["behemoth-worm-turret"])

ally_small_worm_health = settings.startup["ally-small-worm-health"].value
ally_small_worm_range = settings.startup["ally-small-worm-range"].value

ally_medium_worm_health = settings.startup["ally-medium-worm-health"].value
ally_medium_worm_range = settings.startup["ally-medium-worm-range"].value

ally_big_worm_health = settings.startup["ally-big-worm-health"].value
ally_big_worm_range = settings.startup["ally-big-worm-range"].value

ally_behemoth_worm_health = settings.startup["ally-behemoth-worm-health"].value
ally_behemoth_worm_range = settings.startup["ally-behemoth-worm-range"].value

--Small worms
allySmallWorm.name = "ally-small-worm"
allySmallWorm.autoplace = nil
allySmallWorm.minable = {mining_time = 1, result = "ally-small-worm"}
allySmallWorm.collision_box = {{-0.5, -0.5}, {0.5,0.5}}
allySmallWorm.selection_box = {{-0.5,-0.5}, {0.5,0.5}}
allySmallWorm.flags = {"placeable-player", "placeable-enemy", "player-creation", "not-repairable"}
allySmallWorm.is_military_target = true
allySmallWorm.alert_when_damaged = true
allySmallWorm.subgroup = "defensive-structure"
allySmallWorm.random_animation_offset = false

allySmallWorm.max_health = ally_small_worm_health
allySmallWorm.healing_per_tick = ally_small_worm_health/6000                        --Worms are modified to heal 1% HP per second
allySmallWorm.prepare_range = ally_small_worm_range + prepare_range_worm_small

allySmallWorm.attack_parameters =
{
    type = "stream",
    damage_modifier = damage_modifier_ally_small_worm,
    cooldown = 4,
    range = ally_small_worm_range,
    min_range = 0,
    projectile_creation_parameters = worm_shoot_shiftings(scale_worm_small, scale_worm_small * scale_worm_stream),

    lead_target_for_projectile_speed = 0.2* 0.75 * 1.5 * 1.5,

    ammo_type =
    {
        category = "rot",
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "stream",
                stream = "rot-stream-ally-small-worm",
                source_offset = {0.15, -0.5}
            }
        }
    }

}

--Medium worms
allyMediumWorm.name = "ally-medium-worm"
allyMediumWorm.autoplace = nil
allyMediumWorm.minable = {mining_time = 2, result = "ally-medium-worm"}
allyMediumWorm.collision_box = {{-1,-1}, {1,1}}
allyMediumWorm.selection_box = {{-1,-1}, {1,1}}
allyMediumWorm.flags = {"placeable-player", "placeable-enemy", "player-creation", "not-repairable"}
allyMediumWorm.is_military_target = true
allyMediumWorm.alert_when_damaged = true
allyMediumWorm.subgroup = "defensive-structure"
allyMediumWorm.random_animation_offset = false

allyMediumWorm.max_health = ally_medium_worm_health
allyMediumWorm.healing_per_tick = ally_medium_worm_health/6000
allyMediumWorm.attack_parameters.range = ally_medium_worm_range
allyMediumWorm.prepare_range = ally_small_worm_range + prepare_range_worm_medium

allyMediumWorm.hide_resistances=false
allyMediumWorm.resistances=
{
    {
        type = "physical",
        decrease = 5,
        percent = 0
    },
    {
        type = "explosion",
        decrease = 5,
        percent = 15
    },
    {
        type = "fire",
        decrease = 2,
        percent = 50
    }
}

allyMediumWorm.attack_parameters =
{
    type = "stream",
    damage_modifier = damage_modifier_ally_medium_worm,
    cooldown = 4,
    range = ally_medium_worm_range,
    min_range = 0,
    projectile_creation_parameters = worm_shoot_shiftings(scale_worm_medium, scale_worm_medium * scale_worm_stream),

    lead_target_for_projectile_speed = 0.2* 0.75 * 1.5 * 1.5,

    ammo_type =
    {
        category = "rot",
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "stream",
                stream = "rot-stream-ally-medium-worm",
                source_offset = {0.15, -0.5}
            }
        }
    }

}

--Big worms
allyBigWorm.name = "ally-big-worm"
allyBigWorm.autoplace = nil
allyBigWorm.minable = {mining_time = 3, result = "ally-big-worm"}
allyBigWorm.collision_box = {{-1.5,-1.5}, {1.5,1.5}}
allyBigWorm.selection_box = {{-1.5,-1.5}, {1.5,1.5}}
allyBigWorm.flags = {"placeable-player", "placeable-enemy", "player-creation", "not-repairable"}
allyBigWorm.is_military_target = true
allyBigWorm.alert_when_damaged = true
allyBigWorm.subgroup = "defensive-structure"
allyBigWorm.random_animation_offset = false

allyBigWorm.max_health = ally_big_worm_health
allyBigWorm.healing_per_tick = ally_big_worm_health/6000
allyBigWorm.attack_parameters.range = ally_big_worm_range
allyBigWorm.prepare_range = ally_big_worm_range + prepare_range_worm_big

allyBigWorm.hide_resistances=false
allyBigWorm.resistances=
{
    {
        type = "physical",
        decrease = 10,
        percent = 0
    },
    {
        type = "explosion",
        decrease = 10,
        percent = 30
    },
    {
        type = "fire",
        decrease = 3,
        percent = 70
    }
}

allyBigWorm.attack_parameters =
{
    type = "stream",
    damage_modifier = damage_modifier_ally_big_worm,
    cooldown = 4,
    range = ally_big_worm_range,
    min_range = 0,
    projectile_creation_parameters = worm_shoot_shiftings(scale_worm_big, scale_worm_big * scale_worm_stream),

    lead_target_for_projectile_speed = 0.2* 0.75 * 1.5 * 1.5,

    ammo_type =
    {
        category = "rot",
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "stream",
                stream = "rot-stream-ally-big-worm",
                source_offset = {0.15, -0.5}
            }
        }
    }

}

--Behemoth worms
allyBehemothWorm.name = "ally-behemoth-worm"
allyBehemothWorm.autoplace = nil
allyBehemothWorm.minable = {mining_time = 5, result = "ally-behemoth-worm"}
allyBehemothWorm.collision_box = {{-2,-2}, {2,2}}
allyBehemothWorm.selection_box = {{-2,-2}, {2,2}}
allyBehemothWorm.flags = {"placeable-player", "placeable-enemy", "player-creation", "not-repairable"}
allyBehemothWorm.is_military_target = true
allyBehemothWorm.alert_when_damaged = true
allyBehemothWorm.subgroup = "defensive-structure"
allyBehemothWorm.random_animation_offset = false

allyBehemothWorm.max_health = ally_behemoth_worm_health
allyBehemothWorm.healing_per_tick = ally_behemoth_worm_health/6000
allyBehemothWorm.attack_parameters.range = ally_behemoth_worm_range
allyBehemothWorm.prepare_range = ally_behemoth_worm_range + prepare_range_worm_behemoth

allyBehemothWorm.hide_resistances=false
allyBehemothWorm.resistances=
{
    {
        type = "physical",
        decrease = 10,
        percent = 0
    },
    {
        type = "explosion",
        decrease = 10,
        percent = 30
    },
    {
        type = "fire",
        decrease = 3,
        percent = 70
    }
}

allyBehemothWorm.attack_parameters =
{
    type = "stream",
    damage_modifier = damage_modifier_ally_behemoth_worm,
    cooldown = 4,
    range = ally_behemoth_worm_range,
    min_range = 0,
    projectile_creation_parameters = worm_shoot_shiftings(scale_worm_behemoth, scale_worm_behemoth * scale_worm_stream),

    lead_target_for_projectile_speed = 0.2* 0.75 * 1.5 * 1.5,

    ammo_type =
    {
        category = "rot",
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "stream",
                stream = "rot-stream-ally-behemoth-worm",
                source_offset = {0.15, -0.5}
            }
        }
    }

}

--Add them
data:extend{allySmallWorm,allyMediumWorm,allyBigWorm,allyBehemothWorm}