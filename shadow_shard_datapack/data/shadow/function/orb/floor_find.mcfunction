scoreboard players add #fd orb 1
execute if score #fd orb matches 24.. run return 0
execute unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run return run function shadow:orb/floor_set
execute positioned ~ ~-1 ~ run function shadow:orb/floor_find
