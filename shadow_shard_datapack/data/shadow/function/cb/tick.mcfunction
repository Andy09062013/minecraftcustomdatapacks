execute as @e[type=minecraft:snowball,tag=!cb.seen] if items entity @s contents *[custom_data~{shadow_cball:1b}] at @s run function shadow:cb/arm
execute as @e[type=minecraft:item_display,tag=cb.vis] at @s run function shadow:cb/track
scoreboard players remove @a[scores={cb.imm=1..}] cb.imm 1
execute as @a[tag=cb.in] at @s run function shadow:cb/trap_tick
execute as @e[type=minecraft:item_display,tag=cb.trapball] unless entity @a[tag=cb.in,distance=..3] run kill @s
