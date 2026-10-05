execute if data entity @s item.components."minecraft:custom_data".other run function shadow:sat_migrate
execute store result score #mode shadow.ev run data get entity @s item.components."minecraft:custom_data".mode
execute unless score #mode shadow.ev matches 0..4 run scoreboard players set #mode shadow.ev 0
data modify storage shadow:sat cur set value []
data modify storage shadow:sat cur set from entity @s item.components."minecraft:bundle_contents"
execute store result storage shadow:sat m.m int 1 run scoreboard players get #mode shadow.ev
scoreboard players add #mode shadow.ev 1
execute if score #mode shadow.ev matches 5.. run scoreboard players set #mode shadow.ev 0
execute store result storage shadow:sat m.n int 1 run scoreboard players get #mode shadow.ev
scoreboard players operation #shown shadow.ev = #mode shadow.ev
scoreboard players add #shown shadow.ev 1
execute store result storage shadow:sat m.s int 1 run scoreboard players get #shown shadow.ev
function shadow:sat_cycle with storage shadow:sat m
