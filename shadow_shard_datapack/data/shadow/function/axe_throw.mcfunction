advancement revoke @s only shadow:axe_throw
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_exec:1b}] run return 0
scoreboard players operation #me shadow.id = @s shadow.id
execute anchored eyes positioned ^ ^-0.3 ^0.8 run summon minecraft:item_display ~ ~ ~ {Tags:["shadow.axe","shadow.axeout","shadow.axenew"],teleport_duration:1,interpolation_duration:1,item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.7071f,0f,0f,0.7071f],translation:[0f,0f,0f],scale:[1.6f,1.6f,1.6f]}}
item replace entity @e[type=minecraft:item_display,tag=shadow.axenew,limit=1] contents from entity @s weapon.mainhand
item replace entity @s weapon.mainhand with minecraft:air
data modify entity @e[type=minecraft:item_display,tag=shadow.axenew,limit=1] Rotation set from entity @s Rotation
scoreboard players operation @e[type=minecraft:item_display,tag=shadow.axenew] shadow.id = #me shadow.id
scoreboard players set @e[type=minecraft:item_display,tag=shadow.axenew] shadow.axet 0
tag @e[type=minecraft:item_display,tag=shadow.axenew] remove shadow.axenew
playsound minecraft:item.trident.throw player @a ~ ~ ~ 1 0.6
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 0.7
