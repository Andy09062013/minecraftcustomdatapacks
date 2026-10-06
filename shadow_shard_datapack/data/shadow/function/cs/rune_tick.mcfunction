execute as @e[tag=cs.runeA] run scoreboard players add @s cs.a 4
execute as @e[tag=cs.runeB] run scoreboard players remove @s cs.a 3
execute as @e[tag=cs.rune] run scoreboard players operation @s cs.a %= #360 cs.t
execute as @e[tag=cs.rune] run scoreboard players operation @s cs.a += #360 cs.t
execute as @e[tag=cs.rune] run scoreboard players operation @s cs.a %= #360 cs.t
execute as @e[tag=cs.runeA] run function shadow:cs/rune_tp {r:5.5,g:"cs.runeA"}
execute as @e[tag=cs.runeB] run function shadow:cs/rune_tp {r:7.5,g:"cs.runeB"}
