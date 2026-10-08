$summon minecraft:marker ~ ~ ~ {Tags:["rd.base","rd.new"],Rotation:[$(yaw)f,0f]}
$summon minecraft:item_display ~ ~0.25 ~ {Tags:["rd.vis","rd.new"],Rotation:[$(yaw)f,0f],item_display:"fixed",item:{id:"minecraft:flint",count:1,components:{"minecraft:item_model":"shadow:custom","minecraft:custom_model_data":{strings:["radio"]}}},transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display ~ ~0.9 ~ {Tags:["rd.txt","rd.new"],billboard:"center",background:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},text:{text:"Radio: off",color:"gray"}}
summon minecraft:interaction ~ ~ ~ {Tags:["rd.int","rd.new"],width:0.8f,height:0.65f,response:1b}
scoreboard players add #id rd 1
scoreboard players operation @e[tag=rd.new] rd.id = #id rd
scoreboard players set @e[type=minecraft:marker,tag=rd.new] rd.s 1
tag @e[tag=rd.new] remove rd.new
