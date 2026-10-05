scoreboard players set @s shadow.slam 1
scoreboard players set @s shadow.slamt 22
scoreboard players operation #tmp shadow.id = @s shadow.id
tag @s add shadow.slam_fresh
effect give @s minecraft:levitation 3 60 true
effect give @s minecraft:resistance 15 4 true
attribute @s minecraft:fall_damage_multiplier modifier remove shadow:pearlfall
attribute @s minecraft:fall_damage_multiplier modifier add shadow:pearlfall -1 add_multiplied_total
scoreboard players set @s shadow.fly 1000
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 2 0.5
particle minecraft:cloud ~ ~ ~ 0.6 0.1 0.6 0.1 40 force
