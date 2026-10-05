function shadow:letter_title
data modify entity @s item.id set value "minecraft:paper"
data modify entity @s item.components."minecraft:custom_data" set value {shadow_letter_sealed:1b}
data modify entity @s item.components."minecraft:item_name" set value {text:"Sealed Letter",color:"gold"}
data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["letter_sealed"]}
data modify entity @s item.components."minecraft:max_stack_size" set value 1
data modify entity @s item.components."minecraft:consumable" set value {consume_seconds:3600f,animation:"none",sound:"minecraft:intentionally_empty",has_consume_particles:0b}
data modify entity @s item.components."minecraft:lore" set value [{text:"To: ",color:"gray",italic:0b,extra:[{text:"?",color:"white"}]},{text:"Right click to send",color:"dark_gray",italic:0b}]
data modify entity @s item.components."minecraft:lore"[0].extra[0].text set from storage shadow:letter to
