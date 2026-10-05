execute store result score #bx mb run data get entity @s Pos[0] 1000
execute store result score #bz mb run data get entity @s Pos[2] 1000
execute rotated as @s rotated ~ 0 positioned ^ ^ ^1 summon minecraft:marker run function shadow:mb_dir
scoreboard players operation #dx mb -= #bx mb
scoreboard players operation #dz mb -= #bz mb
scoreboard players operation #dx mb *= @s mb.s
scoreboard players operation #dz mb *= @s mb.s
execute store result entity @s Motion[0] double 0.000001 run scoreboard players get #dx mb
execute store result entity @s Motion[2] double 0.000001 run scoreboard players get #dz mb
