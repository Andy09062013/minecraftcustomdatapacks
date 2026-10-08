scoreboard players operation #me afk.id = @s afk.id
tag @e remove afk.mine
execute as @e[type=minecraft:marker,tag=afk.spot] if score @s afk.id = #me afk.id run tag @s add afk.mine
execute unless entity @e[tag=afk.mine] run summon minecraft:marker ~ ~ ~ {Tags:["afk.spot","afk.mine"]}
scoreboard players operation @e[tag=afk.mine] afk.id = #me afk.id
execute if score #in afk.t matches 1 run return run function afk:leave
execute at @e[tag=afk.mine,limit=1] run tp @s ~ ~ ~
tag @e remove afk.mine
