tag @s remove vs.hp
tag @s remove vs.ha
scoreboard players add @s vs.ph 1
execute if score @s vs.ph matches 2.. run function shadow:vs/gain
execute if score @s vs.ph matches 2.. run scoreboard players set @s vs.ph 0
