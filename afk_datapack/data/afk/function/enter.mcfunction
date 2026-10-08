tag @s add afk.on
execute if entity @s[gamemode=survival] run scoreboard players set @s afk.gm 0
execute if entity @s[gamemode=creative] run scoreboard players set @s afk.gm 1
execute if entity @s[gamemode=adventure] run scoreboard players set @s afk.gm 2
summon minecraft:marker ~ ~ ~ {Tags:["afk.spot","afk.new"]}
data modify entity @e[type=minecraft:marker,tag=afk.new,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[type=minecraft:marker,tag=afk.new] afk.id = @s afk.id
tag @e[type=minecraft:marker,tag=afk.new] remove afk.new
gamemode spectator @s
tellraw @a [{"selector":"@s","color":"gray"},{"text":" is now AFK","color":"gray","italic":true}]
title @s actionbar {"text":"You're AFK. Move or look around to come back","color":"gray"}
