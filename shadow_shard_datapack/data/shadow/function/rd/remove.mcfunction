scoreboard players operation #id2 rd = @s rd.id
execute as @e[tag=rd.base,distance=..2] if score @s rd.id = #id2 rd run kill @s
execute as @e[tag=rd.vis,distance=..2] if score @s rd.id = #id2 rd run kill @s
execute as @e[tag=rd.txt,distance=..2] if score @s rd.id = #id2 rd run kill @s
execute as @e[tag=rd.int,distance=..2] if score @s rd.id = #id2 rd run kill @s
loot spawn ~ ~0.3 ~ loot shadow:give/radio
playsound minecraft:block.metal.break block @a ~ ~ ~ 1 1
