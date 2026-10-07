execute at @s run tp @s ^ ^ ^0.6
execute at @s unless block ~ ~ ~ #shadow:axe_pass run return run function shadow:gh/latch_block
execute at @s positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[type=!#shadow:not_living,tag=!gh.me,dx=0.6,dy=0.6,dz=0.6] run function shadow:gh/latch_ent
