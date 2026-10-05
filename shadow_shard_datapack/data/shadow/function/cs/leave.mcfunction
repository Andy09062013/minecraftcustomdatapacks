spectate
data remove storage shadow:cs cur
execute store result storage shadow:cs q.id int 1 run scoreboard players get @s shadow.id
function shadow:cs/load with storage shadow:cs q
execute if score @s cs.gm matches 0 run gamemode survival @s
execute if score @s cs.gm matches 1 run gamemode creative @s
execute if score @s cs.gm matches 2 run gamemode adventure @s
effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
tag @s remove cs.in
