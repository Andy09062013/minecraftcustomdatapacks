execute if score @s lsh.ok matches 1.. run return run function shadow:light_accept
clear @s *[custom_data~{shadow_light_raw:1b}] 1
give @s minecraft:glowstone_dust
give @s minecraft:amethyst_shard
tellraw @s {"text":"The Light Shard needs a real Shadow Shard, not a normal amethyst shard","color":"red"}
