summon minecraft:item_display ~ ~ ~ {Tags:["shadow.sattmp"]}
item replace entity @e[type=minecraft:item_display,tag=shadow.sattmp,limit=1] contents from entity @s weapon.mainhand
execute as @e[type=minecraft:item_display,tag=shadow.sattmp,limit=1] run function shadow:sat_swap
item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=shadow.sattmp,limit=1] contents
kill @e[type=minecraft:item_display,tag=shadow.sattmp]
playsound minecraft:item.armor.equip_leather player @s ~ ~ ~ 1 1.2
