data remove entity @s interaction
function shadow:rd/mine
execute as @e[tag=rd.cur] at @s run function shadow:rd/next_m
