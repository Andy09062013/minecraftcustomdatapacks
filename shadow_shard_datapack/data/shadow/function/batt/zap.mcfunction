scoreboard players set @a[tag=batt.src] batt.ch 0
scoreboard players set #t batt 80
execute if entity @s[type=minecraft:player] run scoreboard players set #t batt 100
execute if entity @s[type=#minecraft:undead] run scoreboard players set #t batt 40
execute if entity @s[type=minecraft:iron_golem] run scoreboard players set #t batt 200
execute if entity @s[type=minecraft:warden] run scoreboard players set #t batt 30
execute if entity @s[type=minecraft:ender_dragon] run scoreboard players set #t batt 10
scoreboard players operation @s shadow.stun = #t batt
scoreboard players operation @s batt.z = #t batt
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 0.6 2
playsound minecraft:block.copper_bulb.turn_on player @a ~ ~ ~ 1 0.6
particle minecraft:electric_spark ~ ~1 ~ 0.5 0.8 0.5 0.6 80 force
title @a[tag=batt.src] actionbar {"text":"⚡ SHOCKED!","color":"aqua","bold":true}
