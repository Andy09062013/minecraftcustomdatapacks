execute store result score #x0 shadow.vx run data get entity @e[type=minecraft:marker,tag=shadow.fv0,limit=1] Pos[0] 1000
execute store result score #y0 shadow.vx run data get entity @e[type=minecraft:marker,tag=shadow.fv0,limit=1] Pos[1] 1000
execute store result score #z0 shadow.vx run data get entity @e[type=minecraft:marker,tag=shadow.fv0,limit=1] Pos[2] 1000
execute store result score #x1 shadow.vx run data get entity @e[type=minecraft:marker,tag=shadow.fv1,limit=1] Pos[0] 1000
execute store result score #y1 shadow.vx run data get entity @e[type=minecraft:marker,tag=shadow.fv1,limit=1] Pos[1] 1000
execute store result score #z1 shadow.vx run data get entity @e[type=minecraft:marker,tag=shadow.fv1,limit=1] Pos[2] 1000
scoreboard players operation #x1 shadow.vx -= #x0 shadow.vx
scoreboard players operation #y1 shadow.vx -= #y0 shadow.vx
scoreboard players operation #z1 shadow.vx -= #z0 shadow.vx
scoreboard players add #y1 shadow.vx 250
execute store result entity @s Motion[0] double 0.001 run scoreboard players get #x1 shadow.vx
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #y1 shadow.vx
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #z1 shadow.vx
