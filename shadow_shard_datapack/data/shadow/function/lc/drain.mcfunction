scoreboard players add @s lc.slot 0
execute as @a[tag=lc.me] at @s run summon minecraft:experience_orb ~ ~0.5 ~ {Value:1s}
execute store result storage shadow:lc q.i int 1 run scoreboard players get @s lc.slot
execute if score #pl lc matches 1 run function shadow:lc/slot_p with storage shadow:lc q
execute if score #pl lc matches 0 run function shadow:lc/slot_m with storage shadow:lc q
function shadow:lc/drain_try with storage shadow:lc q
execute if score #ok lc matches 1 run return 0
function shadow:lc/pick
