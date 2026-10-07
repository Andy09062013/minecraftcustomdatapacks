scoreboard players set @s bf.u 0
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_bflag:1b}] run return 0
execute if score @s bf.ch matches 1.. run return 0
execute if score @s bf.cd matches 1.. run return run function shadow:bf/cd_msg
execute store result score @s bf.t run data get entity @s SelectedItem.components."minecraft:custom_data".bf_tier
scoreboard players set @s bf.ch 100
scoreboard players set @s bf.cd 400
playsound minecraft:item.goat_horn.sound.0 player @a ~ ~ ~ 6 0.8
playsound minecraft:event.raid.horn player @a[distance=..48] ~ ~ ~ 2 1.2
title @s actionbar {"text":"⚑ RALLY! Keep holding the flag","color":"gold","bold":true}
particle minecraft:totem_of_undying ~ ~2 ~ 0.4 0.5 0.4 0.3 40 force
