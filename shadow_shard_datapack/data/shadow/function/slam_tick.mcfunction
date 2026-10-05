tag @e[tag=shadow.mytarget] remove shadow.mytarget
scoreboard players operation #me shadow.id = @s shadow.id
execute as @e[tag=shadow.slam_target] if score @s shadow.slamby = #me shadow.id run tag @s add shadow.mytarget
execute unless entity @e[tag=shadow.mytarget] run return run function shadow:slam_cancel
execute if score @s shadow.slam matches 1 run return run function shadow:slam_rise
function shadow:slam_fall
