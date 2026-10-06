$execute unless data storage shadow:mbox box[{id:$(id)}].items[0] run return 0
$data modify storage shadow:mbox tmp set from storage shadow:mbox box[{id:$(id)}].items[0]
$data remove storage shadow:mbox box[{id:$(id)}].items[0]
summon minecraft:item ~ ~0.5 ~ {Tags:["mb.drop"],PickupDelay:0s,Item:{id:"minecraft:paper",count:1}}
data modify entity @e[type=minecraft:item,tag=mb.drop,limit=1] Item set from storage shadow:mbox tmp
tag @e[type=minecraft:item,tag=mb.drop] remove mb.drop
scoreboard players add #n mb 1
execute if score #n mb matches 64.. run return 0
$function shadow:mb/take {id:$(id)}
