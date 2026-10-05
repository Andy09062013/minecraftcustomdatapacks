scoreboard players remove @s shadow.flife 1
execute if score @s shadow.flife matches ..0 at @s run particle minecraft:block{block_state:"minecraft:ice"} ~ ~1 ~ 0.4 0.8 0.4 0 40
execute if score @s shadow.flife matches ..0 at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.8
execute if score @s shadow.flife matches ..0 run kill @s
