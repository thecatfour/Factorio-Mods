data:extend({
    {
      type = "item",
      name = "starter-roboport-equipment",
      icons = 
      {{

        icon = "__base__/graphics/icons/personal-roboport-mk2-equipment.png",
        tint = starterTint,

      }},
      icon_size = 64, icon_mipmaps = 4,
      placed_as_equipment_result = "starter-roboport-equipment",
      subgroup = "equipment",
      default_request_amount = 1,
      stack_size = 20
    },
    {
      type = "item",
      name = "starter-reactor-equipment",
      icons = 
      {{
            
        icon = "__base__/graphics/icons/fusion-reactor-equipment.png",
        tint = starterTint,

       }},
      icon_size = 64, icon_mipmaps = 4,
      placed_as_equipment_result = "starter-reactor-equipment",
      subgroup = "equipment",
      default_request_amount = 1,
      stack_size = 20
    },
    {
      type = "item",
      name = "starter-exoskeleton-equipment",
      icons = 
      {{

        icon = "__base__/graphics/icons/exoskeleton-equipment.png",
        tint = starterTint,

      }},
      icon_size = 64, icon_mipmaps = 4,
      placed_as_equipment_result = "starter-exoskeleton-equipment",
      subgroup = "equipment",
      default_request_amount = 1,
      stack_size = 20
    },
    {
      type = "item",
      name = "starter-construction-robot",
      icons =
      {{

        icon = "__base__/graphics/icons/construction-robot.png",
        tint = starterTint,

      }},
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "logistic-network",
      place_result = "starter-construction-robot",
      stack_size = 50
    },
    {
      type = "armor",
      name = "starter-armor",
      icons =
      {{

        icon = "__base__/graphics/icons/light-armor.png",
        tint = starterTint,

      }},
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "armor",
      order = "a[starter-armor]",
      stack_size = 1,
      infinite = true,
      equipment_grid = "starter-equipment-grid",
      open_sound = {filename =  "__base__/sound/armor-open.ogg", volume = 1},
      close_sound = {filename = "__base__/sound/armor-close.ogg", volume = 1}
    },
    {
      type = "item",
      name = "starter-laser-defense-equipment",
      icons =
      {{

        icon = "__base__/graphics/icons/personal-laser-defense-equipment.png",
        tint = starterTint,

      }},
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "equipment",
      placed_as_equipment_result = "starter-laser-defense-equipment",
      default_request_amount = 1,
      stack_size = 20
    },
    {
      type = "item",
      name = "starter-night-vision-equipment",
      icons =
      {{

        icon = "__base__/graphics/icons/night-vision-equipment.png",
        tint = starterTint,

      }},
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "equipment",
      placed_as_equipment_result = "starter-night-vision-equipment",
      default_request_amount = 1,
      stack_size = 20
    },
    {
      type = "item",
      name = "starter-energy-shield-equipment",
      icons =
      {{

        icon = "__base__/graphics/icons/energy-shield-equipment.png",
        tint = starterTint,

      }},
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "equipment",
      placed_as_equipment_result = "starter-energy-shield-equipment",
      default_request_amount = 1,
      stack_size = 20
    }
})