# camera
execute if score #ot orb matches 1..45 run tp @s ~ ~ ~ ~1.5 0
execute if score #ot orb matches 1..45 positioned ^ ^3 ^16 run tp @e[type=minecraft:item_display,tag=orb.scam,limit=1] ~ ~ ~ facing entity @s feet
execute if score #ot orb matches 46..58 positioned ~9 ~-5 ~9 run tp @e[type=minecraft:item_display,tag=orb.scam,limit=1] ~ ~ ~ facing entity @e[type=minecraft:marker,tag=orb.muzzlec,limit=1] feet
execute if score #ot orb matches 59..84 run function shadow:orb/dive_cam
execute if score #ot orb matches 55..64 as @e[type=minecraft:item_display,tag=orb.scam] at @s run function shadow:orb/shake
# sound and charge
execute if score #ot orb matches 1 run playsound minecraft:block.beacon.ambient master @a[tag=orb.in] ~ ~ ~ 3 0.5
execute if score #ot orb matches 1 run playsound minecraft:ambient.basalt_deltas.mood master @a[tag=orb.in] ~ ~ ~ 3 0.5
execute if score #ot orb matches 20 run playsound minecraft:block.beacon.power_select master @a[tag=orb.in] ~ ~ ~ 3 0.5
execute if score #ot orb matches 35 run playsound minecraft:entity.warden.sonic_charge master @a[tag=orb.in] ~ ~ ~ 3 0.8
execute if score #ot orb matches 48 run playsound minecraft:block.respawn_anchor.charge master @a[tag=orb.in] ~ ~ ~ 3 0.5
execute if score #ot orb matches 20..54 run particle minecraft:portal ~ ~-10.5 ~ 2.5 2.5 2.5 1.2 40 force
execute if score #ot orb matches 20..54 run particle minecraft:electric_spark ~ ~-10.2 ~ 0.6 0.2 0.6 0.3 8 force
execute if score #ot orb matches 40..54 run particle minecraft:end_rod ~ ~-10.4 ~ 0.4 0.1 0.4 0.05 10 force
particle minecraft:white_ash ~ ~-20 ~ 20 20 20 0 20 force
# fire
execute if score #ot orb matches 55 positioned ~ ~-10.1 ~ run function shadow:orb/sbeam_spawn
execute if score #ot orb matches 56 run function shadow:orb/sbeam_grow
execute if score #ot orb matches 55 run function shadow:orb/fire_fx
execute if score #ot orb matches 56..84 run particle minecraft:end_rod ~ ~-25 ~ 1 14 1 0.05 20 force
execute if score #ot orb matches 76 positioned ~ ~-42 ~ run function shadow:orb/eblast_spawn
execute if score #ot orb matches 77 run function shadow:orb/eblast_grow
execute if score #ot orb matches 76 run function shadow:orb/earth_hit_fx
