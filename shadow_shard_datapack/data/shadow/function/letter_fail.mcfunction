execute as @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] run function shadow:letter_unseal
item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=shadow.ltmp,limit=1] contents
kill @e[type=minecraft:item_display,tag=shadow.ltmp]
tellraw @s [{"text":"✉ No online player is called ","color":"red"},{"storage":"shadow:letter","nbt":"to","color":"white","bold":true},{"text":". Try again! Your letter is unsealed so you can sign it again with the right name.","color":"red"}]
playsound minecraft:entity.villager.no player @s ~ ~ ~ 1 1
