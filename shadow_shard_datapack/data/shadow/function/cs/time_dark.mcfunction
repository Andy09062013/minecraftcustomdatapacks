scoreboard players set #tx cs.t 18000
scoreboard players operation #tx cs.t -= #day cs.t
scoreboard players add #tx cs.t 24000
scoreboard players operation #tx cs.t %= #24000 cs.t
execute store result storage shadow:cs tm.a int 1 run scoreboard players get #tx cs.t
function shadow:cs/time_add with storage shadow:cs tm
