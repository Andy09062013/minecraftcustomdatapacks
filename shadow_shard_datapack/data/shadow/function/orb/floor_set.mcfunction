execute if block ~ ~-1 ~ minecraft:bedrock run return 0
execute if score #ft orb matches 1..6 run setblock ~ ~-1 ~ minecraft:netherrack
execute if score #ft orb matches 1..6 run setblock ~ ~ ~ minecraft:fire
execute if score #ft orb matches 7..8 run setblock ~ ~-1 ~ minecraft:magma_block
execute if score #ft orb matches 9 run setblock ~ ~-1 ~ minecraft:blackstone
execute if score #ft orb matches 10 run setblock ~ ~-1 ~ minecraft:lava
