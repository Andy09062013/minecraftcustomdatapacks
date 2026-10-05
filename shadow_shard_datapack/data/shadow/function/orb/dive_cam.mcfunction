scoreboard players operation #dy orb = #ot orb
scoreboard players remove #dy orb 59
scoreboard players operation #dy orb *= #-11 orb
scoreboard players remove #dy orb 100
execute store result storage shadow:orb d.y double 0.1 run scoreboard players get #dy orb
function shadow:orb/dive_tp with storage shadow:orb d
