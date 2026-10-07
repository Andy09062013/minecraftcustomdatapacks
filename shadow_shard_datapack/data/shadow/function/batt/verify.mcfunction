execute if score @s batt.ok matches 1.. run return run function shadow:batt/accept
clear @s *[custom_data~{shadow_battery_raw:1b}] 1
give @s minecraft:iron_ingot
give @s minecraft:amethyst_shard
tellraw @s {"text":"The Battery needs a real Shadow Shard, not a normal amethyst shard","color":"red"}
