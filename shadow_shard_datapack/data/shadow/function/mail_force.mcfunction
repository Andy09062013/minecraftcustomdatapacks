execute unless entity @a[tag=shadow.lrecv] run tag @a[tag=shadow.lsend] add shadow.lrecv
execute if entity @a[tag=shadow.lrecv] run return run function shadow:mail_deliver
execute as @e[tag=shadow.mymail,limit=1] run function shadow:mail_open
execute at @s run summon minecraft:item ~ ~ ~ {Tags:["shadow.mailitemdrop"],Item:{id:"minecraft:paper",count:1}}
data modify entity @e[type=minecraft:item,tag=shadow.mailitemdrop,limit=1] Item set from entity @e[tag=shadow.mymail,limit=1] item
tag @e[type=minecraft:item,tag=shadow.mailitemdrop] remove shadow.mailitemdrop
kill @e[tag=shadow.mymail]
scoreboard players set @s shadow.lph 5
