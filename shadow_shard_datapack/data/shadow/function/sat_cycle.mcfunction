$data modify entity @s item.components."minecraft:custom_data".p$(m) set from storage shadow:sat cur
data modify storage shadow:sat nxt set value []
$data modify storage shadow:sat nxt set from entity @s item.components."minecraft:custom_data".p$(n)
$data remove entity @s item.components."minecraft:custom_data".p$(n)
data modify entity @s item.components."minecraft:bundle_contents" set from storage shadow:sat nxt
$data modify entity @s item.components."minecraft:custom_data".mode set value $(n)
$data modify entity @s item.components."minecraft:item_name" set value {text:"Satchel (Pocket $(s)/5)",color:"gold"}
data modify entity @s item.components."minecraft:lore" set value [{text:"5 pockets, each holds a full stack",color:"gray",italic:0b},{text:"Crouch while holding it to switch pockets",color:"yellow",italic:0b}]
execute if score #mode shadow.ev matches 0 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["satchel"]}
execute unless score #mode shadow.ev matches 0 run data modify entity @s item.components."minecraft:custom_model_data" set value {strings:["satchel_pocket"]}
$title @a[tag=shadow.satuser] actionbar {"text":"🎒 Pocket $(s)/5","color":"gold"}
