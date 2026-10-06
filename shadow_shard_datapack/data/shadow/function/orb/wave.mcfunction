scoreboard players operation #wr orb = #ot orb
scoreboard players remove #wr orb 210
scoreboard players operation #wr orb *= #10 orb
execute store result storage shadow:orb w.r double 0.1 run scoreboard players get #wr orb
function shadow:orb/ring with storage shadow:orb w
