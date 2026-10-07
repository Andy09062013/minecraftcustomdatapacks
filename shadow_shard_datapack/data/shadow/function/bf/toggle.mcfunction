execute if score @s bf.sel = #o bf run return run function shadow:bf/unpick
scoreboard players operation @s bf.sel = #o bf
tellraw @a[tag=bf.me] [{"text":"⚑ ","color":"gold"},{"selector":"@s","color":"white"},{"text":" is now your ally","color":"gold"}]
tellraw @s [{"text":"⚑ ","color":"gold"},{"selector":"@a[tag=bf.me]","color":"white"},{"text":" picked you as an ally for their Battle Flag","color":"gold"}]
playsound minecraft:block.note_block.bell player @a[tag=bf.me] ~ ~ ~ 1 1.6
particle minecraft:happy_villager ~ ~2.2 ~ 0.3 0.2 0.3 0 8
