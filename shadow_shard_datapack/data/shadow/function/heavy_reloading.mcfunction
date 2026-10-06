execute as @a[tag=shadow.heavyer,gamemode=!creative] run give @s minecraft:arrow 1
title @a[tag=shadow.heavyer] actionbar {"text":"Reloading...","color":"gray"}
playsound minecraft:block.dispenser.fail player @a[tag=shadow.heavyer] ~ ~ ~ 1 0.8
kill @s
