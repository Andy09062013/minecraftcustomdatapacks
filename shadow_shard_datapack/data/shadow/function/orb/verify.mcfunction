execute if score @s orb.ok matches 1.. run return run function shadow:orb/accept
clear @s *[custom_data~{shadow_orbital_raw:1b}] 1
loot give @s loot shadow:give/napalm_strike
loot give @s loot shadow:give/napalm_strike
loot give @s loot shadow:give/napalm_strike
loot give @s loot shadow:give/napalm_strike
tellraw @s {"text":"The Orbital Strike needs 4 real Napalm Strikes","color":"red"}
