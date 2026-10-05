tag @s add shadow.target
particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:explosion ~ ~1 ~ 2 1 2 0 20 force
particle minecraft:flame ~ ~1 ~ 1.5 1 1.5 0.2 60 force
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 4 0.8
execute as @e[type=!#shadow:no_boom,tag=!shadow.target,distance=..3] run damage @s 6 minecraft:player_explosion by @p[tag=shadow.boomer]
execute as @e[type=!#shadow:no_boom,tag=!shadow.target,distance=3..6] run damage @s 3 minecraft:player_explosion by @p[tag=shadow.boomer]
damage @s 10 minecraft:player_explosion by @p[tag=shadow.boomer]
tag @s remove shadow.target
tag @a[tag=shadow.boomer] remove shadow.boomer
