summon minecraft:item_display ~ ~ ~ {Tags:["shadow.ltmp2"]}
item replace entity @e[type=minecraft:item_display,tag=shadow.ltmp2,limit=1] contents from entity @s weapon.offhand
data modify entity @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] item.components."minecraft:custom_data".attach set from entity @e[type=minecraft:item_display,tag=shadow.ltmp2,limit=1] item
item replace entity @s weapon.offhand with minecraft:air
kill @e[type=minecraft:item_display,tag=shadow.ltmp2]
tellraw @s {"text":"📎 The item in your offhand was attached to the letter","color":"yellow"}
