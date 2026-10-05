scoreboard players operation #w cs.t = #t cs.t
scoreboard players remove #w cs.t 115
scoreboard players operation #w cs.t *= #60 cs.t
execute store result storage shadow:cs ring.r double 0.01 run scoreboard players get #w cs.t
function shadow:cs/ring with storage shadow:cs ring
