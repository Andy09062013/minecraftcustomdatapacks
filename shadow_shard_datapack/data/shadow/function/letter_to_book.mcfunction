data remove storage shadow:letter att
data modify storage shadow:letter att set from entity @s item.components."minecraft:custom_data".attach
data modify entity @s item.id set value "minecraft:written_book"
data modify entity @s item.components."minecraft:custom_data" set value {shadow_letter_read:1b}
data modify entity @s item.components."minecraft:item_name" set value {text:"Letter",color:"gold"}
data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["letter_open"]}
data remove entity @s item.components."minecraft:consumable"
data remove entity @s item.components."minecraft:lore"
data remove entity @s item.components."minecraft:max_stack_size"
