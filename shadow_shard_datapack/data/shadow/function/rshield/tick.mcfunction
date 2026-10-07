scoreboard players operation #p rs.b = #now vs
scoreboard players operation #p rs.b %= #3 rs.b
execute if score #p rs.b matches 0 as @a[scores={rs.b=1..}] at @s run function shadow:rshield/b0
execute if score #p rs.b matches 1 as @a[scores={rs.b=1..}] at @s run function shadow:rshield/b1
execute if score #p rs.b matches 2 as @a[scores={rs.b=1..}] at @s run function shadow:rshield/b2
execute as @a[scores={rs.b=1..}] at @s run particle minecraft:end_rod ~ ~1 ~ 0.8 0.8 0.8 0 1
scoreboard players remove @a[scores={rs.b=1..}] rs.b 1
execute as @a if items entity @s container.* minecraft:shield[custom_data~{shadow_rshield:1b},!custom_model_data] run function shadow:rshield/fix
execute as @a if items entity @s weapon.offhand minecraft:shield[custom_data~{shadow_rshield:1b},!custom_model_data] run function shadow:rshield/fix
