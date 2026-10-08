scoreboard players set @s rp.on 0
function shadow:rd/p_stop
playsound minecraft:block.lever.click player @s ~ ~ ~ 1 0.8
title @s actionbar {"text":"Radio off","color":"gray"}
