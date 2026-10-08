execute at @a[tag=cb.me,limit=1] run summon minecraft:item ~ ~0.5 ~ {Tags:["cb.drop"],PickupDelay:0s,Item:{id:"minecraft:snowball",count:1}}
data modify entity @e[type=minecraft:item,tag=cb.drop,limit=1] Item set from entity @e[type=minecraft:item_display,tag=cb.tmp,limit=1] item
data modify entity @e[type=minecraft:item,tag=cb.drop,limit=1] Owner set from entity @a[tag=cb.me,limit=1] UUID
tag @e[type=minecraft:item,tag=cb.drop] remove cb.drop
