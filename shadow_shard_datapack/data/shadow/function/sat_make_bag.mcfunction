summon minecraft:item_display ~ ~ ~ {Tags:["shadow.satbag","shadow.newbag"],item:{id:"minecraft:leather",count:1,components:{"minecraft:item_model":"shadow:custom","minecraft:custom_model_data":{strings:["satchel_worn"]}}},item_display:"none",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.125f,0f],scale:[1f,1f,1f]}}
scoreboard players operation @e[type=minecraft:item_display,tag=shadow.newbag] shadow.id = #me shadow.ev
tag @e[type=minecraft:item_display,tag=shadow.newbag] add shadow.mybag
tag @e[type=minecraft:item_display,tag=shadow.newbag] remove shadow.newbag
