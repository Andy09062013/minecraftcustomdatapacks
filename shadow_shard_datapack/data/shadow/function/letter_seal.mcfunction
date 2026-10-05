summon minecraft:item_display ~ ~ ~ {Tags:["shadow.ltmp"]}
item replace entity @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] contents from entity @s weapon.mainhand
execute as @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] run function shadow:letter_seal_build
item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] contents
kill @e[type=minecraft:item_display,tag=shadow.ltmp]
playsound minecraft:item.book.put player @s ~ ~ ~ 1 1
tellraw @s [{"text":"✉ Letter sealed for ","color":"gold"},{"storage":"shadow:letter","nbt":"to","color":"white","bold":true},{"text":". Right click it to send!","color":"gold"}]
