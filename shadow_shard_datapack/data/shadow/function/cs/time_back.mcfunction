scoreboard players set #tb cs.t 24000
scoreboard players operation #tb cs.t -= #tx cs.t
scoreboard players operation #tb cs.t %= #24000 cs.t
execute store result storage shadow:cs tm.a int 1 run scoreboard players get #tb cs.t
function shadow:cs/time_add with storage shadow:cs tm
