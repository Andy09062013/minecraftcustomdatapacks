tag @s add ecl.me
scoreboard players operation #a ecl.tmp = @s shadow.id
execute as @e[tag=ecl.cand] if score @s ecl.by = #a ecl.tmp run tag @s add ecl.vic
execute if items entity @s weapon.mainhand *[custom_data~{ecl_light:1b}] run function shadow:ecl_light_hit
execute if items entity @s weapon.mainhand *[custom_data~{ecl_void:1b}] run function shadow:ecl_void_hit
tag @e[tag=ecl.vic] remove ecl.cand
tag @e[tag=ecl.vic] remove ecl.vic
tag @s remove ecl.me
