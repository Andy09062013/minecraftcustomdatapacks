scoreboard players operation #tmp shadow.id = @s shadow.id
tag @a remove shadow.hshooter
execute as @a if score @s shadow.id = #tmp shadow.id run tag @s add shadow.hshooter
tag @e[type=!#shadow:not_living,tag=!shadow.hshooter,distance=..2.5,sort=nearest,limit=1] add shadow.hvic
execute as @e[tag=shadow.hvic,type=minecraft:player] unless entity @s[gamemode=creative] run function shadow:hungry_steal
tag @e[tag=shadow.hvic] remove shadow.hvic
tag @a remove shadow.hshooter
