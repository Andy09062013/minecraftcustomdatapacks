tag @s add shadow.seen
execute unless data entity @s {ShotAtAngle:1b} run return 0
execute on origin if items entity @s weapon.mainhand *[custom_data~{shadow_sniper:1b}] run tag @s add shadow.refund
execute on origin if items entity @s weapon.mainhand *[custom_data~{shadow_heavy:1b}] run tag @s add shadow.refund
execute unless entity @a[tag=shadow.refund] run return 0
execute at @a[tag=shadow.refund,limit=1] run summon minecraft:item ~ ~ ~ {Tags:["shadow.newitem"],PickupDelay:0s,Item:{id:"minecraft:firework_rocket",count:1}}
data modify entity @e[type=minecraft:item,tag=shadow.newitem,limit=1] Item set from entity @s FireworksItem
tag @e[tag=shadow.newitem] remove shadow.newitem
tellraw @a[tag=shadow.refund] {"text":"This gun only shoots arrows","color":"red"}
tag @a[tag=shadow.refund] remove shadow.refund
kill @s
