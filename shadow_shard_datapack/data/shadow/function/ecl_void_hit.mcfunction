scoreboard players add @s ecl.vc 1
execute if score @s ecl.hit matches 3 as @e[tag=ecl.vic] at @s run function shadow:ecl_wither
execute if score @s ecl.hit matches 3 run scoreboard players set @s ecl.fl 10
execute if score @s ecl.hit matches 3 run scoreboard players set @s ecl.flk 2
execute if score @s ecl.vc matches 3.. run function shadow:ecl_void_heal
execute as @e[tag=ecl.vic] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.3 0.4 0.3 0.05 10
playsound minecraft:block.sculk.hit player @a ~ ~ ~ 0.8 0.7
execute if score @s ecl.vc matches 0 run title @s actionbar {"text":"🌑 ○○○","color":"#9b4dff"}
execute if score @s ecl.vc matches 1 run title @s actionbar {"text":"🌑 ●○○","color":"#9b4dff"}
execute if score @s ecl.vc matches 2 run title @s actionbar {"text":"🌑 ●●○","color":"#9b4dff"}
function shadow:ecl_model
