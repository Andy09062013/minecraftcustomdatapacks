scoreboard players set @s shadow.exect 0
tag @s add shadow.exec_now
title @s actionbar {"text":"☠ EXECUTED ☠","color":"dark_red","bold":true}
execute as @e[tag=shadow.my_et] at @s run function shadow:exec_kill
tag @s remove shadow.exec_now
tag @e[tag=shadow.my_et] remove shadow.my_et
