playsound minecraft:item.armor.equip_iron player @a ~ ~ ~ 1 0.8
execute unless items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=shadow.axegive,limit=1] contents
summon minecraft:item ~ ~ ~ {Tags:["shadow.axeitem"],PickupDelay:0s,Item:{id:"minecraft:diamond_axe",count:1}}
data modify entity @e[type=minecraft:item,tag=shadow.axeitem,limit=1] Item set from entity @e[type=minecraft:item_display,tag=shadow.axegive,limit=1] item
tag @e[type=minecraft:item,tag=shadow.axeitem] remove shadow.axeitem
