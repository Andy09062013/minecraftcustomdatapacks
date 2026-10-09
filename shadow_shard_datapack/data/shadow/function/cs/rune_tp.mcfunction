execute store result storage shadow:cs rn.a int 1 run scoreboard players get @s cs.a
$data modify storage shadow:cs rn.r set value $(r)
$data modify storage shadow:cs rn.g set value "$(g)"
function shadow:cs/rune_go with storage shadow:cs rn
