scoreboard players remove @s shadow.exect 1
scoreboard players operation #me2 shadow.ev = @s shadow.id
tag @e[tag=shadow.my_et] remove shadow.my_et
execute as @e[tag=shadow.exec_t] if score @s shadow.execby = #me2 shadow.ev run tag @s add shadow.my_et
execute unless entity @e[tag=shadow.my_et,distance=..60] run return run function shadow:exec_cancel
execute if entity @e[tag=shadow.my_et,distance=..2.6] run return run function shadow:exec_finish
execute if score @s shadow.exect matches ..0 run return run function shadow:exec_finish
execute facing entity @e[tag=shadow.my_et,limit=1] eyes run tp @s ^ ^0.3 ^1.4 facing entity @e[tag=shadow.my_et,limit=1] eyes
particle minecraft:soul_fire_flame ~ ~1 ~ 0.2 0.4 0.2 0.01 6
particle minecraft:dust{color:[0.5,0.0,0.0],scale:1.2} ~ ~1 ~ 0.3 0.5 0.3 0 8
