summon minecraft:item_display ~ ~ ~ {Tags:["shadow.sattmp"]}
$item replace entity @e[type=minecraft:item_display,tag=shadow.sattmp,limit=1] contents from entity @s $(slot)
summon minecraft:item ~ ~1 ~ {Tags:["shadow.satdrop"],PickupDelay:40s,Item:{id:"minecraft:stone",count:1}}
data modify entity @e[type=minecraft:item,tag=shadow.satdrop,limit=1] Item set from entity @e[type=minecraft:item_display,tag=shadow.sattmp,limit=1] item.components."minecraft:bundle_contents"[0]
tag @e[type=minecraft:item,tag=shadow.satdrop] remove shadow.satdrop
data remove entity @e[type=minecraft:item_display,tag=shadow.sattmp,limit=1] item.components."minecraft:bundle_contents"[0]
$item replace entity @s $(slot) from entity @e[type=minecraft:item_display,tag=shadow.sattmp,limit=1] contents
kill @e[type=minecraft:item_display,tag=shadow.sattmp]
title @s actionbar {"text":"The side pocket only has 5 slots!","color":"red"}
playsound minecraft:item.bundle.drop_contents player @s ~ ~ ~ 1 1
