data remove storage shadow:letter to
data modify storage shadow:letter to set from entity @s item.components."minecraft:written_book_content".title.raw
execute unless data storage shadow:letter to run data modify storage shadow:letter to set from entity @s item.components."minecraft:written_book_content".title
