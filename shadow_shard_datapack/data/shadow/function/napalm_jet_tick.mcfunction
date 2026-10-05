scoreboard players add @s shadow.nap 1
tp @s ^ ^ ^1.5
execute if score @s shadow.nap matches 90.. run return run kill @s
execute unless entity @s[tag=shadow.jetcore] run return 0
particle minecraft:flame ^ ^ ^-4 0.1 0.1 0.1 0.02 6 force
particle minecraft:large_smoke ^ ^ ^-5 0.2 0.2 0.2 0.01 3 force
execute if score @s shadow.nap matches 34 run function shadow:napalm_drop
execute if score @s shadow.nap matches 36 run function shadow:napalm_drop
execute if score @s shadow.nap matches 38 run function shadow:napalm_drop
execute if score @s shadow.nap matches 40 run function shadow:napalm_drop
execute if score @s shadow.nap matches 42 run function shadow:napalm_drop
execute if score @s shadow.nap matches 44 run function shadow:napalm_drop
execute if score @s shadow.nap matches 46 run function shadow:napalm_drop
