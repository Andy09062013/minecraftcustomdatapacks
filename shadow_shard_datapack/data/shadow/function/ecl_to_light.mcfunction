item modify entity @s weapon.mainhand shadow:ecl/to_light
function shadow:ecl_model
title @s actionbar {"text":"☀ Light Form","color":"#ffe27a"}
playsound minecraft:block.beacon.activate player @a ~ ~ ~ 0.8 1.8
particle minecraft:end_rod ~ ~1 ~ 0.4 0.6 0.4 0.03 20
