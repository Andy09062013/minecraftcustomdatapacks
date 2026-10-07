scoreboard players operation #s batt = @s batt.cd
scoreboard players add #s batt 19
scoreboard players operation #s batt /= #20 batt
title @s actionbar [{"text":"Battery recharging ","color":"gray"},{"score":{"name":"#s","objective":"batt"},"color":"yellow"},{"text":"s","color":"gray"}]
