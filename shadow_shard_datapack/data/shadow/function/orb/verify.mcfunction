execute if score @s orb.ok matches 1.. run return run function shadow:orb/accept
clear @s *[custom_data~{shadow_orbital_raw:1b}] 1
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
tellraw @s {"text":"The Orbital Strike needs 9 real Orbital Strike Keys","color":"red"}
