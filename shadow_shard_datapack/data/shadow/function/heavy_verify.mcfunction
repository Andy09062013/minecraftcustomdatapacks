execute if score @s heavy.ok matches 1.. run return run function shadow:heavy_accept
clear @s *[custom_data~{shadow_heavy_raw:1b}] 1
give @s minecraft:bow 2
tellraw @s {"text":"The Heavy Duty Rifle needs two Snipers, not normal bows","color":"red"}
