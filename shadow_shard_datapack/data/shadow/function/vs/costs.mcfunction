scoreboard players operation #cd vs = @s vs.d
scoreboard players add #cd vs 2
scoreboard players operation #cs vs = @s vs.s
scoreboard players add #cs vs 2
scoreboard players operation #cw vs = @s vs.w
scoreboard players add #cw vs 2
execute if score @s vs.w matches 4 run scoreboard players set #cw vs 8
scoreboard players set #cp vs 3
execute if score @s vs.l matches 1 run scoreboard players set #cp vs 4
execute if score @s vs.l matches 2 run scoreboard players set #cp vs 5
execute if score @s vs.l matches 3 run scoreboard players set #cp vs 8
