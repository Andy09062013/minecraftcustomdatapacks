item modify entity @s weapon.mainhand shadow:ecl/to_void
function shadow:ecl_model
title @s actionbar {"text":"🌑 Void Form","color":"#9b4dff"}
playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.8 1.4
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.6 0.4 0.05 30
