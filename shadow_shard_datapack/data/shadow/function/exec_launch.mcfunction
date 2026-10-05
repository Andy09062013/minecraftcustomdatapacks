scoreboard players set @s shadow.exect 20
attribute @s minecraft:fall_damage_multiplier modifier remove shadow:pearlfall
attribute @s minecraft:fall_damage_multiplier modifier add shadow:pearlfall -1 add_multiplied_total
scoreboard players set @s shadow.fly 30
title @s actionbar {"text":"☠ EXECUTE ☠","color":"dark_red","bold":true}
playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 1 0.6
playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1 0.8
