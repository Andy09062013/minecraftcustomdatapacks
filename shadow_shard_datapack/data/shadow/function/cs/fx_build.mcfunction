execute if score #t cs.t matches 1 run playsound minecraft:entity.lightning_bolt.thunder master @a[tag=cs.in] ~ ~ ~ 3 0.6
execute if score #t cs.t matches 1 run playsound minecraft:ambient.cave master @a[tag=cs.in] ~ ~ ~ 3 0.6
execute if score #t cs.t matches 22 run playsound minecraft:entity.lightning_bolt.thunder master @a[tag=cs.in] ~ ~ ~ 3 0.8
execute if score #t cs.t matches 60 run playsound minecraft:entity.ravager.roar master @a[tag=cs.in] ~ ~ ~ 3 0.6
execute if score #t cs.t matches 75 run playsound minecraft:entity.wither.ambient master @a[tag=cs.in] ~ ~ ~ 3 0.6
execute if score #t cs.t matches 30 run playsound minecraft:entity.warden.heartbeat master @a[tag=cs.in] ~ ~ ~ 3 0.8
execute if score #t cs.t matches 45 run playsound minecraft:entity.warden.heartbeat master @a[tag=cs.in] ~ ~ ~ 3 0.9
execute if score #t cs.t matches 58 run playsound minecraft:entity.warden.heartbeat master @a[tag=cs.in] ~ ~ ~ 3 1.0
execute if score #t cs.t matches 70 run playsound minecraft:entity.warden.heartbeat master @a[tag=cs.in] ~ ~ ~ 3 1.1
execute if score #t cs.t matches 80 run playsound minecraft:entity.warden.heartbeat master @a[tag=cs.in] ~ ~ ~ 3 1.2
execute if score #t cs.t matches 88 run playsound minecraft:entity.warden.heartbeat master @a[tag=cs.in] ~ ~ ~ 3 1.3
particle minecraft:soul_fire_flame ^2.5 ^0.2 ^ 0 0.6 0 0.02 3 force
particle minecraft:soul_fire_flame ^-2.5 ^0.2 ^ 0 0.6 0 0.02 3 force
particle minecraft:flame ^ ^0.2 ^2.5 0 0.6 0 0.02 3 force
particle minecraft:flame ^ ^0.2 ^-2.5 0 0.6 0 0.02 3 force
particle minecraft:dust{color:[0.7,0.0,0.0],scale:2.0} ~ ~0.2 ~ 3 0.1 3 0 12 force
particle minecraft:large_smoke ~ ~0.1 ~ 3 0.1 3 0.01 6 force
particle minecraft:crimson_spore ~ ~3 ~ 8 4 8 0 40 force
execute if score #t cs.t matches 41..90 run particle minecraft:flame ^1.2 ^1 ^ 0 0.8 0 0.03 4 force
execute if score #t cs.t matches 41..90 run particle minecraft:flame ^-1.2 ^1 ^ 0 0.8 0 0.03 4 force
execute if score #t cs.t matches 41..90 run particle minecraft:lava ~ ~1 ~ 1 1 1 0 2 force
