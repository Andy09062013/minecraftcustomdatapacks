loot replace entity @s weapon.mainhand loot shadow:evo/rage
scoreboard players set #csadd evo.v 0
function shadow:cs/start
execute store result score #now evo.v run time query gametime
scoreboard players add #now evo.v 1200
scoreboard players operation #now evo.v += #csadd evo.v
execute store result storage shadow:evo end int 1 run scoreboard players get #now evo.v
item modify entity @s weapon.mainhand shadow:evo_end
scoreboard players operation @s evo.end = #now evo.v
execute store result storage shadow:evo id int 1 run scoreboard players get @s shadow.id
function shadow:evo_bar_make with storage shadow:evo
title @s times 2 30 10
title @s title {"text":"RAGEBLADE","color":"gold","bold":true}
title @s subtitle {"text":"60 seconds of fury","color":"red"}
playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 2 0.8
playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 2 0.6
playsound minecraft:item.totem.use player @a ~ ~ ~ 1 0.7
particle minecraft:flame ~ ~1 ~ 0 0 0 0.3 120 force
particle minecraft:lava ~ ~1 ~ 0.6 0.6 0.6 0 30 force
particle minecraft:angry_villager ~ ~2 ~ 0.6 0.4 0.6 0 8 force
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0 3 force
