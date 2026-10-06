function shadow:vs/read
scoreboard players operation #x vs = @s vs.d
scoreboard players operation #x vs *= #2 vs
scoreboard players add #x vs 50
execute store result storage shadow:vs sp.dmg double 0.1 run scoreboard players get #x vs
execute store result score @s vs.sw run time query gametime
tag @s add vs.me
execute as @e[type=!#shadow:not_living,tag=!vs.me,distance=..4] run tag @s add vs.hit
function shadow:vs/spin_dmg with storage shadow:vs sp
execute if entity @s[tag=vs.spinc] if entity @e[tag=vs.hit] run return run function shadow:vs/spin_count
function shadow:vs/spin_clear
