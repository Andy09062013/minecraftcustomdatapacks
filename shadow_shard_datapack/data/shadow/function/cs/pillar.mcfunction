scoreboard players operation #pi cs.t = #t cs.t
scoreboard players remove #pi cs.t 41
scoreboard players operation #pi cs.t %= #6 cs.t
execute unless score #pi cs.t matches 0 run return 0
scoreboard players operation #pa cs.t = #t cs.t
scoreboard players remove #pa cs.t 41
scoreboard players operation #pa cs.t /= #6 cs.t
scoreboard players operation #pa cs.t *= #45 cs.t
execute store result storage shadow:cs pl.a int 1 run scoreboard players get #pa cs.t
function shadow:cs/pillar_at with storage shadow:cs pl
