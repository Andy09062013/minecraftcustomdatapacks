execute if entity @s[tag=rd.on] run return run function shadow:rd/off
tag @s add rd.on
scoreboard players set @s rd.t 0
playsound minecraft:block.lever.click block @a ~ ~ ~ 1 1.4
