scoreboard players operation #c orb = #ot orb
scoreboard players remove #c orb 85
scoreboard players operation #cx orb = #c orb
scoreboard players operation #cx orb *= #2 orb
scoreboard players add #cx orb 200
scoreboard players operation #cy orb = #c orb
scoreboard players operation #cy orb *= #3 orb
scoreboard players add #cy orb 300
execute store result storage shadow:orb c.x double 0.1 run scoreboard players get #cx orb
execute store result storage shadow:orb c.y double 0.1 run scoreboard players get #cy orb
function shadow:orb/rcam_tp with storage shadow:orb c
execute if score #ot orb matches 93..105 as @e[type=minecraft:item_display,tag=orb.rcam] at @s run function shadow:orb/shake
