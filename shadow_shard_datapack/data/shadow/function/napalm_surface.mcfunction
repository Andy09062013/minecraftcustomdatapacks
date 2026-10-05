execute if block ~ ~ ~ #shadow:napalm_pass unless block ~ ~ ~ minecraft:water unless block ~ ~ ~ minecraft:lava unless block ~ ~-1 ~ #shadow:napalm_pass run return run function shadow:napalm_fire_spawn
scoreboard players add #napd shadow.nap 1
execute if score #napd shadow.nap matches 6.. run return 0
execute positioned ~ ~-1 ~ run function shadow:napalm_surface
