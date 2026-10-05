bossbar set shadow:orb_charge visible true
bossbar set shadow:orb_charge players @a[tag=orb.in]
scoreboard players operation #bv orb = #ot orb
scoreboard players remove #bv orb 60
execute store result bossbar shadow:orb_charge value run scoreboard players get #bv orb
execute if score #ot orb matches 140 run bossbar set shadow:orb_charge name {"text":"🛰 FIRING","color":"white","bold":true}
particle minecraft:portal ~ ~-22 ~ 4 4 4 1.5 60 force
particle minecraft:electric_spark ~ ~-21.5 ~ 1.5 0.3 1.5 0.4 12 force
particle minecraft:end_rod ^3 ^-9 ^ 0 0.5 0 0.02 2 force
particle minecraft:end_rod ^-3 ^-15 ^ 0 0.5 0 0.02 2 force
particle minecraft:end_rod ^ ^-12 ^3 0 0.5 0 0.02 2 force
particle minecraft:end_rod ^ ^-18 ^-3 0 0.5 0 0.02 2 force
particle minecraft:glow ~ ~-22 ~ 1.5 1.5 1.5 0 6 force
execute if score #ot orb matches 110..140 run particle minecraft:sonic_boom ~ ~-22 ~ 1 1 1 0 1 force
