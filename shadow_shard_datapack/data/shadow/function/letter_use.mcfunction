advancement revoke @s only shadow:letter_use
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_letter_sealed:1b}] run return 0
execute anchored eyes positioned ^ ^-0.2 ^0.9 run summon minecraft:item_display ~ ~ ~ {Tags:["shadow.ltmp"],item_display:"ground",billboard:"center",teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.8f,0.8f,0.8f]}}
item replace entity @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] contents from entity @s weapon.mainhand
execute as @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] run function shadow:letter_title
summon minecraft:item_display ~ ~ ~ {Tags:["shadow.lhead"]}
tag @a remove shadow.lto
execute as @a run function shadow:letter_cmp
kill @e[type=minecraft:item_display,tag=shadow.lhead]
execute unless entity @a[tag=shadow.lto] run return run function shadow:letter_fail
function shadow:letter_send
