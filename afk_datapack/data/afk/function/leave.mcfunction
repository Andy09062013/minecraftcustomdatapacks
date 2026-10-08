tag @s remove afk.on
scoreboard players set @s afk.t 0
execute at @e[tag=afk.mine,limit=1] run tp @s ~ ~ ~
execute if score @s afk.gm matches 0 run gamemode survival @s
execute if score @s afk.gm matches 1 run gamemode creative @s
execute if score @s afk.gm matches 2 run gamemode adventure @s
kill @e[tag=afk.mine]
tellraw @a [{"selector":"@s","color":"gray"},{"text":" is back","color":"gray","italic":true}]
