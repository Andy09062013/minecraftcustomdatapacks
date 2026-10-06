execute rotated ~ 0 positioned ^ ^ ^1 run summon minecraft:marker ~ ~ ~ {Tags:["vs.wave","vs.e","vs.wnew"]}
data modify entity @e[type=minecraft:marker,tag=vs.wnew,limit=1] Rotation set from entity @s Rotation
data modify entity @e[type=minecraft:marker,tag=vs.wnew,limit=1] Rotation[1] set value 0f
scoreboard players operation @e[type=minecraft:marker,tag=vs.wnew] shadow.id = @s shadow.id
scoreboard players set @e[type=minecraft:marker,tag=vs.wnew] vs.st 0
tag @e[type=minecraft:marker,tag=vs.wnew] remove vs.wnew
