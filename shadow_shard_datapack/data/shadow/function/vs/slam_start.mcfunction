tag @s add vs.slam
scoreboard players set @s vs.st 0
scoreboard players set @s vs.acd 200
attribute @s minecraft:gravity modifier remove shadow:vs_slam
attribute @s minecraft:gravity modifier add shadow:vs_slam 3 add_multiplied_total
attribute @s minecraft:fall_damage_multiplier modifier remove shadow:vs_slam
attribute @s minecraft:fall_damage_multiplier modifier add shadow:vs_slam -1 add_multiplied_total
playsound minecraft:item.mace.smash_air player @a ~ ~ ~ 1.5 0.6
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.1 30 force
