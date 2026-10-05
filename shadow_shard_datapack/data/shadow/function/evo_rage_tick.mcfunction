execute store result score #now evo.v run time query gametime
scoreboard players operation #rem evo.v = #end evo.v
scoreboard players operation #rem evo.v -= #now evo.v
execute if score #rem evo.v matches ..0 run return run function shadow:evo_rage_end
particle minecraft:flame ~ ~1 ~ 0.3 0.4 0.3 0.01 2
execute if predicate shadow:chance30 run particle minecraft:lava ~ ~1.2 ~ 0.2 0.2 0.2 0 1
execute if score @s evo.dd matches 1.. run function shadow:evo_rage_hit
