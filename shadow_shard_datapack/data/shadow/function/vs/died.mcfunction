scoreboard players set @s vs.dth 0
scoreboard players set #n vs 0
execute store result score #n vs run clear @s *[custom_data~{shadow_vcrystal:1b}]
scoreboard players set @s vs.ph 0
scoreboard players set @s vs.mh 0
scoreboard players set @s vs.spin 0
attribute @s minecraft:movement_speed modifier remove shadow:vs_spin
tag @s remove vs.slam
attribute @s minecraft:gravity modifier remove shadow:vs_slam
attribute @s minecraft:fall_damage_multiplier modifier remove shadow:vs_slam
execute if score #n vs matches 1.. run tellraw @s {"text":"Your unspent Void Crystals shattered when you died","color":"dark_purple"}
