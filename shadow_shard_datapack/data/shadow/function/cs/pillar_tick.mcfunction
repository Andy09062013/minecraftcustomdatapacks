execute as @e[type=minecraft:block_display,tag=cs.pillar] at @s run particle minecraft:flame ~0.5 ~1.5 ~0.5 0.2 1.2 0.2 0.02 4 force
execute as @e[type=minecraft:block_display,tag=cs.pillar] at @s if predicate shadow:chance30 run particle minecraft:lava ~0.5 ~0.5 ~0.5 0.2 0.2 0.2 0 1 force
