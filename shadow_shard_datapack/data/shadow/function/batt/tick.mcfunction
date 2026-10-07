scoreboard players remove @a[scores={batt.use=1..}] batt.use 1
scoreboard players remove @a[scores={batt.cd=1..}] batt.cd 1
execute as @a[scores={batt.ch=1}] at @s run function shadow:batt/fade
scoreboard players remove @a[scores={batt.ch=1..}] batt.ch 1
execute as @a[scores={batt.ch=1..}] at @s run particle minecraft:electric_spark ^-0.4 ^1.1 ^0.5 0.15 0.2 0.15 0.15 3
execute as @e[scores={batt.z=1..}] at @s run function shadow:batt/zap_tick
execute as @a if items entity @s container.* *[custom_data~{shadow_battery_raw:1b}] run function shadow:batt/verify
