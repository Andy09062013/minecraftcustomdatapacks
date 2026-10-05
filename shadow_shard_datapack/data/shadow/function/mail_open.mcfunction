data remove entity @s item.components."minecraft:custom_data".shadow_letter_sealed
data modify entity @s item.components."minecraft:custom_data".shadow_letter_mail set value 1b
data modify entity @s item.components."minecraft:item_name" set value {text:"Unopened Letter",color:"gold"}
data modify storage shadow:letter from set from entity @s item.components."minecraft:written_book_content".author
data modify entity @s item.components."minecraft:lore" set value [{text:"From: ",color:"gray",italic:0b,extra:[{text:"?",color:"white"}]},{text:"Right click to open",color:"dark_gray",italic:0b}]
data modify entity @s item.components."minecraft:lore"[0].extra[0].text set from storage shadow:letter from
tag @s add shadow.mailgive
