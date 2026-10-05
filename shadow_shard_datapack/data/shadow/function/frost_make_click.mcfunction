summon minecraft:interaction ~ ~-0.2 ~ {Tags:["shadow.frostclick","shadow.newclick"],width:1.3f,height:2.3f,response:1b}
scoreboard players operation @e[tag=shadow.newclick] shadow.id = #me shadow.id
tag @e[tag=shadow.newclick] add shadow.myclick
tag @e[tag=shadow.newclick] remove shadow.newclick
