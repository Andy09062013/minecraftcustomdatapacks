data modify entity @s item.components."minecraft:writable_book_content" set value {pages:[]}
data modify entity @s item.components."minecraft:writable_book_content".pages set from entity @s item.components."minecraft:written_book_content".pages
data remove entity @s item.components."minecraft:written_book_content"
data remove entity @s item.components."minecraft:consumable"
data remove entity @s item.components."minecraft:max_stack_size"
data modify entity @s item.id set value "minecraft:writable_book"
data modify entity @s item.components."minecraft:custom_data" set value {shadow_letter:1b}
data modify entity @s item.components."minecraft:item_name" set value {text:"Letter",color:"gold"}
data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["letter"]}
data modify entity @s item.components."minecraft:lore" set value [{text:"Right click to write",color:"gray",italic:0b},{text:"Sign it with the player's name as the title",color:"yellow",italic:0b}]
