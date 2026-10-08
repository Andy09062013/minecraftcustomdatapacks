tag @s remove cb.rel
tag @s add cb.ally
scoreboard players operation @s cb.by = #o cb
scoreboard players set @s cb.t 600
data modify entity @s PersistenceRequired set value 1b
effect give @s minecraft:glowing 30 0 true
title @a[tag=cb.me] actionbar {"text":"It fights for you for 30 seconds! Aim at what it should attack","color":"green","bold":true}
particle minecraft:happy_villager ~ ~1 ~ 0.4 0.5 0.4 0 15
