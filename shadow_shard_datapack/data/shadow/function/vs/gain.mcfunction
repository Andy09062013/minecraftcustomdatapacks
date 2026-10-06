loot give @s loot shadow:give/void_crystal
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 1 0.6
particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.5 0.3 0.05 20
title @s actionbar {"text":"+1 Void Crystal","color":"#9b4dff","bold":true}
scoreboard players set @s vs.msg 30
