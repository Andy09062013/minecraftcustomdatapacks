execute as @e[type=minecraft:snowball,tag=!cb.seen] if items entity @s contents *[custom_data~{shadow_cball:1b}] at @s run function shadow:cb/arm
execute as @e[type=minecraft:item_display,tag=cb.vis] at @s run function shadow:cb/track
