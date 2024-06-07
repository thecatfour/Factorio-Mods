function rot_stream(data)
    return
    {
      type = "stream",
      name = data.name,
      flags = {"not-on-map"},
      particle_buffer_size = 90,
      particle_spawn_interval = data.particle_spawn_interval,
      particle_spawn_timeout = data.particle_spawn_timeout,
      particle_vertical_acceleration = 0.005 * 0.60 *1.5, --x
      particle_horizontal_speed = 0.2* 0.75 * 1.5 * 1.5, --x
      particle_horizontal_speed_deviation = 0.005 * 0.70,
      particle_start_alpha = 0.5,
      particle_end_alpha = 1,
      particle_alpha_per_part = 0.8,
      particle_scale_per_part = 0.8,
      particle_loop_frame_count = 15,
      --particle_fade_out_threshold = 0.95,
      particle_fade_out_duration = 2,
      particle_loop_exit_threshold = 0.25,
      special_neutral_target_damage = {amount = 1, type = "rot"},
      working_sound =
      {
        sound =
        {
          {
            filename = "__base__/sound/fight/projectile-acid-burn-loop.ogg",
            volume = 0.4
          }
        }
      },
      initial_action =
      {
        {
          type = "direct",
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "play-sound",
                sound =
                {
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                    volume = 0.65
                  },
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                    volume = 0.65
                  },
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                    volume = 0.6
                  },
                  {
                    filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                    volume = 0.6
                  }
                }
              },
              {
                type = "create-fire",
                entity_name = data.splash_fire_name,
                tile_collision_mask = { "water-tile" },
                show_in_tooltip = true
              },
              {
                type = "create-entity",
                entity_name = "water-splash",
                tile_collision_mask = { "ground-tile" }
              }
            }
          }
        },
        {
          type = "area",
          radius = data.spit_radius,
          force = "enemy",
          ignore_collision_condition = true,
          action_delivery =
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-sticker",
                sticker = data.sticker_name
              },
              {
                type = "damage",
                damage = {amount = 1, type = "rot"}
              }
            }
          }
        }
      },
      particle =
      {
        filename = "__base__/graphics/entity/acid-projectile/acid-projectile-head.png",
        draw_as_glow = true,
        line_length = 5,
        width = 22,
        height = 84,
        frame_count = 15,
        shift = util.mul_shift(util.by_pixel(-2, 30), data.scale),
        tint = data.tint,
        priority = "high",
        scale = data.scale,
        animation_speed = 1,
        hr_version =
        {
          filename = "__base__/graphics/entity/acid-projectile/hr-acid-projectile-head.png",
          draw_as_glow = true,
          line_length = 5,
          width = 42,
          height = 164,
          frame_count = 15,
          shift = util.mul_shift(util.by_pixel(-2, 31), data.scale),
          tint = data.tint,
          priority = "high",
          scale = 0.5 * data.scale,
          animation_speed = 1
        }
      },
      spine_animation =
      {
        filename = "__base__/graphics/entity/acid-projectile/acid-projectile-tail.png",
        draw_as_glow = true,
        line_length = 5,
        width = 66,
        height = 12,
        frame_count = 15,
        shift = util.mul_shift(util.by_pixel(0, -2), data.scale),
        tint = data.tint,
        priority = "high",
        scale = data.scale,
        animation_speed = 1,
        hr_version =
        {
          filename = "__base__/graphics/entity/acid-projectile/hr-acid-projectile-tail.png",
          draw_as_glow = true,
          line_length = 5,
          width = 132,
          height = 20,
          frame_count = 15,
          shift = util.mul_shift(util.by_pixel(0, -1), data.scale),
          tint = data.tint,
          priority = "high",
          scale = 0.5 * data.scale,
          animation_speed = 1
        }
      },
      shadow =
      {
        filename = "__base__/graphics/entity/acid-projectile/acid-projectile-shadow.png",
        line_length = 15,
        width = 22,
        height = 84,
        frame_count = 15,
        priority = "high",
        shift = util.mul_shift(util.by_pixel(-2, 30), data.scale),
        draw_as_shadow = true,
        scale = data.scale,
        animation_speed = 1,
        hr_version =
        {
          filename = "__base__/graphics/entity/acid-projectile/hr-acid-projectile-shadow.png",
          line_length = 15,
          width = 42,
          height = 164,
          frame_count = 15,
          shift = util.mul_shift(util.by_pixel(-2, 31), data.scale),
          draw_as_shadow = true,
          priority = "high",
          scale = 0.5 * data.scale,
          animation_speed = 1
        }
      },
  
      oriented_particle = true,
      shadow_scale_enabled = true
    }
  end
  
  function rot_splash_fire(data)
    return
    {
      type = "fire",
      name = data.name,
      localised_name = {"entity-name.rot-splash"},
      flags = {"placeable-off-grid", "not-on-map"},
      damage_per_tick = {amount = 0/60, type = "rot"},
      maximum_damage_multiplier = 3,
      damage_multiplier_increase_per_added_fuel = 1,
      damage_multiplier_decrease_per_tick = 0.005,
  
      --spawn_entity = "fire-flame-on-tree",
      uses_alternative_behavior = true,
      limit_overlapping_particles = true,
      initial_render_layer = "object",
      render_layer = "lower-object-above-shadow",
      secondary_render_layer = "higher-object-above",
      secondary_picture_fade_out_start = 30,
      secondary_picture_fade_out_duration = 60,
  
      spread_delay = 300,
      spread_delay_deviation = 180,
      maximum_spread_count = 100,
  
      particle_alpha = 0.6,
      particle_alpha_blend_duration = 60*5,
      --flame_alpha = 0.35,
      --flame_alpha_deviation = 0.05,
  
      emissions_per_second = 0,
  
      add_fuel_cooldown = 10,
      fade_in_duration = 1,
      fade_out_duration = 30,
  
      initial_lifetime = 60*data.lifetime,--120,
      lifetime_increase_by = 0,
      lifetime_increase_cooldown = 4,
      maximum_lifetime = 1800,
      delay_between_initial_flames = 10,
      initial_flame_count = data.initial_fire,
      burnt_patch_lifetime = 0,
  
      on_damage_tick_effect =
      {
        type = "direct",
        force = "enemy",
        ignore_collision_condition = true,
        trigger_target_mask = { "ground-unit" },
        filter_enabled = true,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = data.sticker_name,
              show_in_tooltip = true
            },
            {
              type = "damage",
              damage = { amount = data.splash_damage_per_tick, type = "rot" },
              apply_damage_to_trees = false
            }

          }
        }
      },
  
      pictures =
      {
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 106,
              height = 116,
              frame_count = 26,
              shift = util.mul_shift(util.by_pixel(-12, -10), data.scale),
              tint = data.tint,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-1.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 210,
                height = 224,
                frame_count = 26,
                shift = util.mul_shift(util.by_pixel(-12, -8), data.scale),
                tint = data.tint,
                scale = 0.5 * data.scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 134,
              height = 98,
              frame_count = 26,
              shift = util.mul_shift(util.by_pixel(2, 0), data.scale),
              draw_as_shadow = true,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-1-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 266,
                height = 188,
                frame_count = 26,
                shift = util.mul_shift(util.by_pixel(2, 2), data.scale),
                draw_as_shadow = true,
                scale = 0.5 * data.scale
              }
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 88,
              height = 76,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(-10, -18), data.scale),
              tint = data.tint,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-2.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 174,
                height = 150,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(-9, -17), data.scale),
                tint = data.tint,
                scale = 0.5 * data.scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 120,
              height = 136,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(6, 28), data.scale),
              draw_as_shadow = true,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-2-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 238,
                height = 266,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(6, 29), data.scale),
                draw_as_shadow = true,
                scale = 0.5 * data.scale
              }
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 118,
              height = 104,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(22, -16), data.scale),
              tint = data.tint,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-3.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 236,
                height = 208,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(22, -16), data.scale),
                tint = data.tint,
                scale = 0.5 * data.scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 110,
              height = 70,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(16, 2), data.scale),
              draw_as_shadow = true,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-3-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 214,
                height = 140,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(17, 2), data.scale),
                draw_as_shadow = true,
                scale = 0.5 * data.scale
              }
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 128,
              height = 80,
              frame_count = 24,
              shift = util.mul_shift(util.by_pixel(16, -20), data.scale),
              tint = data.tint,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-4.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 252,
                height = 154,
                frame_count = 24,
                shift = util.mul_shift(util.by_pixel(17, -19), data.scale),
                tint = data.tint,
                scale = 0.5 * data.scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 124,
              height = 80,
              frame_count = 24,
              shift = util.mul_shift(util.by_pixel(18, -16), data.scale),
              draw_as_shadow = true,
              scale = data.scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-4-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 248,
                height = 160,
                frame_count = 24,
                shift = util.mul_shift(util.by_pixel(18, -16), data.scale),
                draw_as_shadow = true,
                scale = 0.5 * data.scale
              }
            }
          }
        }
      },
  
      secondary_pictures =
      {
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-1.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 106,
              height = 116,
              frame_count = 26,
              shift = util.mul_shift(util.by_pixel(-12, -10), data.ground_patch_scale),
              tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
              scale = data.ground_patch_scale ,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-1.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 210,
                height = 224,
                frame_count = 26,
                shift = util.mul_shift(util.by_pixel(-12, -8), data.ground_patch_scale),
                tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
                scale = 0.5 * data.ground_patch_scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-1-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 134,
              height = 98,
              frame_count = 26,
              shift = util.mul_shift(util.by_pixel(2, 0), data.ground_patch_scale),
              draw_as_shadow = true,
              scale = data.ground_patch_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-1-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 266,
                height = 188,
                frame_count = 26,
                shift = util.mul_shift(util.by_pixel(2, 2), data.ground_patch_scale),
                draw_as_shadow = true,
                scale = 0.5 * data.ground_patch_scale
              }
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-2.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 88,
              height = 76,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(-10, -18), data.ground_patch_scale),
              tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
              scale = data.ground_patch_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-2.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 174,
                height = 150,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(-9, -17), data.ground_patch_scale),
                tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
                scale = 0.5 * data.ground_patch_scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-2-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 120,
              height = 136,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(6, 28), data.ground_patch_scale),
              draw_as_shadow = true,
              scale = data.ground_patch_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-2-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 238,
                height = 266,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(6, 29), data.ground_patch_scale),
                draw_as_shadow = true,
                scale = 0.5 * data.ground_patch_scale
              }
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-3.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 118,
              height = 104,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(22, -16), data.ground_patch_scale),
              tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
              scale = data.ground_patch_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-3.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 236,
                height = 208,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(22, -16), data.ground_patch_scale),
                tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
                scale = 0.5 * data.ground_patch_scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-3-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 110,
              height = 70,
              frame_count = 29,
              shift = util.mul_shift(util.by_pixel(16, 2), data.ground_patch_scale),
              draw_as_shadow = true,
              scale = data.ground_patch_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-3-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 214,
                height = 140,
                frame_count = 29,
                shift = util.mul_shift(util.by_pixel(17, 2), data.ground_patch_scale),
                draw_as_shadow = true,
                scale = 0.5 * data.ground_patch_scale
              }
            }
          }
        },
        {
          layers =
          {
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-4.png",
              draw_as_glow = true,
              line_length = 8,
              direction_count = 1,
              width = 128,
              height = 80,
              frame_count = 24,
              shift = util.mul_shift(util.by_pixel(16, -20), data.ground_patch_scale),
              tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
              scale = data.ground_patch_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-4.png",
                draw_as_glow = true,
                line_length = 8,
                direction_count = 1,
                width = 252,
                height = 154,
                frame_count = 24,
                shift = util.mul_shift(util.by_pixel(17, -19), data.ground_patch_scale),
                tint = util.multiply_color(data.tint , data.patch_tint_multiplier),
                scale = 0.5 * data.ground_patch_scale
              }
            },
            {
              filename = "__base__/graphics/entity/acid-splash/acid-splash-4-shadow.png",
              line_length = 8,
              direction_count = 1,
              width = 124,
              height = 80,
              frame_count = 24,
              shift = util.mul_shift(util.by_pixel(18, -16), data.ground_patch_scale),
              draw_as_shadow = true,
              scale = data.ground_patch_scale,
              hr_version =
              {
                filename = "__base__/graphics/entity/acid-splash/hr-acid-splash-4-shadow.png",
                line_length = 8,
                direction_count = 1,
                width = 248,
                height = 160,
                frame_count = 24,
                shift = util.mul_shift(util.by_pixel(18, -16), data.ground_patch_scale),
                draw_as_shadow = true,
                scale = 0.5 * data.ground_patch_scale
              }
            }
          }
        }
      }
    }
  end
  
  function rot_sticker(data)
    return
    {
      type = "sticker",
      name = data.name,
      flags = {"not-on-map"},
      animation =
      {
        filename = "__base__/graphics/entity/acid-sticker/acid-sticker.png",
        draw_as_glow = true,
        priority = "extra-high",
        line_length = 5,
        width = 16,
        height = 18,
        frame_count = 50,
        animation_speed = 0.5,
        tint = data.tint,
        shift = util.by_pixel (2,0),
        hr_version =
        {
          filename = "__base__/graphics/entity/acid-sticker/hr-acid-sticker.png",
          draw_as_glow = true,
          line_length = 5,
          width = 30,
          height = 34,
          frame_count = 50,
          animation_speed = 0.5,
          tint = data.tint,
          shift = util.by_pixel(1.5, 0),
          scale = 0.5
        }
      },
      duration_in_ticks = data.slow_seconds * 60,
      target_movement_modifier_from = data.slow_player_movement,
      target_movement_modifier_to = 1,
      vehicle_speed_modifier_from = data.slow_vehicle_speed,
      vehicle_speed_modifier_to = 1,
      vehicle_friction_modifier_from = data.slow_vehicle_friction,
      vehicle_friction_modifier_to = 1,
    }
  end

--individual worm values

rot_stream_tint =   {r = 70, g = 24, b = 142, a = 255}
rot_splash_tint =   {r = 80, g = 26, b = 120, a = 255}
rot_sticker_tint =  {r = 75, g = 25, b = 131, a = 255}

damage_modifier_ally_small_worm    = 20
damage_modifier_ally_medium_worm   = 50
damage_modifier_ally_big_worm      = 100
damage_modifier_ally_behemoth_worm = 250

damage_splash_ally_small_worm    = 0.04
damage_splash_ally_medium_worm   = 0.0425
damage_splash_ally_big_worm      = 0.045
damage_splash_ally_behemoth_worm = 0.0475

stream_radius_ally_small_worm    = 1.5
stream_radius_ally_medium_worm   = 1.75
stream_radius_ally_big_worm      = 2
stream_radius_ally_behemoth_worm = 3

rot_fire_init_ally_small_worm     = 5
rot_fire_init_ally_medium_worm    = 10
rot_fire_init_ally_big_worm       = 15
rot_fire_init_ally_behemoth_worm  = 20

ground_effect_lifetime = 10

data:extend({
    --streams
    rot_stream({
        name = "rot-stream-ally-small-worm",
        scale = scale_worm_small*1.1,
        tint = rot_stream_tint,
        corpse_name = "rot-splash-ally-small-worm",
        spit_radius = stream_radius_ally_small_worm,
        particle_spawn_interval = 1,
        particle_spawn_timeout = 6,
        splash_smoke_name = "rot-splash-smoke-ally-small-worm",
        splash_fire_name = "rot-splash-fire-ally-small-worm",
        sticker_name = "rot-sticker-small"
    }),
    rot_stream({
        name = "rot-stream-ally-medium-worm",
        scale = scale_worm_medium,
        tint = rot_stream_tint,
        corpse_name = "rot-splash-ally-medium-worm",
        spit_radius = stream_radius_ally_medium_worm,
        particle_spawn_interval = 1,
        particle_spawn_timeout = 6,
        splash_smoke_name = "rot-splash-smoke-ally-medium-worm",
        splash_fire_name = "rot-splash-fire-ally-medium-worm",
        sticker_name = "rot-sticker-medium"
    }),
    rot_stream({
        name = "rot-stream-ally-big-worm",
        scale = scale_worm_big,
        tint = rot_stream_tint,
        corpse_name = "rot-splash-ally-big-worm",
        spit_radius = stream_radius_ally_big_worm,
        particle_spawn_interval = 1,
        particle_spawn_timeout = 6,
        splash_smoke_name = "rot-splash-smoke-ally-big-worm",
        splash_fire_name = "rot-splash-fire-ally-big-worm",
        sticker_name = "rot-sticker-big"
    }),
    rot_stream({
        name = "rot-stream-ally-behemoth-worm",
        scale = scale_worm_behemoth,
        tint = rot_stream_tint,
        corpse_name = "rot-splash-ally-behemoth-worm",
        spit_radius = stream_radius_ally_behemoth_worm,
        particle_spawn_interval = 1,
        particle_spawn_timeout = 6,
        splash_smoke_name = "rot-splash-smoke-ally-behemoth-worm",
        splash_fire_name = "rot-splash-fire-ally-behemoth-worm",
        sticker_name = "rot-sticker-behemoth"
    }),
    --fires
    rot_splash_fire({
      name = "rot-splash-fire-ally-small-worm",
      scale = scale_worm_small,
      tint = rot_splash_tint,
      ground_patch_scale = scale_worm_small * ground_patch_scale_modifier,
      patch_tint_multiplier = patch_opacity,
      splash_damage_per_tick = damage_splash_ally_small_worm,
      lifetime = ground_effect_lifetime,
      initial_fire = rot_fire_init_ally_small_worm,
      sticker_name = "rot-sticker-small"
    }),
    rot_splash_fire({
      name = "rot-splash-fire-ally-medium-worm",
      scale = scale_worm_medium,
      tint = rot_splash_tint,
      ground_patch_scale = scale_worm_medium * ground_patch_scale_modifier,
      patch_tint_multiplier = patch_opacity,
      splash_damage_per_tick = damage_splash_ally_medium_worm,
      lifetime = ground_effect_lifetime,
      initial_fire = rot_fire_init_ally_medium_worm,
      sticker_name = "rot-sticker-medium"
    }),
    rot_splash_fire({
      name = "rot-splash-fire-ally-big-worm",
      scale = scale_worm_big,
      tint = rot_splash_tint,
      ground_patch_scale = scale_worm_big * ground_patch_scale_modifier,
      patch_tint_multiplier = patch_opacity,
      splash_damage_per_tick = damage_splash_ally_big_worm,
      lifetime = ground_effect_lifetime,
      initial_fire = rot_fire_init_ally_big_worm,
      sticker_name = "rot-sticker-big"
    }),
    rot_splash_fire({
      name = "rot-splash-fire-ally-behemoth-worm",
      scale = scale_worm_behemoth,
      tint = rot_splash_tint,
      ground_patch_scale = scale_worm_behemoth * ground_patch_scale_modifier,
      patch_tint_multiplier = patch_opacity,
      splash_damage_per_tick = damage_splash_ally_behemoth_worm,
      lifetime = ground_effect_lifetime,
      initial_fire = rot_fire_init_ally_behemoth_worm,
      sticker_name = "rot-sticker-behemoth"
    }),
    --stickers
    rot_sticker({
        name = "rot-sticker-small",
        tint = rot_sticker_tint,
        slow_player_movement = 0.7,
        slow_vehicle_speed = 0.7,
        slow_vehicle_friction =1.5,
        slow_seconds = 4
    }),
    rot_sticker({
        name = "rot-sticker-medium",
        tint = rot_sticker_tint,
        slow_player_movement = 0.5,
        slow_vehicle_speed = 0.5,
        slow_vehicle_friction = 1.5,
        slow_seconds = 5
    }),
    rot_sticker({
        name = "rot-sticker-big",
        tint = rot_sticker_tint,
        slow_player_movement = 0.3,
        slow_vehicle_speed = 0.3,
        slow_vehicle_friction = 1.5,
        slow_seconds = 6
    }),
    rot_sticker({
        name = "rot-sticker-behemoth",
        tint = rot_sticker_tint,
        slow_player_movement = 0.1,
        slow_vehicle_speed = 0.1,
        slow_vehicle_friction = 1.5,
        slow_seconds = 7
    })
})