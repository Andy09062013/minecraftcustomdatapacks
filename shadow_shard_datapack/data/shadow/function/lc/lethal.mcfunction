scoreboard players operation #d lc = #n lc
scoreboard players operation #d lc -= #thr lc
scoreboard players add #d lc 2
execute store result storage shadow:lc q.d int 1 run scoreboard players get #d lc
function shadow:lc/lethal_m with storage shadow:lc q
