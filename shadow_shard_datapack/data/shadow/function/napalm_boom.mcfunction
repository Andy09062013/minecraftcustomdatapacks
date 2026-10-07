particle minecraft:explosion_emitter ~ ~0.5 ~ 0 0 0 0 1 force
particle minecraft:flame ~ ~0.5 ~ 1.5 0.5 1.5 0.15 120 force
particle minecraft:lava ~ ~0.5 ~ 1.5 0.5 1.5 0 30 force
particle minecraft:large_smoke ~ ~1.5 ~ 2 1 2 0.05 50 force
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 6 0.7
playsound minecraft:item.firecharge.use block @a ~ ~ ~ 3 0.5
execute as @e[type=!#shadow:not_living,distance=..2] run damage @s 14 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=2..4] run damage @s 8 minecraft:explosion
execute as @e[type=!#shadow:not_living,distance=4..5] run damage @s 3 minecraft:explosion
execute as @e[type=!#shadow:not_living,type=!minecraft:player,distance=..5] run data modify entity @s Fire set value 160s
scoreboard players set #napd shadow.nap 0
execute positioned ~0 ~2 ~0 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~1 ~2 ~0 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~-1 ~2 ~0 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~0 ~2 ~1 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~0 ~2 ~-1 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~2 ~2 ~0 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~-2 ~2 ~0 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~0 ~2 ~2 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~0 ~2 ~-2 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~1 ~2 ~1 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~1 ~2 ~-1 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~-1 ~2 ~1 run function shadow:napalm_surface
scoreboard players set #napd shadow.nap 0
execute positioned ~-1 ~2 ~-1 run function shadow:napalm_surface
execute unless score #nonapgrief orb matches 1 run summon minecraft:tnt ~ ~ ~ {fuse:0s,explosion_power:2.5f}
