execute as @a[tag=cs.in] run function shadow:cs/leave
kill @e[tag=cs.e]
scoreboard players set #run cs.t 0
tag @a remove cs.hero
