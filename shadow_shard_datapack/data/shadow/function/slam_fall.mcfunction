scoreboard players add @s shadow.slamt 1
execute if score @s shadow.slamt matches 200.. run return run function shadow:slam_cancel
execute at @e[tag=shadow.mytarget,limit=1] positioned ~-1.5 -64 ~-1.5 unless entity @s[dx=3,dy=600,dz=3] run function shadow:slam_align
particle minecraft:flame ~ ~ ~ 0.2 0.3 0.2 0.02 4 force
particle minecraft:reverse_portal ~ ~ ~ 0.3 0.3 0.3 0.05 6 force
execute at @e[tag=shadow.mytarget,limit=1] if entity @s[distance=..4] run return run function shadow:slam_impact
execute if entity @s[nbt={OnGround:1b}] run return run function shadow:slam_impact
