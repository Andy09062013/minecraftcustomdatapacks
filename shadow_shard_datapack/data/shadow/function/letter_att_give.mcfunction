execute if data storage shadow:letter att.components."minecraft:custom_data".shadow_pipe run return run function shadow:pipe_face
summon minecraft:item ~ ~1 ~ {Tags:["shadow.attdrop"],PickupDelay:0s,Item:{id:"minecraft:stone",count:1}}
data modify entity @e[type=minecraft:item,tag=shadow.attdrop,limit=1] Item set from storage shadow:letter att
tag @e[type=minecraft:item,tag=shadow.attdrop] remove shadow.attdrop
tellraw @s {"text":"📎 Something was attached to the letter!","color":"yellow"}
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1
