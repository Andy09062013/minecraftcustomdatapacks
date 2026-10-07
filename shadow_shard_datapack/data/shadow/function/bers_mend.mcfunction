scoreboard players set @s bs.cd 400
scoreboard players set #h shadow.maxhp 10
scoreboard players operation #h shadow.maxhp -= @s shadow.hp
scoreboard players operation @s shadow.heal += #h shadow.maxhp
execute if items entity @s armor.head *[custom_data~{shadow_berserk:1b}] run item modify entity @s armor.head shadow:bers_mend_cut
execute if items entity @s armor.chest *[custom_data~{shadow_berserk:1b}] run item modify entity @s armor.chest shadow:bers_mend_cut
execute if items entity @s armor.legs *[custom_data~{shadow_berserk:1b}] run item modify entity @s armor.legs shadow:bers_mend_cut
execute if items entity @s armor.feet *[custom_data~{shadow_berserk:1b}] run item modify entity @s armor.feet shadow:bers_mend_cut
particle minecraft:dust{color:[0.8,0.0,0.0],scale:1.5} ~ ~1 ~ 0.4 0.6 0.4 0 40
playsound minecraft:block.anvil.use player @a ~ ~ ~ 0.6 0.6
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 0.5 0.6
title @s actionbar {"text":"Your Berserker Armor patches you up","color":"dark_red"}
