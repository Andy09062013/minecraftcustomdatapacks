execute store result score #yaw mb run data get entity @s Rotation[0] 100
scoreboard players add #yaw mb 400
execute store result entity @s Rotation[0] float 0.01 run scoreboard players get #yaw mb
