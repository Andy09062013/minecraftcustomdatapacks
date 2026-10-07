clear @s *[custom_data~{shadow_orbital_rc_raw:1b}] 1
loot give @s loot shadow:give/orbital_strike
scoreboard players remove @s orb.rc 1
playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1 1.4
title @s actionbar {"text":"🛰 Uplink restored","color":"#bfe9ff"}
