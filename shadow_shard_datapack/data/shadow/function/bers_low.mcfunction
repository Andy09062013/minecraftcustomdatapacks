tag @s add shadow.berslow
attribute @s minecraft:armor modifier remove shadow:bers_head_armor
execute if items entity @s armor.head *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor modifier add shadow:bers_head_armor 0.5 add_value
attribute @s minecraft:armor_toughness modifier remove shadow:bers_head_armor_toughness
execute if items entity @s armor.head *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor_toughness modifier add shadow:bers_head_armor_toughness 1.0 add_value
attribute @s minecraft:knockback_resistance modifier remove shadow:bers_head_knockback_resistance
execute if items entity @s armor.head *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:knockback_resistance modifier add shadow:bers_head_knockback_resistance 0.1 add_value
attribute @s minecraft:armor modifier remove shadow:bers_chest_armor
execute if items entity @s armor.chest *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor modifier add shadow:bers_chest_armor 0.5 add_value
attribute @s minecraft:armor_toughness modifier remove shadow:bers_chest_armor_toughness
execute if items entity @s armor.chest *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor_toughness modifier add shadow:bers_chest_armor_toughness 1.0 add_value
attribute @s minecraft:knockback_resistance modifier remove shadow:bers_chest_knockback_resistance
execute if items entity @s armor.chest *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:knockback_resistance modifier add shadow:bers_chest_knockback_resistance 0.1 add_value
attribute @s minecraft:armor modifier remove shadow:bers_legs_armor
execute if items entity @s armor.legs *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor modifier add shadow:bers_legs_armor 0.5 add_value
attribute @s minecraft:armor_toughness modifier remove shadow:bers_legs_armor_toughness
execute if items entity @s armor.legs *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor_toughness modifier add shadow:bers_legs_armor_toughness 1.0 add_value
attribute @s minecraft:knockback_resistance modifier remove shadow:bers_legs_knockback_resistance
execute if items entity @s armor.legs *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:knockback_resistance modifier add shadow:bers_legs_knockback_resistance 0.1 add_value
attribute @s minecraft:armor modifier remove shadow:bers_feet_armor
execute if items entity @s armor.feet *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor modifier add shadow:bers_feet_armor 0.5 add_value
attribute @s minecraft:armor_toughness modifier remove shadow:bers_feet_armor_toughness
execute if items entity @s armor.feet *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:armor_toughness modifier add shadow:bers_feet_armor_toughness 1.0 add_value
attribute @s minecraft:knockback_resistance modifier remove shadow:bers_feet_knockback_resistance
execute if items entity @s armor.feet *[custom_data~{shadow_berserk:1b}] run attribute @s minecraft:knockback_resistance modifier add shadow:bers_feet_knockback_resistance 0.1 add_value
execute if predicate shadow:chance30 run particle minecraft:angry_villager ~ ~2 ~ 0.3 0.2 0.3 0 1
