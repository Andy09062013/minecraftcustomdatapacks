scoreboard players remove @s shadow.timer 1
execute if predicate shadow:jumping unless entity @s[tag=shadow.held] unless entity @s[nbt={OnGround:1b}] run function shadow:air_jump
execute if predicate shadow:jumping run tag @s add shadow.held
execute unless predicate shadow:jumping run tag @s remove shadow.held
execute if score @s shadow.timer matches ..0 run function shadow:end
