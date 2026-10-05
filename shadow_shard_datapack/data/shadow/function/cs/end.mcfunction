execute as @a[tag=cs.in] run function shadow:cs/leave
kill @e[tag=cs.e]
scoreboard players set #run cs.t 0
tag @a remove cs.hero
bossbar remove shadow:cs_rage
execute in minecraft:the_nether run forceload remove 999984 999984 1000048 1000048
scoreboard players set #prep cs.t 0
