scoreboard players operation #id2 rd = @s rd.id
tag @e remove rd.cur
execute as @e[tag=rd.base,distance=..1.5] if score @s rd.id = #id2 rd run tag @s add rd.cur
