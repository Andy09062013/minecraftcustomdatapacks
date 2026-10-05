data modify storage shadow:sat tmp set value []
data modify storage shadow:sat tmp set from entity @s item.components."minecraft:custom_data".other
data modify entity @s item.components."minecraft:custom_data".other set value []
data modify entity @s item.components."minecraft:custom_data".other set from entity @s item.components."minecraft:bundle_contents"
data modify entity @s item.components."minecraft:bundle_contents" set from storage shadow:sat tmp
execute store result score #mode shadow.ev run data get entity @s item.components."minecraft:custom_data".mode
execute if score #mode shadow.ev matches 0 run return run function shadow:sat_to_pocket
data modify entity @s item.components."minecraft:custom_data".mode set value 0
data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["satchel"]}
data modify entity @s item.components."minecraft:item_name" set value {text:"Satchel",color:"gold"}
title @a[tag=shadow.satuser] actionbar {"text":"🎒 Main pouch","color":"gold"}
