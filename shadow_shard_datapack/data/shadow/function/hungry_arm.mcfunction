data modify entity @s pickup set value 0b
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.hungvis","shadow.newvis"],block_state:{Name:"minecraft:air"}}
scoreboard players operation @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] shadow.id = @a[tag=shadow.hungrier,limit=1] shadow.id
ride @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] mount @s
tag @e[tag=shadow.newvis] remove shadow.newvis
