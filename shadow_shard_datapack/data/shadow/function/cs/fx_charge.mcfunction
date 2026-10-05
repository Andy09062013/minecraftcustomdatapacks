execute as @e[type=minecraft:armor_stand,tag=cs.actor] at @s run tp @s ~ ~0.08 ~
execute if score #t cs.t matches 91 as @e[type=minecraft:armor_stand,tag=cs.actor] run data modify entity @s Pose.RightArm set value [-175f,0f,0f]
execute if score #t cs.t matches 91 run playsound minecraft:block.portal.trigger master @a[tag=cs.in] ~ ~ ~ 3 1.6
execute if score #t cs.t matches 91 run playsound minecraft:block.beacon.power_select master @a[tag=cs.in] ~ ~ ~ 3 0.5
execute if score #t cs.t matches 105 run playsound minecraft:entity.warden.sonic_charge master @a[tag=cs.in] ~ ~ ~ 3 1
particle minecraft:portal ~ ~2.5 ~ 3 3 3 1.5 80 force
particle minecraft:reverse_portal ~ ~2 ~ 0.5 1 0.5 0.1 20 force
execute as @e[type=minecraft:armor_stand,tag=cs.actor] at @s run particle minecraft:electric_spark ~ ~3.4 ~ 0.3 0.6 0.3 0.3 15 force
execute as @e[type=minecraft:armor_stand,tag=cs.actor] at @s run particle minecraft:flame ~ ~3.4 ~ 0.2 0.5 0.2 0.05 10 force
particle minecraft:soul_fire_flame ^1.6 ^ ^ 0 2 0 0.05 6 force
particle minecraft:soul_fire_flame ^-1.6 ^ ^ 0 2 0 0.05 6 force
