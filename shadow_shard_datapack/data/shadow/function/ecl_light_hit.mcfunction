execute if score @s ecl.hit matches 3 run scoreboard players add @s ecl.ch 4
execute if score @s ecl.hit matches 2 run scoreboard players add @s ecl.ch 2
execute if score @s ecl.hit matches 1 run scoreboard players add @s ecl.ch 1
execute if score @s ecl.ch matches 20.. run return run function shadow:ecl_burst
execute as @e[tag=ecl.vic] at @s run particle minecraft:end_rod ~ ~1 ~ 0.3 0.4 0.3 0.05 6
execute if score @s ecl.ch matches 0..3 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.8 0.8
execute if score @s ecl.ch matches 4..7 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.8 1.0
execute if score @s ecl.ch matches 8..11 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.8 1.2
execute if score @s ecl.ch matches 12..15 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.8 1.4
execute if score @s ecl.ch matches 16..19 run playsound minecraft:block.amethyst_block.chime player @a ~ ~ ~ 0.8 1.7
function shadow:ecl_bar
function shadow:ecl_model
