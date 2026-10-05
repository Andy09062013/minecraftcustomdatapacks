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
title @a[tag=cs.in] times 0 3 14
title @a[tag=cs.in] subtitle ""
title @a[tag=cs.in] title {"text":"\uE000\uE000\uE000","font":"shadow:flash","color":"white"}
effect give @e[type=!minecraft:player,type=!#shadow:not_living,tag=!cs.e,distance=..16] minecraft:levitation 1 6 true
summon minecraft:text_display ~ ~7 ~ {Tags:["cs.e","cs.text"],billboard:"center",text:{"text":"RAGEBLADE","color":"gold","bold":true},background:0,shadow:1b,brightness:{sky:15,block:15},see_through:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.1f,0.1f,0.1f]}}
playsound minecraft:block.anvil.land master @a[tag=cs.in] ~ ~ ~ 4 0.5
playsound minecraft:item.mace.smash_ground_heavy master @a[tag=cs.in] ~ ~ ~ 4 0.6
particle minecraft:explosion_emitter ^ ^1 ^-3 0 0 0 0 1 force
particle minecraft:dust_pillar{block_state:{Name:"minecraft:netherrack"}} ~ ~0.2 ~ 3 0.2 3 0.5 300 force
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[0f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,3.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[30f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,4.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[60f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,5.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[90f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,3.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[120f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,4.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[150f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,5.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[180f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,3.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[210f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,4.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[240f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,5.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[270f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,3.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[300f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,4.5f]}}
summon minecraft:block_display ~ ~0.02 ~ {Tags:["cs.e"],Rotation:[330f,0f],brightness:{sky:15,block:15},block_state:{Name:"minecraft:magma_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.2f,0f,0.8f],scale:[0.4f,0.06f,5.5f]}}
