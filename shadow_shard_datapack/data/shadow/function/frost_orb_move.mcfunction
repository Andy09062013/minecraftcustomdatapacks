scoreboard players remove @s shadow.flife 1
execute if score @s shadow.flife matches ..0 run return run kill @s
execute at @s run tp @s ~ ~ ~ ~9 0
execute rotated as @s positioned ~ ~1.2 ~ run tp @s ^ ^ ^1.4
execute at @s run particle minecraft:snowflake ~ ~ ~ 0.1 0.1 0.1 0 1
