scoreboard players set #f blb 40
scoreboard players operation #f blb -= @s blb.s
execute if score #f blb matches ..3 run scoreboard players set #f blb 3
scoreboard players operation #d blb = @s blb.b
scoreboard players operation #d blb *= #f blb
scoreboard players operation #d blb *= #f blb
scoreboard players operation #d blb /= #1600 blb
execute store result storage shadow:blb h.d double 0.01 run scoreboard players get #d blb
execute at @s positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#shadow:not_living,tag=!blb.own,dx=0,dy=0,dz=0,limit=1,sort=nearest] run function shadow:blb/hurt with storage shadow:blb h
execute at @s run particle minecraft:damage_indicator ~ ~ ~ 0.1 0.1 0.1 0.1 2
kill @s
return 0
