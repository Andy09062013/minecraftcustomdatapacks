execute as @a[tag=orb.in] run function shadow:orb/leave
execute as @e[type=minecraft:marker,tag=orb.tgt,limit=1] at @s run forceload remove ~-48 ~-48 ~48 ~48
execute in minecraft:the_end run forceload remove 1999984 1999984 2000048 2000048
kill @e[tag=orb.e]
scoreboard players set #orun orb 0
scoreboard players set #oprep orb 0
tag @a remove orb.caster
