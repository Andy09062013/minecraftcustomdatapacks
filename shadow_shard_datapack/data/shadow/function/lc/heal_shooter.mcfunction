scoreboard players operation #h lc = #n lc
scoreboard players operation #h lc /= #3 lc
execute as @a[tag=lc.me] run scoreboard players operation @s shadow.heal += #h lc
execute as @a[tag=lc.me] at @s run particle minecraft:heart ~ ~2 ~ 0.3 0.2 0.3 0 1
