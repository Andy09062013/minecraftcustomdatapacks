data modify entity @s pickup set value 0b
execute on origin run function shadow:blood_pay
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.bloodvis","shadow.newvis"],block_state:{Name:"minecraft:air"}}
scoreboard players operation @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] shadow.id = #tmp shadow.id
ride @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] mount @s
tag @e[tag=shadow.newvis] remove shadow.newvis
