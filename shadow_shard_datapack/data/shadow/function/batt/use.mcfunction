advancement revoke @s only shadow:batt_use
execute if score @s batt.use matches 1.. run return run scoreboard players set @s batt.use 3
scoreboard players set @s batt.use 3
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_mallet:1b}] unless items entity @s weapon.offhand *[custom_data~{shadow_mallet:1b}] run return run title @s actionbar {"text":"Hold the Mallet in your other hand to charge it","color":"red"}
execute if score @s batt.ch matches 1.. run return run title @s actionbar {"text":"⚡ Already charged, hit someone!","color":"aqua"}
execute if score @s batt.cd matches 1.. run return run function shadow:batt/cd_msg
execute if score @s shadow.mcd matches 1.. run return run title @s actionbar {"text":"The Mallet stun isn't ready yet","color":"red"}
scoreboard players set @s batt.ch 60
scoreboard players set @s batt.cd 200
title @s actionbar {"text":"⚡ Mallet charged! 3 seconds to land a hit","color":"aqua","bold":true}
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 2
playsound minecraft:entity.lightning_bolt.impact player @a ~ ~ ~ 0.6 2
particle minecraft:electric_spark ~ ~1 ~ 0.4 0.6 0.4 0.4 40 force
