particle minecraft:end_rod ~ ~ ~ 3 3 3 1 300 force
particle minecraft:explosion_emitter ~ ~ ~ 2 2 2 0 6 force
playsound minecraft:entity.enderman.teleport master @a[distance=..320] ~ ~ ~ 12 0.5
playsound minecraft:block.beacon.deactivate master @a[distance=..320] ~ ~ ~ 12 0.5
kill @e[tag=orb.cn]
kill @e[tag=orb.drone]
kill @e[tag=orb.ring]
kill @e[tag=orb.bar]
