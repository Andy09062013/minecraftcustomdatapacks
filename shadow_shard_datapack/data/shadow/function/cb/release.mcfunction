data modify storage shadow:cb r set from entity @s item.components."minecraft:custom_data".cb_mob
execute positioned ~ ~0.3 ~ run function shadow:cb/release_m with storage shadow:cb r
execute if data storage shadow:cb r{ally:1b} as @e[tag=cb.rel,distance=..3] run function shadow:cb/ally_start
tag @e[tag=cb.rel] remove cb.rel
particle minecraft:dust{color:[1.0,0.8,0.3],scale:1.5} ~ ~0.8 ~ 0.4 0.5 0.4 0 40 force
particle minecraft:end_rod ~ ~0.8 ~ 0.3 0.4 0.3 0.08 25 force
playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 1.4
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 1.2
function shadow:cb/back
