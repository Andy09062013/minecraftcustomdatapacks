# camera path around the cannon
execute if score #ot orb matches 1..60 run scoreboard players remove #or orb 20
execute if score #ot orb matches 1..60 run scoreboard players add #oh orb 8
execute if score #ot orb matches 1..60 run tp @s ~ ~ ~ ~1.2 0
execute if score #ot orb matches 61..130 run scoreboard players remove #or orb 25
execute if score #ot orb matches 61..130 run scoreboard players remove #oh orb 30
execute if score #ot orb matches 61..130 run tp @s ~ ~ ~ ~0.8 0
execute if score #ot orb matches 131 run scoreboard players set #or orb 1650
execute if score #ot orb matches 131 run scoreboard players set #oh orb -4000
execute if score #ot orb matches 131..199 run tp @s ~ ~ ~ ~0.5 0
execute store result storage shadow:orb k.r double 0.01 run scoreboard players get #or orb
execute store result storage shadow:orb k.h double 0.01 run scoreboard players get #oh orb
execute if score #ot orb matches ..60 run function shadow:orb/cam_a with storage shadow:orb k
execute if score #ot orb matches 61..199 run function shadow:orb/cam_c with storage shadow:orb k
execute if score #ot orb matches 170..199 as @e[type=minecraft:item_display,tag=orb.cam] at @s run function shadow:orb/shake_small
execute if score #ot orb matches 200..209 as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run function shadow:orb/cam_wide with storage shadow:orb hh
execute if score #ot orb matches 200..209 as @e[type=minecraft:item_display,tag=orb.cam] at @s run function shadow:orb/shake_small
execute if score #ot orb matches 210..225 as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s positioned ~32 ~18 ~32 run tp @e[type=minecraft:item_display,tag=orb.cam,limit=1] ~ ~ ~ facing entity @s feet
execute if score #ot orb matches 210..225 as @e[type=minecraft:item_display,tag=orb.cam] at @s run function shadow:orb/shake
# arrival from above the clouds, escort drones, charge arcs, countdown
execute if score #ot orb matches 1..40 run function shadow:orb/descend
execute if score #ot orb matches 1 run playsound minecraft:entity.ender_dragon.flap master @a[tag=orb.in] ~ ~ ~ 6 0.5
execute if score #ot orb matches 1 run playsound minecraft:item.elytra.flying master @a[tag=orb.in] ~ ~ ~ 6 0.6
execute if score #ot orb matches 40 run playsound minecraft:block.anvil.land master @a[tag=orb.in] ~ ~ ~ 6 0.5
execute if score #ot orb matches 45 run function shadow:orb/drones_spawn
execute as @e[type=minecraft:block_display,tag=orb.drone] run function shadow:orb/drone_tick
execute if score #ot orb matches 120..200 run function shadow:orb/arcs
function shadow:orb/countdown
execute if score #ot orb matches 200 run title @a[tag=orb.in] title {"text":"FIRE","color":"white","bold":true}
# build up
execute if score #ot orb matches 1 run title @a[tag=orb.in] times 10 50 15
execute if score #ot orb matches 1 run title @a[tag=orb.in] subtitle {"text":"Target locked","color":"gray"}
execute if score #ot orb matches 1 run title @a[tag=orb.in] title {"text":"🛰 ORBITAL STRIKE","color":"aqua"}
execute if score #ot orb matches 1 run playsound minecraft:block.beacon.ambient master @a[tag=orb.in] ~ ~ ~ 6 0.5
execute if score #ot orb matches 10 run function shadow:orb/unfold
execute if score #ot orb matches 10 run playsound minecraft:block.piston.extend master @a[tag=orb.in] ~ ~ ~ 6 0.5
execute if score #ot orb matches 10 run playsound minecraft:block.beacon.activate master @a[tag=orb.in] ~ ~ ~ 6 0.8
execute if score #ot orb matches 35 run function shadow:orb/extend
execute if score #ot orb matches 35 run playsound minecraft:block.piston.extend master @a[tag=orb.in] ~ ~ ~ 6 0.4
execute if score #ot orb matches 35 run playsound minecraft:item.trident.riptide_3 master @a[tag=orb.in] ~ ~ ~ 6 0.5
execute if score #ot orb matches 55 run function shadow:orb/rings
execute if score #ot orb matches 55 run playsound minecraft:block.respawn_anchor.set_spawn master @a[tag=orb.in] ~ ~ ~ 6 0.6
execute if score #ot orb matches 1..199 run particle minecraft:end_rod ~ ~7 ~ 0.1 3 0.1 0.01 1 force
# charge with a bar that lights up down the barrel
execute if score #ot orb matches 60..200 run function shadow:orb/charge
execute if score #ot orb matches 60 positioned ~ ~-33 ~ run function shadow:orb/core_spawn
execute if score #ot orb matches 61 run function shadow:orb/core_grow
execute if score #ot orb matches 60 run function shadow:orb/bar0
execute if score #ot orb matches 74 run function shadow:orb/bar1
execute if score #ot orb matches 88 run function shadow:orb/bar2
execute if score #ot orb matches 102 run function shadow:orb/bar3
execute if score #ot orb matches 116 run function shadow:orb/bar4
execute if score #ot orb matches 130 run function shadow:orb/bar5
execute if score #ot orb matches 144 run function shadow:orb/bar6
execute if score #ot orb matches 158 run function shadow:orb/bar7
execute if score #ot orb matches 172 run function shadow:orb/bar8
execute if score #ot orb matches 186 run function shadow:orb/bar9
execute if score #ot orb matches 60 run playsound minecraft:block.beacon.power_select master @a[tag=orb.in] ~ ~ ~ 6 0.5
execute if score #ot orb matches 90 run playsound minecraft:entity.warden.sonic_charge master @a[tag=orb.in] ~ ~ ~ 6 0.6
execute if score #ot orb matches 120 run playsound minecraft:block.respawn_anchor.charge master @a[tag=orb.in] ~ ~ ~ 6 0.5
execute if score #ot orb matches 150 run playsound minecraft:entity.warden.sonic_charge master @a[tag=orb.in] ~ ~ ~ 6 0.9
execute if score #ot orb matches 180 run playsound minecraft:entity.warden.sonic_charge master @a[tag=orb.in] ~ ~ ~ 6 1.3
execute if score #ot orb matches 195 run playsound minecraft:block.beacon.activate master @a[tag=orb.in] ~ ~ ~ 6 2
# fire
execute if score #ot orb matches 200 run function shadow:orb/core_fire
execute if score #ot orb matches 200 run function shadow:orb/fire_fx
