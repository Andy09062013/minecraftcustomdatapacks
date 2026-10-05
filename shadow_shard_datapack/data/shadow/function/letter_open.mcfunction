advancement revoke @s only shadow:letter_open
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_letter_mail:1b}] run return 0
summon minecraft:item_display ~ ~ ~ {Tags:["shadow.ltmp"]}
item replace entity @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] contents from entity @s weapon.mainhand
execute as @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] run function shadow:letter_to_book
item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] contents
kill @e[type=minecraft:item_display,tag=shadow.ltmp]
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1
execute if data storage shadow:letter att at @s run function shadow:letter_att_give
