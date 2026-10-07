scoreboard players add #rf shadow.nap 1
execute if score #rf shadow.nap matches 8.. run return 0
execute if block ~ ~ ~ minecraft:air unless block ~ ~-1 ~ #minecraft:replaceable run return run function shadow:napalm_realfire_set
execute positioned ~ ~-1 ~ run function shadow:napalm_realfire_down
