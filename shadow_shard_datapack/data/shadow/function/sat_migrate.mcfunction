execute store result score #mode shadow.ev run data get entity @s item.components."minecraft:custom_data".mode
execute if score #mode shadow.ev matches 1 run data modify entity @s item.components."minecraft:custom_data".p0 set from entity @s item.components."minecraft:custom_data".other
execute unless score #mode shadow.ev matches 1 run data modify entity @s item.components."minecraft:custom_data".p1 set from entity @s item.components."minecraft:custom_data".other
data remove entity @s item.components."minecraft:custom_data".other
