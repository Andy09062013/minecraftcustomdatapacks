tag @s add mb.reg
summon minecraft:item_display ~ ~ ~ {Tags:["mb.head"]}
loot replace entity @e[type=minecraft:item_display,tag=mb.head,limit=1] contents loot shadow:player_head
data modify storage shadow:mbox q set value {}
data modify storage shadow:mbox q.name set from entity @e[type=minecraft:item_display,tag=mb.head,limit=1] item.components."minecraft:profile".name
kill @e[type=minecraft:item_display,tag=mb.head]
execute store result storage shadow:mbox q.id int 1 run scoreboard players get @s shadow.id
function shadow:mb/register_m with storage shadow:mbox q
