particle minecraft:fishing ^ ^0.1 ^-1.6 0.3 0 0.3 0.02 4
particle minecraft:splash ^ ^0.3 ^-1.4 0.3 0.1 0.3 0.1 3
particle minecraft:bubble_pop ^0.8 ^0.1 ^0.6 0.1 0 0.1 0.02 1
particle minecraft:bubble_pop ^-0.8 ^0.1 ^0.6 0.1 0 0.1 0.02 1
particle minecraft:fishing ^0.9 ^0.05 ^-0.5 0.1 0 0.3 0.01 1
particle minecraft:fishing ^-0.9 ^0.05 ^-0.5 0.1 0 0.3 0.01 1
scoreboard players add @s mb.t 1
execute if score @s mb.t matches 8.. run playsound minecraft:entity.minecart.riding neutral @a ~ ~ ~ 0.25 1.8
execute if score @s mb.t matches 8.. run scoreboard players set @s mb.t 0
