scoreboard players operation #tmp shadow.id = @s shadow.id
tag @a remove shadow.fshooter
execute as @a if score @s shadow.id = #tmp shadow.id run tag @s add shadow.fshooter
particle minecraft:block{block_state:"minecraft:ice"} ~ ~ ~ 0.3 0.3 0.3 0 30
particle minecraft:snowflake ~ ~ ~ 0.4 0.4 0.4 0.05 20
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1
execute as @e[type=!#shadow:not_living,tag=!shadow.fshooter,distance=..2.2,sort=nearest,limit=1] at @s run function shadow:frost_hit
tag @a remove shadow.fshooter
