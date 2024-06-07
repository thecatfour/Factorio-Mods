local laserRange = 15
local laserDmg = 3
local laserShootingSpd = 40

local shieldMaxHP = 150
local shieldInput = 360

local nightvision = "nightvision.png"

local startSetting = settings.startup["starter-laser-strength"].value

if(startSetting == "Weak") then
  laserRange = laserRange * 0.5
  laserDmg = laserDmg * 0.5
  laserShootingSpd = laserShootingSpd * 2
elseif(startSetting == "Strong") then
  laserRange = laserRange * 2
  laserDmg = laserDmg * 2
  laserShootingSpd = laserShootingSpd * 0.5
else 
end

startSetting = settings.startup["starter-shield-strength"].value

if(startSetting == "Weak") then
  shieldMaxHP = shieldMaxHP * 0.5
  shieldInput = shieldInput * 0.5
elseif(startSetting == "Strong") then
  shieldMaxHP = shieldMaxHP * 2
  shieldInput = shieldInput * 2
else 
end

startSetting = settings.startup["starter-night-vision-strength"].value

if(startSetting == "Strong") then
  nightvision = "lut-sunset.png"
end

data:extend({
    {
      type = "roboport-equipment",
      name = "starter-roboport-equipment",
      take_result = "starter-roboport-equipment",
      sprite =
      {
        filename = "__base__/graphics/equipment/personal-roboport-mk2-equipment.png",
        tint = starterTint,
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-personal-roboport-mk2-equipment.png",
          tint = starterTint,
          width = 128,
          height = 128,
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 2,
        height = 2,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        buffer_capacity = "35MJ",
        input_flow_limit = "3500KW",
        usage_priority = "secondary-input"
      },
      charging_energy = "1000kW",

      robot_limit = settings.startup["starter-roboport-robot-limit"].value,
      construction_radius = settings.startup["starter-roboport-construction-radius"].value,
      spawn_and_station_height = 0.4,
      spawn_and_station_shadow_height_offset = 0.5,
      charge_approach_distance = 2.6,
      robots_shrink_when_entering_and_exiting = true,

      recharging_animation =
      {
        filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
        draw_as_glow = true,
        priority = "high",
        width = 37,
        height = 35,
        frame_count = 16,
        scale = 1.5,
        animation_speed = 0.5
      },
      recharging_light = {intensity = 0.2, size = 3, color = {r = 0.5, g = 0.5, b = 1.0}},
      stationing_offset = {0, -0.6},
      charging_station_shift = {0, 0.5},
      charging_station_count = 4,
      charging_distance = 1.6,
      charging_threshold_distance = 5,
      categories = {"armor"}
    },
    {
        type = "generator-equipment",
        name = "starter-reactor-equipment",
        sprite =
        {
          filename = "__base__/graphics/equipment/fusion-reactor-equipment.png",
          tint = starterTint,
          width = 128,
          height = 128,
          priority = "medium",
          hr_version =
          {
            filename = "__base__/graphics/equipment/hr-fusion-reactor-equipment.png",
            tint = starterTint,
            width = 256,
            height = 256,
            priority = "medium",
            scale = 0.5
          }
        },
        shape =
        {
          width = 2,
          height = 2,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          usage_priority = "primary-output"
        },
        power = settings.startup["starter-reactor-energy-generation"].value .. "kW",
        categories = {"armor"}
    },
    {
        type = "movement-bonus-equipment",
        name = "starter-exoskeleton-equipment",
        sprite =
        {
          filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
          tint = starterTint,
          width = 64,
          height = 128,
          priority = "medium",
          hr_version =
          {
            filename = "__base__/graphics/equipment/hr-exoskeleton-equipment.png",
            tint = starterTint,
            width = 128,
            height = 256,
            priority = "medium",
            scale = 0.5
          }
        },
        shape = 
        {
          width = 2,
          height = 2,
          type = "full"
        },
        energy_source =
        {
          type = "electric",
          usage_priority = "secondary-input"
        },
        energy_consumption = "100kW",
        movement_bonus = settings.startup["starter-exoskeleton-movement-bonus"].value,
        categories = {"armor"}
    },
    {
      type = "active-defense-equipment",
      name = "starter-laser-defense-equipment",
      sprite =
      {
        filename = "__base__/graphics/equipment/personal-laser-defense-equipment.png",
        tint = starterTint,
        width = 64,
        height = 64,
        priority = "medium",
        hr_version = 
        {
          filename = "__base__/graphics/equipment/hr-personal-laser-defense-equipment.png",
          tint = starterTint,
          width = 128,
          height = 128,
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 1,
        height = 1,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        usage_priority = "secondary-input",
        buffer_capacity = "500kJ"
      },
  
      attack_parameters =
      {
        type = "beam",
        cooldown = laserShootingSpd,
        range = laserRange,
        damage_modifier = laserDmg,
        ammo_type =
        {
          category = "laser",
          energy_consumption = "50kJ",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "beam",
              beam = "laser-beam",
              max_length = laserRange,
              duration = laserShootingSpd,
              source_offset = {0, -1.31439 }
            }
          }
        }
      },
  
      automatic = true,
      categories = {"armor"}
    },
    {
      type = "night-vision-equipment",
      name = "starter-night-vision-equipment",
      sprite =
      {
        filename = "__base__/graphics/equipment/night-vision-equipment.png",
        tint = starterTint,
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-night-vision-equipment.png",
          tint = starterTint,
          width = 128,
          height = 128,
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 1,
        height = 1,
        type = "full"
      },
      energy_source =
      {
        type = "electric",
        buffer_capacity = "20kJ",
        input_flow_limit = "20kW",
        usage_priority = "primary-input"
      },
      energy_input = "10kW",
      categories = {"armor"},
      activate_sound = { filename = "__base__/sound/nightvision-on.ogg", volume = 0.5 },
      deactivate_sound = { filename = "__base__/sound/nightvision-off.ogg", volume = 0.5 },
      darkness_to_turn_on = 0.5,
      color_lookup = {{0.5, "__core__/graphics/color_luts/" .. nightvision}}
    },
    {
      type = "energy-shield-equipment",
      name = "starter-energy-shield-equipment",
      sprite =
      {
        filename = "__base__/graphics/equipment/energy-shield-equipment.png",
        tint = starterTint,
        width = 64,
        height = 64,
        priority = "medium",
        hr_version =
        {
          filename = "__base__/graphics/equipment/hr-energy-shield-equipment.png",
          tint = starterTint,
          width = 128,
          height = 128,
          priority = "medium",
          scale = 0.5
        }
      },
      shape =
      {
        width = 1,
        height = 1,
        type = "full"
      },
      max_shield_value = shieldMaxHP,
      energy_source =
      {
        type = "electric",
        buffer_capacity = tostring(shieldInput) .. "kJ",
        input_flow_limit = tostring(shieldInput) .. "kW",
        usage_priority = "primary-input"
      },
      energy_per_shield = "30kJ",
      categories = {"armor"}
    },
})