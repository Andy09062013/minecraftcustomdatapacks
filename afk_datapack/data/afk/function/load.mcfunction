scoreboard objectives add afk.t dummy
scoreboard objectives add afk.gm dummy
scoreboard objectives add afk.id dummy
scoreboard objectives add afk.yaw dummy
scoreboard objectives add afk.pit dummy
scoreboard objectives add afk.y2 dummy
scoreboard objectives add afk.p2 dummy
scoreboard objectives add afk.hurt minecraft.custom:minecraft.damage_taken
scoreboard objectives add afk.chat dummy
# seconds of no input before AFK (ticks)
execute unless score #limit afk.t matches 1.. run scoreboard players set #limit afk.t 240
