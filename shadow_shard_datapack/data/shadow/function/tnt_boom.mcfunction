particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~ ~ 1.5 1 1.5 0 15 force
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 4 1
execute as @e[type=!#shadow:not_living,distance=..2.5] run damage @s 24 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=2.5..5] run damage @s 10 minecraft:explosion
