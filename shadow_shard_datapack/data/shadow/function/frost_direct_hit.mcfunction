execute as @e[tag=shadow.fhit,limit=1] at @s run function shadow:frost_hit
tag @e[tag=shadow.fhit] remove shadow.fhit
particle minecraft:block{block_state:"minecraft:ice"} ~ ~ ~ 0.3 0.3 0.3 0 30
particle minecraft:snowflake ~ ~ ~ 0.4 0.4 0.4 0.05 20
playsound minecraft:block.glass.break player @a ~ ~ ~ 1 1
execute on passengers run kill @s
kill @s
