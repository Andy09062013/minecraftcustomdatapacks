bossbar set shadow:orb_charge visible true
bossbar set shadow:orb_charge players @a[tag=orb.in]
scoreboard players operation #bv orb = #ot orb
scoreboard players remove #bv orb 60
execute store result bossbar shadow:orb_charge value run scoreboard players get #bv orb
execute if score #ot orb matches 200 run bossbar set shadow:orb_charge name {"text":"🛰 FIRING","color":"white","bold":true}
particle minecraft:portal ~ ~-33 ~ 6 6 6 1.8 80 force
particle minecraft:electric_spark ~ ~-32.5 ~ 2.2 0.4 2.2 0.4 16 force
particle minecraft:end_rod ^4.5 ^-13 ^ 0 0.8 0 0.02 3 force
particle minecraft:end_rod ^-4.5 ^-22 ^ 0 0.8 0 0.02 3 force
particle minecraft:end_rod ^ ^-18 ^4.5 0 0.8 0 0.02 3 force
particle minecraft:end_rod ^ ^-27 ^-4.5 0 0.8 0 0.02 3 force
particle minecraft:glow ~ ~-33 ~ 2.5 2.5 2.5 0 10 force
execute if score #ot orb matches 160..200 run particle minecraft:sonic_boom ~ ~-33 ~ 1.5 1.5 1.5 0 1 force
