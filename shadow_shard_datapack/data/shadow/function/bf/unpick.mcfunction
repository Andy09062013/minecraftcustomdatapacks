scoreboard players reset @s bf.sel
tellraw @a[tag=bf.me] [{"text":"⚑ ","color":"gray"},{"selector":"@s","color":"white"},{"text":" is no longer your ally","color":"gray"}]
playsound minecraft:block.note_block.bass player @a[tag=bf.me] ~ ~ ~ 1 0.8
