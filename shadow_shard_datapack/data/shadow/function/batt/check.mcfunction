tag @a remove batt.src
execute on attacker if entity @s[type=minecraft:player,scores={batt.ch=1..}] run tag @s add batt.src
execute if entity @a[tag=batt.src] run function shadow:batt/zap
tag @a remove batt.src
