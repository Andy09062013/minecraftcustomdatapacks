execute if entity @s[tag=mb.up] run return 0
tag @s add mb.up
function shadow:mb/flag_up_m
playsound minecraft:block.iron_trapdoor.open block @a ~ ~ ~ 0.6 1.6
