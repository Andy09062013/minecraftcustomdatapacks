particle minecraft:explosion_emitter ~ ~0.5 ~ 0 0 0 0 1 force
particle minecraft:large_smoke ~ ~0.5 ~ 1 0.8 1 0.05 50 force
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.25 60 force
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 4 1.1
execute as @e[type=!#shadow:not_living,distance=..2] run damage @s 32 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=2..4] run damage @s 20 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=4..6] run damage @s 8 minecraft:explosion
