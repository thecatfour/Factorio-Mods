local starterRobot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])

starterRobot.name = "starter-construction-robot"
starterRobot.minable.result = "starter-construction-robot"
starterRobot.energy_per_move = "0kJ"
starterRobot.energy_per_tick = "0kJ"
starterRobot.max_health = 10000
starterRobot.speed = settings.startup["starter-robot-speed"].value/216
starterRobot.resistances =
{
    {
        type = "fire",
        percent = 100
    }
}

starterRobot.icons =
{{

  icon = "__base__/graphics/icons/construction-robot.png",
  tint = starterTint,

}}

starterRobot.idle =
{
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    tint = starterTint,
    priority = "high",
    line_length = 16,
    width = 32,
    height = 36,
    frame_count = 1,
    shift = util.by_pixel(0,-4.5),
    direction_count = 16,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
      tint = starterTint,
      priority = "high",
      line_length = 16,
      width = 66,
      height = 76,
      frame_count = 1,
      shift = util.by_pixel(0,-4.5),
      direction_count = 16,
      scale = 0.5
    }
}

starterRobot.in_motion =
{
    filename = "__base__/graphics/entity/construction-robot/construction-robot.png",
    tint = starterTint,
    priority = "high",
    line_length = 16,
    width = 32,
    height = 36,
    frame_count = 1,
    shift = util.by_pixel(0, -4.5),
    direction_count = 16,
    y = 36,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot.png",
      tint = starterTint,
      priority = "high",
      line_length = 16,
      width = 66,
      height = 76,
      frame_count = 1,
      shift = util.by_pixel(0, -4.5),
      direction_count = 16,
      y = 76,
      scale = 0.5
    }
}

starterRobot.working =
{
    filename = "__base__/graphics/entity/construction-robot/construction-robot-working.png",
    tint = starterTint,
    priority = "high",
    line_length = 2,
    width = 28,
    height = 36,
    frame_count = 2,
    shift = util.by_pixel(-0.25, -5),
    direction_count = 16,
    animation_speed = 0.3,
    hr_version =
    {
      filename = "__base__/graphics/entity/construction-robot/hr-construction-robot-working.png",
      tint = starterTint,
      priority = "high",
      line_length = 2,
      width = 57,
      height = 74,
      frame_count = 2,
      shift = util.by_pixel(-0.25, -5),
      direction_count = 16,
      animation_speed = 0.3,
      scale = 0.5
    }
}

data:extend({starterRobot})