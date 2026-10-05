playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 0.8
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1.2
tellraw @s [{"text":"✉ You got a letter from ","color":"gold"},{"storage":"shadow:letter","nbt":"from","color":"white","bold":true},{"text":"! Right click it to open","color":"gold"}]
tellraw @a[tag=shadow.lsend,tag=!shadow.lrecv] [{"text":"✉ Your letter was delivered to ","color":"green"},{"selector":"@s","color":"white"}]
particle minecraft:happy_villager ~ ~1.5 ~ 0.4 0.4 0.4 0 10
execute unless items entity @s weapon.mainhand * run return run item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=shadow.mailgive,limit=1] contents
summon minecraft:item ~ ~ ~ {Tags:["shadow.mailitemdrop"],PickupDelay:0s,Item:{id:"minecraft:paper",count:1}}
data modify entity @e[type=minecraft:item,tag=shadow.mailitemdrop,limit=1] Item set from entity @e[type=minecraft:item_display,tag=shadow.mailgive,limit=1] item
tag @e[type=minecraft:item,tag=shadow.mailitemdrop] remove shadow.mailitemdrop
