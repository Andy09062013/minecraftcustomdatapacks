function shadow:void_give_loop
tellraw @s {"text":"🌑 A Void Shard floated up into your inventory","color":"#9b4dff"}
playsound minecraft:block.respawn_anchor.set_spawn player @s ~ ~ ~ 1 0.6
playsound minecraft:block.amethyst_block.resonate player @s ~ ~ ~ 1 0.5
particle minecraft:reverse_portal ~ ~1 ~ 0.4 0.8 0.4 0.1 60
