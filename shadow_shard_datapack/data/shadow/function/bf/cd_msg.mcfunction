scoreboard players operation #s bf = @s bf.cd
scoreboard players add #s bf 19
scoreboard players operation #s bf /= #20 bf
title @s actionbar [{"text":"⚑ Warhorn ready in ","color":"gray"},{"score":{"name":"#s","objective":"bf"},"color":"yellow"},{"text":"s","color":"gray"}]
