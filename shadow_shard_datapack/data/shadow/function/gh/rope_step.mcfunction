particle minecraft:dust{color:[0.45,0.33,0.2],scale:0.5} ~ ~ ~ 0 0 0 0 1 force
scoreboard players add #k gh 1
execute if score #k gh matches 90.. run return 0
execute if entity @e[tag=gh.ropeend,distance=..0.7] run return 0
execute facing entity @e[tag=gh.ropeend,limit=1] feet positioned ^ ^ ^0.6 run function shadow:gh/rope_step
