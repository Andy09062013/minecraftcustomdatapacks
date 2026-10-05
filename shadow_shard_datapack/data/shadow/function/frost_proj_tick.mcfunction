scoreboard players operation #tmp shadow.id = @s shadow.id
tag @a remove shadow.fshooter
execute as @a if score @s shadow.id = #tmp shadow.id run tag @s add shadow.fshooter
execute store result score #px shadow.vx run data get entity @s Pos[0] 100
execute store result score #py shadow.vx run data get entity @s Pos[1] 100
execute store result score #pz shadow.vx run data get entity @s Pos[2] 100
execute store result score #mx shadow.vx run data get entity @s Motion[0] 50
execute store result score #my shadow.vx run data get entity @s Motion[1] 50
execute store result score #mz shadow.vx run data get entity @s Motion[2] 50
summon minecraft:marker ~ ~ ~ {Tags:["shadow.fscan","shadow.fscan1"]}
summon minecraft:marker ~ ~ ~ {Tags:["shadow.fscan","shadow.fscan2"]}
scoreboard players operation #px shadow.vx += #mx shadow.vx
scoreboard players operation #py shadow.vx += #my shadow.vx
scoreboard players operation #pz shadow.vx += #mz shadow.vx
execute as @e[type=minecraft:marker,tag=shadow.fscan1,limit=1] run function shadow:frost_scan_place
scoreboard players operation #px shadow.vx += #mx shadow.vx
scoreboard players operation #py shadow.vx += #my shadow.vx
scoreboard players operation #pz shadow.vx += #mz shadow.vx
execute as @e[type=minecraft:marker,tag=shadow.fscan2,limit=1] run function shadow:frost_scan_place
execute positioned ~-0.5 ~-0.6 ~-0.5 as @e[type=!#shadow:not_living,tag=!shadow.fshooter,dx=0,dy=0,dz=0,limit=1] run tag @s add shadow.fhit
execute unless entity @e[tag=shadow.fhit] at @e[type=minecraft:marker,tag=shadow.fscan1,limit=1] positioned ~-0.5 ~-0.6 ~-0.5 as @e[type=!#shadow:not_living,tag=!shadow.fshooter,dx=0,dy=0,dz=0,limit=1] run tag @s add shadow.fhit
execute unless entity @e[tag=shadow.fhit] at @e[type=minecraft:marker,tag=shadow.fscan2,limit=1] positioned ~-0.5 ~-0.6 ~-0.5 as @e[type=!#shadow:not_living,tag=!shadow.fshooter,dx=0,dy=0,dz=0,limit=1] run tag @s add shadow.fhit
kill @e[type=minecraft:marker,tag=shadow.fscan]
execute if entity @e[tag=shadow.fhit] run function shadow:frost_direct_hit
tag @a remove shadow.fshooter
