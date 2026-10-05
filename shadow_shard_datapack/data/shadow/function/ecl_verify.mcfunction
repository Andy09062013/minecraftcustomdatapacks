execute if score @s ecl.ok matches 1.. run return run function shadow:ecl_accept
clear @s *[custom_data~{shadow_eclipse_raw:1b}] 1
give @s minecraft:prismarine_crystals
give @s minecraft:echo_shard
give @s minecraft:stick
tellraw @s {"text":"The Eclipse Sword needs a Light Shard and a Void Shard","color":"red"}
