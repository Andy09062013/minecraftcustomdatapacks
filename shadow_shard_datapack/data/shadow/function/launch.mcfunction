effect give @s minecraft:resistance 1 4 true
attribute @s minecraft:fall_damage_multiplier modifier remove shadow:pearlfall
attribute @s minecraft:fall_damage_multiplier modifier add shadow:pearlfall -1 add_multiplied_total
scoreboard players set @s shadow.fly 10
tag @s add shadow.launch
execute unless items entity @s weapon.* *[custom_data~{shadow_launch:1b}] run function shadow:give_dummy
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.6 0.4 0.3 40
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 1 0.8
