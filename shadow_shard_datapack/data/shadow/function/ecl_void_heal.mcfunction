scoreboard players set @s ecl.vc 0
attribute @s minecraft:max_absorption modifier remove shadow:ecl_cap
attribute @s minecraft:max_absorption modifier add shadow:ecl_cap -2 add_value
effect give @s minecraft:absorption 60 0 true
scoreboard players set @s ecl.cap 3
scoreboard players set @s ecl.fl 12
scoreboard players set @s ecl.flk 3
playsound minecraft:block.respawn_anchor.charge player @a ~ ~ ~ 0.8 1.6
particle minecraft:heart ~ ~2 ~ 0.3 0.1 0.3 0 2
particle minecraft:witch ~ ~1 ~ 0.4 0.6 0.4 0 15
