execute as @a[tag=shadow.tntshooter] unless entity @s[gamemode=creative] run item modify entity @s weapon.offhand shadow:minus_one
data modify entity @s pickup set value 0b
tag @s add shadow.tntarrow
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.tntvis","shadow.newvis"],block_state:{Name:"minecraft:tnt"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.3f,-0.3f,-0.3f],scale:[0.6f,0.6f,0.6f]}}
ride @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] mount @s
tag @e[tag=shadow.newvis] remove shadow.newvis
playsound minecraft:entity.tnt.primed player @a ~ ~ ~ 1 1.4
scoreboard players set @a[tag=shadow.tntshooter] shadow.reload 20
