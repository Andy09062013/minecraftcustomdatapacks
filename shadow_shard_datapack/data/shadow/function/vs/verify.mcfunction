execute if score @s vs.ok matches 1.. run return run function shadow:vs/accept
clear @s *[custom_data~{shadow_vscythe_raw:1b}] 1
give @s minecraft:echo_shard 3
give @s minecraft:stick 2
tellraw @s {"text":"The Void Scythe needs 3 real Void Shards","color":"red"}
