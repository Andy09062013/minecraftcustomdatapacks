item modify entity @s weapon.mainhand shadow:ebow/to_void
title @s actionbar {"text":"🌑 Void Form","color":"#9b4dff"}
execute at @s run playsound minecraft:block.respawn_anchor.deplete player @a ~ ~ ~ 0.8 1.4
execute at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.6 0.4 0.05 30
