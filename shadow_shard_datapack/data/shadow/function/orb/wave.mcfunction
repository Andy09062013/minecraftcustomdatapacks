scoreboard players operation #wr orb = #ot orb
scoreboard players remove #wr orb 93
scoreboard players operation #wr orb *= #16 orb
execute store result storage shadow:orb w.r double 0.1 run scoreboard players get #wr orb
function shadow:orb/ring with storage shadow:orb w
