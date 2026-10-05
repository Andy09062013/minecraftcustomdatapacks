tag @s remove shadow.icenew
tag @s add shadow.iceproj
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.icevis","shadow.newvis"],block_state:{Name:"minecraft:air"}}
scoreboard players operation @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] shadow.id = #me shadow.id
ride @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] mount @s
tag @e[tag=shadow.newvis] remove shadow.newvis
scoreboard players operation @s shadow.id = #me shadow.id
