advancement revoke @s only shadow:plasma_using
tag @s add shadow.pc_tick
execute if score @s shadow.pc matches ..299 run scoreboard players add @s shadow.pc 1
scoreboard players operation @s shadow.pcp = @s shadow.pc
scoreboard players operation @s shadow.pcp /= #3 shadow.pc
execute if score @s shadow.pc matches ..299 run title @s actionbar [{"text":"Plasma charge ","color":"aqua"},{"score":{"name":"@s","objective":"shadow.pcp"},"color":"white"},{"text":"%","color":"aqua"}]
execute if score @s shadow.pc matches 300 run title @s actionbar {"text":"FULLY CHARGED","color":"light_purple","bold":true}
scoreboard players operation #m shadow.pc = @s shadow.pc
scoreboard players operation #m shadow.pc %= #20 shadow.pc
execute if score #m shadow.pc matches 0 if score @s shadow.pc matches ..280 at @s run playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 0.4 1.5
execute if score @s shadow.pc matches 299 at @s run playsound minecraft:block.beacon.activate player @a ~ ~ ~ 1 1.2
execute at @s anchored eyes positioned ^ ^-0.2 ^0.6 run particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0.05 2
execute if score @s shadow.pc matches 300 at @s anchored eyes positioned ^ ^-0.2 ^0.6 run particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.02 2
