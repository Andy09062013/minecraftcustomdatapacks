execute at @e[tag=shadow.mytarget,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["shadow.slampos"]}
execute store result entity @e[type=minecraft:marker,tag=shadow.slampos,limit=1] Pos[1] double 0.001 run data get entity @s Pos[1] 1000
execute at @e[type=minecraft:marker,tag=shadow.slampos,limit=1] run tp @s ~ ~ ~
kill @e[type=minecraft:marker,tag=shadow.slampos]
