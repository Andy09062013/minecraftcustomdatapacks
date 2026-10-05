execute at @e[tag=shadow.mytarget,limit=1] run tp @s ~ ~ ~
tag @s add shadow.slammer
execute at @s run function shadow:slam_boom
tag @s remove shadow.slammer
clear @s *[custom_data~{shadow_super:1b}] 1
playsound minecraft:entity.item.break player @a ~ ~ ~ 2 0.7
function shadow:slam_end
