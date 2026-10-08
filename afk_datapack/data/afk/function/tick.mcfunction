execute as @a unless score @s afk.id matches 1.. store result score @s afk.id run scoreboard players add #next afk.id 1
execute as @a at @s run function afk:check
