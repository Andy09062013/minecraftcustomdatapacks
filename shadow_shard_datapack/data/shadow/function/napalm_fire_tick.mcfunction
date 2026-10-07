scoreboard players add @s shadow.nap 1
execute if score @s shadow.nap matches 160.. run return run kill @s
particle minecraft:flame ~0.5 ~0.4 ~0.5 0.3 0.2 0.3 0.01 1
execute if predicate shadow:napalm_smoke run particle minecraft:large_smoke ~0.5 ~0.8 ~0.5 0.2 0.2 0.2 0.01 1
execute as @e[type=!#shadow:not_living,dx=0,dy=1,dz=0] run function shadow:napalm_burn
execute if score @s shadow.nap matches 3 unless score #nonapgrief orb matches 1 run function shadow:napalm_realfire
