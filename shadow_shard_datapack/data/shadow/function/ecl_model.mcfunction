execute unless items entity @s weapon.mainhand *[custom_data~{shadow_eclipse:1b}] run return 0
execute if score @s ecl.fl matches 1.. if score @s ecl.flk matches 1 if items entity @s weapon.mainhand *[custom_data~{ecl_light:1b}] run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_light_5
execute if score @s ecl.fl matches 1.. if score @s ecl.flk matches 2 if items entity @s weapon.mainhand *[custom_data~{ecl_void:1b}] run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_void_wither
execute if score @s ecl.fl matches 1.. if score @s ecl.flk matches 3 if items entity @s weapon.mainhand *[custom_data~{ecl_void:1b}] run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_void_heal
execute if items entity @s weapon.mainhand *[custom_data~{ecl_void:1b}] run return run function shadow:ecl_model_void
scoreboard players add @s ecl.ch 0
execute if score @s ecl.ch matches ..3 run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_light_0
execute if score @s ecl.ch matches 4..7 run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_light_1
execute if score @s ecl.ch matches 8..11 run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_light_2
execute if score @s ecl.ch matches 12..15 run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_light_3
item modify entity @s weapon.mainhand shadow:ecl/ecl_light_4
