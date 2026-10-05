summon minecraft:mannequin ~ ~ ~ {Tags:["cs.e","cs.mq"],Invulnerable:1b,NoGravity:1b,Silent:1b,immovable:1b,hide_description:1b}
execute unless entity @e[tag=cs.mq] run return fail
summon minecraft:item_display ~ ~ ~ {Tags:["cs.headtmp"]}
loot replace entity @e[type=minecraft:item_display,tag=cs.headtmp,limit=1] contents loot shadow:player_head
data modify entity @e[tag=cs.mq,limit=1] profile set from entity @e[type=minecraft:item_display,tag=cs.headtmp,limit=1] item.components."minecraft:profile"
kill @e[type=minecraft:item_display,tag=cs.headtmp]
execute rotated ~ 0 run tp @e[tag=cs.mq,limit=1] ~ ~ ~ ~ 0
item replace entity @e[tag=cs.mq,limit=1] armor.head from entity @s armor.head
item replace entity @e[tag=cs.mq,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[tag=cs.mq,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[tag=cs.mq,limit=1] armor.feet from entity @s armor.feet
kill @e[type=minecraft:armor_stand,tag=cs.actor]
tag @e[tag=cs.mq] add cs.actor
