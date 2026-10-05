scoreboard players set @s ecl.ch 0
execute as @e[tag=ecl.vic] at @s run function shadow:ecl_burst_vic
attribute @s minecraft:max_absorption modifier remove shadow:ecl_cap
attribute @s minecraft:max_absorption modifier add shadow:ecl_cap -1 add_value
effect give @s minecraft:absorption 60 0 true
scoreboard players set @s ecl.cap 3
scoreboard players set @s ecl.fl 12
scoreboard players set @s ecl.flk 1
title @s actionbar {"text":"☀ ▮▮▮▮▮  BURST","color":"gold","bold":true}
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 1.8
playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 1 1.2
particle minecraft:wax_on ~ ~1 ~ 0.4 0.6 0.4 0.5 20
particle minecraft:heart ~ ~2 ~ 0.3 0.1 0.3 0 3
function shadow:ecl_model
