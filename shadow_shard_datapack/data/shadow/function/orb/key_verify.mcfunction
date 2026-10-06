execute if score @s orb.kok matches 1.. run return run function shadow:orb/key_accept
clear @s *[custom_data~{shadow_orbkey_raw:1b}] 1
loot give @s loot shadow:give/napalm_strike
loot give @s loot shadow:give/napalm_strike
give @s minecraft:iron_ingot
tellraw @s {"text":"An Orbital Strike Key needs 2 real Napalm Strikes","color":"red"}
