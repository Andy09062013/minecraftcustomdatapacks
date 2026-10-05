execute align xyz positioned ~0.5 ~1 ~0.5 run summon minecraft:marker ~ ~ ~ {Tags:["shadow.naptgt","shadow.napnew"]}
execute align xyz positioned ~0.5 ~1 ~0.5 rotated ~ 0 run tp @e[type=minecraft:marker,tag=shadow.napnew,limit=1] ~ ~ ~ ~ ~
tag @e[type=minecraft:marker,tag=shadow.napnew] remove shadow.napnew
execute align xyz run summon minecraft:block_display ~ ~ ~ {Tags:["shadow.napmark"],block_state:{Name:"minecraft:red_stained_glass"},Glowing:1b,glow_color_override:16711680,brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.02f,-0.02f,-0.02f],scale:[1.04f,1.04f,1.04f]}}
title @s actionbar {"text":"📻 Napalm strike inbound. Target marked!","color":"#ff6a00"}
playsound minecraft:block.note_block.hat player @s ~ ~ ~ 1 1.8
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 0.6 0.5
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 2 2
