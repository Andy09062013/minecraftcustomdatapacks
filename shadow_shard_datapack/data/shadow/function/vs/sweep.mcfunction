scoreboard players set @s vs.cd 30
scoreboard players operation #x vs = @s vs.d
scoreboard players operation #x vs *= #4 vs
scoreboard players add #x vs 100
scoreboard players operation #y vs = @s vs.w
scoreboard players operation #y vs *= #8 vs
scoreboard players operation #x vs += #y vs
execute if entity @s[tag=vs.nt] if score @s vs.l matches 1 run scoreboard players add #x vs 10
execute if entity @s[tag=vs.nt] if score @s vs.l matches 2 run scoreboard players add #x vs 15
execute if entity @s[tag=vs.nt] if score @s vs.l matches 3 run scoreboard players add #x vs 20
execute if entity @s[tag=vs.nt] if score @s vs.l matches 4 run scoreboard players add #x vs 25
execute store result storage shadow:vs sw.dmg double 0.1 run scoreboard players get #x vs
scoreboard players operation #y vs = @s vs.w
scoreboard players operation #y vs *= #5 vs
scoreboard players add #y vs 30
execute store result storage shadow:vs sw.r double 0.1 run scoreboard players get #y vs
execute store result storage shadow:vs sw.f double 0.06 run scoreboard players get #y vs
execute store result storage shadow:vs sw.a double 0.08 run scoreboard players get #y vs
function shadow:vs/sweep_m with storage shadow:vs sw
