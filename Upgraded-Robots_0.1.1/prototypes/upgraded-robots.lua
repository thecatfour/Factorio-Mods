local upLogBot = table.deepcopy(data.raw["logistic-robot"]["logistic-robot"])
local upConBot = table.deepcopy(data.raw["construction-robot"]["construction-robot"])

local graphicsPath = "__Upgraded-Robots__/graphics/"

--Logistic bot
upLogBot.name = "upgraded-logistic-robot"
upLogBot.minable.result = "upgraded-logistic-robot"
upLogBot.max_health = 1000
upLogBot.max_energy = "5MJ"
upLogBot.speed = settings.startup["upgraded-logistic-robot-movement-speed"].value/216
if mods["robot_attrition"] then
    local baseRobotSpeed = 0.06
    local exponentConstant = 0.9
    upLogBot.speed = math.pow(upLogBot.speed / baseRobotSpeed, 1 / exponentConstant) * baseRobotSpeed
end
upLogBot.max_payload_size = settings.startup["upgraded-logistic-robot-cargo-capacity"].value
upLogBot.resistances =
{
    {
        type = "fire",
        percent = 100
    }
}
upLogBot.icon = graphicsPath .. "icons/logistic-robot.png"
upLogBot.idle.filename = graphicsPath .. "entities/logistic-robot.png"
upLogBot.idle.hr_version.filename = graphicsPath .. "entities/hr-logistic-robot.png"
upLogBot.idle_with_cargo.filename = graphicsPath .. "entities/logistic-robot.png"
upLogBot.idle_with_cargo.hr_version.filename = graphicsPath .. "entities/hr-logistic-robot.png"
upLogBot.in_motion.filename = graphicsPath .. "entities/logistic-robot.png"
upLogBot.in_motion.hr_version.filename = graphicsPath .. "entities/hr-logistic-robot.png"
upLogBot.in_motion_with_cargo.filename = graphicsPath .. "entities/logistic-robot.png"
upLogBot.in_motion_with_cargo.hr_version.filename = graphicsPath .. "entities/hr-logistic-robot.png"

--Construction bot
upConBot.name = "upgraded-construction-robot"
upConBot.minable.result = "upgraded-construction-robot"
upConBot.max_health = 1000
upConBot.max_energy = "5MJ"
upConBot.speed = settings.startup["upgraded-construction-robot-movement-speed"].value/216
upConBot.max_payload_size = settings.startup["upgraded-construction-robot-cargo-capacity"].value
upConBot.resistances =
{
    {
        type = "fire",
        percent = 100
    }
}
upConBot.icon = graphicsPath .. "icons/construction-robot.png"
upConBot.idle.filename = graphicsPath .. "entities/construction-robot.png"
upConBot.idle.hr_version.filename = graphicsPath .. "entities/hr-construction-robot.png"
upConBot.in_motion.filename = graphicsPath .. "entities/construction-robot.png"
upConBot.in_motion.hr_version.filename = graphicsPath .. "entities/hr-construction-robot.png"
upConBot.working.filename = graphicsPath .. "entities/construction-robot-working.png"
upConBot.working.hr_version.filename = graphicsPath .. "entities/hr-construction-robot-working.png"

if(settings.startup["upgraded-robots-fusion"].value) then
    upLogBot.energy_per_move = "0kJ"
    upLogBot.energy_per_tick = "0kJ"
    upConBot.energy_per_move = "0kJ"
    upConBot.energy_per_tick = "0kJ"
else
    upLogBot.energy_per_move = "1kJ"
    upLogBot.energy_per_tick = "0.01kJ"
    upConBot.energy_per_move = "1kJ"
    upConBot.energy_per_tick = "0.01kJ"
end

data:extend({upLogBot,upConBot})