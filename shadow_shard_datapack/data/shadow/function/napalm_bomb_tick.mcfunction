scoreboard players add @s shadow.nap 1
execute if score @s shadow.nap matches 200.. run return run kill @s
particle minecraft:smoke ~ ~1 ~ 0 0 0 0 1 force
tp @s ~ ~-0.4 ~
execute at @s unless block ~ ~ ~ #shadow:napalm_pass run return run function shadow:napalm_hit
tp @s ~ ~-0.8 ~
execute at @s unless block ~ ~ ~ #shadow:napalm_pass run return run function shadow:napalm_hit
tp @s ~ ~-1.2 ~
execute at @s unless block ~ ~ ~ #shadow:napalm_pass run return run function shadow:napalm_hit
