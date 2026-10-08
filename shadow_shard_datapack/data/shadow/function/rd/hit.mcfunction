function shadow:rd/mine
execute on attacker if predicate shadow:sneaking run tag @s add rd.picker
data remove entity @s attack
execute if entity @a[tag=rd.picker] run return run function shadow:rd/pickup
execute as @e[tag=rd.cur] at @s run function shadow:rd/toggle
