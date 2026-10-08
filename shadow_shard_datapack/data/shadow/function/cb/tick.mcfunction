execute as @e[type=minecraft:snowball,tag=!cb.seen] if data entity @s Item.components."minecraft:custom_data".shadow_cball at @s run function shadow:cb/arm
execute as @e[type=minecraft:item_display,tag=cb.vis] at @s run function shadow:cb/track
scoreboard players remove @a[scores={cb.imm=1..}] cb.imm 1
execute as @a[tag=cb.in] at @s run function shadow:cb/trap_tick
execute as @e[type=minecraft:item_display,tag=cb.trapball] unless entity @a[tag=cb.in,distance=..3] run kill @s
execute as @a[tag=cb.held] at @s run function shadow:cb/held_tick
execute as @e[tag=cb.ally] at @s run function shadow:cb/ally_tick
