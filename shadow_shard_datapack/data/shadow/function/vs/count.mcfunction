execute if entity @e[tag=vs.hit,type=minecraft:player] run tag @s add vs.hp
execute unless entity @e[tag=vs.hit,type=minecraft:player] if entity @e[tag=vs.hit] run tag @s add vs.ha
tag @e[tag=vs.hit] remove vs.hit
tag @s remove vs.me
