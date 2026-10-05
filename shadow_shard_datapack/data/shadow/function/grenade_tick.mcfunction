scoreboard players remove @s shadow.gfuse 1
execute if entity @s[nbt={OnGround:1b}] if score @s shadow.gvy matches ..-120 run function shadow:grenade_bounce
execute store result score @s shadow.gvy run data get entity @s Motion[1] 1000
execute unless entity @s[tag=shadow.holy] run particle minecraft:smoke ~ ~0.3 ~ 0 0 0 0.01 1
execute unless entity @s[tag=shadow.holy] run particle minecraft:flame ~ ~0.3 ~ 0 0 0 0.01 1
execute if entity @s[tag=shadow.holy] run particle minecraft:wax_on ~ ~0.3 ~ 0.1 0.1 0.1 0 1
execute if score @s shadow.gfuse matches ..0 unless entity @s[tag=shadow.holy] unless entity @s[tag=shadow.pipe] run function shadow:grenade_boom
execute if score @s shadow.gfuse matches ..0 if entity @s[tag=shadow.pipe] run function shadow:pipe_boom
execute if score @s shadow.gfuse matches ..0 if entity @s[tag=shadow.holy] run function shadow:holy_boom
execute if score @s shadow.gfuse matches ..0 run kill @s
