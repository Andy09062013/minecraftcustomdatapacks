execute at @s run summon minecraft:item ~ ~ ~ {Tags:["shadow.axeitem"],PickupDelay:10s,Item:{id:"minecraft:diamond_axe",count:1}}
execute at @s run data modify entity @e[type=minecraft:item,tag=shadow.axeitem,limit=1,sort=nearest] Item set from entity @s item
tag @e[type=minecraft:item,tag=shadow.axeitem] remove shadow.axeitem
kill @s
