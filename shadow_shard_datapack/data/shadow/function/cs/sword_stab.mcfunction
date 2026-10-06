execute as @e[tag=cs.sw] run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{left_rotation:[0.7071f,0f,0f,0.7071f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.4f,1.4f,1.4f]}}
execute as @e[tag=cs.sw] at @s run particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force
execute as @e[tag=cs.sw] at @s run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0 8 force
playsound minecraft:item.trident.hit_ground master @a[tag=cs.in] ~ ~ ~ 4 0.6
playsound minecraft:block.anvil.place master @a[tag=cs.in] ~ ~ ~ 4 0.5
