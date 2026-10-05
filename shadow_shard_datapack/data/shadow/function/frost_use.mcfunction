advancement revoke @s only shadow:frost_use
tag @s add shadow.frost_restore
scoreboard players operation #me shadow.id = @s shadow.id
execute as @e[type=minecraft:block_display,tag=shadow.iceorb] if score @s shadow.id = #me shadow.id run kill @s
execute rotated ~ 0 positioned ~ ~1.2 ~ run summon minecraft:block_display ^ ^ ^1.4 {Tags:["shadow.iceorb","shadow.neworb"],block_state:{Name:"minecraft:ice"},teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},Rotation:[0f,0f]}
execute rotated ~ 0 positioned ~ ~1.2 ~ run summon minecraft:block_display ^ ^ ^1.4 {Tags:["shadow.iceorb","shadow.neworb"],block_state:{Name:"minecraft:ice"},teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},Rotation:[120f,0f]}
execute rotated ~ 0 positioned ~ ~1.2 ~ run summon minecraft:block_display ^ ^ ^1.4 {Tags:["shadow.iceorb","shadow.neworb"],block_state:{Name:"minecraft:ice"},teleport_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.25f,-0.25f,-0.25f],scale:[0.5f,0.5f,0.5f]},Rotation:[240f,0f]}
scoreboard players operation @e[tag=shadow.neworb] shadow.id = #me shadow.id
scoreboard players set @e[tag=shadow.neworb] shadow.flife 600
tag @e[tag=shadow.neworb] remove shadow.neworb
playsound minecraft:block.amethyst_block.resonate player @a ~ ~ ~ 1 1.6
playsound minecraft:block.glass.place player @a ~ ~ ~ 1 0.8
particle minecraft:snowflake ~ ~1.2 ~ 1 0.5 1 0.05 40
