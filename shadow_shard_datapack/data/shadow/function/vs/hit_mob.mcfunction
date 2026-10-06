tag @s remove vs.ha
scoreboard players add @s vs.mh 1
execute if score @s vs.mh matches 10.. run function shadow:vs/gain
execute if score @s vs.mh matches 10.. run scoreboard players set @s vs.mh 0
