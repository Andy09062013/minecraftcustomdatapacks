loot replace entity @e[type=minecraft:item_display,tag=shadow.lhead,limit=1] contents loot shadow:player_head
data modify storage shadow:letter cand set from entity @e[type=minecraft:item_display,tag=shadow.lhead,limit=1] item.components."minecraft:profile".name
execute store success score #diff shadow.ev run data modify storage shadow:letter cand set from storage shadow:letter to
execute if score #diff shadow.ev matches 0 run tag @s add shadow.lto
