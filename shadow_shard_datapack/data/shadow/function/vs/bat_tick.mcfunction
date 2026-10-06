scoreboard players remove @s vs.bt 1
scoreboard players set #r vs 0
execute on vehicle if entity @s[tag=vs.batg] run scoreboard players set #r vs 1
execute if score #r vs matches 0 run return run function shadow:vs/bat_end
execute if score @s vs.bt matches ..0 run return run function shadow:vs/bat_end
particle minecraft:smoke ~ ~0.6 ~ 0.3 0.3 0.3 0.01 3
scoreboard players operation #x vs = @s vs.bt
scoreboard players add #x vs 19
scoreboard players operation #x vs /= #20 vs
title @s actionbar [{"text":"🦇 Bat form ","color":"#9b4dff","bold":true},{"score":{"name":"#x","objective":"vs"},"color":"white"},{"text":"s  ","color":"white"},{"text":"no armor while flying","color":"red"}]
scoreboard players set @s vs.msg 5
