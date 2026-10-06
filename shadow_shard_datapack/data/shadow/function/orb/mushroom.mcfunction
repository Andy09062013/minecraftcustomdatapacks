scoreboard players operation #mh orb = #ot orb
scoreboard players remove #mh orb 226
scoreboard players operation #mh orb *= #6 orb
execute store result storage shadow:orb m.h double 0.1 run scoreboard players get #mh orb
function shadow:orb/mushroom_at with storage shadow:orb m
