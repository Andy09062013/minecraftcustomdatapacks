execute store result storage shadow:vs w.d int 1 run scoreboard players get @s vs.d
execute store result storage shadow:vs w.s int 1 run scoreboard players get @s vs.s
execute store result storage shadow:vs w.w int 1 run scoreboard players get @s vs.w
execute store result storage shadow:vs w.p int 1 run scoreboard players get @s vs.p
execute store result storage shadow:vs w.l int 1 run scoreboard players get @s vs.l
execute store result storage shadow:vs w.t int 1 run scoreboard players get @s vs.t
scoreboard players operation #x vs = @s vs.d
scoreboard players operation #x vs *= #4 vs
scoreboard players add #x vs 80
execute store result storage shadow:vs w.dmg double 0.1 run scoreboard players get #x vs
scoreboard players operation #x vs = @s vs.s
scoreboard players remove #x vs 30
execute store result storage shadow:vs w.spd double 0.1 run scoreboard players get #x vs
data modify storage shadow:vs w.pn set value "None"
execute if score @s vs.p matches 1 run data modify storage shadow:vs w.pn set value "Night Hunter"
execute if score @s vs.p matches 2 run data modify storage shadow:vs w.pn set value "Seismic Slam"
data modify storage shadow:vs w.sn set value "Void Sweep"
execute if score @s vs.w matches 5 run data modify storage shadow:vs w.sn set value "Tornado Spin"
function shadow:vs/write_m with storage shadow:vs w
