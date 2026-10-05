particle minecraft:explosion_emitter ~ ~2 ~ 0 0 0 0 1 force
particle minecraft:explosion_emitter ~2 ~1 ~2 0 0 0 0 1 force
particle minecraft:explosion_emitter ~-2 ~1 ~-2 0 0 0 0 1 force
particle minecraft:explosion_emitter ~2 ~1 ~-2 0 0 0 0 1 force
particle minecraft:explosion_emitter ~-2 ~1 ~2 0 0 0 0 1 force
particle minecraft:totem_of_undying ~ ~2 ~ 0.5 0.5 0.5 1.4 400 force
particle minecraft:flame ~ ~2 ~ 0.3 0.3 0.3 0.7 400 force
particle minecraft:lava ~ ~2 ~ 2 1 2 0 80 force
particle minecraft:sonic_boom ~ ~2 ~ 0 0 0 0 1 force
particle minecraft:end_rod ~ ~2 ~ 0.2 0.2 0.2 0.9 150 force
playsound minecraft:entity.generic.explode master @a[tag=cs.in] ~ ~ ~ 3 0.5
playsound minecraft:entity.wither.spawn master @a[tag=cs.in] ~ ~ ~ 3 1.0
playsound minecraft:entity.warden.sonic_boom master @a[tag=cs.in] ~ ~ ~ 3 0.8
playsound minecraft:item.totem.use master @a[tag=cs.in] ~ ~ ~ 3 0.8
playsound minecraft:entity.ender_dragon.growl master @a[tag=cs.in] ~ ~ ~ 3 0.7
playsound minecraft:entity.lightning_bolt.thunder master @a[tag=cs.in] ~ ~ ~ 3 0.5
execute as @e[type=minecraft:armor_stand,tag=cs.actor] run data modify entity @s Pose.RightArm set value [-110f,-20f,0f]
