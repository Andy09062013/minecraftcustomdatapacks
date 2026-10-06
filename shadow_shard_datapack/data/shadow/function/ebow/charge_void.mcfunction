particle minecraft:squid_ink ~ ~1 ~ 0.4 0.6 0.4 0.01 2
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.8 0.5 0.05 6
particle minecraft:dust{color:[0.3,0.0,0.45],scale:1.4} ~ ~1 ~ 0.6 0.7 0.6 0 6
particle minecraft:sculk_soul ~ ~0.2 ~ 0.6 0.1 0.6 0.01 1
execute anchored eyes positioned ^-0.2 ^-0.25 ^0.8 run particle minecraft:portal ~ ~ ~ 0.3 0.3 0.3 0.5 6
execute if predicate shadow:full_moon_night run return run title @s actionbar {"text":"🌕 Full moon: Void power x1.7","color":"#c9a2ff"}
execute unless predicate shadow:is_day run return run title @s actionbar {"text":"🌑 Night: Void power x1.35","color":"#9b4dff"}
title @s actionbar {"text":"☀ Daylight weakens the void: x0.75","color":"#7a6699"}
