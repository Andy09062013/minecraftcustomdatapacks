summon minecraft:item ~ ~0.5 ~ {Tags:["cb.drop"],Item:{id:"minecraft:snowball",count:1}}
data modify entity @e[type=minecraft:item,tag=cb.drop,limit=1] Item set from entity @e[type=minecraft:item_display,tag=cb.tmp,limit=1] item
tag @e[type=minecraft:item,tag=cb.drop] remove cb.drop
