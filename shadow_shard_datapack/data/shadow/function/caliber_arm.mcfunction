execute store result entity @s damage double 0.03 run data get entity @s damage 100
data modify entity @s Duration set value 40
summon minecraft:block_display ~ ~ ~ {Tags:["shadow.calvis","shadow.newvis"],block_state:{Name:"minecraft:air"}}
ride @e[type=minecraft:block_display,tag=shadow.newvis,limit=1] mount @s
tag @e[tag=shadow.newvis] remove shadow.newvis
