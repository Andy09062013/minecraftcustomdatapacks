# only re-point the mob when the target changes, or every 3 seconds as a refresh
execute as @e[tag=cb.foe,limit=1] unless score @s cb.fid matches 1.. store result score @s cb.fid run scoreboard players add #fid cb 1
scoreboard players operation #f cb = @e[tag=cb.foe,limit=1] cb.fid
scoreboard players add @s cb.re 0
scoreboard players remove @s cb.re 10
execute if score @s cb.lf = #f cb if score @s cb.re matches 1.. run return 0
scoreboard players operation @s cb.lf = #f cb
scoreboard players set @s cb.re 60
# a tiny no knockback hit from the target makes the mob fight back, then the health goes right back
execute store result score #hp cb run data get entity @s Health 100
damage @s 0.01 shadow:void_rot by @e[tag=cb.foe,limit=1]
execute store result entity @s Health float 0.01 run scoreboard players get #hp cb
