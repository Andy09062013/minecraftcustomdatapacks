scoreboard players add @s cs.t 1
tp @s ~0.15 ~-1.5 ~0.1
particle minecraft:flame ~ ~0.5 ~ 0.2 0.2 0.2 0.02 6 force
particle minecraft:large_smoke ~ ~1 ~ 0.2 0.3 0.2 0.01 3 force
execute if score @s cs.t matches 18.. run function shadow:cs/meteor_hit
