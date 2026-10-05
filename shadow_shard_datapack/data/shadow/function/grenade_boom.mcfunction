particle minecraft:explosion_emitter ~ ~0.5 ~ 0 0 0 0 1 force
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.35 150 force
particle minecraft:lava ~ ~0.5 ~ 1.5 1 1.5 0 25 force
particle minecraft:large_smoke ~ ~1 ~ 1.5 1 1.5 0.05 40 force
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 4 0.9
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 2 0.6
execute as @e[type=!#shadow:not_living,distance=..2] run damage @s 40 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=2..4] run damage @s 25 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=4..6] run damage @s 12 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=6..8] run damage @s 5 minecraft:explosion
execute as @e[type=!#shadow:not_living,type=!minecraft:player,distance=..5] run data modify entity @s Fire set value 60s
