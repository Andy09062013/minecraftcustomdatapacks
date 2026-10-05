execute as @a[tag=shadow.mbfix] run ride @s dismount
summon minecraft:item_display ~ ~ ~ {Tags:["shadow.mbseat","shadow.mbnew"]}
ride @e[type=minecraft:item_display,tag=shadow.mbnew,limit=1] mount @s
ride @a[tag=shadow.mbfix,limit=1] mount @e[type=minecraft:item_display,tag=shadow.mbnew,limit=1]
tag @e[type=minecraft:item_display,tag=shadow.mbnew] remove shadow.mbnew
tag @a[tag=shadow.mbfix] remove shadow.mbfix
