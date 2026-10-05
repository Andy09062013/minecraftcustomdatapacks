scoreboard players operation #m cs.t = #t cs.t
scoreboard players operation #m cs.t %= #4 cs.t
execute unless score #m cs.t matches 0 run return 0
execute store result storage shadow:cs b.a int 1 run random value 0..359
execute store result storage shadow:cs b.d int 1 run random value 5..14
function shadow:cs/meteor_place with storage shadow:cs b
