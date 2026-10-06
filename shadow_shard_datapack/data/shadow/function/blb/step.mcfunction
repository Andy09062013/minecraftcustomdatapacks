tp @s ^ ^ ^0.6
scoreboard players add @s blb.s 1
execute at @s unless block ~ ~ ~ #shadow:napalm_pass run return run function shadow:blb/hit_block
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#shadow:not_living,tag=!blb.own,dx=0,dy=0,dz=0] run return run function shadow:blb/hit
execute if score @s blb.s matches 36.. run return run function shadow:blb/expire
execute at @s if predicate shadow:chance30 run particle minecraft:smoke ~ ~ ~ 0 0 0 0 1
return 1
