scoreboard players add #k lc 1
execute if score #pl lc matches 1 if score #k lc matches 42.. run return 0
execute if score #pl lc matches 0 if score #k lc matches 7.. run return 0
execute store result storage shadow:lc q.i int 1 run scoreboard players get @s lc.slot
execute if score #pl lc matches 1 run function shadow:lc/slot_p with storage shadow:lc q
execute if score #pl lc matches 0 run function shadow:lc/slot_m with storage shadow:lc q
function shadow:lc/drain_try with storage shadow:lc q
execute if score #ok lc matches 1 run return 0
scoreboard players add @s lc.slot 1
execute if score #pl lc matches 1 if score @s lc.slot matches 41.. run scoreboard players set @s lc.slot 0
execute if score #pl lc matches 0 if score @s lc.slot matches 6.. run scoreboard players set @s lc.slot 0
function shadow:lc/pick_step
