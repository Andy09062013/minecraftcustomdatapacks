scoreboard players add #k cb 1
execute if score #k cb matches 80.. run return 0
execute unless block ~ ~ ~ #shadow:axe_pass run return 0
execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=!#shadow:not_living,tag=!cb.boss,tag=!cb.self,tag=!cb.ally,dx=0.6,dy=0.6,dz=0.6,limit=1] run return run tag @s add cb.foe
execute positioned ^ ^ ^0.5 run function shadow:cb/aim_step
