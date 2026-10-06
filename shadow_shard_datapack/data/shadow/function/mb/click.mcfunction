advancement revoke @s only shadow:mb_click
tag @s add mb.clicker
execute as @e[type=minecraft:interaction,tag=mb.int,distance=..8] if data entity @s interaction run function shadow:mb/clicked
tag @s remove mb.clicker
