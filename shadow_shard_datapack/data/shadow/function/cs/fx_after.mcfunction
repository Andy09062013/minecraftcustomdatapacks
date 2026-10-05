particle minecraft:flame ~3 ~ ~3 0.1 1.5 0.1 0.03 8 force
particle minecraft:flame ~-3 ~ ~3 0.1 1.5 0.1 0.03 8 force
particle minecraft:flame ~3 ~ ~-3 0.1 1.5 0.1 0.03 8 force
particle minecraft:flame ~-3 ~ ~-3 0.1 1.5 0.1 0.03 8 force
particle minecraft:campfire_cosy_smoke ~ ~0.5 ~ 4 0.2 4 0.02 3 force
particle minecraft:lava ~ ~0.5 ~ 4 0.2 4 0 2 force
execute as @e[tag=cs.actor] at @s run particle minecraft:flame ~ ~1.2 ~ 0.3 0.6 0.3 0.02 6 force
execute as @e[tag=cs.actor] at @s run particle minecraft:angry_villager ~ ~2.2 ~ 0.4 0.3 0.4 0 1 force
execute if score #t cs.t matches 127.. run title @a[tag=cs.in] actionbar [{"selector":"@a[tag=cs.hero]","color":"gold"},{"text":" has unlocked the Rageblade for 60 seconds","color":"red"}]
