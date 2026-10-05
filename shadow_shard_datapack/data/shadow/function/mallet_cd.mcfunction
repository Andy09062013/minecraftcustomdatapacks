scoreboard players remove @s shadow.mcd 1
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_mallet:1b}] run return 0
execute if score @s shadow.mcd matches 0 run return run title @s actionbar {"text":"Mallet ready","color":"green"}
scoreboard players operation @s shadow.mcds = @s shadow.mcd
scoreboard players operation @s shadow.mcds += #19 shadow.mcds
scoreboard players operation @s shadow.mcds /= #20 shadow.mcds
title @s actionbar [{"text":"Mallet stun in ","color":"yellow"},{"score":{"name":"@s","objective":"shadow.mcds"},"color":"gold"},{"text":"s","color":"yellow"}]
