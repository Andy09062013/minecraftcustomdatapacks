scoreboard players add @s ecl.vc 0
execute if score @s ecl.vc matches ..0 run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_void_0
execute if score @s ecl.vc matches 1 run return run item modify entity @s weapon.mainhand shadow:ecl/ecl_void_1
item modify entity @s weapon.mainhand shadow:ecl/ecl_void_2
