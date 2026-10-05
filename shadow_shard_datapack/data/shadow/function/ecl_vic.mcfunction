scoreboard players set #a ecl.tmp 0
execute on attacker run scoreboard players operation #a ecl.tmp = @s shadow.id
execute as @e[tag=ecl.cand] if score @s ecl.by = #a ecl.tmp run tag @s remove ecl.cand
scoreboard players operation @s ecl.by = #a ecl.tmp
tag @s add ecl.cand
