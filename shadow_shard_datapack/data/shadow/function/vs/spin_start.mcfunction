scoreboard players set @s vs.spin 60
scoreboard players set @s vs.cd 200
tag @s add vs.spinc
attribute @s minecraft:movement_speed modifier remove shadow:vs_spin
attribute @s minecraft:movement_speed modifier add shadow:vs_spin 0.6 add_multiplied_base
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 1.5 0.6
playsound minecraft:item.trident.riptide_3 player @a ~ ~ ~ 1 0.8
title @s actionbar {"text":"🌪 TORNADO SPIN","color":"#9b4dff","bold":true}
scoreboard players set @s vs.msg 20
