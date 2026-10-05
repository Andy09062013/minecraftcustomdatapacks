execute as @e[type=minecraft:item,distance=..3,sort=nearest,limit=1] if items entity @s contents #minecraft:boats unless items entity @s contents *[custom_data~{shadow_motorboat:1b}] run function shadow:mb_reitem
kill @s
