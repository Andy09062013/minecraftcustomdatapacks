scoreboard players set @s shadow.stun 40
attribute @s minecraft:movement_speed modifier remove shadow:stun
attribute @s minecraft:movement_speed modifier add shadow:stun -1 add_multiplied_total
attribute @s minecraft:jump_strength modifier remove shadow:stun
attribute @s minecraft:jump_strength modifier add shadow:stun -1 add_multiplied_total
attribute @s minecraft:flying_speed modifier remove shadow:stun
attribute @s minecraft:flying_speed modifier add shadow:stun -1 add_multiplied_total
attribute @s minecraft:attack_damage modifier remove shadow:stun
attribute @s minecraft:attack_damage modifier add shadow:stun -1 add_multiplied_total
attribute @s minecraft:entity_interaction_range modifier remove shadow:stun
attribute @s minecraft:entity_interaction_range modifier add shadow:stun -1 add_multiplied_total
attribute @s minecraft:block_interaction_range modifier remove shadow:stun
attribute @s minecraft:block_interaction_range modifier add shadow:stun -1 add_multiplied_total
execute unless entity @s[type=minecraft:player] unless data entity @s {NoAI:1b} run tag @s add shadow.stun_ai
execute if entity @s[tag=shadow.stun_ai] run data modify entity @s NoAI set value 1b
