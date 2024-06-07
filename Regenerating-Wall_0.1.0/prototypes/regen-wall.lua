--entity
local rWall = table.deepcopy(data.raw["wall"]["stone-wall"])
local FLAT_RESIST = settings.startup["regen-wall-c-flat-resistances"].value
local PERCENT_RESIST = settings.startup["regen-wall-d-resistances"].value

rWall.name = "regen-wall"
rWall.hide_resistances = false
rWall.flags = {"placeable-player", "placeable-enemy", "player-creation", "not-repairable"}
rWall.minable = {mining_time = 0.25, result = "regen-wall"}
rWall.icon = "__Regenerating-Wall__/graphics/regen-wall-icon.png"
rWall.icon_size = 64

rWall.max_health = settings.startup["regen-wall-a-health"].value
rWall.resistances =
    {
        {
            type = "acid",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
        {
            type = "electric",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
        {
            type = "explosion",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
        {
            type = "fire",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
        {
            type = "impact",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
        {
            type = "laser",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
        {
            type = "physical",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
        {
             type = "poison",
            decrease = FLAT_RESIST,
            percent = PERCENT_RESIST
        },
    }

rWall.pictures =
{
  single =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-single.png",
        priority = "extra-high",
        width = 32,
        height = 46,
        variation_count = 2,
        line_length = 2,
        shift = util.by_pixel(0, -6),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-single.png",
          priority = "extra-high",
          width = 64,
          height = 86,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -5),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-single-shadow.png",
        priority = "extra-high",
        width = 50,
        height = 32,
        repeat_count = 2,
        shift = util.by_pixel(10, 16),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-single-shadow.png",
          priority = "extra-high",
          width = 98,
          height = 60,
          repeat_count = 2,
          shift = util.by_pixel(10, 17),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  straight_vertical =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-vertical.png",
        priority = "extra-high",
        width = 32,
        height = 68,
        variation_count = 5,
        line_length = 5,
        shift = util.by_pixel(0, 8),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-vertical.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 5,
          line_length = 5,
          shift = util.by_pixel(0, 8),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-vertical-shadow.png",
        priority = "extra-high",
        width = 50,
        height = 58,
        repeat_count = 5,
        shift = util.by_pixel(10, 28),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-vertical-shadow.png",
          priority = "extra-high",
          width = 98,
          height = 110,
          repeat_count = 5,
          shift = util.by_pixel(10, 29),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  straight_horizontal =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 50,
        variation_count = 6,
        line_length = 6,
        shift = util.by_pixel(0, -4),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-horizontal.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 6,
          line_length = 6,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-horizontal-shadow.png",
        priority = "extra-high",
        width = 62,
        height = 36,
        repeat_count = 6,
        shift = util.by_pixel(14, 14),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-horizontal-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 68,
          repeat_count = 6,
          shift = util.by_pixel(14, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  corner_right_down =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-corner-right.png",
        priority = "extra-high",
        width = 32,
        height = 64,
        variation_count = 2,
        line_length = 2,
        shift = util.by_pixel(0, 6),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-corner-right.png",
          priority = "extra-high",
          width = 64,
          height = 128,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-corner-right-shadow.png",
        priority = "extra-high",
        width = 62,
        height = 60,
        repeat_count = 2,
        shift = util.by_pixel(14, 28),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-corner-right-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 120,
          repeat_count = 2,
          shift = util.by_pixel(17, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  corner_left_down =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-corner-left.png",
        priority = "extra-high",
        width = 32,
        height = 68,
        variation_count = 2,
        line_length = 2,
        shift = util.by_pixel(0, 6),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-corner-left.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-corner-left-shadow.png",
        priority = "extra-high",
        width = 54,
        height = 60,
        repeat_count = 2,
        shift = util.by_pixel(8, 28),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-corner-left-shadow.png",
          priority = "extra-high",
          width = 102,
          height = 120,
          repeat_count = 2,
          shift = util.by_pixel(9, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  t_up =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-t.png",
        priority = "extra-high",
        width = 32,
        height = 68,
        variation_count = 4,
        line_length = 4,
        shift = util.by_pixel(0, 6),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-t.png",
          priority = "extra-high",
          width = 64,
          height = 134,
          variation_count = 4,
          line_length = 4,
          shift = util.by_pixel(0, 7),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-t-shadow.png",
        priority = "extra-high",
        width = 62,
        height = 60,
        repeat_count = 4,
        shift = util.by_pixel(14, 28),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-t-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 120,
          repeat_count = 4,
          shift = util.by_pixel(14, 28),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  ending_right =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 48,
        variation_count = 2,
        line_length = 2,
        shift = util.by_pixel(0, -4),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-ending-right.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -3),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-ending-right-shadow.png",
        priority = "extra-high",
        width = 62,
        height = 36,
        repeat_count = 2,
        shift = util.by_pixel(14, 14),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-ending-right-shadow.png",
          priority = "extra-high",
          width = 124,
          height = 68,
          repeat_count = 2,
          shift = util.by_pixel(17, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  ending_left =
  {
    layers =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-ending-left.png",
        priority = "extra-high",
        width = 32,
        height = 48,
        variation_count = 2,
        line_length = 2,
        shift = util.by_pixel(0, -4),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-ending-left.png",
          priority = "extra-high",
          width = 64,
          height = 92,
          variation_count = 2,
          line_length = 2,
          shift = util.by_pixel(0, -3),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-ending-left-shadow.png",
        priority = "extra-high",
        width = 54,
        height = 36,
        repeat_count = 2,
        shift = util.by_pixel(8, 14),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-ending-left-shadow.png",
          priority = "extra-high",
          width = 102,
          height = 68,
          repeat_count = 2,
          shift = util.by_pixel(9, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  filling =
  {
    filename = "__Regenerating-Wall__/graphics/wall-filling.png",
    priority = "extra-high",
    width = 24,
    height = 30,
    variation_count = 8,
    line_length = 8,
    shift = util.by_pixel(0, -2),
    hr_version =
    {
      filename = "__Regenerating-Wall__/graphics/hr-wall-filling.png",
      priority = "extra-high",
      width = 48,
      height = 56,
      variation_count = 8,
      line_length = 8,
      shift = util.by_pixel(0, -1),
      scale = 0.5
    }
  },
  water_connection_patch =
  {
    sheets =
    {
      {
        filename = "__Regenerating-Wall__/graphics/wall-patch.png",
        priority = "extra-high",
        width = 58,
        height = 64,
        shift = util.by_pixel(0, -2),
        hr_version =
        {
          filename = "__Regenerating-Wall__/graphics/hr-wall-patch.png",
          priority = "extra-high",
          width = 116,
          height = 128,
          shift = util.by_pixel(0, -2),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-patch-shadow.png",
        priority = "extra-high",
        width = 74,
        height = 52,
        shift = util.by_pixel(8, 14),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-patch-shadow.png",
          priority = "extra-high",
          width = 144,
          height = 100,
          shift = util.by_pixel(9, 15),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  },
  gate_connection_patch =
  {
    sheets =
    {
      {
        filename = "__base__/graphics/entity/wall/wall-gate.png",
        priority = "extra-high",
        width = 42,
        height = 56,
        shift = util.by_pixel(0, -8),
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-gate.png",
          priority = "extra-high",
          width = 82,
          height = 108,
          shift = util.by_pixel(0, -7),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/wall/wall-gate-shadow.png",
        priority = "extra-high",
        width = 66,
        height = 40,
        shift = util.by_pixel(14, 18),
        draw_as_shadow = true,
        hr_version =
        {
          filename = "__base__/graphics/entity/wall/hr-wall-gate-shadow.png",
          priority = "extra-high",
          width = 130,
          height = 78,
          shift = util.by_pixel(14, 18),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }
  }
}

data:extend{rWall}

data:extend({
    {
        type = "item",
        name = "regen-wall",
        icon = "__Regenerating-Wall__/graphics/regen-wall-icon.png",
        icon_size = 64,
        subgroup = "defensive-structure",
        place_result = "regen-wall",
        stack_size = 100
    },
    {
        type = "recipe",
        name = "regen-wall",
        category = "advanced-crafting",
        enabled = false,
        energy_required = 1,
        ingredients = 
        {
            {"stone-wall",1},
            {"iron-plate",5},
            {"steel-plate",1},
            {"repair-pack",1}
        },
        result = "regen-wall"
    },
    {
        type = "technology",
        name = "regen-wall",
        icon = "__Regenerating-Wall__/graphics/regen-wall-thumbnail.png",
        icon_size = 256,
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "regen-wall"
            }
        },
        prerequisites = {"stone-wall","steel-processing"},
        unit =
        {
            count = 50,
            ingredients =
            {
                {"automation-science-pack",1}
            },
            time = 30
        }
    }
})