# camera path around the cannon
execute if score #ot orb matches 1..80 run scoreboard players remove #or orb 15
execute if score #ot orb matches 1..80 run scoreboard players add #oh orb 7
execute if score #ot orb matches 1..80 run tp @s ~ ~ ~ ~1.2 0
execute if score #ot orb matches 81..120 run scoreboard players remove #or orb 20
execute if score #ot orb matches 81..120 run scoreboard players remove #oh orb 30
execute if score #ot orb matches 81..120 run tp @s ~ ~ ~ ~0.8 0
execute if score #ot orb matches 121 run scoreboard players set #or orb 1100
execute if score #ot orb matches 121 run scoreboard players set #oh orb -2700
execute if score #ot orb matches 121..139 run tp @s ~ ~ ~ ~0.5 0
execute store result storage shadow:orb k.r double 0.01 run scoreboard players get #or orb
execute store result storage shadow:orb k.h double 0.01 run scoreboard players get #oh orb
execute if score #ot orb matches ..80 run function shadow:orb/cam_a with storage shadow:orb k
execute if score #ot orb matches 81..139 run function shadow:orb/cam_c with storage shadow:orb k
execute if score #ot orb matches 140..149 as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s positioned ~70 ~60 ~70 run tp @e[type=minecraft:item_display,tag=orb.cam,limit=1] ~ ~ ~ facing entity @e[type=minecraft:marker,tag=orb.look,limit=1] feet
execute if score #ot orb matches 140..149 as @e[type=minecraft:item_display,tag=orb.cam] at @s run function shadow:orb/shake
execute if score #ot orb matches 126..139 as @e[type=minecraft:item_display,tag=orb.cam] at @s run function shadow:orb/shake_small
# build up
execute if score #ot orb matches 1 run title @a[tag=orb.in] times 10 50 15
execute if score #ot orb matches 1 run title @a[tag=orb.in] subtitle {"text":"Target locked","color":"gray"}
execute if score #ot orb matches 1 run title @a[tag=orb.in] title {"text":"🛰 ORBITAL STRIKE","color":"aqua"}
execute if score #ot orb matches 1 run playsound minecraft:block.beacon.ambient master @a[tag=orb.in] ~ ~ ~ 4 0.5
execute if score #ot orb matches 10 run function shadow:orb/unfold
execute if score #ot orb matches 10 run playsound minecraft:block.piston.extend master @a[tag=orb.in] ~ ~ ~ 4 0.5
execute if score #ot orb matches 10 run playsound minecraft:block.beacon.activate master @a[tag=orb.in] ~ ~ ~ 4 0.8
execute if score #ot orb matches 35 run function shadow:orb/extend
execute if score #ot orb matches 35 run playsound minecraft:block.piston.extend master @a[tag=orb.in] ~ ~ ~ 4 0.4
execute if score #ot orb matches 35 run playsound minecraft:item.trident.riptide_3 master @a[tag=orb.in] ~ ~ ~ 4 0.5
execute if score #ot orb matches 55 run function shadow:orb/rings
execute if score #ot orb matches 55 run playsound minecraft:block.respawn_anchor.set_spawn master @a[tag=orb.in] ~ ~ ~ 4 0.6
execute if score #ot orb matches 1..139 run particle minecraft:end_rod ~ ~5 ~ 0.1 2 0.1 0.01 1 force
# charge
execute if score #ot orb matches 60..140 run function shadow:orb/charge
execute if score #ot orb matches 60 positioned ~ ~-22 ~ run function shadow:orb/core_spawn
execute if score #ot orb matches 61 run function shadow:orb/core_grow
execute if score #ot orb matches 60 run playsound minecraft:block.beacon.power_select master @a[tag=orb.in] ~ ~ ~ 4 0.5
execute if score #ot orb matches 80 run playsound minecraft:entity.warden.sonic_charge master @a[tag=orb.in] ~ ~ ~ 4 0.7
execute if score #ot orb matches 100 run playsound minecraft:block.respawn_anchor.charge master @a[tag=orb.in] ~ ~ ~ 4 0.5
execute if score #ot orb matches 115 run playsound minecraft:entity.warden.sonic_charge master @a[tag=orb.in] ~ ~ ~ 4 1.1
execute if score #ot orb matches 130 run playsound minecraft:block.beacon.activate master @a[tag=orb.in] ~ ~ ~ 4 2
# fire
execute if score #ot orb matches 140 run function shadow:orb/core_fire
execute if score #ot orb matches 140 run function shadow:orb/fire_fx
