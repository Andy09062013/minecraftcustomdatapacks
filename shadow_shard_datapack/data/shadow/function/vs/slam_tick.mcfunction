scoreboard players add @s vs.st 1
particle minecraft:dust{color:[0.5,0.2,0.9],scale:2.0} ~ ~0.5 ~ 0.3 0.5 0.3 0 8 force
execute if entity @s[nbt={OnGround:1b}] run return run function shadow:vs/slam_land
execute if score @s vs.st matches 60.. run function shadow:vs/slam_land
