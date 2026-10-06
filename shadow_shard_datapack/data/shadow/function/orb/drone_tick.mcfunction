scoreboard players add @s orb.a 7
scoreboard players operation @s orb.a %= #360 orb
scoreboard players set #dr orb 2200
scoreboard players set #dh orb -800
execute if score #ot orb matches 150..200 run scoreboard players operation #dr orb = #ot orb
execute if score #ot orb matches 150..200 run scoreboard players operation #dr orb *= #-32 orb
execute if score #ot orb matches 150..200 run scoreboard players add #dr orb 7000
execute if score #ot orb matches 150..200 run scoreboard players operation #dh orb = #ot orb
execute if score #ot orb matches 150..200 run scoreboard players operation #dh orb *= #-44 orb
execute if score #ot orb matches 150..200 run scoreboard players add #dh orb 5800
execute if score #ot orb matches 201.. run scoreboard players set #dr orb 600
execute if score #ot orb matches 201.. run scoreboard players set #dh orb -3000
execute store result storage shadow:orb dr.a int 1 run scoreboard players get @s orb.a
execute store result storage shadow:orb dr.r double 0.01 run scoreboard players get #dr orb
execute store result storage shadow:orb dr.h double 0.01 run scoreboard players get #dh orb
function shadow:orb/drone_tp with storage shadow:orb dr
