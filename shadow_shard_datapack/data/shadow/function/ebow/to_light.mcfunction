item modify entity @s weapon.mainhand shadow:ebow/to_light
title @s actionbar {"text":"☀ Light Form","color":"#ffe27a"}
execute at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.8
execute at @s run particle minecraft:end_rod ~ ~1 ~ 0.4 0.6 0.4 0.03 20
