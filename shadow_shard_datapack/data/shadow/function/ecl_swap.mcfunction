advancement revoke @s only shadow:ecl_swap
execute if score @s ecl.use matches 1.. run return run scoreboard players set @s ecl.use 3
scoreboard players set @s ecl.use 3
execute unless items entity @s weapon.mainhand *[custom_data~{shadow_eclipse:1b}] run return 0
scoreboard players set @s ecl.fl 0
execute if items entity @s weapon.mainhand *[custom_data~{ecl_light:1b}] run return run function shadow:ecl_to_void
function shadow:ecl_to_light
