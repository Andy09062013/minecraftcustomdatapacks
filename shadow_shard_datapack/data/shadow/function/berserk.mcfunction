advancement revoke @s only shadow:berserk
execute if items entity @s armor.head *[custom_data~{shadow_berserk:1b},damage~{durability:{max:120}}] run item replace entity @s armor.head with minecraft:air
execute if items entity @s armor.chest *[custom_data~{shadow_berserk:1b},damage~{durability:{max:175}}] run item replace entity @s armor.chest with minecraft:air
execute if items entity @s armor.legs *[custom_data~{shadow_berserk:1b},damage~{durability:{max:165}}] run item replace entity @s armor.legs with minecraft:air
execute if items entity @s armor.feet *[custom_data~{shadow_berserk:1b},damage~{durability:{max:145}}] run item replace entity @s armor.feet with minecraft:air
item modify entity @s armor.head shadow:dur_cut
item modify entity @s armor.chest shadow:dur_cut
item modify entity @s armor.legs shadow:dur_cut
item modify entity @s armor.feet shadow:dur_cut
scoreboard players add @s shadow.heal 6
effect give @s minecraft:strength 8 0
effect give @s minecraft:speed 8 0
particle minecraft:dust{color:[0.8,0.0,0.0],scale:2.5} ~ ~1 ~ 0.6 0.9 0.6 0 120 force
particle minecraft:angry_villager ~ ~2 ~ 0.6 0.4 0.6 0 10 force
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0 3 force
playsound minecraft:entity.ravager.roar player @a ~ ~ ~ 2 1
playsound minecraft:entity.item.break player @a ~ ~ ~ 1 0.6
title @s actionbar {"text":"BERSERK","color":"dark_red","bold":true}
