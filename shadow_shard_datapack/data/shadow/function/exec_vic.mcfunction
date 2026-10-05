execute if entity @s[type=minecraft:player,gamemode=!survival,gamemode=!adventure] run return run tag @a remove shadow.eatk
execute if entity @s[tag=shadow.exec_t] run return run tag @a remove shadow.eatk
execute store result score #hp shadow.ev run data get entity @s Health 100
execute if score #hp shadow.ev matches ..0 run return run tag @a remove shadow.eatk
execute store result score #max shadow.ev run attribute @s minecraft:max_health get 15
execute if score @s shadow.mark matches 1.. if score @s shadow.markby = #eid shadow.ev store result score #max shadow.ev run attribute @s minecraft:max_health get 18
execute if score #hp shadow.ev <= #max shadow.ev run function shadow:exec_begin
tag @a remove shadow.eatk
