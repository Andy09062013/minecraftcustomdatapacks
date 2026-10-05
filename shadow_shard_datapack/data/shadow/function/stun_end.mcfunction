attribute @s minecraft:movement_speed modifier remove shadow:stun
attribute @s minecraft:jump_strength modifier remove shadow:stun
attribute @s minecraft:flying_speed modifier remove shadow:stun
attribute @s minecraft:attack_damage modifier remove shadow:stun
attribute @s minecraft:entity_interaction_range modifier remove shadow:stun
attribute @s minecraft:block_interaction_range modifier remove shadow:stun
execute if entity @s[tag=shadow.stun_ai] run data modify entity @s NoAI set value 0b
tag @s remove shadow.stun_ai
scoreboard players reset @s shadow.stun
