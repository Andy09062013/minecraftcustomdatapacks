execute if score @s orb.rc matches 1.. run return run function shadow:orb/rc_accept
clear @s *[custom_data~{shadow_orbital_rc_raw:1b}] 1
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
loot give @s loot shadow:give/orbital_key
give @s minecraft:echo_shard
tellraw @s {"text":"Waking an Orbital Strike needs a real Dormant Orbital Strike and 8 real Orbital Strike Keys","color":"red"}
