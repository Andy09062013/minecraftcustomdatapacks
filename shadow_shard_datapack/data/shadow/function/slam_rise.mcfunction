scoreboard players remove @s shadow.slamt 1
particle minecraft:cloud ~ ~ ~ 0.2 0 0.2 0.02 3 force
execute if score @s shadow.slamt matches ..0 run function shadow:slam_apex
